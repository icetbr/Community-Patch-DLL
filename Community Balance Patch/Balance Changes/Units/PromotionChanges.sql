-- LAND PROMOTIONS

	-- Re-insert CP promotions
	INSERT INTO UnitPromotions(Type, Description, Help, Sound, ReconChange, LostWithUpgrade, PortraitIndex, IconAtlas, PediaType, PediaEntry)
  VALUES('PROMOTION_RECON_SHORT_RANGE', 'TXT_KEY_PROMOTION_RECON_SHORT_RANGE', 'TXT_KEY_PROMOTION_RECON_SHORT_RANGE_HELP', 'AS2D_IF_LEVELUP', -2, 1, 59, 'ABILITY_ATLAS', 'PEDIA_ATTRIBUTES', 'TXT_KEY_PEDIA_PROMOTION_RECON_SHORT_RANGE');

	INSERT INTO UnitPromotions(Type, Description, Help, Sound, ReconChange, LostWithUpgrade, PortraitIndex, IconAtlas, PediaType, PediaEntry)
  VALUES('PROMOTION_RECON_LONG_RANGE', 'TXT_KEY_PROMOTION_RECON_LONG_RANGE', 'TXT_KEY_PROMOTION_RECON_LONG_RANGE_HELP', 'AS2D_IF_LEVELUP', 2, 1, 59, 'ABILITY_ATLAS', 'PEDIA_ATTRIBUTES', 'TXT_KEY_PEDIA_PROMOTION_RECON_LONG_RANGE');

	-- Delete hangovers
	DELETE FROM Unit_FreePromotions
	WHERE PromotionType = 'PROMOTION_SHOCK_1' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	DELETE FROM Unit_FreePromotions
	WHERE PromotionType = 'PROMOTION_AIR_AMBUSH_1' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	DELETE FROM Unit_FreePromotions
	WHERE PromotionType = 'PROMOTION_AIR_AMBUSH_2' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	DELETE FROM UnitPromotions_Domains 
	WHERE PromotionType = 'PROMOTION_BOMBARDMENT_1' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	DELETE FROM UnitPromotions_Domains 
	WHERE PromotionType = 'PROMOTION_BOMBARDMENT_2' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	DELETE FROM UnitPromotions_Domains 
	WHERE PromotionType = 'PROMOTION_BOMBARDMENT_3' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	DELETE FROM UnitPromotions_Domains
	WHERE PromotionType = 'PROMOTION_AIR_AMBUSH_1' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	DELETE FROM UnitPromotions_Domains
	WHERE PromotionType = 'PROMOTION_AIR_AMBUSH_2' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	DELETE FROM UnitPromotions_UnitCombats 
	WHERE PromotionType = 'PROMOTION_INSTA_HEAL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	
	DELETE FROM UnitPromotions_UnitCombats
	WHERE PromotionType = 'PROMOTION_REPAIR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );



-- Make Discipline a double-mod, weaken a bit.

	UPDATE UnitPromotions
	SET CombatPercent = '5'
	WHERE Type = 'PROMOTION_ADJACENT_BONUS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE UnitPromotions
	SET AdjacentMod = '5'
	WHERE Type = 'PROMOTION_ADJACENT_BONUS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

-- NAVAL PROMOTIONS

-- Replace Targeting with +10% Combat Strength versus land and sea units.
	UPDATE UnitPromotions_Domains
	SET Modifier = '10'
	WHERE PromotionType = 'PROMOTION_TARGETING_1' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE UnitPromotions_Domains
	SET Modifier = '15'
	WHERE PromotionType = 'PROMOTION_TARGETING_2' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE UnitPromotions_Domains
	SET Modifier = '20'
	WHERE PromotionType = 'PROMOTION_TARGETING_3' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

-- Reduce anti-sub power a little

	UPDATE UnitPromotions_UnitClasses
	SET Modifier = '33'
	WHERE PromotionType = 'PROMOTION_ANTI_SUBMARINE_I' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE UnitPromotions_UnitClasses
	SET Modifier = '75'
	WHERE PromotionType = 'PROMOTION_ANTI_SUBMARINE_II' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

