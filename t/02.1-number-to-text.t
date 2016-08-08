#!/usr/bin/perl

use Test::More 'no_plan';
use LedgerSMB::PGNumber;
use LedgerSMB::Num2text;

my %english = (
    0 => 'Zero',
    1 => 'One',
   11 => 'Eleven',
   15 => 'Fifteen',
   30 => 'Thirty',
   39 => 'Thirty Nine',
   48 => 'Fourty Eight',
   57 => 'Fifty Seven',
  101 => 'One Hundred One',
  166 => 'One Hundred Sixty Six',
 1100 => 'One Thousand One Hundred',
 1455 => 'One Thousand One Hundred and Fifty Five'
);

my $en = LedgerSMB::Num2text->new('en');
$en->init;
is($en->num2text($_) , $english{$_}, "$_ -> $english{$_}, Plain") for keys %english;
