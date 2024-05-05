-- Random events
INSERT INTO CityEvent_MinimumStartYield
	(CityEventType, YieldType, Yield)
VALUES
	('CITY_EVENT_ICE_AGE_NO_FUEL', 'YIELD_PRODUCTION', 50),
	('CITY_EVENT_FISHING_EXPEDITION', 'YIELD_GOLD', 250),
	('CITY_EVENT_CORRUPTION_FOOD_SPOILED', 'YIELD_FOOD', 50),
	('CITY_EVENT_CORRUPTION_BANDITS', 'YIELD_GOLD', 50);

INSERT INTO CityEvent_ParentEvents
	(CityEventChoiceType, CityEventType)
VALUES
	('CITY_EVENT_DROUGHT_CHOICE_1', 'CITY_EVENT_DROUGHT'),
	('CITY_EVENT_SEVERE_DROUGHT_CHOICE_1', 'CITY_EVENT_DROUGHT_SEVERE'),
	('CITY_EVENT_CRITICAL_DROUGHT_CHOICE_1', 'CITY_EVENT_DROUGHT_CRITICAL'),
	('CITY_EVENT_ICE_AGE_EXPOSURE_CHOICE_1', 'CITY_EVENT_ICE_AGE_EXPOSURE'),
	('CITY_EVENT_ICE_AGE_NO_FUEL_CHOICE_1', 'CITY_EVENT_ICE_AGE_NO_FUEL'),
	('CITY_EVENT_ICE_AGE_FROZEN_WATER_CHOICE_1', 'CITY_EVENT_ICE_AGE_FROZEN_WATER'),
	('CITY_EVENT_ICE_AGE_BITTER_WINDS_CHOICE_1', 'CITY_EVENT_ICE_AGE_BITTER_WINDS'),
	('CITY_EVENT_STONE_WORKS_DISCOVERY_CHOICE_1', 'CITY_EVENT_STONE_WORKS_DISCOVERY'),
	('CITY_EVENT_STONE_WORKS_DISCOVERY_CHOICE_2', 'CITY_EVENT_STONE_WORKS_DISCOVERY'),
	('CITY_EVENT_STONE_WORKS_DISCOVERY_CHOICE_3', 'CITY_EVENT_STONE_WORKS_DISCOVERY'),
	('CITY_EVENT_STONE_WORKS_DISCOVERY_CHOICE_4', 'CITY_EVENT_STONE_WORKS_DISCOVERY'),
	('CITY_EVENT_FISHING_EXPEDITION_CHOICE_1', 'CITY_EVENT_FISHING_EXPEDITION'),
	('CITY_EVENT_FISHING_EXPEDITION_CHOICE_2', 'CITY_EVENT_FISHING_EXPEDITION'),
	('CITY_EVENT_FISHING_EXPEDITION_CHOICE_3', 'CITY_EVENT_FISHING_EXPEDITION'),
	('CITY_EVENT_DO_NOTHING_CHOICE', 'CITY_EVENT_FISHING_EXPEDITION'),
	('CITY_EVENT_AMPHITHEATER_NEW_DRAMA_CHOICE_1', 'CITY_EVENT_AMPHITHEATER_NEW_DRAMA'),
	('CITY_EVENT_AMPHITHEATER_NEW_DRAMA_CHOICE_2', 'CITY_EVENT_AMPHITHEATER_NEW_DRAMA'),
	('CITY_EVENT_AMPHITHEATER_NEW_DRAMA_CHOICE_3', 'CITY_EVENT_AMPHITHEATER_NEW_DRAMA'),
	('CITY_EVENT_AMPHITHEATER_NEW_DRAMA_CHOICE_4', 'CITY_EVENT_AMPHITHEATER_NEW_DRAMA'),
	('CITY_EVENT_TEMPLE_CONCERNS_CHOICE_1', 'CITY_EVENT_TEMPLE_CONCERNS'),
	('CITY_EVENT_TEMPLE_CONCERNS_CHOICE_2', 'CITY_EVENT_TEMPLE_CONCERNS'),
	('CITY_EVENT_TEMPLE_CONCERNS_CHOICE_3', 'CITY_EVENT_TEMPLE_CONCERNS'),
	('CITY_EVENT_TEMPLE_CONCERNS_CHOICE_4', 'CITY_EVENT_TEMPLE_CONCERNS'),
	('CITY_EVENT_LIGHTHOUSE_CHOICE_1', 'CITY_EVENT_LIGHTHOUSE'),
	('CITY_EVENT_LIGHTHOUSE_CHOICE_2', 'CITY_EVENT_LIGHTHOUSE'),
	('CITY_EVENT_LIGHTHOUSE_CHOICE_3', 'CITY_EVENT_LIGHTHOUSE'),
	('CITY_EVENT_HOSPITAL_OVERCROWDING_CHOICE_1', 'CITY_EVENT_HOSPITAL_OVERCROWDING'),
	('CITY_EVENT_HOSPITAL_OVERCROWDING_CHOICE_2', 'CITY_EVENT_HOSPITAL_OVERCROWDING'),
	('CITY_EVENT_HOSPITAL_OVERCROWDING_CHOICE_3', 'CITY_EVENT_HOSPITAL_OVERCROWDING'),
	('CITY_EVENT_HOSPITAL_OVERCROWDING_CHOICE_4', 'CITY_EVENT_HOSPITAL_OVERCROWDING'),
	('CITY_EVENT_HOSPITAL_OVERCROWDING_CHOICE_5', 'CITY_EVENT_HOSPITAL_OVERCROWDING'),
	('CITY_EVENT_STADIUM_WORLD_EVENT_CHOICE_1', 'CITY_EVENT_STADIUM_WORLD_EVENT'),
	('CITY_EVENT_STADIUM_LOCAL_EVENT_CHOICE_1', 'CITY_EVENT_STADIUM_LOCAL_EVENT'),
	('CITY_EVENT_STADIUM_LOCAL_EVENT_CHOICE_2', 'CITY_EVENT_STADIUM_LOCAL_EVENT'),
	('CITY_EVENT_STADIUM_LOCAL_EVENT_CHOICE_3', 'CITY_EVENT_STADIUM_LOCAL_EVENT'),
	('CITY_EVENT_STADIUM_LOCAL_EVENT_CHOICE_4', 'CITY_EVENT_STADIUM_LOCAL_EVENT'),
	('CITY_EVENT_STADIUM_LOCAL_EVENT_CHOICE_5', 'CITY_EVENT_STADIUM_LOCAL_EVENT'),
	('CITY_EVENT_NUCLEAR_MELTDOWN_CHOICE_1', 'CITY_EVENT_NUCLEAR_MELTDOWN'),
	('CITY_EVENT_MINE_COLLAPSE_CHOICE_1', 'CITY_EVENT_MINE_COLLAPSE'),
	('CITY_EVENT_MINE_COLLAPSE_CHOICE_2', 'CITY_EVENT_MINE_COLLAPSE'),
	('CITY_EVENT_MINE_COLLAPSE_CHOICE_3', 'CITY_EVENT_MINE_COLLAPSE'),
	('CITY_EVENT_FOREST_FIRE_CHOICE_1', 'CITY_EVENT_FOREST_FIRE'),
	('CITY_EVENT_FOREST_FIRE_CHOICE_2', 'CITY_EVENT_FOREST_FIRE'),
	('CITY_EVENT_FOREST_FIRE_CHOICE_3', 'CITY_EVENT_FOREST_FIRE'),
	('CITY_EVENT_AVALANCHE_CHOICE_1', 'CITY_EVENT_AVALANCHE'),
	('CITY_EVENT_CORRUPTION_CHOICE_1', 'CITY_EVENT_CORRUPTION'),
	('CITY_EVENT_CORRUPTION_CHOICE_2', 'CITY_EVENT_CORRUPTION'),
	('CITY_EVENT_CORRUPTION_CHOICE_3', 'CITY_EVENT_CORRUPTION'),
	('CITY_EVENT_CORRUPTION_CHOICE_4', 'CITY_EVENT_CORRUPTION'),
	('CITY_EVENT_CORRUPTION_FOOD_SPOILED_CHOICE_1', 'CITY_EVENT_CORRUPTION_FOOD_SPOILED'),
	('CITY_EVENT_CORRUPTION_BANDITS_CHOICE_1', 'CITY_EVENT_CORRUPTION_BANDITS'),
	('CITY_EVENT_GOOD_HARVEST_CHOICE_1', 'CITY_EVENT_GOOD_HARVEST'),
	('CITY_EVENT_MARKET_DAY_CHOICE_1', 'CITY_EVENT_MARKET_DAY'),
	('CITY_EVENT_VOLCANO_CHOICE_1', 'CITY_EVENT_VOLCANO'),
	('CITY_EVENT_VOLCANO_SPECIAL_CHOICE_1', 'CITY_EVENT_VOLCANO_SPECIAL'),
	('CITY_EVENT_HOTEL_ESTABLISHED_CHOICE_1', 'CITY_EVENT_HOTEL_ESTABLISHED'),
	('CITY_EVENT_PESTILENCE_CHOICE_1', 'CITY_EVENT_PESTILENCE'),
	('CITY_EVENT_PESTILENCE_CHOICE_2', 'CITY_EVENT_PESTILENCE'),
	('CITY_EVENT_PESTILENCE_CHOICE_3', 'CITY_EVENT_PESTILENCE'),
	('CITY_EVENT_FLOODING_CHOICE_1', 'CITY_EVENT_FLOODING'),
	('CITY_EVENT_FLOODING_CHOICE_2', 'CITY_EVENT_FLOODING'),
	('CITY_EVENT_FLOODING_CHOICE_3', 'CITY_EVENT_FLOODING'),
	('CITY_EVENT_HURRICANE_CHOICE_1', 'CITY_EVENT_HURRICANE'),
	('CITY_EVENT_HURRICANE_CHOICE_2', 'CITY_EVENT_HURRICANE'),
	('CITY_EVENT_HURRICANE_CHOICE_3', 'CITY_EVENT_HURRICANE'),
	('CITY_EVENT_HURRICANE_CHOICE_4', 'CITY_EVENT_HURRICANE'),
	('CITY_EVENT_HURRICANE_CHOICE_5', 'CITY_EVENT_HURRICANE'),
	('CITY_EVENT_PLAGUE_CHOICE_1', 'CITY_EVENT_PLAGUE'),
	('CITY_EVENT_WANDERER_CHOICE_1', 'CITY_EVENT_WANDERER'),
	('CITY_EVENT_WANDERER_CHOICE_2', 'CITY_EVENT_WANDERER'),
	('CITY_EVENT_WANDERER_CHOICE_3', 'CITY_EVENT_WANDERER'),
	('CITY_EVENT_WANDERER_CHOICE_4', 'CITY_EVENT_WANDERER'),
	('CITY_EVENT_NOMADS_CHOICE_1', 'CITY_EVENT_NOMADS'),
	('CITY_EVENT_NOMADS_CHOICE_2', 'CITY_EVENT_NOMADS'),
	('CITY_EVENT_NOMADS_CHOICE_3', 'CITY_EVENT_NOMADS'),
	('CITY_EVENT_NOMADS_CHOICE_4', 'CITY_EVENT_NOMADS'),
	('CITY_EVENT_OCCUPIED_REBELS_CHOICE_1', 'CITY_EVENT_OCCUPIED_REBELS'),
	('CITY_EVENT_OCCUPIED_REBELS_CHOICE_2', 'CITY_EVENT_OCCUPIED_REBELS'),
	('CITY_EVENT_OCCUPIED_REBELS_CHOICE_3', 'CITY_EVENT_OCCUPIED_REBELS'),
	('CITY_EVENT_PLANTATION_RARE_CROP_CHOICE_1', 'CITY_EVENT_PLANTATION_RARE_CROP');

