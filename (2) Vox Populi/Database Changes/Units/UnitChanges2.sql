----------------------------------------------------------------------------
-- Resource requirements
----------------------------------------------------------------------------

-- Horses
INSERT INTO Unit_ResourceQuantityRequirements
	(UnitType, ResourceType, Cost)
SELECT
	Type, 'RESOURCE_HORSE', 1
FROM Units
WHERE (CombatClass = 'UNITCOMBAT_MOUNTED' OR IsMounted = 1)
AND Class NOT IN (
	'UNITCLASS_ELEPHANT_RIDER',
	'UNITCLASS_ANTI_TANK_GUN',
	'UNITCLASS_HELICOPTER_GUNSHIP'
);

-- Iron
INSERT INTO Unit_ResourceQuantityRequirements
	(UnitType, ResourceType, Cost)
SELECT
	Type, 'RESOURCE_IRON', 1
FROM Units
WHERE Class IN (
	'UNITCLASS_SWORDSMAN',
	'UNITCLASS_LONGSWORDSMAN',
	'UNITCLASS_CANNON',
	'UNITCLASS_FIELD_GUN',
	'UNITCLASS_ARTILLERY',
	'UNITCLASS_ROCKET_ARTILLERY',
	'UNITCLASS_CRUISER',
	'UNITCLASS_DREADNOUGHT',
	'UNITCLASS_BATTLESHIP',
	'UNITCLASS_MISSILE_CRUISER'
);

-- Oil
INSERT INTO Unit_ResourceQuantityRequirements
	(UnitType, ResourceType, Cost)
SELECT
	Type, 'RESOURCE_OIL', 1
FROM Units
WHERE Class IN (
	'UNITCLASS_WWI_TANK',
	'UNITCLASS_TANK',
	'UNITCLASS_MODERN_ARMOR',
	'UNITCLASS_TRIPLANE',
	'UNITCLASS_FIGHTER',
	'UNITCLASS_WWI_BOMBER',
	'UNITCLASS_BOMBER',
	'UNITCLASS_CARRIER',
	'UNITCLASS_ROCKET_MISSILE',
	'UNITCLASS_GUIDED_MISSILE'
);

-- Aluminum
INSERT INTO Unit_ResourceQuantityRequirements
	(UnitType, ResourceType, Cost)
SELECT
	Type, 'RESOURCE_ALUMINUM', 1
FROM Units
WHERE SpaceshipProject IS NOT NULL
OR Class IN (
	'UNITCLASS_ANTI_TANK_GUN',
	'UNITCLASS_HELICOPTER_GUNSHIP',
	'UNITCLASS_SUBMARINE',
	'UNITCLASS_ATTACK_SUBMARINE',
	'UNITCLASS_NUCLEAR_SUBMARINE',
	'UNITCLASS_JET_FIGHTER',
	'UNITCLASS_STEALTH_BOMBER'
);

-- Uranium
INSERT INTO Unit_ResourceQuantityRequirements
	(UnitType, ResourceType, Cost)
SELECT
	Type, 'RESOURCE_URANIUM', 1
FROM Units
WHERE Class IN (
	'UNITCLASS_MECH',
	'UNITCLASS_SUPERCARRIER',
	'UNITCLASS_ATOMIC_BOMB',
	'UNITCLASS_NUCLEAR_MISSILE'
);

-- Paper
INSERT INTO Unit_ResourceQuantityRequirements
	(UnitType, ResourceType, Cost)
SELECT
	Type, 'RESOURCE_PAPER', 1
FROM Units
WHERE Class IN ('UNITCLASS_EMISSARY', 'UNITCLASS_ENVOY');

INSERT INTO Unit_ResourceQuantityRequirements
	(UnitType, ResourceType, Cost)
SELECT
	Type, 'RESOURCE_PAPER', 2
FROM Units
WHERE Class IN ('UNITCLASS_DIPLOMAT', 'UNITCLASS_AMBASSADOR');

----------------------------------------------------------------------------
-- Base promotions
----------------------------------------------------------------------------

-- Mounted, Armor and Siege cannot benefit from defensive terrain or fortify
INSERT INTO Unit_FreePromotions
	(UnitType, PromotionType)
SELECT
	Type, 'PROMOTION_NO_DEFENSIVE_BONUSES'
FROM Units
WHERE CombatClass IN (
	'UNITCOMBAT_MOUNTED',
	'UNITCOMBAT_ARMOR',
	'UNITCOMBAT_SIEGE'
) OR IsMounted = 1;

-- Mounted, Armor and Submarine can move after attacking
INSERT INTO Unit_FreePromotions
	(UnitType, PromotionType)
SELECT
	Type, 'PROMOTION_CAN_MOVE_AFTER_ATTACKING'
FROM Units
WHERE CombatClass IN (
	'UNITCOMBAT_MOUNTED',
	'UNITCOMBAT_ARMOR',
	'UNITCOMBAT_SUBMARINE'
) OR IsMounted = 1;

-- Mounted have penalty when attacking cities
INSERT INTO Unit_FreePromotions
	(UnitType, PromotionType)
SELECT
	Type, 'PROMOTION_CITY_PENALTY'
FROM Units
WHERE CombatClass = 'UNITCOMBAT_MOUNTED' OR IsMounted = 1;

-- Armor have general defensive bonuses
INSERT INTO Unit_FreePromotions
	(UnitType, PromotionType)
SELECT
	Type, 'PROMOTION_ARMOR_PLATING_1'
