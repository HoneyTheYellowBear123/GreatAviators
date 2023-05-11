INSERT INTO Types
		(Type, Kind)
VALUES  ('UNIT_GREAT_AVIATOR', 'KIND_UNIT'),
		('GREAT_PERSON_CLASS_AVIATOR', 'KIND_GREAT_PERSON_CLASS'),
		('PSEUDOYIELD_GPP_AVIATOR', 'KIND_PSEUDOYIELD'),
		('FEATURE_MIDDLE_OF_THE_OCEAN', 'KIND_FEATURE'),
		('GREAT_PERSON_AVIATOR_SIR_GEORGE_CAYLEY', 'KIND_GREAT_PERSON_INDIVIDUAL'),  --$(father of aviation) -  boosts for flight, advanced flight, lasers, rocketry, and stealth tech
		('GREAT_PERSON_AVIATOR_OLIVER_WRIGHT', 'KIND_GREAT_PERSON_INDIVIDUAL'), -- $grants a biplane and 1 oil per turn
		('GREAT_PERSON_AVIATOR_WILBUR_WRIGHT', 'KIND_GREAT_PERSON_INDIVIDUAL'), --somebody to instantly build a hangar, hangar bonus production
		('GREAT_PERSON_AVIATOR_THADDEUS_S_C_LOWE', 'KIND_GREAT_PERSON_INDIVIDUAL'), --(union officer of balloon reconnaissance)- observation balloons and drones + 1 sight and grants a free balloon
		('GREAT_PERSON_AVIATOR_CHARLES_E_TAYLOR', 'KIND_GREAT_PERSON_INDIVIDUAL'), --(mechanic for the wright brothers) - some mechanic to give a bonus to aircraft healing
		('GREAT_PERSON_AVIATOR_RENE_LORIN', 'KIND_GREAT_PERSON_INDIVIDUAL'), --(accent on second e, patened the ramjet engine) - +2 range for all aircraft
		('GREAT_PERSON_AVIATOR_MANFRED_ALBRECHT_FREIHERR_VON_RICHTHOFEN', 'KIND_GREAT_PERSON_INDIVIDUAL'), --red baron - fighters gain +5 combat strength
		('GREAT_PERSON_AVIATOR_PERCIVAL_E_FANSLER', 'KIND_GREAT_PERSON_INDIVIDUAL'),-- (operated first airline? came up with first airline?) - aerodrome and its buildings now make gold instead of costing gold to maintain. (they don't cost much so probably have them pay out a lot) 
		('GREAT_PERSON_AVIATOR_AMELIA_EARHART', 'KIND_GREAT_PERSON_INDIVIDUAL'), -- gain 1500 culture (on standard speed) grants sufferage (or extra culture if its already been discovered)
		('GREAT_PERSON_AVIATOR_CARL_RICHARD_NYBERG', 'KIND_GREAT_PERSON_INDIVIDUAL'), -- instantly build a hangar and airport, airports bonus production 
		('GREAT_PERSON_AVIATOR_RADOJE_LJUTOVAC', 'KIND_GREAT_PERSON_INDIVIDUAL'), --(shot an aircraft with a regular cannon like a real playah) - land anti aircraft a bonus
		('GREAT_PERSON_AVIATOR_FLOYD_FOGLEMAN', 'KIND_GREAT_PERSON_INDIVIDUAL'), --(invented a good paper airplane airfoil this is awesome) - some air foil researcher to give a bonus to production of aircraft
		('GREAT_PERSON_AVIATOR_CLÉMENT_ADER', 'KIND_GREAT_PERSON_INDIVIDUAL'), --(first person to envision what would be considered a modern aircraft carrier) - someone to grant bonus production and strength to aircraft carriers
		('GREAT_PERSON_AVIATOR_HERMANN_GANSWINDT', 'KIND_GREAT_PERSON_INDIVIDUAL'), --(invented helicopters and airships) - grants a helicopter with one promotion level, and 1 aluminum per turn.
		('GREAT_PERSON_AVIATOR_GUSTAV_RASMUS', 'KIND_GREAT_PERSON_INDIVIDUAL'), --(sounds like he came up with the idea of laser guided missiles? he makes more sense as land anti aircraft but dont worry about it) - someone to give navy units with anti aicraft power an increase to that value
		('GREAT_PERSON_AVIATOR_NEIL_ARMSTRONG', 'KIND_GREAT_PERSON_INDIVIDUAL'), -- ( buzz we love u too) -- all spaceport projects grant a culture bonus
		('GREAT_PERSON_AVIATOR_ROBERT_HUTCHINGS_GODDARD', 'KIND_GREAT_PERSON_INDIVIDUAL'), --(father of rocket propulsion) - +20% production towards spaceport projects
		
		('POLICY_GREAT_AVIATOR_SMALL', 'KIND_POLICY'),
		('POLICY_GREAT_AVIATOR_BIG', 'KIND_POLICY'),
		
		
		('DUMMY_ERA_GREAT_AVIATORS_1', 'KIND_ERA'),
		('DUMMY_ERA_GREAT_AVIATORS_2', 'KIND_ERA'); 


--TO DO: add pseudoyield ai favored stuff


--so here's the catch: great people cost is determined ONLY by what era they are in. I want aviator to be a little more expensive so that people can't just buy them.
--SO we will create a fake era that never occurs and has no technology, and in localization we'll name it after eras that already exist so that it won't stick out as a faker ;)
INSERT INTO Eras
		(EraType,							 Name,								Description,						ChronologyIndex, WarmongerPoints, GreatPersonBaseCost,	 EraTechBackgroundTexture, EraCivicBackgroundTexture, WarmongerLevelDescription, EmbarkedUnitStrength, EraTechBackgroundTextureOffsetX, EraCivicBackgroundTextureOffsetX, TechTreeLayoutMethod)