-- Player event enables city event
INSERT INTO CityEvent_EventLinks
	(CityEventType, EventChoice)
VALUES
	('CITY_EVENT_DROUGHT', 'PLAYER_EVENT_HEAT_WAVE_CHOICE_2'),
	('CITY_EVENT_DROUGHT_SEVERE', 'PLAYER_EVENT_HEAT_WAVE_CHOICE_3'),
	('CITY_EVENT_DROUGHT_CRITICAL', 'PLAYER_EVENT_HEAT_WAVE_CHOICE_4'),
	('CITY_EVENT_ICE_AGE_EXPOSURE', 'PLAYER_EVENT_ICE_AGE_CHOICE_4'),
	('CITY_EVENT_ICE_AGE_NO_FUEL', 'PLAYER_EVENT_ICE_AGE_CHOICE_4'),
	('CITY_EVENT_ICE_AGE_FROZEN_WATER', 'PLAYER_EVENT_ICE_AGE_CHOICE_4'),
	('CITY_EVENT_ICE_AGE_BITTER_WINDS', 'PLAYER_EVENT_ICE_AGE_CHOICE_4'),
	('CITY_EVENT_STADIUM_WORLD_EVENT', 'PLAYER_EVENT_STADIUM_WORLD_EVENT_CHOICE_1'),
	('CITY_EVENT_PLAGUE', 'PLAYER_EVENT_PLAGUE_CHOICE_1');

