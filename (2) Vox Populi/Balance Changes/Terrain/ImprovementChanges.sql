-- Yield Data

INSERT INTO Improvement_YieldAdjacentTwoSameType
	(ImprovementType, YieldType, Yield)
VALUES
	('IMPROVEMENT_FARM', 'YIELD_FOOD', 1),
	('IMPROVEMENT_LUMBERMILL', 'YIELD_GOLD', 1),
	('IMPROVEMENT_LUMBERMILL', 'YIELD_PRODUCTION', 1);

-- Delete things we replace below.
DELETE FROM Improvement_ResourceType_Yields; 

INSERT INTO Improvement_ResourceType_Yields
	(ImprovementType, ResourceType, YieldType, Yield)
VALUES
	('IMPROVEMENT_MINE', 'RESOURCE_COAL', 'YIELD_PRODUCTION', 1),
	('IMPROVEMENT_MINE', 'RESOURCE_ALUMINUM', 'YIELD_PRODUCTION', 1),
	('IMPROVEMENT_CAMP', 'RESOURCE_FUR', 'YIELD_GOLD', 1),
	('IMPROVEMENT_WELL', 'RESOURCE_OIL', 'YIELD_PRODUCTION', 5),
	('IMPROVEMENT_OFFSHORE_PLATFORM', 'RESOURCE_OIL', 'YIELD_PRODUCTION', 3),
	('IMPROVEMENT_PLANTATION', 'RESOURCE_CLOVES', 'YIELD_FAITH', 1),
	('IMPROVEMENT_PLANTATION', 'RESOURCE_CLOVES', 'YIELD_GOLD', 1),
	('IMPROVEMENT_PLANTATION', 'RESOURCE_NUTMEG', 'YIELD_CULTURE', 1),
	('IMPROVEMENT_PLANTATION', 'RESOURCE_NUTMEG', 'YIELD_GOLD', 1),
	('IMPROVEMENT_PLANTATION', 'RESOURCE_PEPPER', 'YIELD_GOLD', 1),
	('IMPROVEMENT_PLANTATION', 'RESOURCE_PEPPER', 'YIELD_FAITH', 1),
	('IMPROVEMENT_QUARRY', 'RESOURCE_URANIUM', 'YIELD_SCIENCE', 1),
	('IMPROVEMENT_MINE', 'RESOURCE_IRON', 'YIELD_SCIENCE', 1),
	('IMPROVEMENT_QUARRY', 'RESOURCE_STONE', 'YIELD_PRODUCTION', 2),
	('IMPROVEMENT_FISHING_BOATS', 'RESOURCE_FISH', 'YIELD_PRODUCTION', 1),
	('IMPROVEMENT_FISHING_BOATS', 'RESOURCE_FISH', 'YIELD_GOLD', 1),
	('IMPROVEMENT_PLANTATION', 'RESOURCE_BANANA', 'YIELD_FOOD', 3),
	('IMPROVEMENT_PLANTATION', 'RESOURCE_BANANA', 'YIELD_GOLD', 1),
	('IMPROVEMENT_CAMP', 'RESOURCE_BISON', 'YIELD_FOOD', 1),
	('IMPROVEMENT_CAMP', 'RESOURCE_BISON', 'YIELD_GOLD', 1),
	('IMPROVEMENT_CAMP', 'RESOURCE_DEER', 'YIELD_FOOD', 1),
	('IMPROVEMENT_CAMP', 'RESOURCE_FUR', 'YIELD_CULTURE', 1),
	('IMPROVEMENT_PASTURE', 'RESOURCE_COW', 'YIELD_FOOD', 1),
	('IMPROVEMENT_PASTURE', 'RESOURCE_COW', 'YIELD_PRODUCTION', 1),
	('IMPROVEMENT_PASTURE', 'RESOURCE_HORSE', 'YIELD_PRODUCTION', 2),
	('IMPROVEMENT_PASTURE', 'RESOURCE_SHEEP', 'YIELD_FOOD', 1),
	('IMPROVEMENT_PASTURE', 'RESOURCE_SHEEP', 'YIELD_GOLD', 2),
	('IMPROVEMENT_MINE', 'RESOURCE_SALT', 'YIELD_FOOD', 1),
	('IMPROVEMENT_CAMP', 'RESOURCE_TRUFFLES', 'YIELD_FOOD', 1),
	('IMPROVEMENT_CAMP', 'RESOURCE_TRUFFLES', 'YIELD_GOLD', 1),
	('IMPROVEMENT_PLANTATION', 'RESOURCE_CITRUS', 'YIELD_FOOD', 1),
	('IMPROVEMENT_PLANTATION', 'RESOURCE_CITRUS', 'YIELD_GOLD', 1),
	('IMPROVEMENT_PLANTATION', 'RESOURCE_COCOA', 'YIELD_GOLD', 2),
	('IMPROVEMENT_MINE', 'RESOURCE_COPPER', 'YIELD_GOLD', 1),
	('IMPROVEMENT_PLANTATION', 'RESOURCE_COTTON', 'YIELD_GOLD', 2),
	('IMPROVEMENT_PLANTATION', 'RESOURCE_COTTON', 'YIELD_CULTURE', 1),
	('IMPROVEMENT_PLANTATION', 'RESOURCE_DYE', 'YIELD_GOLD', 1),
	('IMPROVEMENT_PLANTATION', 'RESOURCE_DYE', 'YIELD_CULTURE', 2),
	('IMPROVEMENT_MINE', 'RESOURCE_GEMS', 'YIELD_GOLD', 1),
	('IMPROVEMENT_MINE', 'RESOURCE_GEMS', 'YIELD_PRODUCTION', 1),
	('IMPROVEMENT_MINE', 'RESOURCE_GOLD', 'YIELD_CULTURE', 1),
	('IMPROVEMENT_PLANTATION', 'RESOURCE_INCENSE', 'YIELD_FAITH', 1),
	('IMPROVEMENT_PLANTATION', 'RESOURCE_INCENSE', 'YIELD_CULTURE', 1),
	('IMPROVEMENT_CAMP', 'RESOURCE_IVORY', 'YIELD_PRODUCTION', 1),
	('IMPROVEMENT_CAMP', 'RESOURCE_IVORY', 'YIELD_GOLD', 1),
	('IMPROVEMENT_QUARRY', 'RESOURCE_MARBLE', 'YIELD_PRODUCTION', 2),
	('IMPROVEMENT_FISHING_BOATS', 'RESOURCE_PEARLS', 'YIELD_PRODUCTION', 1),
	('IMPROVEMENT_FISHING_BOATS', 'RESOURCE_PEARLS', 'YIELD_CULTURE', 1),
	('IMPROVEMENT_FISHING_BOATS', 'RESOURCE_CRAB', 'YIELD_PRODUCTION', 2),
	('IMPROVEMENT_FISHING_BOATS', 'RESOURCE_CRAB', 'YIELD_FOOD', 1),
	('IMPROVEMENT_FISHING_BOATS', 'RESOURCE_WHALE', 'YIELD_PRODUCTION', 1),
	('IMPROVEMENT_FISHING_BOATS', 'RESOURCE_WHALE', 'YIELD_SCIENCE', 1),
	('IMPROVEMENT_PLANTATION', 'RESOURCE_SILK', 'YIELD_GOLD', 3),
	('IMPROVEMENT_MINE', 'RESOURCE_SILVER', 'YIELD_GOLD', 2),
	('IMPROVEMENT_PLANTATION', 'RESOURCE_SPICES', 'YIELD_FOOD', 1),
	('IMPROVEMENT_PLANTATION', 'RESOURCE_SPICES', 'YIELD_GOLD', 1),
	('IMPROVEMENT_PLANTATION', 'RESOURCE_SUGAR', 'YIELD_FOOD', 2),
	('IMPROVEMENT_PLANTATION', 'RESOURCE_WINE', 'YIELD_CULTURE', 1),
	('IMPROVEMENT_PLANTATION', 'RESOURCE_WINE', 'YIELD_GOLD', 1);

