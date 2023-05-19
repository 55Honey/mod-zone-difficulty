DELETE FROM `zone_difficulty_hardmode_creatureoverrides` WHERE `CreatureEntry` IN (17381,17380,17377);
INSERT INTO `zone_difficulty_hardmode_creatureoverrides` (`CreatureEntry`, `HPModifier`, `Enabled`, `Comment`) VALUES
(17381, 3, 1, 'Blood Furnace, Bosses'),
(17380, 3, 1, 'Blood Furnace, Bosses'),
(17377, 3, 1, 'Blood Furnace, Bosses');

/*
	The Maker
*/
DELETE FROM `spell_dbc` WHERE `ID` = 3542000;
INSERT INTO `spell_dbc` (`ID`, `Attributes`, `CastingTimeIndex`, `ProcChance`, `RangeIndex`, `EquippedItemClass`, `DurationIndex`, `Effect_1`, `Effect_2`, `Effect_3`, `EffectDieSides_1`, `EffectDieSides_2`, `EffectDieSides_3`, `ImplicitTargetA_1`, `ImplicitTargetA_2`, `ImplicitTargetA_3`, `ImplicitTargetB_1`, `ImplicitTargetB_2`, `ImplicitTargetB_3`, `EffectRadiusIndex_1`, `EffectRadiusIndex_2`, `EffectRadiusIndex_3`, `EffectMiscValue_1`, `EffectMiscValue_2`, `EffectMiscValue_3`, `EffectMiscValueB_1`, `EffectMiscValueB_2`, `EffectMiscValueB_3`, `Name_Lang_enUS`, `MaxTargets`, `EffectChainAmplitude_1`, `EffectChainAmplitude_2`, `EffectChainAmplitude_3`, `SchoolMask`) VALUES
(3542000, 384, 1, 101, 1, -1,

6, -- Duration Index
28, 0, 0, -- Effects
1, 0, 0, -- EffectDieSides
18, 0, 0, -- ImplicitTargetA
0, 0, 0, -- ImplicitTargetB
16, 0, 0, -- EffectRadiusIndex
3542000, 0, 0, -- EffectMiscValue
64, 0, 0, -- EffectMiscValueB

'Summon The Maker Hard Mode Dummy', -- Name

0, -- MaxTargets
1, 1, 1, -- EffectChainAmplitude
1  -- SchoolMask
);

DELETE FROM `spell_dbc` WHERE `ID` = 3542001;
INSERT INTO `spell_dbc` (`ID`, `Attributes`, `CastingTimeIndex`, `ProcChance`, `RangeIndex`, `EquippedItemClass`, `DurationIndex`, `Effect_1`, `Effect_2`, `Effect_3`, `EffectDieSides_1`, `EffectDieSides_2`, `EffectDieSides_3`, `ImplicitTargetA_1`, `ImplicitTargetA_2`, `ImplicitTargetA_3`, `ImplicitTargetB_1`, `ImplicitTargetB_2`, `ImplicitTargetB_3`, `EffectRadiusIndex_1`, `EffectRadiusIndex_2`, `EffectRadiusIndex_3`, `EffectMiscValue_1`, `EffectMiscValue_2`, `EffectMiscValue_3`, `EffectMiscValueB_1`, `EffectMiscValueB_2`, `EffectMiscValueB_3`, `Name_Lang_enUS`, `MaxTargets`, `EffectChainAmplitude_1`, `EffectChainAmplitude_2`, `EffectChainAmplitude_3`, `SchoolMask`) VALUES
(3542001, 384, 1, 101, 1, -1,

9, -- Duration Index
76, 0, 0, -- Effects
1, 0, 0, -- EffectDieSides
18, 0, 0, -- ImplicitTargetA
0, 0, 0, -- ImplicitTargetB
16, 0, 0, -- EffectRadiusIndex
3542000, 0, 0, -- EffectMiscValue
0, 0, 0, -- EffectMiscValueB

'Summon Proximity Mine', -- Name

0, -- MaxTargets
1, 1, 1, -- EffectChainAmplitude
1  -- SchoolMask
);