-- Melee Ship promotions a little too high - let's tone down
	UPDATE UnitPromotions_Domains
	SET Modifier = '10'
	WHERE PromotionType = 'PROMOTION_BOARDING_PARTY_1' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE UnitPromotions_Domains
	SET Modifier = '15'
	WHERE PromotionType = 'PROMOTION_BOARDING_PARTY_2' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE UnitPromotions_Domains
	SET Modifier = '20'
	WHERE PromotionType = 'PROMOTION_BOARDING_PARTY_3' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

-- Air Promotions -- Update Air Targeting to Hit all Domains
	UPDATE UnitPromotions_Domains
	SET Modifier = '15'
	WHERE PromotionType = 'PROMOTION_AIR_TARGETING_1' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE UnitPromotions_Domains
	SET Modifier = '15'
	WHERE PromotionType = 'PROMOTION_AIR_TARGETING_2' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

-- Siege Promotions -- Weaken them slightly

	UPDATE UnitPromotions
	SET CityAttack = '100'
	WHERE Type = 'PROMOTION_CITY_SIEGE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE UnitPromotions
	SET CityAttack = '100'
	WHERE Type = 'PROMOTION_CITY_SIEGE_II' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE UnitPromotions
	SET CityAttack = '150'
	WHERE Type = 'PROMOTION_CITY_ASSAULT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	

	-- Fix for Astronomy/Compass change
	UPDATE UnitPromotions_Terrains
	SET PassableTech = 'TECH_COMPASS'
	WHERE PromotionType = 'PROMOTION_OCEAN_IMPASSABLE_UNTIL_ASTRONOMY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	-- Fix for Morale Promotion - should only apply to land units
	DELETE FROM UnitPromotions_UnitCombats
	WHERE UnitCombatType = 'UNITCOMBAT_NAVALRANGED' AND PromotionType = 'PROMOTION_MORALE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	DELETE FROM UnitPromotions_UnitCombats
	WHERE UnitCombatType = 'UNITCOMBAT_NAVALMELEE' AND PromotionType = 'PROMOTION_MORALE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	DELETE FROM UnitPromotions_UnitCombats
	WHERE UnitCombatType = 'UNITCOMBAT_SUBMARINE' AND PromotionType = 'PROMOTION_MORALE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	-- Fix for Air Repair Promotion - should only apply to fighters
	DELETE FROM UnitPromotions_UnitCombats
	WHERE UnitCombatType = 'UNITCOMBAT_BOMBER' AND PromotionType = 'PROMOTION_AIR_REPAIR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	DELETE FROM UnitPromotions_UnitCombats
	WHERE UnitCombatType = 'UNITCOMBAT_BOMBER' AND PromotionType = 'PROMOTION_BOMBARDMENT_1' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	DELETE FROM UnitPromotions_UnitCombats
	WHERE UnitCombatType = 'UNITCOMBAT_BOMBER' AND PromotionType = 'PROMOTION_BOMBARDMENT_2' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	DELETE FROM UnitPromotions_UnitCombats
	WHERE UnitCombatType = 'UNITCOMBAT_BOMBER' AND PromotionType = 'PROMOTION_BOMBARDMENT_3' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	DELETE FROM UnitPromotions_UnitCombats
	WHERE UnitCombatType = 'UNITCOMBAT_BOMBER' AND PromotionType = 'PROMOTION_AIR_AMBUSH_1' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	DELETE FROM UnitPromotions_UnitCombats
	WHERE UnitCombatType = 'UNITCOMBAT_BOMBER' AND PromotionType = 'PROMOTION_AIR_AMBUSH_2' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

INSERT INTO UnitPromotions_YieldFromKills
	(PromotionType, YieldType, Yield)