DELETE FROM Improvement_ValidTerrains WHERE ImprovementType= 'IMPROVEMENT_FARM' AND TerrainType= 'TERRAIN_DESERT';

INSERT INTO Improvement_ValidFeatures
	(ImprovementType, FeatureType)
VALUES
	('IMPROVEMENT_FISHING_BOATS', 'FEATURE_ATOLL'),
	('IMPROVEMENT_FISHING_BOATS', 'FEATURE_REEF'),
	('IMPROVEMENT_FISHING_BOATS', 'FEATURE_ICE'),
	('IMPROVEMENT_LUMBERMILL', 'FEATURE_JUNGLE');

INSERT INTO Improvement_Yields
	(ImprovementType, YieldType, Yield)
VALUES
	('IMPROVEMENT_HOLY_SITE', 'YIELD_CULTURE', 5),
	('IMPROVEMENT_HOLY_SITE', 'YIELD_TOURISM', 3),
	('IMPROVEMENT_TRADING_POST', 'YIELD_CULTURE', 1),
	('IMPROVEMENT_CHATEAU', 'YIELD_FOOD', 3),
	('IMPROVEMENT_FEITORIA', 'YIELD_PRODUCTION', 3),
	('IMPROVEMENT_FEITORIA', 'YIELD_GOLD', 4),
	('IMPROVEMENT_CITADEL', 'YIELD_PRODUCTION', 1),
	('IMPROVEMENT_CITADEL', 'YIELD_SCIENCE', 1),
	('IMPROVEMENT_WELL', 'YIELD_GOLD', 7),
	('IMPROVEMENT_LANDMARK', 'YIELD_CULTURE', 3),
	('IMPROVEMENT_LANDMARK', 'YIELD_GOLD', 3),
	('IMPROVEMENT_FORT', 'YIELD_CULTURE_LOCAL', 1),
	('IMPROVEMENT_OFFSHORE_PLATFORM', 'YIELD_GOLD', 4);