-- City event blocks city event
INSERT INTO CityEvent_EventLinks
	(CityEventType, CityEventLinker, CheckOnlyEventCity, CheckForActive)
VALUES
	('CITY_EVENT_STONE_WORKS_DISCOVERY', 'CITY_EVENT_STONE_WORKS_DISCOVERY', 0, 0),
	('CITY_EVENT_FISHING_EXPEDITION', 'CITY_EVENT_FISHING_EXPEDITION', 0, 0),
	('CITY_EVENT_FISHING_EXPEDITION', 'CITY_EVENT_ICE_AGE_FROZEN_WATER', 1, 0),
	('CITY_EVENT_AMPHITHEATER_NEW_DRAMA', 'CITY_EVENT_AMPHITHEATER_NEW_DRAMA', 0, 0),
	('CITY_EVENT_TEMPLE_CONCERNS', 'CITY_EVENT_TEMPLE_CONCERNS', 0, 0),
	('CITY_EVENT_LIGHTHOUSE', 'CITY_EVENT_LIGHTHOUSE', 0, 0),
	('CITY_EVENT_LIGHTHOUSE', 'CITY_EVENT_ICE_AGE_FROZEN_WATER', 1, 0),
	('CITY_EVENT_HOSPITAL_OVERCROWDING', 'CITY_EVENT_HOSPITAL_OVERCROWDING', 0, 0),
	('CITY_EVENT_MINE_COLLAPSE', 'CITY_EVENT_AVALANCHE', 1, 0),
	('CITY_EVENT_AVALANCHE', 'CITY_EVENT_FOREST_FIRE', 1, 0),
	('CITY_EVENT_FOREST_FIRE', 'CITY_EVENT_MINE_COLLAPSE', 1, 0),
	('CITY_EVENT_FLOODING', 'CITY_EVENT_ICE_AGE_FROZEN_WATER', 1, 0),
	('CITY_EVENT_WANDERER', 'CITY_EVENT_WANDERER', 0, 0),
	('CITY_EVENT_NOMADS', 'CITY_EVENT_NOMADS', 0, 0);