VALUES  ('DUMMY_ERA_GREAT_AVIATORS_1', 'LOC_DUMMY_ERA_GREAT_AVIATORS_1_NAME', 'LOC_DUMMY_ERA_GREAT_AVIATORS_1_DESC',       69420         ,    0,                  100,                    'TechTree_BGModern', 'TechTree_BGFuture',      'LOC_WARMONGER_LEVEL_NONE', 69,                       0,                                  0,                            'Cost' ),
		('DUMMY_ERA_GREAT_AVIATORS_2', 'LOC_DUMMY_ERA_GREAT_AVIATORS_2_NAME', 'LOC_DUMMY_ERA_GREAT_AVIATORS_2_DESC',       69421         ,    0,                  100,                    'TechTree_BGModern', 'TechTree_BGFuture',      'LOC_WARMONGER_LEVEL_NONE', 69,                       0,                                  0,                            'Cost' );      



INSERT INTO PseudoYields
		(PseudoYieldType, DefaultValue)
VALUES  ('PSEUDOYIELD_GPP_AVIATOR', 0.5);

INSERT INTO TypeTags
		(Type, Tag)
VALUES  ('UNIT_GREAT_AVIATOR', 'CLASS_LANDCIVILIAN');

INSERT INTO Units
		(UnitType,				Cost, BaseMoves, BaseSightRange, ZoneOfControl, Domain,			FormationClass,				Name,								Description,				CanCapture, CanRetreatWhenCaptured, CanTrain)
VALUES  ('UNIT_GREAT_AVIATOR',	1,		4,			2,				0, 'DOMAIN_LAND', 'FORMATION_CLASS_CIVILIAN', 'LOC_UNIT_GREAT_AVIATOR_NAME', 'LOC_UNIT_GREAT_AVIATOR_DESCRIPTION',			0,		 1,		 0);

INSERT INTO UnitAiInfos
		(UnitType, AiType)
VALUES  ('UNIT_GREAT_AVIATOR', 'UNITTYPE_CIVILIAN'),
		('UNIT_GREAT_AVIATOR', 'UNITAI_LEADER');

INSERT INTO GreatPersonClasses
		(GreatPersonClassType,			 Name,									 UnitType,					DistrictType,			PseudoYieldType,		 IconString,			ActionIcon                      )
VALUES  ('GREAT_PERSON_CLASS_AVIATOR', 'LOC_GREAT_PERSON_CLASS_AVIATOR_NAME', 'UNIT_GREAT_AVIATOR',		 'DISTRICT_AERODROME',			 'PSEUDOYIELD_GPP_AVIATOR', '[ICON_GreatAviator]', 'ICON_UNITOPERATION_AVIATOR_ACTION');