INSERT INTO Improvement_YieldPerEra
	(ImprovementType, YieldType, Yield)
VALUES
	('IMPROVEMENT_LANDMARK', 'YIELD_GOLD', 1);


INSERT INTO Improvement_FreshWaterYields
	(ImprovementType, YieldType, Yield)
VALUES
	('IMPROVEMENT_FARM', 'YIELD_FOOD', 1);

DELETE FROM Improvement_TechYieldChanges;

DELETE FROM Improvement_TechFreshWaterYieldChanges;
DELETE FROM Improvement_TechNoFreshWaterYieldChanges;

INSERT INTO Improvement_TechYieldChanges
	(ImprovementType, TechType, YieldType, Yield)
VALUES
	('IMPROVEMENT_FARM', 'TECH_CIVIL_SERVICE', 'YIELD_FOOD', 1),
	('IMPROVEMENT_FARM', 'TECH_FERTILIZER', 'YIELD_FOOD', 1),
	('IMPROVEMENT_FARM', 'TECH_ROBOTICS', 'YIELD_FOOD', 3),
	('IMPROVEMENT_CAMP', 'TECH_GUILDS', 'YIELD_GOLD', 1),
	('IMPROVEMENT_CAMP', 'TECH_RIFLING', 'YIELD_GOLD', 1),
	('IMPROVEMENT_CAMP', 'TECH_GUNPOWDER', 'YIELD_GOLD', 1),
	('IMPROVEMENT_MINE', 'TECH_STEEL', 'YIELD_PRODUCTION', 1),
	('IMPROVEMENT_MINE', 'TECH_STEAM_POWER', 'YIELD_PRODUCTION', 2),
	('IMPROVEMENT_MINE', 'TECH_COMBUSTION', 'YIELD_PRODUCTION', 1),
	('IMPROVEMENT_MINE', 'TECH_ROBOTICS', 'YIELD_PRODUCTION', 3),
	('IMPROVEMENT_QUARRY', 'TECH_STEAM_POWER', 'YIELD_PRODUCTION', 1),
	('IMPROVEMENT_QUARRY', 'TECH_MACHINERY', 'YIELD_PRODUCTION', 1),
	('IMPROVEMENT_QUARRY', 'TECH_DYNAMITE', 'YIELD_PRODUCTION', 2),
	('IMPROVEMENT_PASTURE', 'TECH_CIVIL_SERVICE', 'YIELD_FOOD', 2),
	('IMPROVEMENT_PASTURE', 'TECH_FERTILIZER', 'YIELD_GOLD', 2),
	('IMPROVEMENT_PASTURE', 'TECH_ROBOTICS', 'YIELD_FOOD', 3),
	('IMPROVEMENT_PLANTATION', 'TECH_CHEMISTRY', 'YIELD_GOLD', 1),
	('IMPROVEMENT_PLANTATION', 'TECH_PLASTIC', 'YIELD_GOLD', 1),
	('IMPROVEMENT_PLANTATION', 'TECH_ECONOMICS', 'YIELD_GOLD', 1),
	('IMPROVEMENT_FISHING_BOATS', 'TECH_COMPASS', 'YIELD_FOOD', 1),
	('IMPROVEMENT_FISHING_BOATS', 'TECH_NAVIGATION', 'YIELD_FOOD', 1),
	('IMPROVEMENT_FISHING_BOATS', 'TECH_REFRIGERATION', 'YIELD_FOOD', 2),
	('IMPROVEMENT_LUMBERMILL', 'TECH_METALLURGY', 'YIELD_GOLD', 1),
	('IMPROVEMENT_LUMBERMILL', 'TECH_METALLURGY', 'YIELD_PRODUCTION', 1),
	('IMPROVEMENT_LUMBERMILL', 'TECH_COMBUSTION', 'YIELD_GOLD', 1),
	('IMPROVEMENT_LUMBERMILL', 'TECH_COMBUSTION', 'YIELD_PRODUCTION', 1),
	('IMPROVEMENT_WELL', 'TECH_PLASTIC', 'YIELD_PRODUCTION', 2),
	('IMPROVEMENT_WELL', 'TECH_ELECTRONICS', 'YIELD_PRODUCTION', 2),
	('IMPROVEMENT_MOAI', 'TECH_ENGINEERING', 'YIELD_PRODUCTION', 1),
	('IMPROVEMENT_MOAI', 'TECH_ARCHITECTURE', 'YIELD_CULTURE', 1),
	('IMPROVEMENT_MOAI', 'TECH_ASTRONOMY', 'YIELD_CULTURE', 1),
	('IMPROVEMENT_MOAI', 'TECH_ARCHITECTURE', 'YIELD_CULTURE_LOCAL', -1),
	('IMPROVEMENT_MOAI', 'TECH_ASTRONOMY', 'YIELD_CULTURE_LOCAL', -1),
	('IMPROVEMENT_MOAI', 'TECH_FLIGHT', 'YIELD_GOLD', 1),
	('IMPROVEMENT_EKI', 'TECH_CHIVALRY', 'YIELD_FOOD', 1),
	('IMPROVEMENT_EKI', 'TECH_ECONOMICS', 'YIELD_GOLD', 1),
	('IMPROVEMENT_EKI', 'TECH_FERTILIZER', 'YIELD_FOOD', 1),
	('IMPROVEMENT_EKI', 'TECH_CHIVALRY', 'YIELD_PRODUCTION', 1),
	('IMPROVEMENT_EKI', 'TECH_ROBOTICS', 'YIELD_PRODUCTION', 3),
	('IMPROVEMENT_KUNA', 'TECH_MATHEMATICS', 'YIELD_SCIENCE', 2),
	('IMPROVEMENT_KUNA', 'TECH_ASTRONOMY', 'YIELD_SCIENCE', 2),
	('IMPROVEMENT_KUNA', 'TECH_FLIGHT', 'YIELD_CULTURE', 2),
	('IMPROVEMENT_KUNA', 'TECH_ARCHAEOLOGY', 'YIELD_SCIENCE', 2),
	('IMPROVEMENT_KASBAH', 'TECH_ARCHITECTURE', 'YIELD_CULTURE', 1),
	('IMPROVEMENT_KASBAH', 'TECH_ARCHITECTURE', 'YIELD_GOLD', 1),
	('IMPROVEMENT_KASBAH', 'TECH_RADIO', 'YIELD_CULTURE', 1),
	('IMPROVEMENT_ENCAMPMENT_SHOSHONE', 'TECH_DRAMA', 'YIELD_PRODUCTION', 1),
	('IMPROVEMENT_ENCAMPMENT_SHOSHONE', 'TECH_GUNPOWDER', 'YIELD_CULTURE', 1),
	('IMPROVEMENT_ENCAMPMENT_SHOSHONE', 'TECH_GUNPOWDER', 'YIELD_FOOD', 1),
	('IMPROVEMENT_ENCAMPMENT_SHOSHONE', 'TECH_RIFLING', 'YIELD_PRODUCTION', 1),
	('IMPROVEMENT_ENCAMPMENT_SHOSHONE', 'TECH_RIFLING', 'YIELD_SCIENCE', 1),
	('IMPROVEMENT_ENCAMPMENT_SHOSHONE', 'TECH_ADVANCED_BALLISTICS', 'YIELD_SCIENCE', 1),
	('IMPROVEMENT_ENCAMPMENT_SHOSHONE', 'TECH_ADVANCED_BALLISTICS', 'YIELD_FOOD', 1),
	('IMPROVEMENT_POLDER', 'TECH_ECONOMICS', 'YIELD_PRODUCTION', 1),
	('IMPROVEMENT_POLDER', 'TECH_ECONOMICS', 'YIELD_GOLD', 2),
	('IMPROVEMENT_POLDER', 'TECH_CHEMISTRY', 'YIELD_CULTURE', 1),
	('IMPROVEMENT_POLDER_WATER', 'TECH_ECONOMICS', 'YIELD_PRODUCTION', 1),
	('IMPROVEMENT_POLDER_WATER', 'TECH_ECONOMICS', 'YIELD_GOLD', 2),
	('IMPROVEMENT_POLDER_WATER', 'TECH_CHEMISTRY', 'YIELD_CULTURE', 1),
	('IMPROVEMENT_TERRACE_FARM', 'TECH_CIVIL_SERVICE', 'YIELD_FOOD', 1),
	('IMPROVEMENT_TERRACE_FARM', 'TECH_FERTILIZER', 'YIELD_FOOD', 1),
	('IMPROVEMENT_TERRACE_FARM', 'TECH_ROBOTICS', 'YIELD_FOOD', 3),
	('IMPROVEMENT_FEITORIA', 'TECH_ASTRONOMY', 'YIELD_GOLD', 2),
	('IMPROVEMENT_FEITORIA', 'TECH_PRINTING_PRESS', 'YIELD_SCIENCE', 2),
	('IMPROVEMENT_FEITORIA', 'TECH_INDUSTRIALIZATION', 'YIELD_PRODUCTION', 2),
	('IMPROVEMENT_CHATEAU', 'TECH_FLIGHT', 'YIELD_GOLD', 2),
	('IMPROVEMENT_CHATEAU', 'TECH_FLIGHT', 'YIELD_CULTURE', 2),
	('IMPROVEMENT_CHATEAU', 'TECH_PRINTING_PRESS', 'YIELD_CULTURE', 1),
	('IMPROVEMENT_BRAZILWOOD_CAMP', 'TECH_PHYSICS', 'YIELD_CULTURE', 2),
	('IMPROVEMENT_BRAZILWOOD_CAMP', 'TECH_RADIO', 'YIELD_CULTURE', 2),
	('IMPROVEMENT_BRAZILWOOD_CAMP', 'TECH_ACOUSTICS', 'YIELD_CULTURE', 2),
	('IMPROVEMENT_SPAIN_HACIENDA', 'TECH_ARCHITECTURE',	'YIELD_CULTURE', 1),
	('IMPROVEMENT_SPAIN_HACIENDA', 'TECH_FERTILIZER', 'YIELD_FOOD', 1),
	('IMPROVEMENT_SPAIN_HACIENDA', 'TECH_FERTILIZER', 'YIELD_PRODUCTION', 1),
	('IMPROVEMENT_SPAIN_HACIENDA', 'TECH_FERTILIZER', 'YIELD_GOLD', 1),
	('IMPROVEMENT_SIHEYUAN', 'TECH_CIVIL_SERVICE', 'YIELD_CULTURE', 2),
	('IMPROVEMENT_SIHEYUAN', 'TECH_ARCHITECTURE', 'YIELD_PRODUCTION', 1),
	('IMPROVEMENT_SIHEYUAN', 'TECH_ARCHITECTURE', 'YIELD_SCIENCE', 1),
	('IMPROVEMENT_SIHEYUAN', 'TECH_ELECTRICITY', 'YIELD_GOLD', 1),
	('IMPROVEMENT_SIHEYUAN', 'TECH_ELECTRICITY', 'YIELD_CULTURE', 1),
	('IMPROVEMENT_MANUFACTORY', 'TECH_METAL_CASTING', 'YIELD_PRODUCTION', 3),
	('IMPROVEMENT_MANUFACTORY', 'TECH_FERTILIZER', 'YIELD_PRODUCTION', 3),
	('IMPROVEMENT_MANUFACTORY', 'TECH_COMBINED_ARMS', 'YIELD_PRODUCTION', 3),
	('IMPROVEMENT_ACADEMY', 'TECH_PHYSICS', 'YIELD_SCIENCE', 3),
	('IMPROVEMENT_ACADEMY', 'TECH_SCIENTIFIC_THEORY', 'YIELD_SCIENCE', 3),
	('IMPROVEMENT_ACADEMY', 'TECH_ROCKETRY', 'YIELD_SCIENCE', 3),
	('IMPROVEMENT_ACADEMY', 'TECH_NUCLEAR_FISSION', 'YIELD_SCIENCE', 3),
	('IMPROVEMENT_CUSTOMS_HOUSE', 'TECH_BANKING', 'YIELD_GOLD', 3),
	('IMPROVEMENT_CUSTOMS_HOUSE', 'TECH_RAILROAD', 'YIELD_FOOD', 3),
	('IMPROVEMENT_CUSTOMS_HOUSE', 'TECH_ARCHITECTURE', 'YIELD_FOOD', 3),
	('IMPROVEMENT_CUSTOMS_HOUSE', 'TECH_REFRIGERATION', 'YIELD_GOLD', 3),
	('IMPROVEMENT_FORT', 'TECH_CHEMISTRY', 'YIELD_SCIENCE', 2),
	('IMPROVEMENT_FORT', 'TECH_MILITARY_SCIENCE', 'YIELD_CULTURE_LOCAL', 2),
	('IMPROVEMENT_FORT', 'TECH_STEALTH', 'YIELD_SCIENCE', 4),
	('IMPROVEMENT_FORT', 'TECH_ELECTRONICS', 'YIELD_CULTURE_LOCAL', 4),
	('IMPROVEMENT_CITADEL', 'TECH_CHEMISTRY', 'YIELD_SCIENCE', 2),
	('IMPROVEMENT_CITADEL', 'TECH_MILITARY_SCIENCE', 'YIELD_PRODUCTION', 2),
	('IMPROVEMENT_CITADEL', 'TECH_STEALTH', 'YIELD_SCIENCE', 4),
	('IMPROVEMENT_CITADEL', 'TECH_ELECTRONICS', 'YIELD_PRODUCTION', 4),
	('IMPROVEMENT_MONGOLIA_ORDO', 'TECH_CHEMISTRY', 'YIELD_CULTURE', 2),
	('IMPROVEMENT_MONGOLIA_ORDO', 'TECH_MILITARY_SCIENCE', 'YIELD_PRODUCTION', 2),
	('IMPROVEMENT_MONGOLIA_ORDO', 'TECH_STEALTH', 'YIELD_CULTURE', 4),
	('IMPROVEMENT_MONGOLIA_ORDO', 'TECH_ELECTRONICS', 'YIELD_PRODUCTION', 4),
	('IMPROVEMENT_LANDMARK', 'TECH_SATELLITES', 'YIELD_CULTURE', 2),
	('IMPROVEMENT_HOLY_SITE', 'TECH_ACOUSTICS', 'YIELD_FAITH', 4),
	('IMPROVEMENT_HOLY_SITE', 'TECH_ARCHAEOLOGY', 'YIELD_CULTURE', 4),
	('IMPROVEMENT_HOLY_SITE', 'TECH_FLIGHT', 'YIELD_TOURISM', 4),
	('IMPROVEMENT_TRADING_POST', 'TECH_GUILDS', 'YIELD_GOLD', 1),
	('IMPROVEMENT_TRADING_POST', 'TECH_RAILROAD', 'YIELD_CULTURE', 1);