VALUES
	('PROMOTION_ENSLAVEMENT', 'YIELD_PRODUCTION', 150);

INSERT INTO UnitPromotions_UnitCombatMods
	(PromotionType, UnitCombatType, Modifier)
VALUES
	('PROMOTION_KNOCKOUT_II', 'UNITCOMBAT_SIEGE', 25),
	('PROMOTION_KNOCKOUT_I', 'UNITCOMBAT_GUN', 25),
	('PROMOTION_RESPECT', 'UNITCOMBAT_MELEE', 15),
	('PROMOTION_RESPECT', 'UNITCOMBAT_GUN', 15),
	('PROMOTION_MODERN_RANGED_PENALTY_I', 'UNITCOMBAT_ARMOR', -25),
	('PROMOTION_ANTI_AIR_II', 'UNITCOMBAT_FIGHTER', 150),
	('PROMOTION_FORMATION_1', 'UNITCOMBAT_ARMOR', 25),
	('PROMOTION_FORMATION_2', 'UNITCOMBAT_ARMOR', 25);


INSERT INTO UnitPromotions_Features
	(PromotionType, FeatureType, DoubleMove)
VALUES
	('PROMOTION_WOODLAND_TRAILBLAZER_I', 'FEATURE_JUNGLE', 1),
	('PROMOTION_WOODLAND_TRAILBLAZER_I', 'FEATURE_FOREST', 1);

INSERT INTO UnitPromotions_Terrains
	(PromotionType, TerrainType, DoubleMove)
VALUES
	('PROMOTION_WOODLAND_TRAILBLAZER_II', 'TERRAIN_DESERT', 1),
	('PROMOTION_WOODLAND_TRAILBLAZER_II', 'TERRAIN_SNOW', 1);

INSERT INTO UnitPromotions_PostCombatRandomPromotion
	(PromotionType, NewPromotion)
VALUES
	('PROMOTION_BUSHIDO', 'PROMOTION_RIGHTEOUSNESS'),
	('PROMOTION_BUSHIDO', 'PROMOTION_COURAGE'),
	('PROMOTION_BUSHIDO', 'PROMOTION_BENEVOLENCE'),
	('PROMOTION_BUSHIDO', 'PROMOTION_RESPECT'),
	('PROMOTION_BUSHIDO', 'PROMOTION_SINCERITY'),
	('PROMOTION_BUSHIDO', 'PROMOTION_BUSHIDO_HONOR'),
	('PROMOTION_BUSHIDO', 'PROMOTION_LOYALTY'),
	('PROMOTION_BUSHIDO', 'PROMOTION_SELF_CONTROL');

INSERT INTO UnitPromotions_CivilianUnitType
	(PromotionType, UnitType)
VALUES
	('PROMOTION_FALLOUT_REDUCTION', 'UNIT_WORKER'),
	('PROMOTION_FALLOUT_IMMUNITY', 'UNIT_WORKER'),
	('PROMOTION_ICE_BREAKERS', 'UNIT_WORKBOAT'),
	('PROMOTION_FASTER_GENERAL', 'UNIT_GREAT_GENERAL');

INSERT INTO UnitPromotions_UnitCombats
	(PromotionType, UnitCombatType)