-- City event choice blocks city event
INSERT INTO CityEvent_EventLinks
	(CityEventType, CityEventChoice, CheckOnlyEventCity, CheckForActive)
VALUES
	('CITY_EVENT_FLOODING', 'CITY_EVENT_FLOODING_CHOICE_3', 1, 0),
	('CITY_EVENT_PESTILENCE', 'CITY_EVENT_PESTILENCE_CHOICE_3', 1, 0);

INSERT INTO CityEventChoice_MinimumStartYield
	(CityEventChoiceType, YieldType, Yield)
VALUES
	('CITY_EVENT_AMPHITHEATER_NEW_DRAMA_CHOICE_1', 'YIELD_GOLD', 200),
	('CITY_EVENT_TEMPLE_CONCERNS_CHOICE_4', 'YIELD_GOLD', 500),
	('CITY_EVENT_LIGHTHOUSE_CHOICE_2', 'YIELD_GOLD', 50),
	('CITY_EVENT_HURRICANE_CHOICE_1', 'YIELD_GOLD', 1000),
	('CITY_EVENT_HURRICANE_CHOICE_3', 'YIELD_GOLD', 500),
	('CITY_EVENT_HURRICANE_CHOICE_4', 'YIELD_GOLD', 500),
	('CITY_EVENT_HURRICANE_CHOICE_5', 'YIELD_GOLD', 500),
	('CITY_EVENT_OCCUPIED_REBELS_CHOICE_1', 'YIELD_POPULATION', 6);

INSERT INTO CityEventChoice_EventCostYield
	(CityEventChoiceType, YieldType, Yield)