INSERT INTO Improvement_AdjacentImprovementYieldChanges
	(ImprovementType, OtherImprovementType, YieldType, Yield)
VALUES
	('IMPROVEMENT_KASBAH', 'IMPROVEMENT_FISHING_BOATS', 'YIELD_GOLD', 2);

INSERT INTO Improvement_AdjacentTerrainYieldChanges
	(ImprovementType, TerrainType, YieldType, Yield)
VALUES
	('IMPROVEMENT_KASBAH', 'TERRAIN_COAST', 'YIELD_CULTURE', 1);

INSERT INTO Route_TechMovementChanges
	(RouteType, TechType, MovementChange)
VALUES
	('ROUTE_ROAD', 'TECH_CONSTRUCTION', -10),
	('ROUTE_ROAD', 'TECH_GUNPOWDER', -5),
	('ROUTE_RAILROAD', 'TECH_COMBUSTION', -10),
	('ROUTE_RAILROAD', 'TECH_COMBINED_ARMS', -5),
	('ROUTE_RAILROAD', 'TECH_MOBILE_TACTICS', -5);

INSERT INTO Improvement_RouteYieldChanges
	(ImprovementType, RouteType, YieldType, Yield)
VALUES
	('IMPROVEMENT_TRADING_POST', 'ROUTE_ROAD', 'YIELD_GOLD', 1),
	('IMPROVEMENT_TRADING_POST', 'ROUTE_ROAD', 'YIELD_PRODUCTION', 1),
	('IMPROVEMENT_TRADING_POST', 'ROUTE_RAILROAD', 'YIELD_GOLD', 2),
	('IMPROVEMENT_TRADING_POST', 'ROUTE_RAILROAD', 'YIELD_PRODUCTION', 2),
	('IMPROVEMENT_CUSTOMS_HOUSE', 'ROUTE_ROAD', 'YIELD_GOLD', 2),
	('IMPROVEMENT_CUSTOMS_HOUSE', 'ROUTE_ROAD', 'YIELD_PRODUCTION', 2),
	('IMPROVEMENT_CUSTOMS_HOUSE', 'ROUTE_RAILROAD', 'YIELD_GOLD', 4),
	('IMPROVEMENT_CUSTOMS_HOUSE', 'ROUTE_RAILROAD', 'YIELD_PRODUCTION', 4);


