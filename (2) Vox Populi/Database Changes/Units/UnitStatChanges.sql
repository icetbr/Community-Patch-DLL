-- All changes here are made based on UnitCombat or UnitClass.
-- See respective civilization files for Unique Unit stat deltas.
-- Note that CS/Policy-exclusive units still have generic UnitClasses here instead of their own,
-- which will be updated in CityStateUnitChanges.sql/PolicyUnitChanges.sql

----------------------------------------------
-- Moves
----------------------------------------------

-- Default
UPDATE Units SET Moves = 2;

UPDATE Units SET Moves = 4 WHERE CombatClass IN (
	'UNITCOMBAT_MOUNTED',
	'UNITCOMBAT_NAVALRANGED'
);

-- Skirmishers
UPDATE Units
SET Moves = 5
WHERE CombatClass = 'UNITCOMBAT_ARCHER' AND IsMounted = 1;

-- Outliers
UPDATE Units
SET Moves = 3
WHERE Class IN (
	'UNITCLASS_MECHANIZED_INFANTRY',
	'UNITCLASS_MOBILE_SAM',
	'UNITCLASS_EXPLORER',
	'UNITCLASS_COMMANDO',
	'UNITCLASS_ELEPHANT_RIDER'
);

UPDATE Units SET Moves = 4 WHERE Class = 'UNITCLASS_CHARIOT_ARCHER';
UPDATE Units SET Moves = 5 WHERE Class = 'UNITCLASS_BATTLESHIP';
UPDATE Units SET Moves = 6 WHERE Class IN (
	'UNITCLASS_HELICOPTER_GUNSHIP',
	'UNITCLASS_MISSILE_CRUISER'
);

-- Others
CREATE TEMP TABLE UnitClass_Moves (
	UnitClass TEXT,
	UnitMoves INTEGER
);

INSERT INTO UnitClass_Moves
VALUES
	-- Armor
	('UNITCLASS_WWI_TANK', 4),
	('UNITCLASS_TANK', 5),
	('UNITCLASS_MODERN_ARMOR', 5),
	('UNITCLASS_MECH', 8),
	-- Naval Melee
	('UNITCLASS_GALLEY', 3),
	('UNITCLASS_TRIREME', 5),
	('UNITCLASS_CARAVEL', 4),
	('UNITCLASS_PRIVATEER', 4),
	('UNITCLASS_IRONCLAD', 5),
	('UNITCLASS_EARLY_DESTROYER', 5),
	('UNITCLASS_DESTROYER', 5),
	('UNITCLASS_MISSILE_DESTROYER', 6),
	-- Submarine
	('UNITCLASS_SUBMARINE', 4),
	('UNITCLASS_ATTACK_SUBMARINE', 5),
	('UNITCLASS_NUCLEAR_SUBMARINE', 6),
	-- Carrier
	('UNITCLASS_CARRIER', 5),
	('UNITCLASS_SUPERCARRIER', 6),
	-- Worker
	('UNITCLASS_WORKER', 2),
	-- Work Boat
	('UNITCLASS_WORKBOAT', 2),
	-- Settler
	('UNITCLASS_WORKBOAT', 2),
	('UNITCLASS_PIONEER', 3),
	('UNITCLASS_COLONIST', 4),
	-- Caravan
	('UNITCLASS_CARAVAN', 2),
	-- Cargo Ship
	('UNITCLASS_CARGO_SHIP', 4),
	-- Missionary
	('UNITCLASS_MISSIONARY', 4),
	-- Inquisitor
	('UNITCLASS_INQUISITOR', 3),
	-- Diplo units
	('UNITCLASS_EMISSARY', 2),
	('UNITCLASS_ENVOY', 3),
	('UNITCLASS_DIPLOMAT', 4),
	('UNITCLASS_AMBASSADOR', 4),
	-- Other civilians
	('UNITCLASS_ASSYRIAN_SIEGE_TOWER', 4),
	('UNITCLASS_ARCHAEOLOGIST', 4),
	('UNITCLASS_PROPHET', 4),
	('UNITCLASS_GREAT_ADMIRAL', 6),
	('UNITCLASS_GREAT_DIPLOMAT', 5);