FROM Units
WHERE CombatClass = 'UNITCOMBAT_ARMOR';

-- Ranged units cannot melee attack
INSERT INTO Unit_FreePromotions
	(UnitType, PromotionType)
SELECT
	Type, 'PROMOTION_ONLY_DEFENSIVE'
FROM Units
WHERE CombatClass IN (SELECT Type FROM UnitCombatInfos WHERE IsRanged = 1);

-- Land Ranged have penalty when attacking ships
INSERT INTO Unit_FreePromotions
	(UnitType, PromotionType)
SELECT
	Type, 'PROMOTION_NAVAL_MISFIRE'
FROM Units
WHERE CombatClass = 'UNITCOMBAT_ARCHER';

-- Siege have bonus attacking cities, penalty when attacking land units,
-- move at half speed in enemy territory, and defend against ranged better
CREATE TEMP TABLE Helper (
	PromotionType TEXT
);

INSERT INTO Helper
VALUES
	('PROMOTION_CITY_SIEGE'),
	('PROMOTION_SIEGE_INACCURACY'),
	('PROMOTION_MUST_SET_UP'),
	('PROMOTION_COVER_1');

INSERT INTO Unit_FreePromotions
	(UnitType, PromotionType)
SELECT
	a.Type, b.PromotionType
FROM Units a, Helper b
WHERE a.CombatClass = 'UNITCOMBAT_SIEGE';

DELETE FROM Helper;

-- Rocket Artillery moves at full speed in enemy territory
DELETE FROM Unit_FreePromotions
WHERE UnitType IN (
	SELECT Type FROM Units WHERE Class = 'UNITCLASS_ROCKET_ARTILLERY'
) AND PromotionType = 'PROMOTION_MUST_SET_UP';

-- Recon ignore terrain cost
INSERT INTO Unit_FreePromotions
	(UnitType, PromotionType)
SELECT
	Type, 'PROMOTION_IGNORE_TERRAIN_COST'
FROM Units
WHERE CombatClass = 'UNITCOMBAT_RECON';

-- Submarines have bonus attack (except against cities), are invisible, can detect other submarines and can pass through ice
INSERT INTO Helper
VALUES
	('PROMOTION_SILENT_HUNTER'),
	('PROMOTION_BIG_CITY_PENALTY'),
	('PROMOTION_INVISIBLE_SUBMARINE'),
	('PROMOTION_SEE_INVISIBLE_SUBMARINE'),
	('PROMOTION_CAN_MOVE_IMPASSABLE');

INSERT INTO Unit_FreePromotions
	(UnitType, PromotionType)
SELECT
	a.Type, b.PromotionType
FROM Units a, Helper b
WHERE a.CombatClass = 'UNITCOMBAT_SUBMARINE';

DELETE FROM Helper;

-- Fighters can air sweep, intercept, view 6 tiles around, have bonus against units, but penalty against cities
INSERT INTO Helper
VALUES
	('PROMOTION_AIR_SWEEP'),
	('PROMOTION_INTERCEPTION_1'),
	('PROMOTION_AIR_RECON'),
	('PROMOTION_ANTI_AIR'),
	('PROMOTION_AIR_MISFIRE');

INSERT INTO Unit_FreePromotions
	(UnitType, PromotionType)
SELECT
	a.Type, b.PromotionType
FROM Units a, Helper b
WHERE a.CombatClass = 'UNITCOMBAT_FIGHTER';

DROP TABLE Helper;

-- UnitClass-specific promotions
CREATE TEMP TABLE UnitClass_FreePromotions (
	UnitClass TEXT,
	Promotion TEXT
);