-- Fix some Improvement Errata
UPDATE Improvements SET NearbyEnemyDamage = '30' WHERE Type = 'IMPROVEMENT_CITADEL';
UPDATE Improvements SET DestroyedWhenPillaged = '0', PillageGold = '21' WHERE Type = 'IMPROVEMENT_OFFSHORE_PLATFORM';

-- Yields for other improvements.
UPDATE Improvement_Yields SET Yield = '1' WHERE YieldType = 'YIELD_PRODUCTION' AND ImprovementType = 'IMPROVEMENT_MINE';
UPDATE Improvement_Yields SET Yield = '1' WHERE YieldType = 'YIELD_PRODUCTION' AND ImprovementType = 'IMPROVEMENT_LUMBERMILL';
UPDATE Improvement_Yields SET Yield = '2' WHERE YieldType = 'YIELD_GOLD' AND ImprovementType = 'IMPROVEMENT_TRADING_POST';
UPDATE Improvement_Yields SET Yield = '6' WHERE YieldType = 'YIELD_SCIENCE' AND ImprovementType = 'IMPROVEMENT_ACADEMY';
UPDATE Improvement_Yields SET Yield = '6' WHERE YieldType = 'YIELD_GOLD' AND ImprovementType = 'IMPROVEMENT_CUSTOMS_HOUSE';
UPDATE Improvement_Yields SET Yield = '6' WHERE YieldType = 'YIELD_PRODUCTION' AND ImprovementType = 'IMPROVEMENT_MANUFACTORY';
UPDATE Improvement_Yields SET Yield = '4' WHERE YieldType = 'YIELD_FAITH' AND ImprovementType = 'IMPROVEMENT_HOLY_SITE';
UPDATE Improvement_Yields SET Yield = '3' WHERE YieldType = 'YIELD_GOLD' AND ImprovementType = 'IMPROVEMENT_CHATEAU';