DELETE FROM `gameobject_template` WHERE (`entry` = 3542000);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES
(3542000, 6, 5791, 'Proximity Bomb', '', '', '', 1, 13, 70, 1, 32786, 1, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 11723);

DELETE FROM `creature_template` WHERE (`entry` IN (3542000, 3542001));
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(3542000, 0, 0, 0, 0, 0, 169, 15435, 0, 0, 'The Maker Hard Mode Dummy', NULL, NULL, 0, 70, 70, 1, 35, 0, 1, 10, 1, 1, 0, 1, 0, 0, 1, 2000, 2000, 1, 1, 1, 33554432, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 130, '', 0),
(3542001, 0, 0, 0, 0, 0, 169, 15435, 0, 0, 'The Maker', NULL, NULL, 0, 70, 70, 1, 35, 0, 1, 10, 1, 1, 0, 1, 0, 0, 1, 2000, 2000, 1, 1, 1, 33554432, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 130, '', 0);

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` IN (3542000, 3542001));
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(3542000, 0, 0, 0, 60, 0, 100, 0, 5000, 5000, 5000, 5000, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'The Maker - On Update - Despawn Instant'),
(3542000, 0, 1, 2, 60, 0, 100, 1, 1200, 1200, 1200, 1200, 0, 12, 3542001, 4, 5000, 0, 0, 0, 202, 40, 20, 1, 0, 0, 0, 0, 0, 'The Maker - On Update - Summon Creature \'The Maker\''),
(3542000, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 1, 100, 0, 0, 0, 0, 0, 19, 17381, 0, 0, 0, 0, 0, 0, 0, 'The Maker - On Respawn - Start Follow Closest Creature \'The Maker\''),
(3542001, 0, 0, 0, 60, 0, 100, 1, 1000, 1000, 0, 0, 0, 11, 12244, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'The Maker - On Update - Cast \'Poof\' (No Repeat)'),
(3542001, 0, 1, 0, 60, 0, 100, 1, 2000, 2000, 0, 0, 0, 11, 3542001, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'The Maker - On Update - Cast \'Summon Proximity Mine\' (No Repeat)');

DELETE FROM `creature_text` WHERE `comment` LIKE '%Hard Mode%';
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Probability`, `comment`) VALUES
(17381, 100, 0, 'Bombs away!', 14, 100, 'The Maker - Hard Mode - Bombs Away'),
(17381, 100, 1, 'Careful where you step!', 14, 100, 'The Maker - Hard Mode - Bombs Away'),
(17381, 100, 2, 'Let it rain!', 14, 100, 'The Maker - Hard Mode - Bombs Away');

DELETE FROM `zone_difficulty_hardmode_ai` WHERE `CreatureEntry` = 17381;
INSERT INTO `zone_difficulty_hardmode_ai` (`CreatureEntry`, `Chance`, `Spell`, `Spellbp0`, `Spellbp1`, `Spellbp2`, `Target`, `TargetArg`, `Delay`, `Cooldown`, `Repetitions`, `Enabled`, `Comment`) VALUES
(17381, 100, 3542000, 0, 0, 0, 2, 0, 10000, 10000, 0, 1, 'Blood Furnace, The Maker - Bombs Away');

