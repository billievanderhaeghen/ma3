-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jan 27, 2018 at 04:46 PM
-- Server version: 5.5.42
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ma3_18_auto`
--

-- --------------------------------------------------------

--
-- Table structure for table `ma3_auto_events`
--

CREATE TABLE `ma3_auto_events` (
  `id` int(11) NOT NULL,
  `code` varchar(4) NOT NULL,
  `title` varchar(255) NOT NULL,
  `day` int(11) NOT NULL,
  `content` text NOT NULL,
  `practical` text NOT NULL,
  `location` varchar(64) NOT NULL,
  `address` varchar(128) NOT NULL,
  `postal` varchar(5) NOT NULL,
  `city` varchar(128) NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `link` varchar(255) NOT NULL,
  `home` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `ma3_auto_events`
--

INSERT INTO `ma3_auto_events` (`id`, `code`, `title`, `day`, `content`, `practical`, `location`, `address`, `postal`, `city`, `start`, `end`, `link`, `home`) VALUES
(1, 'ANT1', 'Mobiliteitsmarkt Antwerpen', 1, 'Nieuwsgierig naar de allernieuwste trends op vlak van vervoer en autodelen? Of wilt u meer info over de wegenwerken en slimme alternatieven in Antwerpen? Neem dan zeker ook een kijkje op de mobiliteitsmarkt, het autodeelsalon of de infomarkt. Er zijn ook enkele mobiele activiteiten zoals de Fietsharmonie en het Schoon Vertier, een fanfare op rollerskates.\n\nDe volgende standjes staan verspreid over de Meir:\n\nStepperbike\nStepperbike is een Stepper op wielen met 7 versnellingen en 2 voetplanken waar je al rechtstaand je leuk en sportief verplaatst. Kom de Stepperbike uitproberen op de stand.\n\nDans l''assiette du cycliste\nStijlvol op de fiets met Dans l''assiette du cycliste, een collectie modieuze fietskleding en accesoires om dagdagelijks te dragen op en naast de fiets + handgemaakte designfietsen volledig naar wens van de klant.\n\nBicyclette\nDit Antwerpse label maakt strakke en stijlvolle casual shirts met de look van klassieke koerstruitjes. Voor de ware koersfanaat!\n\nDe Bak-Fiets-Kar Specialist\nBakfietskarinfo is dé referentie voor uw aankoop van bakfietsen, fietskarren en transportfietsen, zowel voor particulieren als voor bedrijven.\n\nBlue sky\nFietsen kunnen gebrand worden, er zijn ook 4 e-fietsen ter beschikking met koeltrailers\n\nCivitas PORTIS\nProject met 33 partners uit vijf steden waarbij samen aan een duurzame mobiliteit in en rond de stad en de haven wordt gewerkt. Kinderen kunnen zich uitleven in het kleurhoekje en zo een leuke prijs winnen.\n\nEcomobiel\nEcomobiel is sinds jaar en dag de  specialist van elektrische mobiliteit in Antwerpen. \n\nFiets!\nBij Fiets! Vind je een breed assortiment van fietsen, fietskledij, accessoires en onderdelen met alle gevestigde waarden en topmerken.\nFietsenwinkel De Geus\nSpecialist stadsfiest, elektrische fiets, reisfiets, pendelfiets en vouwfiets. Meer dan 30 jaar fietservaring.\n\nIbike\nDe winkels in Antwerpen-stad, Wilrijk, Deurne, Berchem, Eilandje, Ekeren en Brasschaat geven advies over uw mobiliteit in de stad met meer dan 25 topmerken op voorraad.\nProvincie Antwerpen\nDe Provincie Antwerpen zet sterk in op het netwerk van fietsostrades. Meer dan 80 km fietsostrade wordt momenteel uitgetekend. Daarnaast verzamelt ze objectieve informatie over fietsroutes met de fietsbarometer, helpt scholen met verkeerseducatie, doet mobiliteitsstudies en begeleidt bedrijven naar een meer duurzaam woon-werkverkeer.\n\nVelo Antwerpen\nVelo, de handige fiets van’t stad! Makkelijk en snel voor korte verplaatsingen. Met ongeveer 3000 fietsen in meer dan 250 stations verplaats je je vlot in en rond de stad. \n\nAntwerp by Bike\nVerken Antwerpen met de fiets! Sluit aan bij de rondleidingen en ontdek de highlights en de verborgen plekjes van Antwerpen.\n\nONAK\nONAK''s valies op wieltjes vouwt zich in 10 minuten uit tot een kano van topkwaliteit ! Hij is duurzaam, licht, makkelijk te transporteren en kan overal opgeborgen worden. \nDe Lijn\nDe beste optie naar uw bestemming in de stad met het openbaar vervoer.\n\nWorkshops for kids\nOok voor de kleinsten zijn er leuke activiteiten en workshops voorzien.', 'Tijdens Antwerpen Autovrij is de binnenstad tussen 10 en 18 uur afgesloten voor autoverkeer tussen tussen de Oude Leeuwenrui, Leien, Jan Van Gentstraat - Vlaamsekaai - Scheldestraat en Scheldekaaien . In het zuiden behoren alleen de Gedempte Zuiderdokken niet tot de autovrije zone. Ook de Kaaien zelf zijn grotendeels autovrij. Dit betekent dat u tijdens deze tijdsspanne de binnenstad niet binnen kan rijden.\n\nWie in deze zone woont, mag er zijn auto parkeren. U kan ook vertrekken uit de zone maar terugkeren kan pas na 18 uur. \n\nHet totale doorrijverbod is niet van toepassing voor:\n\nOpenbaar vervoer.\nDiensten van openbaar nut, hulp- en veiligheidsdiensten en erkende geldtransporten.\nTaxi’s en taxifietsen.\nParticulieren die van de openbare en ondergrondse parkings wegrijden uit de autovrije zone.\nPersonen met een kaart voor een handicap.\nPersonen met een officieel doorgangsbewijs kunnen de autovrije zone ook inrijden (deze doorrijvergunning kan aangevraagd worden via dit onlineformulier). Een doorgangsbewijs aanvragen kan tot en met zondag 17 september. Reken wel op enkele uren om uw aanvraag te verwerken.\n\nNog vragen over Antwerpen Autovrij? Stel ze gerust.\nTelefonisch via het stedelijk contactcenter.\ntel. 03 22 11 333 \nBereikbaar van maandag tot vrijdag van 9.00 tot 17.00 uur en op zaterdag van 9.00 tot 13.00 uur.\n\nVia mail op autovrij@stad.antwerpen.be', 'Meir', 'Meir', '2000', 'Antwerpen', '2018-09-16 10:00:00', '2018-09-16 18:00:00', 'https://www.antwerpen.be/nl/overzicht/antwerpen-autovrij', NULL),
(2, 'ANT2', 'Autodeelsalon Antwerpen', 1, 'Naast de Mobiliteitsmarkt vindt er ook een heus autodeelsalon plaats op de Meir, georganiseerd door Autodelen.net. Het is een belevingsbeurs voor jong en oud waar u alles kan ontdekken over autodelen en andere vormen van gedeelde mobiliteit.\n\nDeze aanbieders kan u een bezoekje brengen tijdens Antwerpen Autovrij:\n\nPoppy\nVanaf januari 2018 hebt u via Poppy, het nieuwe carsharing platform, de keuze uit honderden milieuvriendelijke wagens. De Poppy-wagens gaan overal in Antwerpen te vinden zijn, zonder vaste staanplaatsen om rekening mee te houden. \n\nBolides\nBolides zijn auto''s op wandelafstand in uw buurt. U kan op elk moment vertrekken met uw smartphone als sleutel. Er zijn geen vaste kosten, u betaalt enkel wanneer u rijdt. \n\nBuggybooker\nBuggybooker is een kinderwagendeelsysteem voor steden en gemeenten. Gezinnen kunnen er gratis gebruik van maken en zo makkelijker per fiets of openbaar vervoer de stad verkennen.\n\nCambio\nMet cambio autodelen hebt u een wagen waar en wanneer u maar wil. U rijdt en zij doen de rest. Goedkoop, duurzaam en makkelijk.\n\nCozycar\nMet Cozycar worden één of meerdere private wagens door verschillende (buurt)bewoners binnen een eigen gesloten groepje gedeeld.\n\nDrivy\nDrivy is een leidend platform voor autoverhuur tussen particulieren in Europa. Ze maken het mogelijk voertuigen van een particulier dichtbij huis te huren voor een weekendje weg of om uw eigen voertuig te verhuren.\n\nDégage\nDégage wilt na Gent ook in Antwerpen van start gaan. Via Dégage kunnen eigenaars hun auto delen met anderen. Via een kilometerprijs deelt de gebruiker mee in de kosten. \n\nTapazz\nTapazz werkt aan autodeeloplossingen door middel van soft-en hardware die het gemakkelijker maken om de eigen wagen en het wagenpark beter te beheren, te boeken en efficiënter in te zetten. Voor zowel particulieren als bedrijven. \n\nStapp.in Belgie\nStapp.in België is een organisatie die autodelen met vaste standplaats aanbiedt voor particulieren én bedrijven. Wilt u besparen, meer stabiliteit in uw kosten, uw wagenpark beheren of de CO2-uitstoot beperken? \n\nTaxistop\nTaxistop, dat is 40 jaar aan expertise over gedeelde mobiliteit. Van solo-autorijders tot ouderen of alerte backpackers, uiteenlopend publiek vindt bij Taxistop wat hij of zij zocht.', 'Tijdens Antwerpen Autovrij is de binnenstad tussen 10 en 18 uur afgesloten voor autoverkeer tussen tussen de Oude Leeuwenrui, Leien, Jan Van Gentstraat - Vlaamsekaai - Scheldestraat en Scheldekaaien . In het zuiden behoren alleen de Gedempte Zuiderdokken niet tot de autovrije zone. Ook de Kaaien zelf zijn grotendeels autovrij. Dit betekent dat u tijdens deze tijdsspanne de binnenstad niet binnen kan rijden.\n\nWie in deze zone woont, mag er zijn auto parkeren. U kan ook vertrekken uit de zone maar terugkeren kan pas na 18 uur. \n\nHet totale doorrijverbod is niet van toepassing voor:\n\nOpenbaar vervoer.\nDiensten van openbaar nut, hulp- en veiligheidsdiensten en erkende geldtransporten.\nTaxi’s en taxifietsen.\nParticulieren die van de openbare en ondergrondse parkings wegrijden uit de autovrije zone.\nPersonen met een kaart voor een handicap.\nPersonen met een officieel doorgangsbewijs kunnen de autovrije zone ook inrijden (deze doorrijvergunning kan aangevraagd worden via dit onlineformulier). Een doorgangsbewijs aanvragen kan tot en met zondag 17 september. Reken wel op enkele uren om uw aanvraag te verwerken.\n\nNog vragen over Antwerpen Autovrij? Stel ze gerust.\nTelefonisch via het stedelijk contactcenter.\ntel. 03 22 11 333 \nBereikbaar van maandag tot vrijdag van 9.00 tot 17.00 uur en op zaterdag van 9.00 tot 13.00 uur.\n\nVia mail op autovrij@stad.antwerpen.be', 'Meir', 'Meir', '2000', 'Antwerpen', '2018-09-16 10:00:00', '2018-09-16 18:00:00', 'https://www.antwerpen.be/nl/overzicht/antwerpen-autovrij', NULL),
(3, 'ANT3', 'Infomarkt Antwerpen', 1, 'U kan terecht bij de infototems op de Groenplaats waar u uitleg kan krijgen over slim verplaatsen naar en door de stad, over de grootste infrastructuurwerken in Antwerpen en over de lage-emissiezone. \n\nSlim naar Antwerpen, da''s overstappen\nSlimme tips en tricks om vlot naar Antwerpen te reizen en optimaal gebruik te maken van alle vervoersmodi.\n\nSlim naar Antwerpen, da''s op de hoogte zijn\nAlle informatie over de grootste wegenwerken die momenteel aan de gang zijn.\n\nSlim naar Antwerpen, da''s vlot naar het werk\nMeer uitleg over de kortingsregeling (e-)fiets, mobiliteitsadvies voor bedrijven en de bereikbaarheid van stad en haven.\n\nLage-emissiezone\nOm de luchtkwaliteit te verbeteren, zijn de Antwerpse binnenstad en een deel van Linkeroever een lage-emissiezone (LEZ). Ontdek alle nuttige informatie.\n\nOosterweelverbinding - BAM\nDe Oosterweelverbinding en het toekomstverbond worden elke dag concreter. Ontdek wat dit project allemaal inhoudt.\n\nNoorderlijn\nBenieuwd naar de uitbreiding van de tramlijnen en het het vernieuwde Operaplein? Hier vindt u alle informatie terug.', 'Tijdens Antwerpen Autovrij is de binnenstad tussen 10 en 18 uur afgesloten voor autoverkeer tussen tussen de Oude Leeuwenrui, Leien, Jan Van Gentstraat - Vlaamsekaai - Scheldestraat en Scheldekaaien . In het zuiden behoren alleen de Gedempte Zuiderdokken niet tot de autovrije zone. Ook de Kaaien zelf zijn grotendeels autovrij. Dit betekent dat u tijdens deze tijdsspanne de binnenstad niet binnen kan rijden.\n\nWie in deze zone woont, mag er zijn auto parkeren. U kan ook vertrekken uit de zone maar terugkeren kan pas na 18 uur. \n\nHet totale doorrijverbod is niet van toepassing voor:\n\nOpenbaar vervoer.\nDiensten van openbaar nut, hulp- en veiligheidsdiensten en erkende geldtransporten.\nTaxi’s en taxifietsen.\nParticulieren die van de openbare en ondergrondse parkings wegrijden uit de autovrije zone.\nPersonen met een kaart voor een handicap.\nPersonen met een officieel doorgangsbewijs kunnen de autovrije zone ook inrijden (deze doorrijvergunning kan aangevraagd worden via dit onlineformulier). Een doorgangsbewijs aanvragen kan tot en met zondag 17 september. Reken wel op enkele uren om uw aanvraag te verwerken.\n\nNog vragen over Antwerpen Autovrij? Stel ze gerust.\nTelefonisch via het stedelijk contactcenter.\ntel. 03 22 11 333 \nBereikbaar van maandag tot vrijdag van 9.00 tot 17.00 uur en op zaterdag van 9.00 tot 13.00 uur.\n\nVia mail op autovrij@stad.antwerpen.be', 'Groenplaats', 'Groenplaats', '2000', 'Antwerpen', '2018-09-16 10:00:00', '2018-09-16 18:00:00', 'https://www.antwerpen.be/nl/overzicht/antwerpen-autovrij', NULL),
(4, 'ANT4', 'Wandelroutes Antwerpen', 1, 'Voor Antwerpen Autovrij werden vier routes uitgestippeld waarbij u de stad telkens op een andere manier leert kennen. U kan de routes zelf volgen, aan de hand van de brochure die u kan ophalen aan het infopunt op de Meir. \n\nVolg het parcours van de Wieltjestoer, de Flaneerroute, de Zoektocht of de Tramtocht en doe mee aan de verschillende buurtavonturen. Maak zo kans op een gloednieuwe fiets of andere leuke prijzen. Bij elk avontuur langs de gekozen route ontvangt u een stempel voor de deelname. Verzamel alle stempels, vul de kaart in en laat ze achter in de box bij de infostand op de Meir.\n\n1. Wieltjestoer\nDe ketting gesmeerd? Fiets mee doorheen de autovrije kernstad met dit jaar 2 extra stops aan het Stadspark en het nieuwe Cadixplein. Een ideaal uitstapje voor trappende families. Vergeet niet af en toe te stoppen, te genieten en uit te blazen zoals het hoort op Antwerpen Autovrij. U mag vandaag in alle eenrichtingsstraten ook in tegengestelde richting rijden. Het start- en eindpunt van deze 10 km lange route is het hart van de stad, de Groenplaats.\n\n2. Flaneerroute\nDeze wandeling slingert van het oude centrum naar het noorden van de historische stad. U flaneert tussen de kathedraaltoren in het middeleeuwse centrum en het Museum aan de Stroom (MAS) op de Hanzestedenplaats, van de prille ruienstad naar het heroplevende Eilandje, van verleden naar toekomst.\n\n3. Zoektocht\nDeze zoektocht voor kinderen (en kinderen van geest) leidt u vanaf de Meir langs de vele winkelstraten in Antwerpen naar Sint-Andries. Op de terugtocht passeert u nog het Steenplein en kan u een tochtje met het gratis veer over de Schelde maken. Onderweg beantwoordt u verschillende vragen in quiz-stijl.\n\n4. Op-en-af route\nU reist met tram 4 of 7 door de stad. U kunt gewoon op tram blijven zitten en zo genieten van de stad. Indien mogelijk neem dan plaats aan de linkerkant (tegenover de deuren). Wij bieden u een tweetal suggesties om even uit te stappen en de buurt te verkennen. \n\nMet minder bussen en meer trams wil De Lijn de stad beter bereikbaar maken voor het openbaar vervoer én tegelijk de leefkwaliteit in de stad verhogen. Ze doet dat in de eerste plaats door het bestaande tram- en metronet uit te breiden.', 'Voor deze tocht dient u een ticket aan te schaffen. De Lijn ondersteunt de week van de Mobiliteit door een voordelige dagpas aan te bieden.\nDagpas kind (van 6 tot en met 11 jaar) : 3 euro\nDagpas volwassene : 4 euro\n\nTijdens Antwerpen Autovrij is de binnenstad tussen 10 en 18 uur afgesloten voor autoverkeer tussen tussen de Oude Leeuwenrui, Leien, Jan Van Gentstraat - Vlaamsekaai - Scheldestraat en Scheldekaaien . In het zuiden behoren alleen de Gedempte Zuiderdokken niet tot de autovrije zone. Ook de Kaaien zelf zijn grotendeels autovrij. Dit betekent dat u tijdens deze tijdsspanne de binnenstad niet binnen kan rijden.\n\nWie in deze zone woont, mag er zijn auto parkeren. U kan ook vertrekken uit de zone maar terugkeren kan pas na 18 uur. \n\nHet totale doorrijverbod is niet van toepassing voor:\n\nOpenbaar vervoer.\nDiensten van openbaar nut, hulp- en veiligheidsdiensten en erkende geldtransporten.\nTaxi’s en taxifietsen.\nParticulieren die van de openbare en ondergrondse parkings wegrijden uit de autovrije zone.\nPersonen met een kaart voor een handicap.\nPersonen met een officieel doorgangsbewijs kunnen de autovrije zone ook inrijden (deze doorrijvergunning kan aangevraagd worden via dit onlineformulier). Een doorgangsbewijs aanvragen kan tot en met zondag 17 september. Reken wel op enkele uren om uw aanvraag te verwerken.\n\nNog vragen over Antwerpen Autovrij? Stel ze gerust.\nTelefonisch via het stedelijk contactcenter.\ntel. 03 22 11 333 \nBereikbaar van maandag tot vrijdag van 9.00 tot 17.00 uur en op zaterdag van 9.00 tot 13.00 uur.\n\nVia mail op autovrij@stad.antwerpen.be\nVoor deze tocht dient u een ticket aan te schaffen. De Lijn ondersteunt de week van de Mobiliteit door een voordelige dagpas aan te bieden.\nDagpas kind (van 6 tot en met 11 jaar) : 3 euro\nDagpas volwassene : 4 euro', 'Groenplaats', 'Groenplaats', '2000', 'Antwerpen', '2018-09-16 10:00:00', '2018-09-16 18:00:00', 'https://www.antwerpen.be/nl/overzicht/antwerpen-autovrij', 1),
(5, 'ANT5', 'Markten Antwerpen', 1, 'Antwerpen Autovrij is de ideale moment om de stad te verkennen. Geniet mee van de wekelijkse marktjes op zondag en de randactiviteiten verspreid over de autovrije zone.\n\nEen marktje meenemen en langs kraampjes kuieren. Geen beter ogenblik dan een autoloze zondag om deze eeuwenoude maar springlevende traditie te ontdekken. Zeker tijdens het weekend, wanneer overal thematische markten de kop opsteken. U moest al onderweg zijn naar de …\n\nVogelenmarkt \nTheaterplein, 08:00 - 13:00\nBloemen, antiek, textiel, bijouterie, siervogels, hamsters en konijnen.\n\nAntiekmarkt \nSint-Jansvliet, 09:00 - 17:00\n\nBiomarkt \nFalconplein, 08:00 - 16:00\n\nBloemenmarkt \nGroenplaats, 14: 00 – 19:00', 'Tijdens Antwerpen Autovrij is de binnenstad tussen 10 en 18 uur afgesloten voor autoverkeer tussen tussen de Oude Leeuwenrui, Leien, Jan Van Gentstraat - Vlaamsekaai - Scheldestraat en Scheldekaaien . In het zuiden behoren alleen de Gedempte Zuiderdokken niet tot de autovrije zone. Ook de Kaaien zelf zijn grotendeels autovrij. Dit betekent dat u tijdens deze tijdsspanne de binnenstad niet binnen kan rijden.\n\nWie in deze zone woont, mag er zijn auto parkeren. U kan ook vertrekken uit de zone maar terugkeren kan pas na 18 uur. \n\nHet totale doorrijverbod is niet van toepassing voor:\n\nOpenbaar vervoer.\nDiensten van openbaar nut, hulp- en veiligheidsdiensten en erkende geldtransporten.\nTaxi’s en taxifietsen.\nParticulieren die van de openbare en ondergrondse parkings wegrijden uit de autovrije zone.\nPersonen met een kaart voor een handicap.\nPersonen met een officieel doorgangsbewijs kunnen de autovrije zone ook inrijden (deze doorrijvergunning kan aangevraagd worden via dit onlineformulier). Een doorgangsbewijs aanvragen kan tot en met zondag 17 september. Reken wel op enkele uren om uw aanvraag te verwerken.\n\nNog vragen over Antwerpen Autovrij? Stel ze gerust.\nTelefonisch via het stedelijk contactcenter.\ntel. 03 22 11 333 \nBereikbaar van maandag tot vrijdag van 9.00 tot 17.00 uur en op zaterdag van 9.00 tot 13.00 uur.\n\nVia mail op autovrij@stad.antwerpen.be', 'Groenplaats', 'Groenplaats', '2000', 'Antwerpen', '2018-09-16 10:00:00', '2018-09-16 18:00:00', 'https://www.antwerpen.be/nl/overzicht/antwerpen-autovrij', NULL),
(6, 'ANT6', 'Randactiviteiten Antwerpen', 1, 'Antwerpen Autovrij is de ideale moment om de stad te verkennen. Geniet mee van de wekelijkse marktjes op zondag en de randactiviteiten verspreid over de autovrije zone.\n\nDe langste veggietafel\nNeem je veggie picknick mee of lunch aan de vegetarische eetkraampjes. Een evenement van EVA vzw. Rijk aan groentjes, arm aan afval.\nGrote Markt, 12u - 18u.\n\nZuiderburen\nSpeciaal voor dit gratis stadsfestival wordt het Museum voor Schone Kunsten omgetoverd tot het grootste terras van ‘t Zuid. Bands, dj’s, petanque, glaasje rosé en zelfs… aerobics.\nLeopold de Waelplaats, 11-23u.\n\nFietsharmonie\nJe hoort een hoempapa maar ziet ‘m niet. Tot plots… Daar zijn ze dan, de Mannen van de Maas met hun orkest op de fiets! Ze rijden en musiceren kriskras door de stad. Spot ze waar je kunt!', 'Tijdens Antwerpen Autovrij is de binnenstad tussen 10 en 18 uur afgesloten voor autoverkeer tussen tussen de Oude Leeuwenrui, Leien, Jan Van Gentstraat - Vlaamsekaai - Scheldestraat en Scheldekaaien . In het zuiden behoren alleen de Gedempte Zuiderdokken niet tot de autovrije zone. Ook de Kaaien zelf zijn grotendeels autovrij. Dit betekent dat u tijdens deze tijdsspanne de binnenstad niet binnen kan rijden.\n\nWie in deze zone woont, mag er zijn auto parkeren. U kan ook vertrekken uit de zone maar terugkeren kan pas na 18 uur. \n\nHet totale doorrijverbod is niet van toepassing voor:\n\nOpenbaar vervoer.\nDiensten van openbaar nut, hulp- en veiligheidsdiensten en erkende geldtransporten.\nTaxi’s en taxifietsen.\nParticulieren die van de openbare en ondergrondse parkings wegrijden uit de autovrije zone.\nPersonen met een kaart voor een handicap.\nPersonen met een officieel doorgangsbewijs kunnen de autovrije zone ook inrijden (deze doorrijvergunning kan aangevraagd worden via dit onlineformulier). Een doorgangsbewijs aanvragen kan tot en met zondag 17 september. Reken wel op enkele uren om uw aanvraag te verwerken.\n\nNog vragen over Antwerpen Autovrij? Stel ze gerust.\nTelefonisch via het stedelijk contactcenter.\ntel. 03 22 11 333 \nBereikbaar van maandag tot vrijdag van 9.00 tot 17.00 uur en op zaterdag van 9.00 tot 13.00 uur.\n\nVia mail op autovrij@stad.antwerpen.be', 'Groenplaats', 'Groenplaats', '2000', 'Antwerpen', '2018-09-16 10:00:00', '2018-09-16 18:00:00', 'https://www.antwerpen.be/nl/overzicht/antwerpen-autovrij', NULL),
(7, 'KOR1', 'Autovrije zondag Kortrijk: Grote Markt', 1, 'Fietsdorp | 10 - 18 uur\nDe Grote Markt staat volledig in het teken van de fiets, met onder meer: \n\nPumptrack: met een BMX, loopfiets of step leg je een te gek, bulterig parcours af. Door een pompende beweging maak je vaart. Wij voorzien alles, zodat het voor iedereen een feest is om op de baan te rijden;\nStart2bakfiets: ontdek of een bakfiets iets voor jou is: test de laatste nieuwe bakfietsen van Mobiel vzw;\nTweedehands fietsmarkt: kom je fiets verkopen of tik er één op de kop;\nKijk, ik fiets: leer je kind op een paar uur tijd fietsen op 2 wielen? Schrijf nu online in;\nSpeelkoffers: naast zorgeloos fietsen, kunnen kinderen in een speelstraat volop spelen. Test de speciale speelkoffers van de Warande, boordevol spelmateriaal;\nWildfietsen: neem plaats op een beestachtige hometrainer. Je genereert zelf je stroom om een korte film af te spelen;\nFietsherstelcafé: herstel samen met een instructeur je fiets. Onderdelen koop je tegen inkoopprijs;\nFietsmerken: laat je fiets merken door de preventiedienst van Stad Kortrijk;\nFietsgadgets: koop je wildste gadget bij Parko – of krijg er één cadeau;\n(Bak)fietsen pimpen: met (papieren) bloemen en ander moois;\nBakfietsfuif: jij vraagt je kinderfuifje, Lieve Zusjes Stoere Broers draait de muziek en rijdt je rond!\nMobit: verspreid over het stadscentrum vind je 200 nieuwe groene deelfietsen. \n\nFietsterras | 10 tot 18 uur\nNat en droog bijtanken, kan aan de bar van de Levensboom, terwijl je peuter of kleuter zich vermaakt op kleine of gekke fietsjes | aan de kiosk.\n\nOrkest Bazar | 14.30 en 16 uur\nEen circusact met drie muzikanten of zijn het drie circusartiesten die musiceren ? Een mobiel circus waar de interactie met het publiek steeds centraal staat.\n\nGraanmarkt\nKnuffelboerderij | 10 tot 17 uur\nKinderen vertroetelen kleine boerderijdieren naar hartenlust. O.l.v. vzw De Ponyhoeve die, naast recreatie, ook gespecialiseerd is in educatie en therapie geassisteerd door dieren |  Ponyritjes tussen 11 en 12 uur en tussen 14 en 17 uur  ', '', 'Grote Markt', 'Grote Markt, Graanmarkt', '8500', 'Kortrijk', '2018-09-16 10:00:00', '2018-09-16 18:00:00', 'https://www.kortrijk.be/veroverdestraat/nieuws/programma-verover-de-straat-autovrije-zondag', NULL),
(8, 'KOR2', 'Autovrije zondag Kortrijk: Leieboorden', 1, 'Sterrenbanket | 12 tot 14 uur\nGratis straatlunch, met lokale producten en voedseloverschotten. Samengesteld door de Boxy broers en bereid door leerlingen van RHIZO en Athena. Alles moet op! | Dolfijnkaai\n\nRock en rol-dessert | 14 tot 16.30 uur \nDit dessert wordt live gemaakt, enkel uit voedseloverschotten en speciaal voor de deelnemers aan ''Buda Rock en Rolt''. Iedereen kan komen meekoken! Het accordeon-meespeel-ensemble Trio Trottoir zorgt voor extra schwung | Dolfijnkaai\n\nInspiratiemarkt | 12 tot 16.30 uur\nOrganisaties uit de verschillende schakels van de voedselketen stellen oplossingen voor om voedseloverschotten terug te dringen, om duurzame productie en consumptie te stimuleren. Je leert er o.a. hoe je restjes kunt verwerken in een nieuwe maaltijd of hoe ze te composteren… | Reepkaai', '', 'Leieboorden', 'Dolfijnkaai, Reepkaai', '8500', 'Kortrijk', '2018-09-16 12:00:00', '2018-09-16 16:30:00', 'https://www.kortrijk.be/veroverdestraat/nieuws/programma-verover-de-straat-autovrije-zondag', NULL),
(9, 'SIN1', 'Autovrije zondag Sint-Niklaas: Grote Markt', 1, 'Infostand duurzame mobiliteit\nDeze dag staat in het teken van duurzame mobiliteit. Kom hier meer te weten over een aantal mobiliteitsprojecten die in de pijplijn zitten. We voorzien een leuk aangepast gadget voor iedere bezoeker. Haal uw mooiste glimlach boven en vereeuwig uw bezoek door plaats te nemen in de fotobooth. Een echte aanrader dus!\n\nSolar fiets\nDe nieuwe generatie snelle elektrische fietsen is in opmars. Door de combinatie spierkracht en batterij halen deze motorfietsen snelheden tot 45 km/uur en vormen ze een milieuvriendelijk en gezond alternatief voor de wagen. Het enige nadeel van deze E-bikes is het gebrek aan bagageruimte en de beperkte autonomie van de batterij. Daardoor zijn deze minder geschikt voor lange afstanden en verkiest men vlugger de wagen. De Solarwind is een speciaal voor deze E-bikes ontworpen trailer, uitgerust met zonnecellen, die dit probleem oplost. Maak in deze stand kennis met deze ingenieuze uitvinding.\n\nFietshandelaars\nDiverse fietshandelaars komen hun nieuwste fietsen en accessoires uitstallen.\n\nAutodelen\nMaak kennis met diverse vormen van autodelen. In het autodeelsalon en bij de infostand van Cambio wordt uw honger ongetwijfeld gestild.\n\nThuiszorgwinkel\nTest hier een hindernissenparcours voor elektronische scooters, rolwagens en elektrische fi etsen. Wedden dat dit een hele klus wordt.\n\nGrote obstakelrun\nVerleg je grenzen met deze extreme obstakelbaan. Kruip onder, spring over verschillende obstakels in diverse springkastelen. Daag iemand uit en probeer als eerste de obstakels te overwinnen.\n\nToeristische info\nOntdek hoe de fi ets niet enkel functioneel ingezet kan worden maar ook dienst doet als recreatief verplaatsingsmiddel. U vindt verder toeristische promotie van Sint-Niklaas met het aanbod van fietskaarten terug in infostandjes van toerisme. Pasar vult deze info aan met uitgewerkte wandelingen in het kader van ‘Stadsgordel 800’ in Sint-Niklaas en de deelgemeenten.\nMet de fiets op reis? Dat kan vandaag ook allemaal. Ga even langs bij het deelnemend reisbureau.\n\nVerkeersveiligheid\nOp het verkeersparcours kunnen kinderen in een beveiligde omgeving met een gekke fiets de verkeersregels zelf uittesten. De fietsersbond zorgt voor de begeleiding. De politie voorziet daarnaast een infostand rond het aspect van veilig op de baan alsook fietsdiefstalpreventie. De vrijwilligers van de Vlaamse stichting van verkeerskunde informeren u graag over de gevaren van de dode hoek. Ze gebruiken hiervoor nieuwe technologie van 3D-brillen. Zeker de moeite waard!\n\nOptredens\nSta zeker even stil bij de vele optredens en shows die met volle overgave gegeven worden.\n\nFiets doestanden\nZin in wat meer actie om de grote diversiteit van de fi ets te ontdekken? Dat kan op één van de fi etsattracties. U kan ook uw fiets laten pimpen. Of wat dacht u van met oude fietsbanden iets hips te maken?\n\nMiwa\nMet de infostand wil afvalintercommunale MIWA de bevolking informeren en sensibiliseren over verschillende afvalgerelateerde thema’s, zoals afvalpreventie, de sorteerregels, zwerfvuil,…\n\nDe Lijn\nMaak kennis met het aanbod van het busvervoer van De Lijn. Voordelig de bus op. Ontdek hier de verschillende formules.', 'Op zondag 17 september 2017 is het feest in de stadskern. De auto’s blijven die\ndag aan de kant en voetgangers en fi etsers nemen de straten en pleinen in.\nTientallen creatieve doe-activiteiten maken van autovrije zondag opnieuw een\nhoogdag van de zachte mobiliteit.\nOp zondag 17 september is er van 12 tot 19 uur geen verkeer mogelijk in een\ngroot deel van de stadskern. De afbakening van de autovrije zone vindt u op het\nplan. Activiteiten vinden plaats tussen 14 en 18 uur. Ter gelegenheid van autovrije\nzondag biedt het stadsbestuur u gratis busvervoer aan. U hoeft hiervoor\nniets te ondernemen, gewoon op de bus stappen.\n\nDe laatste updates van het programma vindt u ook op:\nwww.sint-niklaas.be/autovrij', 'Grote Markt', 'Grote Markt', '9100', 'Sint-Niklaas', '2018-09-16 14:00:00', '2018-09-16 18:00:00', 'www.sint-niklaas.be/autovrij', NULL),
(10, 'SIN2', 'Autovrije zondag Sint-Niklaas: H. Heymanplein', 1, 'Initiatie sport\nMaak kennis met een initiatie baseball. Of bent u eerder fan van een skateinitiatie? Misschien is curling wel iets voor u? Of houdt u eerder van een gevechts- en/of verdedigingssport? De dienst sport informeert u graag over het sportaanbod.\n\nKinderen\nVoor de allerkleinsten worden er ponyritjes voorzien of wat dacht u van een fietsdraaimolen? Met het treinspringkasteel gaat het vooruit. De leerlingen van de OLV-Presentatie toveren een mooie grime op uw gezicht en knutselen graag iets leuks met u.\n\nSpel\nDaag uw vrienden uit op een rondje op de sweeper. Of ga terug in de tijd met een potje volksspelen.\n\nOptredens\nGeniet even een rustpauze van de vele optredens terwijl u geniet van een drankje en een versnapering.\n\nZeepkistenrace\nVan die typische bommakasten, waar de kringloopcentra van uitpuilen omdat niemand ze nog wil, kent u die? Wel deze werden omgeturnd tot een zeepkist. Benieuwd? Neem dan zeker deel aan de race of aanschouw dit spektakel als toeschouwer.\n\nOpening bibliotheek\nIn het kader van de feestelijke heropening na de renovatiewerken, is de Bib op Autovrije zondag uitzonderlijk open tot 17 uur. Een weekend vol activiteiten voor jong en oud met onder ander Begijn Le Bleu, workshops papier scheppen, buttons maken, t-shirts printen, rondleidingen, voorleesmomenten en nog veel meer.', 'Op zondag 17 september 2017 is het feest in de stadskern. De auto’s blijven die\ndag aan de kant en voetgangers en fi etsers nemen de straten en pleinen in.\nTientallen creatieve doe-activiteiten maken van autovrije zondag opnieuw een\nhoogdag van de zachte mobiliteit.\nOp zondag 17 september is er van 12 tot 19 uur geen verkeer mogelijk in een\ngroot deel van de stadskern. De afbakening van de autovrije zone vindt u op het\nplan. Activiteiten vinden plaats tussen 14 en 18 uur. Ter gelegenheid van autovrije\nzondag biedt het stadsbestuur u gratis busvervoer aan. U hoeft hiervoor\nniets te ondernemen, gewoon op de bus stappen.\n\nDe laatste updates van het programma vindt u ook op:\nwww.sint-niklaas.be/autovrij', 'Hendrik Heymanplein', 'Hendrik Heymanplein', '9100', 'Sint-Niklaas', '2018-09-16 14:00:00', '2018-09-16 18:00:00', 'www.sint-niklaas.be/autovrij', NULL),
(11, 'BXL1', 'Bike Brussels', 5, 'Bike Brussels is a bike show that focuses on urban bicycles.\n\nThis 2018 edition, which takes place from 16 to 19 September, is also the first one. (Re)discover the bike as a means of urban transport, draw profit from an abundance of ideas, activities and debates, try out new and novel things … in short, do not miss out on this innovative event!', '', 'Tour & Taxis', 'Havenlaan 86C', '1000', 'Brussel', '2018-09-16 09:00:00', '2018-09-19 20:00:00', 'www.bikebrussels.be', NULL),
(12, 'BXL2', 'Parade voor 200ste verjaardag van de fiets', 5, 'In 2017 bestaat de fiets tweehonderd jaar! Vier het stalen ros en doe mee met de parade van oude fietsen. Een draisine, een hoge bi of liever een koersfiets? 200 fietsen van 1817 tot vandaag zullen klaar staan voor een parcours van 10 km. De start ligt midden in het 200-jaar-fiets-dorp op het Poelaertplein.\n\nThis 2018 edition, which takes place from 16 to 19 September, is also the first one. (Re)discover the bike as a means of urban transport, draw profit from an abundance of ideas, activities and debates, try out new and novel things … in short, do not miss out on this innovative event!', '', 'Place Poelaert', 'Poelaertplein', '1000', 'Brussel', '2018-09-17 15:00:00', '2018-09-17 17:00:00', 'www.mobilmix.brussels', NULL),
(13, 'BXL3', 'Expo Mobility', 5, 'Wat is mobiliteit? Alles dat beweegt, dat verandert. Hoe kan je de beweging voorstellen of hoe kan je iets in beweging brengen? Hoe kan je aanzetten tot bewegen? Hoe kijken wij naar mobiliteit? De kunstenaars uit de gemeente zagen dit thema als een uitdaging en hebben geprobeerd om hier een antwoord op te geven.\n\nEr zullen ook diverse workshops worden georganiseerd die openstaan voor iedereen: sommige zijn erop gericht u te doen bewegen, andere zullen u artistieke werken laten ontdekken.\n\nThis 2018 edition, which takes place from 16 to 19 September, is also the first one. (Re)discover the bike as a means of urban transport, draw profit from an abundance of ideas, activities and debates, try out new and novel things … in short, do not miss out on this innovative event!', 'Gratis\nVan woensdag tot zaterdag van 13 tot 18 uur, op zondag 10 september van 10 tot 16 uur en op zondag 17 september van 10 tot 18 uur\n\nInfo:\nDienst Cultuur, cultuur1170@wb.irisnet.be, T. 02.674.75.07 \n', 'Salons van het Hooghuis', 'A. GIlsonplein 2', '1170', 'Watermaal-Bosvoorde', '2018-09-09 13:00:00', '2018-09-24 18:00:00', 'http://watermaal-bosvoorde.be/nl/nieuws/tentoonstelling-mobility?set_language=nl', NULL),
(14, 'BXL4', 'Fietscolloquium 2018 - De stad van morgen', 5, '"De plaats van de fiets in de stad van morgen" is de rode draad van het Brusselse fietscolloquium georganiseerd door Brussel Mobiliteit en Pro Velo. Het gaat door in het kader van het salon Bike Brussels, dat van 16 tot 19 september op Tour & Taxis neerstrijkt.\n\nHet perspectief met andere Europese grootsteden, de plaats van de verschillende verplaatsingswijzen in de openbare ruimte in het heden en het verleden, de fiets als antwoord op de uitdagingen van de stad van morgen.\n\nEen unieke gelegenheid om zich te informeren en te debateren over de stand van zaken. Worden er alvast verwacht: Peter Murray (President New London Architecture & The London Society), Wout Baes (Voorzitter van Fietsberaad Vlaanderen), Leo Bormans (global Ambassador of Happiness & Quality of Life) en vele anderen.\nEr zullen ook diverse workshops worden georganiseerd die openstaan voor iedereen: sommige zijn erop gericht u te doen bewegen, andere zullen u artistieke werken laten ontdekken.\n\nThis 2018 edition, which takes place from 16 to 19 September, is also the first one. (Re)discover the bike as a means of urban transport, draw profit from an abundance of ideas, activities and debates, try out new and novel things … in short, do not miss out on this innovative event!', '', 'Tour & Taxis', 'Havenlaan 86C', '1000', 'Brussel', '2018-09-16 08:30:00', '2018-09-19 17:00:00', 'http://www.bruxellesmobilite.irisnet.be/static/attachments/news/na/9137/programme collvelo.pdf', NULL),
(15, 'BXL5', 'Brussel, fietsbaar? nou en of?', 1, 'Het Brussels Hoofdstedelijk Gewest heeft heel wat projecten op stapel staan om de regio fietsvriendelijker te maken. Een aantal projecten zijn intussen al uitgevoerd, andere zijn in uitvoering of zijn reeds op plan uitgewerkt.\n\nFiets mee, vanaf Tour&Taxis langs het kanaal (Havenlaan, Poincarélaan, Zennepark, …) met onze ervaren gids! Het belooft een geanimeerd debat te worden over dit fietsnetwerk.\n\nFietstocht van 15 km, in het Frans, maar toelichting is ook mogelijk in het Nederlands. De tocht wordt GRATIS aangeboden in het kader van het fietssalon Bike Brussels door Pro Velo.\nInschrijving is wel verplicht (klik hier voor het formulier).\nHet perspectief met andere Europese grootsteden, de plaats van de verschillende verplaatsingswijzen in de openbare ruimte in het heden en het verleden, de fiets als antwoord op de uitdagingen van de stad van morgen.\n\nEen unieke gelegenheid om zich te informeren en te debateren over de stand van zaken. Worden er alvast verwacht: Peter Murray (President New London Architecture & The London Society), Wout Baes (Voorzitter van Fietsberaad Vlaanderen), Leo Bormans (global Ambassador of Happiness & Quality of Life) en vele anderen.\nEr zullen ook diverse workshops worden georganiseerd die openstaan voor iedereen: sommige zijn erop gericht u te doen bewegen, andere zullen u artistieke werken laten ontdekken.\n\nThis 2018 edition, which takes place from 16 to 19 September, is also the first one. (Re)discover the bike as a means of urban transport, draw profit from an abundance of ideas, activities and debates, try out new and novel things … in short, do not miss out on this innovative event!', 'Wil u een standsfiets of elektrische fiets huren? Dat kan, rechtstreeks op het salon Bike Brussels (Tour&Taxis, Havenlaan 86C). Reservatie verplicht.', 'Tour & Taxis', 'Havenlaan 86C', '1000', 'Brussel', '2018-09-16 14:00:00', '2018-09-16 17:00:00', 'www.mobilmix.brussels', NULL),
(16, 'BXL6', 'Le beau V', 5, 'Dit jaar doet Beau Vélo de RAVeL op Autoloze Zondag Brussel aan. De tocht van 26 km vertrekt om 12u45 uur aan de voet van het Atomium. Elke deelnemer kiest zijn transportmiddel: fiets, handbike, skates, rolschaatsen, te voet,… De tocht gaat langs het Koninklijk Domein, door de gemeenten Brussel, Schaarbeek, Etterbeek, Molenbeek, Koekelberg, Berchem, Ganshoren en Jette en tenslotte door het Koning Boudewijnpark.', '', 'Atomium', 'Atomiumplein', '1020', 'Laken', '2018-09-18 11:00:00', '2018-09-18 17:00:00', 'www.mobilmix.brussels', NULL),
(17, 'BXL7', 'Zeepkistenrace en straatfeest', 1, 'Op Autoloze Zondag trekt Ten Noey naar de de Beriotstraat waar de perfecte helling te vinden is voor een zeepkistenrace. Je weet wel, zo’n bak op wieltjes met een stuur, soms een rem, maar zeker geen motor.\nWe trekken een parcours van boven naar beneden voor wie met een zelfgemaakt karretje de helling af wil suizen.\n\nOpen atelier ouvert \nTijdens de zomer gingen er al een stel kinderen aan het knutstelen in Ten Noey. Ze bedachten onder begeleiding hoe ze een zeepkistkist ineen konden knutselen en werkten ze als een coole bolide af. Wie zijn kar nog wil perfectioneren kan nog elk weekend van september in het Open Atelier in Ten Noey terecht. Je vindt er plek, materiaal, wat technische of estetisch advies.\nMaar ook wie op eigen houtje een kar wil komen maken en thuis te weinig plaats heeft kan in het Open Atelier terecht. Je neemt best vooraf contact op om je komst te melden, om te horen wat we liggen hebben aan materiaal en om afspraken te maken. Je bouwwerk kan de hele tijd, tot aan de Autoloze Zondag blijven staan. Daarna neem je het mee naar huis, of demonteer je het.\n\nAnimatie\nDe bewoners van de de Beriotstraat komen ook uit hun kot. In lang vervlogen jaren organiseerden ze jaarlijks een straatfeest met eten, drinken en muziek. De draad wordt op autoloze zondag opgepikt. Er zal een barretje geïnstalleerd worden, er wordt lekkers gekookt, dat gratis of voor een zacht prijsje wordt gedeeld, en een fanfare zal door de straat wandelen.\n\nKlimmen \nWaar gedaald kan worden kan ook geklommen worden. Als uitsmijter van de dag worden er ook klimwedstrijdjes georganiseerd. Wie daagt wie uit voor een snedig spurtje bergop?', '', 'Gemeenschapscentrum Ten Noey vzw', 'Gemeentestraat 25', '1210', 'Sint-Joost-Ten-Noode', '2018-09-16 12:00:00', '2018-09-16 18:00:00', 'http://www.tennoey.be/activiteiten-zoeken', NULL),
(18, 'BXL8', 'Industrieel erfgoed langs het kanaal', 5, 'In de omgeving van het kanaal zien we nog heel wat sporen van het industrieel verleden van Brussel: gewezen fabrieken worden omgebouwd tot woningen of kantoren, sociale woningen voor arbeiders, … Ook vandaag nog laten die fabrieken ons niet onberoerd: er werd immers chocolade of koekjes gemaakt, bier gebrouwen, koffie gebrand, aperitiefwijn opgeslagen,…', 'Prijs van de fietstocht: 15 euro\n\nGeïnteresseerd in deze tocht, maar geen fiets voorhanden?\nReserveer een stads- of elektrische fiets bij Pro Velo (Londenstraat 15 – Elsene).\n\nInschrijving aan de hand van het formulier:\nhttp://www.provelo.org/fr/individual_tour/lheritage-industriel-le-long-du-canal', 'Kanaal Brussel', 'Londenstraat 15', '1050', 'Elsene', '2018-09-22 14:00:00', '2018-09-22 17:30:00', 'http://www.provelo.org/fr/individual_tour/lheritage-industriel-le-long-du-canal', NULL),
(19, 'BRU1', 'Openingsfeest Concertgebouw Circuit', 1, 'Vanaf 16 september zet het Concertgebouw zijn deuren ook overdag open. Het cultuurhuis laat je zijn hedendaagse architectuur en zijn schitterende akoestiek ontdekken met een belevingsgericht parcours. Tegelijk geeft dit ‘Concertgebouw Circuit’ een blik op de werking, de kunstcollectie en de klankkunst van het Concertgebouw. Op zondag 16 september opent dit nagelnieuwe Concertgebouw Circuit met een gratis feest. Vanaf 10.00u wordt elke bezoeker getrakteerd op koffie en ontbijtkoeken. Een fanfare neemt je op sleeptouw langs het Circuit en de hele dag word je vergast op kleine en grotere concerten. Radio 2 verzorgt een lieveradioshow en de jongeren van Soundcast houden je met hun blog op de hoogte van de gebeurtenissen. Zelf kun je ook aan de slag door poppen te maken, vliegertjes te knutselen met Henk Rijckaert, je aan een majorettezwaai te wagen of je (klein)kinderen te entertainen in de kinderhoeken. Om 16.30u volgt de feestelijke apotheose met een massale Vliegerkesworp vanop de Lantaarntoren. Een muzikale ode begeleidt dit schouwspel en zorgt zo mee voor een mooie inhuldiging van het eerste heraangelegd deel van ‘t Zand. ', 'Op Autoloze Zondag doen we er een schepje bovenop, want dan hebben fietsers en voetgangers vrij spel in het Brugse centrum. Tussen 10.00u en 18.00u is de binnenstad afgesloten voor voertuigen. Breng een bezoekje aan de Cultuurmarkt of aan de MobiMarkt, ga mee Kroenkelen of kuier door de braderie in de Langestraat en de Hoogstraat. Kom dansen op het Jan Van Eyckplein, het Simon Stevinplein of het Guido Gezelleplein. Laat je verrassen door de vele activiteiten, optredens en de randanimatie in de Brugse straten. Of stap eens door tot aan de Moerkerkse Steenweg, waar op Sint-Kruis Kermis heel wat te beleven valt.', '?t Zand', '?t Zand', '8000', 'Brugge', '2018-09-16 10:00:00', '2018-09-16 18:00:00', 'www.concertgebouw.be', NULL),
(20, 'BRU2', 'Concert: Lee Anderson, Slotconcert: De Mens', 1, 'Concert Lee Anderson 15.30u – 16.00u\nLeander van het Groenewoud vormt met drie gelijke gestemde zielen de band Lee Anderson. Het vierstal is geïnspireerd door The Beatles, Bob Dylan en Tim Hardin en dat wordt vertaald naar een sound die bluesy, folky, fris én getormenteerd is.\n\nSlotconcert De Mens 16.40u – 17.55u\nHet elfde album van De Mens heette niet toevallig ‘Nooit Genoeg’. Uitgebracht in 2015 en uitgebreid bejubeld (‘Allerbeste plaat in 22 jaar carrière’, ‘De Mens in absolute topvorm’), bracht ‘Nooit Genoeg’ de groep weer op talloze podia.\nIn de lente van dit jaar bracht De Mens het live mini-album ‘De Mens Akoestisch In De Club’ uit en deze zomer besteedde de groep veel tijd in de studio voor de opnames van een nieuwe, snedig rockende plaat.\nTussendoor zijn er de concerten: altijd energiek, goedgeluimd en heftig. Op de speellijst staan toppers van ‘Nooit genoeg’ en veel klassiek werk, van ‘Dit is mijn huis’, ‘Jeroen Brouwers’, ‘Irene’. De ‘De Mens’-trein laat zich niet zomaar stoppen!', 'Op Autoloze Zondag doen we er een schepje bovenop, want dan hebben fietsers en voetgangers vrij spel in het Brugse centrum. Tussen 10.00u en 18.00u is de binnenstad afgesloten voor voertuigen. Breng een bezoekje aan de Cultuurmarkt of aan de MobiMarkt, ga mee Kroenkelen of kuier door de braderie in de Langestraat en de Hoogstraat. Kom dansen op het Jan Van Eyckplein, het Simon Stevinplein of het Guido Gezelleplein. Laat je verrassen door de vele activiteiten, optredens en de randanimatie in de Brugse straten. Of stap eens door tot aan de Moerkerkse Steenweg, waar op Sint-Kruis Kermis heel wat te beleven valt.', 'Markt', 'Markt', '8000', 'Brugge', '2018-09-16 15:30:00', '2018-09-16 18:00:00', 'https://www.brugge.be/brochure-autoloze-zondag-2017', NULL),
(21, 'IPR1', 'Autovrije zondag Ieper', 1, 'Op 16 september 2018 wordt de autovrije zondag georganiseerd. Het concept is gekend, straten en pleinen worden dan autovrij gemaakt. Bewoners en bezoekers krijgen alle ruimte om te stappen (met of zonder rollator), om te trappen, te rolschaatsen, ontspannen te wandelen,... De straten worden parkeer- en verkeersvrij gemaakt tussen 10u30 en 18u30. In diverse straten worden activiteiten georganiseerd tussen 13u en 18u. Dé ideale gelegenheid om de alternatieven te testen voor een (korte) autorit.\n\nFietsenmarkt\nDe parkeerzone van de Grote Markt zal worden omgetoverd tot een fietsenmarkt. Je kan er de nieuwste fietsvormen en allerlei soorten bakfietsen leren kennen, gratis je fiets laten labelen ter preventie van diefstal, overkop fietsen, retrofietsen bekijken,… In de ruime omgeving van de Markt kan men zich uitleven op gekke fietsen, de rolschaatspiste, een testritje maken met een éénwieler of longboard,… Ook de kinderen zullen kunnen genieten van diverse activiteiten zoals de speelbus, springkastelen,… Breng gerust de kinderfietsen mee, deze kunnen dan gepimpt worden. Daarnaast zal ook een mini-autodeelsalon plaatsvinden, waarbij bezoekers allerlei informatie kunnen ontdekken over autodelen. Wie vragen heeft over ervaringen, verzekering,.. kan hier zeker terecht. De meeste activiteiten gaan door op de Grote Markt en het Vandenpeereboomplein.\n\nTweedehandsmarkt fietsen\nNa het succes van vorig jaar wordt opnieuw een tweedehandsmarkt van fietsen en fietsaccessoires georganiseerd. Thuis nog één of meerdere fietsen te veel staan? Of enkele fietsaccessoires op overschot (fietstas, helm,..)? Misschien kan je er iemand mee helpen die op zoek is naar een geschikte (kinder)fiets of accessoire. Deze zaken worden op de autovrije zondag in de namiddag uitgestald op een bewaakte locatie. Potentiële kopers kunnen je dan telefonisch contacteren bij interesse. Voorafgaande inschrijving is noodzakelijk, dit voor 8 september. Inschrijven kan via duurzaam@ieper.be of 057/45.16.72.  De verkopers moeten particulieren zijn en mogen maximum 5 fietsen uitstallen. Koper en verkoper moeten minimum 18 jaar zijn of begeleid zijn door een volwassene.\n\nIepers kampioenschap fietsband vervangen\nDe autovrije zondag wordt dit jaar afgetrapt door het Iepers kampioenschap ‘fietsband vervangen’. Ben jij handig in het vervangen van fietsbanden? Kom dan tussen 11 en 13u naar het kruispunt Menenstraat – Sint-Jacobsstraat en bewijs je fietsband-vervang-kunsten. Wie weet ga jij wel aan de haal met de prijs en de eeuwige roem?', 'Stad Ieper\nAfdeling openbaar domein - Mobiliteit\nRijselsepoort 4 \n8900 Ieper\n\ntel. 057 239 518\nmobiliteit@ieper.be', 'Grote Markt, Vandenpeereboomplein', 'Grote Markt', '8900', 'Ieper', '2018-09-16 10:30:00', '2018-09-16 18:30:00', 'https://www.ieper.be/autovrijezondag', 1),
(22, 'CAR2', 'Black Wave', 2, 'Black Wave is een <strong>Antwerps hiphopduo</strong> dat met jazzmuzikanten op het podium staat. Willem Ardui voert voornamelijk het woord als producer, en Jean Atohoun rapt als Jaywalker. <strong>Mic check</strong>, de ontwapenende debuut-ep van de groep, etaleert prachtig de liefde voor de Afro-Amerikaanse muziekgeschiedenis.  Voor wie blackwave nog niet live aan het werk zag, je zal daar zo snel mogelijk verandering in willen brengen na het checken van hun ‘Caravansessions’. ', 'Op <strong>vrijdag 20 september</strong> ‘s ochtends spelen ze voor Car Free Festival <strong>aan de bushaltes</strong> in Hasselt.', 'Kolonel Dussartplein, bushaltes', 'Kolonel Dussartplein', '3500', 'Hasselt', '2018-09-20 07:30:00', '2018-09-20 08:30:00', 'https://stubru.be/carfreefestival', 1),
(23, 'CAR1', 'Milo Meskens', 2, 'Meskens werd bekend in 2015 door het programma <strong>De Nieuwe Lichting</strong> van Studio Brussel. Hier krijgen jonge, onbekende talenten de kans om zich te tonen aan het grote publiek. Begin 2016 nam hij het nummer <strong>Here with Me</strong> op, dat op 30 januari van datzelfde jaar binnenkwam in de Ultratop 50.', 'Op <strong>vrijdag 20 september</strong> ‘s ochtends kan je hem horen en zien <strong>aan de bussen</strong> van stationsplein in Sint-Niklaas!', 'Stationsplein', 'Stationsplein', '9100', 'Sint-Niklaas', '2018-09-20 07:30:00', '2018-09-20 08:30:00', 'https://stubru.be/carfreefestival', NULL),
(24, 'CAR3', 'Felix Pallas', 2, 'De groep rond <strong>Simon en Pieter-Jan Nuytten</strong> maakt <strong>alien synth pop</strong>. Met een voorliefde voor Prince en Soft Hair en schoon volk van Bazart en Warhola in de rangen is dit een band om in de gaten te houden. Ze debuteerden 2 jaar geleden met catchy singles Rakata en Curse, en brachten ons in 2017 hun eerste EP <strong>Similarities</strong> uit, die werd opgepikt door o.a. DIY Mag, NME en The Line of Best Fit.', 'Op <strong>vrijdag 20 september</strong> kan je hen horen en zien in de tram die vertrekt op de <strong>Groenplaats in Antwerpen</strong>!', 'Groenplaats, tram', 'Groenplaats', '2000', 'Antwerpen', '2018-09-21 16:30:00', '2018-09-21 17:30:00', 'https://stubru.be/carfreefestival', NULL),
(25, 'CAR4', 'Filefuif-Partybus', 2, 'Ben jij het ook beu om elke dag opnieuw de <strong>files te moeten trotseren </strong>? Helemaal alleen tergend traag naar het werk of naar school te tuffen? Wel, laat je auto thuis en rij mee met de filefuif partybus van <strong>Eva De Roo</strong> op <strong>donderdag 21 september</strong> tijdens ons Car Free Festival.\r\n\r\nJawel, Eva De Roo legt een partybus in om je op een onvergetelijke manier terug naar huis te brengen. Inclusief filefuif <strong>DJ- Omdat Het Kan Soundsystem</strong>. En dat is inclusief aperitief.', 'De bus vertrekt om <strong>17u30 aan het station Brussel-Zuid</strong> en rijdt richting <strong>Gent Sint-Pieters</strong>. Wil je meedoen? schrijf je dan in via deze link: https://stubru.be/music/laatjeautothuisenrijmeemetdefilefuifpartybusvaneva', 'Station Brussel-Zuid', 'Avenue Fonsny 47B', '1060', 'Brussel', '2018-09-20 17:30:00', '2018-09-20 19:30:00', 'https://stubru.be/carfreefestival', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ma3_auto_events_organisers`
--