VALUES
	('CITY_EVENT_ICE_AGE_NO_FUEL_CHOICE_1', 'YIELD_PRODUCTION', 50),
	('CITY_EVENT_FISHING_EXPEDITION_CHOICE_1', 'YIELD_GOLD', 75),
	('CITY_EVENT_FISHING_EXPEDITION_CHOICE_2', 'YIELD_GOLD', 125),
	('CITY_EVENT_FISHING_EXPEDITION_CHOICE_3', 'YIELD_GOLD', 500),
	('CITY_EVENT_AMPHITHEATER_NEW_DRAMA_CHOICE_1', 'YIELD_GOLD', 200),
	('CITY_EVENT_TEMPLE_CONCERNS_CHOICE_4', 'YIELD_GOLD', 500),
	('CITY_EVENT_LIGHTHOUSE_CHOICE_2', 'YIELD_GOLD', 50),
	('CITY_EVENT_CORRUPTION_FOOD_SPOILED_CHOICE_1', 'YIELD_FOOD', 50),
	('CITY_EVENT_CORRUPTION_BANDITS_CHOICE_1', 'YIELD_GOLD', 50),
	('CITY_EVENT_HURRICANE_CHOICE_1', 'YIELD_GOLD', 1000),
	('CITY_EVENT_HURRICANE_CHOICE_3', 'YIELD_GOLD', 500),
	('CITY_EVENT_HURRICANE_CHOICE_4', 'YIELD_GOLD', 500),
	('CITY_EVENT_HURRICANE_CHOICE_5', 'YIELD_GOLD', 500),
	('CITY_EVENT_HOSPITAL_OVERCROWDING_CHOICE_2', 'YIELD_POPULATION', 1),
	('CITY_EVENT_ICE_AGE_EXPOSURE_CHOICE_1', 'YIELD_POPULATION', 1),
	('CITY_EVENT_TEMPLE_CONCERNS_CHOICE_1', 'YIELD_POPULATION', 1),
	('CITY_EVENT_NUCLEAR_MELTDOWN_CHOICE_1', 'YIELD_POPULATION', 5),
	('CITY_EVENT_VOLCANO_CHOICE_1', 'YIELD_POPULATION', 3),
	('CITY_EVENT_VOLCANO_SPECIAL_CHOICE_1', 'YIELD_POPULATION', 3),
	('CITY_EVENT_NOMADS_CHOICE_2', 'YIELD_GOLD', -50),
	('CITY_EVENT_MINE_COLLAPSE_CHOICE_2', 'YIELD_PRODUCTION', 50),
	('CITY_EVENT_MINE_COLLAPSE_CHOICE_3', 'YIELD_GOLD', 75),
	('CITY_EVENT_PESTILENCE_CHOICE_2', 'YIELD_FOOD', 60),
	('CITY_EVENT_PESTILENCE_CHOICE_3', 'YIELD_SCIENCE', 225),
	('CITY_EVENT_FOREST_FIRE_CHOICE_2', 'YIELD_FOOD', 40),
	('CITY_EVENT_FOREST_FIRE_CHOICE_3', 'YIELD_GOLD', 75),
	('CITY_EVENT_FOREST_FIRE_CHOICE_3', 'YIELD_SCIENCE', 50),
	('CITY_EVENT_FLOODING_CHOICE_2', 'YIELD_PRODUCTION', 50),
	('CITY_EVENT_FLOODING_CHOICE_3', 'YIELD_SCIENCE', 225);

INSERT INTO CityEventChoice_InstantYield
	(CityEventChoiceType, YieldType, Yield)