/*
	Broggok
*/
DELETE FROM `spell_dbc` WHERE `ID` = 3542010;
INSERT INTO `spell_dbc` (`ID`, `Attributes`, `CastingTimeIndex`, `ProcChance`, `RangeIndex`, `EquippedItemClass`, `DurationIndex`, `Effect_1`, `Effect_2`, `Effect_3`, `EffectDieSides_1`, `EffectDieSides_2`, `EffectDieSides_3`, `ImplicitTargetA_1`, `ImplicitTargetA_2`, `ImplicitTargetA_3`, `ImplicitTargetB_1`, `ImplicitTargetB_2`, `ImplicitTargetB_3`, `EffectRadiusIndex_1`, `EffectRadiusIndex_2`, `EffectRadiusIndex_3`, `EffectMiscValue_1`, `EffectMiscValue_2`, `EffectMiscValue_3`, `EffectMiscValueB_1`, `EffectMiscValueB_2`, `EffectMiscValueB_3`, `Name_Lang_enUS`, `MaxTargets`, `EffectChainAmplitude_1`, `EffectChainAmplitude_2`, `EffectChainAmplitude_3`, `SchoolMask`) VALUES
(3542010, 384, 1, 101, 1, -1,

6, -- Duration Index
28, 0, 0, -- Effects
1, 0, 0, -- EffectDieSides
25, 0, 0, -- ImplicitTargetA
0, 0, 0, -- ImplicitTargetB
16, 0, 0, -- EffectRadiusIndex
3542010, 0, 0, -- EffectMiscValue
64, 0, 0, -- EffectMiscValueB

'Summon Broggok Eye Tentacle', -- Name

0, -- MaxTargets
1, 1, 1, -- EffectChainAmplitude
1  -- SchoolMask
);

DELETE FROM `creature_template` WHERE (`entry` = 3542010);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(3542010, 0, 0, 0, 0, 0, 15788, 0, 0, 0, 'Broggok\'s Eye Tentacle', 'Reach of the Spymaster', NULL, 0, 70, 70, 0, 45, 0, 2.4, 1.42857, 1, 1, 18, 1, 0, 0, 2, 1000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 10, 8, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 1, 1, 1, 1.35, 0, 0, 152, 1, 79758463, 0, 0, '', 12340);

DELETE FROM `creature_template_movement` WHERE (`CreatureId` = 3542010);
INSERT INTO `creature_template_movement` (`CreatureId`, `Ground`, `Swim`, `Flight`, `Rooted`, `Chase`, `Random`, `InteractionPauseTimer`) VALUES
(3542010, 1, 0, 0, 1, 0, 0, 0);

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 3542010);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(3542010, 0, 0, 1, 54, 0, 100, 0, 0, 0, 0, 0, 0, 38, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Broggok\'s Eye Tentacle - On Just Summoned - Set In Combat With Zone'),
(3542010, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 0, 11, 26139, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Broggok\'s Eye Tentacle - On Just Summoned - Cast \'Ground Rupture\''),
(3542010, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 0, 11, 26262, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Broggok\'s Eye Tentacle - On Just Summoned - Cast \'Birth\''),
(3542010, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 19, 33554434, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Broggok\'s Eye Tentacle - On Just Summoned - Remove Flags Not Attackable & Not Selectable'),
(3542010, 0, 4, 0, 0, 0, 100, 0, 3600, 5400, 10000, 13600, 0, 11, 26143, 64, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 'Broggok\'s Eye Tentacle - In Combat - Cast \'Mind Flay\''),
(3542010, 0, 5, 0, 0, 0, 100, 0, 30000, 30000, 30000, 30000, 0, 11, 30923, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 'Broggok\'s Eye Tentacle - In Combat - Cast \'Domination\''),
(3542010, 0, 6, 0, 1, 0, 100, 0, 15000, 15000, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Broggok\'s Eye Tentacle - Out of Combat - Despawn Instant');

DELETE FROM `zone_difficulty_hardmode_ai` WHERE `CreatureEntry` = 17380;
INSERT INTO `zone_difficulty_hardmode_ai` (`CreatureEntry`, `Chance`, `Spell`, `Spellbp0`, `Spellbp1`, `Spellbp2`, `Target`, `TargetArg`, `Delay`, `Cooldown`, `Repetitions`, `Enabled`, `Comment`) VALUES
(17380, 100, 3542010, 0, 0, 0, 5, 0, 15000, 15000, 0, 1, 'Blood Furnace, Broggok - Summon Eye Tentacle');