UPDATE Units
SET Moves = (SELECT UnitMoves FROM UnitClass_Moves WHERE UnitClass = Class)
WHERE EXISTS (SELECT 1 FROM UnitClass_Moves WHERE UnitClass = Class);

DROP TABLE UnitClass_Moves;

----------------------------------------------
-- Sight Range
-- Note: trade units don't use this value
----------------------------------------------

-- Default
UPDATE Units SET BaseSightRange = 2;

-- Outliers
UPDATE Units
SET BaseSightRange = 1
WHERE CombatClass IN (
	'UNITCOMBAT_SIEGE',
	'UNITCOMBAT_DIPLOMACY'
);

UPDATE Units
SET BaseSightRange = 1
WHERE Class IN (
	'UNITCLASS_WORKBOAT',
	'UNITCLASS_PROPHET',
	'UNITCLASS_MISSIONARY'
);

UPDATE Units
SET BaseSightRange = 3
WHERE CombatClass = 'UNITCOMBAT_RECON' AND Class <> 'UNITCLASS_PATHFINDER';

UPDATE Units
SET BaseSightRange = 3
WHERE Class IN (
	'UNITCLASS_NUCLEAR_SUBMARINE',
	'UNITCLASS_SUPERCARRIER',
	'UNITCLASS_PIONEER',
	'UNITCLASS_COLONIST',
	'UNITCLASS_ASSYRIAN_SIEGE_TOWER'
);

----------------------------------------------
-- Combat Strength / Range
----------------------------------------------

-- Default
UPDATE Units SET Combat = 0, RangedCombat = 0, "Range" = 0;

CREATE TEMP TABLE UnitClass_MeleeStats (
	UnitClass TEXT,
	CS INTEGER
);

CREATE TEMP TABLE UnitClass_RangedStats (
	UnitClass TEXT,
	CS INTEGER,
	RCS INTEGER,
	RangeTemp INTEGER
);

INSERT INTO UnitClass_MeleeStats
VALUES
	-- Melee
	('UNITCLASS_WARRIOR', 8),
	('UNITCLASS_SPEARMAN', 12),
	('UNITCLASS_SWORDSMAN', 16),
	('UNITCLASS_PIKEMAN', 17),
	('UNITCLASS_LONGSWORDSMAN', 22),
	('UNITCLASS_TERCIO', 25),
	('UNITCLASS_RIFLEMAN', 38),
	('UNITCLASS_GREAT_WAR_INFANTRY', 50),
	('UNITCLASS_INFANTRY', 62),
	('UNITCLASS_MECHANIZED_INFANTRY', 80),
	-- Mounted Melee/Armor
	('UNITCLASS_HORSEMAN', 13),
	('UNITCLASS_ELEPHANT_RIDER', 16),
	('UNITCLASS_KNIGHT', 24),
	('UNITCLASS_LANCER', 37),
	('UNITCLASS_WWI_TANK', 60),
	('UNITCLASS_TANK', 75),
	('UNITCLASS_MODERN_ARMOR', 100),
	('UNITCLASS_MECH', 125),
	-- Recon
	('UNITCLASS_PATHFINDER', 6),
	('UNITCLASS_SCOUT', 10),
	('UNITCLASS_EXPLORER', 17),
	('UNITCLASS_COMMANDO', 32),
	('UNITCLASS_PARATROOPER', 42),
	('UNITCLASS_MARINE', 65),
	('UNITCLASS_XCOM_SQUAD', 75),
	-- Anti-air
	('UNITCLASS_ANTI_AIRCRAFT_GUN', 40),
	('UNITCLASS_MOBILE_SAM', 55),
	-- Naval Melee
	('UNITCLASS_GALLEY', 12),
	('UNITCLASS_TRIREME', 18),
	('UNITCLASS_CARAVEL', 25),
	('UNITCLASS_PRIVATEER', 40),
	('UNITCLASS_IRONCLAD', 55),
	('UNITCLASS_EARLY_DESTROYER', 70),
	('UNITCLASS_DESTROYER', 80),
	('UNITCLASS_MISSILE_DESTROYER', 90);