CREATE TABLE `ma3_auto_events_organisers` (
  `event_id` int(11) NOT NULL,
  `organiser_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ma3_auto_events_organisers`
--

INSERT INTO `ma3_auto_events_organisers` (`event_id`, `organiser_id`) VALUES
(1, 1),
(5, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(2, 6),
(3, 7),
(4, 7),
(6, 8),
(8, 8),
(6, 9),
(7, 10),
(7, 11),
(7, 12),
(7, 13),
(8, 14),
(8, 15),
(9, 16),
(10, 16),
(9, 17),
(9, 18),
(9, 19),
(10, 20),
(11, 21),
(12, 22),
(13, 22),
(14, 22),
(15, 22),
(16, 22),
(17, 22),
(18, 22),
(15, 23),
(18, 23),
(16, 24),
(17, 25),
(19, 26),
(20, 26),
(19, 27),
(21, 28);

-- --------------------------------------------------------

--
-- Table structure for table `ma3_auto_events_tags`
--

CREATE TABLE `ma3_auto_events_tags` (
  `event_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ma3_auto_events_tags`
--

INSERT INTO `ma3_auto_events_tags` (`event_id`, `tag_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(5, 1),
(7, 1),
(9, 1),
(10, 1),
(21, 1),
(1, 2),
(3, 2),
(6, 2),
(7, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(18, 2),
(21, 2),
(1, 3),
(3, 3),
(7, 3),
(9, 3),
(21, 3),
(1, 4),
(7, 4),
(9, 4),
(14, 4),
(15, 4),
(18, 4),
(21, 4),
(1, 5),
(3, 5),
(7, 5),
(9, 5),
(12, 5),
(15, 5),
(18, 5),
(21, 5),
(1, 6),
(4, 6),
(5, 6),
(6, 6),
(7, 6),
(8, 6),
(9, 6),
(10, 6),
(11, 6),
(12, 6),
(13, 6),
(14, 6),
(15, 6),
(16, 6),
(17, 6),
(18, 6),
(19, 6),
(20, 6),
(21, 6),
(1, 7),
(2, 7),
(3, 7),
(4, 7),
(6, 7),
(7, 7),
(8, 7),
(9, 7),
(21, 7),
(1, 8),
(2, 8),
(3, 8),
(4, 8),
(6, 8),
(7, 8),
(8, 8),
(9, 8),
(21, 8),
(2, 9),
(9, 9),
(13, 9),
(21, 9),
(2, 10),
(3, 10),
(9, 10),
(13, 10),
(21, 10),
(3, 11),
(13, 11),
(22, 11),
(23, 11),
(24, 11),
(25, 11),
(4, 12),
(4, 13),
(18, 13),
(4, 14),
(9, 14),
(13, 14),
(14, 14),
(21, 14),
(22, 14),
(23, 14),
(24, 14),
(25, 14),
(4, 15),
(5, 15),
(6, 15),
(7, 15),
(8, 15),
(9, 15),
(10, 15),
(11, 15),
(12, 15),
(13, 15),
(14, 15),
(15, 15),
(16, 15),
(17, 15),
(18, 15),
(19, 15),
(20, 15),
(21, 15),
(4, 16),
(18, 16),
(5, 17),
(6, 17),
(9, 17),
(10, 17),
(17, 17),
(20, 17),
(21, 17),
(5, 18),
(6, 18),
(7, 18),
(8, 18),
(9, 18),
(10, 18),
(11, 18),
(12, 18),
(17, 18),
(19, 18),
(20, 18),
(21, 18),
(6, 19),
(8, 19),
(6, 20),
(8, 20),
(8, 21),
(9, 22),
(10, 22),
(17, 22),
(19, 22),
(20, 22),
(21, 22),
(22, 22),
(23, 22),
(24, 22),
(25, 22),
(10, 23),
(17, 23),
(11, 24),
(15, 24),
(16, 24),
(19, 25);

-- --------------------------------------------------------

--
-- Table structure for table `ma3_auto_organisers`
--

CREATE TABLE `ma3_auto_organisers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ma3_auto_organisers`
--

INSERT INTO `ma3_auto_organisers` (`id`, `name`) VALUES
(1, 'stad antwerpen'),
(2, 'ecomobiel'),
(3, 'fiets!'),
(4, 'velo antwerpen'),
(5, 'onak'),
(6, 'autodelen.net'),
(7, 'slim naar antwerpen'),
(8, 'eva vzw'),
(9, 'museum voor schone kunsten'),
(10, 'stad kortrijk'),
(11, 'mobiel vzw'),
(12, 'parko'),
(13, 'vzw de ponyhoeve'),
(14, 'boxy broers'),
(15, 'trio trottoir'),
(16, 'stad sint-niklaas'),
(17, 'cambio'),
(18, 'miwa'),
(19, 'de lijn'),
(20, 'openbare bibliotheek sint-niklaas'),
(21, 'mobilmix'),
(22, 'brussel mobiliteit'),
(23, 'pro velo'),
(24, 'beau vélo de ravel'),
(25, 'ten noey vzw'),
(26, 'stad brugge'),
(27, 'concertgebouw circuit'),
(28, 'stad ieper'),
(29, 'studio brussel');

-- --------------------------------------------------------

--
-- Table structure for table `ma3_auto_tags`
--

CREATE TABLE `ma3_auto_tags` (
  `id` int(11) NOT NULL,
  `tag` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ma3_auto_tags`
--

INSERT INTO `ma3_auto_tags` (`id`, `tag`) VALUES
(1, 'markt'),
(2, 'fiets'),
(3, 'bakfiets'),
(4, 'deelfietsen'),
(5, 'e-bike'),
(6, 'kids'),
(7, 'duurzaam'),
(8, 'eco'),
(9, 'auto'),
(10, 'autodelen'),
(11, 'pendelen'),
(12, 'wandelen'),
(13, 'route'),
(14, 'openbaar vervoer'),
(15, 'familie'),
(16, 'natuur'),
(17, 'food'),
(18, 'fun'),
(19, 'picknick'),
(20, 'veggie'),
(21, 'eten'),
(22, 'muziek'),
(23, 'zeepkistenrace'),
(24, 'routes'),
(25, 'opening');

-- --------------------------------------------------------

--
-- Table structure for table `ma3_days`
--

CREATE TABLE `ma3_days` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ma3_days`
--

INSERT INTO `ma3_days` (`id`, `name`, `start`, `end`) VALUES
(1, 'Autovrije Zondag', '2018-09-16', '2018-09-16'),
(2, 'Car Free Festival', '2018-09-16', '2018-09-22'),
(4, 'Strapdag', '2018-09-21', '2018-09-21'),
(5, 'Varia', '2018-09-09', '2018-09-24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ma3_auto_events`
--
ALTER TABLE `ma3_auto_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ma3_auto_events_organisers`
--
ALTER TABLE `ma3_auto_events_organisers`
  ADD PRIMARY KEY (`event_id`,`organiser_id`),
  ADD KEY `organiser_id` (`organiser_id`);

--
-- Indexes for table `ma3_auto_events_tags`
--
ALTER TABLE `ma3_auto_events_tags`
  ADD PRIMARY KEY (`event_id`,`tag_id`) USING BTREE,
  ADD KEY `tag_id` (`tag_id`);

--
-- Indexes for table `ma3_auto_organisers`
--
ALTER TABLE `ma3_auto_organisers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ma3_auto_tags`
--
ALTER TABLE `ma3_auto_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ma3_days`
--
ALTER TABLE `ma3_days`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ma3_auto_events`
--
ALTER TABLE `ma3_auto_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `ma3_auto_organisers`
--
ALTER TABLE `ma3_auto_organisers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `ma3_auto_tags`
--
ALTER TABLE `ma3_auto_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `ma3_days`
--
ALTER TABLE `ma3_days`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `ma3_auto_events_organisers`
--
ALTER TABLE `ma3_auto_events_organisers`
  ADD CONSTRAINT `ma3_auto_events_organisers_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `ma3_auto_events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ma3_auto_events_organisers_ibfk_2` FOREIGN KEY (`organiser_id`) REFERENCES `ma3_auto_organisers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ma3_auto_events_tags`
--
ALTER TABLE `ma3_auto_events_tags`
  ADD CONSTRAINT `ma3_auto_events_tags_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `ma3_auto_events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ma3_auto_events_tags_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `ma3_auto_tags` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