INSERT INTO UnitClass_FreePromotions
VALUES
	-- Melee/Gun
	('UNITCLASS_WARRIOR', 'PROMOTION_BARBARIAN_BONUS'),
	('UNITCLASS_SPEARMAN', 'PROMOTION_FORMATION_1'),
	('UNITCLASS_PIKEMAN', 'PROMOTION_FORMATION_1'),
	('UNITCLASS_TERCIO', 'PROMOTION_FORMATION_1'),
	('UNITCLASS_RIFLEMAN', 'PROMOTION_FORMATION_1'),
	('UNITCLASS_SWORDSMAN', 'PROMOTION_FIELD_WORKS_0'),
	('UNITCLASS_LONGSWORDSMAN', 'PROMOTION_FIELD_WORKS_0'),
	('UNITCLASS_TERCIO', 'PROMOTION_FIELD_WORKS_0'),
	('UNITCLASS_RIFLEMAN', 'PROMOTION_FIELD_WORKS_1'),
	('UNITCLASS_GREAT_WAR_INFANTRY', 'PROMOTION_FIELD_WORKS_2'),
	('UNITCLASS_INFANTRY', 'PROMOTION_FIELD_WORKS_3'),
	('UNITCLASS_MECHANIZED_INFANTRY', 'PROMOTION_FIELD_WORKS_3'),
	-- Ranged
	('UNITCLASS_GATLINGGUN', 'PROMOTION_COVERING_FIRE_1'),
	('UNITCLASS_MACHINE_GUN', 'PROMOTION_COVERING_FIRE_1'),
	('UNITCLASS_BAZOOKA', 'PROMOTION_COVERING_FIRE_2'),
	('UNITCLASS_BAZOOKA', 'PROMOTION_ANTI_TANK'),
	-- Mounted Melee/Armor
	('UNITCLASS_ELEPHANT_RIDER', 'PROMOTION_FEARED_ELEPHANT'),
	('UNITCLASS_MECH', 'PROMOTION_MECH'),
	('UNITCLASS_MECH', 'PROMOTION_AMPHIBIOUS'),
	-- Skirmisher
	('UNITCLASS_CHARIOT_ARCHER', 'PROMOTION_ROUGH_TERRAIN_HALF_TURN'),
	('UNITCLASS_HORSE_ARCHER', 'PROMOTION_SKIRMISHER_DOCTRINE'),
	('UNITCLASS_MOUNTED_BOWMAN', 'PROMOTION_SKIRMISHER_DOCTRINE'),
	('UNITCLASS_CUIRASSIER', 'PROMOTION_SKIRMISHER_DOCTRINE'),
	('UNITCLASS_CAVALRY', 'PROMOTION_SKIRMISHER_DOCTRINE'),
	('UNITCLASS_ANTI_TANK_GUN', 'PROMOTION_SKIRMISHER_DOCTRINE'),
	('UNITCLASS_HELICOPTER_GUNSHIP', 'PROMOTION_SKIRMISHER_DOCTRINE'),
	('UNITCLASS_HELICOPTER_GUNSHIP', 'PROMOTION_FLAT_MOVEMENT_COST'),
	('UNITCLASS_HELICOPTER_GUNSHIP', 'PROMOTION_HOVERING_UNIT'),
	('UNITCLASS_HELICOPTER_GUNSHIP', 'PROMOTION_ANTI_TANK'),
	-- Siege
	('UNITCLASS_FIELD_GUN', 'PROMOTION_INDIRECT_FIRE'),
	('UNITCLASS_ARTILLERY', 'PROMOTION_INDIRECT_FIRE'),
	('UNITCLASS_ROCKET_ARTILLERY', 'PROMOTION_INDIRECT_FIRE'),
	-- Anti-air
	('UNITCLASS_ANTI_AIRCRAFT_GUN', 'PROMOTION_ANTI_AIR'),
	('UNITCLASS_MOBILE_SAM', 'PROMOTION_ANTI_AIR'),
	('UNITCLASS_ANTI_AIRCRAFT_GUN', 'PROMOTION_INTERCEPTION_I'),
	('UNITCLASS_ANTI_AIRCRAFT_GUN', 'PROMOTION_INTERCEPTION_II'),
	('UNITCLASS_MOBILE_SAM', 'PROMOTION_INTERCEPTION_I'),
	('UNITCLASS_MOBILE_SAM', 'PROMOTION_INTERCEPTION_II'),
	('UNITCLASS_MOBILE_SAM', 'PROMOTION_INTERCEPTION_III'),
	-- Recon
	('UNITCLASS_PATHFINDER', 'PROMOTION_RECON_EXPERIENCE'),
	('UNITCLASS_SCOUT', 'PROMOTION_RECON_EXPERIENCE'),
	('UNITCLASS_EXPLORER', 'PROMOTION_RECON_EXPERIENCE'),
	('UNITCLASS_COMMANDO', 'PROMOTION_RECON_EXPERIENCE'),
	('UNITCLASS_EXPLORER', 'PROMOTION_DEFENSIVE_EMBARKATION'),
	('UNITCLASS_EXPLORER', 'PROMOTION_EMBARKED_SIGHT'),
	('UNITCLASS_EXPLORER', 'PROMOTION_OCEAN_CROSSING'),
	('UNITCLASS_EXPLORER', 'PROMOTION_BARBARIAN_BONUS'),
	('UNITCLASS_COMMANDO', 'PROMOTION_BARBARIAN_BONUS'),
	('UNITCLASS_COMMANDO', 'PROMOTION_COMMANDO'),
	('UNITCLASS_COMMANDO', 'PROMOTION_ATTACK_BONUS'),
	('UNITCLASS_PARATROOPER', 'PROMOTION_ATTACK_BONUS'),
	('UNITCLASS_MARINE', 'PROMOTION_ATTACK_BONUS'),
	('UNITCLASS_XCOM_SQUAD', 'PROMOTION_ATTACK_BONUS'),
	('UNITCLASS_COMMANDO', 'PROMOTION_SCOUT_XP_PILLAGE'),
	('UNITCLASS_PARATROOPER', 'PROMOTION_SCOUT_XP_PILLAGE'),
	('UNITCLASS_MARINE', 'PROMOTION_SCOUT_XP_PILLAGE'),
	('UNITCLASS_XCOM_SQUAD', 'PROMOTION_SCOUT_XP_PILLAGE'),
	('UNITCLASS_PARATROOPER', 'PROMOTION_PARADROP'),
	('UNITCLASS_MARINE', 'PROMOTION_PARADROP'),
	('UNITCLASS_XCOM_SQUAD', 'PROMOTION_EXTENDED_PARADROP'),
	('UNITCLASS_PARATROOPER', 'PROMOTION_FREE_PILLAGE_MOVES'),
	('UNITCLASS_MARINE', 'PROMOTION_AMPHIBIOUS'),
	('UNITCLASS_XCOM_SQUAD', 'PROMOTION_AMPHIBIOUS'),
	-- Naval Melee
	('UNITCLASS_GALLEY', 'PROMOTION_BARBARIAN_BONUS'),
	('UNITCLASS_GALLEY', 'PROMOTION_OCEAN_IMPASSABLE'),
	('UNITCLASS_TRIREME', 'PROMOTION_OCEAN_IMPASSABLE'),
	('UNITCLASS_GALLEY', 'PROMOTION_OCEAN_HALF_MOVES'),
	('UNITCLASS_TRIREME', 'PROMOTION_OCEAN_HALF_MOVES'),
	('UNITCLASS_EARLY_DESTROYER', 'PROMOTION_ANTI_SUBMARINE_I'),
	('UNITCLASS_DESTROYER', 'PROMOTION_ANTI_SUBMARINE_I'),
	('UNITCLASS_DESTROYER', 'PROMOTION_INTERCEPTION_I'),
	('UNITCLASS_MISSILE_DESTROYER', 'PROMOTION_ANTI_SUBMARINE_II'),
	('UNITCLASS_MISSILE_DESTROYER', 'PROMOTION_INTERCEPTION_I'),
	('UNITCLASS_MISSILE_DESTROYER', 'PROMOTION_INTERCEPTION_II'),
	('UNITCLASS_MISSILE_DESTROYER', 'PROMOTION_CARGO_III'),
	-- Naval Ranged
	('UNITCLASS_LIBURNA', 'PROMOTION_OCEAN_IMPASSABLE'),
	('UNITCLASS_LIBURNA', 'PROMOTION_OCEAN_HALF_MOVES'),
	('UNITCLASS_GALLEASS', 'PROMOTION_OCEAN_HALF_MOVES'),
	('UNITCLASS_LIBURNA', 'PROMOTION_NAVAL_INACCURACY'),
	('UNITCLASS_GALLEASS', 'PROMOTION_NAVAL_INACCURACY'),
	('UNITCLASS_LIBURNA', 'PROMOTION_CAN_MOVE_AFTER_ATTACKING'),
	('UNITCLASS_GALLEASS', 'PROMOTION_CAN_MOVE_AFTER_ATTACKING'),
	('UNITCLASS_BATTLESHIP', 'PROMOTION_INDIRECT_FIRE'),
	('UNITCLASS_MISSILE_CRUISER', 'PROMOTION_INDIRECT_FIRE'),
	('UNITCLASS_MISSILE_CRUISER', 'PROMOTION_ARMOR_PLATING_1'),
	('UNITCLASS_MISSILE_CRUISER', 'PROMOTION_CARGO_III'),
	-- Submarine
	('UNITCLASS_ATTACK_SUBMARINE', 'PROMOTION_CARGO_I'),
	('UNITCLASS_NUCLEAR_SUBMARINE', 'PROMOTION_CARGO_II'),
	-- Carrier
	('UNITCLASS_CARRIER', 'PROMOTION_CARGO_II'),
	('UNITCLASS_CARRIER', 'PROMOTION_INTERCEPTION_I'),
	('UNITCLASS_CARRIER', 'PROMOTION_ANTI_AIR'),
	('UNITCLASS_SUPERCARRIER', 'PROMOTION_CARGO_II'),
	('UNITCLASS_SUPERCARRIER', 'PROMOTION_CARGO_III'),
	('UNITCLASS_SUPERCARRIER', 'PROMOTION_INTERCEPTION_I'),
	('UNITCLASS_SUPERCARRIER', 'PROMOTION_INTERCEPTION_II'),
	('UNITCLASS_SUPERCARRIER', 'PROMOTION_INTERCEPTION_III'),
	('UNITCLASS_SUPERCARRIER', 'PROMOTION_ANTI_AIR'),
	('UNITCLASS_SUPERCARRIER', 'PROMOTION_AIR_RECON'),
	('UNITCLASS_SUPERCARRIER', 'PROMOTION_SEE_INVISIBLE_SUBMARINE'),
	-- Fighter
	('UNITCLASS_FIGHTER', 'PROMOTION_RECON_RANGE_1'),
	('UNITCLASS_JET_FIGHTER', 'PROMOTION_RECON_RANGE_2'),
	('UNITCLASS_JET_FIGHTER', 'PROMOTION_ANTI_HELICOPTER'),
	-- Bomber
	('UNITCLASS_STEALTH_BOMBER', 'PROMOTION_AIR_RECON'),
	('UNITCLASS_STEALTH_BOMBER', 'PROMOTION_STEALTH'),
	-- Missile
	('UNITCLASS_ROCKET_MISSILE', 'PROMOTION_AIR_SIEGE_1'),
	('UNITCLASS_GUIDED_MISSILE', 'PROMOTION_AIR_SIEGE_1'),
	-- Nuke
	('UNITCLASS_NUCLEAR_MISSILE', 'PROMOTION_NUCLEAR_SILO'),
	-- Work Boat
	('UNITCLASS_WORKBOAT', 'PROMOTION_OCEAN_IMPASSABLE_UNTIL_ASTRONOMY'),
	-- Settler
	('UNITCLASS_PIONEER', 'PROMOTION_DEFENSIVE_EMBARKATION'),
	('UNITCLASS_COLONIST', 'PROMOTION_DEFENSIVE_EMBARKATION'),
	('UNITCLASS_COLONIST', 'PROMOTION_OCEAN_MOVEMENT'),
	-- Missionary
	('UNITCLASS_MISSIONARY', 'PROMOTION_UNWELCOME_EVANGELIST'),
	-- Diplo units
	('UNITCLASS_EMISSARY', 'PROMOTION_EMISSARY'),
	('UNITCLASS_ENVOY', 'PROMOTION_ENVOY'),
	('UNITCLASS_DIPLOMAT', 'PROMOTION_DIPLOMAT'),
	('UNITCLASS_AMBASSADOR', 'PROMOTION_AMBASSADOR'),
	-- Great People
	('UNITCLASS_MUSICIAN', 'PROMOTION_RIVAL_TERRITORY'),
	('UNITCLASS_GREAT_DIPLOMAT', 'PROMOTION_GREAT_DIPLOMAT'),
	('UNITCLASS_PROPHET', 'PROMOTION_RIVAL_TERRITORY'),
	('UNITCLASS_GREAT_GENERAL', 'PROMOTION_GREAT_GENERAL'),
	('UNITCLASS_GREAT_GENERAL', 'PROMOTION_SUPPLY_BOOST'),
	('UNITCLASS_GREAT_ADMIRAL', 'PROMOTION_GREAT_ADMIRAL'),
	('UNITCLASS_GREAT_ADMIRAL', 'PROMOTION_SUPPLY_BOOST');