INSERT INTO UnitClass_RangedStats
VALUES
	-- Ranged
	('UNITCLASS_VP_SLINGER', 5, 6, 1),
	('UNITCLASS_ARCHER', 6, 9, 2),
	('UNITCLASS_COMPOSITE_BOWMAN', 12, 14, 2),
	('UNITCLASS_CROSSBOWMAN', 15, 19, 2),
	('UNITCLASS_MUSKETMAN', 22, 30, 2),
	('UNITCLASS_GATLINGGUN', 32, 44, 2),
	('UNITCLASS_MACHINE_GUN', 45, 58, 2),
	('UNITCLASS_BAZOOKA', 60, 80, 3),
	-- Siege
	('UNITCLASS_CATAPULT', 5, 13, 2),
	('UNITCLASS_TREBUCHET', 8, 20, 2),
	('UNITCLASS_CANNON', 11, 29, 2),
	('UNITCLASS_FIELD_GUN', 17, 40, 2),
	('UNITCLASS_ARTILLERY', 27, 50, 3),
	('UNITCLASS_ROCKET_ARTILLERY', 37, 75, 3),
	-- Skirmisher
	('UNITCLASS_CHARIOT_ARCHER', 8, 8, 1),
	('UNITCLASS_HORSE_ARCHER', 12, 8, 1),
	('UNITCLASS_MOUNTED_BOWMAN', 17, 14, 1),
	('UNITCLASS_CUIRASSIER', 27, 22, 1),
	('UNITCLASS_CAVALRY', 40, 31, 1),
	('UNITCLASS_ANTI_TANK_GUN', 58, 52, 1),
	('UNITCLASS_HELICOPTER_GUNSHIP', 70, 70, 1),
	-- Naval Ranged
	('UNITCLASS_LIBURNA', 7, 16, 1),
	('UNITCLASS_GALLEASS', 14, 24, 1),
	('UNITCLASS_FRIGATE', 25, 35, 2),
	('UNITCLASS_CRUISER', 40, 55, 2),
	('UNITCLASS_DREADNOUGHT', 50, 65, 2),
	('UNITCLASS_BATTLESHIP', 60, 75, 2),
	('UNITCLASS_MISSILE_CRUISER', 75, 80, 2),
	-- Submarine
	('UNITCLASS_SUBMARINE', 40, 60, 1),
	('UNITCLASS_ATTACK_SUBMARINE', 50, 72, 1),
	('UNITCLASS_NUCLEAR_SUBMARINE', 60, 85, 1),
	-- Carrier
	('UNITCLASS_CARRIER', 70, 45, 2),
	('UNITCLASS_SUPERCARRIER', 85, 70, 2),
	-- Fighter
	('UNITCLASS_TRIPLANE', 0, 45, 6),
	('UNITCLASS_FIGHTER', 0, 60, 8),
	('UNITCLASS_JET_FIGHTER', 0, 70, 10),
	-- Bomber
	('UNITCLASS_WWI_BOMBER', 0, 50, 6),
	('UNITCLASS_BOMBER', 0, 65, 8),
	('UNITCLASS_STEALTH_BOMBER', 0, 80, 12),
	-- Missile
	('UNITCLASS_ROCKET_MISSILE', 0, 120, 8),
	('UNITCLASS_GUIDED_MISSILE', 0, 180, 12),
	-- Nuke
	('UNITCLASS_ATOMIC_BOMB', 0, 0, 6),
	('UNITCLASS_NUCLEAR_MISSILE', 0, 0, 24);