/*
	Keli'dan the Breaker
*/
DELETE FROM `spell_dbc` WHERE `ID` = 3542020;
INSERT INTO `spell_dbc` (`ID`, `Attributes`, `CastingTimeIndex`, `ProcChance`, `RangeIndex`, `EquippedItemClass`, `DurationIndex`, `Effect_1`, `Effect_2`, `Effect_3`, `EffectDieSides_1`, `EffectDieSides_2`, `EffectDieSides_3`, `ImplicitTargetA_1`, `ImplicitTargetA_2`, `ImplicitTargetA_3`, `ImplicitTargetB_1`, `ImplicitTargetB_2`, `ImplicitTargetB_3`, `EffectRadiusIndex_1`, `EffectRadiusIndex_2`, `EffectRadiusIndex_3`, `EffectMiscValue_1`, `EffectMiscValue_2`, `EffectMiscValue_3`, `EffectMiscValueB_1`, `EffectMiscValueB_2`, `EffectMiscValueB_3`, `Name_Lang_enUS`, `MaxTargets`, `EffectChainAmplitude_1`, `EffectChainAmplitude_2`, `EffectChainAmplitude_3`, `SchoolMask`) VALUES
(3542020, 384, 1, 101, 1, -1,

562, -- Duration Index
28, 0, 0, -- Effects
1, 0, 0, -- EffectDieSides
25, 0, 0, -- ImplicitTargetA
0, 0, 0, -- ImplicitTargetB
16, 0, 0, -- EffectRadiusIndex
3542020, 0, 0, -- EffectMiscValue
64, 0, 0, -- EffectMiscValueB

'Summon Keli\'dan the Breaker Magtheridon\'s Shadow', -- Name

0, -- MaxTargets
1, 1, 1, -- EffectChainAmplitude
1  -- SchoolMask
);

DELETE FROM `spell_dbc` WHERE `ID` = 3542021;
INSERT INTO `spell_dbc` (`ID`, `Attributes`, `CastingTimeIndex`, `ProcChance`, `RangeIndex`, `EquippedItemClass`, `DurationIndex`, `Effect_1`, `Effect_2`, `Effect_3`, `EffectDieSides_1`, `EffectDieSides_2`, `EffectDieSides_3`, `ImplicitTargetA_1`, `ImplicitTargetA_2`, `ImplicitTargetA_3`, `ImplicitTargetB_1`, `ImplicitTargetB_2`, `ImplicitTargetB_3`, `EffectRadiusIndex_1`, `EffectRadiusIndex_2`, `EffectRadiusIndex_3`, `EffectMiscValue_1`, `EffectMiscValue_2`, `EffectMiscValue_3`, `EffectMiscValueB_1`, `EffectMiscValueB_2`, `EffectMiscValueB_3`, `Name_Lang_enUS`, `MaxTargets`, `EffectChainAmplitude_1`, `EffectChainAmplitude_2`, `EffectChainAmplitude_3`, `SchoolMask`) VALUES
(3542021, 384, 1, 101, 1, -1,

6, -- Duration Index
28, 0, 0, -- Effects
1, 0, 0, -- EffectDieSides
17, 0, 0, -- ImplicitTargetA
0, 0, 0, -- ImplicitTargetB
16, 0, 0, -- EffectRadiusIndex
3542021, 0, 0, -- EffectMiscValue
64, 0, 0, -- EffectMiscValueB

'Summon Keli\'dan the Breaker Fel Guard', -- Name

0, -- MaxTargets
1, 1, 1, -- EffectChainAmplitude
1  -- SchoolMask
);

DELETE FROM `spell_target_position` WHERE `ID`=3542021;
INSERT INTO `spell_target_position` (`ID`, `EffectIndex`, `MapID`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `VerifiedBuild`) VALUES
(3542021, 0, 542, 327.429657, -158.509995, -25.512703, 1.58, 0);

DELETE FROM `creature_template` WHERE (`entry` = 3542020);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(3542020, 0, 0, 0, 0, 0, 18527, 0, 0, 0, 'Magtheridon\'s Shadow', NULL, NULL, 0, 73, 73, 1, 16, 0, 1, 1, 1, 1, 0, 0.4, 3, 0, 1, 2000, 2000, 1, 1, 1, 33554432, 0, 0, 0, 0, 0, 0, 0, 3, 108, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 1, 1, 1, 1, 1, 0, 164, 1, 650854271, 0, 2, '', 12340);