INSERT INTO Unit_FreePromotions
	(UnitType, PromotionType)
SELECT
	a.Type, b.Promotion
FROM Units a, UnitClass_FreePromotions b
WHERE a.Class = b.UnitClass;

DROP TABLE UnitClass_FreePromotions;

----------------------------------------------------------------------------
-- Unit upgrades
----------------------------------------------------------------------------
CREATE TEMP TABLE UnitClass_Upgrades (
	UnitClass TEXT,
	UpgradeClass TEXT
);

INSERT INTO UnitClass_Upgrades
VALUES
	-- Melee/Gun
	('UNITCLASS_WARRIOR', 'UNITCLASS_SPEARMAN'),
	('UNITCLASS_SPEARMAN', 'UNITCLASS_PIKEMAN'),
	('UNITCLASS_SWORDSMAN', 'UNITCLASS_LONGSWORDSMAN'),
	('UNITCLASS_PIKEMAN', 'UNITCLASS_TERCIO'),
	('UNITCLASS_LONGSWORDSMAN', 'UNITCLASS_TERCIO'),
	('UNITCLASS_TERCIO', 'UNITCLASS_RIFLEMAN'),
	('UNITCLASS_RIFLEMAN', 'UNITCLASS_GREAT_WAR_INFANTRY'),
	('UNITCLASS_GREAT_WAR_INFANTRY', 'UNITCLASS_INFANTRY'),
	('UNITCLASS_INFANTRY', 'UNITCLASS_MECHANIZED_INFANTRY'),
	-- Ranged
	('UNITCLASS_VP_SLINGER', 'UNITCLASS_ARCHER'),
	('UNITCLASS_ARCHER', 'UNITCLASS_COMPOSITE_BOWMAN'),
	('UNITCLASS_COMPOSITE_BOWMAN', 'UNITCLASS_CROSSBOWMAN'),
	('UNITCLASS_CROSSBOWMAN', 'UNITCLASS_MUSKETMAN'),
	('UNITCLASS_MUSKETMAN', 'UNITCLASS_GATLINGGUN'),
	('UNITCLASS_GATLINGGUN', 'UNITCLASS_MACHINE_GUN'),
	('UNITCLASS_MACHINE_GUN', 'UNITCLASS_BAZOOKA'),
	-- Mounted Melee/Armor
	('UNITCLASS_HORSEMAN', 'UNITCLASS_KNIGHT'),
	('UNITCLASS_ELEPHANT_RIDER', 'UNITCLASS_KNIGHT'),
	('UNITCLASS_KNIGHT', 'UNITCLASS_LANCER'),
	('UNITCLASS_LANCER', 'UNITCLASS_WWI_TANK'),
	('UNITCLASS_WWI_TANK', 'UNITCLASS_TANK'),
	('UNITCLASS_TANK', 'UNITCLASS_MODERN_ARMOR'),
	('UNITCLASS_MODERN_ARMOR', 'UNITCLASS_MECH'),
	-- Skirmisher
	('UNITCLASS_CHARIOT_ARCHER', 'UNITCLASS_HORSE_ARCHER'),
	('UNITCLASS_HORSE_ARCHER', 'UNITCLASS_MOUNTED_BOWMAN'),
	('UNITCLASS_MOUNTED_BOWMAN', 'UNITCLASS_CUIRASSIER'),
	('UNITCLASS_CUIRASSIER', 'UNITCLASS_CAVALRY'),
	('UNITCLASS_CAVALRY', 'UNITCLASS_ANTI_TANK_GUN'),
	('UNITCLASS_ANTI_TANK_GUN', 'UNITCLASS_HELICOPTER_GUNSHIP'),
	-- Siege
	('UNITCLASS_CATAPULT', 'UNITCLASS_TREBUCHET'),
	('UNITCLASS_TREBUCHET', 'UNITCLASS_CANNON'),
	('UNITCLASS_CANNON', 'UNITCLASS_FIELD_GUN'),
	('UNITCLASS_FIELD_GUN', 'UNITCLASS_ARTILLERY'),
	('UNITCLASS_ARTILLERY', 'UNITCLASS_ROCKET_ARTILLERY'),
	-- Recon
	('UNITCLASS_PATHFINDER', 'UNITCLASS_SCOUT'),
	('UNITCLASS_SCOUT', 'UNITCLASS_EXPLORER'),
	('UNITCLASS_EXPLORER', 'UNITCLASS_COMMANDO'),
	('UNITCLASS_COMMANDO', 'UNITCLASS_PARATROOPER'),
	('UNITCLASS_PARATROOPER', 'UNITCLASS_MARINE'),
	('UNITCLASS_MARINE', 'UNITCLASS_XCOM_SQUAD'),
	-- Anti-air
	('UNITCLASS_ANTI_AIRCRAFT_GUN', 'UNITCLASS_MOBILE_SAM'),
	-- Naval Melee
	('UNITCLASS_GALLEY', 'UNITCLASS_TRIREME'),
	('UNITCLASS_TRIREME', 'UNITCLASS_CARAVEL'),
	('UNITCLASS_CARAVEL', 'UNITCLASS_PRIVATEER'),
	('UNITCLASS_PRIVATEER', 'UNITCLASS_IRONCLAD'),
	('UNITCLASS_IRONCLAD', 'UNITCLASS_EARLY_DESTROYER'),
	('UNITCLASS_EARLY_DESTROYER', 'UNITCLASS_DESTROYER'),
	('UNITCLASS_DESTROYER', 'UNITCLASS_MISSILE_DESTROYER'),
	-- Naval Ranged
	('UNITCLASS_LIBURNA', 'UNITCLASS_GALLEASS'),
	('UNITCLASS_GALLEASS', 'UNITCLASS_FRIGATE'),
	('UNITCLASS_FRIGATE', 'UNITCLASS_CRUISER'),
	('UNITCLASS_CRUISER', 'UNITCLASS_DREADNOUGHT'),
	('UNITCLASS_DREADNOUGHT', 'UNITCLASS_BATTLESHIP'),
	('UNITCLASS_BATTLESHIP', 'UNITCLASS_MISSILE_CRUISER'),
	-- Submarine
	('UNITCLASS_SUBMARINE', 'UNITCLASS_ATTACK_SUBMARINE'),
	('UNITCLASS_ATTACK_SUBMARINE', 'UNITCLASS_NUCLEAR_SUBMARINE'),
	-- Carrier
	('UNITCLASS_CARRIER', 'UNITCLASS_SUPERCARRIER'),
	-- Fighter
	('UNITCLASS_TRIPLANE', 'UNITCLASS_FIGHTER'),
	('UNITCLASS_FIGHTER', 'UNITCLASS_JET_FIGHTER'),
	-- Bomber
	('UNITCLASS_WWI_BOMBER', 'UNITCLASS_BOMBER'),
	('UNITCLASS_BOMBER', 'UNITCLASS_STEALTH_BOMBER'),
	-- Missile
	('UNITCLASS_ROCKET_MISSILE', 'UNITCLASS_GUIDED_MISSILE'),
	-- Settler
	('UNITCLASS_SETTLER', 'UNITCLASS_PIONEER'),
	('UNITCLASS_PIONEER', 'UNITCLASS_COLONIST'),
	-- Diplo units
	('UNITCLASS_EMISSARY', 'UNITCLASS_ENVOY'),
	('UNITCLASS_ENVOY', 'UNITCLASS_DIPLOMAT'),
	('UNITCLASS_DIPLOMAT', 'UNITCLASS_AMBASSADOR');

