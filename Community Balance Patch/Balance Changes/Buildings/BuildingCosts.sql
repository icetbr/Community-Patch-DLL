-- ANCIENT

UPDATE Buildings SET Cost = '65' WHERE Type = 'BUILDING_GRANARY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '65' WHERE Type = 'BUILDING_YURT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '65' WHERE Type = 'BUILDING_MONUMENT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '65' WHERE Type = 'BUILDING_MAYA_PYRAMID' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '65' WHERE Type = 'BUILDING_SHRINE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '65' WHERE Type = 'BUILDING_STELE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '65' WHERE Type = 'BUILDING_WELL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '65' WHERE Type = 'BUILDING_GROVE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings SET Cost = '110' WHERE Type = 'BUILDING_HERBALIST' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '110' WHERE Type = 'BUILDING_BARRACKS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '110' WHERE Type = 'BUILDING_IKANDA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '110' WHERE Type = 'BUILDING_BAZAAR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '110' WHERE Type = 'BUILDING_MARKET' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '110' WHERE Type = 'BUILDING_STONE_WORKS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '110' WHERE Type = 'BUILDING_LONGHOUSE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '110' WHERE Type = 'BUILDING_MUD_PYRAMID_MOSQUE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '110' WHERE Type = 'BUILDING_WALLS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '110' WHERE Type = 'BUILDING_WALLS_OF_BABYLON' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );


UPDATE Buildings SET GoldMaintenance = '0' WHERE Type = 'BUILDING_SHRINE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '0' WHERE Type = 'BUILDING_MAYA_PYRAMID' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '0' WHERE Type = 'BUILDING_GROVE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '1' WHERE Type = 'BUILDING_BARRACKS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '1' WHERE Type = 'BUILDING_IKANDA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '1' WHERE Type = 'BUILDING_GRANARY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '1' WHERE Type = 'BUILDING_YURT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '1' WHERE Type = 'BUILDING_MONUMENT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '1' WHERE Type = 'BUILDING_STELE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '1' WHERE Type = 'BUILDING_STONE_WORKS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '1' WHERE Type = 'BUILDING_LONGHOUSE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '1' WHERE Type = 'BUILDING_MUD_PYRAMID_MOSQUE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '1' WHERE Type = 'BUILDING_WALLS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '1' WHERE Type = 'BUILDING_WALLS_OF_BABYLON' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '1' WHERE Type = 'BUILDING_WELL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '1' WHERE Type = 'BUILDING_HERBALIST' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- CLASSICAL
UPDATE Buildings SET Cost = '150' WHERE Type = 'BUILDING_FLOATING_GARDENS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '150' WHERE Type = 'BUILDING_COLOSSEUM' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );
UPDATE Buildings SET Cost = '150' WHERE Type = 'BUILDING_FLAVIAN_COLOSSEUM' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );
UPDATE Buildings SET Cost = '150' WHERE Type = 'BUILDING_FORGE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '150' WHERE Type = 'BUILDING_SIEGE_WORKSHOP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '150' WHERE Type = 'BUILDING_LIBRARY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '150' WHERE Type = 'BUILDING_PAPER_MAKER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '150' WHERE Type = 'BUILDING_LIGHTHOUSE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '150' WHERE Type = 'BUILDING_JELLING_STONES' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '150' WHERE Type = 'BUILDING_ROYAL_LIBRARY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '150' WHERE Type = 'BUILDING_WATERMILL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings SET Cost = '200' WHERE Type = 'BUILDING_AMPHITHEATER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '200' WHERE Type = 'BUILDING_ODEON' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '200' WHERE Type = 'BUILDING_WRITERS_GUILD' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '200' WHERE Type = 'BUILDING_AQUEDUCT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '200' WHERE Type = 'BUILDING_INDUS_CANAL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '200' WHERE Type = 'BUILDING_BURIAL_TOMB' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '200' WHERE Type = 'BUILDING_CARAVANSARY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '200' WHERE Type = 'BUILDING_COURTHOUSE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '200' WHERE Type = 'BUILDING_SATRAPS_COURT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '200' WHERE Type = 'BUILDING_TEMPLE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '200' WHERE Type = 'BUILDING_BASILICA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '200' WHERE Type = 'BUILDING_BATH' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );


UPDATE Buildings SET GoldMaintenance = '0' WHERE Type = 'BUILDING_CARAVANSARY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '0' WHERE Type = 'BUILDING_BURIAL_TOMB' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '1' WHERE Type = 'BUILDING_AMPHITHEATER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '1' WHERE Type = 'BUILDING_ODEON' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '1' WHERE Type = 'BUILDING_AQUEDUCT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '1' WHERE Type = 'BUILDING_INDUS_CANAL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '1' WHERE Type = 'BUILDING_COLOSSEUM' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '1' WHERE Type = 'BUILDING_FLAVIAN_COLOSSEUM' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings SET GoldMaintenance = '3' WHERE Type = 'BUILDING_COURTHOUSE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '2' WHERE Type = 'BUILDING_SATRAPS_COURT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '1' WHERE Type = 'BUILDING_FLOATING_GARDENS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '1' WHERE Type = 'BUILDING_FORGE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '1' WHERE Type = 'BUILDING_SIEGE_WORKSHOP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '1' WHERE Type = 'BUILDING_LIBRARY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '1' WHERE Type = 'BUILDING_PAPER_MAKER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '1' WHERE Type = 'BUILDING_LIGHTHOUSE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '1' WHERE Type = 'BUILDING_JELLING_STONES' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '1' WHERE Type = 'BUILDING_ROYAL_LIBRARY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '1' WHERE Type = 'BUILDING_TEMPLE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '1' WHERE Type = 'BUILDING_BASILICA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '1' WHERE Type = 'BUILDING_BATH' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '1' WHERE Type = 'BUILDING_WATERMILL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '1' WHERE Type = 'BUILDING_WRITERS_GUILD' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
-- MEDIEVAL
UPDATE Buildings SET Cost = '275' WHERE Type = 'BUILDING_MISSION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings SET Cost = '300' WHERE Type = 'BUILDING_ARMORY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '300' WHERE Type = 'BUILDING_DOJO' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '300' WHERE Type = 'BUILDING_CANDI' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '300' WHERE Type = 'BUILDING_CASTLE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '300' WHERE Type = 'BUILDING_STABLE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '300' WHERE Type = 'BUILDING_DUCAL_STABLE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '300' WHERE Type = 'BUILDING_CEILIDH_HALL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_LEADERS' AND Value= 1 );
UPDATE Buildings SET Cost = '300' WHERE Type = 'BUILDING_CIRCUS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '300' WHERE Type = 'BUILDING_GARDEN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '300' WHERE Type = 'BUILDING_UNIVERSITY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '300' WHERE Type = 'BUILDING_SEOWON' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings SET Cost = '350' WHERE Type = 'BUILDING_WAT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '350' WHERE Type = 'BUILDING_HARBOR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '350' WHERE Type = 'BUILDING_MINT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '350' WHERE Type = 'BUILDING_HANSE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '350' WHERE Type = 'BUILDING_WORKSHOP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '350' WHERE Type = 'BUILDING_ARTISTS_GUILD' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings SET GoldMaintenance = '0' WHERE Type = 'BUILDING_MINT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '0' WHERE Type = 'BUILDING_HANSE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings SET GoldMaintenance = '2' WHERE Type = 'BUILDING_ARMORY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '2' WHERE Type = 'BUILDING_DOJO' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '2' WHERE Type = 'BUILDING_CANDI' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '2' WHERE Type = 'BUILDING_CASTLE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '2' WHERE Type = 'BUILDING_STABLE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '2' WHERE Type = 'BUILDING_DUCAL_STABLE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '2' WHERE Type = 'BUILDING_CEILIDH_HALL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '2' WHERE Type = 'BUILDING_CIRCUS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '2' WHERE Type = 'BUILDING_HARBOR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '2' WHERE Type = 'BUILDING_UNIVERSITY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '2' WHERE Type = 'BUILDING_SEOWON' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '2' WHERE Type = 'BUILDING_WORKSHOP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '2' WHERE Type = 'BUILDING_ARTISTS_GUILD' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '3' WHERE Type = 'BUILDING_GARDEN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '2' WHERE Type = 'BUILDING_WAT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '0' WHERE Type = 'BUILDING_MISSION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings SET FaithCost = '0' WHERE Type = 'BUILDING_CEILIDH_HALL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET FaithCost = '0' WHERE Type = 'BUILDING_WAT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings SET FaithCost = '300' WHERE Type = 'BUILDING_UNIVERSITY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- RENAISSANCE
UPDATE Buildings SET Cost = '500' WHERE Type = 'BUILDING_BANK' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '500' WHERE Type = 'BUILDING_COFFEE_HOUSE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '500' WHERE Type = 'BUILDING_CONSTABLE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '500' WHERE Type = 'BUILDING_OBSERVATORY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '500' WHERE Type = 'BUILDING_GROCER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings SET Cost = '600' WHERE Type = 'BUILDING_OPERA_HOUSE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '600' WHERE Type = 'BUILDING_WINDMILL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '600' WHERE Type = 'BUILDING_MUSICIANS_GUILD' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings SET GoldMaintenance = '3' WHERE Type = 'BUILDING_COFFEE_HOUSE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '3' WHERE Type = 'BUILDING_CONSTABLE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '3' WHERE Type = 'BUILDING_OBSERVATORY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '3' WHERE Type = 'BUILDING_OPERA_HOUSE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '3' WHERE Type = 'BUILDING_WINDMILL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '3' WHERE Type = 'BUILDING_MUSICIANS_GUILD' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '3' WHERE Type = 'BUILDING_GROCER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings SET FaithCost = '400' WHERE Type = 'BUILDING_OPERA_HOUSE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- INDUSTRIAL
UPDATE Buildings SET Cost = '800' WHERE Type = 'BUILDING_KREPOST' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '800' WHERE Type = 'BUILDING_SKOLA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings SET Cost = '1000' WHERE Type = 'BUILDING_STEAM_MILL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '1000' WHERE Type = 'BUILDING_TRAINSTATION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '1000' WHERE Type = 'BUILDING_ARSENAL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '1000' WHERE Type = 'BUILDING_HOTEL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '1000' WHERE Type = 'BUILDING_PUBLIC_SCHOOL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '1000' WHERE Type = 'BUILDING_THEATRE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings SET Cost = '1250' WHERE Type = 'BUILDING_FACTORY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '1250' WHERE Type = 'BUILDING_MILITARY_ACADEMY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '1250' WHERE Type = 'BUILDING_STOCKYARD' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '1250' WHERE Type = 'BUILDING_MUSEUM' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '1250' WHERE Type = 'BUILDING_TRAINSTATION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings SET Cost = '1500' WHERE Type = 'BUILDING_SEAPORT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings SET GoldMaintenance = '3' WHERE Type = 'BUILDING_KREPOST' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '3' WHERE Type = 'BUILDING_SKOLA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );


UPDATE Buildings SET GoldMaintenance = '4' WHERE Type = 'BUILDING_HOTEL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '4' WHERE Type = 'BUILDING_MILITARY_ACADEMY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '4' WHERE Type = 'BUILDING_MUSEUM' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '4' WHERE Type = 'BUILDING_PUBLIC_SCHOOL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '4' WHERE Type = 'BUILDING_THEATRE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '4' WHERE Type = 'BUILDING_ARSENAL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '4' WHERE Type = 'BUILDING_STEAM_MILL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings SET GoldMaintenance = '5' WHERE Type = 'BUILDING_STOCKYARD' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '5' WHERE Type = 'BUILDING_FACTORY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '5' WHERE Type = 'BUILDING_TRAINSTATION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings SET GoldMaintenance = '6' WHERE Type = 'BUILDING_SEAPORT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings SET FaithCost = '500' WHERE Type = 'BUILDING_MUSEUM' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET FaithCost = '500' WHERE Type = 'BUILDING_PUBLIC_SCHOOL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- MODERN

UPDATE Buildings SET Cost = '1600' WHERE Type = 'BUILDING_MINEFIELD' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings SET Cost = '1800' WHERE Type = 'BUILDING_HOSPITAL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '1800' WHERE Type = 'BUILDING_COAL_PLANT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '1800' WHERE Type = 'BUILDING_STOCK_EXCHANGE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings SET Cost = '2000' WHERE Type = 'BUILDING_LABORATORY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '2000' WHERE Type = 'BUILDING_BROADCAST_TOWER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings SET GoldMaintenance = '3' WHERE Type = 'BUILDING_STOCK_EXCHANGE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings SET GoldMaintenance = '5' WHERE Type = 'BUILDING_MINEFIELD' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '5' WHERE Type = 'BUILDING_HOSPITAL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings SET GoldMaintenance = '6' WHERE Type = 'BUILDING_BROADCAST_TOWER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '6' WHERE Type = 'BUILDING_COAL_PLANT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings SET GoldMaintenance = '6' WHERE Type = 'BUILDING_LABORATORY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings SET FaithCost = '600' WHERE Type = 'BUILDING_BROADCAST_TOWER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET FaithCost = '600' WHERE Type = 'BUILDING_LABORATORY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- ATOMIC