-- Proposal 2-15: Merge lumber mill and logging camp, but jungle lumber mill still gives 1 gold instead of 1 production
INSERT INTO Improvement_FeatureYieldChanges
	(ImprovementType, FeatureType, YieldType, Yield)
VALUES
	('IMPROVEMENT_LUMBERMILL', 'FEATURE_JUNGLE', 'YIELD_PRODUCTION', -1),
	('IMPROVEMENT_LUMBERMILL', 'FEATURE_JUNGLE', 'YIELD_GOLD', 1);

-- Improvements -- Trading Post -- Available at Currency

UPDATE Builds
SET PrereqTech = 'TECH_CURRENCY', Help = 'TXT_KEY_BUILD_TRADING_POST_HELP'
WHERE Type = 'BUILD_TRADING_POST';

-- Lumbermill moved to Steel
UPDATE Builds
SET PrereqTech = 'TECH_METAL_CASTING'
WHERE Type = 'BUILD_LUMBERMILL';

-- Railroads now more expensive (+1)
UPDATE Routes
SET GoldMaintenance = '3'
WHERE Type = 'ROUTE_RAILROAD';

-- Farm
UPDATE Builds
SET Help = 'TXT_KEY_BUILD_FARM_HELP', Recommendation = 'TXT_KEY_BUILD_FARM_REC'
WHERE Type = 'BUILD_FARM';