VALUES
	('CITY_EVENT_STONE_WORKS_DISCOVERY_CHOICE_1', 'YIELD_GOLD', 50),
	('CITY_EVENT_STONE_WORKS_DISCOVERY_CHOICE_2', 'YIELD_FAITH', 50),
	('CITY_EVENT_STONE_WORKS_DISCOVERY_CHOICE_3', 'YIELD_FAITH', 25),
	('CITY_EVENT_STONE_WORKS_DISCOVERY_CHOICE_3', 'YIELD_CULTURE', 25),
	('CITY_EVENT_FISHING_EXPEDITION_CHOICE_1', 'YIELD_FOOD', 200),
	('CITY_EVENT_AMPHITHEATER_NEW_DRAMA_CHOICE_1', 'YIELD_TOURISM', 100),
	('CITY_EVENT_AMPHITHEATER_NEW_DRAMA_CHOICE_2', 'YIELD_CULTURE', 100),
	('CITY_EVENT_AMPHITHEATER_NEW_DRAMA_CHOICE_4', 'YIELD_FAITH', 100),
	('CITY_EVENT_TEMPLE_CONCERNS_CHOICE_1', 'YIELD_FAITH', 100),
	('CITY_EVENT_LIGHTHOUSE_CHOICE_3', 'YIELD_GOLD', 100),
	('CITY_EVENT_STADIUM_WORLD_EVENT_CHOICE_1', 'YIELD_GOLD', 500),
	('CITY_EVENT_STADIUM_WORLD_EVENT_CHOICE_1', 'YIELD_TOURISM', 500),
	('CITY_EVENT_STADIUM_LOCAL_EVENT_CHOICE_1', 'YIELD_GOLD', 100),
	('CITY_EVENT_STADIUM_LOCAL_EVENT_CHOICE_1', 'YIELD_CULTURE', 75),
	('CITY_EVENT_STADIUM_LOCAL_EVENT_CHOICE_2', 'YIELD_GOLD', 100),
	('CITY_EVENT_STADIUM_LOCAL_EVENT_CHOICE_2', 'YIELD_SCIENCE', 75),
	('CITY_EVENT_STADIUM_LOCAL_EVENT_CHOICE_3', 'YIELD_GOLD', 200),
	('CITY_EVENT_STADIUM_LOCAL_EVENT_CHOICE_4', 'YIELD_GOLD', 200),
	('CITY_EVENT_STADIUM_LOCAL_EVENT_CHOICE_5', 'YIELD_GOLDEN_AGE_POINTS', 400),
	('CITY_EVENT_GOOD_HARVEST_CHOICE_1', 'YIELD_FOOD', 50),
	('CITY_EVENT_NOMADS_CHOICE_1', 'YIELD_CULTURE_LOCAL', 100),
	('CITY_EVENT_NOMADS_CHOICE_4', 'YIELD_POPULATION', 1),
	('CITY_EVENT_HURRICANE_CHOICE_1', 'YIELD_POPULATION', -2),
	('CITY_EVENT_HURRICANE_CHOICE_2', 'YIELD_POPULATION', -5),
	('CITY_EVENT_HURRICANE_CHOICE_3', 'YIELD_POPULATION', -4),
	('CITY_EVENT_HURRICANE_CHOICE_4', 'YIELD_POPULATION', -3),
	('CITY_EVENT_HURRICANE_CHOICE_5', 'YIELD_POPULATION', -2),
	('CITY_EVENT_OCCUPIED_REBELS_CHOICE_1', 'YIELD_POPULATION', -5),
	('CITY_EVENT_PLANTATION_RARE_CROP_CHOICE_1', 'YIELD_SCIENCE', 50);

INSERT INTO CityEventChoice_GreatPersonPoints
	(CityEventChoiceType, SpecialistType, Points)
VALUES
	('CITY_EVENT_AMPHITHEATER_NEW_DRAMA_CHOICE_3', 'SPECIALIST_WRITER', 100),
	('CITY_EVENT_WANDERER_CHOICE_1', 'SPECIALIST_ARTIST', 100),
	('CITY_EVENT_WANDERER_CHOICE_2', 'SPECIALIST_ENGINEER', 100),
	('CITY_EVENT_WANDERER_CHOICE_3', 'SPECIALIST_SCIENTIST', 100),
	('CITY_EVENT_WANDERER_CHOICE_4', 'SPECIALIST_MERCHANT', 100),
	('CITY_EVENT_FLOODING_CHOICE_3', 'SPECIALIST_ENGINEER', 25);

INSERT INTO CityEventChoice_CityYield
	(CityEventChoiceType, YieldType, Yield)
VALUES
	('CITY_EVENT_ICE_AGE_FROZEN_WATER_CHOICE_1', 'YIELD_GOLD', -3),
	('CITY_EVENT_STONE_WORKS_DISCOVERY_CHOICE_4', 'YIELD_CULTURE', 2),
	('CITY_EVENT_TEMPLE_CONCERNS_CHOICE_3', 'YIELD_FAITH', 1),
	('CITY_EVENT_HOSPITAL_OVERCROWDING_CHOICE_1', 'YIELD_GOLD', -5),
	('CITY_EVENT_HOSPITAL_OVERCROWDING_CHOICE_4', 'YIELD_GOLD', -5),
	('CITY_EVENT_CORRUPTION_CHOICE_1', 'YIELD_FOOD', -3),
	('CITY_EVENT_CORRUPTION_CHOICE_2', 'YIELD_PRODUCTION', -3),
	('CITY_EVENT_CORRUPTION_CHOICE_3', 'YIELD_GOLD', -3),
	('CITY_EVENT_PLAGUE_CHOICE_1', 'YIELD_FOOD', -15);