UPDATE Buildings SET Cost = '2500' WHERE Type = 'BUILDING_MEDICAL_LAB' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '2500' WHERE Type = 'BUILDING_NUCLEAR_PLANT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '2500' WHERE Type = 'BUILDING_MILITARY_BASE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '2500' WHERE Type = 'BUILDING_POLICE_STATION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '2500' WHERE Type = 'BUILDING_HYDRO_PLANT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '2500' WHERE Type = 'BUILDING_STADIUM' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '2500' WHERE Type = 'BUILDING_WIND_PLANT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings SET Cost = '2750' WHERE Type = 'BUILDING_AIRPORT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings SET GoldMaintenance = '8' WHERE Type = 'BUILDING_MEDICAL_LAB' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '8' WHERE Type = 'BUILDING_NUCLEAR_PLANT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '8' WHERE Type = 'BUILDING_MILITARY_BASE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '8' WHERE Type = 'BUILDING_POLICE_STATION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '8' WHERE Type = 'BUILDING_HYDRO_PLANT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '8' WHERE Type = 'BUILDING_STADIUM' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '8' WHERE Type = 'BUILDING_WIND_PLANT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings SET GoldMaintenance = '10' WHERE Type = 'BUILDING_AIRPORT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

-- INFORMATION

UPDATE Buildings SET Cost = '3000' WHERE Type = 'BUILDING_BOMB_SHELTER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '3000' WHERE Type = 'BUILDING_RECYCLING_CENTER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET Cost = '3000' WHERE Type = 'BUILDING_SOLAR_PLANT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings SET Cost = '4000' WHERE Type = 'BUILDING_SPACESHIP_FACTORY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );

UPDATE Buildings SET GoldMaintenance = '10' WHERE Type = 'BUILDING_BOMB_SHELTER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '10' WHERE Type = 'BUILDING_RECYCLING_CENTER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '10' WHERE Type = 'BUILDING_SOLAR_PLANT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );
UPDATE Buildings SET GoldMaintenance = '10' WHERE Type = 'BUILDING_SPACESHIP_FACTORY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_BUILDINGS' AND Value= 1 );



