BEGIN;
-- Czech chart of accounts
-- Tomas.Fencl@centrum.cz
--
-- 3.3.2008
-- Vladimir Botka vlado@netng.org
-- customized for http://www.ledgersmb.org/
-- encoding UTF-8
--

SELECT account_heading_save(NULL, '0000', '-----', NULL);
SELECT account_heading_save(NULL, '3000', 'Dlouhodobý hmotný majetek neodpisovaný', NULL);
SELECT account_heading_save(NULL, '2000', 'Dlouhodobý Hmotný majetek odpisovaný', NULL);
SELECT account_heading_save(NULL, '10000', 'Zásoby', NULL);
SELECT account_heading_save(NULL, '11000', 'Materiál', NULL);
SELECT account_heading_save(NULL, '12000', 'Zásoby vlastní výroby', NULL);
SELECT account_heading_save(NULL, '31000', 'Pohledávky', NULL);
SELECT account_heading_save(NULL, '32000', 'Závazky', NULL);
SELECT account_heading_save(NULL, '37000', 'Jiné pohledávky a závazky', NULL);
SELECT account_heading_save(NULL, '45000', 'Rezervy', NULL);
SELECT account_heading_save(NULL, '6000', 'Dlouhodobý finanční majetek', NULL);
SELECT account_heading_save(NULL, '47000', 'Dlouhodobé závazky', NULL);
SELECT account_heading_save(NULL, '13000', 'Zboží', NULL);
SELECT account_heading_save(NULL, '20000', 'Finanční účty', NULL);
SELECT account_heading_save(NULL, '22000', 'Účty v bankách', NULL);
SELECT account_heading_save(NULL, '23000', 'Běžné bankovní úvěry', NULL);
SELECT account_heading_save(NULL, '25000', 'Krátkodobý finanční majetek', NULL);
SELECT account_heading_save(NULL, '26000', 'Převody mezi finančními účty', NULL);
SELECT account_heading_save(NULL, '29000', 'Opravné položky ke krátkodobému finančnímu majetku', NULL);
SELECT account_heading_save(NULL, '30000', 'Zúčtovací vztahy', NULL);
SELECT account_heading_save(NULL, '34000', 'Zůčtování daní a dotací', NULL);
SELECT account_heading_save(NULL, '35000', 'Pohledávky ke společníkům a sdružení', NULL);
SELECT account_heading_save(NULL, '36000', 'Závazky ke společníkům a sdružení', NULL);
SELECT account_heading_save(NULL, '38000', 'Přechodné účty aktiv a pasiv', NULL);
SELECT account_heading_save(NULL, '40000', 'Kapitálové účty a dlouhodobé závazky', NULL);
SELECT account_heading_save(NULL, '41000', 'Základní kapitál a kapitálové fondy', NULL);
SELECT account_heading_save(NULL, '42000', 'Fondy ze zisku a převedené hospodářské výsledky', NULL);
SELECT account_heading_save(NULL, '43000', 'Hospodářský výsledek', NULL);
SELECT account_heading_save(NULL, '46000', 'Bankovní úvěry', NULL);
SELECT account_heading_save(NULL, '55000', 'Odpisy, rezervy a opravné položky provozních nákladů', NULL);
SELECT account_heading_save(NULL, '57000', 'Rezervy a opravné položky finančních nákladù', NULL);
SELECT account_heading_save(NULL, '59000', 'Daně z příjmù a převodové účty', NULL);
SELECT account_heading_save(NULL, '65000', 'Zúčtování rezerv a opravných položek provozních výnosů', NULL);
SELECT account_heading_save(NULL, '67000', 'Zúčtování rezerv a opravných položek finančních výnosů', NULL);
SELECT account_heading_save(NULL, '69000', 'Převodové účty', NULL);
SELECT account_heading_save(NULL, '70000', 'Účty rozvažné', NULL);