INSERT INTO GreatPersonIndividuals
		(GreatPersonIndividualType,					Name,											 GreatPersonClassType,			 eraType,					Gender, ActionCharges, ActionRequiresOwnedTile,       ActionRequiresUnownedTile,         ActionRequiresNoMilitaryUnit, ActionRequiresOnOrAdjacentFeatureType, ActionRequiresMilitaryUnitDomain, AreaHighlightRadius, ActionRequiresCompletedDistrictType, ActionEffectTileHighlighting, ActionEffectTextOverride)
VALUES  ('GREAT_PERSON_AVIATOR_SIR_GEORGE_CAYLEY', 'LOC_GREAT_PERSON_AVIATOR_SIR_GEORGE_CAYLEY',    'GREAT_PERSON_CLASS_AVIATOR',    'DUMMY_ERA_GREAT_AVIATORS_2', 'M',    1,            0,				                    0,										0,      			  NULL,									NULL,                                  NULL,                          NULL,                        0,                 'LOC_GREAT_PERSON_AVIATOR_SIR_GEORGE_CAYLEY_ACTION'  ), --LOC_GREATPERSON_ACTION_NAME_RETIRE
		('GREAT_PERSON_AVIATOR_OLIVER_WRIGHT',		'LOC_GREAT_PERSON_AVIATOR_OLIVER_WRIGHT',		'GREAT_PERSON_CLASS_AVIATOR',    'DUMMY_ERA_GREAT_AVIATORS_2', 'M',    1,            1,				                    0,										0,      			  NULL,									NULL,                                  NULL,                          'DISTRICT_AERODROME',        1,                 'LOC_GREAT_PERSON_AVIATOR_OLIVER_WRIGHT_ACTION'  ),
		('GREAT_PERSON_AVIATOR_AMELIA_EARHART',		'LOC_GREAT_PERSON_AVIATOR_AMELIA_EARHART',		'GREAT_PERSON_CLASS_AVIATOR',    'DUMMY_ERA_GREAT_AVIATORS_1', 'F',    1,            0,				                    0,										0,      			  'FEATURE_REEF',						NULL,                                  NULL,                          NULL,                        1,                 'LOC_GREAT_PERSON_AVIATOR_AMELIA_EARHART_ACTION'  ); 

INSERT INTO GreatPersonIndividualActionModifiers
		(GreatPersonIndividualType,								 ModifierId,														AttachmentTargetType)
VALUES  (	'GREAT_PERSON_AVIATOR_SIR_GEORGE_CAYLEY', 'GREAT_PERSON_AVIATOR_SIR_GEORGE_CAYLEY_MODIFIERID_1',			'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_UNIT_GREATPERSON'),
		(	'GREAT_PERSON_AVIATOR_SIR_GEORGE_CAYLEY', 'GREAT_PERSON_AVIATOR_SIR_GEORGE_CAYLEY_MODIFIERID_2',			'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_UNIT_GREATPERSON'),
		(	'GREAT_PERSON_AVIATOR_SIR_GEORGE_CAYLEY', 'GREAT_PERSON_AVIATOR_SIR_GEORGE_CAYLEY_MODIFIERID_3',			'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_UNIT_GREATPERSON'),
		(	'GREAT_PERSON_AVIATOR_SIR_GEORGE_CAYLEY', 'GREAT_PERSON_AVIATOR_SIR_GEORGE_CAYLEY_MODIFIERID_4',			'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_UNIT_GREATPERSON'),
		
		(	'GREAT_PERSON_AVIATOR_OLIVER_WRIGHT', 'GREAT_PERSON_AVIATOR_OLIVER_WRIGHT_MODIFIERID',			'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_UNIT_GREATPERSON'),
		(	'GREAT_PERSON_AVIATOR_OLIVER_WRIGHT', 'GREATPERSON_GRANT_1_OIL_PER_TURN',			'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_UNIT_GREATPERSON'),
		
		(   'GREAT_PERSON_AVIATOR_AMELIA_EARHART', 'GREAT_PERSON_AVIATOR_AMELIA_EARHART_MODIFIERID', 'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_UNIT_GREATPERSON');