INSERT INTO Unit_ClassUpgrades
	(UnitType, UnitClassType)
SELECT
	a.Type, b.UpgradeClass
FROM Units a, UnitClass_Upgrades b
WHERE a.Class = b.UnitClass;

DROP TABLE UnitClass_Upgrades;

----------------------------------------------------------------------------
-- Buildings required for purchase
----------------------------------------------------------------------------
CREATE TEMP TABLE Era_BuildingClassRequiredForPurchase (
	EraType TEXT,
	LandBuildingClass TEXT,
	SeaBuildingClass TEXT,
	AirBuildingClass TEXT
);

INSERT INTO Era_BuildingClassRequiredForPurchase
	(EraType, LandBuildingClass)
VALUES
	('ERA_CLASSICAL', 'BUILDINGCLASS_BARRACKS'),
	('ERA_MEDIEVAL', 'BUILDINGCLASS_BARRACKS'),
	('ERA_RENAISSANCE', 'BUILDINGCLASS_ARMORY'),
	('ERA_INDUSTRIAL', 'BUILDINGCLASS_ARMORY'),
	('ERA_MODERN', 'BUILDINGCLASS_MILITARY_ACADEMY'),
	('ERA_POSTMODERN', 'BUILDINGCLASS_MILITARY_ACADEMY'),
	('ERA_FUTURE', 'BUILDINGCLASS_MILITARY_BASE');