VALUES
	('PROMOTION_BUSHIDO', 'UNITCOMBAT_MELEE'),
	('PROMOTION_BUSHIDO', 'UNITCOMBAT_GUN'),
	('PROMOTION_BUSHIDO', 'UNITCOMBAT_MOUNTED'),
	('PROMOTION_BUSHIDO', 'UNITCOMBAT_ARMOR'),
	('PROMOTION_CHARGE_II', 'UNITCOMBAT_MOUNTED'),
	('PROMOTION_CHARGE_II', 'UNITCOMBAT_ARMOR'),
	('PROMOTION_FORMATION_2', 'UNITCOMBAT_MELEE'),
	('PROMOTION_FORMATION_2', 'UNITCOMBAT_GUN'),
	('PROMOTION_FORMATION_2', 'UNITCOMBAT_MOUNTED'),
	('PROMOTION_FORMATION_2', 'UNITCOMBAT_ARMOR'),
	('PROMOTION_WOODLAND_TRAILBLAZER_I', 'UNITCOMBAT_RECON'),
	('PROMOTION_WOODLAND_TRAILBLAZER_II', 'UNITCOMBAT_RECON'),
	('PROMOTION_WOODLAND_TRAILBLAZER_III', 'UNITCOMBAT_RECON'),
	('PROMOTION_ANTI_AIR_II', 'UNITCOMBAT_GUN'),
	('PROMOTION_MARCH', 'UNITCOMBAT_ARMOR'),
	('PROMOTION_MEDIC', 'UNITCOMBAT_NAVALMELEE'),
	('PROMOTION_MEDIC_II', 'UNITCOMBAT_NAVALMELEE'),
	('PROMOTION_MEDIC', 'UNITCOMBAT_ARCHER'),
	('PROMOTION_MEDIC_II', 'UNITCOMBAT_ARCHER'),
	('PROMOTION_ARSENALE', 'UNITCOMBAT_NAVALMELEE'),
	('PROMOTION_ARSENALE', 'UNITCOMBAT_NAVALRANGED'),
	('PROMOTION_ACCURACY_4', 'UNITCOMBAT_SIEGE'),
	('PROMOTION_ACCURACY_4', 'UNITCOMBAT_ARCHER'),
	('PROMOTION_BARRAGE_4', 'UNITCOMBAT_SIEGE'),
	('PROMOTION_BARRAGE_4', 'UNITCOMBAT_ARCHER'),
	('PROMOTION_SHOCK_4', 'UNITCOMBAT_MOUNTED'),
	('PROMOTION_SHOCK_4', 'UNITCOMBAT_MELEE'),
	('PROMOTION_SHOCK_4', 'UNITCOMBAT_GUN'),
	('PROMOTION_SHOCK_4', 'UNITCOMBAT_ARMOR'),
	('PROMOTION_DRILL_4', 'UNITCOMBAT_MOUNTED'),
	('PROMOTION_DRILL_4', 'UNITCOMBAT_MELEE'),
	('PROMOTION_DRILL_4', 'UNITCOMBAT_GUN'),
	('PROMOTION_DRILL_4', 'UNITCOMBAT_ARMOR'),
	('PROMOTION_TARGETING_4', 'UNITCOMBAT_NAVALRANGED'),
	('PROMOTION_TARGETING_4', 'UNITCOMBAT_SUBMARINE'),
	('PROMOTION_BOMBARDMENT_4', 'UNITCOMBAT_NAVALRANGED'),
	('PROMOTION_COASTAL_RAIDER_4', 'UNITCOMBAT_NAVALMELEE'),
	('PROMOTION_COASTAL_RAIDER_1', 'UNITCOMBAT_SUBMARINE'),
	('PROMOTION_COASTAL_RAIDER_2', 'UNITCOMBAT_SUBMARINE'),
	('PROMOTION_COASTAL_RAIDER_3', 'UNITCOMBAT_SUBMARINE'),
	('PROMOTION_COASTAL_RAIDER_4', 'UNITCOMBAT_SUBMARINE'),
	('PROMOTION_BOARDING_PARTY_4', 'UNITCOMBAT_NAVALMELEE'),
	('PROMOTION_MOBILITY', 'UNITCOMBAT_MELEE'),
	('PROMOTION_MOBILITY', 'UNITCOMBAT_GUN'),
	('PROMOTION_INDIRECT_FIRE', 'UNITCOMBAT_ARCHER'),
	('PROMOTION_INDIRECT_FIRE', 'UNITCOMBAT_NAVALRANGED'),
	('PROMOTION_INDIRECT_FIRE', 'UNITCOMBAT_SIEGE'),
	('PROMOTION_AMBUSH_2', 'UNITCOMBAT_MELEE'),
	('PROMOTION_AMBUSH_2', 'UNITCOMBAT_GUN'),
	('PROMOTION_MORALE_EVENT', 'UNITCOMBAT_RECON'),
	('PROMOTION_MORALE_EVENT', 'UNITCOMBAT_ARCHER'),
	('PROMOTION_MORALE_EVENT', 'UNITCOMBAT_MOUNTED'),
	('PROMOTION_MORALE_EVENT', 'UNITCOMBAT_MELEE'),
	('PROMOTION_MORALE_EVENT', 'UNITCOMBAT_SIEGE'),
	('PROMOTION_MORALE_EVENT', 'UNITCOMBAT_GUN'),
	('PROMOTION_MORALE_EVENT', 'UNITCOMBAT_ARMOR'),
	('PROMOTION_MORALE_EVENT', 'UNITCOMBAT_HELICOPTER'),
	('PROMOTION_MORALE_EVENT', 'UNITCOMBAT_NAVALRANGED'),
	('PROMOTION_MORALE_EVENT', 'UNITCOMBAT_NAVALMELEE'),
	('PROMOTION_MORALE_EVENT', 'UNITCOMBAT_SUBMARINE'),
	('PROMOTION_SPLASH', 'UNITCOMBAT_SIEGE'),
	('PROMOTION_SPLASH_II', 'UNITCOMBAT_SIEGE'),
	('PROMOTION_SKIRMISHER_MOBILITY', 'UNITCOMBAT_ARCHER'),
	('PROMOTION_SKIRMISHER_POWER', 'UNITCOMBAT_ARCHER');