UPDATE Improvements
SET RequiresFlatlands = '1', RequiresFlatlandsOrFreshWater = '0'
WHERE Type = 'IMPROVEMENT_FARM';

-- Lumber Mill
UPDATE Builds
SET Help = 'TXT_KEY_BUILD_LUMBERMILL_HELP'
WHERE Type = 'BUILD_LUMBERMILL';


-- Forts and Citadels 'no two adjacent' and no outside borders for Fort - cannot be built on resources (helps AI quite a bit)	
-- Forts and Citadels now passable for ships and trade units.

UPDATE Builds
SET Time = '400'
WHERE Type = 'BUILD_FORT';

UPDATE Improvements
SET NoTwoAdjacent = '1', OutsideBorders = '0', BuildableOnResources = '0', MakesPassable = '1'
WHERE Type = 'IMPROVEMENT_FORT';

UPDATE Improvements
SET NoTwoAdjacent = '1', MakesPassable = '1'
WHERE Type = 'IMPROVEMENT_CITADEL';

-- Camps need defense!

UPDATE Improvements
SET DefenseModifier = '25'
WHERE Type = 'IMPROVEMENT_BARBARIAN_CAMP';

-- Trading Post also going to be 'no two adjacent'

UPDATE Improvements
SET NoTwoAdjacent = '1'
WHERE Type = 'IMPROVEMENT_TRADING_POST';