INSERT INTO Modifiers
		(ModifierId,											ModifierType,									RunOnce, Permanent, SubjectRequirementSetId)
VALUES  ( 'GREAT_PERSON_AVIATOR_SIR_GEORGE_CAYLEY_MODIFIERID_1', 'MODIFIER_PLAYER_GRANT_SPECIFIC_TECH_BOOST',       1,        1,          NULL    ),
		( 'GREAT_PERSON_AVIATOR_SIR_GEORGE_CAYLEY_MODIFIERID_2', 'MODIFIER_PLAYER_GRANT_SPECIFIC_TECH_BOOST',       1,        1,          NULL    ),
		( 'GREAT_PERSON_AVIATOR_SIR_GEORGE_CAYLEY_MODIFIERID_3', 'MODIFIER_PLAYER_GRANT_SPECIFIC_TECH_BOOST',       1,        1,          NULL     ),
		( 'GREAT_PERSON_AVIATOR_SIR_GEORGE_CAYLEY_MODIFIERID_4', 'MODIFIER_PLAYER_GRANT_SPECIFIC_TECH_BOOST',       1,        1,          NULL     ),

		( 'GREAT_PERSON_AVIATOR_OLIVER_WRIGHT_MODIFIERID',	 'MODIFIER_PLAYER_UNIT_GRANT_UNIT_WITH_EXPERIENCE',       1,        1,          NULL     ),
		
		( 'GREAT_PERSON_AVIATOR_AMELIA_EARHART_MODIFIERID',	 'MODIFIER_PLAYER_GRANT_YIELD',							  1,        1,          NULL     );
		
		--( 'GREAT_PERSON_AVIATOR_RADOJE_LJUTOVAC_MODIFIERID',		'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',			 1,        1,  'REQUIREMENTS_UNIT_IS_ANTI_AIRCRAFT_LAND'   );

INSERT INTO ModifierArguments
		(ModifierId,											 Name,         Value)
VALUES  ('GREAT_PERSON_AVIATOR_SIR_GEORGE_CAYLEY_MODIFIERID_1',  'TechType', 'TECH_FLIGHT'),
		('GREAT_PERSON_AVIATOR_SIR_GEORGE_CAYLEY_MODIFIERID_2',  'TechType', 'TECH_ADVANCED_FLIGHT'),
		('GREAT_PERSON_AVIATOR_SIR_GEORGE_CAYLEY_MODIFIERID_3',  'TechType', 'TECH_LASERS'),
		('GREAT_PERSON_AVIATOR_SIR_GEORGE_CAYLEY_MODIFIERID_4',  'TechType', 'TECH_STEALTH_TECHNOLOGY'),
		
		('GREAT_PERSON_AVIATOR_OLIVER_WRIGHT_MODIFIERID',  'UnitType', 'UNIT_BIPLANE'),
		('GREAT_PERSON_AVIATOR_OLIVER_WRIGHT_MODIFIERID',  'Experience', 0),
		
		('GREAT_PERSON_AVIATOR_AMELIA_EARHART_MODIFIERID',  'Amount', 1500),
		('GREAT_PERSON_AVIATOR_AMELIA_EARHART_MODIFIERID',  'Scale', 1),
		('GREAT_PERSON_AVIATOR_AMELIA_EARHART_MODIFIERID',  'YieldType', 'YIELD_CULTURE');
		
		--('GREAT_PERSON_AVIATOR_RADOJE_LJUTOVAC_MODIFIERID',  'AbilityType', 'GREAT_PERSON_AVIATOR_RADOJE_LJUTOVAC_ABILITY_ANTI_AIRCRAFT_BONUS');

--INSERT INTO ModifierStrings
--		(ModifierId, Context, Text)
--VALUES  ('GREAT_PERSON_AVIATOR_RADOJE_LJUTOVAC_MODIFIERID', 'Preview', 'LOC_GREAT_PERSON_AVIATOR_RADOJE_LJUTOVAC_COMBAT_BONUS_PREVIEW')

































-- points



--Ideally, everyone has a few passive points but heavy investments can be made elsewhere