INSERT INTO CityEventChoice_BuildingClassYieldChange
	(CityEventChoiceType, BuildingClassType, YieldType, YieldChange)
VALUES
	('CITY_EVENT_TEMPLE_CONCERNS_CHOICE_2', 'BUILDINGCLASS_TEMPLE', 'YIELD_GOLD', 2),
	('CITY_EVENT_TEMPLE_CONCERNS_CHOICE_2', 'BUILDINGCLASS_TEMPLE', 'YIELD_FAITH', 1),
	('CITY_EVENT_LIGHTHOUSE_CHOICE_1', 'BUILDINGCLASS_LIGHTHOUSE', 'YIELD_GOLD', 2),
	('CITY_EVENT_LIGHTHOUSE_CHOICE_2', 'BUILDINGCLASS_LIGHTHOUSE', 'YIELD_PRODUCTION', 1),
	('CITY_EVENT_HOSPITAL_OVERCROWDING_CHOICE_5', 'BUILDINGCLASS_HOSPITAL', 'YIELD_SCIENCE', 4),
	('CITY_EVENT_MARKET_DAY_CHOICE_1', 'BUILDINGCLASS_MARKET', 'YIELD_GOLD', 2);

INSERT INTO CityEventChoice_FeatureYieldChange
	(CityEventChoiceType, FeatureType, YieldType, YieldChange)
VALUES
	('CITY_EVENT_FOREST_FIRE_CHOICE_3', 'FEATURE_FOREST', 'YIELD_PRODUCTION', 1);

INSERT INTO CityEventChoice_ImprovementYieldChange
	(CityEventChoiceType, ImprovementType, YieldType, YieldChange)
VALUES
	('CITY_EVENT_DROUGHT_CHOICE_1', 'IMPROVEMENT_FARM', 'YIELD_FOOD', -1),
	('CITY_EVENT_SEVERE_DROUGHT_CHOICE_1', 'IMPROVEMENT_FARM', 'YIELD_FOOD', -1),
	('CITY_EVENT_CRITICAL_DROUGHT_CHOICE_1', 'IMPROVEMENT_FARM', 'YIELD_FOOD', -2),
	('CITY_EVENT_ICE_AGE_BITTER_WINDS_CHOICE_1', 'IMPROVEMENT_FARM', 'YIELD_PRODUCTION', -1),
	('CITY_EVENT_ICE_AGE_BITTER_WINDS_CHOICE_1', 'IMPROVEMENT_PASTURE', 'YIELD_PRODUCTION', -1),
	('CITY_EVENT_ICE_AGE_BITTER_WINDS_CHOICE_1', 'IMPROVEMENT_QUARRY', 'YIELD_PRODUCTION', -1),
	('CITY_EVENT_ICE_AGE_BITTER_WINDS_CHOICE_1', 'IMPROVEMENT_LUMBERMILL', 'YIELD_PRODUCTION', -1),
	('CITY_EVENT_PESTILENCE_CHOICE_3', 'IMPROVEMENT_FARM', 'YIELD_FOOD', 1),
	('CITY_EVENT_FISHING_EXPEDITION_CHOICE_2', 'IMPROVEMENT_FISHING_BOATS', 'YIELD_FOOD', 4);

INSERT INTO CityEventChoice_ResourceQuantity
	(CityEventChoiceType, ResourceType, Quantity)
VALUES
	('CITY_EVENT_MINE_COLLAPSE_CHOICE_3', 'RESOURCE_OIL', 1);

INSERT INTO CityEventChoice_ImprovementDestructionRandom
	(CityEventChoiceType, ImprovementType, Number)