INSERT INTO Era_BuildingClassRequiredForPurchase
	(EraType, SeaBuildingClass)
VALUES
	('ERA_CLASSICAL', 'BUILDINGCLASS_LIGHTHOUSE'),
	('ERA_MEDIEVAL', 'BUILDINGCLASS_HARBOR'),
	('ERA_RENAISSANCE', 'BUILDINGCLASS_HARBOR'),
	('ERA_INDUSTRIAL', 'BUILDINGCLASS_SEAPORT'),
	('ERA_MODERN', 'BUILDINGCLASS_SEAPORT'),
	('ERA_POSTMODERN', 'BUILDINGCLASS_SEAPORT'),
	('ERA_POSTMODERN', 'BUILDINGCLASS_MILITARY_ACADEMY'),
	('ERA_FUTURE', 'BUILDINGCLASS_SEAPORT'),
	('ERA_FUTURE', 'BUILDINGCLASS_MILITARY_BASE');

INSERT INTO Era_BuildingClassRequiredForPurchase
	(EraType, AirBuildingClass)
VALUES
	('ERA_MODERN', 'BUILDINGCLASS_MILITARY_ACADEMY'),
	('ERA_POSTMODERN', 'BUILDINGCLASS_AIRPORT'),
	('ERA_POSTMODERN', 'BUILDINGCLASS_MILITARY_ACADEMY'),
	('ERA_FUTURE', 'BUILDINGCLASS_AIRPORT'),
	('ERA_FUTURE', 'BUILDINGCLASS_MILITARY_BASE');