INSERT INTO UnitPromotions_Domains
	(PromotionType, DomainType, Modifier)
VALUES
	('PROMOTION_NAVAL_MISFIRE', 'DOMAIN_SEA', -25),
	('PROMOTION_SIEGE_INACCURACY', 'DOMAIN_LAND', -33),
	('PROMOTION_TARGETING_1', 'DOMAIN_LAND', 10),
	('PROMOTION_TARGETING_2', 'DOMAIN_LAND', 15),
	('PROMOTION_TARGETING_3', 'DOMAIN_LAND', 20),
	('PROMOTION_AIR_TARGETING_1', 'DOMAIN_LAND', 15),
	('PROMOTION_AIR_TARGETING_2', 'DOMAIN_LAND', 15);
	
INSERT INTO UnitPromotions_YieldFromScouting
	(PromotionType, YieldType, Yield)
VALUES
	('PROMOTION_RECON_BANDEIRANTES', 'YIELD_GOLD', 1),
	('PROMOTION_RECON_BANDEIRANTES', 'YIELD_SCIENCE', 1),
	('PROMOTION_RECON_BANDEIRANTES', 'YIELD_CULTURE', 1);

INSERT INTO UnitPromotions_UnitCombats
	(PromotionType, UnitCombatType)
VALUES
	('PROMOTION_EVERLASTING_YOUTH', 'UNITCOMBAT_MELEE'),
	('PROMOTION_EVERLASTING_YOUTH', 'UNITCOMBAT_GUN'),
	('PROMOTION_EVERLASTING_YOUTH', 'UNITCOMBAT_MOUNTED'),
	('PROMOTION_EVERLASTING_YOUTH', 'UNITCOMBAT_ARMOR'),
	('PROMOTION_EVERLASTING_YOUTH', 'UNITCOMBAT_RECON');

INSERT INTO UnitPromotions_CivilianUnitType
	(PromotionType, UnitType)
VALUES
	('PROMOTION_SACRED_STEPS', 'UNIT_WORKER'),
	('PROMOTION_SACRED_STEPS', 'UNIT_MISSIONARY'),
	('PROMOTION_SACRED_STEPS', 'UNIT_INQUISITOR'),
	('PROMOTION_SACRED_STEPS', 'UNIT_SETTLER'),
	('PROMOTION_SACRED_STEPS', 'UNIT_WORKBOAT');