DELETE FROM `creature_template_movement` WHERE (`CreatureId` = 3542020);
INSERT INTO `creature_template_movement` (`CreatureId`, `Ground`, `Swim`, `Flight`, `Rooted`, `Chase`, `Random`, `InteractionPauseTimer`) VALUES
(3542020, 1, 0, 0, 1, 0, 0, 0);

DELETE FROM `creature_template_addon` WHERE (`entry` = 3542020);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES
(3542020, 0, 0, 0, 0, 0, 3, '37816');

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 3542020);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(3542020, 0, 0, 0, 0, 0, 100, 0, 3600, 3600, 3600, 3600, 0, 11, 38524, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Magtheridon - On Update - Cast \'Netherbreath\''),
(3542020, 0, 1, 0, 0, 0, 100, 0, 3200, 3200, 3200, 3200, 0, 5, 15, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Magtheridon - On Update - Play Emote 15'),
(3542020, 0, 2, 3, 11, 0, 100, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Magtheridon - On Respawn - Set Reactstate Passive'),
(3542020, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 0, 38, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Magtheridon - On Respawn - Set In Combat With Zone'),
(3542020, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 21, 100, 0, 0, 0, 0, 0, 0, 0, 'Magtheridon - On Respawn - Set Orientation Closest Player'),
(3542020, 0, 5, 0, 1, 1, 100, 0, 12000, 12000, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Magtheridon - Out of Combat - Despawn Instant');

DELETE FROM `creature_template` WHERE (`entry` = 3542021);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(3542021, 0, 0, 0, 0, 0, 9129, 0, 0, 0, 'The Breaker\'s Felguard', NULL, NULL, 0, 73, 73, 1, 16, 0, 1, 1, 1, 1, 0, 1, 1, 0, 10, 2000, 2000, 1, 1, 1, 33554432, 2048, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 1, 1, 10, 1, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_movement` WHERE (`CreatureId` = 3542021);
INSERT INTO `creature_template_movement` (`CreatureId`, `Ground`, `Swim`, `Flight`, `Rooted`, `Chase`, `Random`, `InteractionPauseTimer`) VALUES
(3542021, 1, 0, 0, 1, 0, 0, 0);

DELETE FROM `creature_template_addon` WHERE (`entry` = 3542021);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES
(3542021, 0, 0, 0, 1, 0, 3, '');

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 3542021);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(3542021, 1, 18538, 0, 0, 0);

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 3542021);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(3542021, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 0, 38, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Felguard Brute - On Just Summoned - Set In Combat With Zone'),
(3542021, 0, 1, 2, 0, 0, 100, 0, 1500, 1500, 1500, 1500, 0, 66, 0, 0, 0, 0, 0, 0, 21, 100, 0, 0, 0, 0, 0, 0, 0, 'Felguard Brute - In Combat - Set Orientation Closest Player'),
(3542021, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 11, 25322, 2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Felguard Brute - In Combat - Cast \'Sweeping Slam\''),
(3542021, 0, 3, 0, 1, 0, 100, 0, 15000, 15000, 15000, 15000, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Felguard Brute - Out of Combat - Despawn Instant');

DELETE FROM `zone_difficulty_hardmode_ai` WHERE `CreatureEntry` = 17377;
INSERT INTO `zone_difficulty_hardmode_ai` (`CreatureEntry`, `Chance`, `Spell`, `Spellbp0`, `Spellbp1`, `Spellbp2`, `Target`, `TargetArg`, `Delay`, `Cooldown`, `Repetitions`, `Enabled`, `Comment`) VALUES
(17377, 100, 3542020, 0, 0, 0, 5, 0, 20000, 20000, 0, 1, 'Blood Furnace, Keli\'dan the Breaker - Summon Magtheridon\'s Shadow'),
(17377, 100, 3542021, 0, 0, 0, 5, 0, 1000, 900000, 0, 1, 'Blood Furnace, Keli\'dan the Breaker - Summon Felguard');
