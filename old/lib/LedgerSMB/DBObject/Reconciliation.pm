
=pod

=head1 NAME

LedgerSMB::DBObject::Reconciliation - LedgerSMB class defining the core
database interaction logic for Reconciliation.

=head1 SYOPSIS

This module creates object instances based on LedgerSMB's in-database ORM.

=head1 METHODS

Please note, this module needs a lot of cleanup.

=over

=item new ($class, base => $LedgerSMB::hash)

This is the base constructor for all child classes.  It must be used with base
argument because this is necessary for database connectivity and the like.

Of course the base object can be any object that inherits LedgerSMB, so you can
use any subclass of that.  The per-session dbh is passed between the objects
this way as is any information that is needed.

=item get_report($self, $report_id)

Collects all the rows from the database in the given report. Returns an
arrayref of entries in the table for the given report_id.

Returns undef in the event of no records found.

=item get_corrections($self, $report_id, $entry_id)

Returns the corrections made for the selected report and entry.
Returns undef in the event of no corrections found.

=item entry ($self,$report_id,$entry_id)

Returns a single entry from the pending reports table, either cleared or
uncleared.

=cut

package LedgerSMB::DBObject::Reconciliation;

use strict;
use warnings;

use base qw(LedgerSMB::PGOld);
use List::Util qw(sum);
use LedgerSMB::Reconciliation::CSV;
use LedgerSMB::PGNumber;


# don't need new

=item update

Updates the report, pulling in any new transactions in the date range into the
transaction list.

=cut

sub update {
    my $self = shift @_;
    $self->call_dbmethod(funcname=>'reconciliation__pending_transactions');
    my $their_total = $self->{their_total} // 0;
    my $beginning_balance = $self->{beginning_balance} // 0;
    my $total_cleared_credits = $self->{total_cleared_credits} // 0;
    my $total_cleared_debits = $self->{total_cleared_debits} // 0;
    return;
}

sub _pre_save {
    my $self = shift @_;
    my $i = 1;
    my $ids = ();
    $self->{line_ids} = '{';
    while (my $id = $self->{"id_$i"}){
        if ($self->{"cleared_$id"}){
            push @$ids, $id;
            $self->{line_ids} =~ s/$/$id,/;
        }
        ++ $i;
    }
    return $self->{line_ids} =~ s/,?$/}/;
}

=item submit

Submits the reconciliation set for approval.

=cut

sub submit {
    my $self = shift @_;
    $self->_pre_save;
    return $self->call_dbmethod(funcname=>'reconciliation__submit_set');
}



=item save

Saves the reconciliation set for later work

=cut

sub save {
    my $self = shift @_;
    $self->_pre_save;
    return $self->call_dbmethod(funcname=>'reconciliation__save_set');
}

=item import_file

Calls the file import function.  This is generally assumed to be a csv file
although the plugin is very modular and plugins could be written for other
formats.  The format structure is per account id.

=cut

sub import_file {
    my $self = shift @_;
    my $contents = shift @_;

    my $csv = LedgerSMB::Reconciliation::CSV->new(%$self);
    $self->{import_entries} = $csv->process($self, $contents);

    return $self->{import_entries};
}

=item unapproved_checks

Checks for unapproved

 * transactions (generally, since these could change)
 * payments against the account
 * reconciliation reports

Sets $self->{check} with the name of the test and the number of failures

=cut

sub unapproved_checks {
    my $self = shift @_;
    return $self->{check}
            = { map { $_->{setting_key} => $_->{value} }
                    $self->call_dbmethod(funcname=>'reconciliation__check') };
}

=item approve

Approves the reconciliation report specified by the object's C<report_id>
property and marks associated transactions as cleared.

=cut

sub approve {
    my $self = shift;

    $self->call_dbmethod(
        funcname => 'reconciliation__report_approve'
    );

    return;
}

=item new_report

Creates a new reconciliation report. Returns the id of the inserted report
record.