UPDATE Units
SET Combat = (SELECT CS FROM UnitClass_MeleeStats WHERE UnitClass = Class)
WHERE EXISTS (SELECT 1 FROM UnitClass_MeleeStats WHERE UnitClass = Class);

UPDATE Units
SET
	Combat = (SELECT CS FROM UnitClass_RangedStats WHERE UnitClass = Class),
	RangedCombat = (SELECT RCS FROM UnitClass_RangedStats WHERE UnitClass = Class),
	"Range" = (SELECT RangeTemp FROM UnitClass_RangedStats WHERE UnitClass = Class)
WHERE EXISTS (SELECT 1 FROM UnitClass_RangedStats WHERE UnitClass = Class);

DROP TABLE UnitClass_MeleeStats;
DROP TABLE UnitClass_RangedStats;

----------------------------------------------
-- Air Defense
----------------------------------------------
CREATE TEMP TABLE UnitClass_AirDefense (
	UnitClass TEXT,
	AirDefense INTEGER
);

INSERT INTO UnitClass_AirDefense
VALUES
	-- Melee
	('UNITCLASS_RIFLEMAN', 4),
	('UNITCLASS_GREAT_WAR_INFANTRY', 5),
	('UNITCLASS_INFANTRY', 8),
	('UNITCLASS_MECHANIZED_INFANTRY', 15),
	-- Ranged
	('UNITCLASS_GATLINGGUN', 2),
	('UNITCLASS_MACHINE_GUN', 10),
	('UNITCLASS_BAZOOKA', 15),
	-- Siege
	('UNITCLASS_FIELD_GUN', 1),
	('UNITCLASS_ARTILLERY', 3),
	('UNITCLASS_ROCKET_ARTILLERY', 35),
	-- Armor
	('UNITCLASS_WWI_TANK', 3),
	('UNITCLASS_TANK', 3),
	('UNITCLASS_MODERN_ARMOR', 10),
	('UNITCLASS_MECH', 30),
	-- Skirmisher
	('UNITCLASS_CAVALRY', 2),
	('UNITCLASS_ANTI_TANK_GUN', 5),
	('UNITCLASS_HELICOPTER_GUNSHIP', 10),
	-- Recon
	('UNITCLASS_COMMANDO', 2),
	('UNITCLASS_PARATROOPER', 5),
	('UNITCLASS_MARINE', 10),
	('UNITCLASS_XCOM_SQUAD', 25),
	-- Anti-air
	('UNITCLASS_ANTI_AIRCRAFT_GUN', 20),
	('UNITCLASS_MOBILE_SAM', 40),
	-- Naval Melee
	('UNITCLASS_IRONCLAD', 5),
	('UNITCLASS_EARLY_DESTROYER', 15),
	('UNITCLASS_DESTROYER', 25),
	('UNITCLASS_MISSILE_DESTROYER', 35),
	-- Naval Ranged
	('UNITCLASS_CRUISER', 5),
	('UNITCLASS_DREADNOUGHT', 10),
	('UNITCLASS_BATTLESHIP', 15),
	('UNITCLASS_MISSILE_CRUISER', 20),
	-- Submarine
	('UNITCLASS_SUBMARINE', 5),
	('UNITCLASS_ATTACK_SUBMARINE', 10),
	('UNITCLASS_NUCLEAR_SUBMARINE', 15),
	-- Carrier
	('UNITCLASS_CARRIER', 40),
	('UNITCLASS_SUPERCARRIER', 50);

UPDATE Units
SET BaseLandAirDefense = (SELECT AirDefense FROM UnitClass_AirDefense WHERE UnitClass = Class)
WHERE EXISTS (SELECT 1 FROM UnitClass_AirDefense WHERE UnitClass = Class);

DROP TABLE UnitClass_AirDefense;