SELECT account__save(NULL, '1000', 'Dlouhodobý nehmotný majetek', 'A', '', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL, '3200', 'Umělecká díla a sbírky', 'A', '', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL, '1200', 'Nehmotné výsledky výzkumu a vývoje', 'A', '', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL, '1300', 'Software', 'A', '', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL, '1400', 'Ocenitelná práva', 'A', '', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL, '1800', 'Drobný dlouhodobý nehmotný majetek', 'A', '', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL, '1900', 'Ostatní dlouhodobý nehmotný majetek', 'A', '', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL, '2100', 'Stavby', 'A', '', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL, '2800', 'Drobný dlouhodobý hmotný majetek', 'A', '', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL, '2900', 'Ostatní dlouhodobý hmotný majetek', 'A', '', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL, '3100', 'Pozemky', 'A', '', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL, '5000', 'Poskytnuté zálohy na dlouhodobý nehmotný a hmotný majetek', 'A', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '5100', 'Poskytnuté zálohy na dlouhodobý nehmotný majetek', 'A', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '5200', 'Poskytnuté zálohy na dlouhodobý hmotný majetek', 'A', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '6100', 'Podílové cenné papíry a vklady v podnicích s rozhodujícím', 'A', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '6200', 'Podílové cenné papíry a vklady v podnicích s podstatným', 'A', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '6300', 'Ostatní dlouhodobé cenné papíry a vklady', 'A', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '7300', 'Oprávky k softwaru', 'A', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '7800', 'Oprávky k drobnému dlouhodobému nehmotnému majetku', 'A', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '7900', 'Oprávky k ostatnímu dlouhodobému nehmotnému majetku', 'A', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '8000', 'Oprávky k dlouhodobému hmotnému majetku', 'A', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '8100', 'Oprávky ke stavbám', 'A', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '8800', 'Oprávky k drobnému dlouhodobému hmotnému majetku', 'A', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '8900', 'Oprávky k ostatnímu dlouhodobému hmotnému majetku', 'A', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '12200', 'Polotovary vlastní výroby', 'A', '', NULL, false, false, string_to_array('IC', ':'), false, false);
SELECT account__save(NULL, '12300', 'Výrobky', 'A', '', NULL, false, false, string_to_array('IC', ':'), false, false);
SELECT account__save(NULL, '21000', 'Peníze', 'A', '', NULL, false, false, string_to_array('AR_paid:AP_paid', ':'), false, false);
SELECT account__save(NULL, '21100', 'Pokladna', 'A', '', NULL, false, false, string_to_array('AR_paid:AP_paid', ':'), false, false);
SELECT account__save(NULL, '21300', 'Ceniny', 'A', '', NULL, false, false, string_to_array('AR_paid:AP_paid', ':'), false, false);
SELECT account__save(NULL, '24100', 'Emitované krátkodobé dluhopisy', 'L', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '25100', 'Majetkové cenné papíry', 'A', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '25200', 'Vlastní akcie a vlastní obchodní podíly', 'A', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '25500', 'Vlastní dluhopisy', 'A', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '25600', 'Ostatní cenné papíry', 'A', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '31300', 'Pohledávky za eskontované cenné papíry', 'A', '', NULL, false, false, string_to_array('AR', ':'), false, false);
SELECT account__save(NULL, '31400', 'Poskytnuté provozní zálohy', 'A', '', NULL, false, false, string_to_array('AR', ':'), false, false);
SELECT account__save(NULL, '31500', 'Ostatní pohledávky', 'A', '', NULL, false, false, string_to_array('AR', ':'), false, false);
SELECT account__save(NULL, '32100', 'Dodavatelé', 'L', '', NULL, false, false, string_to_array('AP', ':'), false, false);
SELECT account__save(NULL, '32500', 'Ostatní závazky', 'L', '', NULL, false, false, string_to_array('AP', ':'), false, false);
SELECT account__save(NULL, '2200', 'Samostatné movité věci a soubory movitých věcí', 'A', '', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL, '2500', 'Pěstitelské celky trvalých porostů', 'A', '', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL, '2600', 'Základní stádo a tažná zvířata', 'A', '', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL, '4000', 'Pořízení dlouhodobého nehmotného a hmotného majetku', 'A', '', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL, '19200', 'Opravná položka k nedokonèené výrobì', 'A', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '34700', 'Ostatní dotace', 'L', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '35300', 'Pohledávky za upsaný vlastní kapitál', 'A', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '37300', 'Nakoupené opce', 'A', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '37400', 'Prodané opce', 'L', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '37800', 'Jiné pohledávky', 'A', '', NULL, false, false, string_to_array('AR', ':'), false, false);
SELECT account__save(NULL, '37900', 'Jiné závazky', 'L', '', NULL, false, false, string_to_array('AP', ':'), false, false);
SELECT account__save(NULL, '38600', 'Kursové rozdíly aktivní', 'A', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '38700', 'Kursové rozdíly pasívní', 'L', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '41100', 'Základní kapitál', 'Q', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '41300', 'Ostatní kapitálové fondy', 'Q', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '42100', 'Zákonný rezervní fond', 'Q', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '42300', 'Statutární fondy', 'Q', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '42700', 'Ostatní fondy', 'Q', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '45100', 'Rezervy zákonné', 'Q', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '45400', 'Rezerva na kursové ztráty', 'Q', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '45900', 'Ostatní rezervy', 'Q', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '47300', 'Emitované dluhopisy', 'L', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '47400', 'Závazky z pronájmu', 'L', '', NULL, false, false, string_to_array('AP', ':'), false, false);
SELECT account__save(NULL, '47900', 'Ostatní dlouhodobé závazky', 'L', '', NULL, false, false, string_to_array('AP', ':'), false, false);
SELECT account__save(NULL, '49000', 'Individuální podnikatel', 'Q', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '51200', 'Cestovné', 'E', '', NULL, false, false, string_to_array('AP_amount:IC_expense', ':'), false, false);
SELECT account__save(NULL, '51300', 'Náklady na reprezentaci', 'E', '', NULL, false, false, string_to_array('AP_amount:IC_expense', ':'), false, false);
SELECT account__save(NULL, '52000', 'Osobní náklady', 'E', '', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL, '52100', 'Mzdové náklady', 'E', '', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL, '52600', 'Sociální náklady individuálního podnikatele', 'E', '', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL, '52700', 'Zákonné sociální náklady', 'E', '', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL, '52800', 'Ostatní sociální náklady', 'E', '', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL, '54000', 'Jiné provozní náklady', 'E', '', NULL, false, false, string_to_array('AP_amount:IC_expense', ':'), false, false);
SELECT account__save(NULL, '54200', 'Prodaný materiál', 'E', '', NULL, false, false, string_to_array('IC_expense', ':'), false, false);
SELECT account__save(NULL, '54300', 'Dary', 'E', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '54400', 'Smluvní pokuty a úroky z prodlení', 'E', '', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL, '54500', 'Ostatní pokuty a penále', 'E', '', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL, '54600', 'Odpis pohledávky', 'E', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '54800', 'Ostatní provozní náklady', 'E', '', NULL, false, false, string_to_array('AP_amount:IC_expense', ':'), false, false);
SELECT account__save(NULL, '55100', 'Odpisy dlouhodobého nehmotného a hmotného majetku', 'E', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '55200', 'Tvorba zákonných rezerv', 'E', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '55400', 'Tvorba ostatních rezerv', 'E', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '56100', 'Prodané cenné papíry a vklady', 'E', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '56200', 'Úroky', 'E', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '56300', 'Kursové ztráty', 'E', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '57400', 'Tvorba rezerv', 'E', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '58400', 'Tvorba rezerv', 'E', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '62000', 'Aktivace', 'I', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '62400', 'Aktivace dlouhodobého hmotného majetku', 'I', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '64000', 'Jiné provozní výnosy.', 'I', '', NULL, false, false, string_to_array('AR_amount:IC_sale:IC_income', ':'), false, false);
SELECT account__save(NULL, '64600', 'Výnosy z odepsaných pohledávek', 'I', '', NULL, false, false, string_to_array('AR_amount', ':'), false, false);
SELECT account__save(NULL, '64800', 'Jiné provozní výnosy', 'I', '', NULL, false, false, string_to_array('AR_amount:IC_sale:IC_income', ':'), false, false);
SELECT account__save(NULL, '66200', 'Úroky', 'I', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '66300', 'Kursové zisky', 'I', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '34311', 'DPH snížená vstup', 'L', '', NULL, false, false, string_to_array('AP_tax:IC_taxpart:IC_taxservice', ':'), false, false);
SELECT account__save(NULL, '34312', 'DPH základní vstup', 'L', '', NULL, false, false, string_to_array('AP_tax:IC_taxpart:IC_taxservice', ':'), false, false);
SELECT account__save(NULL, '34321', 'DPH snížená výstup', 'L', '', NULL, false, false, string_to_array('AR_tax:IC_taxpart:IC_taxservice', ':'), false, false);
SELECT account__save(NULL, '34322', 'DPH základní výstup', 'L', '', NULL, false, false, string_to_array('AR_tax:IC_taxpart:IC_taxservice', ':'), false, false);
SELECT account__save(NULL, '1100', 'Zřizovací výdaje', 'A', '', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL, '4100', 'Pořízení dlouhodobého nehmotného majetku', 'A', '', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL, '4200', 'Pořízení dlouhodobého hmotného majetku', 'A', '', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL, '6600', 'Pùjčky podnikùm ve skupinì', 'A', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '6700', 'Ostatní pùjčky', 'A', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '6900', 'Ostatní dlouhodobý finanční majetek', 'A', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '7000', 'Oprávky k dlouhodobému nehmotnému majetku', 'A', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '7100', 'Oprávky ke zřizovacím výdajùm', 'A', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '7200', 'Oprávky k nehmotným výsledkům výzkumu a vývoje', 'A', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '7400', 'Oprávky k ocenitelným právům', 'A', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '8200', 'Oprávky k samostatným movitým věcem a souborùm movitých věcí', 'A', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '8500', 'Oprávky k pěstitelským celkům trvalých porostů', 'A', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '8600', 'Oprávky k základnímu stádu a tažným zvířatům', 'A', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '9000', 'Opravné položky k dlouhodobému majetku', 'A', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '9100', 'Opravná položka k dlouhodobému nehmotnému majetku', 'A', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '9200', 'Opravná položka k dlouhodobému hmotnému majetku', 'A', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '9300', 'Opravná položka k dlouhodobému nedokončenému nehmotnému', 'A', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '9400', 'Opravná položka k dlouhodobému nedokončenému hmotnému', 'A', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '9500', 'Opravná položka k poskytnutým zálohám', 'A', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '9600', 'Opravná položka k dlouhodobému finančnímu majetku', 'A', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '9700', 'Opravná položka k nabytému majetku', 'A', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '9800', 'Oprávky k opravné položce k nabytému majetku', 'A', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '11100', 'Pořízení materiálu', 'A', '', NULL, false, false, string_to_array('IC', ':'), false, false);
SELECT account__save(NULL, '11200', 'Materiál na skladě', 'A', '', NULL, false, false, string_to_array('IC', ':'), false, false);
SELECT account__save(NULL, '11900', 'Materiál na cestě', 'A', '', NULL, false, false, string_to_array('IC', ':'), false, false);
SELECT account__save(NULL, '12100', 'Nedokončená výroba', 'A', '', NULL, false, false, string_to_array('IC', ':'), false, false);
SELECT account__save(NULL, '12400', 'Zvířata', 'A', '', NULL, false, false, string_to_array('IC', ':'), false, false);
SELECT account__save(NULL, '13100', 'Pořízení zboží', 'A', '', NULL, false, false, string_to_array('IC', ':'), false, false);
SELECT account__save(NULL, '13200', 'Zboží na skladě a v prodejnách', 'A', '', NULL, false, false, string_to_array('IC', ':'), false, false);
SELECT account__save(NULL, '13900', 'Zboží na cestě', 'A', '', NULL, false, false, string_to_array('IC', ':'), false, false);
SELECT account__save(NULL, '19000', 'Opravné položky k zásobám', 'A', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '19100', 'Opravná položka k materiálu', 'A', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '19300', 'Opravná položka k polotovarům vlastní výroby', 'A', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '19400', 'Opravná položka k výrobkùm', 'A', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '19500', 'Opravná položka ke zvířatům', 'A', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '19600', 'Opravná položka ke zboží', 'A', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '22100', 'Bankovní účty', 'A', '', NULL, false, false, string_to_array('AR_paid:AP_paid', ':'), false, false);
SELECT account__save(NULL, '22200', 'Bankovní účty klientù', 'A', '', NULL, false, false, string_to_array('AR_paid:AP_paid', ':'), false, false);
SELECT account__save(NULL, '23100', 'Krátkodobé bankovní úvěry', 'L', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '23200', 'Eskontní úvěry', 'L', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '24000', 'Jiné krátkodobé finanční výpomoci', 'L', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '24900', 'Ostatní krátkodobé finanční výpomoci', 'L', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '25300', 'Dlužné cenné papíry', 'A', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '26100', 'Peníze na cestě', 'A', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '29100', 'Opravná položka k majetkovým cenným papírùm', 'A', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '29300', 'Opravná položka k dlužným cenným papírům', 'A', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '31100', 'Odběratelé', 'A', '', NULL, false, false, string_to_array('AR', ':'), false, false);
SELECT account__save(NULL, '31200', 'Směnky k inkasu', 'A', '', NULL, false, false, string_to_array('AR', ':'), false, false);
SELECT account__save(NULL, '32200', 'Směnky k úhradě', 'L', '', NULL, false, false, string_to_array('AP', ':'), false, false);
SELECT account__save(NULL, '32400', 'Přijaté zálohy', 'L', '', NULL, false, false, string_to_array('AP', ':'), false, false);
SELECT account__save(NULL, '32600', ' Závazky vůči klientům', 'L', '', NULL, false, false, string_to_array('AP', ':'), false, false);
SELECT account__save(NULL, '32700', ' Závazky vůči trhům', 'L', '', NULL, false, false, string_to_array('AP', ':'), false, false);
SELECT account__save(NULL, '33000', 'Zúčtování se zaměstnanci a institucemi', 'L', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '33100', 'Zaměstnanci', 'L', '', NULL, false, false, string_to_array('AP', ':'), false, false);
SELECT account__save(NULL, '33300', 'Ostatní závazky vůči zaměstnancům', 'L', '', NULL, false, false, string_to_array('AP', ':'), false, false);
SELECT account__save(NULL, '33500', 'Pohledávky za zaměstnanci', 'A', '', NULL, false, false, string_to_array('AR', ':'), false, false);
SELECT account__save(NULL, '33600', 'Zůčtování s institucemi sociálního zabezpečení a zp', 'L', '', NULL, false, false, string_to_array('AP', ':'), false, false);
SELECT account__save(NULL, '34100', 'Daň z příjmu', 'L', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '34200', 'Ostatní přímé daně', 'L', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '34300', 'Daň z přidané hodnoty - zúčtování', 'L', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '34500', 'Ostatní daně a poplatky', 'L', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '34600', 'Dotace ze státního rozpočtu', 'L', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '35100', 'Pohledávky k podnikům ve skupině', 'A', '', NULL, false, false, string_to_array('AR', ':'), false, false);
SELECT account__save(NULL, '35400', 'Pohledávky za společníky při úhradě ztráty', 'A', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '35500', 'Ostatní pohledávky za společníky', 'A', '', NULL, false, false, string_to_array('AR', ':'), false, false);
SELECT account__save(NULL, '35800', 'Pohledávky k účastníkùm sdružení', 'A', '', NULL, false, false, string_to_array('AR', ':'), false, false);
SELECT account__save(NULL, '36100', 'Závazky k podnikům ve skupině', 'L', '', NULL, false, false, string_to_array('AP', ':'), false, false);
SELECT account__save(NULL, '36400', 'Závazky ke společníkům při rozdělování zisku', 'L', '', NULL, false, false, string_to_array('AP', ':'), false, false);
SELECT account__save(NULL, '36500', 'Ostatní závazky ke společníkům', 'L', '', NULL, false, false, string_to_array('AP', ':'), false, false);
SELECT account__save(NULL, '36600', 'Závazky ke společníkům a členům družstva ze závislé', 'L', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '36700', 'Závazky z upsaných nesplacených cenných papírů a vkladů', 'L', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '36800', 'Závazky k účastníkům sdružení', 'L', '', NULL, false, false, string_to_array('AP', ':'), false, false);
SELECT account__save(NULL, '37100', 'Odložená daňová pohledávka a závazek', 'L', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '37500', 'Pohledávky z emitovaných dluhopisů', 'A', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '37700', ' Zúčtování obchodů', 'A', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '38100', 'Náklady příštích období', 'A', '', NULL, false, false, string_to_array('AP', ':'), false, false);
SELECT account__save(NULL, '38200', 'Komplexní náklady příštích období', 'A', '', NULL, false, false, string_to_array('AP', ':'), false, false);
SELECT account__save(NULL, '38300', 'Výdaje příštích období', 'L', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '38400', 'Výnosy příštích období', 'L', '', NULL, false, false, string_to_array('AR', ':'), false, false);
SELECT account__save(NULL, '38500', 'Příjmy příštích období', 'A', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '38800', 'Dohadné účty aktivní', 'A', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '38900', 'Dohadné účty pasívní', 'L', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '39000', 'Opravná položka k zúčtovacím vztahům a vnitřní zúčtování', 'A', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '39100', 'Opravná položka k pohledávkám', 'A', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '39500', 'Vnitřní zúčtování', 'A', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '39800', 'Spojovací účet při sdružení', 'A', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '41200', 'Emisní ážio', 'Q', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '41400', 'Oceňovací rozdíly z přecenění majetku a závazků', 'Q', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '42200', 'Nedělitelný fond', 'Q', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '42800', 'Nerozdělený zisk minulých let', 'Q', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '42900', 'Neuhrazená ztráta minulých let', 'Q', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '43100', 'Hospodářský výsledek ve schvalovacím řízení', 'Q', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '46100', 'Bankovní úvěry', 'L', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '47100', 'Dlouhodobé závazky k podnikům ve skupině', 'L', '', NULL, false, false, string_to_array('AP', ':'), false, false);
SELECT account__save(NULL, '47500', 'Dlouhodobé přijaté zálohy', 'L', '', NULL, false, false, string_to_array('AP', ':'), false, false);
SELECT account__save(NULL, '47800', 'Dlouhodobé směnky k úhradě', 'L', '', NULL, false, false, string_to_array('AP', ':'), false, false);
SELECT account__save(NULL, '49100', 'Účet individuálního podnikatele', 'Q', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '50000', 'Spotřebované nákupy', 'E', '', NULL, false, false, string_to_array('AP_amount:IC_expense', ':'), false, false);
SELECT account__save(NULL, '50100', 'Spotřeba materiálu', 'E', '', NULL, false, false, string_to_array('AP_amount:IC_expense', ':'), false, false);
SELECT account__save(NULL, '50200', 'Spotřeba energie', 'E', '', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL, '50300', 'Spotřeba ostatních neskladovatelných dodávek', 'E', '', NULL, false, false, string_to_array('AP_amount:IC_expense', ':'), false, false);
SELECT account__save(NULL, '50400', 'Prodané zboží', 'E', '', NULL, false, false, string_to_array('AP_amount:IC_expense', ':'), false, false);
SELECT account__save(NULL, '51000', 'Služby', 'E', '', NULL, false, false, string_to_array('AP_amount:IC_expense', ':'), false, false);
SELECT account__save(NULL, '51100', 'Opravy a udržování', 'E', '', NULL, false, false, string_to_array('AP_amount:IC_expense', ':'), false, false);
SELECT account__save(NULL, '51800', 'Ostatní služby', 'E', '', NULL, false, false, string_to_array('AP_amount:IC_expense', ':'), false, false);
SELECT account__save(NULL, '52200', 'Příjmy společníků a členů družstva ze závislé činnosti', 'E', '', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL, '52300', 'Odměny členům orgánů společnosti a družstva', 'E', '', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL, '52400', 'Zákonné sociální pojištění', 'E', '', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL, '52500', 'Ostatní sociální pojištění', 'E', '', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL, '53000', 'Daně a poplatky', 'E', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '53100', 'Daň silniční', 'E', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '53200', 'Daň z nemovitostí', 'E', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '53800', 'Ostatní daně a poplatky', 'E', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '54100', 'Zůstatková cena prodaného dlouhodobého nehmotného a hmotného', 'E', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '55500', 'Zúčtování komplexních nákladů příštích období', 'E', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '55700', 'Zúčtování oprávky k opravné položce k nabytému majetku', 'E', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '55800', 'Tvorba zákonných opravných položek', 'E', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '55900', 'Tvorba opravných položek', 'E', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '56000', 'Finanční náklady', 'E', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '56800', 'Ostatní finanční náklady', 'E', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '57900', 'Tvorba opravných položek', 'E', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '58000', 'Mimořádné náklady', 'E', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '58100', 'Náklady na změnu metody', 'E', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '58200', 'Manka a škody', 'E', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '58800', 'Ostatní mimořádné náklady', 'E', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '58900', 'Tvorba opravných položek', 'E', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '59100', 'Daň z příjmu z běžné činnosti - splatná', 'E', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '59200', 'Daň z příjmu z běžné činnosti - odložená', 'E', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '59300', 'Daň z příjmu z mimořádné činnosti - splatná', 'E', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '59400', 'Daň z příjmu z mimořádné činnosti - odložená', 'E', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '59500', 'Dodatečné odvody daně z příjmu', 'E', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '59600', 'Převod podílu na hospodářském výsledku společníkùm', 'E', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '59700', 'Převod provozních nákladů', 'E', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '59800', 'Převod finančních nákladù', 'E', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '60000', 'Tržby za vlastní výkony a zboží', 'I', '', NULL, false, false, string_to_array('AR_amount:IC_sale:IC_income', ':'), false, false);
SELECT account__save(NULL, '60100', 'Tržby za vlastní výrobky', 'I', '', NULL, false, false, string_to_array('AR_amount:IC_sale', ':'), false, false);
SELECT account__save(NULL, '60200', 'Tržby z prodeje služeb', 'I', '', NULL, false, false, string_to_array('AR_amount:IC_income', ':'), false, false);
SELECT account__save(NULL, '60400', 'Tržby za zboží', 'I', '', NULL, false, false, string_to_array('AR_amount:IC_sale', ':'), false, false);
SELECT account__save(NULL, '61000', 'Změny stavu vnitropodnikových zásob', 'I', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '61100', 'Změna stavu nedokončené výroby', 'I', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '61200', 'Změna stavu polotovarů', 'I', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '61300', 'Změna stavu výrobků', 'I', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '61400', 'Změna stavu zvířat', 'I', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '62100', 'Aktivace materiálu a zboží', 'I', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '62200', 'Aktivace vnitropodnikových služeb', 'I', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '62300', 'Aktivace dlouhodobého nehmotného majetku', 'I', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '64100', 'Tržby z prodeje dlouhodobého nehmotného a hmotného majetku', 'I', '', NULL, false, false, string_to_array('AR_amount', ':'), false, false);
SELECT account__save(NULL, '64200', 'Tržby z prodeje materiálu', 'I', '', NULL, false, false, string_to_array('AR_amount:IC_sale', ':'), false, false);
SELECT account__save(NULL, '64400', 'Smluvní pokuty a úroky z prodlení', 'I', '', NULL, false, false, string_to_array('AR_amount', ':'), false, false);
SELECT account__save(NULL, '65200', 'Zúčtování zákonných rezerv', 'I', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '65400', 'Zúčtování ostatních rezerv', 'I', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '65500', 'Zúčtování komplexních nákladů příětích období', 'I', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '65700', 'Zúčtování oprávky k opravné položce k nabytému majetku', 'I', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '65800', 'Zúčtování zákonných opravných položek', 'I', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '65900', 'Zúčtování opravných položek', 'I', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '66000', 'Finanční výnosy', 'I', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '66100', 'Tržby z prodeje cenných papírů a vkladů', 'I', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '66500', 'Výnosy z dlouhodobého finančního majetku', 'I', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '66600', 'Výnosy z krátkodobého finančního majetku', 'I', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '66800', 'Ostatní finanční výnosy', 'I', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '67400', 'Zúčtování rezerv', 'I', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '67900', 'Zúčtování opravných položek', 'I', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '68000', 'Mimořádné výnosy', 'I', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '68100', 'Výnosy ze změny metody', 'I', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '68400', 'Zúčtování rezerv', 'I', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '68800', 'Ostatní mimořádné výnosy', 'I', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '68900', 'Zúčtování opravných položek', 'I', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '69700', 'Převod provozních výnosů', 'I', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '69800', 'Převod finančních výnosů', 'I', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '70100', 'Počáteční účet rozvažný', 'A', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '70200', 'Konečný účet rozvažný', 'A', '', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL, '71000', 'Účet zisků a ztrát', 'A', '', NULL, false, false, string_to_array('', ':'), false, false);