--TO DO: add a project to aerodromes called space camp that awards great aviator points when finished

--Certain buildings granting points 
INSERT INTO Building_GreatPersonPoints
		(BuildingType, GreatPersonClassType, PointsPerTurn)
VALUES  ('BUILDING_BROADCAST_CENTER', 'GREAT_PERSON_CLASS_AVIATOR', 1),
		('BUILDING_MILITARY_ACADEMY', 'GREAT_PERSON_CLASS_AVIATOR', 2),
		('BUILDING_HANGAR', 'GREAT_PERSON_CLASS_AVIATOR', 5),
		('BUILDING_AIRPORT', 'GREAT_PERSON_CLASS_AVIATOR', 10);
		
		
--Add a couple fat bonuses for districts
INSERT INTO District_GreatPersonPoints
		(DistrictType, GreatPersonClassType, PointsPerTurn)
VALUES  ('DISTRICT_AERODROME', 'GREAT_PERSON_CLASS_AVIATOR', 5),
		('DISTRICT_SPACEPORT', 'GREAT_PERSON_CLASS_AVIATOR', 10);


--Modifiers for techs and civics to passively grant points as soon as they are finished
INSERT INTO Modifiers
		(ModifierId,								 ModifierType,                SubjectRequirementSetId )
VALUES  ('ASTRONOMY_GREAT_AVIATOR_MODIFIERID',				'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS', NULL),
		('SCIENTIFIC_THEORY_GREAT_AVIATOR_MODIFIERID',				'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS', NULL),
		('FLIGHT_GREAT_AVIATOR_MODIFIERID',				'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS', NULL),
		('ADVANCED_FLIGHT_GREAT_AVIATOR_MODIFIERID',				'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS', NULL),
		('STEALTH_TECH_GREAT_AVIATOR_MODIFIERID',				'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS', NULL),
		('GUIDANCE_SYSTEMS_GREAT_AVIATOR_MODIFIERID',				'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS', NULL),
		('ROCKETRY_GREAT_AVIATOR_MODIFIERID',				'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS', NULL),
		('EXPLORATION_GREAT_AVIATOR_MODIFIERID',				'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS', NULL),
		('MOBILIZATION_GREAT_AVIATOR_MODIFIERID',				'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS', NULL),
		('RAPID_DEPLOYMENT_GREAT_AVIATOR_MODIFIERID',				'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS', NULL),
		('SPACE_RACE_GREAT_AVIATOR_MODIFIERID',				'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS', NULL),
		
		('GREAT_AVIATOR_POLICY_SMALL_MODIFIERID',				'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS', NULL),
		('GREAT_AVIATOR_POLICY_BIG_MODIFIERID_HANGAR',				'MODIFIER_PLAYER_CITIES_ADJUST_GREAT_PERSON_POINT', 'BUILDING_IS_HANGAR_GREAT_AVIATOR'), --unique requirement name to prevent conflicts
		('GREAT_AVIATOR_POLICY_BIG_MODIFIERID_AIRPORT',				'MODIFIER_PLAYER_CITIES_ADJUST_GREAT_PERSON_POINT', 'BUILDING_IS_AIRPORT_GREAT_AVIATOR'); --unique requirement name to prevent conflicts

--Modifier Arguments for techs and civics
INSERT INTO ModifierArguments
		(ModifierId,					Name,					Value)