Expects the following object parameters:

  * chart_id  (mandatory)
  * total     (mandatory
  * end_date  (defaults to now)
  * recon_fx  (defaults to false)

=cut

sub new_report {
    my $self = shift @_;

    my $report = $self->call_dbmethod(funcname=>'reconciliation__new_report_id');
    $self->{report_id} = $report->{reconciliation__new_report_id};

    $self->call_dbmethod(funcname=>'reconciliation__pending_transactions');
    return $self->{report_id};
}


=item delete ($self, $report_id)

Requires report_id

This will allow the deletion of a report if the report is not approved and
the user either owns the unsubmitted report, or the user has the right to
approve reports.

Returns 0 if successful, or a true result if not.

=cut

sub delete {

    my $self = shift @_;

    my ($report_id) = @_;
    my $retval;
    my $found;

    ($found) = $self->call_procedure(
        funcname => 'reconciliation__delete_unapproved',
        args => [$report_id]);

    if ($found){
        $retval = '0';
    } else {
        $retval = '1';
    }
    return $retval;
}

=item reject

This rejects a submitted but not approved report, by marking it as
not submitted.

Requires that the following object properties are set:

  * report_id

=cut

sub reject {
    my ($self) = @_;
    return $self->call_dbmethod(funcname => 'reconciliation__reject_set');
}

=item add_entries

Adds entries from the import file routine.

This function is extremely order dependent.  Meaningful scn's must be submitted
first it is also recommended that amounts be ordered where scn's are not found.

=cut

sub add_entries {
    my $self = shift;
    my $entries = $self->{import_entries};
    for my $entry ( @{$entries} ) {

        # Codes:
        # 0 is success
        # 1 is found, but mismatch
        # 2 is not found
        # YLA 2016-07-08++
        # The SQL routine always returned 1, no matter what happened.
        # It now returns the ID of the upserted entry on success.
        # YLA 2016-07-08--

        #in_scn INT,
        #in_amount INT,
        #in_account INT,
        #in_user TEXT,
        #in_date TIMESTAMP
        my $code = $self->call_procedure(
            funcname=>'reconciliation__add_entry',
            args=>[
                $self->{report_id},
                $entry->{scn},
                $entry->{type},
                $entry->{cleared_date},
                $entry->{amount}, # needs leading 0's trimmed.
            ]
        );
        ###TODO-ISSUE-UNDECLARED-ENTRIES
        #$entry->{report_id} = $report_id;
    }
    return;
}

=item get

Gets all information relating to a reconciliation report.

id must be set.

Populates main hash with values from cr_report

Also populates

=over

=item report_lines

a list of report lines

=item account_info

a hashrefo of information from the account table.

=item beginning_balance

=item cleared_total

=item outstanding_total

=item mismatch_our_total

=item mismatch_our_credits

=item mismatch_our_debits

=item mismatch_their_total

=item mismatch_their_credits

=item mismatch_their_debits

=back

=cut

sub get {
    my ($self) = shift @_;

    $self->get_report_summary;
    $self->refresh_pending_transactions unless $self->{submitted};
    $self->get_report_lines;

    my $neg = ($self->{account_info}->{category} =~ /^[AE]/) ? -1 : 1;

    $self->{beginning_balance} = $self->previous_cleared_balance // 0;
    $self->{cleared_total} = LedgerSMB::PGNumber->from_db(0);
    $self->{outstanding_total} = LedgerSMB::PGNumber->from_db(0);
    $self->{mismatch_our_total} = LedgerSMB::PGNumber->from_db(0);
    $self->{mismatch_our_credits} = LedgerSMB::PGNumber->from_db(0);
    $self->{mismatch_our_debits} = LedgerSMB::PGNumber->from_db(0);
    $self->{mismatch_their_total} = LedgerSMB::PGNumber->from_db(0);
    $self->{mismatch_their_credits} = LedgerSMB::PGNumber->from_db(0);
    $self->{mismatch_their_debits} = LedgerSMB::PGNumber->from_db(0);
    $self->{their_balance} //= 0;   # Report maybe empty

    my $our_balance = $self->{beginning_balance};

    for my $line (@{$self->{report_lines}}){

        if ($line->{cleared}) {
            $our_balance += ($neg * $line->{our_balance});
            $self->{cleared_total} += ($neg * $line->{our_balance});
        }
        elsif (
            (
                $self->{their_balance} != '0'
                and $self->{their_balance} != $self->{our_balance}
            )
            or $line->{our_balance} == 0
        ) {
            $line->{err} = 'mismatch';
            $self->{mismatch_our_total} += $line->{our_balance};
            $self->{mismatch_their_total} += $line->{their_balance};

            if ($line->{our_balance} < 0){
                $self->{mismatch_our_debits} += -$line->{our_balance};
            }
            else {
                $self->{mismatch_our_credits} += $line->{our_balance};
            }

            if ($line->{their_balance} < 0){
                $self->{mismatch_their_debits} += -$line->{their_balance};
            }
            else {
                $self->{mismatch_their_credits} += $line->{their_balance};
            }
        }
        else {
            $self->{outstanding_total} += $line->{our_balance};
        }
    }

    $self->{our_total} = $our_balance * $neg;
    $self->{mismatch_their_total} *= $neg;

    return;
}


=item build_totals

Iterates through all lines in the current reconciliation report, setting
the following elements for each:

  * their_credits
  * their_debits
  * our_credits
  * our_debits

Builds the report totals:

  * total_cleared_credits
  * total_cleared_debits
  * total_uncleared_credits
  * total_uncleared_debits

=cut

sub build_totals {
    my $self = shift;

    # Zero report totals
    for my $field (qw(
        total_cleared_credits
        total_cleared_debits
        total_uncleared_credits
        total_uncleared_debits
    )) {
        $self->{$field} = LedgerSMB::PGNumber->from_input(0);
    }

    # Iterate through each line of the report
    for my $l (@{$self->{report_lines}}){

        # Separate 'their' credits and debits
        if ($l->{their_balance} > 0){
           $l->{their_debits} = LedgerSMB::PGNumber->from_input(0);
           $l->{their_credits} = $l->{their_balance};
        }
        else {
           $l->{their_credits} = LedgerSMB::PGNumber->from_input(0);
           $l->{their_debits} = $l->{their_balance}->bneg;
        }

        # Separate 'our' credits and debits
        if ($l->{our_balance} > 0){
           $l->{our_debits} = LedgerSMB::PGNumber->from_input(0);
           $l->{our_credits} = $l->{our_balance};
        }
        else {
           $l->{our_credits} = LedgerSMB::PGNumber->from_input(0);
           $l->{our_debits} = $l->{our_balance}->bneg;
        }

        # Format line amounts for display
        # (Shouldn't this be done in the template rather than in code?)
        for my $element (qw/our_balance our_credits our_debits their_balance their_credits their_debits/) {
            $l->{$element} = $l->{$element}->to_output(money => 1);
        }

        # Update report totals
        if ($l->{cleared}){
             $self->{total_cleared_credits}->badd($l->{our_credits});
             $self->{total_cleared_debits}->badd($l->{our_debits});
        }
        else {
             $self->{total_uncleared_credits}->badd($l->{our_credits});
             $self->{total_uncleared_debits}->badd($l->{our_debits});
        }
    }
}


=item build_variance

Calculates and sets the object's C<variance> property, rounding it to
the specified number of decimal places.

Returns the calculated variance.

Requires that the following object properties are set:

    * their_total
    * our_total
    * decimal_places

=cut

sub build_variance {
    my $self = shift;
    $self->{variance} = $self->{their_total} - $self->{our_total};
    $self->{variance}->bfround(
        $self->{decimal_places} * -1
    );

    return $self->{variance};
}


=item build_statement_gl_calc

Calculates and sets the object's C<statement_gl_calc> property.

Returns the calculated statement_gl_calc.

Requries that the following object properties are set:

    * their_total
    * outstanding_total
    * mismatch_our_total

=cut

sub build_statement_gl_calc {
    my $self = shift;

    $self->{statement_gl_calc} = sum(
        $self->{their_total},
        $self->{outstanding_total},
        $self->{mismatch_our_total},
    );

    if ($self->{account_info}->{category} =~ /^(A|E)$/) {
       $self->{statement_gl_calc} *= -1;
    }

    return $self->{statement_gl_calc};
}


=item get_accounts

This is a simple wrapper around reconciliation__account_list. It sets
the object's C<recon_accounts> property.

=cut

sub get_accounts {
    my $self = shift @_;

    @{$self->{recon_accounts}} = $self->call_dbmethod(
        funcname=>'reconciliation__account_list',
    );

    return $self->{recon_accounts};
}


=item get_report_summary

This is a wrapper around reconciliation__report_summary and account_get
database functions.

Requires that the C<report_id> be set to a valid reconciliation report id.

Sets the following object properties:

  * chart_id
  * their_total
  * approved
  * submitted
  * end_date
  * updated
  * entered_by
  * entered_username
  * deleted
  * deleted_by (may be undef)
  * approved_by (may be undef)
  * approved_username (may be undef)
  * recon_fx (may be undef)
  * account_info



=cut

sub get_report_summary {
    my $self = shift;

    my $r = $self->call_dbmethod(
         funcname => 'reconciliation__report_summary'
    ) or die 'reconciliation report does not exist';

    # We've already set this object's `report_id` property
    # we don't need another `id` property holding the same
    # value and causing confusion.
    delete $r->{id};

    @{$self}{keys %$r} = values %$r;

    # Add summary details of the account we're reconciling
    # We should perhaps be instantiating a LedgerSMB::DBObject::Account object
    $self->{account_info} = $self->call_dbmethod(
        funcname=>'account_get',
        args => { id => $self->{chart_id} }
    ) or die 'error retrieving account information';

    return;
}

=item refresh_pending_transactions

This is a simple wrapper around reconciliation__pending_transactions.

It changes no object properties, but in the database, the reconciliation
report lines are updated and the summary C<updated> timstamp is updated.

Requires that the following object properties be set:

  * report_id
  * chart_id
  * end_date
  * their_total

=cut

sub refresh_pending_transactions {
    my $self = shift;

    $self->call_dbmethod(
        funcname => 'reconciliation__pending_transactions'
    ) or die 'error refreshing pending transactions';

    return;
};


=item get_report_lines

Retrieve detail lines for the current reconciliation report, adding
the C<days> information to each.

=cut

sub get_report_lines {
    my $self = shift;

    @{$self->{report_lines}} = $self->call_dbmethod(
        funcname => 'reconciliation__report_details_payee',
        orderby => [
            ($self->{line_order} // 'scn')
        ]
    );

    # Add the 'days' for each line.
    # This could be more elegantly done by getting the previous database call
    # to return a view incorporating the days field
    my %report_days = map { $_->{id} => $_->{days} } $self->call_dbmethod(
        funcname => 'reconciliation__report_details_payee_with_days',
    );

    for my $line (@{$self->{report_lines}}){
        $line->{days} = $report_days{$line->{id}};
    }

    return;
}


=item previous_cleared_balance

For a given date and account, returns the cleared balance of the previous
reconciliation, or undef if there is no previous reconciliation for the
account.

Requires that the following object properties are set:

    * chart_id
    * end_date

=cut

sub previous_cleared_balance {
    my $self = shift;

    my $previous = $self->call_dbmethod(
        funcname => 'reconciliation__previous_report_date',
        args => {
            chart_id => $self->{chart_id},
            end_date => $self->{end_date}
        }
    );

    my $r = $self->call_dbmethod(
        funcname => 'reconciliation__get_cleared_balance',
        args => {
            chart_id => $self->{chart_id},
            report_date => $previous->{end_date}
        }
    );

    return $r->{reconciliation__get_cleared_balance};
}


=back

=head1 Copyright (C) 2007-2020, The LedgerSMB core team.

This file is licensed under the Gnu General Public License version 2, or at your
option any later version.  A copy of the license should have been included with
your software.

=cut

1;