-- Shrink Trading Post
UPDATE ArtDefine_Landmarks
SET Scale= '0.65'
WHERE ImprovementType IN 
('ART_DEF_IMPROVEMENT_TRADING_POST1',
'ART_DEF_IMPROVEMENT_TRADING_POST2',
'ART_DEF_IMPROVEMENT_TRADING_POST3',
'ART_DEF_IMPROVEMENT_TRADING_POST4');

-- Shrink Academy, Manufactory, HolySite
UPDATE ArtDefine_Landmarks
SET Scale= '0.75'
WHERE ImprovementType IN 
('ART_DEF_IMPROVEMENT_ACADEMY',
'ART_DEF_IMPROVEMENT_MANUFACTORY',
'ART_DEF_IMPROVEMENT_HOLY_SITE');

-- Shrink Kasbah
UPDATE ArtDefine_Landmarks
SET Scale= '0.80'
WHERE ImprovementType = 'ART_DEF_IMPROVEMENT_KASBAH';

-- Shrink Chateau, Customs House
UPDATE ArtDefine_Landmarks
SET Scale= '0.70'
WHERE ImprovementType IN ('ART_DEF_IMPROVEMENT_CHATEAU', 'ART_DEF_IMPROVEMENT_CUSTOMS_HOUSE');

-- Happiness on Landmark
UPDATE Improvements
SET HappinessOnConstruction = '3'
WHERE Type = 'IMPROVEMENT_LANDMARK';

-- Pillage values

UPDATE Improvements
SET PillageGold = '21'
WHERE Type = 'IMPROVEMENT_OFFSHORE_PLATFORM';

UPDATE Improvements
SET PillageGold = '20'
WHERE Type = 'IMPROVEMENT_SPAIN_HACIENDA';

UPDATE Improvements
SET PillageGold = '17'
WHERE Type IN 
('IMPROVEMENT_CUSTOMS_HOUSE',
'IMPROVEMENT_MANUFACTORY',
'IMPROVEMENT_HOLY_SITE',
'IMPROVEMENT_LANDMARK',
'IMPROVEMENT_ACADEMY',
'IMPROVEMENT_CITADEL');

UPDATE Improvements
SET PillageGold = '14'
WHERE Type IN 
('IMPROVEMENT_BRAZILWOOD_CAMP',
'IMPROVEMENT_FISHING_BOATS',
'IMPROVEMENT_FEITORIA',
'IMPROVEMENT_CHATEAU',
'IMPROVEMENT_POLDER',
'IMPROVEMENT_KASBAH',
'IMPROVEMENT_KUNA');

UPDATE Improvements
SET PillageGold = '11'
WHERE Type IN 
('IMPROVEMENT_ENCAMPMENT_SHOSHONE',
'IMPROVEMENT_TRADING_POST');

UPDATE Improvements
SET PillageGold = '8'
WHERE Type IN ('IMPROVEMENT_LUMBERMILL',
'IMPROVEMENT_QUARRY',
'IMPROVEMENT_CAMP',
'IMPROVEMENT_WELL',
'IMPROVEMENT_MOAI',
'IMPROVEMENT_MINE');

UPDATE Improvements
SET PillageGold = '5'
WHERE Type IN ('IMPROVEMENT_TERRACE_FARM',
'IMPROVEMENT_PLANTATION',
'IMPROVEMENT_PASTURE',
'IMPROVEMENT_FARM',
'IMPROVEMENT_EKI');

UPDATE Improvements
SET PillageGold = '0'
WHERE Type IN ('IMPROVEMENT_ARCHAEOLOGICAL_DIG',
'IMPROVEMENT_JFD_MACHU_PICCHU',
'IMPROVEMENT_BARBARIAN_CAMP',
'IMPROVEMENT_GOODY_HUT',
'IMPROVEMENT_CITY_RUINS',
'IMPROVEMENT_EMBASSY',
'IMPROVEMENT_FORT');