VALUES
	('CITY_EVENT_SEVERE_DROUGHT_CHOICE_1', 'IMPROVEMENT_FARM', 1),
	('CITY_EVENT_CRITICAL_DROUGHT_CHOICE_1', 'IMPROVEMENT_FARM', 2),
	('CITY_EVENT_MINE_COLLAPSE_CHOICE_1', 'IMPROVEMENT_MINE', 1),
	('CITY_EVENT_FOREST_FIRE_CHOICE_1', 'IMPROVEMENT_LUMBERMILL', 2),
	('CITY_EVENT_AVALANCHE_CHOICE_1', 'IMPROVEMENT_FARM', 2),
	('CITY_EVENT_AVALANCHE_CHOICE_1', 'IMPROVEMENT_TRADING_POST', 2),
	('CITY_EVENT_VOLCANO_CHOICE_1', 'IMPROVEMENT_FARM', 2),
	('CITY_EVENT_VOLCANO_CHOICE_1', 'IMPROVEMENT_MINE', 2),
	('CITY_EVENT_VOLCANO_CHOICE_1', 'IMPROVEMENT_QUARRY', 2),
	('CITY_EVENT_VOLCANO_CHOICE_1', 'IMPROVEMENT_TRADING_POST', 2),
	('CITY_EVENT_VOLCANO_SPECIAL_CHOICE_1', 'IMPROVEMENT_FARM', 2),
	('CITY_EVENT_VOLCANO_SPECIAL_CHOICE_1', 'IMPROVEMENT_MINE', 2),
	('CITY_EVENT_VOLCANO_SPECIAL_CHOICE_1', 'IMPROVEMENT_QUARRY', 2),
	('CITY_EVENT_VOLCANO_SPECIAL_CHOICE_1', 'IMPROVEMENT_TRADING_POST', 2),
	('CITY_EVENT_PESTILENCE_CHOICE_1', 'IMPROVEMENT_FARM', 2),
	('CITY_EVENT_FLOODING_CHOICE_1', 'IMPROVEMENT_FARM', 3);

-- Espionage
INSERT INTO CityEvent_ParentEvents
	(CityEventChoiceType, CityEventType)
VALUES
	('ESPIONAGE_EVENT_CHOICE_STEAL_GW', 'ESPIONAGE_EVENT_CHOICE_SELECT_FOCUS'),
	('ESPIONAGE_EVENT_CHOICE_SABOTAGE_PRODUCTION', 'ESPIONAGE_EVENT_CHOICE_SELECT_FOCUS'),
	('ESPIONAGE_EVENT_CHOICE_STEAL_FAITH', 'ESPIONAGE_EVENT_CHOICE_SELECT_FOCUS'),
	('ESPIONAGE_EVENT_CHOICE_SCIENTIFIC_GREATPEOPLE', 'ESPIONAGE_EVENT_CHOICE_SELECT_FOCUS'),
	('ESPIONAGE_EVENT_CHOICE_STEAL_FROM_TREASURY', 'ESPIONAGE_EVENT_CHOICE_SELECT_FOCUS'),
	('ESPIONAGE_EVENT_CHOICE_STEAL_TECH', 'ESPIONAGE_EVENT_CHOICE_SELECT_FOCUS'),
	('ESPIONAGE_EVENT_CHOICE_ECONOMIC_TILES', 'ESPIONAGE_EVENT_CHOICE_SELECT_FOCUS'),
	('ESPIONAGE_EVENT_CHOICE_URBAN_UNREST', 'ESPIONAGE_EVENT_CHOICE_SELECT_FOCUS'),
	('ESPIONAGE_EVENT_CHOICE_CITY_DEFENSES', 'ESPIONAGE_EVENT_CHOICE_SELECT_FOCUS'),
	-- Counterspy
	('ESPIONAGE_EVENT_CHOICE_COUNTERSPY_NETWORK', 'ESPIONAGE_EVENT_CHOICE_COUNTERSPY_FOCUS'),
	('ESPIONAGE_EVENT_CHOICE_COUNTERSPY_DEFENSE', 'ESPIONAGE_EVENT_CHOICE_COUNTERSPY_FOCUS');

INSERT INTO CityEventChoice_YieldSiphon
	(CityEventChoiceType, YieldType, Yield)
VALUES
	('ESPIONAGE_EVENT_CHOICE_STEAL_FAITH', 'YIELD_FAITH', 100);
	
	
CREATE TEMP TABLE Helper (
	YieldType TEXT
);

INSERT INTO Helper
	(YieldType)
VALUES
	('YIELD_SCIENCE'),
	('YIELD_CULTURE');

INSERT INTO CityEventChoice_YieldOnSpyIdentified
	(CityEventChoiceType, YieldType, Yield)
SELECT
	a.Type, b.YieldType, 50
FROM CityEventChoices a, Helper b
WHERE a.isCounterSpyMission = 1;

INSERT INTO CityEventChoice_YieldOnSpyKilled
	(CityEventChoiceType, YieldType, Yield)
SELECT
	a.Type, b.YieldType, 150
FROM CityEventChoices a, Helper b
WHERE a.isCounterSpyMission = 1;

DROP TABLE Helper;