SELECT cr_coa_to_account_save(accno, accno || '--' || description)
FROM account WHERE id IN (select account_id FROM account_link
                           WHERE description = 'AP_paid');
--
insert into tax (chart_id,rate) values ((select id from account where accno = '34311'),0.05);
insert into tax (chart_id,rate) values ((select id from account where accno = '34312'),0.19);
insert into tax (chart_id,rate) values ((select id from account where accno = '34321'),0.05);
insert into tax (chart_id,rate) values ((select id from account where accno = '34322'),0.19);
--
INSERT INTO defaults (setting_key, value) VALUES ('inventory_accno_id', (select id from account where accno = '13200'));

INSERT INTO defaults (setting_key, value) VALUES ('income_accno_id', (select id from account where accno = '60000'));

INSERT INTO defaults (setting_key, value) VALUES ('expense_accno_id', (select id from account where accno = '50000'));

INSERT INTO defaults (setting_key, value) VALUES ('fxgain_accno_id', (select id from account where accno = '99998'));

INSERT INTO defaults (setting_key, value) VALUES ('fxloss_accno_id', (select id from account where accno = '99999'));


INSERT INTO currency (curr, description)
   VALUES
      ('CZK', 'CZK');
INSERT INTO defaults (setting_key, value) VALUES ('curr', 'CZK');


INSERT INTO defaults (setting_key, value) VALUES ('weightunit', 'kg');
--
commit;

--
UPDATE account
   SET tax = true
WHERE id
   IN (SELECT account_id
       FROM account_link
       WHERE description LIKE '%_tax');