VALUES  ('ASTRONOMY_GREAT_AVIATOR_MODIFIERID',   'GreatPersonClassType', 'GREAT_PERSON_CLASS_AVIATOR'),
		('ASTRONOMY_GREAT_AVIATOR_MODIFIERID',   'Amount', 1),
		('SCIENTIFIC_THEORY_GREAT_AVIATOR_MODIFIERID',   'GreatPersonClassType', 'GREAT_PERSON_CLASS_AVIATOR'),
		('SCIENTIFIC_THEORY_GREAT_AVIATOR_MODIFIERID',   'Amount', 1),
		('FLIGHT_GREAT_AVIATOR_MODIFIERID',   'GreatPersonClassType', 'GREAT_PERSON_CLASS_AVIATOR'),
		('FLIGHT_GREAT_AVIATOR_MODIFIERID',   'Amount', 3),
		('ADVANCED_FLIGHT_GREAT_AVIATOR_MODIFIERID',   'GreatPersonClassType', 'GREAT_PERSON_CLASS_AVIATOR'),
		('ADVANCED_FLIGHT_GREAT_AVIATOR_MODIFIERID',   'Amount', 2),
		('STEALTH_TECH_GREAT_AVIATOR_MODIFIERID',   'GreatPersonClassType', 'GREAT_PERSON_CLASS_AVIATOR'),
		('STEALTH_TECH_GREAT_AVIATOR_MODIFIERID',   'Amount', 1),
		('GUIDANCE_SYSTEMS_GREAT_AVIATOR_MODIFIERID',   'GreatPersonClassType', 'GREAT_PERSON_CLASS_AVIATOR'),
		('GUIDANCE_SYSTEMS_GREAT_AVIATOR_MODIFIERID',   'Amount', 1),
		('ROCKETRY_GREAT_AVIATOR_MODIFIERID',   'GreatPersonClassType', 'GREAT_PERSON_CLASS_AVIATOR'),
		('ROCKETRY_GREAT_AVIATOR_MODIFIERID',   'Amount', 2),
		('EXPLORATION_GREAT_AVIATOR_MODIFIERID',   'GreatPersonClassType', 'GREAT_PERSON_CLASS_AVIATOR'),
		('EXPLORATION_GREAT_AVIATOR_MODIFIERID',   'Amount', 2),
		('MOBILIZATION_GREAT_AVIATOR_MODIFIERID',   'GreatPersonClassType', 'GREAT_PERSON_CLASS_AVIATOR'),
		('MOBILIZATION_GREAT_AVIATOR_MODIFIERID',   'Amount', 1),
		('RAPID_DEPLOYMENT_GREAT_AVIATOR_MODIFIERID',   'GreatPersonClassType', 'GREAT_PERSON_CLASS_AVIATOR'),
		('RAPID_DEPLOYMENT_GREAT_AVIATOR_MODIFIERID',   'Amount', 1),
		('SPACE_RACE_GREAT_AVIATOR_MODIFIERID',   'GreatPersonClassType', 'GREAT_PERSON_CLASS_AVIATOR'),
		('SPACE_RACE_GREAT_AVIATOR_MODIFIERID',   'Amount', 2),
		
		('GREAT_AVIATOR_POLICY_SMALL_MODIFIERID', 'GreatPersonClassType', 'GREAT_PERSON_CLASS_AVIATOR'),
		('GREAT_AVIATOR_POLICY_SMALL_MODIFIERID',   'Amount', 10),
		('GREAT_AVIATOR_POLICY_BIG_MODIFIERID_HANGAR', 'GreatPersonClassType', 'GREAT_PERSON_CLASS_AVIATOR'),
		('GREAT_AVIATOR_POLICY_BIG_MODIFIERID_HANGAR',   'Amount', 7),
		('GREAT_AVIATOR_POLICY_BIG_MODIFIERID_AIRPORT', 'GreatPersonClassType', 'GREAT_PERSON_CLASS_AVIATOR'),
		('GREAT_AVIATOR_POLICY_BIG_MODIFIERID_AIRPORT',   'Amount', 12);

--Adjust some techs to give points
INSERT INTO TechnologyModifiers	
		(TechnologyType,		 ModifierId)
VALUES  ('TECH_ASTRONOMY',	'ASTRONOMY_GREAT_AVIATOR_MODIFIERID'),
		('TECH_SCIENTIFIC_THEORY',	'SCIENTIFIC_THEORY_GREAT_AVIATOR_MODIFIERID'),
		('TECH_FLIGHT',	'FLIGHT_GREAT_AVIATOR_MODIFIERID'),
		('TECH_ADVANCED_FLIGHT',	'ADVANCED_FLIGHT_GREAT_AVIATOR_MODIFIERID'),
		('TECH_STEALTH_TECHNOLOGY',	'STEALTH_TECH_GREAT_AVIATOR_MODIFIERID'),
		('TECH_GUIDANCE_SYSTEMS',	'GUIDANCE_SYSTEMS_GREAT_AVIATOR_MODIFIERID'),
		('TECH_ROCKETRY',	'ROCKETRY_GREAT_AVIATOR_MODIFIERID');