-- Land units
INSERT INTO Unit_BuildingClassPurchaseRequireds
	(UnitType, BuildingClassType)
SELECT
	a.Type, b.LandBuildingClass
FROM Units a, Era_BuildingClassRequiredForPurchase b
WHERE a.PrereqTech IN (
	SELECT Type FROM Technologies WHERE Era = b.EraType
)
AND b.LandBuildingClass IS NOT NULL
AND a.PurchaseOnly = 0
AND a.MinorCivGift = 0
AND a.CombatClass IN (
	SELECT Type FROM UnitCombatInfos WHERE IsMilitary = 1 AND IsNaval = 0 AND IsAerial = 0
);

-- Naval units
INSERT INTO Unit_BuildingClassPurchaseRequireds
	(UnitType, BuildingClassType)
SELECT
	a.Type, b.SeaBuildingClass
FROM Units a, Era_BuildingClassRequiredForPurchase b
WHERE a.PrereqTech IN (
	SELECT Type FROM Technologies WHERE Era = b.EraType
)
AND b.SeaBuildingClass IS NOT NULL
AND a.PurchaseOnly = 0
AND a.MinorCivGift = 0
AND a.CombatClass IN (
	SELECT Type FROM UnitCombatInfos WHERE IsNaval = 1
);

-- Air units
INSERT INTO Unit_BuildingClassPurchaseRequireds
	(UnitType, BuildingClassType)
SELECT
	a.Type, b.AirBuildingClass
FROM Units a, Era_BuildingClassRequiredForPurchase b
WHERE a.PrereqTech IN (
	SELECT Type FROM Technologies WHERE Era = b.EraType
)
AND b.AirBuildingClass IS NOT NULL
AND a.PurchaseOnly = 0
AND a.MinorCivGift = 0
AND a.CombatClass IN (
	SELECT Type FROM UnitCombatInfos WHERE IsAerial = 1
);

DROP TABLE Era_BuildingClassRequiredForPurchase;

-- From Renaissance on, mounted also need Stable
INSERT INTO Unit_BuildingClassPurchaseRequireds
	(UnitType, BuildingClassType)
SELECT
	Type, 'BUILDINGCLASS_STABLE'
FROM Units
WHERE Class IN (
	'UNITCLASS_LANCER',
	'UNITCLASS_CUIRASSIER',
	'UNITCLASS_CAVALRY'
)
AND MinorCivGift = 0;

-- Spaceship parts
INSERT INTO Unit_BuildingClassPurchaseRequireds
	(UnitType, BuildingClassType)
SELECT
	Type, 'BUILDINGCLASS_SPACESHIP_FACTORY'
FROM Units
WHERE SpaceshipProject IS NOT NULL;

-- The rest
CREATE TEMP TABLE Helper2 (
	UnitClass TEXT,
	BuildingClassType TEXT
);

INSERT INTO Helper2
VALUES
	('UNITCLASS_HELICOPTER_GUNSHIP', 'BUILDINGCLASS_AIRPORT'),
	('UNITCLASS_CARAVAN', 'BUILDINGCLASS_CARAVANSARY'),
	('UNITCLASS_CARGO_SHIP', 'BUILDINGCLASS_HARBOR'),
	('UNITCLASS_ENVOY', 'BUILDINGCLASS_CHANCERY'),
	('UNITCLASS_DIPLOMAT', 'BUILDINGCLASS_CHANCERY'),
	('UNITCLASS_AMBASSADOR', 'BUILDINGCLASS_WIRE_SERVICE'),
	('UNITCLASS_ROCKET_MISSILE', 'BUILDINGCLASS_MILITARY_ACADEMY'),
	('UNITCLASS_GUIDED_MISSILE', 'BUILDINGCLASS_MILITARY_ACADEMY'),
	('UNITCLASS_GUIDED_MISSILE', 'BUILDINGCLASS_AIRPORT');

INSERT INTO Unit_BuildingClassPurchaseRequireds
	(UnitType, BuildingClassType)
SELECT
	a.Type, b.BuildingClassType
FROM Units a, Helper2 b
WHERE a.Class = b.UnitClass;

DROP TABLE Helper2;

-- Scouts don't have requirement
DELETE FROM Unit_BuildingClassPurchaseRequireds
WHERE UnitType IN (
	SELECT Type FROM Units WHERE Class = 'UNITCLASS_SCOUT'
);

-- Explorers require Harbor instead of Barracks
UPDATE Unit_BuildingClassPurchaseRequireds
SET BuildingClassType = 'BUILDINGCLASS_HARBOR'
WHERE UnitType IN (
	SELECT Type FROM Units WHERE Class = 'UNITCLASS_EXPLORER'
);

----------------------------------------------------------------------------
-- Great Diplomat names
----------------------------------------------------------------------------
INSERT INTO Unit_UniqueNames
	(UnitType, UniqueName, EraType)
VALUES
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_KISSINGER', NULL),
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_ALBRIGHT', NULL),
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_ANNAN', NULL),
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_BAN', NULL),
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_BELL', NULL),
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_DINTEVILLE', NULL),
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_DURRELL', NULL),
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_DAG', NULL),
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_WHOWARD', NULL),
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_JAY', NULL),
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_KOLLONTAI', NULL),
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_LAWRENCE', NULL),
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_METTERNICH', NULL),
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_NERUDA', NULL),
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_ODO', NULL),
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_SELVE', NULL),
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_SEWARD', NULL),
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_SHIGERU', NULL),
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_SZABO', NULL),
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_TALLEYRAND', NULL),
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_THANT', NULL),
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_WALDHEIM', NULL),
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_WALLENBERG', NULL),
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_WEIJUN', NULL),
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_ZIMMERMAN', NULL),
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__010', 'ERA_ANCIENT'), -- ~-1280
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__020', 'ERA_CLASSICAL'), -- -229
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__025', 'ERA_CLASSICAL'), -- -114
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__030', 'ERA_CLASSICAL'), -- 395
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__035', 'ERA_MEDIEVAL'), -- ~600
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__040', 'ERA_MEDIEVAL'), -- ~1200
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__050', 'ERA_RENAISSANCE'), -- 1478
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__060', 'ERA_RENAISSANCE'), -- 1491
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__080', 'ERA_RENAISSANCE'), -- 1523
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__090', 'ERA_RENAISSANCE'), -- 1581
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__100', 'ERA_RENAISSANCE'), -- 1583
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__110', 'ERA_RENAISSANCE'), -- 1594
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__120', 'ERA_RENAISSANCE'), -- ~1640
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__130', 'ERA_RENAISSANCE'), -- 1737
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__140', 'ERA_RENAISSANCE'), -- 1786
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__150', 'ERA_RENAISSANCE'), -- 1786
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__070', 'ERA_INDUSTRIAL'), -- 1825
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__160', 'ERA_INDUSTRIAL'), -- 1861
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__170', 'ERA_INDUSTRIAL'), -- 1871
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__180', 'ERA_INDUSTRIAL'), -- 1876
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__190', 'ERA_INDUSTRIAL'), -- 1877
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__200', 'ERA_INDUSTRIAL'), -- 1897
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__210', 'ERA_INDUSTRIAL'), -- 1898
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__220', 'ERA_INDUSTRIAL'), -- 1899
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__230', 'ERA_INDUSTRIAL'), -- 1900	
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__240', 'ERA_INDUSTRIAL'), -- 1904
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__250', 'ERA_INDUSTRIAL'), -- 1904
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__260', 'ERA_INDUSTRIAL'), -- 1906
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__270', 'ERA_INDUSTRIAL'), -- 1909
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__280', 'ERA_MODERN'), -- 1917
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__290', 'ERA_MODERN'), -- 1917
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__300', 'ERA_MODERN'), -- 1920
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__310', 'ERA_MODERN'), -- 1922
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__320', 'ERA_MODERN'), -- 1923
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__330', 'ERA_MODERN'), -- 1925
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__340', 'ERA_MODERN'), -- 1928
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__350', 'ERA_MODERN'), -- 1928
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__360', 'ERA_MODERN'), -- 1930
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__370', 'ERA_MODERN'), -- 1931	
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__380', 'ERA_MODERN'), -- 1936
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__390', 'ERA_MODERN'), -- 1936
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__400', 'ERA_MODERN'), -- 1936
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__410', 'ERA_MODERN'), -- 1937
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__420', 'ERA_MODERN'), -- 1937
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__430', 'ERA_MODERN'), -- 1937
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__440', 'ERA_MODERN'), -- 1938
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__450', 'ERA_MODERN'), -- 1938
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__460', 'ERA_MODERN'), -- 1941
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__470', 'ERA_MODERN'), -- 1942
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__480', 'ERA_MODERN'), -- 1943
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__490', 'ERA_MODERN'), -- 1944
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__500', 'ERA_MODERN'), -- 1944
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__510', 'ERA_POSTMODERN'), -- 1947
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__520', 'ERA_POSTMODERN'), -- 1948
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__530', 'ERA_POSTMODERN'), -- 1951
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__540', 'ERA_POSTMODERN'), -- 1951
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__550', 'ERA_POSTMODERN'), -- 1952
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__560', 'ERA_POSTMODERN'), -- 1954
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__570', 'ERA_POSTMODERN'), -- 1954
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__580', 'ERA_POSTMODERN'), -- 1955
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__590', 'ERA_POSTMODERN'), -- 1957
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__600', 'ERA_POSTMODERN'), -- 1957
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__610', 'ERA_POSTMODERN'), -- 1962
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__620', 'ERA_POSTMODERN'), -- 1964
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__630', 'ERA_POSTMODERN'), -- 1965
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__640', 'ERA_POSTMODERN'), -- 1972
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__650', 'ERA_POSTMODERN'), -- 1972
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__660', 'ERA_POSTMODERN'), -- 1973
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__670', 'ERA_POSTMODERN'), -- 1975
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__680', 'ERA_POSTMODERN'), -- 1976
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__690', 'ERA_POSTMODERN'), -- 1978
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__700', 'ERA_FUTURE'), -- 1993
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__710', 'ERA_FUTURE'), -- 1997
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__720', 'ERA_FUTURE'), -- 2001
	('UNIT_GREAT_DIPLOMAT', 'TXT_KEY_GREAT_PERSON_D__730', 'ERA_FUTURE'); -- 2003