--Adjust some civics to give points
INSERT INTO CivicModifiers	
		(CivicType,		 ModifierId)
VALUES  ('CIVIC_EXPLORATION',	'EXPLORATION_GREAT_AVIATOR_MODIFIERID'),
		('CIVIC_MOBILIZATION',	'MOBILIZATION_GREAT_AVIATOR_MODIFIERID'),
		('CIVIC_RAPID_DEPLOYMENT',	'RAPID_DEPLOYMENT_GREAT_AVIATOR_MODIFIERID'),
		('CIVIC_SPACE_RACE',	'SPACE_RACE_GREAT_AVIATOR_MODIFIERID');



INSERT INTO Policies
		(PolicyType,							Name,												Description,							PrereqCivic,					GovernmentSlotType)
VALUES  ('POLICY_GREAT_AVIATOR_SMALL',			'LOC_POLICY_GREAT_AVIATOR_SMALL_NAME',			'LOC_POLICY_GREAT_AVIATOR_SMALL_DESCRIPTION',		'CIVIC_MOBILIZATION',		 'SLOT_WILDCARD'),
		('POLICY_GREAT_AVIATOR_BIG',		'LOC_POLICY_GREAT_AVIATOR_BIG_NAME',		'LOC_POLICY_GREAT_AVIATOR_BIG_DESCRIPTION',		 'CIVIC_SPACE_RACE',		 'SLOT_WILDCARD');

INSERT INTO RequirementSets
		(RequirementSetId,  RequirementSetType)
VALUES  ('BUILDING_IS_HANGAR_GREAT_AVIATOR', 'REQUIREMENTSET_TEST_ALL'),
		('BUILDING_IS_AIRPORT_GREAT_AVIATOR', 'REQUIREMENTSET_TEST_ALL');

INSERT INTO RequirementSetRequirements
		(RequirementSetId, RequirementId)
VALUES  ('BUILDING_IS_HANGAR_GREAT_AVIATOR', 'REQUIRES_CITY_HAS_HANGAR_GREAT_AVIATOR'),
		('BUILDING_IS_AIRPORT_GREAT_AVIATOR', 'REQUIRES_CITY_HAS_AIRPORT_GREAT_AVIATOR');

INSERT INTO Requirements
		(RequirementId, RequirementType)
VALUES  ('REQUIRES_CITY_HAS_HANGAR_GREAT_AVIATOR', 'REQUIREMENT_CITY_HAS_BUILDING'),
		('REQUIRES_CITY_HAS_AIRPORT_GREAT_AVIATOR', 'REQUIREMENT_CITY_HAS_BUILDING');

INSERT INTO RequirementArguments
		(RequirementId, Name, Value)
VALUES  ('REQUIRES_CITY_HAS_HANGAR_GREAT_AVIATOR', 'BuildingType', 'BUILDING_HANGAR'),
		('REQUIRES_CITY_HAS_AIRPORT_GREAT_AVIATOR', 'BuildingType', 'BUILDING_AIRPORT');

INSERT INTO PolicyModifiers
		(PolicyType,				ModifierId)
VALUES  ('POLICY_GREAT_AVIATOR_SMALL',  'GREAT_AVIATOR_POLICY_SMALL_MODIFIERID'),
		('POLICY_GREAT_AVIATOR_BIG',  'GREAT_AVIATOR_POLICY_BIG_MODIFIERID_HANGAR'),
		('POLICY_GREAT_AVIATOR_BIG',  'GREAT_AVIATOR_POLICY_BIG_MODIFIERID_AIRPORT');

INSERT INTO ObsoletePolicies
		(PolicyType, ObsoletePolicy)
VALUES  ('POLICY_GREAT_AVIATOR_BIG', 'POLICY_GREAT_AVIATOR_SMALL');

--Add some policies to give points

--techs that could give points:
--astronomy +1
--scientific theory +1

--flight +3
--advanced flight +2
--stealth tech +1
--guidance systems +1
--rocketry +2

--civics that could give points:
--exploration +2
--mobilization - little policy and +1
--rapid deployment - +1
--space race  BIG policy and +2
