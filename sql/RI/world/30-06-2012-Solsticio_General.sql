UPDATE creature_template SET faction_A='35', faction_H='35' where NAME LIKE "%Midsummer%";
UPDATE creature_template SET faction_A='35', faction_H='35' WHERE entry IN (19175,16781);
UPDATE creature_template SET faction_A='35', faction_H='35' WHERE entry IN (26221);

-- Creature Gossip Update for midsummer event
UPDATE `creature_template` SET `gossip_menu_id`=9148 WHERE `entry`=16781; -- Midsummer Celebrant
UPDATE `creature_template` SET `gossip_menu_id`=9203 WHERE `entry`=25897; -- Dustwallow Marsh Flame Warden
UPDATE `creature_template` SET `gossip_menu_id`=9203 WHERE `entry`=25898; -- Elwynn Forest Flame Warden
UPDATE `creature_template` SET `gossip_menu_id`=9203 WHERE `entry`=25904; -- Redridge Flame Warden
UPDATE `creature_template` SET `gossip_menu_id`=9203 WHERE `entry`=25915; -- Cape of Stranglethorn Flame Warden
UPDATE `creature_template` SET `gossip_menu_id`=9204 WHERE `entry`=25962; -- Fire Eater
UPDATE `creature_template` SET `gossip_menu_id`=9203 WHERE `entry`=32808; -- Zul'Drak Flame Warden


-- Gossip insert from sniff
DELETE FROM `gossip_menu` WHERE (`entry`=9203 AND `text_id`=12504) OR (`entry`=9148 AND `text_id`=12376) OR (`entry`=9204 AND `text_id`=12506) OR (`entry`=9356 AND `text_id`=12374) OR (`entry`=9358 AND `text_id`=12374) OR (`entry`=9360 AND `text_id`=12374) OR (`entry`=9374 AND `text_id`=12374) OR (`entry`=9367 AND `text_id`=12374) OR (`entry`=9363 AND `text_id`=12374) OR (`entry`=9380 AND `text_id`=12374) OR (`entry`=9382 AND `text_id`=12374) OR (`entry`=9361 AND `text_id`=12374) OR (`entry`=9381 AND `text_id`=12374);
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES
(9148, 12376), -- 16781
(9203, 12504), -- 25898, 25904, 32808, 25897, 25915
(9204, 12506), -- 25962
(9380, 12374), -- 187950
(9381, 12374), -- 187951
(9382, 12374), -- 187952
(9356, 12374), -- 187954
(9358, 12374), -- 187956
(9360, 12374), -- 187958
(9361, 12374), -- 187959
(9363, 12374), -- 187961
(9367, 12374), -- 187965
(9374, 12374); -- 187971


-- Add quest to creature (warden)
DELETE FROM `game_event_creature_quest` WHERE (`eventEntry`=1 AND `id`=25898 AND `quest`=11816) OR (`eventEntry`=1 AND `id`=25904 AND `quest`=11822) OR (`eventEntry`=1 AND `id`=32808 AND `quest`=13492) OR (`eventEntry`=1 AND `id`=25897 AND `quest`=11815) OR (`eventEntry`=1 AND `id`=25915 AND `quest`=11832);
INSERT INTO `game_event_creature_quest` (`eventEntry`, `id`, `quest`) VALUES
(1, 25897, 11815),
(1, 25898, 11816),
(1, 25904, 11822),
(1, 25915, 11832),
(1, 32808, 13492);

-- Add quest relation to Gameobject (fire)
DELETE FROM `game_event_gameobject_quest` WHERE (`id`=187954 AND `quest`=11766) OR (`id`=187956 AND `quest`=11768) OR (`id`=187958 AND `quest`=11770) OR (`id`=187971 AND `quest`=11783) OR (`id`=187965 AND `quest`=11777) OR (`id`=187961 AND `quest`=11773) OR (`id`=187950 AND `quest`=11800) OR (`id`=187952 AND `quest`=11802) OR (`id`=187959 AND `quest`=11771);
INSERT INTO `game_event_gameobject_quest` (`eventEntry`, `id`, `quest`) VALUES

(1, 187950, 11800),
(1, 187951, 11801),
(1, 187952, 11802),
(1, 187954, 11766), 
(1, 187956, 11768),
(1, 187958, 11770),
(1, 187959, 11771),
(1, 187961, 11773),
(1, 187965, 11777),
(1, 187971, 11783);


-- Misc Fix for creature from sniff
UPDATE `creature_template` SET `minlevel`=77, `maxlevel`=77, `npcflag`=3, `faction_A`=84, `faction_H`=84 WHERE `entry`=32808; -- Zul'Drak Flame Warden

UPDATE `creature_template` SET `gossip_menu_id`=9260 WHERE `entry`=25754;
DELETE FROM `gossip_menu` WHERE `entry`=9260 AND `text_id`=12572;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9260,12572);

UPDATE `creature_template` SET `gossip_menu_id`=11417 WHERE `entry`=25697;
DELETE FROM `gossip_menu` WHERE `entry`=11417 AND `text_id`=12390;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (11417,12390);

UPDATE `creature_template` SET `gossip_menu_id`=9298 WHERE `entry`=16818;
DELETE FROM `gossip_menu` WHERE `entry`=9298 AND `text_id`=12609;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9298,12609);

UPDATE `creature_template` SET `gossip_menu_id`=9204 WHERE `entry`=26113;
UPDATE `creature_template` SET `gossip_menu_id`=9204 WHERE `entry`=25994;
DELETE FROM `gossip_menu` WHERE `entry`=9204 AND `text_id`=12506;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9204,12506);

UPDATE `creature_template` SET `gossip_menu_id`=9148 WHERE `entry`=16781;
DELETE FROM `gossip_menu` WHERE `entry`=9148 AND `text_id`=12376;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9148,12376);

UPDATE `creature_template` SET `gossip_menu_id`=9157 WHERE `entry`=26221;
DELETE FROM `gossip_menu` WHERE `entry`=9157 AND `text_id`=12390;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9157,12390);

UPDATE `creature_template` SET `gossip_menu_id`=9278 WHERE `entry`=25884;
UPDATE `creature_template` SET `gossip_menu_id`=9278 WHERE `entry`=25918;
UPDATE `creature_template` SET `gossip_menu_id`=9278 WHERE `entry`=25919;
UPDATE `creature_template` SET `gossip_menu_id`=9278 WHERE `entry`=25920;
UPDATE `creature_template` SET `gossip_menu_id`=9278 WHERE `entry`=25921;
UPDATE `creature_template` SET `gossip_menu_id`=9278 WHERE `entry`=25922;
UPDATE `creature_template` SET `gossip_menu_id`=9278 WHERE `entry`=25924;
UPDATE `creature_template` SET `gossip_menu_id`=9278 WHERE `entry`=25926;
UPDATE `creature_template` SET `gossip_menu_id`=9278 WHERE `entry`=25928;
UPDATE `creature_template` SET `gossip_menu_id`=9278 WHERE `entry`=25929;
UPDATE `creature_template` SET `gossip_menu_id`=9278 WHERE `entry`=25930;
UPDATE `creature_template` SET `gossip_menu_id`=9278 WHERE `entry`=25932;
UPDATE `creature_template` SET `gossip_menu_id`=9278 WHERE `entry`=25934;
UPDATE `creature_template` SET `gossip_menu_id`=9278 WHERE `entry`=25936;
UPDATE `creature_template` SET `gossip_menu_id`=9278 WHERE `entry`=25937;
UPDATE `creature_template` SET `gossip_menu_id`=9278 WHERE `entry`=25938;
UPDATE `creature_template` SET `gossip_menu_id`=9278 WHERE `entry`=25940;
UPDATE `creature_template` SET `gossip_menu_id`=9278 WHERE `entry`=25943;
UPDATE `creature_template` SET `gossip_menu_id`=9278 WHERE `entry`=25947;
UPDATE `creature_template` SET `gossip_menu_id`=9278 WHERE `entry`=32809;
UPDATE `creature_template` SET `gossip_menu_id`=9278 WHERE `entry`=32810;
UPDATE `creature_template` SET `gossip_menu_id`=9278 WHERE `entry`=32811;
UPDATE `creature_template` SET `gossip_menu_id`=9278 WHERE `entry`=32812;
UPDATE `creature_template` SET `gossip_menu_id`=9278 WHERE `entry`=32813;
UPDATE `creature_template` SET `gossip_menu_id`=9278 WHERE `entry`=32814;
UPDATE `creature_template` SET `gossip_menu_id`=9278 WHERE `entry`=32815;
UPDATE `creature_template` SET `gossip_menu_id`=9278 WHERE `entry`=32816;
DELETE FROM `gossip_menu` WHERE `entry`=9278 AND `text_id`=12582;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9278,12582);

DELETE FROM `gossip_menu` WHERE `entry`=9354 AND `text_id`=12377;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9354,12377);
DELETE FROM `gossip_menu` WHERE `entry`=9384 AND `text_id`=12377;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9384,12377);
DELETE FROM `gossip_menu` WHERE `entry`=9385 AND `text_id`=12377;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9385,12377);
DELETE FROM `gossip_menu` WHERE `entry`=9386 AND `text_id`=12377;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9386,12377);
DELETE FROM `gossip_menu` WHERE `entry`=9387 AND `text_id`=12377;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9387,12377);
DELETE FROM `gossip_menu` WHERE `entry`=9389 AND `text_id`=12377;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9389,12377);
DELETE FROM `gossip_menu` WHERE `entry`=9390 AND `text_id`=12377;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9390,12377);
DELETE FROM `gossip_menu` WHERE `entry`=9393 AND `text_id`=12377;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9393,12377);
DELETE FROM `gossip_menu` WHERE `entry`=9395 AND `text_id`=12377;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9395,12377);
DELETE FROM `gossip_menu` WHERE `entry`=9396 AND `text_id`=12377;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9396,12377);
DELETE FROM `gossip_menu` WHERE `entry`=9399 AND `text_id`=12377;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9399,12377);
DELETE FROM `gossip_menu` WHERE `entry`=9401 AND `text_id`=12377;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9401,12377);
DELETE FROM `gossip_menu` WHERE `entry`=9403 AND `text_id`=12377;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9403,12377);
DELETE FROM `gossip_menu` WHERE `entry`=9408 AND `text_id`=12377;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9408,12377);
DELETE FROM `gossip_menu` WHERE `entry`=9409 AND `text_id`=12377;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9409,12377);
DELETE FROM `gossip_menu` WHERE `entry`=9410 AND `text_id`=12377;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9410,12377);
DELETE FROM `gossip_menu` WHERE `entry`=9411 AND `text_id`=12377;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9411,12377);
DELETE FROM `gossip_menu` WHERE `entry`=9412 AND `text_id`=12377;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9412,12377);
DELETE FROM `gossip_menu` WHERE `entry`=9413 AND `text_id`=12377;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9413,12377);
DELETE FROM `gossip_menu` WHERE `entry`=10230 AND `text_id`=12377;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (10230,12377);
DELETE FROM `gossip_menu` WHERE `entry`=10232 AND `text_id`=12377;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (10232,12377);
DELETE FROM `gossip_menu` WHERE `entry`=10233 AND `text_id`=12377;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (10233,12377);
DELETE FROM `gossip_menu` WHERE `entry`=10234 AND `text_id`=12377;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (10234,12377);
DELETE FROM `gossip_menu` WHERE `entry`=10237 AND `text_id`=12377;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (10237,12377);
DELETE FROM `gossip_menu` WHERE `entry`=10238 AND `text_id`=12377;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (10238,12377);
DELETE FROM `gossip_menu` WHERE `entry`=10240 AND `text_id`=12377;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (10240,12377);
DELETE FROM `gossip_menu` WHERE `entry`=10243 AND `text_id`=12377;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (10243,12377);
















-- Hordes's Honor the Flame quests full data support + spawned missing camps/or individual gameojbect and npcs, also corrected creature_templates/
UPDATE `gameobject_template` SET `data2`=5 WHERE `entry`=181376; -- makes bonfires hit with little fire on right range in when jump to it /was too little before/
-- Add missing creature_quesrelation and involvedrealation that were blocking quests
-- The Flame Keeper of Kalimdor - {Achievement=1026}
DELETE FROM `creature_involvedrelation` WHERE `quest` IN (11846,11845,11852,11839,11859,11841,11849,11861,11847);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES
(25929, 11846), -- Durotar
(25928, 11845), -- Desolace
(25936, 11852), -- Mulgore
(25922, 11839), -- Winterspring
(25943, 11859), -- Barrens
(25932, 11849), -- Feralas
(25884, 11841), -- Ashenvale
(25930, 11847), -- Dustwallow marsh
(25945, 11861); -- Thousand Needles
UPDATE `quest_template` SET `RequiredRaces`=690,`RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300, `OfferRewardText`='Honor the Durotar flame!' WHERE `Id`=11846;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`RequiredRaces`=690,`OfferRewardText`='Honor the Mulgore flame!' WHERE `Id`=11852;
UPDATE `quest_template` SET `RequiredRaces`=690,`OfferRewardText`='Honor the Barrens flame!',`RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300 WHERE `Id`=11859; -- Barrens
UPDATE `quest_template` SET `RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`RequiredRaces`=690,`OfferRewardText`='Honor the Tanaris flame!',`RequestItemsText`='' WHERE `Id`=11838 LIMIT 1;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`RequiredRaces`=690,`OfferRewardText`='Honor the Ashenvale flame!' WHERE `Id`=11841;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`RequiredRaces`=690,`OfferRewardText`='Honor the Winterspring flame!' WHERE `Id`=11839;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`RequiredRaces`=690,`OfferRewardText`='Honor the Desolace flame!' WHERE `Id`=11845;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`RequiredRaces`=690,`OfferRewardText`='Honor the Thousand Needles flame!' WHERE `Id`=11861;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`RequiredRaces`=690,`OfferRewardText`='Honor the Feralas flame!' WHERE `Id`=11849;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`RequiredRaces`=690,`OfferRewardText`='Honor the Dustwallow Marsh flame!' WHERE `Id`=11847;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`RequiredRaces`=690,`OfferRewardText`='Honor the Silithus flame!' WHERE `Id`=11836;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`RequiredRaces`=690,`OfferRewardText`='Honor the Stonetalon Mountains flame!' WHERE `Id`=11856;
-- The Flame Keeper of Outland - {Achievement=1027}
DELETE FROM `creature_involvedrelation` WHERE `quest` IN (11851,11855,11835,11858,11863,11821,11854);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES
(25934, 11851), -- Hellfire Peninsula
(25938, 11855), -- Shadowmoon Valley
(25918, 11835), -- Netherstorm
(25942, 11858), -- Terokkar
(25947, 11863), -- Zangarmarsh
(25937, 11854); -- Nagrand
UPDATE `quest_template` SET `RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`RequiredRaces`=690,`OfferRewardText`='Honor the Hellfire Peninsula flame!' WHERE `Id`=11851;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`RequiredRaces`=690,`OfferRewardText`='Honor the Shadowmoon Valley flame!' WHERE `Id`=11855;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`RequiredRaces`=690,`OfferRewardText`='Honor the Nagrand flame!' WHERE `Id`=11854;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`RequiredRaces`=690,`OfferRewardText`='Honor the Netherstorm flame!' WHERE `Id`=11835;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`RequiredRaces`=690,`OfferRewardText`='Honor the Blades Edge Mountains flame! ', `RequestItemsText`='' WHERE `Id`=11843;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`RequiredRaces`=690,`OfferRewardText`='Honor the Terokkar flame!' WHERE `Id`=11858;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`RequiredRaces`=690,`OfferRewardText`='Honor the Zangarmarsh flame!' WHERE `Id`=11863;
-- Flame Keeper of Northrend
DELETE FROM `creature_involvedrelation` WHERE `quest` IN (13500,13493,13494,13495,13496,13497,13498,13499);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES
(32816, 13500), -- Zul'Drak
(32809, 13493), -- Borean Tundra
(32810, 13494), -- Sholazar Basin
(32811, 13495), -- Dragonblight
(32815, 13499), -- Crystalsong Forest
(32814, 13498), -- Storm Peaks
(32813, 13497), -- Grizzly Hills
(32812, 13496); -- Howling Fjords
UPDATE `quest_template` SET `RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`RequiredRaces`=690,`OfferRewardText`='Honor the Zul''Drak flame!' WHERE `Id`=13500;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`RequiredRaces`=690,`OfferRewardText`='Honor the Borean Tundra flame!' WHERE `Id`=13493;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`RequiredRaces`=690,`OfferRewardText`='Honor the Sholazar Basin flame!' WHERE `Id`=13494;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`RequiredRaces`=690,`OfferRewardText`='Honor the Dragonblight flame!' WHERE `Id`=13495;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`RequiredRaces`=690,`OfferRewardText`='Honor the Crystalsong Forest flame!' WHERE `Id`=13499;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`RequiredRaces`=690,`OfferRewardText`='Honor the Storm Peaks flame!' WHERE `Id`=13498;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`RequiredRaces`=690,`OfferRewardText`='Honor the Grizzly Hills flame!' WHERE `Id`=13497;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`RequiredRaces`=690,`OfferRewardText`='Honor the Howling Fjords flame!' WHERE `Id`=13496;
-- Flame Keeper of Eastern Kingdom? {Achievement=1025}
DELETE FROM `creature_involvedrelation` WHERE `quest` IN (11850,11848,11853,11857,11837,11844,11860,11584,11862,11842,11840);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES
(25933, 11850), -- Ghostland
(25931, 11848), -- Eversong woods
(25935, 11853), -- Hillsbrad Foothills
(25941, 11857), -- Swamp of sorrows
(25920, 11837), -- Cape of Stranglethorn
(25927, 11844), -- Burning Steppes
(25944, 11860), -- The Hinterlands
(25939, 11584), -- Silverpine Forest
(25946, 11862), -- Tirisfal Glades
(25925, 11842), -- Badlands
(25923, 11840); -- Arathi Highlands
UPDATE `quest_template` SET `RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`RequiredRaces`=690,`OfferRewardText`='Honor the Ghostland flame!' WHERE `Id`=11850;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`RequiredRaces`=690,`OfferRewardText`='Honor the Eversong woods flame!' WHERE `Id`=11848;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`RequiredRaces`=690,`OfferRewardText`='Honor the Hillsbrad Foothills flame!' WHERE `Id`=11853;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`RequiredRaces`=690,`OfferRewardText`='Honor the Swamp of sorrows flame!' WHERE `Id`=11857;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`RequiredRaces`=690,`OfferRewardText`='Honor the Cape of Stranglethorn flame!' WHERE `Id`=11837;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`RequiredRaces`=690,`OfferRewardText`='Honor the Burning Steppes flame!' WHERE `Id`=11844;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`RequiredRaces`=690,`OfferRewardText`='Honor the Hinterlands flame!' WHERE `Id`=11860;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`RequiredRaces`=690,`OfferRewardText`='Honor the Silverpine Forest flame!' WHERE `Id`=11584;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`RequiredRaces`=690,`OfferRewardText`='Honor the Tirisfal Glades flame!' WHERE `Id`=11862;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`RequiredRaces`=690,`OfferRewardText`='Honor the Badlands flame!' WHERE `Id`=11842;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`RequiredRaces`=690,`OfferRewardText`='Honor the Arathi Highlands flame!' WHERE `Id`=11840;
-- Add missing camps, npcs, gobject in general, corrected npc data for Horde/Kalimdor,Eastern Kingdoms,Outland/
-- The ids below are deleting duplicate doubles spawns from Tanaris horde fire camp and reuse the guids to recreate another one + few extra objects
-- Update creature_template for some creatures
UPDATE `creature_template` SET `faction_A`=35,`faction_H`=35 WHERE `entry`=16781; -- the celebrants should be friendly to all, ignore the 17++ faction it is a blizzard bug
UPDATE `creature_template` SET `minlevel`=30,`maxlevel`=30,`faction_A`=83,`faction_H`=83,`dynamicflags`=8,`unit_flags`=37632,`npcflag`=3 WHERE `entry` IN (25929); -- Durotar
UPDATE `creature_template` SET `minlevel`=20,`maxlevel`=20,`faction_A`=83,`faction_H`=83,`dynamicflags`=8,`unit_flags`=37632,`npcflag`=3 WHERE `entry` IN (25936); -- Mulgore
UPDATE `creature_template` SET `minlevel`=25,`maxlevel`=25,`faction_A`=83,`faction_H`=83,`dynamicflags`=8,`unit_flags`=37632,`npcflag`=3 WHERE `entry` IN (25946,25931); -- Tirisfal Glades and Eversong Woods
UPDATE `creature_template` SET `minlevel`=30,`maxlevel`=30,`faction_A`=83,`faction_H`=83,`dynamicflags`=8,`unit_flags`=37632,`npcflag`=3 WHERE `entry` IN (25933); -- Ghostlands
UPDATE `creature_template` SET `minlevel`=74,`maxlevel`=74,`faction_A`=83,`faction_H`=83,`dynamicflags`=8,`unit_flags`=37632,`npcflag`=3 WHERE `entry` IN (32811); -- Dragonblight
UPDATE `creature_template` SET `minlevel`=75,`maxlevel`=75,`faction_A`=83,`faction_H`=83,`dynamicflags`=8,`unit_flags`=37632,`npcflag`=3 WHERE `entry` IN (32813); -- Grizzly Hills
UPDATE `creature_template` SET `minlevel`=72,`maxlevel`=72,`faction_A`=83,`faction_H`=83,`dynamicflags`=8,`unit_flags`=37632,`npcflag`=3 WHERE `entry` IN (32812); -- Howling Fjord
UPDATE `creature_template` SET `minlevel`=77,`maxlevel`=77,`faction_A`=83,`faction_H`=83,`dynamicflags`=8,`unit_flags`=37632,`npcflag`=3 WHERE `entry` IN (32816); -- Zul'Drak
-- Add npcs for the Midsummer Festival Camp in Mulgore
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(150000, 16781, 1, 1, 1, 16446, 0, -2336.91, -619.347, -7.48957, 1.3426, 300, 0, 0, 3942, 0, 0, 0, 0, 0),
(150001, 16781, 1, 1, 1, 16438, 0, -2333.01, -607.47, -8.5825, 4.26458, 300, 0, 0, 3427, 0, 0, 0, 0, 0),
(150002, 16781, 1, 1, 1, 16445, 0, -2336.15, -605.978, -8.47793, 5.03898, 300, 0, 0, 3834, 0, 0, 0, 0, 0),
(150003, 16781, 1, 1, 1, 16438, 0, -2336.28, -611.022, -8.02869, 1.1973, 300, 0, 0, 2138, 0, 0, 0, 0, 0),
(150004, 25994, 1, 1, 1, 0, 151, -2344.99, -615.533, -7.06313, 0.976602, 300, 0, 0, 2871, 0, 0, 0, 0, 0),
(150005, 25936, 1, 1, 1, 0, 0, -2321.77, -614.483, -9.27059, 5.80089, 300, 0, 0, 484, 0, 0, 0, 0, 0);
-- Add objects for the Midsummer Festival Camp in Mulgore
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(164446, 181355, 1, 1, 1, -2335.13, -621.407, -7.62503, 5.5, 0, 0, 0.414693, 0.909961, 180, 100, 1),
(164447, 188020, 1, 1, 1, -2327.16, -631.314, -8.68343, 5.5, 0, 0, 0.398749, 0.91706, 180, 100, 1),
(164448, 181605, 1, 1, 1, -2342.39, -609.245, -7.76984, 5.5, 0, 0, 0.25038, -0.968148, 0, 100, 1),
(164449, 181306, 1, 1, 1, -2323.77, -610.206, -9.16689, 5.5, 0, 0, 0.843391, 0.5373, 180, 100, 1),
(164450, 181302, 1, 1, 1, -2326.25, -610.633, -8.98158, 1.58409, 0, 0, 0.711791, 0.702392, 180, 100, 1),
(164451, 181302, 1, 1, 1, -2325.28, -608.627, -9.18096, 1.58409, 0, 0, 0.711791, 0.702392, 180, 100, 1),
(164452, 188020, 1, 1, 1, -2318.53, -608.976, -9.42005, 5.5, 0, 0, 0.469472, 0.882948, 180, 100, 1),
(164453, 188021, 1, 1, 1, -2326.65, -613.461, -8.78372, 1.19925, 0, 0, 0.564334, 0.825546, 180, 100, 1),
(164454, 181355, 1, 1, 1, -2330.4, -606.562, -8.87822, 5.5, 0, 0, 0.414693, 0.909961, 180, 100, 1),
(164455, 187965, 1, 1, 1, -2329.42, -624.806, -8.27507, 5.5, 0, 0, 0.766044, -0.642788, 0, 100, 1),
(164456, 181376, 1, 1, 1, -2329.42, -624.806, -6.27507, 5.5, 0, 0, -0.34202, 0.939693, 180, 0, 1),
(164457, 188020, 1, 1, 1, -2337.14, -602.794, -8.71659, 5.5, 0, 0, 0.477159, 0.878817, 180, 100, 1),
(164458, 181355, 1, 1, 1, -2320.03, -612.344, -9.38502, 5.5, 0, 0, 0.21644, -0.976296, 180, 100, 1),
(164258, 188020, 1, 1, 1, -2348.37, -615.991, -6.85173, 5.82288, 0, 0, 0.228128, -0.973631, 300, 0, 1),
(164282, 181305, 1, 1, 1, -2330.42, -611.458, -8.53482, 6.06204, 0, 0, 0.110346, -0.993893, 300, 0, 1),
(164283, 181307, 1, 1, 1, -2330.98, -609.979, -7.54302, 5.68898, 0, 0, 0.292752, -0.956188, 300, 0, 1);
-- Fix few Burning Steppes camp objects and npcs
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(164368, 188021, 0, 1, 1, -7596.67, -2079.81, 125.968, 3.20786, 0, 0, 0.999451, -0.0331301, 180, 100, 1),
(164369, 181307, 0, 1, 1, -7591.5, -2080.49, 126.518, 0.593412, 0, 0, 0.292372, 0.956305, 180, 100, 1),
(164307, 181305, 0, 1, 1, -7591.14, -2081, 125.519, 3.49137, 0, 0, 0.984746, -0.174, 300, 0, 1),
(164308, 181302, 0, 1, 1, -7594.62, -2076.47, 126.604, 3.71993, 0, 0, 0.958482, -0.285154, 300, 0, 1);
-- Fix Tirisfal Glade Flamekeeper orientation
-- Add missing objects in Badlands camp
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(164309, 181355, 0, 1, 1, -6685.84, -2205.18, 249.466, 3.56287, 0, 0, 0.977897, -0.209085, 300, 0, 1),
(164310, 181355, 0, 1, 1, -6685.35, -2190.66, 247.391, 4.19511, 0, 0, 0.864441, -0.502734, 300, 0, 1),
(164311, 181355, 0, 1, 1, -6710.1, -2202.15, 248.991, 6.13819, 0, 0, 0.0724366, -0.997373, 300, 0, 1);
-- Add missing pavilion in Hillsbrad Foothills
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(164335, 188021, 0, 1, 1, -140.643, -811.518, 55.3504, 2.31117, 0, 0, 0.915031, 0.403384, 300, 0, 1);
-- Add whole missing camp in Shadowmoon valley and remove doubles spawns from Stranglethorn one
UPDATE `creature_template` SET `minlevel`=40,`maxlevel`=40,`faction_A`=83,`faction_H`=83,`dynamicflags`=8,`unit_flags`=37632,`npcflag`=3 WHERE `entry` IN (25938); -- Shadowmoon Valley Flamekeeper
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(164370, 188021, 530, 1, 1, -3065.99, 2385.69, 62.3736, 2.08047, 0, 0, 0.862523, 0.506019, 300, 0, 1),
(164371, 188020, 530, 1, 1, -3045.07, 2384.62, 62.3369, 3.34888, 0, 0, 0.994634, -0.10346, 300, 0, 1),
(164372, 181605, 530, 1, 1, -3045.53, 2393.71, 61.5344, 3.48476, 0, 0, 0.985316, -0.170741, 300, 0, 1),
(164373, 181355, 530, 1, 1, -3051.54, 2384.15, 62.8406, 3.5845, 0, 0, 0.975579, -0.21965, 300, 0, 1),
(164374, 181376, 530, 1, 1, -3059.17, 2374.85, 65.1011, 2.03334, 0, 0, 0.850361, 0.526199, 300, 0, 1),
(164375, 187967, 530, 1, 1, -3059.17, 2374.85, 63.1011, 2.03334, 0, 0, 0.850361, 0.526199, 300, 0, 1),
(164376, 188020, 530, 1, 1, -3082.82, 2371.64, 62.3845, 0.325101, 0, 0, 0.161836, 0.986818, 300, 0, 1),
(164377, 181305, 530, 1, 1, -3067.53, 2387.47, 62.1022, 2.2666, 0, 0, 0.905816, 0.423671, 300, 0, 1),
(164378, 181307, 530, 1, 1, -3066.21, 2387.82, 63.0923, 2.58076, 0, 0, 0.96094, 0.276755, 300, 0, 1),
(164379, 181306, 530, 1, 1, -3061.06, 2385.06, 62.9053, 3.68032, 0, 0, 0.963941, -0.266117, 300, 0, 1),
(164380, 181302, 530, 1, 1, -3062.49, 2384.41, 62.8574, 3.88531, 0, 0, 0.931654, -0.363346, 300, 0, 1),
(164381, 181302, 530, 1, 1, -3062.11, 2386.29, 62.7605, 3.23892, 0, 0, 0.998816, -0.0486467, 300, 0, 1),
(164383, 181355, 530, 1, 1, -3083.01, 2388.64, 62.5579, 5.67117, 0, 0, 0.301252, -0.953545, 300, 0, 1),
(164384, 181355, 530, 1, 1, -3075.49, 2375.19, 61.7323, 5.22193, 0, 0, 0.506076, -0.862489, 300, 0, 1),
(164385, 181355, 530, 1, 1, -3065.87, 2401.47, 61.8687, 5.24138, 0, 0, 0.497663, -0.86737, 300, 0, 1),
(164386, 188020, 530, 1, 1, -3088.61, 2389.5, 61.8999, 0.53056, 0, 0, 0.26218, 0.965019, 300, 0, 1),
(164388, 188020, 530, 1, 1, -3062.43, 2404.35, 61.4089, 3.57398, 0, 0, 0.976721, -0.214514, 300, 0, 1);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(150006, 25938, 530, 1, 1, 0, 0, -3069.81, 2382.73, 61.8417, 3.90071, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(150007, 16781, 530, 1, 1, 21085, 0, -3061.44, 2392.12, 62.0978, 0.0381287, 300, 0, 0, 3834, 0, 0, 0, 0, 0),
(150008, 16781, 530, 1, 1, 16438, 0, -3058.96, 2387.94, 62.7011, 1.21073, 300, 0, 0, 2292, 0, 0, 0, 0, 0),
(150009, 16781, 530, 1, 1, 16443, 0, -3055.48, 2394.64, 61.4168, 3.79155, 300, 0, 0, 1716, 0, 0, 0, 0, 0),
(150010, 16781, 530, 1, 1, 16432, 0, -3047.02, 2383.16, 62.5462, 2.35427, 300, 0, 0, 3427, 0, 0, 0, 0, 0),
(150011, 25994, 530, 1, 1, 0, 151, -3050.94, 2390.53, 61.9839, 0.536069, 300, 0, 0, 2453, 0, 0, 0, 0, 0);
-- Add missing Blade's Edge camp
UPDATE `creature_template` SET `minlevel`=65,`maxlevel`=65,`faction_A`=83,`faction_H`=83,`dynamicflags`=8,`unit_flags`=37632,`npcflag`=3 WHERE `entry` IN (25926); -- Blade's Edge Flamekeeper
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(164414, 188021, 530, 1, 1, 2297.41, 6129.3, 135.503, 2.66739, 0, 0, 0.972023, 0.234886, 300, 0, 1),
(164415, 188020, 530, 1, 1, 2265.01, 6134.82, 137.384, 6.07962, 0, 0, 0.101609, -0.994824, 300, 0, 1),
(164416, 181355, 530, 1, 1, 2267.92, 6124.56, 137.287, 6.13852, 0, 0, 0.0722688, -0.997385, 300, 0, 1),
(164420, 181376, 530, 1, 1, 2282.43, 6134.5, 136.337, 8.01364, 0, 0, 0.134365, -0.990932, 300, 0, 1),
(164421, 187955, 530, 1, 1, 2282.43, 6134.5, 136.337, 6.01364, 0, 0, 0.134365, -0.990932, 300, 0, 1),
(164422, 188020, 530, 1, 1, 2265.31, 6159, 138.593, 0.0673877, 0, 0, 0.0336875, 0.999432, 300, 0, 1),
(164423, 181355, 530, 1, 1, 2271.19, 6164.05, 138.481, 5.89111, 0, 0, 0.194785, -0.980846, 300, 0, 1),
(164424, 188020, 530, 1, 1, 2311.24, 6163.44, 135.095, 3.22861, 0, 0, 0.999054, -0.0434958, 300, 0, 1),
(164425, 181355, 530, 1, 1, 2308.2, 6167.38, 135.411, 3.45245, 0, 0, 0.987945, -0.154804, 300, 0, 1),
(164426, 188020, 530, 1, 1, 2314.15, 6140.14, 134.04, 3.13044, 0, 0, 0.999984, 0.00557797, 300, 0, 1),
(164427, 181355, 530, 1, 1, 2311.99, 6135.23, 134.223, 2.95765, 0, 0, 0.995774, 0.0918422, 300, 0, 1),
(164429, 181605, 530, 1, 1, 2286.62, 6163.9, 136.412, 4.79359, 0, 0, 0.677824, -0.735224, 300, 0, 1),
(164430, 181305, 530, 1, 1, 2301.15, 6129.99, 135.447, 3.79771, 0, 0, 0.94667, -0.322204, 300, 0, 1),
(164431, 181307, 530, 1, 1, 2302.43, 6129.19, 136.444, 0.67575, 0, 0, 0.331483, 0.943461, 300, 0, 1),
(164432, 181302, 530, 1, 1, 2293.44, 6127.34, 135.515, 0.934927, 0, 0, 0.450623, 0.892714, 300, 0, 1),
(164434, 181302, 530, 1, 1, 2295.65, 6126.58, 135.553, 0.663179, 0, 0, 0.325546, 0.945526, 300, 0, 1),
(164435, 181306, 530, 1, 1, 2293.88, 6125.2, 135.587, 0.923931, 0, 0, 0.445708, 0.895178, 300, 0, 1);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(150012, 16781, 530, 1, 1, 16444, 0, 2269.74, 6134.05, 137.055, 6.04866, 300, 0, 0, 2699, 0, 0, 0, 0, 0),
(150013, 16781, 530, 1, 1, 16442, 0, 2271.41, 6128.35, 137.214, 0.679679, 300, 0, 0, 1990, 0, 0, 0, 0, 0),
(150014, 16781, 530, 1, 1, 21085, 0, 2271.34, 6158.77, 138.457, 0.683606, 300, 0, 0, 2371, 0, 0, 0, 0, 0),
(150015, 16781, 530, 1, 1, 16436, 0, 2300.8, 6167.7, 136.322, 5.55072, 300, 0, 0, 1651, 0, 0, 0, 0, 0),
(150016, 16781, 530, 1, 1, 21086, 0, 2304.68, 6161.6, 134.924, 1.72976, 300, 0, 0, 2062, 0, 0, 0, 0, 0),
(150017, 25994, 530, 1, 1, 0, 151, 2279.56, 6162.76, 137.703, 0.112621, 300, 0, 0, 2961, 0, 0, 0, 0, 0),
(150018, 25926, 530, 1, 1, 0, 0, 2298.33, 6134.3, 135.674, 1.15799, 300, 0, 0, 42, 0, 0, 0, 0, 0);
-- Add missing Netherstorm camp
UPDATE `creature_template` SET `minlevel`=70,`maxlevel`=70,`faction_A`=83,`faction_H`=83,`dynamicflags`=8,`unit_flags`=37632,`npcflag`=3 WHERE `entry` IN (25918); -- Netherstorm
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(164459, 188021, 530, 1, 1, 2930.82, 3700.62, 143.562, 2.68546, 0, 0, 0.974105, 0.226094, 300, 0, 1),
(164460, 188020, 530, 1, 1, 2939, 3710.42, 143.775, 5.91502, 0, 0, 0.183045, -0.983104, 300, 0, 1),
(164461, 188020, 530, 1, 1, 2929.71, 3714.03, 144.258, 5.84826, 0, 0, 0.215752, -0.976448, 300, 0, 1),
(164462, 188020, 530, 1, 1, 2926.49, 3680.92, 143.656, 5.85611, 0, 0, 0.211916, -0.977288, 300, 0, 1),
(164463, 188020, 530, 1, 1, 2914.81, 3686.23, 144.3, 5.85611, 0, 0, 0.211916, -0.977288, 300, 0, 1),
(164464, 181355, 530, 1, 1, 2916.61, 3688.95, 144.099, 5.95036, 0, 0, 0.165644, -0.986186, 300, 0, 1),
(164466, 181355, 530, 1, 1, 2936.48, 3709.34, 143.92, 1.22619, 0, 0, 0.575402, 0.817871, 300, 0, 1),
(164468, 181355, 530, 1, 1, 2930.48, 3712.12, 144.464, 5.82155, 0, 0, 0.228773, -0.97348, 300, 0, 1),
(164470, 181355, 530, 1, 1, 2924.86, 3684.41, 143.645, 5.79079, 0, 0, 0.243717, -0.969846, 300, 0, 1),
(164473, 181376, 530, 1, 1, 2921.26, 3690.47, 145.838, 5.94709, 0, 0, 0.167258, -0.985913, 300, 0, 1),
(164474, 187949, 530, 1, 1, 2922.17, 3690.15, 143.809, 5.94709, 0, 0, 0.167258, -0.985913, 300, 0, 1),
(164476, 181605, 530, 1, 1, 2917.63, 3677.32, 144.166, 1.11217, 0, 0, 0.527867, 0.849327, 300, 0, 1),
(164479, 181305, 530, 1, 1, 2929.17, 3694.77, 143.652, 3.48177, 0, 0, 0.98557, -0.169269, 300, 0, 1),
(164480, 181307, 530, 1, 1, 2927.52, 3695.79, 144.646, 6.06337, 0, 0, 0.109686, -0.993966, 300, 0, 1),
(164481, 181302, 530, 1, 1, 2934.2, 3699.41, 143.281, 5.29132, 0, 0, 0.475852, -0.879525, 300, 0, 1),
(164482, 181302, 530, 1, 1, 2932.66, 3699.09, 143.42, 3.97499, 0, 0, 0.91443, -0.404745, 300, 0, 1),
(164483, 181306, 530, 1, 1, 2933.35, 3701.68, 143.353, 4.69363, 0, 0, 0.713707, -0.700444, 300, 0, 1);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(150019, 25918, 530, 1, 1, 0, 0, 2927.71, 3702.01, 143.705, 2.80239, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(150020, 16781, 530, 1, 1, 16432, 0, 2933.41, 3708.45, 144.048, 5.94399, 300, 0, 0, 3624, 0, 0, 0, 0, 0),
(150021, 16781, 530, 1, 1, 16431, 0, 2935.32, 3705.25, 143.374, 1.8505, 300, 0, 0, 2371, 0, 0, 0, 0, 0),
(150022, 16781, 530, 1, 1, 16442, 0, 2917.5, 3683.52, 144.197, 0.0558533, 300, 0, 0, 1524, 0, 0, 0, 0, 0),
(150023, 16781, 530, 1, 1, 16436, 0, 2922.56, 3684.94, 143.823, 3.96478, 300, 0, 0, 3624, 0, 0, 0, 0, 0),
(150024, 25994, 530, 1, 1, 0, 151, 2919.92, 3676.76, 144.123, 1.41695, 300, 0, 0, 1848, 0, 0, 0, 0, 0);
-- Northrend
-- Add Borean tundra camp
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(164507, 188021, 571, 1, 1, 4454.99, 5625.29, 56.8959, 4.29074, 0, 0, 0.839423, -0.543479, 300, 0, 1),
(164509, 188020, 571, 1, 1, 4425.93, 5623.18, 54.1981, 1.06747, 0, 0, 0.508751, 0.860913, 300, 0, 1),
(164510, 188020, 571, 1, 1, 4438.21, 5646.36, 59.8882, 4.28367, 0, 0, 0.841339, -0.540508, 300, 0, 1),
(164511, 188020, 571, 1, 1, 4476.71, 5632.46, 60.6755, 4.46182, 0, 0, 0.789922, -0.613208, 300, 0, 1),
(164512, 188020, 571, 1, 1, 4470.92, 5609.85, 56.8847, 4.46182, 0, 0, 0.789922, -0.613208, 300, 0, 1),
(164513, 181605, 571, 1, 1, 4470.25, 5621.62, 58.661, 1.19849, 0, 0, 0.56402, 0.825761, 300, 0, 1),
(164514, 181355, 571, 1, 1, 4472.86, 5630.19, 59.8352, 4.29296, 0, 0, 0.838819, -0.54441, 300, 0, 1),
(164515, 181355, 571, 1, 1, 4468.37, 5613.21, 57.1389, 1.30374, 0, 0, 0.606674, 0.794951, 300, 0, 1),
(164516, 181355, 571, 1, 1, 4429.57, 5625.52, 54.9768, 1.37443, 0, 0, 0.634385, 0.773017, 300, 0, 1),
(164517, 181355, 571, 1, 1, 4438.18, 5641.68, 58.4478, 1.00136, 0, 0, 0.480023, 0.877256, 300, 0, 1),
(164518, 194033, 571, 1, 1, 4441.05, 5627.71, 56.3487, 4.54665, 0, 0, 0.763211, -0.646149, 300, 0, 1),
(164519, 181376, 571, 1, 1, 4441.05, 5627.71, 58.3487, 4.69194, 0, 0, 0.714298, -0.699841, 300, 0, 1),
(164520, 181305, 571, 1, 1, 4457.34, 5627.04, 57.2747, 0.298436, 0, 0, 0.148665, 0.988888, 300, 0, 1),
(164521, 181307, 571, 1, 1, 4457.69, 5628.67, 58.2895, 4.7218, 0, 0, 0.703772, -0.710426, 300, 0, 1),
(164522, 181302, 571, 1, 1, 4450.11, 5628.14, 56.7657, 1.65482, 0, 0, 0.73618, 0.676786, 300, 0, 1),
(164524, 181302, 571, 1, 1, 4451.86, 5626.77, 56.7422, 0.725691, 0, 0, 0.354936, 0.934891, 300, 0, 1),
(164525, 181306, 571, 1, 1, 4450.1, 5626.02, 56.6652, 1.32259, 0, 0, 0.614141, 0.789196, 300, 0, 1);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(150025, 16781, 571, 1, 1, 16438, 0, 4464.65, 5615.53, 56.9756, 0.761036, 300, 0, 0, 3427, 0, 0, 0, 0, 0),
(150026, 16781, 571, 1, 1, 16443, 0, 4463.64, 5619.44, 57.2937, 0.348702, 300, 0, 0, 3237, 0, 0, 0, 0, 0),
(150027, 16781, 571, 1, 1, 16432, 0, 4468.31, 5631.88, 59.2365, 4.61106, 300, 0, 0, 2292, 0, 0, 0, 0, 0),
(150028, 16781, 571, 1, 1, 16438, 0, 4431.68, 5629.68, 55.7222, 0.687992, 300, 0, 0, 3144, 0, 0, 0, 0, 0),
(150029, 16781, 571, 1, 1, 16444, 0, 4437.48, 5636.46, 57.3127, 4.94564, 300, 0, 0, 3524, 0, 0, 0, 0, 0),
(150030, 25994, 571, 1, 1, 0, 151, 4469.26, 5627.85, 59.0877, 4.69872, 300, 0, 0, 2138, 0, 0, 0, 0, 0),
(150031, 32809, 571, 1, 1, 0, 0, 4451.59, 5621.71, 56.6329, 4.04133, 300, 0, 0, 9610, 0, 0, 0, 0, 0);
-- Add Dragonblight camp
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(164527, 188021, 571, 1, 1, 3776.27, 1479.31, 91.7672, 3.0495, 0, 0, 0.99894, 0.0460317, 300, 0, 1),
(164528, 188020, 571, 1, 1, 3773.6, 1491.79, 90.9616, 4.7656, 0, 0, 0.688046, -0.725667, 300, 0, 1),
(164529, 188020, 571, 1, 1, 3779.89, 1492.12, 90.4649, 4.7656, 0, 0, 0.688046, -0.725667, 300, 0, 1),
(164530, 181355, 571, 1, 1, 3778.33, 1469.59, 92.0022, 4.64779, 0, 0, 0.729573, -0.683903, 300, 0, 1),
(164531, 181355, 571, 1, 1, 3771.26, 1470.33, 92.3044, 1.40802, 0, 0, 0.64728, 0.762252, 300, 0, 1),
(164532, 194037, 571, 1, 1, 3773.85, 1464.02, 92.4174, 6.10863, 0, 0, 0.087167, -0.996194, 300, 0, 1),
(164534, 181376, 571, 1, 1, 3773.85, 1464.02, 94.4174, 6.10863, 0, 0, 0.087167, -0.996194, 300, 0, 1),
(164535, 181305, 571, 1, 1, 3781.69, 1479.45, 91.1799, 3.55216, 0, 0, 0.979003, -0.203846, 300, 0, 1),
(164536, 181307, 571, 1, 1, 3781.29, 1478.05, 92.1919, 4.88734, 0, 0, 0.642628, -0.766178, 300, 0, 1),
(164537, 181302, 571, 1, 1, 3777.92, 1483, 91.6054, 3.43435, 0, 0, 0.989306, -0.145857, 300, 0, 1),
(164538, 181302, 571, 1, 1, 3776.35, 1482.86, 91.7922, 4.69099, 0, 0, 0.714632, -0.699501, 300, 0, 1),
(164539, 181306, 571, 1, 1, 3777.17, 1481, 91.7202, 2.13923, 0, 0, 0.877016, 0.480461, 300, 0, 1),
(164540, 181605, 571, 1, 1, 3776.57, 1488.67, 91.3695, 0.109765, 0, 0, 0.0548551, 0.998494, 300, 0, 1),
(165334, 181358, 571, 1, 1, 3807.96, 1478.17, 90.0332, 3.09271, 0, 0, 0.999701, 0.0244413, 300, 0, 1); -- hanging decoration
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(150032, 25994, 571, 1, 1, 0, 151, 3779.24, 1486.12, 91.2991, 1.70099, 300, 0, 0, 2699, 0, 0, 0, 0, 0),
(150033, 16781, 571, 1, 1, 16436, 0, 3769.56, 1489.51, 91.3562, 6.25787, 300, 0, 0, 3052, 0, 0, 0, 0, 0),
(150034, 16781, 571, 1, 1, 16432, 0, 3769.51, 1485.73, 92.0116, 0.944649, 300, 0, 0, 3728, 0, 0, 0, 0, 0),
(150035, 16781, 571, 1, 1, 16443, 0, 3781.98, 1488.53, 90.6925, 3.65584, 300, 0, 0, 3524, 0, 0, 0, 0, 0),
(150036, 32811, 571, 1, 1, 0, 0, 3771.49, 1478.74, 92.3424, 3.16654, 300, 0, 0, 42, 0, 0, 0, 0, 0);
-- Add Grizzly Hills camp
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(164564, 188021, 571, 1, 1, 3367.71, -2126.35, 124.935, 0.20145, 0, 0, 0.100555, 0.994932, 300, 0, 1),
(164565, 188020, 571, 1, 1, 3378.53, -2152.36, 124.326, 1.7272, 0, 0, 0.760187, 0.649704, 300, 0, 1),
(164566, 188020, 571, 1, 1, 3364.78, -2153.98, 124.066, 1.67615, 0, 0, 0.743357, 0.668895, 300, 0, 1),
(164567, 188020, 571, 1, 1, 3368.13, -2094.44, 122.167, 4.85309, 0, 0, 0.655653, -0.755062, 300, 0, 1),
(164568, 188020, 571, 1, 1, 3358.46, -2095.84, 122.702, 4.85702, 0, 0, 0.65417, -0.756348, 300, 0, 1),
(164571, 181355, 571, 1, 1, 3360.44, -2102.71, 123.301, 4.93556, 0, 0, 0.623972, -0.781447, 300, 0, 1),
(164572, 181355, 571, 1, 1, 3366.44, -2142.59, 124.385, 0.12135, 0, 0, 0.060638, 0.99816, 300, 0, 1),
(164573, 181355, 571, 1, 1, 3372.23, -2141.88, 124.779, 0.12135, 0, 0, 0.060638, 0.99816, 300, 0, 1),
(164575, 181305, 571, 1, 1, 3368.46, -2120.32, 124.972, 4.52273, 0, 0, 0.770885, -0.636974, 300, 0, 1),
(164577, 181307, 571, 1, 1, 3367.51, -2120.73, 125.963, 0.112713, 0, 0, 0.0563269, 0.998412, 300, 0, 1),
(164578, 181302, 571, 1, 1, 3364.09, -2126.28, 124.594, 1.64817, 0, 0, 0.733926, 0.67923, 300, 0, 1),
(164579, 181302, 571, 1, 1, 3363.96, -2124.64, 124.71, 0.774805, 0, 0, 0.377785, 0.925894, 300, 0, 1),
(164580, 181306, 571, 1, 1, 3365.8, -2125.85, 124.807, 4.92171, 0, 0, 0.629368, -0.777107, 300, 0, 1),
(164581, 181355, 571, 1, 1, 3368.61, -2102.49, 122.991, 3.15926, 0, 0, 0.999961, -0.00883358, 300, 0, 1),
(164582, 181605, 571, 1, 1, 3370.82, -2150.59, 124.43, 1.7102, 0, 0, 0.754638, 0.656142, 300, 0, 1),
(164583, 194042, 571, 1, 1, 3368.48, -2135.25, 124.53, 0.20224, 0, 0, 0.100948, 0.994892, 300, 0, 1),
(164584, 181376, 571, 1, 1, 3366.29, -2135.71, 126.592, 0.275273, 0, 0, 0.137202, 0.990543, 300, 0, 1);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(150036, 32813, 571, 1, 1, 0, 0, 3371.86, -2126.5, 124.993, 0.184933, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(150037, 16781, 571, 1, 1, 21086, 0, 3361.63, -2146.48, 124.113, 6.12412, 300, 0, 0, 2453, 0, 0, 0, 0, 0),
(150038, 16781, 571, 1, 1, 16442, 0, 3362.85, -2143.59, 124.017, 5.52722, 300, 0, 0, 3331, 0, 0, 0, 0, 0),
(150039, 16781, 571, 1, 1, 16445, 0, 3365.06, -2149.12, 124.395, 2.17279, 300, 0, 0, 3331, 0, 0, 0, 0, 0),
(150040, 16781, 571, 1, 1, 16438, 0, 3376.29, -2142.8, 124.829, 3.63755, 300, 0, 0, 1919, 0, 0, 0, 0, 0),
(150041, 25994, 571, 1, 1, 0, 151, 3374.3, -2153.8, 123.999, 2.2042, 300, 0, 0, 2533, 0, 0, 0, 0, 0);
-- Add Howling Fjords camp
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(164608, 188021, 571, 1, 1, 2598.68, -4341.88, 275.709, 4.15841, 0, 0, 0.873519, -0.48679, 300, 0, 1),
(164609, 188020, 571, 1, 1, 2568.84, -4325.53, 277.908, 0.773361, 0, 0, 0.377116, 0.926166, 300, 0, 1),
(164610, 181355, 571, 1, 1, 2573.18, -4321.63, 277.706, 5.89809, 0, 0, 0.191362, -0.981519, 300, 0, 1),
(164612, 181355, 571, 1, 1, 2585.37, -4330.36, 276.802, 5.59728, 0, 0, 0.336267, -0.941767, 300, 0, 1),
(164613, 188020, 571, 1, 1, 2583.94, -4336.2, 275.877, 4.28332, 0, 0, 0.841436, -0.540357, 300, 0, 1),
(164614, 194039, 571, 1, 1, 2579.72, -4325.59, 276.934, 5.77529, 0, 0, 0.251227, -0.967928, 300, 0, 1),
(164615, 181376, 571, 1, 1, 2577.57, -4325.97, 278.995, 0.226445, 0, 0, 0.112981, 0.993597, 300, 0, 1),
(164616, 188020, 571, 1, 1, 2601.28, -4351.41, 275.622, 3.9414, 0, 0, 0.921098, -0.389331, 300, 0, 1),
(164617, 188020, 571, 1, 1, 2610.63, -4359.39, 276.012, 3.96889, 0, 0, 0.91566, -0.401954, 300, 0, 1),
(164618, 181355, 571, 1, 1, 2585.83, -4354.56, 276.176, 0.915263, 0, 0, 0.441825, 0.897101, 300, 0, 1),
(164620, 181355, 571, 1, 1, 2593.08, -4361.44, 275.514, 2.42794, 0, 0, 0.93701, 0.349302, 300, 0, 1),
(164621, 181605, 571, 1, 1, 2584.82, -4363.27, 275.305, 0.908194, 0, 0, 0.438651, 0.898658, 300, 0, 1),
(164622, 181302, 571, 1, 1, 2598.83, -4338.72, 276.13, 1.4619, 0, 0, 0.667577, 0.744541, 300, 0, 1),
(164623, 181302, 571, 1, 1, 2597, -4339.46, 275.976, 1.84439, 0, 0, 0.796929, 0.604073, 300, 0, 1),
(164624, 181306, 571, 1, 1, 2598.77, -4340.42, 275.851, 3.60996, 0, 0, 0.972704, -0.23205, 300, 0, 1),
(164625, 181305, 571, 1, 1, 2602.92, -4344.35, 275.756, 3.60446, 0, 0, 0.973338, -0.229375, 300, 0, 1),
(164626, 181307, 571, 1, 1, 2603.7, -4344.96, 276.749, 3.60446, 0, 0, 0.973338, -0.229375, 300, 0, 1);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(150041, 32812, 571, 1, 1, 0, 0, 2597.28, -4345.41, 275.49, 3.92805, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(150042, 16781, 571, 1, 1, 16436, 0, 2611.27, -4353.51, 276.147, 2.90625, 300, 0, 0, 3942, 0, 0, 0, 0, 0),
(150043, 16781, 571, 1, 1, 16442, 0, 2607.34, -4349.77, 275.811, 4.8831, 300, 0, 0, 3427, 0, 0, 0, 0, 0),
(150044, 16781, 571, 1, 1, 16431, 0, 2591.12, -4366.18, 275.385, 1.70773, 300, 0, 0, 2533, 0, 0, 0, 0, 0),
(150045, 16781, 571, 1, 1, 16443, 0, 2589.82, -4356.76, 275.862, 4.90509, 300, 0, 0, 1524, 0, 0, 0, 0, 0),
(150046, 16781, 571, 1, 1, 21086, 0, 2582.78, -4356.01, 276.146, 6.05884, 300, 0, 0, 2533, 0, 0, 0, 0, 0),
(150047, 25994, 571, 1, 1, 0, 151, 2586.97, -4359.34, 275.729, 4.3074, 300, 0, 0, 2614, 0, 0, 0, 0, 0);
-- Add Zul'Drak camp
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(164628, 188021, 571, 1, 1, 5285.44, -2771.26, 292.418, 2.22832, 0, 0, 0.897541, 0.440932, 300, 0, 1),
(164629, 188020, 571, 1, 1, 5305.23, -2759.31, 292.211, 2.32649, 0, 0, 0.918095, 0.396361, 300, 0, 1),
(164630, 188020, 571, 1, 1, 5300.14, -2753.37, 292.419, 2.27937, 0, 0, 0.908502, 0.417882, 300, 0, 1),
(164631, 188020, 571, 1, 1, 5272.4, -2788.86, 292.419, 2.16077, 0, 0, 0.88214, 0.470987, 300, 0, 1),
(164632, 188020, 571, 1, 1, 5267.47, -2781.49, 292.419, 2.16077, 0, 0, 0.88214, 0.470987, 300, 0, 1),
(164633, 181605, 571, 1, 1, 5276.31, -2779.24, 292.419, 0.767265, 0, 0, 0.374292, 0.927311, 300, 0, 1),
(164634, 181355, 571, 1, 1, 5273.81, -2783.22, 292.419, 2.0506, 0, 0, 0.854871, 0.518841, 300, 0, 1),
(164635, 181355, 571, 1, 1, 5280.99, -2777.12, 292.419, 2.19198, 0, 0, 0.88938, 0.457168, 300, 0, 1),
(164638, 181376, 571, 1, 1, 5294.92, -2761.88, 292.419, 2.12359, 0, 0, 0.873231, 0.487306, 300, 0, 1),
(164639, 194048, 571, 1, 1, 5294.92, -2761.88, 292.419, 2.12359, 0, 0, 0.873231, 0.487306, 300, 0, 1),
(164640, 181305, 571, 1, 1, 5289.89, -2768.68, 292.419, 6.05528, 0, 0, 0.113708, -0.993514, 300, 0, 1),
(164641, 181307, 571, 1, 1, 5290.46, -2768.24, 293.42, 0.654878, 0, 0, 0.321619, 0.946869, 300, 0, 1),
(164642, 181302, 571, 1, 1, 5285.31, -2775.88, 292.419, 1.63505, 0, 0, 0.729456, 0.684028, 300, 0, 1),
(164643, 181302, 571, 1, 1, 5282.75, -2774.74, 292.419, 2.02383, 0, 0, 0.847848, 0.53024, 300, 0, 1),
(164644, 181306, 571, 1, 1, 5283.45, -2776.25, 292.419, 5.98302, 0, 0, 0.149522, -0.988758, 300, 0, 1);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(150048, 32816, 571, 1, 1, 0, 0, 5282.69, -2767.44, 292.419, 1.95942, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(150049, 16781, 571, 1, 1, 16446, 0, 5271.7, -2776.47, 292.419, 5.91363, 300, 0, 0, 2533, 0, 0, 0, 0, 0),
(150050, 16781, 571, 1, 1, 16438, 0, 5271.27, -2780.54, 292.419, 1.37088, 300, 0, 0, 1919, 0, 0, 0, 0, 0),
(150051, 25994, 571, 1, 1, 0, 151, 5276.13, -2771.1, 292.419, 4.75359, 300, 0, 0, 2533, 0, 0, 0, 0, 0);
-- Sholazar Basin
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(164668, 188021, 571, 1, 1, 5504.05, 4879.15, -198.169, 6.24464, 0, 0, 0.0192691, -0.999814, 300, 0, 1),
(164670, 194034, 571, 1, 1, 5499.12, 4869.82, -197.467, 5.88414, 0, 0, 0.198201, -0.980161, 300, 0, 1),
(165359, 181376, 571, 1, 1, 5497.1, 4868.86, -195.368, 0.418565, 0, 0, 0.207758, 0.97818, 300, 0, 1),
(164672, 188020, 571, 1, 1, 5500.69, 4859.37, -197.247, 0.114598, 0, 0, 0.0572678, 0.998359, 300, 0, 1),
(164673, 188020, 571, 1, 1, 5525.06, 4861.98, -197.564, 0.106744, 0, 0, 0.0533468, 0.998576, 300, 0, 1),
(164674, 188020, 571, 1, 1, 5516.82, 4892.55, -196.273, 3.38578, 0, 0, 0.992556, -0.121792, 300, 0, 1),
(164675, 188020, 571, 1, 1, 5496.17, 4892.9, -198.774, 3.03235, 0, 0, 0.998509, 0.0545924, 300, 0, 1),
(164676, 181355, 571, 1, 1, 5495.91, 4883.4, -198.56, 6.25326, 0, 0, 0.0149618, -0.999888, 300, 0, 1),
(164677, 181355, 571, 1, 1, 5515.37, 4883.68, -197.054, 0.0242677, 0, 0, 0.0121336, 0.999926, 300, 0, 1),
(164678, 181605, 571, 1, 1, 5515.33, 4863.4, -198.357, 4.06043, 0, 0, 0.896311, -0.443427, 300, 0, 1),
(164679, 181302, 571, 1, 1, 5507.71, 4879.47, -198.299, 0.657298, 0, 0, 0.322765, 0.946479, 300, 0, 1),
(164680, 181302, 571, 1, 1, 5505.69, 4877.91, -198.203, 0.292873, 0, 0, 0.145914, 0.989297, 300, 0, 1),
(164681, 181306, 571, 1, 1, 5507.58, 4877.19, -198.261, 2.40952, 0, 0, 0.933753, 0.357918, 300, 0, 1),
(164682, 181305, 571, 1, 1, 5505.18, 4882.54, -198.365, 3.11481, 0, 0, 0.99991, 0.0133924, 300, 0, 1),
(164683, 181307, 571, 1, 1, 5505.92, 4882.53, -197.375, 3.13444, 0, 0, 0.999994, 0.00357527, 300, 0, 1);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(150052, 32810, 571, 1, 1, 0, 0, 5499.31, 4878.6, -197.97, 3.13758, 300, 0, 0, 11770, 0, 0, 0, 0, 0),
(150053, 16781, 571, 1, 1, 16436, 0, 5508.26, 4891.52, -197.537, 3.49338, 300, 0, 0, 1919, 0, 0, 0, 0, 0),
(150054, 16781, 571, 1, 1, 16442, 0, 5503.99, 4886.98, -198.356, 1.25892, 300, 0, 0, 2961, 0, 0, 0, 0, 0),
(150055, 16781, 571, 1, 1, 16445, 0, 5500.44, 4895, -198.054, 5.57939, 300, 0, 0, 2453, 0, 0, 0, 0, 0),
(150056, 16781, 571, 1, 1, 16436, 0, 5513.58, 4886.29, -197.178, 2.68991, 300, 0, 0, 2614, 0, 0, 0, 0, 0),
(150057, 16781, 571, 1, 1, 16444, 0, 5511.2, 4870.94, -198.257, 4.65341, 300, 0, 0, 3728, 0, 0, 0, 0, 0),
(150058, 25994, 571, 1, 1, 0, 151, 5509.13, 4864.95, -198.144, 6.08048, 300, 0, 0, 1919, 0, 0, 0, 0, 0);
-- Crystalsong Forest
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(164727, 188021, 571, 1, 1, 5537.66, -737.121, 149.903, 3.31719, 0, 0, 0.996148, -0.0876849, 300, 0, 1),
(164728, 188020, 571, 1, 1, 5545.47, -751.288, 152.872, 3.29205, 0, 0, 0.997172, -0.0751598, 300, 0, 1),
(164729, 188020, 571, 1, 1, 5534.63, -751.743, 152.043, 6.26479, 0, 0, 0.0091994, -0.999958, 300, 0, 1),
(164730, 188020, 571, 1, 1, 5528.85, -718.125, 149.06, 0.120616, 0, 0, 0.0602714, 0.998182, 300, 0, 1),
(164731, 188020, 571, 1, 1, 5538.1, -716.912, 150.739, 0.277696, 0, 0, 0.138402, 0.990376, 300, 0, 1),
(164732, 181355, 571, 1, 1, 5521.75, -729.266, 148.2, 0.10176, 0, 0, 0.050858, 0.998706, 300, 0, 1),
(164733, 181355, 571, 1, 1, 5523.81, -747.375, 150.338, 6.06293, 0, 0, 0.109904, -0.993942, 300, 0, 1),
(164735, 181376, 571, 1, 1, 5531.08, -726.827, 148.981, 5.3977, 0, 0, 0.428418, -0.903581, 300, 0, 1),
(164736, 194046, 571, 1, 1, 5530.53, -726.151, 148.904, 5.3977, 0, 0, 0.428418, -0.903581, 300, 0, 1),
(164737, 181605, 571, 1, 1, 5539.79, -749.386, 152.047, 1.77309, 0, 0, 0.774893, 0.632092, 300, 0, 1),
(164738, 181302, 571, 1, 1, 5540.05, -734.53, 149.889, 1.3152, 0, 0, 0.611221, 0.79146, 300, 0, 1),
(164739, 181302, 571, 1, 1, 5539.56, -736.342, 150.01, 0.0978369, 0, 0, 0.048899, 0.998804, 300, 0, 1),
(164740, 181306, 571, 1, 1, 5541.73, -735.983, 150.224, 2.34957, 0, 0, 0.922608, 0.385739, 300, 0, 1),
(164741, 181305, 571, 1, 1, 5544.59, -739.644, 150.773, 3.64391, 0, 0, 0.968625, -0.248527, 300, 0, 1),
(164742, 181307, 571, 1, 1, 5544.71, -740.658, 151.776, 4.72383, 0, 0, 0.70305, -0.711141, 300, 0, 1);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(150059, 16781, 571, 1, 1, 16446, 0, 5523.19, -720.827, 148.211, 5.25948, 300, 0, 0, 2961, 0, 0, 0, 0, 0),
(150060, 16781, 571, 1, 1, 16438, 0, 5520.46, -724.236, 148.091, 0.741081, 300, 0, 0, 3427, 0, 0, 0, 0, 0),
(150061, 16781, 571, 1, 1, 16443, 0, 5525.58, -732.861, 148.853, 5.66631, 300, 0, 0, 3624, 0, 0, 0, 0, 0),
(150062, 16781, 571, 1, 1, 16438, 0, 5535.22, -748.433, 151.399, 5.70637, 300, 0, 0, 1585, 0, 0, 0, 0, 0),
(150063, 16781, 571, 1, 1, 16438, 0, 5540.74, -753.426, 153.249, 2.39199, 300, 0, 0, 3427, 0, 0, 0, 0, 0),
(150064, 25994, 571, 1, 1, 0, 151, 5544.48, -746.126, 151.578, 3.61956, 300, 0, 0, 2371, 0, 0, 0, 0, 0),
(150065, 32815, 571, 1, 1, 0, 0, 5532.98, -735.849, 149.538, 3.17817, 300, 0, 0, 12600, 0, 0, 0, 0, 0);
-- The Storm Peaks
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(164707, 188021, 571, 1, 1, 6151.36, -1017.1, 407.519, 1.69575, 0, 0, 0.749875, 0.66158, 300, 0, 1),
(164708, 188020, 571, 1, 1, 6132.71, -1015.73, 409.439, 1.61878, 0, 0, 0.723865, 0.689942, 300, 0, 1),
(164711, 188020, 571, 1, 1, 6132.91, -1025.75, 409.86, 1.60476, 0, 0, 0.719011, 0.694998, 300, 0, 1),
(164712, 188020, 571, 1, 1, 6175.57, -1021.52, 408.539, 1.75031, 0, 0, 0.767644, 0.640876, 300, 0, 1),
(164713, 188020, 571, 1, 1, 6173.75, -1011.53, 407.582, 1.75031, 0, 0, 0.767644, 0.640876, 300, 0, 1),
(164714, 181355, 571, 1, 1, 6159.65, -1016.22, 407.636, 3.2465, 0, 0, 0.998625, -0.0524288, 300, 0, 1),
(164715, 181355, 571, 1, 1, 6136.52, -1021.34, 409.514, 3.30462, 0, 0, 0.99668, -0.0814223, 300, 0, 1),
(164716, 181355, 571, 1, 1, 6153.47, -1027.3, 408.786, 1.79116, 0, 0, 0.780572, 0.625066, 300, 0, 1),
(164717, 181302, 571, 1, 1, 6150.61, -1022.3, 408.201, 1.04268, 0, 0, 0.498041, 0.867154, 300, 0, 1),
(164718, 181302, 571, 1, 1, 6151.6, -1020.59, 407.992, 2.47524, 0, 0, 0.945009, 0.327045, 300, 0, 1),
(164719, 181306, 571, 1, 1, 6152.41, -1022.41, 408.186, 3.21273, 0, 0, 0.999367, -0.0355623, 300, 0, 1),
(164720, 181305, 571, 1, 1, 6155.09, -1017.04, 407.54, 0.888738, 0, 0, 0.429888, 0.902882, 300, 0, 1),
(164721, 181307, 571, 1, 1, 6155.22, -1018.19, 408.53, 1.70398, 0, 0, 0.752593, 0.658486, 300, 0, 1),
(164722, 181605, 571, 1, 1, 6169.62, -1017.84, 408.118, 3.12084, 0, 0, 0.999946, 0.0103772, 300, 0, 1),
(164723, 181376, 571, 1, 1, 6142.18, -1020.42, 408.493, 1.81865, 0, 0, 0.789088, 0.61428, 300, 0, 1),
(164726, 194043, 571, 1, 1, 6142.19, -1020.44, 408.496, 1.91604, 0, 0, 0.818053, 0.575142, 300, 0, 1);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(150066, 32814, 571, 1, 1, 0, 0, 6150.65, -1012.62, 406.944, 1.65607, 300, 0, 0, 12600, 0, 0, 0, 0, 0),
(150067, 16781, 571, 1, 1, 16438, 0, 6166.94, -1008.14, 407.495, 4.42539, 300, 0, 0, 3834, 0, 0, 0, 0, 0),
(150068, 16781, 571, 1, 1, 16442, 0, 6161.54, -1013.07, 407.498, 6.11635, 300, 0, 0, 3624, 0, 0, 0, 0, 0),
(150069, 16781, 571, 1, 1, 21086, 0, 6164.34, -1020.92, 408.305, 1.35684, 300, 0, 0, 2292, 0, 0, 0, 0, 0),
(150070, 16781, 571, 1, 1, 29243, 0, 6150.78, -1024.97, 408.505, 2.09119, 300, 0, 0, 3237, 0, 0, 0, 0, 0),
(150071, 25994, 571, 1, 1, 0, 151, 6171.72, -1022.75, 408.506, 1.97024, 300, 0, 0, 2699, 0, 0, 0, 0, 0);
-- Add SAI support for all flamekeepers to cast summon Scorchling on spawn
-- Eeastern Kingdoms
DELETE FROM `creature` WHERE `id`=26520;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 25933; -- Ghostland
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=25933;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25933,0,0,0,25,0,100,0,0,0,0,0,11,47123,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 25931; -- Eversong woods
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=25931;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25931,0,0,0,25,0,100,0,0,0,0,0,11,47123,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 25935; -- Hillsbrad Foothills
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=25935;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25935,0,0,0,25,0,100,0,0,0,0,0,11,47123,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 25941; -- Swamp of sorrows
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=25941;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25941,0,0,0,25,0,100,0,0,0,0,0,11,47123,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 25920; -- Cape of Stranglethorn
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=25920;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25920,0,0,0,25,0,100,0,0,0,0,0,11,47123,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 25927; -- Burning Steppes
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=25927;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25927,0,0,0,25,0,100,0,0,0,0,0,11,47123,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 25944; -- The Hinterlands
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=25944;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25944,0,0,0,25,0,100,0,0,0,0,0,11,47123,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 25939; -- Silverpine Forest
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=25939;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25939,0,0,0,25,0,100,0,0,0,0,0,11,47123,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 25946; -- Tirisfal Glades
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=25946;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25946,0,0,0,25,0,100,0,0,0,0,0,11,47123,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 25925; -- Badlands
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=25925;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25925,0,0,0,25,0,100,0,0,0,0,0,11,47123,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 25923; -- Arathi Highlands
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=25923;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25923,0,0,0,25,0,100,0,0,0,0,0,11,47123,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
-- Kalimdor
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 25929; -- Durotar
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=25929;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25929,0,0,0,25,0,100,0,0,0,0,0,11,47123,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 25928; -- Desolace
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=25928;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25928,0,0,0,25,0,100,0,0,0,0,0,11,47123,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 25936; -- Mulgore
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=25936;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25936,0,0,0,25,0,100,0,0,0,0,0,11,47123,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 25922; -- Winterspring
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=25922;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25922,0,0,0,25,0,100,0,0,0,0,0,11,47123,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 25943; -- Barrens
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=25943;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25943,0,0,0,25,0,100,0,0,0,0,0,11,47123,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 25932; -- Feralas
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=25932;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25932,0,0,0,25,0,100,0,0,0,0,0,11,47123,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 25884; -- Ashenvale
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=25884;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25884,0,0,0,25,0,100,0,0,0,0,0,11,47123,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 25930; -- Dustwallow marsh
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=25930;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25930,0,0,0,25,0,100,0,0,0,0,0,11,47123,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 25945; -- Thousand Needles
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=25945;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25945,0,0,0,25,0,100,0,0,0,0,0,11,47123,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 25919; -- Silithus
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=25919;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25919,0,0,0,25,0,100,0,0,0,0,0,11,47123,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 25921; -- Tanaris
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=25921;
-- Outland
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25921,0,0,0,25,0,100,0,0,0,0,0,11,47123,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 25934; -- Hellfire Peninsula
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=25934;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25934,0,0,0,25,0,100,0,0,0,0,0,11,47123,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 25938; -- Shadowmoon Valley
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=25938;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25938,0,0,0,25,0,100,0,0,0,0,0,11,47123,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 25918; -- Netherstorm
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=25918;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25918,0,0,0,25,0,100,0,0,0,0,0,11,47123,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 25942; -- Terokkar
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=25942;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25942,0,0,0,25,0,100,0,0,0,0,0,11,47123,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 25947; -- Zangarmarsh
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=25947;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25947,0,0,0,25,0,100,0,0,0,0,0,11,47123,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 25937; -- Nagrand
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=25937;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25937,0,0,0,25,0,100,0,0,0,0,0,11,47123,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 25926; -- Blade's Edge Mountain
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=25926;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25926,0,0,0,25,0,100,0,0,0,0,0,11,47123,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
-- Northrend
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 32816; -- Zul'Drak
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=32816;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(32816,0,0,0,25,0,100,0,0,0,0,0,11,47123,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 32809; -- Borean Tundra
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=32809;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(32809,0,0,0,25,0,100,0,0,0,0,0,11,47123,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 32810; -- Sholazar Basin
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=32810;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(32810,0,0,0,25,0,100,0,0,0,0,0,11,47123,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 32811; -- Dragonblight
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=32811;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(32811,0,0,0,25,0,100,0,0,0,0,0,11,47123,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 32815; -- Crystalsong Forest
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=32815;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(32815,0,0,0,25,0,100,0,0,0,0,0,11,47123,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 32814; -- Storm Peaks
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=32814;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(32814,0,0,0,25,0,100,0,0,0,0,0,11,47123,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 32813; -- Grizzly Hills
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=32813;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(32813,0,0,0,25,0,100,0,0,0,0,0,11,47123,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 32812; -- Howling Fjords
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=32812;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(32812,0,0,0,25,0,100,0,0,0,0,0,11,47123,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
-- Allieance's Honor the Flame quests full data + spawned missing camps/or individual gameojbect and npcs, also corrected creature_templates/
DELETE FROM `creature` where `id`=26401; -- scorchlings are spawned by spells not manualy
-- Add missing creature_quesrelation and involvedrealation that were blocking quests
-- The Flame Warden of Kalimdor - {Achievement=1026}
DELETE FROM `creature_involvedrelation` WHERE `quest` IN (11805,11812,11815,11834,11833,11831,11817,11811,11806,11809,11826,11824);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES
(25883, 11805), -- Ashenvale
(25894, 11812), -- Desolace
(25897, 11815), -- Dustwallow Marsh
(25917, 11834), -- Winterspring
(25916, 11833), -- Tanaris
(25914, 11831), -- Silithus
(25899, 11817), -- Feralas
(25893, 11811), -- Darkshore
(25888, 11806), -- Azuremyst Isle
(25891, 11809), -- Bloodmyst Isle
(25906, 11824); -- Teldrassil
UPDATE `quest_template` SET `RequiredRaces`=1101,`RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`OfferRewardText`='Honor the Ashenvale flame!' WHERE `Id`=11805;
UPDATE `quest_template` SET `RequiredRaces`=1101,`RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`OfferRewardText`='Honor the Desolace flame!' WHERE `Id`=11812;
UPDATE `quest_template` SET `RequiredRaces`=1101,`RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`OfferRewardText`='Honor the Dustwallow Marsh flame!' WHERE `Id`=11815;
UPDATE `quest_template` SET `RequiredRaces`=1101,`RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`OfferRewardText`='Honor the Winterspring flame!',`RequestItemsText`='' WHERE `Id`=11834;
UPDATE `quest_template` SET `RequiredRaces`=1101,`RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`OfferRewardText`='Honor the Tanaris flame!' WHERE `Id`=11833;
UPDATE `quest_template` SET `RequiredRaces`=1101,`RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`OfferRewardText`='Honor the Silithus flame!' WHERE `Id`=11831;
UPDATE `quest_template` SET `RequiredRaces`=1101,`RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`OfferRewardText`='Honor the Feralas flame!' WHERE `Id`=11817;
UPDATE `quest_template` SET `RequiredRaces`=1101,`RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`OfferRewardText`='Honor the Darkshore flame!' WHERE `Id`=11811;
UPDATE `quest_template` SET `RequiredRaces`=1101,`RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`OfferRewardText`='Honor the Azuremyst Isle flame!' WHERE `Id`=11806;
UPDATE `quest_template` SET `RequiredRaces`=1101,`RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`OfferRewardText`='Honor the Bloodmyst Isle flame!' WHERE `Id`=11809;
UPDATE `quest_template` SET `RequiredRaces`=1101,`RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`OfferRewardText`='Honor the Teldrassil flame!' WHERE `Id`=11824;
-- Flame Warden of Eastern Kingdoms {Achievement=1025}
DELETE FROM `creature_involvedrelation` WHERE `quest` IN (11826,11827,11819,11583,11828,11816,11810,11808,11804,11832,11813,11814,11820,11822);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES
(25908, 11826), -- The Hinterlands
(25909, 11827), -- The Western Plaguelands
(25901, 11819), -- Hillsbrad Foothills
(25910, 11583), -- Westfall
(25911, 11828), -- Wetlands
(25898, 11816), -- Elwynn Forest
(25892, 11810), -- Burning Steppes
(25890, 11808), -- Blasted Lands
(25887, 11804), -- Arathi Highlands
(25915, 11832), -- Cape of Stranglethorn
(25895, 11813), -- Dun Morogh
(25896, 11814), -- Duskwood
(25902, 11820), -- Loch Modan
(25904, 11822); -- Redridge Mountains
UPDATE `quest_template` SET `RequiredRaces`=1101,`RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`OfferRewardText`='Honor the Hinterlands flame!' WHERE `Id`=11826;
UPDATE `quest_template` SET `RequiredRaces`=1101,`RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`OfferRewardText`='Honor the Western Plaguelands flame!' WHERE `Id`=11827;
UPDATE `quest_template` SET `RequiredRaces`=1101,`RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`OfferRewardText`='Honor the Hillsbrad Foothills flame!' WHERE `Id`=11819;
UPDATE `quest_template` SET `RequiredRaces`=1101,`RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`OfferRewardText`='Honor the Westfall flame!',`RequestItemsText`='' WHERE `Id`=11583;
UPDATE `quest_template` SET `RequiredRaces`=1101,`RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`OfferRewardText`='Honor the Wetlands flame!' WHERE `Id`=11828;
UPDATE `quest_template` SET `RequiredRaces`=1101,`RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`OfferRewardText`='Honor the Elwynn Forest flame!' WHERE `Id`=11816;
UPDATE `quest_template` SET `RequiredRaces`=1101,`RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`OfferRewardText`='Honor the Burning Steppes flame!' WHERE `Id`=11810;
UPDATE `quest_template` SET `RequiredRaces`=1101,`RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`OfferRewardText`='Honor the Blasted Lands flame!' WHERE `Id`=11808;
UPDATE `quest_template` SET `RequiredRaces`=1101,`RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`OfferRewardText`='Honor the Arathi Highlands flame!' WHERE `Id`=11804;
UPDATE `quest_template` SET `RequiredRaces`=1101,`RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`OfferRewardText`='Honor the Cape of Stranglethorn flame!' WHERE `Id`=11832;
UPDATE `quest_template` SET `RequiredRaces`=1101,`RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`OfferRewardText`='Honor the Dun Morogh flame!' WHERE `Id`=11813;
UPDATE `quest_template` SET `RequiredRaces`=1101,`RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`OfferRewardText`='Honor the Duskwood flame!' WHERE `Id`=11814;
UPDATE `quest_template` SET `RequiredRaces`=1101,`RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`OfferRewardText`='Honor the Loch Modan flame!' WHERE `Id`=11820;
UPDATE `quest_template` SET `RequiredRaces`=1101,`RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`OfferRewardText`='Honor the Redridge Mountains flame!' WHERE `Id`=11822;
-- The Flame Warden of Northrend
DELETE FROM `creature_involvedrelation` WHERE `quest` IN (13485,13487,13489,13488,13490,13431,13486,13491);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES
(32801, 13485), -- Borean Tundra
(32803, 13487), -- Dragonblight
(32805, 13489), -- Grizzly Hills
(32804, 13488), -- Howling Fjord
(32808, 13490), -- Zul'Drak
(32806, 11831), -- The Storm Peaks
(32802, 13486), -- Sholazar Basin
(32807, 13491); -- Crystalsong Forest
UPDATE `quest_template` SET `RequiredRaces`=1101,`RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`OfferRewardText`='Honor the Borean Tundra flame!' WHERE `Id`=13485;
UPDATE `quest_template` SET `RequiredRaces`=1101,`RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`OfferRewardText`='Honor the Dragonblight flame!' WHERE `Id`=13487;
UPDATE `quest_template` SET `RequiredRaces`=1101,`RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`OfferRewardText`='Honor the Grizzly Hills flame!' WHERE `Id`=13489;
UPDATE `quest_template` SET `RequiredRaces`=1101,`RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`OfferRewardText`='Honor the Howling Fjord flame!',`RequestItemsText`='' WHERE `Id`=13488;
UPDATE `quest_template` SET `RequiredRaces`=1101,`RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`OfferRewardText`='Honor the Zul''Drak flame!' WHERE `Id`=13490;
UPDATE `quest_template` SET `RequiredRaces`=1101,`RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`OfferRewardText`='Honor the Storm Peaks flame!' WHERE `Id`=11831;
UPDATE `quest_template` SET `RequiredRaces`=1101,`RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`OfferRewardText`='Honor the Sholazar Basin flame!' WHERE `Id`=13486;
UPDATE `quest_template` SET `RequiredRaces`=1101,`RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`OfferRewardText`='Honor the Crystalsong Forest flame!' WHERE `Id`=13491;
-- The Flame Warden of Outland - {Achievement=1027}
DELETE FROM `creature_involvedrelation` WHERE `quest` IN (11823,11821,11830,11818,11825,11807,11829);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES
(25905, 11823), -- Shadowmoon Valley
(25903, 11821), -- Nagrand
(25913, 11830), -- Netherstorm
(25900, 11818), -- Hellfire Peninsula
(25907, 11825), -- Terokkar
(25889, 11807), -- Blade's Edge
(25912, 11829); -- Zangarmarsh
UPDATE `quest_template` SET `RequiredRaces`=1101,`RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`OfferRewardText`='Honor the Shadowmoon Valley flame!' WHERE `Id`=11823;
UPDATE `quest_template` SET `RequiredRaces`=1101,`RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`OfferRewardText`='Honor the Nagrand flame!' WHERE `Id`=11821;
UPDATE `quest_template` SET `RequiredRaces`=1101,`RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`OfferRewardText`='Honor the Netherstorm flame!' WHERE `Id`=11830;
UPDATE `quest_template` SET `RequiredRaces`=1101,`RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`OfferRewardText`='Honor the Hellfire Peninsula flame!',`RequestItemsText`='' WHERE `Id`=11818;
UPDATE `quest_template` SET `RequiredRaces`=1101,`RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`OfferRewardText`='Honor the Terokkar flame!' WHERE `Id`=11825;
UPDATE `quest_template` SET `RequiredRaces`=1101,`RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`OfferRewardText`='Honor the Blade''s Edge Mountains flame!' WHERE `Id`=11807;
UPDATE `quest_template` SET `RequiredRaces`=1101,`RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=29300,`OfferRewardText`='Honor the Zangarmarsh flame!' WHERE `Id`=11829;
-- Add missing camps, npcs, gobject in general, corrected npc data for Alliance/Kalimdor,Eastern Kingdoms,Outland/
-- Update creature_template for some creatures
UPDATE `creature_template` SET `minlevel`=50,`maxlevel`=50,`faction_A`=84,`faction_H`=84,`dynamicflags`=8,`unit_flags`=37632,`npcflag`=3 WHERE `entry` IN (25892); -- Burning Steppes
UPDATE `creature_template` SET `minlevel`=65,`maxlevel`=65,`faction_A`=84,`faction_H`=84,`dynamicflags`=8,`unit_flags`=37632,`npcflag`=3 WHERE `entry` IN (25909); -- Western Plaguelands
UPDATE `creature_template` SET `minlevel`=20,`maxlevel`=20,`faction_A`=84,`faction_H`=84,`dynamicflags`=8,`unit_flags`=37632,`npcflag`=3 WHERE `entry` IN (25891); -- Bloodmyst Isle
UPDATE `creature_template` SET `minlevel`=25,`maxlevel`=25,`faction_A`=84,`faction_H`=84,`dynamicflags`=8,`unit_flags`=37632,`npcflag`=3 WHERE `entry` IN (25888); -- Azuremyst Isle
UPDATE `creature_template` SET `minlevel`=70,`maxlevel`=70,`faction_A`=84,`faction_H`=84,`dynamicflags`=8,`unit_flags`=37632,`npcflag`=3 WHERE `entry` IN (25913); -- Netherstorm
UPDATE `creature_template` SET `minlevel`=65,`maxlevel`=65,`faction_A`=84,`faction_H`=84,`dynamicflags`=8,`unit_flags`=37632,`npcflag`=3 WHERE `entry` IN (25889); -- Blade's Edge Mountains
UPDATE `creature_template` SET `minlevel`=70,`maxlevel`=70,`faction_A`=84,`faction_H`=84,`dynamicflags`=8,`unit_flags`=37632,`npcflag`=3 WHERE `entry` IN (25903); -- Nagrand
UPDATE `creature_template` SET `minlevel`=70,`maxlevel`=70,`faction_A`=84,`faction_H`=84,`dynamicflags`=8,`unit_flags`=37632,`npcflag`=3 WHERE `entry` IN (25905); -- Shadowmoon valley
UPDATE `creature_template` SET `minlevel`=65,`maxlevel`=65,`faction_A`=84,`faction_H`=84,`dynamicflags`=8,`unit_flags`=37632,`npcflag`=3 WHERE `entry` IN (25912); -- Zangarmarsh
UPDATE `creature_template` SET `minlevel`=65,`maxlevel`=65,`faction_A`=84,`faction_H`=84,`dynamicflags`=8,`unit_flags`=37632,`npcflag`=3 WHERE `entry` IN (25907); -- Terokkar
UPDATE `creature_template` SET `minlevel`=72,`maxlevel`=72,`faction_A`=84,`faction_H`=84,`dynamicflags`=8,`unit_flags`=37632,`npcflag`=3 WHERE `entry` IN (32801); -- Borean Tundra
UPDATE `creature_template` SET `minlevel`=74,`maxlevel`=74,`faction_A`=84,`faction_H`=84,`dynamicflags`=8,`unit_flags`=37632,`npcflag`=3 WHERE `entry` IN (32803); -- Dragonblight
UPDATE `creature_template` SET `minlevel`=75,`maxlevel`=75,`faction_A`=84,`faction_H`=84,`dynamicflags`=8,`unit_flags`=37632,`npcflag`=3 WHERE `entry` IN (32805); -- Grizzly Hills
UPDATE `creature_template` SET `minlevel`=72,`maxlevel`=72,`faction_A`=84,`faction_H`=84,`dynamicflags`=8,`unit_flags`=37632,`npcflag`=3 WHERE `entry` IN (32804); -- Howling Fjord
UPDATE `creature_template` SET `minlevel`=77,`maxlevel`=77,`faction_A`=84,`faction_H`=84,`dynamicflags`=8,`unit_flags`=37632,`npcflag`=3 WHERE `entry` IN (32808); -- Zul'Drak
UPDATE `creature_template` SET `minlevel`=80,`maxlevel`=80,`faction_A`=84,`faction_H`=84,`dynamicflags`=8,`unit_flags`=37632,`npcflag`=3 WHERE `entry` IN (32806); -- The Storm Peaks
UPDATE `creature_template` SET `minlevel`=78,`maxlevel`=78,`faction_A`=84,`faction_H`=84,`dynamicflags`=8,`unit_flags`=37632,`npcflag`=3 WHERE `entry` IN (32802); -- Sholazar Basin
UPDATE `creature_template` SET `minlevel`=80,`maxlevel`=80,`faction_A`=84,`faction_H`=84,`dynamicflags`=8,`unit_flags`=37632,`npcflag`=3 WHERE `entry` IN (32807); -- Crystalsong Forest
-- Add npcs for the Midsummer Festival Camp in Burning Steppes
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(164766, 188021, 0, 1, 1, -8257.25, -2629.97, 133.333, 6.17518, 0, 0, 0.0539786, -0.998542, 300, 0, 1),
(164767, 188020, 0, 1, 1, -8259.09, -2603.54, 133.16, 1.18997, 0, 0, 0.560495, 0.828158, 300, 0, 1),
(164768, 188020, 0, 1, 1, -8243.08, -2606.45, 133.153, 4.48335, 0, 0, 0.783277, -0.621673, 300, 0, 1),
(164769, 181355, 0, 1, 1, -8246.2, -2610.42, 133.154, 3.08564, 0, 0, 0.999609, 0.0279725, 300, 0, 1),
(164770, 181355, 0, 1, 1, -8246.67, -2614.02, 133.155, 3.08564, 0, 0, 0.999609, 0.0279725, 300, 0, 1),
(164771, 181355, 0, 1, 1, -8247.21, -2618.55, 133.154, 3.08564, 0, 0, 0.999609, 0.0279725, 300, 0, 1),
(164772, 181355, 0, 1, 1, -8257.07, -2617.73, 133.169, 3.08564, 0, 0, 0.999609, 0.0279725, 300, 0, 1),
(164773, 181355, 0, 1, 1, -8256.66, -2613.13, 133.155, 6.19582, 0, 0, 0.0436703, -0.999046, 300, 0, 1),
(164774, 181355, 0, 1, 1, -8256.02, -2609, 133.16, 6.19582, 0, 0, 0.0436703, -0.999046, 300, 0, 1),
(164775, 181376, 0, 1, 1, -8245.62, -2623.9, 133.155, 4.04776, 0, 0, 0.899102, -0.43774, 300, 0, 1),
(164776, 187922, 0, 1, 1, -8245.62, -2623.9, 133.155, 4.04776, 0, 0, 0.899102, -0.43774, 300, 0, 1),
(164778, 188020, 0, 1, 1, -8264.25, -2647.18, 133.748, 1.47008, 0, 0, 0.670616, 0.741805, 300, 0, 1),
(164779, 188020, 0, 1, 1, -8248.67, -2650.84, 133.178, 1.39939, 0, 0, 0.643984, 0.765039, 300, 0, 1),
(164780, 181355, 0, 1, 1, -8251.1, -2645.28, 133.161, 1.4308, 0, 0, 0.655921, 0.754829, 300, 0, 1),
(164781, 181355, 0, 1, 1, -8260.58, -2643.93, 133.285, 1.4308, 0, 0, 0.655921, 0.754829, 300, 0, 1),
(164783, 181605, 0, 1, 1, -8256.66, -2647.44, 133.235, 1.36405, 0, 0, 0.630365, 0.776299, 300, 0, 1),
(164784, 181302, 0, 1, 1, -8264.27, -2627.49, 134.834, 0.387011, 0, 0, 0.1923, 0.981336, 300, 0, 1),
(164785, 181302, 0, 1, 1, -8265.34, -2629.08, 135.002, 5.64839, 0, 0, 0.312094, -0.950051, 300, 0, 1),
(164786, 181306, 0, 1, 1, -8262.98, -2629.19, 134.397, 2.7707, 0, 0, 0.982854, 0.184387, 300, 0, 1),
(164787, 181305, 0, 1, 1, -8259.37, -2633.99, 133.404, 0.509536, 0, 0, 0.252021, 0.967722, 300, 0, 1),
(164788, 181307, 0, 1, 1, -8259.53, -2635.4, 134.395, 1.45516, 0, 0, 0.665063, 0.746787, 300, 0, 1);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(150072, 25892, 0, 1, 1, 0, 0, -8254.28, -2625.62, 133.159, 1.29179, 300, 0, 0, 1524, 0, 0, 0, 0, 0),
(150073, 16781, 0, 1, 1, 21083, 0, -8255.11, -2614.33, 133.154, 0.508745, 300, 0, 0, 2784, 0, 0, 0, 0, 0),
(150074, 16781, 0, 1, 1, 16413, 0, -8253.26, -2611.61, 133.154, 4.93446, 300, 0, 0, 3524, 0, 0, 0, 0, 0),
(150075, 16781, 0, 1, 1, 16412, 0, -8262.75, -2643.66, 133.39, 5.27218, 300, 0, 0, 3144, 0, 0, 0, 0, 0),
(150076, 16781, 0, 1, 1, 16435, 0, -8259.55, -2650.01, 133.476, 2.09132, 300, 0, 0, 1919, 0, 0, 0, 0, 0),
(150077, 25962, 0, 1, 1, 0, 151, -8245.74, -2607.85, 133.155, 3.51183, 300, 0, 0, 2533, 0, 0, 0, 0, 0);
-- Add npcs for the Midsummer Festival Camp in Western Plaguelands
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(164812, 188021, 0, 1, 1, 1001.53, -1449.68, 61.5049, 5.19952, 0, 0, 0.515706, -0.856766, 300, 0, 1),
(164813, 188020, 0, 1, 1, 979.325, -1460, 61.2327, 0.184752, 0, 0, 0.0922449, 0.995736, 300, 0, 1),
(164814, 188020, 0, 1, 1, 976.518, -1452.56, 63.6489, 0.312772, 0, 0, 0.155749, 0.987797, 300, 0, 1),
(164815, 181355, 0, 1, 1, 979.858, -1454.79, 62.3009, 0.417231, 0, 0, 0.207105, 0.978319, 300, 0, 1),
(164816, 188020, 0, 1, 1, 1020.23, -1447.65, 62.7199, 3.3342, 0, 0, 0.995366, -0.0961551, 300, 0, 1),
(164817, 188020, 0, 1, 1, 1017.55, -1438.45, 63.4337, 3.48735, 0, 0, 0.985093, -0.17202, 300, 0, 1),
(164818, 181355, 0, 1, 1, 1009.52, -1446.07, 62.2457, 3.52662, 0, 0, 0.981526, -0.191327, 300, 0, 1),
(164819, 181302, 0, 1, 1, 999.693, -1442.64, 62.6698, 4.58298, 0, 0, 0.751349, -0.659905, 300, 0, 1),
(164820, 181302, 0, 1, 1, 1000.27, -1440.61, 62.97, 3.38682, 0, 0, 0.992493, -0.122305, 300, 0, 1),
(164821, 181306, 0, 1, 1, 1000.89, -1443.8, 62.3705, 1.42489, 0, 0, 0.653687, 0.756765, 300, 0, 1),
(164822, 181305, 0, 1, 1, 998.898, -1448.43, 61.636, 5.72102, 0, 0, 0.277395, -0.960756, 300, 0, 1),
(164823, 181307, 0, 1, 1, 999.225, -1446.96, 62.6326, 3.82978, 0, 0, 0.941381, -0.337345, 300, 0, 1),
(164825, 181605, 0, 1, 1, 995.265, -1436.64, 64.3036, 5.13434, 0, 0, 0.543351, -0.839505, 300, 0, 1),
(164826, 181376, 0, 1, 1, 989.562, -1453.47, 61.0011, 4.9859, 0, 0, 0.604106, -0.796904, 300, 0, 1),
(164827, 187939, 0, 1, 1, 989.562, -1453.47, 61.0011, 4.9105, 0, 0, 0.633713, -0.773569, 300, 0, 1);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(150078, 25962, 0, 1, 1, 0, 151, 992.05, -1438.97, 64.3942, 5.22073, 300, 0, 0, 1782, 0, 0, 0, 0, 0),
(150079, 16781, 0, 1, 1, 16435, 0, 989.633, -1444.97, 63.2034, 0.579809, 300, 0, 0, 3427, 0, 0, 0, 0, 0),
(150080, 16781, 0, 1, 1, 16447, 0, 1003.8, -1434.55, 63.5274, 3.86513, 300, 0, 0, 3052, 0, 0, 0, 0, 0),
(150081, 16781, 0, 1, 1, 16412, 0, 997.675, -1428.17, 65.905, 4.35443, 300, 0, 0, 2138, 0, 0, 0, 0, 0),
(150082, 16781, 0, 1, 1, 16431, 0, 1007.68, -1441.76, 62.6307, 2.69567, 300, 0, 0, 2784, 0, 0, 0, 0, 0),
(150083, 25909, 0, 1, 1, 16339, 0, 1002.08, -1454.41, 61.1954, 5.05265, 300, 0, 0, 42, 0, 0, 0, 0, 0);
-- Delete double spawns from Arathi camp
DELETE FROM `gameobject` WHERE `guid` IN (52335,51814,52409,51573,51014,51554,51579,51981,52412,52407,51578,50931,52481,52542,50836,51580,50553,51820,50802,50897,50803,165383);
-- DELETE FROM `creature` WHERE `guid` IN (94557,94605,90490,94556,94704,86232);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(165383, 187945, 1, 1, 1, -7216.15, -3859.66, 11.9664, 4.00788, 0, 0, 0.907652, -0.419724, 300, 0, 1);
-- Delete double spawns from Stranglethorn camp
DELETE FROM `gameobject` WHERE `guid` IN (52393,52541,50682,51782,52325,51028,51797,51028,51798,50784,50871,50785,51545,52331,52509,165384);
-- DELETE FROM `creature` WHERE `guid` IN (86329,94553,94551,86711,94554,94555);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(165384, 187943, 1, 1, 1, -6771.96, 527.151, -1.40004, 3.1949, 0, 0, 0.999645, -0.0266517, 300, 0, 1);
-- Add Bloodmyst camp
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(164852, 188021, 530, 1, 1, -2238.65, -11884.9, 27.2942, 5.0887, 0, 0, 0.562366, -0.826888, 300, 0, 1),
(164853, 181355, 530, 1, 1, -2247.36, -11891.2, 27.273, 5.12561, 0, 0, 0.547009, -0.837127, 300, 0, 1),
(164854, 181376, 530, 1, 1, -2254.78, -11896.3, 27.4979, 5.24028, 0, 0, 0.498141, -0.867096, 300, 0, 1),
(164855, 187921, 530, 1, 1, -2254.78, -11896.3, 27.4979, 5.24028, 0, 0, 0.498141, -0.867096, 300, 0, 1),
(164856, 181355, 530, 1, 1, -2263.35, -11897.7, 27.4214, 4.9112, 0, 0, 0.633442, -0.77379, 300, 0, 1),
(164857, 188020, 530, 1, 1, -2267.6, -11910.3, 26.5801, 3.82107, 0, 0, 0.942842, -0.333239, 300, 0, 1),
(164858, 181305, 530, 1, 1, -2234.49, -11884.7, 29.2704, 2.36494, 0, 0, 0.925544, 0.378641, 300, 0, 1),
(164859, 181307, 530, 1, 1, -2233.15, -11884.7, 30.2608, 3.17861, 0, 0, 0.999829, -0.0185081, 300, 0, 1),
(164861, 181605, 530, 1, 1, -2232.01, -11915.4, 26.5822, 1.82694, 0, 0, 0.791628, 0.611003, 300, 0, 1),
(164862, 188020, 530, 1, 1, -2246.85, -11930.2, 27.0976, 3.92552, 0, 0, 0.92416, -0.382005, 300, 0, 1),
(164863, 181355, 530, 1, 1, -2229.91, -11931.1, 29.9614, 2.41049, 0, 0, 0.933927, 0.357465, 300, 0, 1),
(164864, 188020, 530, 1, 1, -2206.14, -11905.5, 29.0653, 0.581295, 0, 0, 0.286573, 0.958058, 300, 0, 1),
(164865, 188020, 530, 1, 1, -2218.01, -11884.8, 29.2497, 3.56425, 0, 0, 0.977754, -0.209757, 300, 0, 1),
(164866, 181355, 530, 1, 1, -2207.24, -11920.6, 31.7791, 1.97971, 0, 0, 0.835947, 0.548811, 300, 0, 1),
(164867, 181355, 530, 1, 1, -2224.91, -11879.8, 29.7914, 1.97971, 0, 0, 0.835947, 0.548811, 300, 0, 1),
(164868, 181302, 530, 1, 1, -2243.58, -11886.5, 28.3418, 0.455247, 0, 0, 0.225663, 0.974205, 300, 0, 1),
(164869, 181302, 530, 1, 1, -2241.55, -11887.8, 28.4584, 1.37809, 0, 0, 0.635801, 0.771853, 300, 0, 1),
(164870, 181306, 530, 1, 1, -2243.06, -11888.3, 28.1292, 1.35453, 0, 0, 0.626664, 0.77929, 300, 0, 1);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(150084, 16781, 530, 1, 1, 16414, 0, -2227.85, -11887.9, 28.3225, 4.4168, 300, 0, 0, 1716, 0, 0, 0, 0, 0),
(150085, 16781, 530, 1, 1, 16434, 0, -2230.5, -11891.1, 27.6743, 0.651601, 300, 0, 0, 3728, 0, 0, 0, 0, 0),
(150086, 16781, 530, 1, 1, 16412, 0, -2246.13, -11921, 25.4183, 6.15017, 300, 0, 0, 1919, 0, 0, 0, 0, 0),
(150087, 16781, 530, 1, 1, 21083, 0, -2240.57, -11922.3, 26.6757, 2.72819, 300, 0, 0, 3144, 0, 0, 0, 0, 0),
(150088, 25962, 530, 1, 1, 0, 151, -2224.37, -11912.7, 26.95, 2.63237, 300, 0, 0, 2784, 0, 0, 0, 0, 0),
(150089, 25891, 530, 1, 1, 0, 0, -2238.78, -11890.3, 28.0834, 4.91003, 300, 0, 0, 1524, 0, 0, 0, 0, 0);
-- Add Feralas camp
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(164894, 188020, 1, 1, 1, -4397.96, 3483.41, 11.6035, 0.0273144, 0, 0, 0.0136568, 0.999907, 300, 0, 1),
(164895, 188020, 1, 1, 1, -4426.01, 3485.49, 15.1689, 6.18994, 0, 0, 0.0466055, -0.998913, 300, 0, 1),
(164896, 188020, 1, 1, 1, -4431.3, 3458.68, 18.2034, 6.16324, 0, 0, 0.0599382, -0.998202, 300, 0, 1),
(164897, 181355, 1, 1, 1, -4404.42, 3477.56, 12.3551, 6.17894, 0, 0, 0.052098, -0.998642, 300, 0, 1),
(164898, 181605, 1, 1, 1, -4417.13, 3455.78, 14.9771, 5.72732, 0, 0, 0.274366, -0.961625, 300, 0, 1),
(164899, 181305, 1, 1, 1, -4414.79, 3466.24, 12.9118, 0.476933, 0, 0, 0.236213, 0.971701, 300, 0, 1),
(164900, 181307, 1, 1, 1, -4415.03, 3464.71, 13.9024, 0.516203, 0, 0, 0.255246, 0.966876, 300, 0, 1),
(164901, 181302, 1, 1, 1, -4411.8, 3462.72, 13.1523, 0.397609, 0, 0, 0.197498, 0.980303, 300, 0, 1),
(164902, 181302, 1, 1, 1, -4413.43, 3462.26, 13.1455, 5.04874, 0, 0, 0.578774, -0.815488, 300, 0, 1),
(164903, 181306, 1, 1, 1, -4411.95, 3460.55, 13.3287, 1.76734, 0, 0, 0.773073, 0.634317, 300, 0, 1),
(164904, 181376, 1, 1, 1, -4412.02, 3480.24, 12.6312, 6.12709, 0, 0, 0.0779694, -0.996956, 300, 0, 1),
(164905, 187929, 1, 1, 1, -4412.02, 3480.24, 12.6312, 6.12709, 0, 0, 0.0779694, -0.996956, 300, 0, 1);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(150090, 25899, 1, 1, 1, 0, 0, -4405.5, 3466.01, 12.818, 0.172199, 300, 0, 0, 1524, 0, 0, 0, 0, 0),
(150091, 25962, 1, 1, 1, 0, 151, -4426.59, 3463.45, 14.9376, 6.14436, 300, 0, 0, 2138, 0, 0, 0, 0, 0),
(150092, 16781, 1, 1, 1, 16433, 0, -4406.22, 3458.47, 13.1618, 2.99649, 300, 0, 0, 3524, 0, 0, 0, 0, 0),
(150093, 16781, 1, 1, 1, 16447, 0, -4408.65, 3454.41, 14.0291, 1.02042, 300, 0, 0, 1585, 0, 0, 0, 0, 0),
(150094, 16781, 1, 1, 1, 16414, 0, -4411.13, 3457.27, 13.6321, 6.03912, 300, 0, 0, 2215, 0, 0, 0, 0, 0),
(150095, 16781, 1, 1, 1, 16413, 0, -4417.18, 3487.8, 12.7708, 5.29378, 300, 0, 0, 2138, 0, 0, 0, 0, 0);
-- Add Azuremyst Isle camp
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(164906, 188021, 530, 1, 1, -4213.9, -12294, 1.92798, 5.8395, 0, 0, 0.220026, -0.975494, 300, 0, 1),
(164907, 181376, 530, 1, 1, -4219.28, -12303.5, 2.90522, 5.69342, 0, 0, 0.290628, -0.956836, 300, 0, 1),
(164908, 187917, 530, 1, 1, -4219.28, -12303.5, 2.90522, 5.69342, 0, 0, 0.290628, -0.956836, 300, 0, 1),
(164909, 181355, 530, 1, 1, -4208.46, -12282.1, 3.21486, 1.92744, 0, 0, 0.821318, 0.57047, 300, 0, 1),
(164910, 181355, 530, 1, 1, -4197.32, -12277.3, 1.88286, 2.5746, 0, 0, 0.960084, 0.279712, 300, 0, 1),
(164911, 181605, 530, 1, 1, -4198.35, -12312.5, 1.07796, 2.84635, 0, 0, 0.989124, 0.147085, 300, 0, 1),
(164913, 188020, 530, 1, 1, -4236.15, -12336.3, 5.75984, 1.06449, 0, 0, 0.507467, 0.861671, 300, 0, 1),
(164914, 188020, 530, 1, 1, -4213.2, -12341.7, 4.5449, 1.15166, 0, 0, 0.544533, 0.83874, 300, 0, 1),
(164915, 188020, 530, 1, 1, -4176.14, -12281.3, 0.011331, 4.10634, 0, 0, 0.885897, -0.463882, 300, 0, 1),
(164916, 188020, 530, 1, 1, -4191.53, -12268.3, 1.30263, 4.11027, 0, 0, 0.884984, -0.465621, 300, 0, 1),
(164917, 181355, 530, 1, 1, -4179.3, -12286.9, -0.144273, 4.14876, 0, 0, 0.875859, -0.482566, 300, 0, 1),
(164918, 181355, 530, 1, 1, -4207.73, -12332.2, 2.70515, 4.14954, 0, 0, 0.87567, -0.48291, 300, 0, 1),
(164919, 181355, 530, 1, 1, -4228.71, -12323.4, 3.0214, 2.66043, 0, 0, 0.971199, 0.238268, 300, 0, 1),
(164920, 181305, 530, 1, 1, -4212.47, -12291.7, 1.64004, 0.517075, 0, 0, 0.255667, 0.966765, 300, 0, 1),
(164921, 181307, 530, 1, 1, -4212.91, -12290.5, 2.64394, 4.74173, 0, 0, 0.696657, -0.717404, 300, 0, 1),
(164922, 181302, 530, 1, 1, -4217.7, -12294.9, 2.66322, 5.99994, 0, 0, 0.14115, -0.989988, 300, 0, 1),
(164923, 181302, 530, 1, 1, -4219.81, -12294.4, 2.97659, 0.62389, 0, 0, 0.30691, 0.951738, 300, 0, 1),
(164924, 181306, 530, 1, 1, -4218.2, -12293.3, 2.44695, 3.98539, 0, 0, 0.912313, -0.409495, 300, 0, 1);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(150096, 16781, 530, 1, 1, 16413, 0, -4204.91, -12289.1, 1.57936, 1.63705, 300, 0, 0, 3834, 0, 0, 0, 0, 0),
(150097, 16781, 530, 1, 1, 16412, 0, -4205.15, -12284.2, 2.51655, 4.81948, 300, 0, 0, 1585, 0, 0, 0, 0, 0),
(150098, 16781, 530, 1, 1, 21084, 0, -4204.2, -12322.9, 2.18588, 1.49174, 300, 0, 0, 3834, 0, 0, 0, 0, 0),
(150099, 16781, 530, 1, 1, 16433, 0, -4204.16, -12316.3, 1.96402, 4.73543, 300, 0, 0, 3144, 0, 0, 0, 0, 0),
(150100, 16781, 530, 1, 1, 16448, 0, -4194.72, -12303.8, 0.665216, 3.58718, 300, 0, 0, 3624, 0, 0, 0, 0, 0),
(150101, 25888, 530, 1, 1, 0, 0, -4210.83, -12297.8, 1.66611, 0.00183678, 300, 0, 0, 1524, 0, 0, 0, 0, 0),
(150102, 25962, 530, 1, 1, 0, 151, -4189.94, -12310.1, -0.885672, 3.28087, 300, 0, 0, 2138, 0, 0, 0, 0, 0);
-- Delete double spawns from Tanaris camp + add proper bonfire
DELETE FROM `gameobject` WHERE `guid` IN (52273,52527,52275,52273,50683,50684,51343,52272,52279,50994,50854,50710,52466,50709,51342);
-- DELETE FROM `creature` WHERE `guid` IN (86376,86895,94735,94734,94716,94733);
-- Delete extra spawns from Silithus camp
DELETE FROM `gameobject` WHERE `guid` IN (52344,50991,50743,50852,52463,50680,50679,49312,52267,52526);
-- DELETE FROM `creature` WHERE `guid` IN (86321,94649,94738,86704,94700,94579);
-- Outland
-- Netherstorm
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(164974, 188020, 530, 1, 1, 3124.32, 3767.21, 141.72, 6.15712, 0, 0, 0.0629915, -0.998014, 300, 0, 1),
(164975, 188020, 530, 1, 1, 3118.47, 3768.31, 142, 5.99611, 0, 0, 0.143044, -0.989716, 300, 0, 1),
(164976, 188020, 530, 1, 1, 3128.04, 3723.67, 142.125, 3.6241, 0, 0, 0.971039, -0.238921, 300, 0, 1),
(164977, 181355, 530, 1, 1, 3129.41, 3728.35, 141.836, 3.15679, 0, 0, 0.999971, -0.00759801, 300, 0, 1),
(164978, 181355, 530, 1, 1, 3118.56, 3728.18, 145.543, 3.26674, 0, 0, 0.998043, -0.0625352, 300, 0, 1),
(164979, 181355, 530, 1, 1, 3106.03, 3725.62, 144.981, 3.3335, 0, 0, 0.9954, -0.0958082, 300, 0, 1),
(164980, 181605, 530, 1, 1, 3113, 3717.87, 144.699, 1.34645, 0, 0, 0.62351, 0.781815, 300, 0, 1),
(164981, 181302, 530, 1, 1, 3119, 3742.2, 142.069, 1.01658, 0, 0, 0.486685, 0.873577, 300, 0, 1),
(164982, 181302, 530, 1, 1, 3120.72, 3741.49, 141.941, 1.31503, 0, 0, 0.611153, 0.791512, 300, 0, 1),
(164983, 181306, 530, 1, 1, 3119.22, 3739.92, 141.977, 1.78627, 0, 0, 0.779042, 0.626972, 300, 0, 1),
(164984, 181376, 530, 1, 1, 3121.5, 3753.88, 141.851, 5.85856, 0, 0, 0.21072, -0.977546, 300, 0, 1),
(164985, 187942, 530, 1, 1, 3121.5, 3753.88, 141.851, 5.85856, 0, 0, 0.21072, -0.977546, 300, 0, 1),
(165408, 188021, 530, 1, 1, 3124.08, 3743.19, 141.84, 0.373246, 0, 0, 0.185542, 0.982636, 300, 0, 1);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(150103, 16781, 530, 1, 1, 21084, 0, 3105.5, 3720.48, 144.815, 0.250816, 300, 0, 0, 4050, 0, 0, 0, 0, 0),
(150104, 16781, 530, 1, 1, 16435, 0, 3115.55, 3726.49, 145.316, 4.10869, 300, 0, 0, 2961, 0, 0, 0, 0, 0),
(150105, 16781, 530, 1, 1, 16447, 0, 3120.66, 3721, 145.281, 2.74995, 300, 0, 0, 1990, 0, 0, 0, 0, 0),
(150106, 16781, 530, 1, 1, 16412, 0, 3125.3, 3727.87, 142.621, 5.58132, 300, 0, 0, 3237, 0, 0, 0, 0, 0),
(150107, 25962, 530, 1, 1, 0, 151, 3106.88, 3712.88, 144.328, 0.980452, 300, 0, 0, 2371, 0, 0, 0, 0, 0),
(150108, 25913, 530, 1, 1, 0, 0, 3127.12, 3744.35, 141.695, 5.94888, 300, 0, 0, 42, 0, 0, 0, 0, 0);
-- Nagrand
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(165034, 188021, 530, 1, 1, -2518.07, 7554.87, -1.84913, 5.25355, 0, 0, 0.492375, -0.870383, 300, 0, 1),
(165038, 188020, 530, 1, 1, -2503.95, 7557.49, -1.08408, 5.53944, 0, 0, 0.363359, -0.931649, 300, 0, 1),
(165039, 181355, 530, 1, 1, -2508.99, 7559.45, -1.49399, 5.21507, 0, 0, 0.509029, -0.860749, 300, 0, 1),
(165040, 181305, 530, 1, 1, -2514.58, 7556.29, -1.9083, 3.55317, 0, 0, 0.9789, -0.204338, 300, 0, 1),
(165041, 181307, 530, 1, 1, -2514.36, 7557.85, -0.918236, 4.60717, 0, 0, 0.743311, -0.668946, 300, 0, 1),
(165042, 181302, 530, 1, 1, -2521.68, 7558.76, -1.93354, 5.38786, 0, 0, 0.43286, -0.901461, 300, 0, 1),
(165043, 181302, 530, 1, 1, -2520.13, 7560.14, -1.93178, 4.59147, 0, 0, 0.748542, -0.663088, 300, 0, 1),
(165044, 181306, 530, 1, 1, -2519.97, 7558.77, -1.99031, 3.1212, 0, 0, 0.999948, 0.0101965, 300, 0, 1),
(165045, 188020, 530, 1, 1, -2528.76, 7534.67, -0.445196, 5.47583, 0, 0, 0.392805, -0.919622, 300, 0, 1),
(165046, 181355, 530, 1, 1, -2530.75, 7540.66, -2.24676, 5.41692, 0, 0, 0.419715, -0.907656, 300, 0, 1),
(165047, 181376, 530, 1, 1, -2526.69, 7548.83, -2.23534, 5.32817, 0, 0, 0.459565, -0.888144, 300, 0, 1),
(165048, 187933, 530, 1, 1, -2526.69, 7548.83, -2.23534, 5.32817, 0, 0, 0.459565, -0.888144, 300, 0, 1),
(165049, 188020, 530, 1, 1, -2511.48, 7518.87, -1.20825, 2.42299, 0, 0, 0.936142, 0.351621, 300, 0, 1),
(165050, 181355, 530, 1, 1, -2506.01, 7514.91, -3.26091, 2.33267, 0, 0, 0.919314, 0.393525, 300, 0, 1),
(165051, 181355, 530, 1, 1, -2485.85, 7534.2, -1.6549, 2.33267, 0, 0, 0.919314, 0.393525, 300, 0, 1),
(165052, 188020, 530, 1, 1, -2489.07, 7542.57, -0.865097, 2.31931, 0, 0, 0.916666, 0.399654, 300, 0, 1),
(165053, 181605, 530, 1, 1, -2502.95, 7522.09, -2.46418, 2.29811, 0, 0, 0.912378, 0.40935, 300, 0, 1);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(150109, 16781, 530, 1, 1, 16412, 0, -2504.03, 7528.3, -0.64438, 0.776008, 300, 0, 0, 1782, 0, 0, 0, 0, 0),
(150110, 16781, 530, 1, 1, 16447, 0, -2500.29, 7532.45, -0.97989, 2.51488, 300, 0, 0, 4050, 0, 0, 0, 0, 0),
(150111, 16781, 530, 1, 1, 16413, 0, -2507.02, 7550.21, -0.997479, 1.49936, 300, 0, 0, 3052, 0, 0, 0, 0, 0),
(150112, 16781, 530, 1, 1, 16431, 0, -2508.9, 7555.52, -1.63478, 4.96375, 300, 0, 0, 3834, 0, 0, 0, 0, 0),
(150113, 25962, 530, 1, 1, 0, 151, -2488.89, 7531.11, -2.0437, 2.29261, 300, 0, 0, 2371, 0, 0, 0, 0, 0),
(150114, 25903, 530, 1, 1, 0, 0, -2515.71, 7550.71, -1.47649, 4.94805, 300, 0, 0, 3052, 0, 0, 0, 0, 0);
-- Shadowmoon Valley
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(165054, 188021, 530, 1, 1, -3953.72, 2048.88, 95.0652, 4.6418, 0, 0, 0.731618, -0.681714, 300, 0, 1),
(165055, 181376, 530, 1, 1, -3941.98, 2048.49, 95.0656, 4.87742, 0, 0, 0.646421, -0.762981, 300, 0, 1),
(165056, 187935, 530, 1, 1, -3941.98, 2048.49, 95.0656, 4.87742, 0, 0, 0.646421, -0.762981, 300, 0, 1),
(165057, 181355, 530, 1, 1, -3959.23, 2040.55, 95.0649, 1.26694, 0, 0, 0.591944, 0.805979, 300, 0, 1),
(165058, 181605, 530, 1, 1, -3965.24, 2039.3, 95.0659, 1.35098, 0, 0, 0.625278, 0.780402, 300, 0, 1),
(165059, 188020, 530, 1, 1, -3951.26, 2032.03, 95.1979, 1.40988, 0, 0, 0.647988, 0.761651, 300, 0, 1),
(165060, 181355, 530, 1, 1, -3947.07, 2032.04, 96.8815, 1.47585, 0, 0, 0.672754, 0.739866, 300, 0, 1),
(165062, 188020, 530, 1, 1, -3932.45, 2051.71, 95.072, 0.10612, 0, 0, 0.0530353, 0.998593, 300, 0, 1),
(165063, 188020, 530, 1, 1, -3931.76, 2044.1, 95.1721, 6.1741, 0, 0, 0.054514, -0.998513, 300, 0, 1),
(165064, 181305, 530, 1, 1, -3951.84, 2053.02, 95.0649, 4.37555, 0, 0, 0.815632, -0.578571, 300, 0, 1),
(165066, 181307, 530, 1, 1, -3953.39, 2052.79, 96.0565, 0.143821, 0, 0, 0.0718485, 0.997416, 300, 0, 1),
(165067, 181302, 530, 1, 1, -3956.31, 2051.68, 95.0653, 4.80752, 0, 0, 0.672688, -0.739927, 300, 0, 1),
(165068, 181302, 530, 1, 1, -3956.72, 2051.26, 96.3085, 0.346454, 0, 0, 0.172362, 0.985034, 300, 0, 1),
(165069, 181306, 530, 1, 1, -3958.88, 2051.04, 95.0648, 6.24637, 0, 0, 0.0184091, -0.999831, 300, 0, 1);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(150115, 16781, 530, 1, 1, 16431, 0, -3965.57, 2049.6, 95.0651, 0.431277, 300, 0, 0, 2784, 0, 0, 0, 0, 0),
(150116, 16781, 530, 1, 1, 21084, 0, -3960.94, 2053.54, 95.0651, 3.89645, 300, 0, 0, 2215, 0, 0, 0, 0, 0),
(150117, 16781, 530, 1, 1, 16434, 0, -3972.67, 2034.69, 95.0653, 0.376299, 300, 0, 0, 2699, 0, 0, 0, 0, 0),
(150118, 16781, 530, 1, 1, 16447, 0, -3968.36, 2038.44, 95.0653, 3.94672, 300, 0, 0, 2699, 0, 0, 0, 0, 0),
(150119, 25962, 530, 1, 1, 0, 151, -3962.59, 2045.64, 95.0653, 4.66928, 300, 0, 0, 1716, 0, 0, 0, 0, 0),
(150120, 25905, 530, 1, 1, 0, 0, -3953.29, 2043.81, 95.0653, 4.37634, 300, 0, 0, 42, 0, 0, 0, 0, 0);
-- Zangarmarsh
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(165070, 188021, 530, 1, 1, 192.163, 6006.97, 22.1, 6.08217, 0, 0, 0.100341, -0.994953, 300, 0, 1),
(165071, 181376, 530, 1, 1, 194.982, 6019.23, 21.9713, 6.05151, 0, 0, 0.115576, -0.993299, 300, 0, 1),
(165072, 187941, 530, 1, 1, 192.209, 6015.13, 22.1067, 0.00709009, 0, 0, 0.00354504, 0.999994, 300, 0, 1),
(165074, 188020, 530, 1, 1, 179.856, 6024.08, 22.3978, 3.98117, 0, 0, 0.913175, -0.407568, 300, 0, 1),
(165075, 181355, 530, 1, 1, 182.649, 6013.91, 22.7399, 3.85237, 0, 0, 0.937511, -0.347954, 300, 0, 1),
(165077, 181305, 530, 1, 1, 191.325, 6003.18, 24.2265, 1.22679, 0, 0, 0.575647, 0.817698, 300, 0, 1),
(165078, 181307, 530, 1, 1, 190.107, 6002.77, 25.2167, 1.22679, 0, 0, 0.575647, 0.817698, 300, 0, 1),
(165079, 181302, 530, 1, 1, 187.76, 6009.34, 23.9554, 6.21407, 0, 0, 0.0345506, -0.999403, 300, 0, 1),
(165080, 181302, 530, 1, 1, 187.695, 6007.28, 24.1424, 0.567843, 0, 0, 0.280122, 0.959964, 300, 0, 1),
(165081, 181306, 530, 1, 1, 190.136, 6008.65, 23.9259, 4.04009, 0, 0, 0.900774, -0.434289, 300, 0, 1),
(165105, 181355, 530, 1, 1, 199.014, 6031.23, 20.5566, 3.50209, 0, 0, 0.983799, -0.179273, 300, 0, 1),
(165106, 188020, 530, 1, 1, 201.225, 6033.47, 20.1022, 3.0819, 0, 0, 0.999555, 0.0298411, 300, 0, 1),
(165107, 188020, 530, 1, 1, 201.553, 5989.88, 20.7907, 3.02849, 0, 0, 0.998401, 0.0565203, 300, 0, 1),
(165108, 181355, 530, 1, 1, 199.671, 5991.72, 21.7141, 0.161778, 0, 0, 0.0808006, 0.99673, 300, 0, 1),
(165109, 181605, 530, 1, 1, 188.262, 5991.39, 23.7141, 3.08425, 0, 0, 0.999589, 0.0286686, 300, 0, 1),
(165110, 188020, 530, 1, 1, 177.593, 5991.78, 22.1575, 6.11588, 0, 0, 0.0835527, -0.996503, 300, 0, 1),
(165111, 181355, 530, 1, 1, 180.409, 5994.73, 22.8062, 5.91168, 0, 0, 0.184688, -0.982797, 300, 0, 1);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(150120, 16781, 530, 1, 1, 16434, 0, 183.656, 6001.85, 23.9098, 5.76245, 300, 0, 0, 3834, 0, 0, 0, 0, 0),
(150121, 16781, 530, 1, 1, 16433, 0, 183.666, 5998.61, 23.7887, 1.12075, 300, 0, 0, 3144, 0, 0, 0, 0, 0),
(150122, 16781, 530, 1, 1, 16435, 0, 181.842, 5991.56, 22.9939, 0.808944, 300, 0, 0, 2871, 0, 0, 0, 0, 0),
(150123, 16781, 530, 1, 1, 16433, 0, 184.16, 5995.16, 23.7236, 4.20658, 300, 0, 0, 2453, 0, 0, 0, 0, 0),
(150124, 25962, 530, 1, 1, 0, 151, 191.919, 5998.19, 24.2443, 4.56315, 300, 0, 0, 2453, 0, 0, 0, 0, 0),
(150125, 25912, 530, 1, 1, 0, 0, 195.944, 6003.78, 23.5325, 5.86299, 300, 0, 0, 42, 0, 0, 0, 0, 0);
-- Blade's Edge
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(165009, 188020, 530, 1, 1, 2027.6, 6566, 133.42, 1.47266, 0, 0, 0.671574, 0.740938, 300, 0, 1),
(165010, 188020, 530, 1, 1, 2042.68, 6565.84, 133.415, 4.54986, 0, 0, 0.762173, -0.647374, 300, 0, 1),
(165012, 181355, 530, 1, 1, 2045.62, 6568.03, 134.354, 0.139063, 0, 0, 0.0694754, 0.997584, 300, 0, 1),
(165013, 181355, 530, 1, 1, 2050.79, 6579.78, 136.412, 1.58284, 0, 0, 0.711351, 0.702837, 300, 0, 1),
(165014, 181355, 530, 1, 1, 2018.03, 6580.28, 134.434, 1.33936, 0, 0, 0.620737, 0.784019, 300, 0, 1),
(165015, 181355, 530, 1, 1, 2023.32, 6573.3, 133.994, 1.56432, 0, 0, 0.704815, 0.709392, 300, 0, 1),
(165016, 181355, 530, 1, 1, 2045.55, 6573.74, 134.924, 0.0665667, 0, 0, 0.0332772, 0.999446, 300, 0, 1),
(165019, 181376, 530, 1, 1, 2019.7, 6587.14, 134.985, 6.23705, 0, 0, 0.023068, -0.999734, 300, 0, 1),
(165020, 187919, 530, 1, 1, 2019.7, 6587.14, 134.985, 6.23705, 0, 0, 0.023068, -0.999734, 300, 0, 1),
(165021, 188021, 530, 1, 1, 2019.32, 6604.34, 136.902, 6.24568, 0, 0, 0.01875, -0.999824, 300, 0, 1),
(165022, 181305, 530, 1, 1, 2014.67, 6605.07, 137.254, 6.08075, 0, 0, 0.101046, -0.994882, 300, 0, 1),
(165023, 181307, 530, 1, 1, 2014.07, 6606.01, 138.244, 5.27886, 0, 0, 0.481324, -0.876543, 300, 0, 1),
(165024, 181302, 530, 1, 1, 2018.4, 6602.44, 136.665, 0.432949, 0, 0, 0.214788, 0.976661, 300, 0, 1),
(165025, 181302, 530, 1, 1, 2020.24, 6602.73, 136.605, 1.1351, 0, 0, 0.537566, 0.843222, 300, 0, 1),
(165026, 181306, 530, 1, 1, 2019.32, 6600.75, 136.353, 1.1351, 0, 0, 0.537566, 0.843222, 300, 0, 1),
(165027, 181605, 530, 1, 1, 2049.6, 6588.34, 136.213, 3.18184, 0, 0, 0.999797, -0.020124, 300, 0, 1),
(165028, 188020, 530, 1, 1, 2047.82, 6623.09, 140.822, 4.54372, 0, 0, 0.764156, -0.645031, 300, 0, 1),
(165029, 188020, 530, 1, 1, 2036.31, 6623.38, 139.917, 4.61833, 0, 0, 0.739567, -0.673083, 300, 0, 1),
(165030, 181355, 530, 1, 1, 2032.89, 6620.83, 139.426, 4.42198, 0, 0, 0.80198, -0.597351, 300, 0, 1),
(165031, 181355, 530, 1, 1, 2025.48, 6616.34, 138.909, 4.42198, 0, 0, 0.80198, -0.597351, 300, 0, 1),
(165032, 181355, 530, 1, 1, 2056.26, 6611.74, 139.958, 4.68352, 0, 0, 0.71724, -0.696826, 300, 0, 1),
(165033, 181355, 530, 1, 1, 2050.81, 6619.04, 140.428, 4.6144, 0, 0, 0.740889, -0.671627, 300, 0, 1);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(150126, 25962, 530, 1, 1, 0, 151, 2050.24, 6603.09, 138.073, 3.04753, 300, 0, 0, 1651, 0, 0, 0, 0, 0),
(150127, 16781, 530, 1, 1, 16412, 0, 2048.81, 6582.75, 135.962, 2.2637, 300, 0, 0, 3524, 0, 0, 0, 0, 0),
(150128, 16781, 530, 1, 1, 16434, 0, 2044.15, 6588.86, 135.588, 5.3888, 300, 0, 0, 2062, 0, 0, 0, 0, 0),
(150129, 16781, 530, 1, 1, 16448, 0, 2035.12, 6612.1, 138.394, 1.97939, 300, 0, 0, 2138, 0, 0, 0, 0, 0),
(150130, 16781, 530, 1, 1, 16433, 0, 2031.53, 6616.98, 138.934, 5.30162, 300, 0, 0, 3728, 0, 0, 0, 0, 0),
(150131, 25889, 530, 1, 1, 0, 0, 2024.17, 6601.49, 136.211, 6.05482, 300, 0, 0, 1524, 0, 0, 0, 0, 0);
-- Terokkar
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(165112, 188021, 530, 1, 1, -3005.53, 4160.88, 4.18469, 0.149162, 0, 0, 0.0745119, 0.99722, 300, 0, 1),
(165115, 181376, 530, 1, 1, -3004.07, 4152.48, 3.64988, 1.75455, 0, 0, 0.769001, 0.639247, 300, 0, 1),
(165116, 187937, 530, 1, 1, -3004.07, 4152.48, 3.64988, 1.75455, 0, 0, 0.769001, 0.639247, 300, 0, 1),
(165117, 188020, 530, 1, 1, -3007.02, 4177.26, 4.07658, 4.79326, 0, 0, 0.677945, -0.735112, 300, 0, 1),
(165118, 181355, 530, 1, 1, -3006.14, 4169.56, 3.93771, 6.15906, 0, 0, 0.0620252, -0.998075, 300, 0, 1),
(165119, 181355, 530, 1, 1, -3000.22, 4138.67, 2.05751, 1.71684, 0, 0, 0.756811, 0.653634, 300, 0, 1),
(165120, 188020, 530, 1, 1, -2996.65, 4116.85, 4.33362, 1.75611, 0, 0, 0.769498, 0.638649, 300, 0, 1),
(165121, 181605, 530, 1, 1, -2988.84, 4126.66, 4.88284, 3.26329, 0, 0, 0.998149, -0.0608107, 300, 0, 1);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(150132, 25962, 530, 1, 1, 0, 151, -2986.96, 4130.72, 5.04767, 2.64597, 300, 0, 0, 2533, 0, 0, 0, 0, 0),
(150133, 16781, 530, 1, 1, 16448, 0, -2999.23, 4136.4, 2.31857, 4.96681, 300, 0, 0, 1716, 0, 0, 0, 0, 0),
(150134, 16781, 530, 1, 1, 16434, 0, -2997.71, 4131.23, 3.04313, 1.92339, 300, 0, 0, 2699, 0, 0, 0, 0, 0),
(150135, 16781, 530, 1, 1, 16442, 0, -2992.17, 4134.37, 3.88179, 3.20281, 300, 0, 0, 3052, 0, 0, 0, 0, 0),
(150136, 25907, 530, 1, 1, 16339, 0, -3000.43, 4160.95, 4.82476, 6.12213, 300, 0, 0, 42, 0, 0, 0, 0, 0);
-- Northrend
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(150137, 32801, 571, 1, 1, 0, 0, 4127.57, 5395.95, 27.1605, 3.70375, 300, 0, 0, 9610, 0, 0, 0, 0, 0), -- borean
(150138, 25962, 571, 1, 1, 0, 151, 4141.22, 5399.12, 26.8254, 0.573149, 300, 0, 0, 2215, 0, 0, 0, 0, 0),
(150139, 16781, 571, 1, 1, 16434, 0, 4142.22, 5389.34, 26.5072, 1.07266, 300, 0, 0, 1524, 0, 0, 0, 0, 0),
(150140, 16781, 571, 1, 1, 16435, 0, 4141.25, 5394.58, 27.4716, 5.24156, 300, 0, 0, 2961, 0, 0, 0, 0, 0),
(150141, 16781, 571, 1, 1, 16412, 0, 4147.28, 5407.75, 28.0446, 1.51327, 300, 0, 0, 1848, 0, 0, 0, 0, 0),
(150142, 16781, 571, 1, 1, 16413, 0, 4145.26, 5412.3, 28.2783, 5.25177, 300, 0, 0, 3237, 0, 0, 0, 0, 0),
(150143, 16781, 571, 1, 1, 21084, 0, 3946.4, -634.725, 242.332, 2.18478, 300, 0, 0, 1990, 0, 0, 0, 0, 0), -- dragonblight
(150144, 16781, 571, 1, 1, 16435, 0, 3944.54, -631.516, 242.718, 5.2062, 300, 0, 0, 3834, 0, 0, 0, 0, 0),
(150145, 16781, 571, 1, 1, 16434, 0, 3942.9, -606.703, 241.48, 2.36464, 300, 0, 0, 2871, 0, 0, 0, 0, 0),
(150146, 16781, 571, 1, 1, 21083, 0, 3940.65, -603.007, 241.622, 5.10253, 300, 0, 0, 1524, 0, 0, 0, 0, 0),
(150147, 32803, 571, 1, 1, 16338, 0, 3937.7, -597.263, 241.288, 5.88322, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(150148, 25962, 571, 1, 1, 0, 151, 3954.38, -609.752, 240.94, 3.62441, 300, 0, 0, 2138, 0, 0, 0, 0, 0),
(150149, 25962, 571, 1, 1, 0, 151, 3417.9, -2882.62, 201.901, 2.50837, 300, 0, 0, 2699, 0, 0, 0, 0, 0), -- grizzly
(150150, 16781, 571, 1, 1, 21083, 0, 3410.97, -2879.33, 201.095, 0.0940601, 300, 0, 0, 2062, 0, 0, 0, 0, 0),
(150151, 16781, 571, 1, 1, 16435, 0, 3413.05, -2875.08, 200.954, 4.47815, 300, 0, 0, 2215, 0, 0, 0, 0, 0),
(150152, 16781, 571, 1, 1, 16414, 0, 3416.95, -2876.6, 201.513, 3.22073, 300, 0, 0, 1651, 0, 0, 0, 0, 0),
(150153, 32805, 571, 1, 1, 0, 0, 3408.45, -2883.72, 201.054, 2.20128, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(150154, 32808, 571, 1, 1, 16339, 0, 5613.85, -2621.07, 292.419, 1.40597, 300, 0, 0, 42, 0, 0, 0, 0, 0), -- zul'drak
(150155, 25962, 571, 1, 1, 0, 151, 5605.14, -2622.99, 292.418, 3.07023, 300, 0, 0, 1782, 0, 0, 0, 0, 0),
(150156, 16781, 571, 1, 1, 21083, 0, 5598.5, -2620.43, 292.418, 3.79122, 300, 0, 0, 1716, 0, 0, 0, 0, 0),
(150157, 16781, 571, 1, 1, 16412, 0, 5595.44, -2624.43, 292.418, 0.957505, 300, 0, 0, 2215, 0, 0, 0, 0, 0),
(150158, 16781, 571, 1, 1, 16448, 0, 5591.45, -2618.79, 292.418, 5.53402, 300, 0, 0, 2961, 0, 0, 0, 0, 0),
(150159, 16781, 571, 1, 1, 16414, 0, 5608.18, -2627.1, 292.38, 2.59506, 300, 0, 0, 2961, 0, 0, 0, 0, 0),
(150160, 16781, 571, 1, 1, 16433, 0, 5350.19, 4865.15, -189.023, 5.81181, 300, 0, 0, 2614, 0, 0, 0, 0, 0), -- sholazar
(150161, 16781, 571, 1, 1, 21084, 0, 5349.94, 4860.03, -189.519, 5.81181, 300, 0, 0, 1716, 0, 0, 0, 0, 0),
(150162, 16781, 571, 1, 1, 16412, 0, 5359.3, 4851.5, -195.433, 2.15971, 300, 0, 0, 2453, 0, 0, 0, 0, 0),
(150163, 16781, 571, 1, 1, 16434, 0, 5361.68, 4857.43, -195.012, 2.85086, 300, 0, 0, 1919, 0, 0, 0, 0, 0),
(150164, 25962, 571, 1, 1, 0, 151, 5359.25, 4865.19, -192.408, 4.29363, 300, 0, 0, 2215, 0, 0, 0, 0, 0),
(150165, 32802, 571, 1, 1, 0, 0, 5361.63, 4834.87, -196.682, 6.2634, 300, 0, 0, 11770, 0, 0, 0, 0, 0), 
(150166, 16781, 571, 1, 1, 21084, 0, 2475.51, -4899.2, 264.631, 4.34609, 300, 0, 0, 2215, 0, 0, 0, 0, 0), -- howling
(150167, 16781, 571, 1, 1, 16412, 0, 2473.2, -4903.93, 264.472, 1.13459, 300, 0, 0, 1585, 0, 0, 0, 0, 0),
(150168, 16781, 571, 1, 1, 16434, 0, 2470.25, -4897.93, 264.079, 5.37967, 300, 0, 0, 2614, 0, 0, 0, 0, 0),
(150169, 16781, 571, 1, 1, 16435, 0, 2460.73, -4908.81, 263.856, 1.98283, 300, 0, 0, 1919, 0, 0, 0, 0, 0),
(150170, 25962, 571, 1, 1, 0, 151, 2474.94, -4910.43, 265.088, 1.51708, 300, 0, 0, 2453, 0, 0, 0, 0, 0),
(150171, 32804, 571, 1, 1, 0, 0, 2464.21, -4903.28, 263.834, 1.87601, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(150172, 16781, 571, 1, 1, 16448, 0, 5158.08, -705.974, 168.467, 3.02341, 300, 0, 0, 1919, 0, 0, 0, 0, 0), -- crystal song
(150173, 16781, 571, 1, 1, 16434, 0, 5156.52, -702.266, 168.843, 4.44812, 300, 0, 0, 2871, 0, 0, 0, 0, 0),
(150174, 16781, 571, 1, 1, 16433, 0, 5151.8, -705.612, 169.955, 0.254876, 300, 0, 0, 3728, 0, 0, 0, 0, 0),
(150175, 16781, 571, 1, 1, 21084, 0, 5128.25, -708.394, 173.711, 1.15808, 300, 0, 0, 3144, 0, 0, 0, 0, 0),
(150176, 25962, 571, 1, 1, 0, 151, 5145.91, -709.484, 170.821, 0.499922, 300, 0, 0, 1585, 0, 0, 0, 0, 0),
(150177, 32807, 571, 1, 1, 0, 0, 5136.13, -707.254, 172.487, 4.90051, 300, 0, 0, 12600, 0, 0, 0, 0, 0),
(150178, 32806, 571, 1, 1, 0, 0, 6070.88, -1104.53, 419.715, 1.83449, 300, 0, 0, 12600, 0, 0, 0, 0, 0), -- storm peaks
(150179, 16781, 571, 1, 1, 16434, 0, 6065.56, -1113.57, 420.54, 4.16241, 300, 0, 0, 3427, 0, 0, 0, 0, 0),
(150180, 16781, 571, 1, 1, 16412, 0, 6066.28, -1119.17, 420.628, 1.60201, 300, 0, 0, 2871, 0, 0, 0, 0, 0),
(150181, 16781, 571, 1, 1, 16442, 0, 6061.11, -1119.26, 420.736, 0.384647, 300, 0, 0, 1919, 0, 0, 0, 0, 0),
(150182, 16781, 571, 1, 1, 16447, 0, 6057.52, -1108.18, 421.177, 5.5188, 300, 0, 0, 3237, 0, 0, 0, 0, 0),
(150183, 25962, 571, 1, 1, 0, 151, 6055.79, -1113.41, 420.965, 0.639908, 300, 0, 0, 2614, 0, 0, 0, 0, 0);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(165145, 188021, 571, 1, 1, 4132.22, 5395.21, 25.7191, 5.17561, 0, 0, 0.525913, -0.850539, 300, 0, 1), -- borean
(165146, 181376, 571, 1, 1, 4122.37, 5390.27, 27.8408, 5.32484, 0, 0, 0.461047, -0.887376, 300, 0, 1),
(165147, 194032, 571, 1, 1, 4122.37, 5390.27, 27.8408, 5.32484, 0, 0, 0.461047, -0.887376, 300, 0, 1),
(165148, 188020, 571, 1, 1, 4129.22, 5405.02, 28.1789, 0.481285, 0, 0, 0.238326, 0.971185, 300, 0, 1),
(165149, 188020, 571, 1, 1, 4151.06, 5414.97, 28.6058, 3.52863, 0, 0, 0.981333, -0.192314, 300, 0, 1),
(165150, 181355, 571, 1, 1, 4156.95, 5401.1, 26.3092, 3.55219, 0, 0, 0.979, -0.203861, 300, 0, 1),
(165151, 181355, 571, 1, 1, 4146.21, 5396.35, 26.6994, 3.55219, 0, 0, 0.979, -0.203861, 300, 0, 1),
(165152, 181355, 571, 1, 1, 4142.18, 5405.59, 27.1525, 3.55219, 0, 0, 0.979, -0.203861, 300, 0, 1),
(165153, 181355, 571, 1, 1, 4153.32, 5410.39, 28.7987, 3.52313, 0, 0, 0.981858, -0.189615, 300, 0, 1),
(165154, 181605, 571, 1, 1, 4150.05, 5405.28, 27.8774, 5.08058, 0, 0, 0.565718, -0.824599, 300, 0, 1),
(165156, 181305, 571, 1, 1, 4135.12, 5397.23, 25.5887, 3.85927, 0, 0, 0.936306, -0.351186, 300, 0, 1),
(165157, 181307, 571, 1, 1, 4135.05, 5398.94, 26.5787, 4.14594, 0, 0, 0.876539, -0.481331, 300, 0, 1),
(165160, 181306, 571, 1, 1, 4129.8, 5391.77, 26.5704, 0.0579356, 0, 0, 0.0289637, 0.99958, 300, 0, 1),
(165161, 181302, 571, 1, 1, 4131.99, 5391.45, 26.3998, 2.4746, 0, 0, 0.944904, 0.327349, 300, 0, 1),
(165162, 181302, 571, 1, 1, 4131.99, 5391.45, 27.643, 2.4746, 0, 0, 0.944904, 0.327349, 300, 0, 1), 
(165163, 188020, 571, 1, 1, 3931.83, -573.606, 240.92, 4.44752, 0, 0, 0.794288, -0.607542, 300, 0, 1), -- dragonblight
(165164, 188021, 571, 1, 1, 3935.16, -604.422, 242.038, 0.314754, 0, 0, 0.156728, 0.987642, 300, 0, 1),
(165165, 188020, 571, 1, 1, 3945.42, -581.269, 241.426, 3.2757, 0, 0, 0.997753, -0.0670037, 300, 0, 1),
(165166, 194036, 571, 1, 1, 3936.15, -583.456, 240.5, 4.0611, 0, 0, 0.896162, -0.443727, 300, 0, 1),
(165167, 181605, 571, 1, 1, 3943.7, -620.329, 242.649, 4.94546, 0, 0, 0.620095, -0.784527, 300, 0, 1),
(165168, 181355, 571, 1, 1, 3939.36, -612.531, 242.424, 0.532305, 0, 0, 0.263021, 0.96479, 300, 0, 1),
(165169, 181355, 571, 1, 1, 3935.15, -599.189, 241.726, 3.43592, 0, 0, 0.989191, -0.146634, 300, 0, 1),
(165170, 181302, 571, 1, 1, 3932.46, -602.261, 241.839, 4.80251, 0, 0, 0.674536, -0.738242, 300, 0, 1),
(165171, 181302, 571, 1, 1, 3933.35, -604.422, 242.14, 5.11746, 0, 0, 0.550417, -0.83489, 300, 0, 1),
(165172, 181306, 571, 1, 1, 3930.72, -604.611, 242.786, 0.606916, 0, 0, 0.298822, 0.954309, 300, 0, 1),
(165173, 181305, 571, 1, 1, 3937.87, -603.327, 241.851, 0.273907, 0, 0, 0.136526, 0.990636, 300, 0, 1),
(165174, 181307, 571, 1, 1, 3937.11, -604.845, 242.841, 1.2478, 0, 0, 0.584205, 0.811606, 300, 0, 1),
(165175, 188020, 571, 1, 1, 3951.62, -594.388, 242.067, 3.25449, 0, 0, 0.998407, -0.0564201, 300, 0, 1),
(165176, 188020, 571, 1, 1, 3956.41, -622.677, 240.615, 3.44377, 0, 0, 0.988608, -0.150516, 300, 0, 1),
(165358, 181376, 571, 1, 1, 3938.9, -583.532, 241.562, 3.02279, 0, 0, 0.998236, 0.0593654, 300, 0, 1),
(165177, 188020, 571, 1, 1, 3395.09, -2897.63, 202.415, 3.91647, 0, 0, 0.92588, -0.377817, 300, 0, 1), -- grizzly
(165178, 188020, 571, 1, 1, 3386.89, -2887.49, 201.433, 3.52822, 0, 0, 0.981373, -0.192111, 300, 0, 1),
(165179, 188021, 571, 1, 1, 3411.02, -2887.95, 200.943, 2.32304, 0, 0, 0.917409, 0.397946, 300, 0, 1),
(165180, 181376, 571, 1, 1, 3403.4, -2896.41, 201.988, 2.32303, 0, 0, 0.917408, 0.397948, 300, 0, 1),
(165181, 194040, 571, 1, 1, 3403.4, -2896.41, 201.988, 2.32303, 0, 0, 0.917408, 0.397948, 300, 0, 1),
(165182, 188020, 571, 1, 1, 3407.51, -2863.88, 200.72, 0.993352, 0, 0, 0.476506, 0.879171, 300, 0, 1),
(165183, 188020, 571, 1, 1, 3417.07, -2866.24, 201.045, 1.32715, 0, 0, 0.615936, 0.787796, 300, 0, 1),
(165184, 181355, 571, 1, 1, 3402.62, -2873.88, 201.036, 5.86281, 0, 0, 0.208643, -0.977992, 300, 0, 1),
(165185, 181355, 571, 1, 1, 3420.67, -2873.09, 201.803, 6.15576, 0, 0, 0.0636678, -0.997971, 300, 0, 1),
(165186, 181605, 571, 1, 1, 3418.83, -2879.6, 202.108, 2.79897, 0, 0, 0.985362, 0.170475, 300, 0, 1),
(165187, 181305, 571, 1, 1, 3412.23, -2891.48, 201.275, 5.57692, 0, 0, 0.345838, -0.938294, 300, 0, 1),
(165188, 181307, 571, 1, 1, 3411.04, -2891.93, 202.266, 5.61226, 0, 0, 0.329204, -0.944259, 300, 0, 1),
(165189, 181302, 571, 1, 1, 3413.25, -2886.38, 200.913, 5.401, 0, 0, 0.426929, -0.904285, 300, 0, 1),
(165190, 181302, 571, 1, 1, 3415.21, -2887.65, 201.016, 0.378376, 0, 0, 0.188062, 0.982157, 300, 0, 1),
(165191, 181306, 571, 1, 1, 3415.86, -2885.54, 201.257, 2.86024, 0, 0, 0.990121, 0.140215, 300, 0, 1),
(165192, 188021, 571, 1, 1, 5613.46, -2625.78, 292.419, 1.55992, 0, 0, 0.703251, 0.710942, 300, 0, 1), -- zul'drak
(165193, 181355, 571, 1, 1, 5603.68, -2629.45, 293.617, 4.60018, 0, 0, 0.745644, -0.666345, 300, 0, 1),
(165194, 181355, 571, 1, 1, 5626.09, -2630.44, 292.882, 1.48451, 0, 0, 0.675952, 0.736946, 300, 0, 1),
(165195, 188020, 571, 1, 1, 5636.45, -2626.42, 292.419, 6.27937, 0, 0, 0.00190917, -0.999998, 300, 0, 1),
(165196, 188020, 571, 1, 1, 5636.13, -2618.64, 292.199, 0.0786426, 0, 0, 0.0393112, 0.999227, 300, 0, 1),
(165197, 188020, 571, 1, 1, 5582.98, -2620.34, 292.42, 0.0385866, 0, 0, 0.0192921, 0.999814, 300, 0, 1),
(165198, 188020, 571, 1, 1, 5581.71, -2626.78, 292.419, 6.27386, 0, 0, 0.00466193, -0.999989, 300, 0, 1),
(165199, 181605, 571, 1, 1, 5587.73, -2625.06, 292.41, 0.0409415, 0, 0, 0.0204693, 0.99979, 300, 0, 1),
(165200, 181305, 571, 1, 1, 5616.57, -2625.53, 292.41, 0.749368, 0, 0, 0.365978, 0.930623, 300, 0, 1),
(165201, 181307, 571, 1, 1, 5616.55, -2626.93, 293.402, 1.55676, 0, 0, 0.702126, 0.712053, 300, 0, 1),
(165202, 181302, 571, 1, 1, 5611.85, -2625.48, 292.361, 4.696, 0, 0, 0.712879, -0.701287, 300, 0, 1),
(165203, 181302, 571, 1, 1, 5609.81, -2625.66, 292.34, 5.23792, 0, 0, 0.499163, -0.866508, 300, 0, 1),
(165204, 181306, 571, 1, 1, 5610.02, -2623.6, 292.418, 0.308762, 0, 0, 0.153769, 0.988107, 300, 0, 1),
(165205, 181376, 571, 1, 1, 5626.92, -2622.29, 292.417, 1.6785, 0, 0, 0.744143, 0.668021, 300, 0, 1),
(165206, 194049, 571, 1, 1, 5626.92, -2622.29, 292.417, 1.6785, 0, 0, 0.744143, 0.668021, 300, 0, 1),
(165208, 188021, 571, 1, 1, 5357.4, 4835.99, -195.101, 1.59976, 0, 0, 0.717272, 0.696793, 300, 0, 1), -- sholazar
(165209, 181376, 571, 1, 1, 5369.18, 4842.41, -197.357, 4.53948, 0, 0, 0.765523, -0.643408, 300, 0, 1),
(165210, 194035, 571, 1, 1, 5369.18, 4842.41, -197.357, 4.53948, 0, 0, 0.765523, -0.643408, 300, 0, 1),
(165211, 181355, 571, 1, 1, 5359.07, 4827.41, -197.019, 0.176586, 0, 0, 0.0881781, 0.996105, 300, 0, 1),
(165212, 181355, 571, 1, 1, 5357.57, 4845.13, -195.788, 1.41909, 0, 0, 0.651487, 0.75866, 300, 0, 1),
(165213, 181605, 571, 1, 1, 5357.67, 4855.99, -193.827, 2.00813, 0, 0, 0.843662, 0.536875, 300, 0, 1),
(165214, 188020, 571, 1, 1, 5364.57, 4869.43, -193.105, 4.59916, 0, 0, 0.745985, -0.665963, 300, 0, 1),
(165215, 188020, 571, 1, 1, 5354.34, 4871.09, -189.818, 4.65099, 0, 0, 0.728478, -0.685069, 300, 0, 1),
(165216, 188021, 571, 1, 1, 2464.17, -4907.57, 263.922, 1.71737, 0, 0, 0.756984, 0.653433, 300, 0, 1), -- howling
(165217, 181305, 571, 1, 1, 2466.21, -4913.1, 264.166, 1.87838, 0, 0, 0.807079, 0.590443, 300, 0, 1),
(165218, 181307, 571, 1, 1, 2466.44, -4913.46, 265.097, 2.75802, 0, 0, 0.981666, 0.190611, 300, 0, 1),
(165219, 181302, 571, 1, 1, 2461.97, -4910.5, 263.936, 2.04881, 0, 0, 0.854405, 0.519608, 300, 0, 1),
(165220, 181302, 571, 1, 1, 2462.99, -4912.18, 264.014, 2.58759, 0, 0, 0.96188, 0.273472, 300, 0, 1),
(165221, 181306, 571, 1, 1, 2460.13, -4911.21, 263.948, 0.18113, 0, 0, 0.0904413, 0.995902, 300, 0, 1),
(165222, 181376, 571, 1, 1, 2454.19, -4910.31, 263.893, 1.66082, 0, 0, 0.738208, 0.674573, 300, 0, 1),
(165223, 194038, 571, 1, 1, 2454.19, -4910.31, 263.893, 1.66082, 0, 0, 0.738208, 0.674573, 300, 0, 1),
(165224, 188020, 571, 1, 1, 2440.82, -4917.07, 264.587, 3.04862, 0, 0, 0.99892, 0.0464672, 300, 0, 1),
(165225, 188020, 571, 1, 1, 2438.66, -4906.68, 263.066, 3.01328, 0, 0, 0.997943, 0.0641126, 300, 0, 1),
(165226, 188020, 571, 1, 1, 2484.02, -4906.27, 266.191, 3.40989, 0, 0, 0.991016, -0.133745, 300, 0, 1),
(165227, 188020, 571, 1, 1, 2480.96, -4899.1, 265.064, 3.50885, 0, 0, 0.983188, -0.182596, 300, 0, 1),
(165229, 181605, 571, 1, 1, 2477.58, -4905.4, 265.055, 3.54262, 0, 0, 0.979964, -0.199174, 300, 0, 1),
(165230, 181355, 571, 1, 1, 2444.4, -4912.06, 263.951, 4.8615, 0, 0, 0.652474, -0.757811, 300, 0, 1),
(165231, 181355, 571, 1, 1, 2479.59, -4904.05, 265.144, 5.29976, 0, 0, 0.472136, -0.881526, 300, 0, 1),
(165232, 188021, 571, 1, 1, 5136.25, -701.964, 172.182, 5.14116, 0, 0, 0.540484, -0.841354, 300, 0, 1), -- crystalsong
(165233, 181376, 571, 1, 1, 5144.94, -695.736, 171.284, 5.22017, 0, 0, 0.506833, -0.862045, 300, 0, 1),
(165234, 194045, 571, 1, 1, 5144.94, -695.736, 171.284, 5.22017, 0, 0, 0.506833, -0.862045, 300, 0, 1),
(165235, 188020, 571, 1, 1, 5157.7, -692.213, 168.342, 3.56062, 0, 0, 0.978132, -0.207985, 300, 0, 1),
(165236, 181355, 571, 1, 1, 5153.61, -694.632, 169.363, 0.505421, 0, 0, 0.250029, 0.968238, 300, 0, 1),
(165237, 188020, 571, 1, 1, 5122.22, -708.294, 175.114, 0.416673, 0, 0, 0.206832, 0.978376, 300, 0, 1),
(165238, 181355, 571, 1, 1, 5126.09, -706.472, 174.339, 3.55198, 0, 0, 0.979021, -0.203758, 300, 0, 1),
(165239, 181605, 571, 1, 1, 5151.54, -709.361, 169.826, 2.02988, 0, 0, 0.849448, 0.527672, 300, 0, 1),
(165240, 181305, 571, 1, 1, 5133.04, -698.409, 172.585, 2.84669, 0, 0, 0.989149, 0.146918, 300, 0, 1),
(165241, 181307, 571, 1, 1, 5134.11, -697.857, 173.575, 3.61874, 0, 0, 0.971676, -0.236315, 300, 0, 1),
(165242, 181302, 571, 1, 1, 5130.8, -703.896, 173.441, 0.0954414, 0, 0, 0.0477026, 0.998862, 300, 0, 1),
(165243, 181302, 571, 1, 1, 5130.87, -703.854, 174.684, 0.535265, 0, 0, 0.264449, 0.9644, 300, 0, 1),
(165244, 181306, 571, 1, 1, 5131.38, -705.369, 173.303, 0.248594, 0, 0, 0.123977, 0.992285, 300, 0, 1),
(165245, 188021, 571, 1, 1, 6071.62, -1109.83, 419.2, 0.405097, 0, 0, 0.201166, 0.979557, 300, 0, 1), -- storm peaks
(165246, 181305, 571, 1, 1, 6068.33, -1111.01, 420.335, 0.181236, 0, 0, 0.0904939, 0.995897, 300, 0, 1),
(165247, 181307, 571, 1, 1, 6068.13, -1112.28, 421.326, 1.41274, 0, 0, 0.649077, 0.760723, 300, 0, 1),
(165248, 181302, 571, 1, 1, 6075.71, -1107.72, 419.811, 0.0485033, 0, 0, 0.0242493, 0.999706, 300, 0, 1),
(165249, 181302, 571, 1, 1, 6074.48, -1109.44, 419.993, 0.613205, 0, 0, 0.301821, 0.953365, 300, 0, 1),
(165250, 181306, 571, 1, 1, 6076.77, -1109.03, 419.873, 0.174952, 0, 0, 0.0873647, 0.996176, 300, 0, 1),
(165251, 188020, 571, 1, 1, 6087.35, -1102.33, 417.415, 1.96409, 0, 0, 0.831634, 0.555324, 300, 0, 1),
(165252, 181355, 571, 1, 1, 6088.04, -1106.9, 418.348, 3.61421, 0, 0, 0.972209, -0.234116, 300, 0, 1),
(165253, 181355, 571, 1, 1, 6083.72, -1098.45, 417.139, 3.61421, 0, 0, 0.972209, -0.234116, 300, 0, 1),
(165254, 188020, 571, 1, 1, 6052.44, -1113.82, 420.864, 1.8769, 0, 0, 0.806644, 0.591038, 300, 0, 1),
(165255, 181355, 571, 1, 1, 6052.45, -1106.76, 421.632, 0.193794, 0, 0, 0.0967457, 0.995309, 300, 0, 1),
(165256, 181355, 571, 1, 1, 6056.56, -1118.19, 420.868, 0.130963, 0, 0, 0.0654346, 0.997857, 300, 0, 1),
(165257, 181605, 571, 1, 1, 6061.69, -1112.97, 420.771, 5.40099, 0, 0, 0.426933, -0.904283, 300, 0, 1),
(165259, 181376, 571, 1, 1, 6081.58, -1107.81, 419.498, 5.2117, 0, 0, 0.510478, -0.859891, 300, 0, 1),
(165260, 194044, 571, 1, 1, 6081.58, -1107.81, 419.498, 5.2117, 0, 0, 0.510478, -0.859891, 300, 0, 1);
-- Add SAI support for all flame wardens to cast summon Scorchling on spawn
-- Eeastern Kingdoms
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 25908; -- The Hinterlands
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=25908;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25908,0,0,0,25,0,100,0,0,0,0,0,11,46972,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 25909; -- The Western Plaguelands
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=25909;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25909,0,0,0,25,0,100,0,0,0,0,0,11,46972,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 25901; -- Hillsbrad Foothills
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=25901;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25901,0,0,0,25,0,100,0,0,0,0,0,11,46972,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 25910; -- Westfall
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=25910;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25910,0,0,0,25,0,100,0,0,0,0,0,11,46972,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 25911; -- Wetlands
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=25911;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25911,0,0,0,25,0,100,0,0,0,0,0,11,46972,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 25898; -- Elwynn Forest
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=25898;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25898,0,0,0,25,0,100,0,0,0,0,0,11,46972,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 25892; -- Burning Steppes
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=25892;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25892,0,0,0,25,0,100,0,0,0,0,0,11,46972,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 25890; -- Blasted Lands
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=25890;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25890,0,0,0,25,0,100,0,0,0,0,0,11,46972,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 25887; -- Arathi Highlands
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=25887;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25887,0,0,0,25,0,100,0,0,0,0,0,11,46972,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 25915; -- Cape of Stranglethorn
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=25915;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25915,0,0,0,25,0,100,0,0,0,0,0,11,46972,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 25895; -- Dun Morogh
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=25895;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25895,0,0,0,25,0,100,0,0,0,0,0,11,46972,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 25896; -- Duskwood
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=25896;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25896,0,0,0,25,0,100,0,0,0,0,0,11,46972,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 25902; -- Loch Modan
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=25902;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25902,0,0,0,25,0,100,0,0,0,0,0,11,46972,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 25904; -- Redridge Mountains
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=25904;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25904,0,0,0,25,0,100,0,0,0,0,0,11,46972,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
-- Kalimdor
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 25883; -- Ashenvale
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=25883;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25883,0,0,0,25,0,100,0,0,0,0,0,11,46972,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 25894; -- Desolace
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=25894;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25894,0,0,0,25,0,100,0,0,0,0,0,11,46972,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 25897; -- Dustwallow Marsh
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=25897;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25897,0,0,0,25,0,100,0,0,0,0,0,11,46972,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 25917; -- Winterspring
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=25917;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25917,0,0,0,25,0,100,0,0,0,0,0,11,46972,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 25916; -- Tanaris
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=25916;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25916,0,0,0,25,0,100,0,0,0,0,0,11,46972,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 25914; -- Silithus
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=25914;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25914,0,0,0,25,0,100,0,0,0,0,0,11,46972,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 25899; -- Feralas
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=25899;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25899,0,0,0,25,0,100,0,0,0,0,0,11,46972,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 25893; -- Darkshore
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=25893;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25893,0,0,0,25,0,100,0,0,0,0,0,11,46972,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 25888; -- Azuremyst Isle
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=25888;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25888,0,0,0,25,0,100,0,0,0,0,0,11,46972,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 25891; -- Bloodmyst Isle
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=25891;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25891,0,0,0,25,0,100,0,0,0,0,0,11,46972,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 25906; -- Teldrassil
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=25906;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25906,0,0,0,25,0,100,0,0,0,0,0,11,46972,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
-- Outland
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 25905; -- Shadowmoon Valley
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=25905;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25905,0,0,0,25,0,100,0,0,0,0,0,11,46972,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 25903; -- Nagrand
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=25903;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25903,0,0,0,25,0,100,0,0,0,0,0,11,46972,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 25913; -- Netherstorm
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=25913;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25913,0,0,0,25,0,100,0,0,0,0,0,11,46972,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 25900; -- Hellfire Peninsula
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=25900;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25900,0,0,0,25,0,100,0,0,0,0,0,11,46972,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 25907; -- Terokkar
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=25907;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25907,0,0,0,25,0,100,0,0,0,0,0,11,46972,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 25889; -- Blade's Edge
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=25889;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25889,0,0,0,25,0,100,0,0,0,0,0,11,46972,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 25912; -- Zangarmarsh
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=25912;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25912,0,0,0,25,0,100,0,0,0,0,0,11,46972,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
-- Northrend
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 32808; -- Zul'Drak
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=32808;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(32808,0,0,0,25,0,100,0,0,0,0,0,11,46972,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 32801; -- Borean Tundra
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=32801;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(32801,0,0,0,25,0,100,0,0,0,0,0,11,46972,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 32802; -- Sholazar Basin
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=32802;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(32802,0,0,0,25,0,100,0,0,0,0,0,11,46972,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 32803; -- Dragonblight
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=32803;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(32803,0,0,0,25,0,100,0,0,0,0,0,11,46972,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 32807; -- Crystalsong Forest
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=32807;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(32807,0,0,0,25,0,100,0,0,0,0,0,11,46972,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 32806; -- Storm Peaks
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=32806;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(32806,0,0,0,25,0,100,0,0,0,0,0,11,46972,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 32805; -- Grizzly Hills
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=32805;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(32805,0,0,0,25,0,100,0,0,0,0,0,11,46972,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 32804; -- Howling Fjords
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=32804;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(32804,0,0,0,25,0,100,0,0,0,0,0,11,46972,0,0,0,0,0,1,0,0,0,0,0,0,0,'FK - On spawn - Cast summon scorchling');
-- Remove unused guids from creature_addon after removal of some double spawns /that would give warning on start-up/
DELETE FROM `creature_addon` WHERE `guid` IN (86376,86895,94735,94734,94716,94733,86321,94649,94738,86704,94700,94579);
-- Alliance - Desecrate the flame fix + all achs related from /Desecration of the Horde 1035/
-- Add missing gameobject_questrelation and involvedrelation that were blocking quests
-- Extinguishing Kalimdor - {Achievement=1029}
DELETE FROM `gameobject_involvedrelation` WHERE `id` IN (187958,187952,187953,187950,187973,187971,187968,187965,187961,187957,187959,187948);
INSERT INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES
(187958, 11770), -- Durotar
(187957, 11769), -- Desolace
(187965, 11777), -- Mulgore
(187953, 11803), -- Winterspring
(187971, 11783), -- Barrens
(187961, 11773), -- Feralas
(187948, 11765), -- Ashenvale
(187959, 11771), -- Dustwallow marsh
(187973, 11785), -- Thousand Needles
(187950, 11800), -- Silithus
(187968, 11780), -- Stonetalon Mountains
(187952, 11802); -- Tanaris
UPDATE `quest_template` SET `RequiredRaces`=1101,`RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300, `OfferRewardText`='Desecrate the Horde''s Durotar flame!' WHERE `Id`=11770;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=1101,`OfferRewardText`='Desecrate the Horde''s Mulgore flame!' WHERE `Id`=11777;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=1101,`OfferRewardText`='Desecrate the Horde''s Barrens flame!' WHERE `Id`=11783;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=1101,`OfferRewardText`='Desecrate the Horde''s Tanaris flame!',`RequestItemsText`='' WHERE `Id`=11802;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=1101,`OfferRewardText`='Desecrate the Horde''s Ashenvale flame!' WHERE `Id`=11765;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=1101,`OfferRewardText`='Desecrate the Horde''s Winterspring flame!' WHERE `Id`=11803;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=1101,`OfferRewardText`='Desecrate the Horde''s Desolace flame!' WHERE `Id`=11769;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=1101,`OfferRewardText`='Desecrate the Horde''s Thousand Needles flame!' WHERE `Id`=11785;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=1101,`OfferRewardText`='Desecrate the Horde''s Feralas flame!' WHERE `Id`=11773;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=1101,`OfferRewardText`='Desecrate the Horde''s Dustwallow Marsh flame!' WHERE `Id`=11771;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=1101,`OfferRewardText`='Desecrate the Horde''s Silithus flame!' WHERE `Id`=11800;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=1101,`OfferRewardText`='Desecrate the Horde''s Stonetalon Mountains flame!' WHERE `Id`=11780;
-- Extinguishing Outland - {Achievement=1030}
DELETE FROM `gameobject_involvedrelation` WHERE `id` IN (187963,187967,187949,187970,187975,187966,187955);
INSERT INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES
(187963, 11775), -- Hellfire Peninsula
(187967, 11779), -- Shadowmoon Valley
(187949, 11799), -- Netherstorm
(187970, 11782), -- Terokkar
(187975, 11787), -- Zangarmarsh
(187955, 11767), -- Blade' Edge
(187966, 11778); -- Nagrand
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=1101,`OfferRewardText`='Desecrate the Horde''s Hellfire Peninsula flame!' WHERE `Id`=11775;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=1101,`OfferRewardText`='Desecrate the Horde''s Shadowmoon Valley flame!' WHERE `Id`=11779;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=1101,`OfferRewardText`='Desecrate the Horde''s Nagrand flame!' WHERE `Id`=11778;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=1101,`OfferRewardText`='Desecrate the Horde''s Netherstorm flame!' WHERE `Id`=11799;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=1101,`OfferRewardText`='Desecrate the Horde''s Blades Edge Mountains flame! ', `RequestItemsText`='' WHERE `Id`=11767;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=1101,`OfferRewardText`='Desecrate the Horde''s Terokkar flame!' WHERE `Id`=11782;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=1101,`OfferRewardText`='Desecrate the Horde''s Zangarmarsh flame!' WHERE `Id`=11787;
-- Extinguishing Northrend
DELETE FROM `gameobject_involvedrelation` WHERE `id` IN (194048,194033,194034,194037,194046,194043,194042,194039);
INSERT INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES
(194048, 13458), -- Zul'Drak
(194033, 13441), -- Borean Tundra
(194034, 13450), -- Sholazar Basin
(194037, 13451), -- Dragonblight
(194046, 13457), -- Crystalsong Forest
(194043, 13455), -- Storm Peaks
(194042, 13454), -- Grizzly Hills
(194039, 13453); -- Howling Fjords
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=1101,`OfferRewardText`='Desecrate the Horde''s Zul''Drak flame!' WHERE `Id`=13458;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=1101,`OfferRewardText`='Desecrate the Horde''s Borean Tundra flame!' WHERE `Id`=13441;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=1101,`OfferRewardText`='Desecrate the Horde''s Sholazar Basin flame!' WHERE `Id`=13450;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=1101,`OfferRewardText`='Desecrate the Horde''s Dragonblight flame!' WHERE `Id`=13451;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=1101,`OfferRewardText`='Desecrate the Horde''s Crystalsong Forest flame!' WHERE `Id`=13457;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=1101,`OfferRewardText`='Desecrate the Horde''s Storm Peaks flame!' WHERE `Id`=13455;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=1101,`OfferRewardText`='Desecrate the Horde''s Grizzly Hills flame!' WHERE `Id`=13454;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=1101,`OfferRewardText`='Desecrate the Horde''s Howling Fjords flame!' WHERE `Id`=13453;
-- Extinguishing Eastern Kingdoms {Achievement=1028}
DELETE FROM `gameobject_involvedrelation` WHERE `id` IN (187962,187960,187964,187969,187951,187956,187972,187559,187974,187954,187947);
INSERT INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES
(187962, 11774), -- Ghostland
(187960, 11772), -- Eversong woods
(187964, 11776), -- Hillsbrad Foothills
(187969, 11781), -- Swamp of sorrows
(187951, 11801), -- Cape of Stranglethorn
(187956, 11768), -- Burning Steppes
(187972, 11784), -- The Hinterlands
(187559, 11580), -- Silverpine Forest
(187974, 11786), -- Tirisfal Glades
(187954, 11766), -- Badlands
(187947, 11764); -- Arathi Highlands
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=1101,`OfferRewardText`='Desecrate the Horde''s Ghostland flame!' WHERE `Id`=11774;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=1101,`OfferRewardText`='Desecrate the Horde''s Eversong woods flame!' WHERE `Id`=11772;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=1101,`OfferRewardText`='Desecrate the Horde''s Hillsbrad Foothills flame!' WHERE `Id`=11776;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=1101,`OfferRewardText`='Desecrate the Horde''s Swamp of sorrows flame!' WHERE `Id`=11781;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=1101,`OfferRewardText`='Desecrate the Horde''s Cape of Stranglethorn flame!' WHERE `Id`=11801;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=1101,`OfferRewardText`='Desecrate the Horde''s Burning Steppes flame!' WHERE `Id`=11768;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=1101,`OfferRewardText`='Desecrate the Horde''s Hinterlands flame!' WHERE `Id`=11784;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=1101,`OfferRewardText`='Desecrate the Horde''s Silverpine Forest flame!' WHERE `Id`=11580;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=1101,`OfferRewardText`='Desecrate the Horde''s Tirisfal Glades flame!' WHERE `Id`=11786;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=1101,`OfferRewardText`='Desecrate the Horde''s Badlands flame!' WHERE `Id`=11766;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=1101,`OfferRewardText`='Desecrate the Horde''s Arathi Highlands flame!' WHERE `Id`=11764;
-- Horde - Desecrate the flame fix + all achs related from /Desecration of the Alliance 1037/
-- Add missing gameobject_questrelation and involvedrelation that were blocking quests
-- Extinguishing Kalimdor - {Achievement=1029}
DELETE FROM `gameobject_involvedrelation` WHERE `id` IN (187916,187924,187927,187946,187945,187943,187929,187923,187917,187921,187936);
INSERT INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES
(187916, 11734), -- Ashenvale
(187924, 11741), -- Desolace
(187927, 11744), -- Dustwallow Marsh
(187946, 11763), -- Winterspring
(187945, 11762), -- Tanaris
(187943, 11760), -- Silithus
(187929, 11746), -- Feralas
(187923, 11740), -- Darkshore
(187917, 11735), -- Azuremyst Isle
(187921, 11738), -- Bloodmyst Isle
(187936, 11753); -- Teldrassil
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=690,`OfferRewardText`='Desecrate the Ashenvale flame!' WHERE `Id`=11734;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=690,`OfferRewardText`='Desecrate the Desolace flame!' WHERE `Id`=11741;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=690,`OfferRewardText`='Desecrate the Dustwallow Marsh flame!' WHERE `Id`=11744;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=690,`OfferRewardText`='Desecrate the Winterspring flame!',`RequestItemsText`='' WHERE `Id`=11763;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=690,`OfferRewardText`='Desecrate the Tanaris flame!' WHERE `Id`=11762;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=690,`OfferRewardText`='Desecrate the Silithus flame!' WHERE `Id`=11760;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=690,`OfferRewardText`='Desecrate the Feralas flame!' WHERE `Id`=11746;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=690,`OfferRewardText`='Desecrate the Darkshore flame!' WHERE `Id`=11740;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=690,`OfferRewardText`='Desecrate the Azuremyst Isle flame!' WHERE `Id`=11735;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=690,`OfferRewardText`='Desecrate the Bloodmyst Isle flame!' WHERE `Id`=11738;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=690,`OfferRewardText`='Desecrate the Teldrassil flame!' WHERE `Id`=11753;
-- Extinguishing Eastern Kingdoms
DELETE FROM `gameobject_involvedrelation` WHERE `id` IN (187938,187939,187931,187564,187940,187928,187922,187920,187914,187944,187925,187926,187932,187934);
INSERT INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES
(187938, 11755), -- The Hinterlands
(187939, 11756), -- The Western Plaguelands
(187931, 11748), -- Hillsbrad Foothills
(187564, 11581), -- Westfall
(187940, 11757), -- Wetlands
(187928, 11745), -- Elwynn Forest
(187922, 11739), -- Burning Steppes
(187920, 11737), -- Blasted Lands
(187914, 11732), -- Arathi Highlands
(187944, 11761), -- Cape of Stranglethorn
(187925, 11742), -- Dun Morogh
(187926, 11743), -- Duskwood
(187932, 11749), -- Loch Modan
(187934, 11751); -- Redridge Mountains
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=690,`OfferRewardText`='Desecrate the Hinterlands flame!' WHERE `Id`=11755;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=690,`OfferRewardText`='Desecrate the Western Plaguelands flame!' WHERE `Id`=11756;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=690,`OfferRewardText`='Desecrate the Hillsbrad Foothills flame!' WHERE `Id`=11748;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=690,`OfferRewardText`='Desecrate the Westfall flame!',`RequestItemsText`='' WHERE `Id`=11581;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=690,`OfferRewardText`='Desecrate the Wetlands flame!' WHERE `Id`=11757;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=690,`OfferRewardText`='Desecrate the Elwynn Forest flame!' WHERE `Id`=11745;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=690,`OfferRewardText`='Desecrate the Burning Steppes flame!' WHERE `Id`=11739;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=690,`OfferRewardText`='Desecrate the Blasted Lands flame!' WHERE `Id`=11737;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=690,`OfferRewardText`='Desecrate the Arathi Highlands flame!' WHERE `Id`=11732;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=690,`OfferRewardText`='Desecrate the Cape of Stranglethorn flame!' WHERE `Id`=11761;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=690,`OfferRewardText`='Desecrate the Dun Morogh flame!' WHERE `Id`=11742;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=690,`OfferRewardText`='Desecrate the Duskwood flame!' WHERE `Id`=11743;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=690,`OfferRewardText`='Desecrate the Loch Modan flame!' WHERE `Id`=11749;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=690,`OfferRewardText`='Desecrate the Redridge Mountains flame!' WHERE `Id`=11751;
-- Extinguishing Northrend
DELETE FROM `gameobject_involvedrelation` WHERE `id` IN (194032,194036,194040,194038,194049,194044,194035,194045);
INSERT INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES
(194032, 13440), -- Borean Tundra
(194036, 13443), -- Dragonblight
(194040, 13445), -- Grizzly
(194038, 13444), -- Howling Fjord
(194049, 13449), -- Zul'Drak
(194044, 13446), -- The Storm Peaks
(194035, 13442), -- Sholazar Basin
(194045, 13447); -- Crystalsong Forest
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=690,`OfferRewardText`='Desecrate the Borean Tundra flame!' WHERE `Id`=13440;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=690,`OfferRewardText`='Desecrate the Dragonblight flame!' WHERE `Id`=13443;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=690,`OfferRewardText`='Desecrate the Grizzly Hills flame!' WHERE `Id`=13445;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=690,`OfferRewardText`='Desecrate the Howling Fjord flame!',`RequestItemsText`='' WHERE `Id`=13444;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=690,`OfferRewardText`='Desecrate the Zul''Drak flame!' WHERE `Id`=13449;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=690,`OfferRewardText`='Desecrate the Storm Peaks flame!' WHERE `Id`=13446;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=690,`OfferRewardText`='Desecrate the Sholazar Basin flame!' WHERE `Id`=13442;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=690,`OfferRewardText`='Desecrate the Crystalsong Forest flame!' WHERE `Id`=13447;
-- Extinguishing Outland
DELETE FROM `gameobject_involvedrelation` WHERE `id` IN (187935,187933,187942,187930,187937,187919,187941);
INSERT INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES
(187935, 11752), -- Shadowmoon Valley
(187933, 11750), -- Nagrand
(187942, 11759), -- Netherstorm
(187930, 11747), -- Hellfire Peninsula
(187937, 11754), -- Terokkar
(187919, 11736), -- Blade's Edge
(187941, 11758); -- Zangarmarsh
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=690,`OfferRewardText`='Desecrate the Shadowmoon Valley flame!' WHERE `Id`=11752;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=690,`OfferRewardText`='Desecrate the Nagrand flame!' WHERE `Id`=11750;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=690,`OfferRewardText`='Desecrate the Netherstorm flame!' WHERE `Id`=11759;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=690,`OfferRewardText`='Desecrate the Hellfire Peninsula flame!',`RequestItemsText`='' WHERE `Id`=11747;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=690,`OfferRewardText`='Desecrate the Terokkar flame!' WHERE `Id`=11754;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=690,`OfferRewardText`='Desecrate the Blade''s Edge Mountains flame!' WHERE `Id`=11736;
UPDATE `quest_template` SET `RewardOrRequiredMoney`=74000,`RewardMoneyMaxLevel`=58300,`RequiredRaces`=690,`OfferRewardText`='Desecrate the Zangarmarsh flame!' WHERE `Id`=11758;
-- #1
-- Add SAI for Horde Flame Eater /Didn't want to take guids for action list, since events can do it fine/ and add for now data for celebrants text
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 25994;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=25994;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25994,0,0,0,60,0,100,0,15000,15000,36000,36000,5,7,0,0,0,0,0,1,0,0,0,0,0,0,0,'Flame Eater - On event update - Play emote drink'),
(25994,0,1,0,60,0,100,0,16000,16000,37000,37000,11,46332,0,0,0,0,0,1,0,0,0,0,0,0,0,'Flame Eater - On event update - Cast flame breath'),
(25994,0,2,0,60,0,100,0,17500,17500,38500,38500,11,46332,0,0,0,0,0,1,0,0,0,0,0,0,0,'Flame Eater - On event update - Cast flame breath'),
(25994,0,3,0,60,0,100,0,19000,19000,40000,40000,11,46332,0,0,0,0,0,1,0,0,0,0,0,0,0,'Flame Eater - On event update - Cast flame breath');
-- Add SAI for Alliance Fire Eater /Didn't want to take guids for action list, since events can do it fine/
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 25962;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=25962;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25962,0,0,0,60,0,100,0,15000,15000,36000,36000,5,7,0,0,0,0,0,1,0,0,0,0,0,0,0,'Flame Eater - On event update - Play emote drink'),
(25962,0,1,0,60,0,100,0,16000,16000,37000,37000,11,46332,0,0,0,0,0,1,0,0,0,0,0,0,0,'Flame Eater - On event update - Cast flame breath'),
(25962,0,2,0,60,0,100,0,17500,17500,38500,38500,11,46332,0,0,0,0,0,1,0,0,0,0,0,0,0,'Flame Eater - On event update - Cast flame breath'),
(25962,0,3,0,60,0,100,0,19000,19000,40000,40000,11,46332,0,0,0,0,0,1,0,0,0,0,0,0,0,'Flame Eater - On event update - Cast flame breath');
-- Note: When he drinks the flask dissapear from hands and it shouldn't, maybe there is spell, but I can't find it after checking ~ spells, needs a sniff, to be fully blizzlike /all I know is the visua like, when Flask of North is being consumed, but the flask must be with yellowgreen liquid, not blue/ or maybe the creature addon shouldn't ignore equipment while performing drink.
-- Midsummer Celebrant texts - this will be scripted when some bugs are sorted out with core
DELETE FROM `creature_text` WHERE `entry`=16781;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(16781,0,0,'¡El fuego de la Horda nunca se apagará!',12,0,100,1,0,0,'Celebrant for the Horde'),
(16781,1,0,'¡El fuego de la Alianza nunca se apagará!',12,0,100,1,0,0,'Celebrant for the Alliance'),
(16781,2,0,'Me gustaría ver a la Alianza intentando robar nuestro fuego.',12,0,100,1,0,0,'Celebrant - Horde speech'),
(16781,3,0,'Me gustaría ver a la Horda intentando robar nuestro fuego.',12,0,100,1,0,0,'Celebrant - Alliance speech');
-- #2
-- Fix quests for stealing 9325/TB/,9326/UC/,9324/Org/,9332/Darnassus/,9331/Ironforge/,9330/SW/ Flames by using linked_spells to conjure the proper items on using the capital's flames from the cleansing fires that hit players
DELETE FROM `spell_scripts` WHERE `id` IN (29137,29135,29126,46671,29139,29138,29136,46672);
INSERT INTO `spell_scripts` (`id`, `effIndex`,`command`, `datalong`, `datalong2`) VALUES
(29137, 2, 15,29101, 2),
(29135, 2, 15,29102, 2),
(29126, 2, 15,29099, 2),
(46671, 2, 15,46690, 2),
(29139, 2, 15,29133, 2),
(29136, 2, 15,29130, 2),
(29138, 2, 15,29132, 2),
(46672, 2, 15,46689, 2);
-- Add missing gameobject_questrelation and involvedrelation that were blocking quests for {Q} A Thief'S Reward /H/A/ - 9339,9365 and the achievement accordingly
DELETE FROM `creature_questrelation` WHERE `quest` IN (9365,9339);
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES
(16817, 9365), -- Alliance
(16818, 9339); -- Horde
DELETE FROM `creature_involvedrelation` WHERE `quest` IN (9365,9339);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES
(16817, 9365), -- Alliance
(16818, 9339); -- Horde
UPDATE `quest_template` SET `Objectives`='', `Details`='' WHERE `Id`=9339; -- text here was wrong or such should not even exist, can't find any info, if there is another one.
UPDATE `quest_template` SET `Objectives`='',`Details`='' WHERE `Id`=9365; -- -//-
-- #3
-- Add the missing burning bonfires, there should be 1 for quest and 1 with wood on top of it, both have different types and fuctions
DELETE FROM `gameobject` WHERE `guid` IN (49313);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(165409, 181288, 1, 1, 1, 145.521, -4713.82, 18.129, -2.53, 0, 0, 0, 0, 120, 0, 1),
(165410, 181288, 1, 1, 1, -7122.51, -3657.11, 8.82202, -1.74533, 0, 0, 0.766044, -0.642788, 180, 100, 1),
(165411, 181288, 1, 1, 1, 6855.99, -4564.4, 708.51, 0.855211, 0, 0, 0.414693, 0.909961, 180, 100, 1),
(49313, 181288, 1, 1, 1, -7000.75, 918.851, 8.93831, -2.23402, 0, 0, 0.898794, -0.438371, 900, 100, 1), -- Using the guid since it is double spawn
(165412, 181288, 1, 1, 1, -5513.93, -2299.73, -58.0752, 2.44346, 0, 0, 0.939693, 0.34202, 180, 100, 1),
(165413, 181288, 1, 1, 1, -273.242, -2662.82, 91.695, -1.8675, 0, 0, 0.803857, -0.594823, 180, 100, 1),
(165414, 181288, 1, 1, 1, 952.992, 776.968, 104.474, -1.55334, 0, 0, 0.700909, -0.71325, 180, 100, 1),
(165415, 181288, 1, 1, 1, -2329.42, -624.806, -8.27507, 5.5, 0, 0, 0.766044, -0.642788, 0, 100, 1),
(165416, 181288, 1, 1, 1, -4573.22, 407.388, 41.5461, 2.46091, 0, 0, 0.942641, 0.333807, 180, 100, 1),
(165417, 181288, 1, 1, 1, -1862.36, 3055.71, 0.744157, 2.49582, 0, 0, 0.948324, 0.317305, 180, 100, 1),
(165418, 181288, 1, 1, 1, -3110.59, -2722.41, 33.4626, 0.226893, 0, 0, 0.113203, 0.993572, 180, 100, 1),
(165419, 181288, 1, 1, 1, 2014.65, -2337.84, 89.5211, 2.37365, 0, 0, 0.927184, 0.374607, 180, 100, 1),
(165420, 181288, 530, 1, 1, 41.2448, 2587.44, 68.3453, -2.28638, 0, 0, 0.909961, -0.414693, 180, 100, 1),
(165421, 181288, 530, 1, 1, -3059.17, 2374.85, 63.1011, 2.03334, 0, 0, 0.850361, 0.526199, 300, 0, 1),
(165422, 181288, 530, 1, 1, 2922.17, 3690.15, 143.809, 5.94709, 0, 0, 0.167258, -0.985913, 300, 0, 1),
(165423, 181288, 530, 1, 1, -2553.32, 4277.61, 20.614, -1.36136, 0, 0, 0.629321, -0.777146, 180, 100, 1),
(165424, 181288, 530, 1, 1, 200.9, 7686.96, 22.508, -0.506145, 0, 0, 0.25038, -0.968148, 180, 100, 1),
(165425, 181288, 530, 1, 1, -1211.01, 7474.44, 21.9953, -2.02458, 0, 0, 0.848048, -0.529919, 180, 100, 1),
(165426, 181288, 530, 1, 1, 2282.43, 6134.5, 136.337, 6.01364, 0, 0, 0.134365, -0.990932, 300, 0, 1),
(165427, 181288, 571, 1, 1, 5294.92, -2761.88, 292.419, 2.12359, 0, 0, 0.873231, 0.487306, 300, 0, 1),
(165428, 181288, 571, 1, 1, 4441.05, 5627.71, 56.3487, 4.54665, 0, 0, 0.763211, -0.646149, 300, 0, 1),
(165429, 181288, 571, 1, 1, 5499.12, 4869.82, -197.467, 5.88414, 0, 0, 0.198201, -0.980161, 300, 0, 1),
(165430, 181288, 571, 1, 1, 3773.85, 1464.02, 92.4174, 6.10863, 0, 0, 0.087167, -0.996194, 300, 0, 1),
(165431, 181288, 571, 1, 1, 5530.53, -726.151, 148.904, 5.3977, 0, 0, 0.428418, -0.903581, 300, 0, 1),
(165432, 181288, 571, 1, 1, 6142.19, -1020.44, 408.496, 1.91604, 0, 0, 0.818053, 0.575142, 300, 0, 1),
(165433, 181288, 571, 1, 1, 3368.48, -2135.25, 124.53, 0.20224, 0, 0, 0.100948, 0.994892, 300, 0, 1),
(165434, 181288, 571, 1, 1, 2579.72, -4325.59, 276.934, 5.77529, 0, 0, 0.251227, -0.967928, 300, 0, 1),
(165435, 181288, 530, 1, 1, 7693.53, -6836.51, 77.787, 2.7052, 0, 0, 0, 0, 120, 0, 1),
(165436, 181288, 530, 1, 1, 9386.86, -6772.24, 14.412, -2.9146, 0, 0, 0, 0, 120, 0, 1),
(165437, 181288, 0, 1, 1, -134.688, -802.767, 55.0147, -1.62316, 0, 0, 0.725374, -0.688354, 180, 100, 1),
(165438, 181288, 0, 1, 1, -10331.4, -3297.73, 21.9992, -2.89725, 0, 0, 0.992546, -0.121869, 180, 100, 1),
(165439, 181288, 0, 1, 1, -14376.7, 115.921, 1.4532, 2.11185, 0, 0, 0.870356, 0.492424, 180, 100, 1),
(165440, 181288, 0, 1, 1, -7596.42, -2086.6, 125.17, -0.942478, 0, 0, 0.453991, -0.891006, 180, 100, 1),
(165441, 181288, 0, 1, 1, -447.95, -4527.65, 8.59595, 1.53589, 0, 0, 0.694658, 0.71934, 180, 100, 1),
(165442, 181288, 0, 1, 1, 587.056, 1365.02, 90.4778, 2.6529, 0, 0, 0.970296, 0.241922, 180, 100, 1),
(165443, 181288, 0, 1, 1, 2279.25, 456.009, 33.867, 0.3665, 0, 0, 0, 0, 120, 0, 1),
(165444, 181288, 0, 1, 1, -6704.48, -2200.91, 248.609, 0.017453, 0, 0, 0.008727, 0.999962, 180, 100, 1),
(165445, 181288, 0, 1, 1, -1134.84, -3531.81, 51.0719, -0.820305, 0, 0, 0.398749, -0.91706, 180, 100, 1),
(165446, 181288, 1, 1, 1, 2558.73, -481.666, 109.821, -2.47837, 0, 0, 0.945519, -0.325568, 180, 100, 1),
(165447, 181288, 1, 1, 1, -55.5039, 1271.35, 91.9489, 1.5708, 0, 0, 0.707107, 0.707107, 180, 100, 1),
(165448, 181288, 1, 1, 1, -3447.55, -4231.67, 10.6645, 0.802851, 0, 0, 0.390731, 0.920505, 180, 100, 1),
(165449, 181288, 1, 1, 1, 6860.03, -4767.11, 696.833, -2.63545, 0, 0, 0.968148, -0.25038, 180, 100, 1),
(165450, 181288, 1, 1, 1, -7216.15, -3859.66, 11.9664, 4.00788, 0, 0, 0.907652, -0.419724, 300, 0, 1),
(165451, 181288, 1, 1, 1, -6771.96, 527.151, -1.40004, 3.1949, 0, 0, 0.999645, -0.0266517, 300, 0, 1),
(165452, 181288, 1, 1, 1, -4412.02, 3480.24, 12.6312, 6.12709, 0, 0, 0.0779694, -0.996956, 300, 0, 1),
(165453, 181288, 1, 1, 1, 6327.68, 512.61, 17.4723, 0.034907, 0, 0, 0.017452, 0.999848, 180, 100, 1),
(165454, 181288, 530, 1, 1, -4219.28, -12303.5, 2.90522, 5.69342, 0, 0, 0.290628, -0.956836, 300, 0, 1),
(165455, 181288, 530, 1, 1, -2254.78, -11896.3, 27.4979, 5.24028, 0, 0, 0.498141, -0.867096, 300, 0, 1),
(165456, 181288, 1, 1, 1, 9778.64, 1019.38, 1299.79, 0.261799, 0, 0, 0.130526, 0.991445, 180, 100, 1),
(165457, 181288, 0, 1, 1, 188.243, -2132.53, 102.674, -1.37881, 0, 0, 0.636078, -0.771625, 180, 100, 1),
(165458, 181288, 0, 1, 1, 989.562, -1453.47, 61.0011, 4.9105, 0, 0, 0.633713, -0.773569, 300, 0, 1),
(165459, 181288, 0, 1, 1, -604.148, -545.813, 36.579, 0.698132, 0, 0, 0.34202, 0.939693, 180, 100, 1),
(165460, 181288, 0, 1, 1, -10657.1, 1054.63, 32.6733, 2.47837, 0, 0, 0.945519, 0.325568, 180, 100, 1),
(165461, 181288, 0, 1, 1, -3448.2, -938.102, 10.6583, 0.034907, 0, 0, 0.017452, 0.999848, 180, 100, 1),
(165462, 181288, 0, 1, 1, -9394.21, 37.5017, 59.882, 1.15192, 0, 0, 0.544639, 0.838671, 180, 100, 1),
(165463, 181288, 0, 1, 1, -8245.62, -2623.9, 133.155, 4.04776, 0, 0, 0.899102, -0.43774, 300, 0, 1),
(165464, 181288, 0, 1, 1, -10951.5, -3218.1, 41.3475, 1.91986, 0, 0, 0.819152, 0.573576, 180, 100, 1),
(165465, 181288, 0, 1, 1, -1211.6, -2676.88, 45.3612, -0.645772, 0, 0, 0.317305, -0.948324, 180, 100, 1),
(165466, 181288, 0, 1, 1, -14288.1, 61.8062, 0.68836, 1.37881, 0, 0, 0.636078, 0.771625, 180, 100, 1),
(165467, 181288, 0, 1, 1, -5404.93, -492.299, 395.597, -0.506145, 0, 0, 0.25038, -0.968148, 180, 100, 1),
(165468, 181288, 0, 1, 1, -10704.8, -1146.38, 24.7909, 2.09439, 0, 0, 0.866025, 0.5, 180, 100, 1),
(165469, 181288, 0, 1, 1, -5233.16, -2893.37, 337.286, -0.226893, 0, 0, 0.113203, -0.993572, 180, 100, 1),
(165470, 181288, 0, 1, 1, -9434.3, -2110.36, 65.8038, 0.349066, 0, 0, 0.173648, 0.984808, 180, 100, 1),
(165471, 181288, 571, 1, 1, 4122.37, 5390.27, 27.8408, 5.32484, 0, 0, 0.461047, -0.887376, 300, 0, 1),
(165472, 181288, 571, 1, 1, 3936.15, -583.456, 240.5, 4.0611, 0, 0, 0.896162, -0.443727, 300, 0, 1),
(165473, 181288, 571, 1, 1, 3403.4, -2896.41, 201.988, 2.32303, 0, 0, 0.917408, 0.397948, 300, 0, 1),
(165474, 181288, 571, 1, 1, 2454.19, -4910.31, 263.893, 1.66082, 0, 0, 0.738208, 0.674573, 300, 0, 1),
(165475, 181288, 571, 1, 1, 5626.92, -2622.29, 292.417, 1.6785, 0, 0, 0.744143, 0.668021, 300, 0, 1),
(165476, 181288, 571, 1, 1, 6081.58, -1107.81, 419.498, 5.2117, 0, 0, 0.510478, -0.859891, 300, 0, 1),
(165477, 181288, 571, 1, 1, 5369.18, 4842.41, -197.357, 4.53948, 0, 0, 0.765523, -0.643408, 300, 0, 1),
(165478, 181288, 571, 1, 1, 5144.94, -695.736, 171.284, 5.22017, 0, 0, 0.506833, -0.862045, 300, 0, 1),
(165479, 181288, 530, 1, 1, -3941.98, 2048.49, 95.0656, 4.87742, 0, 0, 0.646421, -0.762981, 300, 0, 1),
(165480, 181288, 530, 1, 1, -2526.69, 7548.83, -2.23534, 5.32817, 0, 0, 0.459565, -0.888144, 300, 0, 1),
(165481, 181288, 530, 1, 1, 3121.5, 3753.88, 141.851, 5.85856, 0, 0, 0.21072, -0.977546, 300, 0, 1),
(165482, 181288, 530, 1, 1, -528.509, 2339.11, 38.7252, 2.14675, 0, 0, 0.878817, 0.477159, 180, 100, 1),
(165483, 181288, 530, 1, 1, -3004.07, 4152.48, 3.64988, 1.75455, 0, 0, 0.769001, 0.639247, 300, 0, 1),
(165484, 181288, 530, 1, 1, 2019.7, 6587.14, 134.985, 6.23705, 0, 0, 0.023068, -0.999734, 300, 0, 1),
(165485, 181288, 530, 1, 1, 192.209, 6015.13, 22.1067, 0.00709009, 0, 0, 0.00354504, 0.999994, 300, 0, 1);
-- #4
-- Add the missing burning bonfires the npcs* /upon which on quest complete steam is casted upon
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`,`orientation`) VALUES
(150184, 16592, 1, 1, 1, 145.521, -4713.82, 18.129, -2.53),
(150185, 16592, 1, 1, 1, -7122.51, -3657.11, 8.82202, -1.74533),
(150186, 16592, 1, 1, 1, 6855.99, -4564.4, 708.51, 0.855211),
(150187, 16592, 1, 1, 1, -7000.75, 918.851, 8.93831, -2.23402),
(150188, 16592, 1, 1, 1, -5513.93, -2299.73, -58.0752, 2.44346),
(150189, 16592, 1, 1, 1, -273.242, -2662.82, 91.695, -1.8675),
(150190, 16592, 1, 1, 1, 952.992, 776.968, 104.474, -1.55334),
(150191, 16592, 1, 1, 1, -2329.42, -624.806, -8.27507, 5.5),
(150192, 16592, 1, 1, 1, -4573.22, 407.388, 41.5461, 2.46091),
(150193, 16592, 1, 1, 1, -1862.36, 3055.71, 0.744157, 2.49582),
(150194, 16592, 1, 1, 1, -3110.59, -2722.41, 33.4626, 0.226893),
(150195, 16592, 1, 1, 1, 2014.65, -2337.84, 89.5211, 2.37365),
(150196, 16592, 530, 1, 1, 41.2448, 2587.44, 68.3453, -2.28638),
(150197, 16592, 530, 1, 1, -3059.17, 2374.85, 63.1011, 2.03334),
(150198, 16592, 530, 1, 1, 2922.17, 3690.15, 143.809, 5.94709),
(150199, 16592, 530, 1, 1, -2553.32, 4277.61, 20.614, -1.36136),
(150200, 16592, 530, 1, 1, 200.9, 7686.96, 22.508, -0.506145),
(150201, 16592, 530, 1, 1, -1211.01, 7474.44, 21.9953, -2.02458),
(150202, 16592, 530, 1, 1, 2282.43, 6134.5, 136.337, 6.01364),
(150203, 16592, 571, 1, 1, 5294.92, -2761.88, 292.419, 2.12359),
(150204, 16592, 571, 1, 1, 4441.05, 5627.71, 56.3487, 4.54665),
(150205, 16592, 571, 1, 1, 5499.12, 4869.82, -197.467, 5.88414),
(150206, 16592, 571, 1, 1, 3773.85, 1464.02, 92.4174, 6.10863),
(150207, 16592, 571, 1, 1, 5530.53, -726.151, 148.904, 5.3977),
(150208, 16592, 571, 1, 1, 6142.19, -1020.44, 408.496, 1.91604),
(150209, 16592, 571, 1, 1, 3368.48, -2135.25, 124.53, 0.20224),
(150210, 16592, 571, 1, 1, 2579.72, -4325.59, 276.934, 5.77529),
(150211, 16592, 530, 1, 1, 7693.53, -6836.51, 77.787, 2.7052),
(150212, 16592, 530, 1, 1, 9386.86, -6772.24, 14.412, -2.9146),
(150213, 16592, 0, 1, 1, -134.688, -802.767, 55.0147, -1.62316),
(150214, 16592, 0, 1, 1, -10331.4, -3297.73, 21.9992, -2.89725),
(150215, 16592, 0, 1, 1, -14376.7, 115.921, 1.4532, 2.11185),
(150216, 16592, 0, 1, 1, -7596.42, -2086.6, 125.17, -0.942478),
(150217, 16592, 0, 1, 1, -447.95, -4527.65, 8.59595, 1.53589),
(150218, 16592, 0, 1, 1, 587.056, 1365.02, 90.4778, 2.6529),
(150219, 16592, 0, 1, 1, 2279.25, 456.009, 33.867, 0.3665),
(150220, 16592, 0, 1, 1, -6704.48, -2200.91, 248.609, 0.017453),
(150221, 16592, 0, 1, 1, -1134.84, -3531.81, 51.0719, -0.820305),
(150222, 16592, 1, 1, 1, 2558.73, -481.666, 109.821, -2.47837),
(150223, 16592, 1, 1, 1, -55.5039, 1271.35, 91.9489, 1.5708),
(150224, 16592, 1, 1, 1, -3447.55, -4231.67, 10.6645, 0.802851),
(150225, 16592, 1, 1, 1, 6860.03, -4767.11, 696.833, -2.63545),
(150226, 16592, 1, 1, 1, -7216.15, -3859.66, 11.9664, 4.00788),
(150227, 16592, 1, 1, 1, -6771.96, 527.151, -1.40004, 3.1949),
(150228, 16592, 1, 1, 1, -4412.02, 3480.24, 12.6312, 6.12709),
(150229, 16592, 1, 1, 1, 6327.68, 512.61, 17.4723, 0.034907),
(150230, 16592, 530, 1, 1, -4219.28, -12303.5, 2.90522, 5.69342),
(150231, 16592, 530, 1, 1, -2254.78, -11896.3, 27.4979, 5.24028),
(150232, 16592, 1, 1, 1, 9778.64, 1019.38, 1299.79, 0.261799),
(150233, 16592, 0, 1, 1, 188.243, -2132.53, 102.674, -1.37881),
(150234, 16592, 0, 1, 1, 989.562, -1453.47, 61.0011, 4.9105),
(150235, 16592, 0, 1, 1, -604.148, -545.813, 36.579, 0.698132),
(150236, 16592, 0, 1, 1, -10657.1, 1054.63, 32.6733, 2.47837),
(150237, 16592, 0, 1, 1, -3448.2, -938.102, 10.6583, 0.034907),
(150238, 16592, 0, 1, 1, -9394.21, 37.5017, 59.882, 1.15192),
(150239, 16592, 0, 1, 1, -8245.62, -2623.9, 133.155, 4.04776),
(150240, 16592, 0, 1, 1, -10951.5, -3218.1, 41.3475, 1.91986),
(150241, 16592, 0, 1, 1, -1211.6, -2676.88, 45.3612, -0.645772),
(150242, 16592, 0, 1, 1, -14288.1, 61.8062, 0.68836, 1.37881),
(150243, 16592, 0, 1, 1, -5404.93, -492.299, 395.597, -0.506145),
(150244, 16592, 0, 1, 1, -10704.8, -1146.38, 24.7909, 2.09439),
(150245, 16592, 0, 1, 1, -5233.16, -2893.37, 337.286, -0.226893),
(150246, 16592, 0, 1, 1, -9434.3, -2110.36, 65.8038, 0.349066),
(150247, 16592, 571, 1, 1, 4122.37, 5390.27, 27.8408, 5.32484),
(150248, 16592, 571, 1, 1, 3936.15, -583.456, 240.5, 4.0611),
(150249, 16592, 571, 1, 1, 3403.4, -2896.41, 201.988, 2.32303),
(150250, 16592, 571, 1, 1, 2454.19, -4910.31, 263.893, 1.66082),
(150251, 16592, 571, 1, 1, 5626.92, -2622.29, 292.417, 1.6785),
(150252, 16592, 571, 1, 1, 6081.58, -1107.81, 419.498, 5.2117),
(150253, 16592, 571, 1, 1, 5369.18, 4842.41, -197.357, 4.53948),
(150254, 16592, 571, 1, 1, 5144.94, -695.736, 171.284, 5.22017),
(150255, 16592, 530, 1, 1, -3941.98, 2048.49, 95.0656, 4.87742),
(150256, 16592, 530, 1, 1, -2526.69, 7548.83, -2.23534, 5.32817),
(150257, 16592, 530, 1, 1, 3121.5, 3753.88, 141.851, 5.85856),
(150258, 16592, 530, 1, 1, -528.509, 2339.11, 38.7252, 2.14675),
(150259, 16592, 530, 1, 1, -3004.07, 4152.48, 3.64988, 1.75455),
(150260, 16592, 530, 1, 1, 2019.7, 6587.14, 134.985, 6.23705),
(150261, 16592, 530, 1, 1, 192.209, 6015.13, 22.1067, 0.00709009);
-- #5
-- Remove unused guids from creature_addon after removal of some double spawns /that would give warning on start-up/
DELETE FROM `creature_addon` WHERE `guid` IN (86232,86242,86243,86244,86245,86246,86247,86248,86249,86250,86251,86252,86253,86254,86255,86256,86258,86259,86260,86261,86262,86264,86265,86266,86267,86268,86329,86711,90490,94551,94553,94554,94555,94556,94557,94605,94704,94777,94778,94779,94780,94781,94782,94783,94784,94785,94787,94788,94789,94790,94791,94792,94793,94794,94795,94796,94797,94798,94799,94800);
-- #6
-- Add correct data for Midsummer Bonfire
UPDATE `gameobject_template` SET `type`=8, `data0`=1365, `data1`=10, `data10`=0, `data12`=0 WHERE `entry`=181288; -- /this is blizzard data I know is a WDB edit, but it won't hurt to stay here for people that will use it someday or till we get parsed outside of 12340./
-- #7
-- Correct size of some bonfires
UPDATE `gameobject_template` SET `size`=1 WHERE `entry` IN (187559,187914,187917,187919,187921,187924,187932,187938,187940,187951,187955,187960,187962,187968,187969,187973,187975,194032);
-- #8
-- Add condition for Stamp Out fire steam to target bunnies only on complete of any of the Desecrate the Fires quests
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=45437;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition` ,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,45437,0,0,31,0,3,16592,0,0,0,'','Steam can only target bunnies');
-- #9
-- Set Eearthen Ring Elder ID: 26221 friendly to both factions as it should be
UPDATE `creature_template` SET `faction_A`=35, `faction_H`=35 WHERE `entry`=26221;
-- #10
-- Add proper level requirements, remove disables /flag no idea why it was set/ for Earthern ring daillies and chain fix up of some quest relations
UPDATE `quest_template` SET `Method`=2, `MaxLevel`=28,`PrevQuestId`=12012 WHERE `Id`=11917; -- Striking Back
UPDATE `quest_template` SET `Method`=2, `MaxLevel`=38,`PrevQuestId`=12012 WHERE `Id`=11947; -- -//-
UPDATE `quest_template` SET `Method`=2, `MaxLevel`=48,`PrevQuestId`=12012 WHERE `Id`=11948; -- -//-
UPDATE `quest_template` SET `Method`=2, `MaxLevel`=55,`PrevQuestId`=12012 WHERE `Id`=11952; -- -//-
UPDATE `quest_template` SET `Method`=2, `MaxLevel`=63,`PrevQuestId`=12012 WHERE `Id`=11953; -- -//-
UPDATE `quest_template` SET `Method`=2,`PrevQuestId`=12012 WHERE `Id`=11954; -- -//-
UPDATE `quest_template` SET `Method`=2,`PrevQuestId`=12012 WHERE `Id`=11955; -- Ahune, the Frost Lord
UPDATE `quest_template` SET `PrevQuestId`=11955 WHERE `Id`=11696; -- Ahune is here!
-- #11
-- Delete wrong quest_relations for Silvermoon and Exodar stealing capital flames quests /they should start by the fire, not by the npc that finish it/.
DELETE FROM `creature_questrelation` WHERE `quest`=11933;
DELETE FROM `creature_questrelation` WHERE `quest`=11935;
-- #12
-- Disable deprecated quests /in 2008/ from Midsummer Fire Festival
DELETE FROM `Disables` WHERE `sourceType` = 1 AND `entry` in (9388,9322,9389,9323);
INSERT INTO `Disables` (`sourceType`,`entry`,`flags`,`params_0`,`params_1`,`comment`) VALUES
(1,9388,0,0,0,'Disable quest Flickering Flames in Kalimdor /Deprecated after 2008/'),
(1,9322,0,0,0,'Disable quest Wild Fires in Kalimdor /Deprecated after 2008/'),
(1,9389,0,0,0,'Disable quest Flickering Flames in the Eastern Kingdoms /Deprecated after 2008/'),
(1,9323,0,0,0,'Disable quest Wild Fires in Eastern Kingdoms /Deprecated after 2008/');
-- #13
-- Fix relations of More Torch Tossing and Catching quests
UPDATE `quest_template` SET `PrevQuestId`=11731 WHERE `Id`=11921; -- More Torch Tossing /A/
UPDATE `quest_template` SET `PrevQuestId`=11922 WHERE `Id`=11926; -- More Torch Tossing /H/
UPDATE `quest_template` SET `PrevQuestId`=11657 WHERE `Id`=11924; -- More Torch Catching /A/
UPDATE `quest_template` SET `PrevQuestId`=11923 WHERE `Id`=11925; -- More Torch Catching /H/
-- Add missing quest relations for the mentioned above quest's questgivers
DELETE FROM `creature_questrelation` WHERE `quest` IN (11921,11924,11925,11926);
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES
(25975, 11921), -- Master fire eater
(25975, 11924), -- Master fire eater
(26113, 11925), -- Master flame eater
(26113, 11926); -- Master flame eater
DELETE FROM `creature_involvedrelation` WHERE `quest` IN (11921,11924,11925,11926);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES
(25975, 11921), -- Master fire eater
(25975, 11924), -- Master fire eater
(26113, 11925), -- Master flame eater
(26113, 11926); -- Master flame eater
UPDATE `creature_template` SET `equipment_id`=844 WHERE `entry`=25975; -- add proper equipment - torch for masters and bottle is for the one without the title
-- #14
-- Add missing objects and creatures from capital cities and fix some minor misc on already spawned ones
-- The Exodar
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(165509, 181376, 530, 1, 1, -3794.02, -11502.1, -134.74, 5.00689, 0, 0, 0.59571, -0.8032, 300, 0, 1),
(165510, 188128, 530, 1, 1, -3794.02, -11502.1, -134.74, 5.00689, 0, 0, 0.59571, -0.8032, 300, 0, 1),
(165511, 181305, 530, 1, 1, -3794.46, -11519.8, -134.94, 1.89985, 0, 0, 0.813373, 0.581743, 300, 0, 1),
(165512, 181307, 530, 1, 1, -3795.81, -11519.3, -133.928, 0.0211825, 0, 0, 0.010591, 0.999944, 300, 0, 1),
(165513, 181302, 530, 1, 1, -3800.48, -11515.8, -134.966, 6.21562, 0, 0, 0.0337776, -0.999429, 300, 0, 1),
(165514, 181302, 530, 1, 1, -3800.87, -11517.1, -135.02, 2.979, 0, 0, 0.996697, 0.0812088, 300, 0, 1),
(165515, 181302, 530, 1, 1, -3800.86, -11516.4, -133.722, 2.56666, 0, 0, 0.958966, 0.283523, 300, 0, 1),
(165516, 181306, 530, 1, 1, -3799.04, -11517.6, -134.986, 3.29551, 0, 0, 0.99704, -0.0768831, 300, 0, 1),
(165517, 188020, 530, 1, 1, -3793.84, -11533.9, -134.975, 5.90226, 0, 0, 0.189314, -0.981916, 300, 0, 1),
(165518, 188020, 530, 1, 1, -3774.53, -11496.2, -134.493, 2.69547, 0, 0, 0.975225, 0.221214, 300, 0, 1),
(165519, 181355, 530, 1, 1, -3772.21, -11491.7, -134.447, 4.23172, 0, 0, 0.855095, -0.518471, 300, 0, 1),
(165520, 181355, 530, 1, 1, -3797.16, -11540.5, -134.957, 1.12154, 0, 0, 0.531839, 0.846846, 300, 0, 1),
(165521, 187708, 530, 1, 1, -3768.73, -11511.2, -134.479, 2.70805, 0, 0, 0.976597, 0.215078, 300, 0, 1),
(165522, 187708, 530, 1, 1, -3773.26, -11519.4, -134.56, 2.53526, 0, 0, 0.954396, 0.298543, 300, 0, 1),
(165523, 187708, 530, 1, 1, -3776.32, -11511.5, -134.569, 5.69256, 0, 0, 0.291037, -0.956712, 300, 0, 1),
(165524, 187708, 530, 1, 1, -3775.23, -11506.7, -134.539, 5.79074, 0, 0, 0.243745, -0.969839, 300, 0, 1),
(165525, 187708, 530, 1, 1, -3780.47, -11514.1, -134.626, 5.66115, 0, 0, 0.30603, -0.952022, 300, 0, 1);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(150262, 26221, 530, 1, 1, 0, 1817, -3796.67, -11496.8, -134.748, 2.2101, 300, 0, 0, 8982, 3155, 0, 0, 0, 0),
(150263, 16781, 530, 1, 1, 0, 0, -3814.35, -11505.7, -138.534, 2.81721, 120, 0, 0, 1, 0, 0, 0, 0, 0),
(150264, 16781, 530, 1, 1, 0, 0, -3816.08, -11510.3, -138.573, 1.88337, 120, 0, 0, 1, 0, 0, 0, 0, 0);
UPDATE `creature` SET `modelid`=21084 WHERE `guid`=202764;
UPDATE `gameobject_template` SET `faction`=1735 WHERE `entry`=188128; -- Set faction for Exodar flame so it can be looted only by alliance
-- Silvermoon
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(150265, 26124, 530, 1, 1, 0, 0, 9790.85, -7250.58, 26.1002, 5.48896, 300, 0, 0, 3524, 0, 0, 0, 0, 0);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(165550, 181306, 530, 1, 1, 9791.79, -7248.75, 26.0815, 4.80477, 0, 0, 0.673703, -0.739003, 300, 0, 1),
(165551, 187708, 530, 1, 1, 9817.67, -7227.84, 26.1104, 3.89843, 0, 0, 0.929251, -0.36945, 300, 0, 1),
(165552, 187708, 530, 1, 1, 9810.38, -7226.95, 26.0582, 0.898206, 0, 0, 0.434157, 0.900837, 300, 0, 1),
(165553, 187708, 530, 1, 1, 9819.87, -7234.51, 26.1176, 0.898206, 0, 0, 0.434157, 0.900837, 300, 0, 1),
(165554, 187708, 530, 1, 1, 9823.56, -7229.12, 26.1209, 3.78847, 0, 0, 0.948148, -0.317829, 300, 0, 1),
(165555, 187708, 530, 1, 1, 9817.55, -7221.36, 26.1142, 3.80025, 0, 0, 0.946259, -0.323409, 300, 0, 1),
(165556, 188020, 530, 1, 1, 9819.17, -7251.91, 26.1485, 5.37496, 0, 0, 0.438667, -0.89865, 300, 0, 1),
(165557, 188020, 530, 1, 1, 9795.99, -7270.21, 26.3648, 2.06541, 0, 0, 0.858689, 0.512496, 300, 0, 1);
UPDATE `gameobject_template` SET `faction`=1732 WHERE `entry`=188129; -- Set faction for Silvermoon flame so it can be looted only by horde
-- Undercity and Ironforge missing stuff and double spawns
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(165581, 188021, 0, 1, 1, 1802.13, 222.644, 59.9682, 1.02433, 0, 0, 0.490064, 0.871686, 300,100,1),
(165582, 188021, 0, 1, 1, -4711.33, -1224.68, 501.66, 3.95557, 0, 0, 0.918317, -0.395846, 300,100,1),
(165583, 181376, 0, 1, 1, -4700.28, -1224.34, 501.659, -2.14675, 0, 0, 0.878817, -0.477159, 180,100,1);
-- Stormwind and Darnassus
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(150266, 181305, 0, 1, 1, -8833.44, 875.047, 98.5645, 3.04849, 0, 0, 0.998917, 0.0465366, 300, 0, 1),
(150267, 181307, 0, 1, 1, -8832.66, 876.386, 99.5549, 4.18967, 0, 0, 0.865805, -0.500381, 300, 0, 1),
(150268, 181302, 0, 1, 1, -8831.75, 880.124, 98.4636, 4.62321, 0, 0, 0.737923, -0.674885, 300, 0, 1),
(150269, 181302, 0, 1, 1, -8829.84, 879.278, 98.5062, 5.90498, 0, 0, 0.187978, -0.982173, 300, 0, 1),
(150270, 181302, 0, 1, 1, -8830.09, 879.49, 99.7495, 3.72942, 0, 0, 0.957117, -0.289703, 300, 0, 1),
(150271, 181306, 0, 1, 1, -8830.36, 881.029, 98.4529, 4.14019, 0, 0, 0.877919, -0.478809, 300, 0, 1),
(150272, 187708, 0, 1, 1, -8816.54, 854.183, 98.882, 4.34518, 0, 0, 0.824323, -0.56612, 300, 0, 1),
(150273, 187708, 0, 1, 1, -8815.11, 860.487, 98.96, 4.75751, 0, 0, 0.690976, -0.722877, 300, 0, 1),
(150274, 187708, 0, 1, 1, -8818.01, 865.253, 98.9761, 4.47084, 0, 0, 0.787149, -0.616763, 300, 0, 1),
(150275, 181306, 1, 1, 1, 8705.34, 970.3, 12.2316, 5.19882, 0, 0, 0.516009, -0.856583, 300, 0, 1),
(150276, 181307, 1, 1, 1, 8703.78, 967.116, 13.6598, 4.10868, 0, 0, 0.885353, -0.46492, 300, 0, 1);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(150277, 16781, 0, 1, 1, 16434, 0, -8823.33, 857.655, 99.0305, 1.57502, 300, 0, 0, 2614, 0, 0, 0, 0, 0),
(150278, 16781, 0, 1, 1, 16433, 0, -8824.21, 861.431, 98.9968, 4.82972, 300, 0, 0, 4050, 0, 0, 0, 0, 0),
(150279, 16781, 0, 1, 1, 16433, 0, -8826.99, 859.058, 99.0299, 0.149527, 300, 0, 0, 3331, 0, 0, 0, 0, 0),
(150280, 26221, 0, 1, 1, 0, 1817, -8832.81, 861.687, 98.8931, 0.880735, 300, 0, 0, 8982, 3155, 0, 0, 0, 0),
(150281, 26123, 0, 1, 1, 0, 0, -8827.68, 875.783, 98.6689, 4.60823, 300, 0, 0, 3524, 0, 0, 0, 0, 0),
(150282, 16817, 0, 1, 1, 0, 0, -8831.73, 854.756, 99.1285, 5.71407, 300, 0, 0, 3052, 0, 0, 0, 0, 0),
(150283, 16781, 1, 1, 1, 16434, 0, 8720.84, 963.484, 11.851, 1.43676, 300, 0, 0, 1524, 0, 0, 0, 0, 0);
-- #15
-- Add SAI/spwawn/data/quest support for Twilight Camp at Ashenvale + support for quest "Unusual Activity" and SAI for all mobs related
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(150284, 25866, 1, 1, 1, 0, 0, 3886.6, 771.658, 5.00204, 3.78625, 300, 30, 0, 42, 0, 1, 0, 0, 0),
(150285, 25866, 1, 1, 1, 0, 0, 3873.34, 786.567, 3.15877, 1.19364, 300, 30, 0, 42, 0, 1, 0, 0, 0),
(150286, 25866, 1, 1, 1, 0, 0, 3886.25, 820.325, 1.23753, 1.74656, 300, 30, 0, 42, 0, 1, 0, 0, 0),
(150287, 25866, 1, 1, 1, 0, 0, 3922.2, 795.453, 9.05771, 3.07546, 300, 30, 0, 42, 0, 1, 0, 0, 0),
(150288, 25863, 1, 1, 1, 0, 0, 3956.09, 767.42, 7.88992, 5.17483, 300, 30, 0, 42, 0, 1, 0, 0, 0),
(150289, 25863, 1, 1, 1, 0, 0, 3988.96, 790.529, 6.19678, 0.208762, 300, 30, 0, 42, 0, 1, 0, 0, 0),
(150290, 25863, 1, 1, 1, 0, 0, 3899.13, 764.193, 6.01616, 5.62487, 300, 30, 0, 42, 0, 1, 0, 0, 0),
(150291, 25863, 1, 1, 1, 0, 0, 3923.53, 840.173, 2.29151, 2.07879, 300, 30, 0, 42, 0, 1, 0, 0, 0),
(150292, 25924, 1, 1, 1, 0, 0, 3916.05, 783.268, 9.0577, 0.717698, 300, 0, 0, 44, 0, 0, 0, 0, 0),
(150293, 25866, 1, 1, 1, 0, 0, 3900.86, 799.587, 7.80664, 1.37978, 300, 30, 0, 42, 0, 1, 0, 0, 0),
(150294, 25866, 1, 1, 1, 0, 0, 3950.07, 846.313, 7.9843, 4.16433, 300, 30, 0, 42, 0, 1, 0, 0, 0),
(150295, 25866, 1, 1, 1, 0, 0, 3982.71, 816.306, 8.04045, 4.0481, 300, 30, 0, 42, 0, 1, 0, 0, 0),
(150296, 25866, 1, 1, 1, 0, 0, 3918.32, 760.473, 7.77712, 1.94087, 300, 30, 0, 42, 0, 1, 0, 0, 0),
(150297, 25863, 1, 1, 1, 0, 0, 3922.62, 811.827, 7.79205, 2.56369, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(165677, 187989, 1, 1, 1, 3955.77, 862.105, 0.1785, 3.93579, 0, 0, 0.922187, -0.386745, 300, 0, 1),
(165678, 187989, 1, 1, 1, 3880.54, 795.812, 2.67948, 0.589994, 0, 0, 0.290737, 0.956803, 300, 0, 1),
(165679, 187989, 1, 1, 1, 3923.8, 748.779, 8.05033, 2.67052, 0, 0, 0.972389, 0.233364, 300, 0, 1),
(165680, 187989, 1, 1, 1, 3959.24, 760.694, 6.12531, 2.76477, 0, 0, 0.982303, 0.1873, 300, 0, 1),
(165681, 187989, 1, 1, 1, 3998.39, 815.017, 4.22604, 3.56744, 0, 0, 0.977417, -0.21132, 300, 0, 1),
(165682, 187989, 1, 1, 1, 3953.32, 808.406, 9.07383, 0.295474, 0, 0, 0.1472, 0.989107, 300, 0, 1),
(165683, 187989, 1, 1, 1, 3944.4, 817.924, 9.05937, 2.23541, 0, 0, 0.899098, 0.437748, 300, 0, 1),
(165684, 187918, 1, 1, 1, 3891.73, 795.127, 7.70466, 3.57844, 0, 0, 0.97624, -0.216691, 300, 0, 1),
(165685, 187918, 1, 1, 1, 3928.2, 818.467, 8.38597, 0.711076, 0, 0, 0.348095, 0.937459, 300, 0, 1),
(165686, 187918, 1, 1, 1, 3956.23, 854.015, 7.9829, 1.18232, 0, 0, 0.557323, 0.830296, 300, 0, 1),
(165687, 187918, 1, 1, 1, 3988.24, 819.46, 8.01849, 5.47452, 0, 0, 0.393407, -0.919365, 300, 0, 1),
(165688, 187918, 1, 1, 1, 3923.81, 758.498, 7.77727, 4.57321, 0, 0, 0.754564, -0.656226, 300, 0, 1),
(165689, 187918, 1, 1, 1, 3947.51, 812.939, 9.06439, 0.920322, 0, 0, 0.444092, 0.895981, 300, 0, 1),
(165690, 187989, 1, 1, 1, 3924.28, 779.525, 9.05821, 2.43535, 0, 0, 0.938298, 0.345828, 300, 0, 1),
(165691, 187989, 1, 1, 1, 3912.78, 792.797, 9.05821, 2.43771, 0, 0, 0.938704, 0.344723, 300, 0, 1);
-- Add SAIS for all of mentioned above /data taken from Blua project specific .lua and BrantX creator/
SET @Flameguard := 25866;
SET @Firesworn := 25863;
SET @Viktor := 25924;
DELETE FROM `creature_equip_template` where `entry`=2501;
INSERT INTO `creature_equip_template` (`entry`, `itemEntry1`) VALUES
(2501, 1566); -- close look a like to the sword of flamgeguards /I searched all possible low level swords 1h-2h, couldn't find this one
UPDATE `creature_template` SET `movementtype`=1,`lootid`=@Flameguard,`mindmg`=31,`maxdmg`=40,`minrangedmg`=21,`maxrangedmg`=30,`attackpower`=74,`rangedattackpower`=4,`unit_class`=1,`faction_A`=168,`faction_H`=168,`minlevel`=20, `maxlevel`=21,`AIName`= 'SmartAI',`equipment_id`=2501 WHERE `entry`=25866; -- set levels for Twilight Flameguards
DELETE FROM `creature_loot_template` WHERE (`entry`= @Flameguard);
INSERT INTO `creature_loot_template` VALUES 
(@Flameguard, 2592, 20, 1, 0, 1, 2),
(@Flameguard, 2698, 0.1, 1, 2, 1, 1),
(@Flameguard, 35277, -28, 1, 1, 1, 1);
UPDATE `creature_template` SET `movementtype`=1,`minlevel`=20,`maxlevel`=21,`faction_A`=168,`faction_H`=168,`lootid`=@Firesworn,`mindmg`=22,`maxdmg`=30,`minrangedmg`=19,`maxrangedmg`=28,`attackpower`=32,`rangedattackpower`=14,`unit_class`=8,`AIName`= 'SmartAI',`equipment_id`=2502 WHERE `entry`=25863; -- set levels for Twilight Firesworns
DELETE FROM `creature_loot_template` WHERE (`entry`=@Firesworn);
INSERT INTO `creature_loot_template` VALUES 
(@Firesworn, 2592, 20, 1, 0, 1, 2),
(@Firesworn, 2698, 0.1, 1, 2, 1, 1),
(@Firesworn, 35277, -28, 1, 1, 1, 1);
UPDATE `creature_template` SET `faction_A`=168,`faction_H`=168,`minlevel`=22, `maxlevel`=22,`AIName`= 'SmartAI',`lootid` =@Viktor,`mindmg`=23,`maxdmg`=32,`minrangedmg`=20,`maxrangedmg`=29,`attackpower`=34,`rangedattackpower`=14,`unit_class`=8 WHERE `entry`=25924; -- set levels for Twilight Speaker Viktor //couldn't find his weapon, will need a sniff here, once a good soul want to help
DELETE FROM `creature_loot_template` WHERE (`entry`=@Viktor);
INSERT INTO `creature_loot_template` VALUES 
(@Viktor, 2589, 23, 1, 0, 1, 3),
(@Viktor, 2592, 22, 1, 0, 1, 2),
(@Viktor, 35277, -22, 1, 1, 1, 1);
-- Firesworn
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@Firesworn;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@Firesworn,0,0,0,0,0,100,0,0,1000,7000,7500,11,20793,0,0,0,0,0,2,0,0,0,0,0,0,0,'Firesworn - IC - Cast spell Fireball on victim'),
(@Firesworn,0,1,0,4,0,100,0,0,0,0,0,11,184,0,0,0,0,0,1,0,0,0,0,0,0,0,'Firesworn - On aggro - Cast fiire shield on self /no need for remove aura event, sice it is only 1 minute long/');
-- Viktor
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@Viktor;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@Viktor,0,0,0,0,0,100,0,0,1000,7000,7500,11,20793,0,0,0,0,0,2,0,0,0,0,0,0,0,'Viktor - IC - Cast spell Fireball on victim');
-- #16
-- Add SAI for quest "Unusual activity"
SET @Totem := 26534;
SET @Guide := 25324;
-- SAI for Totem
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@Totem;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@Totem;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@Totem,0,0,0,1,0,100,1,6000,10000,0,0,12,@Guide,3,60000,0,0,0,23,0,0,0,0,0,0,0,'Totem - On event update - Summon guide');
-- SAI for Earthen guide
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@Guide;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@Guide;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@Guide,0,0,0,54,0,100,0,0,0,0,0,29,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Totem - On summonned creature - Summon guide'),
(@Guide,0,1,0,64,0,100,0,0,0,0,0,1,0,1500,0,0,0,0,1,0,0,0,0,0,0,0,'Totem - On gossip hello - Say text 0'),
(@Guide,0,2,0,52,0,100,0,0,0,@Guide,0,1,1,1500,0,0,0,0,1,0,0,0,0,0,0,0,'Totem - On text over - Say text 1');
-- Earthen Ring Guide text
DELETE FROM `creature_text` WHERE `entry`=@Guide;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@Guide,0,1,'¿Qué es lo que necesitas?',12,0,100,1,1500,0,'Eearthen ring guide - On totem destination reached'),
(@Guide,0,2,'¿Has descubierto algo?',12,0,100,1,1500,0,'Eearthen ring guide - On totem destination reached'),
(@Guide,1,0,'Los espíritus elementales están inquietos.',12,0,100,1,1500,0,'Eearthen ring guide - On totem destination reached');
-- #17
-- Add support for [Q][A/H] - An Innocent Disguise Id: 11891 + missing spawn of Briatha
SET @Briatha := 25949;
SET @Emissary := 25951;
SET @QuestEventCredit := 46375;
-- Add missing spawn of Briatha
DELETE FROM `creature` WHERE `guid`=266944;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(266944, @Briatha, 1, 1, 1, 0, 273, 4196.1, 1172.44, 6.68073, 0.688985, 300, 0, 0, 486, 1357, 0, 0, 0, 0);
-- SAI for Briatha
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@Briatha;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@Briatha;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@Briatha,0,0,0,60,0,100,0,0,60000,60000,80001,1,0,4000,0,0,0,0,1,0,0,0,0,0,0,0,'Briatha - On event update /60 secs/ - Say text 0 /to trigger spy event dialogue/'),
(@Briatha,0,1,0,52,0,100,0,0,@Briatha,0,0,1,0,4000,0,0,0,0,9,@Emissary,0,15,0,0,0,0,'Emissary - On creature text end /Briatha 0/ - Say text 0'),
(@Briatha,0,2,0,52,0,100,0,0,@Emissary,0,0,1,1,4000,0,0,0,0,1,0,0,0,0,0,0,0,'Briatha - On creature text end /Emissary 0/ - Say text 1'),
(@Briatha,0,3,0,52,0,100,0,1,@Briatha,0,0,1,1,4000,0,0,0,0,9,@Emissary,0,15,0,0,0,0,'Emissary - On creature text end /Briatha 1/ - Say text 1'),
(@Briatha,0,4,0,52,0,100,0,1,@Emissary,0,0,1,2,3500,0,0,0,0,1,0,0,0,0,0,0,0,'Briatha - On creature text end /Emisary 1/ - Say text 2'),
(@Briatha,0,5,0,52,0,100,0,2,@Briatha,0,0,11,@QuestEventCredit,0,0,0,0,0,1,0,0,0,0,0,0,0,'Briatha - On creature text end /Briatha 2/ - Cast spell quest credit on self');
-- Briatha text
DELETE FROM `creature_text` WHERE `entry`=@Briatha;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@Briatha,0,0,'Estas piedras deben de ser las últimas. Vamos bien de tiempo, pronto nos reuniremos con las fuerzas de Neptulon.',12,0,100,1,1000,0,'Briatha - Spy event'),
(@Briatha,1,0,'¿Y los preparativos? ¿Nuestro señor ya tiene la ruta del portal establecida?',12,0,100,1,1000,0,'Briatha - Spy event'),
(@Briatha,2,0,'Nuestro objetivo final está cerca, cuando el ritual de invocación termine, atraeremos a Ahune a este mundo. El choque entre el señor del fuego y el señor de la escarcha será tal que destruirá los cimientos de este mundo.',12,0,100,1,3500,0,'Briatha - Spy event');
-- Heretic Emissary text
DELETE FROM `creature_text` WHERE `entry`=@Emissary;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@Emissary,0,0,'Sí. El Cazamareas está más que de acuerdo con este proyecto. Por fin podremos reducir la influencia del señor del fuego.',12,0,100,1,1000,0,'Heretic Emissary - Spy event'),
(@Emissary,1,0,'Skarthis nos ha informado bien. Lo tenemos todo preparado en el recinto de los esclavos.',12,0,100,1,1000,0,'Heretic Emissary - Spy event');
-- #18
-- Full support for quests with name Striking Back and full support for everything they are connected with
-- General support for Striking Back quests = tons of things + SAIs... Add missing object from gameobject_template
DELETE FROM `gameobject_template` WHERE `entry` IN (188134,188135,188139,188145,188146,188147);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `data1`, `data2`, `data3`, `data6`, `WDBVerified`) VALUES
(188134, 2, 7666, 'Piedra de Hielo', 0, 3, 9258, 0, 11723), -- /Ice stone/ this is a proven missing gameobject and the data is as of 11723 same model one taken from
(188135, 2, 7666, 'Piedra de Hielo', 0, 3, 9259, 0, 11723), -- /Ice stone/ this is a proven missing gameobject and the data is as of 11723 same model one taken from
(188139, 2, 7666, 'Piedra de Hielo', 0, 3, 9260, 0, 11723), -- /Ice stone/ this is a proven missing gameobject and the data is as of 11723 same model one taken from
(188145, 2, 7666, 'Piedra de Hielo', 0, 3, 9266, 0, 11723), -- /Ice stone/ this is a proven missing gameobject and the data is as of 11723 same model one taken from
(188146, 2, 7666, 'Piedra de Hielo', 0, 3, 9267, 0, 11723), -- /Ice stone/ this is a proven missing gameobject and the data is as of 11723 same model one taken from
(188147, 2, 7666, 'Piedra de Hielo', 0, 3, 9268, 0, 11723); -- /Ice stone/ this is a proven missing gameobject and the data is as of 11723 same model one taken from
-- Add missing gossip menus and options//I still don't get the idea for all the gossips and even different for same functions, but I'm just following the WDB example
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (9258,9259,9260,9266,9267,9268,9213,9256,9257,9264,9265,9269,9271,9272,9273,9274,9275,9276);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`) VALUES
(9258,0,0, 'Poner tu mano sobre la piedra de hielo.',1,1,0,0,0,0, ''), -- Desolace
(9259,0,0, 'Poner tu mano sobre la piedra de hielo.',1,1,0,0,0,0, ''),
(9260,0,0, 'Poner tu mano sobre la piedra de hielo.',1,1,0,0,0,0, ''),
(9266,0,0, 'Poner tu mano sobre la piedra de hielo.',1,1,0,0,0,0, ''), -- Searing Gorge
(9267,0,0, 'Poner tu mano sobre la piedra de hielo.',1,1,0,0,0,0, ''),
(9268,0,0, 'Poner tu mano sobre la piedra de hielo.',1,1,0,0,0,0, ''),
(9213,0,0, 'Poner tu mano sobre la piedra de hielo.',1,1,0,0,0,0, ''), -- Ashenvale
(9256,0,0, 'Poner tu mano sobre la piedra de hielo.',1,1,0,0,0,0, ''),
(9257,0,0, 'Poner tu mano sobre la piedra de hielo.',1,1,0,0,0,0, ''), 
(9264,0,0, 'Poner tu mano sobre la piedra de hielo.',1,1,0,0,0,0, ''), -- Stranglethorn
(9265,0,0, 'Poner tu mano sobre la piedra de hielo.',1,1,0,0,0,0, ''),
(9269,0,0, 'Poner tu mano sobre la piedra de hielo.',1,1,0,0,0,0, ''), -- Silithus
(9271,0,0, 'Poner tu mano sobre la piedra de hielo.',1,1,0,0,0,0, ''),
(9272,0,0, 'Poner tu mano sobre la piedra de hielo.',1,1,0,0,0,0, ''),
(9273,0,0, 'Poner tu mano sobre la piedra de hielo.',1,1,0,0,0,0, ''), -- Hellfire
(9274,0,0, 'Poner tu mano sobre la piedra de hielo.',1,1,0,0,0,0, ''),
(9275,0,0, 'Poner tu mano sobre la piedra de hielo.',1,1,0,0,0,0, ''),
(9276,0,0, 'Poner tu mano sobre la piedra de hielo.',1,1,0,0,0,0, '');
DELETE FROM `gossip_menu` WHERE `entry`  IN (9258,9259,9260,9266,9267,9268,9213,9256,9257,9264,9265,9269,9271,9272,9273,9274,9275,9276);
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES
(9258,12524),
(9259,12524),
(9260,12524),
(9266,12524),
(9267,12524),
(9268,12524),
(9213,12524),
(9256,12524),
(9257,12524),
(9264,12524),
(9265,12524),
(9269,12524),
(9271,12524),
(9272,12524),
(9273,12524),
(9274,12524),
(9275,12524),
(9276,12524);
-- Add conditions for gossip menus
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup` IN (9258,9259,9260,9266,9267,9268,9213,9256,9257,9264,9265,9269,9271,9272,9273,9274,9275,9276);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition` ,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(15,9213,0,0,0,9,0,11917,0,0,0,0,'','Ice Stone - For Gossip player must have Striking back /Ashenvale/'),
(15,9256,0,0,0,9,0,11917,0,0,0,0,'','Ice Stone - For Gossip player must have Striking back /Ashenvale/'),
(15,9257,0,0,0,9,0,11917,0,0,0,0,'','Ice Stone - For Gossip player must have Striking back /Ashenvale/'),
(15,9258,0,0,0,9,0,11947,0,0,0,0,'','Ice Stone - For Gossip player must have Striking back /Desolace/'),
(15,9259,0,0,0,9,0,11947,0,0,0,0,'','Ice Stone - For Gossip player must have Striking back /Desolace/'),
(15,9260,0,0,0,9,0,11947,0,0,0,0,'','Ice Stone - For Gossip player must have Striking back /Desolace/'),
(15,9264,0,0,0,9,0,11948,0,0,0,0,'','Ice Stone - For Gossip player must have Striking back /Stranglethorn/'),
(15,9265,0,0,0,9,0,11948,0,0,0,0,'','Ice Stone - For Gossip player must have Striking back /Stranglethorn/'),
(15,9266,0,0,0,9,0,11952,0,0,0,0,'','Ice Stone - For Gossip player must have Striking back /Searing Gorge/'),
(15,9267,0,0,0,9,0,11952,0,0,0,0,'','Ice Stone - For Gossip player must have Striking back /Searing Gorge/'),
(15,9268,0,0,0,9,0,11952,0,0,0,0,'','Ice Stone - For Gossip player must have Striking back /Searing Gorge/'),
(15,9269,0,0,0,9,0,11953,0,0,0,0,'','Ice Stone - For Gossip player must have Striking back /Silithus/'),
(15,9271,0,0,0,9,0,11953,0,0,0,0,'','Ice Stone - For Gossip player must have Striking back /Silithus/'),
(15,9272,0,0,0,9,0,11953,0,0,0,0,'','Ice Stone - For Gossip player must have Striking back /Silithus/'),
(15,9273,0,0,0,9,0,11954,0,0,0,0,'','Ice Stone - For Gossip player must have Striking back /Hellfire/'),
(15,9274,0,0,0,9,0,11954,0,0,0,0,'','Ice Stone - For Gossip player must have Striking back /Hellfire/'),
(15,9275,0,0,0,9,0,11954,0,0,0,0,'','Ice Stone - For Gossip player must have Striking back /Hellfire/'),
(15,9276,0,0,0,9,0,11954,0,0,0,0,'','Ice Stone - For Gossip player must have Striking back /Hellfire/');
-- Add all missing go spawns for Striking Back quests and decorations connected with it
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(165715, 188048, 1, 1, 1, -461.769, 2472.11, 104.848, 4.40434, 0, 0, 0.807217, -0.590254, 300, 0, 1),
(165723, 188048, 0, 1, 1, -12196, 887.421, 0.59987, 0.486257, 0, 0, 0.24074, 0.97059, 300, 0, 1),
(165747, 188050, 0, 1, 1, -12196.5, 887.828, 2.72441, 1.8615, 0, 0, 0.802067, 0.597233, 300, 0, 1),
(165748, 188143, 0, 1, 1, -12196.5, 887.828, 2.72441, 1.8615, 0, 0, 0.802067, 0.597233, 300, 0, 1),
(165749, 188048, 0, 1, 1, -12170.1, 860.773, 19.0948, 1.7209, 0, 0, 0.758137, 0.652095, 300, 0, 1),
(165773, 188050, 0, 1, 1, -12169.5, 860.835, 21.2184, 3.2917, 0, 0, 0.997185, -0.0749834, 300, 0, 1),
(165774, 188144, 0, 1, 1, -12169.5, 860.835, 21.2184, 3.2917, 0, 0, 0.997185, -0.0749834, 300, 0, 1),
(165800, 188050, 1, 1, 1, -462.112, 2472.26, 106.971, 5.9398, 0, 0, 0.170852, -0.985297, 300, 0, 1),
(165801, 188134, 1, 1, 1, -462.112, 2472.26, 106.571, 5.9398, 0, 0, 0.170852, -0.985297, 300, 0, 1),
(165802, 188048, 1, 1, 1, -438.441, 2451.37, 103.147, 1.53371, 0, 0, 0.693872, 0.720098, 300, 0, 1),
(165803, 188048, 1, 1, 1, -465.8, 2452.56, 100.004, 5.15439, 0, 0, 0.534909, -0.84491, 300, 0, 1),
(165827, 188050, 1, 1, 1, -437.932, 2451.39, 105.271, 3.04952, 0, 0, 0.99894, 0.0460223, 300, 0, 1),
(165828, 188135, 1, 1, 1, -437.932, 2451.39, 105.271, 3.04952, 0, 0, 0.99894, 0.0460223, 300, 0, 1),
(165829, 188050, 1, 1, 1, -466.49, 2452.25, 102.127, 0.38702, 0, 0, 0.192305, 0.981335, 300, 0, 1),
(165830, 188139, 1, 1, 1, -466.49, 2452.25, 102.127, 0.38702, 0, 0, 0.192305, 0.981335, 300, 0, 1),
(165831, 187989, 1, 1, 1, -437.406, 2438.64, 106.645, 2.94349, 0, 0, 0.995098, 0.0988888, 300, 0, 1),
(165832, 187989, 1, 1, 1, -480.744, 2434.37, 99.8844, 0.284917, 0, 0, 0.141977, 0.98987, 300, 0, 1),
(165833, 187989, 1, 1, 1, -475.681, 2367.79, 96.9422, 4.35126, 0, 0, 0.822596, -0.568627, 300, 0, 1),
(165834, 187989, 1, 1, 1, -509.534, 2404.15, 97.0855, 0.344939, 0, 0, 0.171616, 0.985164, 300, 0, 1),
(165835, 187989, 1, 1, 1, -451.373, 2483.46, 111.352, 4.62147, 0, 0, 0.738511, -0.674241, 300, 0, 1),
(165837, 187918, 1, 1, 1, -479.677, 2420.32, 94.6018, 3.65464, 0, 0, 0.967278, -0.253719, 300, 0, 1),
(165838, 187918, 1, 1, 1, -451.718, 2430.49, 98.9137, 0.354041, 0, 0, 0.176097, 0.984373, 300, 0, 1),
(165839, 187918, 0, 1, 1, -12189.7, 842.621, 10.5679, 6.20423, 0, 0, 0.0394675, -0.999221, 300, 0, 1),
(165840, 187918, 0, 1, 1, -12168.5, 835.455, 11.7295, 5.8885, 0, 0, 0.196064, -0.980591, 300, 0, 1),
(165841, 187989, 0, 1, 1, -12178.2, 801.785, 2.18033, 3.98705, 0, 0, 0.911973, -0.410251, 300, 0, 1),
(165842, 187989, 0, 1, 1, -12236.1, 837.722, 2.50857, 0.752642, 0, 0, 0.367501, 0.930023, 300, 0, 1),
(165843, 187989, 0, 1, 1, -12156.2, 934.719, 2.21955, 4.7244, 0, 0, 0.702848, -0.71134, 300, 0, 1),
(165844, 187989, 0, 1, 1, -12112.9, 870.413, 9.49334, 2.21505, 0, 0, 0.894596, 0.446876, 300, 0, 1),
(165845, 188048, 0, 1, 1, -6636.4, -665.27, 233.754, 5.32295, 0, 0, 0.461881, -0.886942, 300, 0, 1),
(165846, 188050, 0, 1, 1, -6637.01, -665.525, 235.876, 0.528097, 0, 0, 0.260991, 0.965341, 300, 0, 1),
(165847, 188145, 0, 1, 1, -6637.01, -665.525, 235.876, 0.528097, 0, 0, 0.260991, 0.965341, 300, 0, 1),
(165848, 188048, 0, 1, 1, -6603.47, -644.717, 233.754, 2.32509, 0, 0, 0.917816, 0.397006, 300, 0, 1),
(165849, 188050, 0, 1, 1, -6603.16, -644.701, 235.877, 3.89824, 0, 0, 0.929285, -0.369364, 300, 0, 1),
(165850, 188146, 0, 1, 1, -6603.16, -644.701, 235.877, 3.89824, 0, 0, 0.929285, -0.369364, 300, 0, 1),
(165851, 188048, 0, 1, 1, -6620.78, -624.053, 233.755, 3.24086, 0, 0, 0.998768, -0.0496152, 300, 0, 1),
(165852, 188050, 0, 1, 1, -6620.71, -623.62, 235.878, 4.71892, 0, 0, 0.704796, -0.70941, 300, 0, 1),
(165853, 188147, 0, 1, 1, -6620.71, -623.62, 235.878, 4.71892, 0, 0, 0.704796, -0.70941, 300, 0, 1),
(165854, 187989, 0, 1, 1, -6595.95, -663.852, 238.42, 5.19351, 0, 0, 0.518277, -0.855213, 300, 0, 1),
(165855, 187989, 0, 1, 1, -6602.66, -667.151, 238.82, 3.59601, 0, 0, 0.974298, -0.225261, 300, 0, 1),
(165856, 187989, 0, 1, 1, -6595.89, -691.631, 244.639, 4.34765, 0, 0, 0.823623, -0.567138, 300, 0, 1),
(165857, 187989, 0, 1, 1, -6609.54, -690.698, 243.926, 3.1939, 0, 0, 0.999658, -0.0261491, 300, 0, 1),
(165858, 187989, 0, 1, 1, -6611.29, -717.496, 247.221, 4.26282, 0, 0, 0.846928, -0.531708, 300, 0, 1),
(165859, 187989, 0, 1, 1, -6621.53, -714.911, 247.568, 4.22355, 0, 0, 0.857204, -0.514977, 300, 0, 1),
(165860, 187918, 0, 1, 1, -6637.37, -651.561, 241.749, 5.72995, 0, 0, 0.273105, -0.961984, 300, 0, 1),
(165862, 188157, 530, 1, 1, -156.232, 1137.98, 26.5052, 0.537575, 0, 0, 0.265563, 0.964094, 300, 0, 1),
(165886, 188156, 530, 1, 1, -155.708, 1136.65, 41.5227, 1.07635, 0, 0, 0.512571, 0.858645, 300, 0, 1),
(165887, 188151, 530, 1, 1, -155.708, 1136.65, 41.5227, 1.07635, 0, 0, 0.512571, 0.858645, 300, 0, 1),
(165888, 188157, 530, 1, 1, -350.997, 1130.78, 25.645, 2.66284, 0, 0, 0.971486, 0.237097, 300, 0, 1),
(165889, 188157, 530, 1, 1, -132.353, 1203.6, 26.5964, 3.86685, 0, 0, 0.934967, -0.354735, 300, 0, 1),
(165890, 188157, 530, 1, 1, -356.812, 1209.86, 24.809, 1.975, 0, 0, 0.374167, -0.927362, 300, 0, 1),
(165914, 188156, 530, 1, 1, -349.997, 1132.78, 40.645, 0.0623619, 0, 0, 0.0311759, 0.999514, 300, 0, 1),
(165915, 188152, 530, 1, 1, -349.997, 1132.18, 40.645, 0.0623619, 0, 0, 0.0311759, 0.999514, 300, 0, 1),
(165916, 188156, 530, 1, 1, -133.263, 1204.24, 41.6632, 3.20002, 0, 0, 0.999573, -0.0292117, 300, 0, 1),
(165917, 188153, 530, 1, 1, -133.263, 1204.24, 41.6632, 3.20002, 0, 0, 0.999573, -0.0292117, 300, 0, 1),
(165918, 188156, 530, 1, 1, -355.812, 1209.86, 39.809, 1.975, 0, 0, 0.657948, -0.753063, 300, 0, 1),
(165919, 188154, 530, 1, 1, -355.812, 1209.86, 39.809, 1.975, 0, 0, 0.657948, -0.753063, 300, 0, 1),
(165920, 187989, 530, 1, 1, -168.654, 1223.93, 39.5249, 5.54051, 0, 0, 0.362863, -0.931843, 300, 0, 1),
(165921, 187989, 530, 1, 1, -134.98, 1219.16, 39.9083, 4.46029, 0, 0, 0.790393, -0.6126, 300, 0, 1),
(165922, 187989, 530, 1, 1, -164.647, 1183.49, 41.5094, 3.56022, 0, 0, 0.978174, -0.207788, 300, 0, 1),
(165923, 187989, 530, 1, 1, -134.178, 1162.87, 41.4418, 4.88283, 0, 0, 0.644354, -0.764728, 300, 0, 1),
(165924, 187989, 530, 1, 1, -157.004, 1100.52, 41.6002, 4.75795, 0, 0, 0.690816, -0.723031, 300, 0, 1),
(165925, 187989, 530, 1, 1, -106.606, 1106.62, 47.2494, 6.25021, 0, 0, 0.0164877, -0.999864, 300, 0, 1),
(165926, 187989, 530, 1, 1, -164.571, 1126.64, 50.9746, 1.11604, 0, 0, 0.52951, 0.848304, 300, 0, 1),
(165951, 187918, 530, 1, 1, -341.539, 1149.69, 41.516, 1.49258, 0, 0, 0.678919, 0.734213, 300, 0, 1),
(165952, 187989, 530, 1, 1, -346.156, 1149.88, 41.4797, 1.74469, 0, 0, 0.765839, 0.643032, 300, 0, 1),
(165953, 187918, 530, 1, 1, -312.724, 1109.74, 41.6732, 3.11521, 0, 0, 0.999913, 0.0131916, 300, 0, 1),
(165954, 187918, 530, 1, 1, -342.656, 1109.48, 41.8743, 3.19845, 0, 0, 0.999596, -0.0284273, 300, 0, 1),
(165955, 187918, 530, 1, 1, -364.933, 1103.83, 45.7432, 0.55952, 0, 0, 0.276125, 0.961122, 300, 0, 1),
(165956, 187989, 530, 1, 1, -370.16, 1104.04, 47.8775, 0.147176, 0, 0, 0.0735218, 0.997294, 300, 0, 1),
(165957, 187918, 530, 1, 1, -371.512, 1154.24, 44.431, 3.18689, 0, 0, 0.999744, -0.0226447, 300, 0, 1),
(165958, 187989, 530, 1, 1, -375.946, 1154.04, 45.4371, 3.18689, 0, 0, 0.999744, -0.0226447, 300, 0, 1),
(165959, 187918, 530, 1, 1, -311.412, 1157.12, 41.3469, 3.19238, 0, 0, 0.999678, -0.0253915, 300, 0, 1),
(165960, 187989, 530, 1, 1, -328.448, 1168.73, 41.6186, 3.31726, 0, 0, 0.996145, -0.0877198, 300, 0, 1),
(165961, 187918, 530, 1, 1, -366.923, 1194.76, 41.3963, 3.25757, 0, 0, 0.998319, -0.0579546, 300, 0, 1),
(165962, 187918, 530, 1, 1, -370.988, 1223.35, 38.3536, 5.61533, 0, 0, 0.327755, -0.944763, 300, 0, 1),
(165963, 187989, 530, 1, 1, -337.191, 1228.54, 37.9438, 4.89356, 0, 0, 0.640242, -0.768173, 300, 0, 1),
(165964, 187989, 530, 1, 1, -359.076, 1221.14, 38.6201, 0.0453942, 0, 0, 0.0226952, 0.999742, 300, 0, 1);
-- Add SAIs for the all the Ice Stones
-- Desolace
SET @Script := 18813400;
UPDATE `gameobject_template` SET `AIName`= 'SmartGameObjectAI' WHERE `entry`=188134;
DELETE FROM `smart_scripts` WHERE `source_type`=1 AND `entryorguid`=188134;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=@Script;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(188134,1,0,0,62,0,100,0,9258,0,0,0,80,@Script,0,0,0,0,0,1,0,0,0,0,0,0,0,'Ice Stone - On gossip option select - Run script'),
-- Script 00
(@Script,9,0,0,0,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Actionlist - On action 0 - Close gossip'),
(@Script,9,1,0,0,0,100,0,1000,1000,0,0,12,26178,3,120000,0,0,0,8,0,0,0,-458.956787,2471.237061,106.895035,5.979829,'Actionlist - On action 1 - Summon Hailstone Lieutenant'),
(@Script,9,2,0,0,0,100,0,1000,1000,0,0,70,100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Actionlist - Linked with event 0 - Respawn object /make it reappear after 100 secs/');
SET @Script1 := 18813500;
UPDATE `gameobject_template` SET `AIName`= 'SmartGameObjectAI' WHERE `entry`=188135;
DELETE FROM `smart_scripts` WHERE `source_type`=1 AND `entryorguid`=188135;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=@Script1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(188135,1,0,0,62,0,100,0,9259,0,0,0,80,@Script1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Ice Stone - On gossip option select - Run script'),
-- Script 01
(@Script1,9,0,0,0,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Actionlist - On action 0 - Close gossip'),
(@Script1,9,1,0,0,0,100,0,1000,1000,0,0,12,26178,3,120000,0,0,0,8,0,0,0,-441.233276,2451.243164,105.240685,2.942712,'Actionlist - On action 1 - Summon Hailstone Lieutenant'),
(@Script1,9,2,0,0,0,100,0,1000,1000,0,0,70,100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Actionlist - Linked with event 0 - Respawn object /make it reappear after 100 secs/');
SET @Script2 := 18813900;
UPDATE `gameobject_template` SET `AIName`= 'SmartGameObjectAI' WHERE `entry`=188139;
DELETE FROM `smart_scripts` WHERE `source_type`=1 AND `entryorguid`=188139;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=@Script2;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(188139,1,0,0,62,0,100,0,9260,0,0,0,80,@Script2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Ice Stone - On gossip option select - Run script'),
-- Script 02
(@Script2,9,0,0,0,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Actionlist - On action 0 - Close gossip'),
(@Script2,9,1,0,0,0,100,0,1000,1000,0,0,12,26178,3,120000,0,0,0,8,0,0,0,-463.070892,2454.063965,102.002838,0.519758,'Actionlist - On action 1 - Summon Hailstone Lieutenant'),
(@Script2,9,2,0,0,0,100,0,1000,1000,0,0,70,100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Actionlist - Linked with event 0 - Respawn object /make it reappear after 100 secs/');
SET @Hailstone := 26178;
UPDATE `creature_template` SET `mindmg`=39,`maxdmg`=56,`attackpower`=157,`baseattacktime`=2000,`unit_class`=2,`resistance3`=1000,`faction_A`=168,`faction_H`=168,`minlevel`=32,`maxlevel`=32,`AIName`= 'SmartAI' WHERE `entry`=@Hailstone;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@Hailstone;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@Hailstone,0,0,0,0,0,100,0,7500,15000,15000,25000,11,5164,0,0,0,0,0,2,0,0,0,0,0,0,0,'Hailstone Lieutenant - IC - Cast Knockback'),
(@Hailstone,0,1,0,2,0,100,1,20,60,0,0,11,5276,0,0,0,0,0,2,0,0,0,0,0,0,0,'Hailstone Lieutenant - On HP %/20-60/ - Cast Freeze'),
(@Hailstone,0,2,0,4,0,100,1,0,0,0,0,1,0,2000,0,0,0,0,1,0,0,0,0,0,0,0,'Hailstone Lieutenant - On aggro - Say text 0'),
(@Hailstone,0,3,0,0,0,100,1,5000,20000,0,0,1,1,1000,0,0,0,0,2,0,0,0,0,0,0,0,'Hailstone Lieutenant - IC - Say text 1');
-- Hailstone Lieutenant texts
DELETE FROM `creature_text` WHERE `entry`= @Hailstone;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@Hailstone,0,0,'¡No conseguirás evitar que el Señor de la Escarcha entre a este mundo, mortal! ¡Aplastará a Ragnaros y así saldrá de su paraiso helado de una vez por todas!',12,0,100,1,2000,0,'Hailstone Lieutenant intro speech'),
(@Hailstone,1,0,'No te resultará... tan facil.',12,0,100,1,0,0,'Hailstone Lieutenant combat text');
-- Missing spawns for Heretic Crystal Guards + fix creature_template data
SET @Guard := 26166;
UPDATE `creature_template` SET `lootid`=4713,`pickpocketloot`=4713,`equipment_id`=412,`mingold`=104,`maxgold`=104,`movementtype`=1,`mindmg`=47,`maxdmg`=63,`attackpower`=114,`baseattacktime`=2000,`unit_class`=1,`resistance3`=1000,`faction_A`=168,`faction_H`=168,`minlevel`=33,`maxlevel`=34,`AIName`= 'SmartAI' WHERE `entry`=@Guard;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@Guard;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@Guard,0,0,0,4,0,100,0,0,0,0,0,11,7165,0,0,0,0,0,1,0,0,0,0,0,0,0,'Heretic Crystal Guard - On Aggro - Cast Battlestance'),
(@Guard,0,1,0,0,0,100,0,0,10000,20000,25000,11,7947,0,0,0,0,0,2,0,0,0,0,0,0,0,'Heretic Crystal Guard - IC - Localized Toxin'),
(@Guard,0,2,0,0,0,100,0,0,5000,5000,10000,11,9080,0,0,0,0,0,2,0,0,0,0,0,0,0,'Heretic Crystal Guard - IC - Cast Hamstring'),
(@Guard,0,3,0,0,0,100,0,3500,15000,15500,20000,11,11977,0,0,0,0,0,2,0,0,0,0,0,0,0,'Heretic Crystal Guard - IC - Cast Rend');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(150298, @Guard, 1, 1, 1, 0, 0, -475.005, 2420.72, 95.1794, 4.42751, 300, 30, 0, 46, 0, 1, 0, 0, 0),
(150299, @Guard, 1, 1, 1, 0, 0, -455.597, 2430.45, 98.5554, 1.74145, 300, 30, 0, 46, 0, 1, 0, 0, 0),
(150300, @Guard, 1, 1, 1, 0, 0, -462.329, 2445.08, 100.308, 0.379569, 300, 30, 0, 46, 0, 1, 0, 0, 0),
(150301, @Guard, 1, 1, 1, 0, 0, -444.525, 2455.68, 104.292, 5.14615, 300, 30, 0, 46, 0, 1, 0, 0, 0),
(150302, @Guard, 1, 1, 1, 0, 0, -465.311, 2461.88, 104.4, 5.86479, 300, 30, 0, 46, 0, 1, 0, 0, 0),
(150303, @Guard, 1, 1, 1, 0, 0, -482.672, 2389.5, 91.1305, 2.51664, 300, 30, 0, 46, 0, 1, 0, 0, 0);
-- Searing Gorge
SET @Script3 := 18814500;
UPDATE `gameobject_template` SET `AIName`= 'SmartGameObjectAI' WHERE `entry`=188145;
DELETE FROM `smart_scripts` WHERE `source_type`=1 AND `entryorguid`=188145;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=@Script3;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(188145,1,0,0,62,0,100,0,9266,0,0,0,80,@Script3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Ice Stone - On gossip option select - Run script'),
-- Script 03
(@Script3,9,0,0,0,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Actionlist - On action 0 - Close gossip'),
(@Script3,9,1,0,0,0,100,0,1000,1000,0,0,12,26214,3,120000,0,0,0,8,0,0,0,-6631.123047,-661.677856,234.803894,0.500000,'Actionlist - On action 1 - Summon Frigid Lieutenant'),
(@Script3,9,2,0,0,0,100,0,1000,1000,0,0,70,100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Actionlist - Linked with event 0 - Respawn object /make it reappear after 100 secs/');
SET @Script4 := 18814600;
UPDATE `gameobject_template` SET `AIName`= 'SmartGameObjectAI' WHERE `entry`=188146;
DELETE FROM `smart_scripts` WHERE `source_type`=1 AND `entryorguid`=188146;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=@Script4;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(188146,1,0,0,62,0,100,0,9267,0,0,0,80,@Script4,0,0,0,0,0,1,0,0,0,0,0,0,0,'Ice Stone - On gossip option select - Run script'),
-- Script 04
(@Script4,9,0,0,0,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Actionlist - On action 0 - Close gossip'),
(@Script4,9,1,0,0,0,100,0,1000,1000,0,0,12,26214,3,120000,0,0,0,8,0,0,0,-6607.436035,-648.119690,235.142166,3.400006,'Actionlist - On action 1 - Summon Frigid Lieutenant'),
(@Script4,9,2,0,0,0,100,0,1000,1000,0,0,70,100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Actionlist - Linked with event 0 - Respawn object /make it reappear after 100 secs/');
SET @Script5 := 18814700;
UPDATE `gameobject_template` SET `AIName`= 'SmartGameObjectAI' WHERE `entry`=188147;
DELETE FROM `smart_scripts` WHERE `source_type`=1 AND `entryorguid`=188147;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=@Script5;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(188147,1,0,0,62,0,100,0,9268,0,0,0,80,@Script5,0,0,0,0,0,1,0,0,0,0,0,0,0,'Ice Stone - On gossip option select - Run script'),
-- Script 05
(@Script5,9,0,0,0,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Actionlist - On action 0 - Close gossip'),
(@Script5,9,1,0,0,0,100,0,1000,1000,0,0,12,26214,3,120000,0,0,0,8,0,0,0,-6620.220215,-631.247192,234.565582,4.944000,'Actionlist - On action 1 - Summon Frigid Lieutenant'),
(@Script5,9,2,0,0,0,100,0,1000,1000,0,0,70,100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Actionlist - Linked with event 0 - Respawn object /make it reappear after 100 secs/');
SET @Frigid := 26214;
UPDATE `creature_template` SET `mindmg`=78,`maxdmg`=106,`attackpower`=266,`baseattacktime`=1500,`unit_class`=2,`resistance3`=1000,`faction_A`=168,`faction_H`=168,`minlevel`=51,`maxlevel`=51,`AIName`= 'SmartAI' WHERE `entry`=@Frigid;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@Frigid;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@Frigid,0,0,0,0,0,100,0,1000,5000,10000,11000,11,3131,0,0,0,0,0,2,0,0,0,0,0,0,0,'Frigid Lieutenant - IC - Cast Frost Breath'),
(@Frigid,0,1,0,4,0,100,1,0,0,0,0,1,0,2000,0,0,0,0,1,0,0,0,0,0,0,0,'Frigid Lieutenant - On aggro - Say text 0');
-- Frigid Lieutenant texts
DELETE FROM `creature_text` WHERE `entry`= @Frigid;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@Frigid,0,0,'¡No conseguirás evitar que el Señor de la Escarcha entre a este mundo, mortal! ¡Aplastará a Ragnaros y así saldrá de su paraiso helado de una vez por todas!',12,0,100,1,2000,0,'Frigid Lieutenant intro speech');
-- Ashenvale
SET @Script6 := 18804900;
UPDATE `gameobject_template` SET `AIName`= 'SmartGameObjectAI' WHERE `entry`=188049;
DELETE FROM `smart_scripts` WHERE `source_type`=1 AND `entryorguid`=188049;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=@Script6;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(188049,1,0,0,62,0,100,0,9213,0,0,0,80,@Script6,0,0,0,0,0,1,0,0,0,0,0,0,0,'Ice Stone - On gossip option select - Run script'),
-- Script 06
(@Script6,9,0,0,0,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Actionlist - On action 0 - Close gossip'),
(@Script6,9,1,0,0,0,100,0,1000,1000,0,0,12,26116,3,120000,0,0,0,8,0,0,0,4203.157227,1147.510376,8.549132,2.018310,'Actionlist - On action 1 - Summon Frostwave Lieutenant'),
(@Script6,9,2,0,0,0,100,0,1000,1000,0,0,70,100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Actionlist - Linked with event 0 - Respawn object /make it reappear after 100 secs/');
SET @Script7 := 18813700;
UPDATE `gameobject_template` SET `AIName`= 'SmartGameObjectAI' WHERE `entry`=188137;
DELETE FROM `smart_scripts` WHERE `source_type`=1 AND `entryorguid`=188137;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=@Script7;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(188137,1,0,0,62,0,100,0,9256,0,0,0,80,@Script7,0,0,0,0,0,1,0,0,0,0,0,0,0,'Ice Stone - On gossip option select - Run script'),
-- Script 07
(@Script7,9,0,0,0,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Actionlist - On action 0 - Close gossip'),
(@Script7,9,1,0,0,0,100,0,1000,1000,0,0,12,26116,3,120000,0,0,0,8,0,0,0,4228.956055,1167.375854,8.095765,2.707110,'Actionlist - On action 1 - Summon Frostwave Lieutenant'),
(@Script7,9,2,0,0,0,100,0,1000,1000,0,0,70,100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Actionlist - Linked with event 0 - Respawn object /make it reappear after 100 secs/');
SET @Script8 := 18813800;
UPDATE `gameobject_template` SET `AIName`= 'SmartGameObjectAI' WHERE `entry`=188138;
DELETE FROM `smart_scripts` WHERE `source_type`=1 AND `entryorguid`=188138;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=@Script8;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(188138,1,0,0,62,0,100,0,9257,0,0,0,80,@Script8,0,0,0,0,0,1,0,0,0,0,0,0,0,'Ice Stone - On gossip option select - Run script'),
-- Script 08
(@Script8,9,0,0,0,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Actionlist - On action 0 - Close gossip'),
(@Script8,9,1,0,0,0,100,0,1000,1000,0,0,12,26116,3,120000,0,0,0,8,0,0,0,4240.973145,1144.133179,10.043564,2.702398,'Actionlist - On action 1 - Summon Frostwave Lieutenant'),
(@Script8,9,2,0,0,0,100,0,1000,1000,0,0,70,100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Actionlist - Linked with event 0 - Respawn object /make it reappear after 100 secs/');
SET @Frostwave := 26178;
UPDATE `creature_template` SET `mindmg`=25,`maxdmg`=36,`attackpower`=130,`baseattacktime`=1500,`unit_class`=2,`resistance3`=1000,`faction_A`=168,`faction_H`=168,`minlevel`=22,`maxlevel`=22,`AIName`= 'SmartAI' WHERE `entry`=@Frostwave;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@Frostwave;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@Frostwave,0,0,0,0,0,100,0,1000,5000,8000,9000,11,8056,0,0,0,0,0,2,0,0,0,0,0,0,0,'Frostwave Lieutenant - IC - Cast Frost Shock'),
(@Frostwave,0,1,0,0,0,100,0,6000,10000,10000,12000,11,122,0,0,0,0,0,2,0,0,0,0,0,0,0,'Frostwave Lieutenant - IC - Cast Frost Nova'),
(@Frostwave,0,2,0,4,0,100,1,0,0,0,0,1,0,2000,0,0,0,0,1,0,0,0,0,0,0,0,'Frostwave Lieutenant - On aggro - Say text 0');
-- Frostwave Lieutenant texts
DELETE FROM `creature_text` WHERE `entry`= @Frostwave;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@Frostwave,0,0,'¡No conseguirás evitar que el Señor de la Escarcha entre a este mundo, mortal! ¡Aplastará a Ragnaros y así saldrá de su paraiso helado de una vez por todas!',12,0,100,1,2000,0,'Frostwave Lieutenant intro speech');
-- Silithus
SET @Script9 := 18814800;
UPDATE `gameobject_template` SET `AIName`= 'SmartGameObjectAI' WHERE `entry`=188148;
DELETE FROM `smart_scripts` WHERE `source_type`=1 AND `entryorguid`=188148;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=@Script9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(188148,1,0,0,62,0,100,0,9269,0,0,0,80,@Script9,0,0,0,0,0,1,0,0,0,0,0,0,0,'Ice Stone - On gossip option select - Run script'),
-- Script 09
(@Script9,9,0,0,0,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Actionlist - On action 0 - Close gossip'),
(@Script9,9,1,0,0,0,100,0,1000,1000,0,0,12,26215,3,120000,0,0,0,8,0,0,0,-6439.836914,215.265793,5.144650,3.776884,'Actionlist - On action 1 - Summon Glacial Lieutenant'),
(@Script9,9,2,0,0,0,100,0,1000,1000,0,0,70,100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Actionlist - Linked with event 0 - Respawn object /make it reappear after 100 secs/');
SET @Script10 := 18814900;
UPDATE `gameobject_template` SET `AIName`= 'SmartGameObjectAI' WHERE `entry`=188149;
DELETE FROM `smart_scripts` WHERE `source_type`=1 AND `entryorguid`=188149;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=@Script10;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(188149,1,0,0,62,0,100,0,9271,0,0,0,80,@Script10,0,0,0,0,0,1,0,0,0,0,0,0,0,'Ice Stone - On gossip option select - Run script'),
-- Script 10
(@Script10,9,0,0,0,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Actionlist - On action 0 - Close gossip'),
(@Script10,9,1,0,0,0,100,0,1000,1000,0,0,12,26215,3,120000,0,0,0,8,0,0,0,-6424.708008,190.182739,7.241127,0.689485,'Actionlist - On action 1 - Summon Glacial Lieutenant'),
(@Script10,9,2,0,0,0,100,0,1000,1000,0,0,70,100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Actionlist - Linked with event 0 - Respawn object /make it reappear after 100 secs/');
SET @Script11 := 18815000;
UPDATE `gameobject_template` SET `AIName`= 'SmartGameObjectAI' WHERE `entry`=188150;
DELETE FROM `smart_scripts` WHERE `source_type`=1 AND `entryorguid`=188150;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=@Script11;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(188150,1,0,0,62,0,100,0,9272,0,0,0,80,@Script11,0,0,0,0,0,1,0,0,0,0,0,0,0,'Ice Stone - On gossip option select - Run script'),
-- Script 11
(@Script11,9,0,0,0,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Actionlist - On action 0 - Close gossip'),
(@Script11,9,1,0,0,0,100,0,1000,1000,0,0,12,26215,3,120000,0,0,0,8,0,0,0,-6395.992676,204.004852,4.293016,2.75155,'Actionlist - On action 1 - Summon Glacial Lieutenant'),
(@Script11,9,2,0,0,0,100,0,1000,1000,0,0,70,100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Actionlist - Linked with event 0 - Respawn object /make it reappear after 100 secs/');
SET @Glacial := 26215;
UPDATE `creature_template` SET `mindmg`=185,`maxdmg`=252,`attackpower`=313,`baseattacktime`=1500,`resistance3`=1000,`faction_A`=168,`faction_H`=168,`minlevel`=60,`maxlevel`=60,`AIName`= 'SmartAI' WHERE `entry`=@Glacial;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@Glacial;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@Glacial,0,0,0,0,0,100,0,1000,5000,8000,9000,11,15089,0,0,0,0,0,2,0,0,0,0,0,0,0,'Glacial Lieutenant - IC - Cast Frost Shock'),
(@Glacial,0,1,0,0,0,100,0,6000,10000,10000,12000,11,14907,0,0,0,0,0,2,0,0,0,0,0,0,0,'Glacial Lieutenant - IC - Cast Frost Nova'),
(@Glacial,0,2,0,4,0,100,1,0,0,0,0,1,0,2000,0,0,0,0,1,0,0,0,0,0,0,0,'Glacial Lieutenant - On aggro - Say text 0');
-- Glacial Lieutenant texts
DELETE FROM `creature_text` WHERE `entry`= @Glacial;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@Glacial,0,0,'¡No conseguirás evitar que el Señor de la Escarcha entre a este mundo, mortal! ¡Aplastará a Ragnaros y así saldrá de su paraiso helado de una vez por todas!',12,0,100,1,2000,0,'Glacial Lieutenant intro speech');
-- Stranglethorn vale
SET @Script12 := 18814300;
UPDATE `gameobject_template` SET `AIName`= 'SmartGameObjectAI' WHERE `entry`=188143;
DELETE FROM `smart_scripts` WHERE `source_type`=1 AND `entryorguid`=188143;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=@Script12;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(188143,1,0,0,62,0,100,0,9264,0,0,0,80,@Script12,0,0,0,0,0,1,0,0,0,0,0,0,0,'Ice Stone - On gossip option select - Run script'),
-- Script 12
(@Script12,9,0,0,0,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Actionlist - On action 0 - Close gossip'),
(@Script12,9,1,0,0,0,100,0,1000,1000,0,0,12,26204,3,120000,0,0,0,8,0,0,0,-12199.167969,893.045044,1.343297,1.343297,'Actionlist - On action 1 - Summon Chillwind Lieutenant'),
(@Script12,9,2,0,0,0,100,0,1000,1000,0,0,70,100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Actionlist - Linked with event 0 - Respawn object /make it reappear after 100 secs/');
SET @Script13 := 18814400;
UPDATE `gameobject_template` SET `AIName`= 'SmartGameObjectAI' WHERE `entry`=188144;
DELETE FROM `smart_scripts` WHERE `source_type`=1 AND `entryorguid`=188144;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=@Script13;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(188144,1,0,0,62,0,100,0,9265,0,0,0,80,@Script13,0,0,0,0,0,1,0,0,0,0,0,0,0,'Ice Stone - On gossip option select - Run script'),
-- Script 13
(@Script13,9,0,0,0,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Actionlist - On action 0 - Close gossip'),
(@Script13,9,1,0,0,0,100,0,1000,1000,0,0,12,26204,3,120000,0,0,0,8,0,0,0,-12176.784180,860.724365,19.763479,-1.849757,'Actionlist - On action 1 - Summon Chillwind Lieutenant'),
(@Script13,9,2,0,0,0,100,0,1000,1000,0,0,70,100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Actionlist - Linked with event 0 - Respawn object /make it reappear after 100 secs/');
SET @Chillwind := 26204;
UPDATE `creature_template` SET `mindmg`=57,`maxdmg`=78,`attackpower`=168,`baseattacktime`=1500,`resistance3`=1000,`faction_A`=168,`faction_H`=168,`minlevel`=43,`maxlevel`=43,`AIName`= 'SmartAI' WHERE `entry`=@Chillwind;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@Chillwind;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@Chillwind,0,0,0,0,0,100,0,1000,5000,8000,9000,11,23115,0,0,0,0,0,2,0,0,0,0,0,0,0,'Chillwind Lieutenant - IC - Cast Frost Shock'),
(@Chillwind,0,1,0,0,0,100,0,10000,10000,15000,12000,11,6982,0,0,0,0,0,2,0,0,0,0,0,0,0,'Chillwind Lieutenant - IC - Cast Rend'),
(@Chillwind,0,2,0,4,0,100,1,0,0,0,0,1,0,2000,0,0,0,0,1,0,0,0,0,0,0,0,'Chillwind Lieutenant - On aggro - Say text 0');
-- Chillwind Lieutenant texts
DELETE FROM `creature_text` WHERE `entry`= @Chillwind;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@Chillwind,0,0,'¡No conseguirás evitar que el Señor de la Escarcha entre a este mundo, mortal! ¡Aplastará a Ragnaros y así saldrá de su paraiso helado de una vez por todas!',12,0,100,1,2000,0,'Chillwind Lieutenant intro speech');
-- Hellfire Peninsula
SET @Script14 := 18815100;
UPDATE `gameobject_template` SET `AIName`= 'SmartGameObjectAI' WHERE `entry`=188151;
DELETE FROM `smart_scripts` WHERE `source_type`=1 AND `entryorguid`=188151;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=@Script14;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(188151,1,0,0,62,0,100,0,9273,0,0,0,80,@Script14,0,0,0,0,0,1,0,0,0,0,0,0,0,'Ice Stone - On gossip option select - Run script'),
-- Script 14
(@Script14,9,0,0,0,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Actionlist - On action 0 - Close gossip'),
(@Script14,9,1,0,0,0,100,0,1000,1000,0,0,12,26216,3,120000,0,0,0,8,0,0,0,-153.333008,1142.613159,41.497719,0.898327,'Actionlist - On action 1 - Summon Templar'),
(@Script14,9,2,0,0,0,100,0,1000,1000,0,0,70,100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Actionlist - Linked with event 0 - Respawn object /make it reappear after 100 secs/');
SET @Script15 := 18815200;
UPDATE `gameobject_template` SET `AIName`= 'SmartGameObjectAI' WHERE `entry`=188152;
DELETE FROM `smart_scripts` WHERE `source_type`=1 AND `entryorguid`=188152;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=@Script15;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(188152,1,0,0,62,0,100,0,9274,0,0,0,80,@Script15,0,0,0,0,0,1,0,0,0,0,0,0,0,'Ice Stone - On gossip option select - Run script'),
-- Script 15
(@Script15,9,0,0,0,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Actionlist - On action 0 - Close gossip'),
(@Script15,9,1,0,0,0,100,0,1000,1000,0,0,12,26216,3,120000,0,0,0,8,0,0,0,-349.365326,1135.743896,40.712578,2.448330,'Actionlist - On action 1 - Summon Templar'),
(@Script15,9,2,0,0,0,100,0,1000,1000,0,0,70,100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Actionlist - Linked with event 0 - Respawn object /make it reappear after 100 secs/');
SET @Script16 := 18815300;
UPDATE `gameobject_template` SET `AIName`= 'SmartGameObjectAI' WHERE `entry`=188153;
DELETE FROM `smart_scripts` WHERE `source_type`=1 AND `entryorguid`=188153;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=@Script16;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(188153,1,0,0,62,0,100,0,9275,0,0,0,80,@Script16,0,0,0,0,0,1,0,0,0,0,0,0,0,'Ice Stone - On gossip option select - Run script'),
-- Script 16
(@Script16,9,0,0,0,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Actionlist - On action 0 - Close gossip'),
(@Script16,9,1,0,0,0,100,0,1000,1000,0,0,12,26216,3,120000,0,0,0,8,0,0,0,-133.914488,1199.369141,41.514484,4.365863,'Actionlist - On action 1 - Summon Templar'),
(@Script16,9,2,0,0,0,100,0,1000,1000,0,0,70,100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Actionlist - Linked with event 0 - Respawn object /make it reappear after 100 secs/');
SET @Script17 := 18815400;
UPDATE `gameobject_template` SET `AIName`= 'SmartGameObjectAI' WHERE `entry`=188154;
DELETE FROM `smart_scripts` WHERE `source_type`=1 AND `entryorguid`=188154;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=@Script17;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(188154,1,0,0,62,0,100,0,9276,0,0,0,80,@Script17,0,0,0,0,0,1,0,0,0,0,0,0,0,'Ice Stone - On gossip option select - Run script'),
-- Script 17
(@Script17,9,0,0,0,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Actionlist - On action 0 - Close gossip'),
(@Script17,9,1,0,0,0,100,0,1000,1000,0,0,12,26216,3,120000,0,0,0,8,0,0,0,-355.553406,1204.580444,40.349644,1.815675,'Actionlist - On action 1 - Summon Templar'),
(@Script17,9,2,0,0,0,100,0,1000,1000,0,0,70,100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Actionlist - Linked with event 0 - Respawn object /make it reappear after 100 secs/');
SET @Templar:= 26216;
UPDATE `creature_template` SET `mindmg`=292,`maxdmg`=362,`attackpower`=142,`baseattacktime`=2000,`resistance3`=1000,`faction_A`=168,`faction_H`=168,`minlevel`=67,`maxlevel`=67,`AIName`= 'SmartAI' WHERE `entry`=@Templar;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@Templar;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@Templar,0,0,0,0,0,100,0,1000,5000,8000,9000,11,15089,0,0,0,0,0,2,0,0,0,0,0,0,0,'Templar - IC - Cast Frost Shock'),
(@Templar,0,1,0,0,0,100,0,6000,10000,10000,12000,11,14907,0,0,0,0,0,2,0,0,0,0,0,0,0,'Templar - IC - Cast Frost Nova'),
(@Templar,0,2,0,0,0,100,0,7500,15000,15000,25000,11,5164,0,0,0,0,0,2,0,0,0,0,0,0,0,'Templar - IC - Cast Knockback'),
(@Templar,0,3,0,4,0,100,1,0,0,0,0,1,0,2000,0,0,0,0,1,0,0,0,0,0,0,0,'Templar - On aggro - Say text 0');
-- Templar texts
DELETE FROM `creature_text` WHERE `entry`= @Templar;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@Templar,0,0,'¡No conseguirás evitar que el Señor de la Escarcha entre a este mundo, mortal! ¡Aplastará a Ragnaros y así saldrá de su paraiso helado de una vez por todas!',12,0,100,1,2000,0,'Templar intro speech');
-- Add missing Twillight units for Hellfire's Twilight camp + data + SAI support
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(150304, 26222, 530, 1, 1, 0, 273, -145.864, 1132.05, 41.5023, 1.53449, 300, 30, 0, 3239, 6229, 1, 0, 0, 0),
(150305, 26222, 530, 1, 1, 0, 273, -143.941, 1162.68, 41.4552, 4.23704, 300, 30, 0, 3239, 6229, 1, 0, 0, 0),
(150306, 26222, 530, 1, 1, 0, 273, -159.973, 1194.15, 41.2539, 5.30047, 300, 30, 0, 3239, 6229, 1, 0, 0, 0),
(150307, 26222, 530, 1, 1, 0, 273, -140.188, 1196.53, 41.3586, 4.13494, 300, 30, 0, 3239, 6229, 1, 0, 0, 0),
(150308, 26222, 530, 1, 1, 0, 273, -111.405, 1132.85, 41.6071, 2.77148, 300, 30, 0, 3239, 6229, 1, 0, 0, 0),
(150309, 26222, 530, 1, 1, 0, 273, -357.383, 1135.48, 41.6245, 2.04735, 300, 30, 0, 3239, 6229, 1, 0, 0, 0),
(150310, 26222, 530, 1, 1, 0, 273, -368.085, 1156.21, 43.6638, 2.04735, 300, 30, 0, 3239, 6229, 1, 0, 0, 0),
(150311, 26222, 530, 1, 1, 0, 273, -368.382, 1184.77, 42.1961, 0.422359, 300, 30, 0, 3239, 6229, 1, 0, 0, 0),
(150312, 26222, 530, 1, 1, 0, 273, -343.397, 1204.57, 40.4944, 3.76894, 300, 30, 0, 3239, 6229, 1, 0, 0, 0),
(150313, 26222, 530, 1, 1, 0, 273, -371.037, 1107.27, 47.9595, 0.709027, 300, 30, 0, 3239, 6229, 1, 0, 0, 0),
(150314, 26222, 530, 1, 1, 0, 273, -147.599, 1102.24, 42.7401, 0.371305, 300, 30, 0, 3239, 6229, 1, 0, 0, 0),
(150315, 26223, 530, 1, 1, 0, 1623, -142.396, 1110.21, 44.0022, 4.0454, 300, 30, 0, 3997, 0, 1, 0, 0, 0),
(150316, 26223, 530, 1, 1, 0, 1623, -140.525, 1139.81, 41.4874, 3.79407, 300, 30, 0, 3997, 0, 1, 0, 0, 0),
(150317, 26223, 530, 1, 1, 0, 1623, -119.467, 1135.69, 41.4797, 5.91936, 300, 30, 0, 3997, 0, 1, 0, 0, 0),
(150318, 26223, 530, 1, 1, 0, 1623, -151.996, 1157.21, 41.473, 0.438849, 300, 30, 0, 3997, 0, 1, 0, 0, 0),
(150319, 26223, 530, 1, 1, 0, 1623, -148.783, 1193.1, 41.2043, 1.53684, 300, 30, 0, 3997, 0, 1, 0, 0, 0),
(150320, 26223, 530, 1, 1, 0, 1623, -368.17, 1110.18, 46.4436, 3.85612, 300, 30, 0, 3997, 0, 1, 0, 0, 0),
(150321, 26223, 530, 1, 1, 0, 1623, -353.873, 1148.84, 41.5226, 4.61717, 300, 30, 0, 3997, 0, 1, 0, 0, 0),
(150322, 26223, 530, 1, 1, 0, 1623, -367.485, 1169.15, 43.1463, 4.74676, 300, 30, 0, 3997, 0, 1, 0, 0, 0),
(150323, 26223, 530, 1, 1, 0, 1623, -360.011, 1195.66, 41.1995, 4.1043, 300, 30, 0, 3997, 0, 1, 0, 0, 0),
(150324, 26223, 530, 1, 1, 0, 1623, -348.858, 1207.35, 40.1246, 5.18501, 300, 30, 0, 3997, 0, 1, 0, 0, 0);
SET @Cryomancer:= 26222;
UPDATE `creature_template` SET `lootid`=19408,`pickpocketloot`=19408,`movementtype`=1,`mingold`=905,`maxgold`=905,`resistance3`=1000,`AIName`= 'SmartAI' WHERE `entry`=@Cryomancer;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@Cryomancer;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@Cryomancer,0,0,0,4,0,100,1,0,0,0,0,11,12544,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cryomancer - On aggro - Cast Frost Armor'),
(@Cryomancer,0,1,0,0,0,100,0,0,6000,3000,8000,11,9672,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cryomancer - IC - Cast Frostbolt'),
(@Cryomancer,0,2,0,0,0,100,0,6000,10000,10000,12000,11,11831,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cryomancer - IC - Cast Frost Nova'),
(@Cryomancer,0,3,0,25,0,100,0,0,0,0,0,28,12544,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cryomancer - On reset - Remove auras from frost armor');
SET @Frostblade:= 26223;
UPDATE `creature_template` SET `lootid`=19408,`pickpocketloot`=19408,`movementtype`=1,`mingold`=1039,`maxgold`=1039,`resistance3`=1000,`AIName`= 'SmartAI' WHERE `entry`=@Frostblade;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@Frostblade;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@Frostblade,0,0,0,0,0,100,0,0,1000,120000,120000,11,8599,0,0,0,0,0,1,0,0,0,0,0,0,0,'Frostblade - IC - Cast Enrage'),
(@Frostblade,0,1,0,0,0,100,0,2500,12000,5000,15000,11,23600,0,0,0,0,0,2,0,0,0,0,0,0,0,'Frostblade - IC - Cast Piercing Howl'),
(@Frostblade,0,2,0,9,0,100,0,8,25,1000,2000,11,22911,0,0,0,0,0,2,0,0,0,0,0,0,0,'Frostblade - In Range - Charge');
-- #19
-- Fix quests Incense for Summer Scorchlings and Incense for Fire Scorchlings/Add SAI support for quest end event
SET @Scorchling:= 26520;
SET @ScorchlingA:= 26401;
SET @Talespinner:= 16818;
SET @Loremaster:= 16817;
SET @Script:= 2652000;
SET @Script1:= 2640100;
-- SAI for Telespinner
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@Talespinner;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@Talespinner;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@Talespinner,0,0,0,19,0,100,0,11966,0,0,0,15,11966,0,0,0,0,0,7,0,0,0,0,0,0,0,'Festival Talespinner - On target quest accepted - Call quest complete');
-- SAI for Loremaster
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@Loremaster;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@Loremaster;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@Loremaster,0,0,0,19,0,100,0,11964,0,0,0,15,11964,0,0,0,0,0,7,0,0,0,0,0,0,0,'Festival Loremaster - On target quest accepted - Call quest complete');
-- SAI Schorchling /Horde side/
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@Scorchling;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@Scorchling;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=@Script;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@Scorchling,0,0,0,8,0,100,0,47104,0,0,0,80,@Script,0,0,0,0,0,1,0,0,0,0,0,0,0,'Festival Scorchling - On spell hit by Get Incense - Run script 00'),
(@Script,9,1,0,0,0,100,0,0,0,0,0,1,0,2000,0,0,0,0,21,3,0,0,0,0,0,0,'Actionlist - Action 1 - Say text 0'),
(@Script,9,2,0,0,0,100,0,1000,1000,0,0,1,8,1000,0,0,0,0,1,0,0,0,0,0,0,0,'Actionlist - Action 2 - Say text 8'),
(@Script,9,3,0,0,0,100,0,2000,2000,0,0,11,47114,0,0,0,0,0,1,0,0,0,0,0,0,0,'Actionlist - Action 3 - Cast grow'),
(@Script,9,4,0,0,0,100,0,0,0,0,0,1,1,2000,0,0,0,0,1,0,0,0,0,0,0,0,'Actionlist - Action 4 - Say text 1'),
(@Script,9,5,0,0,0,100,0,3000,3000,0,0,11,47114,0,0,0,0,0,1,0,0,0,0,0,0,0,'Actionlist - Action 5 - Cast grow'),
(@Script,9,6,0,0,0,100,0,0,0,0,0,1,2,2000,0,0,0,0,1,0,0,0,0,0,0,0,'Actionlist - Action 6 - Say text 2'),
(@Script,9,7,0,0,0,100,0,3000,3000,0,0,11,47114,0,0,0,0,0,1,0,0,0,0,0,0,0,'Actionlist - Action 7 - Cast grow'),
(@Script,9,8,0,0,0,100,0,0,0,0,0,1,3,2000,0,0,0,0,1,0,0,0,0,0,0,0,'Actionlist - Action 8 - Say text 3'),
(@Script,9,9,0,0,0,100,0,1000,1000,0,0,1,9,1000,0,0,0,0,1,0,0,0,0,0,0,0,'Actionlist - Action 9 - Say text 9'),
(@Script,9,10,0,0,0,100,0,2000,2000,0,0,11,47114,0,0,0,0,0,1,0,0,0,0,0,0,0,'Actionlist - Action 10 - Cast grow'),
(@Script,9,11,0,0,0,100,0,0,0,0,0,1,4,2000,0,0,0,0,1,0,0,0,0,0,0,0,'Actionlist - Action 11 - Say text 4'),
(@Script,9,12,0,0,0,100,0,3000,3000,0,0,11,47114,0,0,0,0,0,1,0,0,0,0,0,0,0,'Actionlist - Action 12 - Cast grow'),
(@Script,9,13,0,0,0,100,0,0,0,0,0,1,5,2000,0,0,0,0,1,0,0,0,0,0,0,0,'Actionlist - Action 13 - Say text 5'),
(@Script,9,14,0,0,0,100,0,3000,3000,0,0,11,47114,0,0,0,0,0,1,0,0,0,0,0,0,0,'Actionlist - Action 14 - Cast grow'),
(@Script,9,15,0,0,0,100,0,0,0,0,0,1,6,2000,0,0,0,0,1,0,0,0,0,0,0,0,'Actionlist - Action 15 - Say text 6'),
(@Script,9,16,0,0,0,100,0,0,0,0,0,11,47114,0,0,0,0,0,1,0,0,0,0,0,0,0,'Actionlist - Action 16 - Cast grow'),
(@Script,9,17,0,0,0,100,0,0,0,0,0,1,10,1000,0,0,0,0,1,0,0,0,0,0,0,0,'Actionlist - Action 17 - Say text 7'),
(@Script,9,18,0,0,0,100,0,0,0,0,0,11,45889,0,0,0,0,0,1,0,0,0,0,0,0,0,'Actionlist - Action 18 - Cast Scorchling Blast'),
(@Script,9,19,0,0,0,100,0,0,0,0,0,11,46660,0,0,0,0,0,1,0,0,0,0,0,0,0,'Actionlist - Action 19 - Cast Extinguished'),
(@Script,9,20,0,0,0,100,0,0,0,0,0,28,47114,0,0,0,0,0,1,0,0,0,0,0,0,0,'Actionlist - Action 20 - Remove aura from grow'),
(@Script,9,21,0,0,0,100,0,3000,3000,0,0,1,7,2000,0,0,0,0,1,0,0,0,0,0,0,0,'Actionlist - Action 21 - Say text 7');
-- Scorchling texts
DELETE FROM `creature_text` WHERE `entry`= @Scorchling;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@Scorchling,0,0,'Gracias de nuevo, $N, por este estupendo incienso.',12,0,100,1,1000,0,'Scorchling event with incense'),
(@Scorchling,1,0,'¡Genial! ¡Lleno de energía!',12,0,100,1,1000,0,'Scorchling event with incense'),
(@Scorchling,2,0,'¡Tiene todo lo necesario para crecer!',12,0,100,1,1000,0,'Scorchling event with incense'),
(@Scorchling,3,0,'¡Puedo sentir el poder creciendo en mi interior!',12,0,100,1,1000,0,'Scorchling event with incense'),
(@Scorchling,4,0,'¡Ahora, por fin! ¡Nuestros planes pueden funcionar!',12,0,100,1,1000,0,'Scorchling event with incense'),
(@Scorchling,5,0,'¡DE RODILLAS, MORTAL! ¡INCLINATE ANTE EL PODER DEL HERALDO DE RAGNAROS!',12,0,100,1,1000,0,'Scorchling event with incense'),
(@Scorchling,6,0,'¡TODOS ARDERÉIS BAJO MIS LLAMAS!',12,0,100,1,1000,0,'Scorchling event with incense'),
(@Scorchling,7,0,'Ah... sólo estaba bromeando...',12,0,100,1,1000,0,'Scorchling event with incense'),
(@Scorchling,8,0,'¡El agostizo del festival crece por el incienso!',16,0,100,1,1000,0,'Scorchling event with incense'),
(@Scorchling,9,0,'¡El agostizo del festival sigue creciendo gracias al calor!',16,0,100,1,1000,0,'Scorchling event with incense'),
(@Scorchling,10,0,'El agostizo del festival se quedó sin fuerza...',16,0,100,1,1000,0,'Scorchling event with incense');
-- SAI Schorchling /Alliance side/
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ScorchlingA;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ScorchlingA;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=@Script1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ScorchlingA,0,0,0,8,0,100,0,47104,0,0,0,80,@Script1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Summer Scorchling - On spell hit by Get Incense - Run script 00'),
(@Script1,9,1,0,0,0,100,0,0,0,0,0,1,0,2000,0,0,0,0,21,3,0,0,0,0,0,0,'Actionlist - Action 1 - Say text 0'),
(@Script1,9,2,0,0,0,100,0,1000,1000,0,0,1,8,1000,0,0,0,0,1,0,0,0,0,0,0,0,'Actionlist - Action 2 - Say text 8'),
(@Script1,9,3,0,0,0,100,0,2000,2000,0,0,11,47114,0,0,0,0,0,1,0,0,0,0,0,0,0,'Actionlist - Action 3 - Cast grow'),
(@Script1,9,4,0,0,0,100,0,0,0,0,0,1,1,2000,0,0,0,0,1,0,0,0,0,0,0,0,'Actionlist - Action 4 - Say text 1'),
(@Script1,9,5,0,0,0,100,0,3000,3000,0,0,11,47114,0,0,0,0,0,1,0,0,0,0,0,0,0,'Actionlist - Action 5 - Cast grow'),
(@Script1,9,6,0,0,0,100,0,0,0,0,0,1,2,2000,0,0,0,0,1,0,0,0,0,0,0,0,'Actionlist - Action 6 - Say text 2'),
(@Script1,9,7,0,0,0,100,0,3000,3000,0,0,11,47114,0,0,0,0,0,1,0,0,0,0,0,0,0,'Actionlist - Action 7 - Cast grow'),
(@Script1,9,8,0,0,0,100,0,0,0,0,0,1,3,2000,0,0,0,0,1,0,0,0,0,0,0,0,'Actionlist - Action 8 - Say text 3'),
(@Script1,9,9,0,0,0,100,0,1000,1000,0,0,1,9,1000,0,0,0,0,1,0,0,0,0,0,0,0,'Actionlist - Action 9 - Say text 9'),
(@Script1,9,10,0,0,0,100,0,2000,2000,0,0,11,47114,0,0,0,0,0,1,0,0,0,0,0,0,0,'Actionlist - Action 10 - Cast grow'),
(@Script1,9,11,0,0,0,100,0,0,0,0,0,1,4,2000,0,0,0,0,1,0,0,0,0,0,0,0,'Actionlist - Action 11 - Say text 4'),
(@Script1,9,12,0,0,0,100,0,3000,3000,0,0,11,47114,0,0,0,0,0,1,0,0,0,0,0,0,0,'Actionlist - Action 12 - Cast grow'),
(@Script1,9,13,0,0,0,100,0,0,0,0,0,1,5,2000,0,0,0,0,1,0,0,0,0,0,0,0,'Actionlist - Action 13 - Say text 5'),
(@Script1,9,14,0,0,0,100,0,3000,3000,0,0,11,47114,0,0,0,0,0,1,0,0,0,0,0,0,0,'Actionlist - Action 14 - Cast grow'),
(@Script1,9,15,0,0,0,100,0,0,0,0,0,1,6,2000,0,0,0,0,1,0,0,0,0,0,0,0,'Actionlist - Action 15 - Say text 6'),
(@Script1,9,16,0,0,0,100,0,0,0,0,0,11,47114,0,0,0,0,0,1,0,0,0,0,0,0,0,'Actionlist - Action 16 - Cast grow'),
(@Script1,9,17,0,0,0,100,0,0,0,0,0,1,10,1000,0,0,0,0,1,0,0,0,0,0,0,0,'Actionlist - Action 17 - Say text 7'),
(@Script1,9,18,0,0,0,100,0,0,0,0,0,11,45889,0,0,0,0,0,1,0,0,0,0,0,0,0,'Actionlist - Action 18 - Cast Scorchling Blast'),
(@Script1,9,19,0,0,0,100,0,0,0,0,0,11,46660,0,0,0,0,0,1,0,0,0,0,0,0,0,'Actionlist - Action 19 - Cast Extinguished'),
(@Script1,9,20,0,0,0,100,0,0,0,0,0,28,47114,0,0,0,0,0,1,0,0,0,0,0,0,0,'Actionlist - Action 20 - Remove aura from grow'),
(@Script1,9,21,0,0,0,100,0,3000,3000,0,0,1,7,2000,0,0,0,0,1,0,0,0,0,0,0,0,'Actionlist - Action 21 - Say text 7');
-- Scorchling texts /Alliance/
DELETE FROM `creature_text` WHERE `entry`= @ScorchlingA;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ScorchlingA,0,0,'Gracias de nuevo, $N, por este estupendo incienso.',12,0,100,1,1000,0,'Scorchling event with incense'),
(@ScorchlingA,1,0,'¡Genial! ¡Lleno de energía!',12,0,100,1,1000,0,'Scorchling event with incense'),
(@ScorchlingA,2,0,'¡Tiene todo lo necesario para crecer!',12,0,100,1,1000,0,'Scorchling event with incense'),
(@ScorchlingA,3,0,'¡Puedo sentir el poder creciendo en mi interior!',12,0,100,1,1000,0,'Scorchling event with incense'),
(@ScorchlingA,4,0,'¡Ahora, por fin! ¡Nuestros planes pueden funcionar!',12,0,100,1,1000,0,'Scorchling event with incense'),
(@ScorchlingA,5,0,'¡DE RODILLAS, MORTAL! ¡INCLINATE ANTE EL PODER DEL HERALDO DE RAGNAROS!',12,0,100,1,1000,0,'Scorchling event with incense'),
(@ScorchlingA,6,0,'¡TODOS ARDERÉIS BAJO MIS LLAMAS!',12,0,100,1,1000,0,'Scorchling event with incense'),
(@ScorchlingA,7,0,'Ah... sólo estaba bromeando...',12,0,100,1,1000,0,'Scorchling event with incense'),
(@ScorchlingA,8,0,'¡El festival del solsticio en voraz! ¡No me queda nada de incienso!',16,0,100,1,1000,0,'Scorchling event with incense'),
(@ScorchlingA,9,0,'¡El festival del solsticio es una risa! ¡Hasta yo tengo calor aquí!',16,0,100,1,1000,0,'Scorchling event with incense'),
(@ScorchlingA,10,0,'El festival del solsticio... desparecerá...',16,0,100,1,1000,0,'Scorchling event with incense');
-- Add conditions for Scorchling Gets Incense spell
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=47104;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition` ,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,47104,0,1,31,0,3,26520,0,0,0,'','Scorching gets incense can only hit Scorchling /Horde side/'),
(13,1,47104,0,2,31,0,3,26401,0,0,0,'','Scorching gets incense can only hit Scorchling /Alliance side/');


-- Hordes's Honor the Flame
-- Add missing creature_quesrelation and involvedrealation that were blocking quests
-- The Flame Keeper of Kalimdore - {Achievement=1026}
DELETE FROM `creature_questrelation` WHERE `quest` IN (11846,11845,11852,11839,11859,11841);
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES
(25929, 11846), -- Durotar
(25928, 11845), -- Desolace
(25936, 11852), -- Mulgore
(25922, 11839), -- Winterspring
(25943, 11859), -- Barrens
(25884, 11841); -- Ashenvale
DELETE FROM `creature_involvedrelation` WHERE `quest` IN (11846,11845,11852,11839,11859,11841);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES
(25929, 11846), -- Durotar
(25928, 11845), -- Desolace
(25936, 11852), -- Mulgore
(25922, 11839), -- Winterspring
(25943, 11859), -- Barrens
(25884, 11841); -- Ashenvale
UPDATE `quest_template` SET `RewardOrRequiredMoney`=37000,`RewardMoneyMaxLevel`=66300, `OfferRewardText`='¡Honrar la llama de Durotar!' WHERE `Id`=11846;
UPDATE `quest_template` SET `OfferRewardText`='¡Honrar la llama de Mulgore!' WHERE `Id`=11852;
UPDATE `quest_template` SET `OfferRewardText`='¡Honrar la llama de los Baldios!',`RewardOrRequiredMoney`=37000, `RewardMoneyMaxLevel`=66300 WHERE `Id`=11859; -- Barrens
UPDATE `quest_template` SET `OfferRewardText`='¡Honrar la llama de Tanaris!',`RequestItemsText`='' WHERE `Id`=11838 LIMIT 1;
UPDATE `quest_template` SET `OfferRewardText`='¡Honrar la llama de Vallefresno!' WHERE `Id`=11841;
UPDATE `quest_template` SET `OfferRewardText`='¡Honrar la llama de Cuna de Invierno!' WHERE `Id`=11839;
UPDATE `quest_template` SET `OfferRewardText`='¡Honrar la llama de Desolace!' WHERE `Id`=11845;
UPDATE `quest_template` SET `OfferRewardText`='¡Honrar la llama de Mil Agujas!' WHERE `Id`=11861;
UPDATE `quest_template` SET `OfferRewardText`='¡Honrar la llama de Feralas!' WHERE `Id`=11849;
UPDATE `quest_template` SET `OfferRewardText`='¡Honrar la llama de Marjal Revolcafango!' WHERE `Id`=11847;
UPDATE `quest_template` SET `OfferRewardText`='¡Honrar la llama de Silithus!' WHERE `Id`=11836;
UPDATE `quest_template` SET `OfferRewardText`='¡Honrar la llama de Sierra Espolón!' WHERE `Id`=11856;

-- The Falme Keeper of Outland - {Achievement=1027}
DELETE FROM `creature_questrelation` WHERE `quest` IN (11851,11855,11835,11858,11863);
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES
(25934, 11851), -- Hellfire Peninsula
(25938, 11855), -- Shadowmoon Valley
(25918, 11835), -- Netherstorm
(25942, 11858), -- Terokkar
(25947, 11863); -- Terokkar
DELETE FROM `creature_involvedrelation` WHERE `quest` IN (11851,11855,11835,11858,11863);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES
(25934, 11851), -- Hellfire Peninsula
(25938, 11855), -- Shadowmoon Valley
(25918, 11835), -- Netherstorm
(25942, 11858), -- Terokkar
(25947, 11863); -- Terokkar
UPDATE `quest_template` SET `OfferRewardText`='¡Honrar la llama de Península de Fuego!' WHERE `Id`=11851;
UPDATE `quest_template` SET `OfferRewardText`='¡Honrar la llama de Sombraluna!' WHERE `Id`=11855;
UPDATE `quest_template` SET `OfferRewardText`='¡Honrar la llama de Nagrand!', `RequestItemsText`='' WHERE `Id`=11821;
UPDATE `quest_template` SET `OfferRewardText`='¡Honrar la llama de Tormenta Abisal!' WHERE `Id`=11835;
UPDATE `quest_template` SET `OfferRewardText`='¡Honrar la llama de Filoespada! ', `RequestItemsText`='' WHERE `Id`=11843;
UPDATE `quest_template` SET `OfferRewardText`='¡Honrar la llama de Terrokar!' WHERE `Id`=11858;
UPDATE `quest_template` SET `OfferRewardText`='¡Honrar la llama de Marismas de Zangar!' WHERE `Id`=11863;

-- Flame Keeper of Northrend - {Achievement=6009}
DELETE FROM `creature_questrelation` WHERE `quest` IN (13500,13493,13494,13495,13496,13497,13498,13499);
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES
(32816, 13500), -- Zul'Drak
(32809, 13493), -- Borean Tundra
(32810, 13494), -- Sholazar Basin
(32811, 13495), -- Dragonblight
(32815, 13499), -- Crystalsong Forest
(32814, 13498), -- Storm Peaks
(32813, 13497), -- Grizzly Hills
(32812, 13496); -- Howling Fjords
DELETE FROM `creature_involvedrelation` WHERE `quest` IN (13500,13493,13494,13495,13496,13497,13498,13499);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES
(32816, 13500), -- Zul'Drak
(32809, 13493), -- Borean Tundra
(32810, 13494), -- Sholazar Basin
(32811, 13495), -- Dragonblight
(32815, 13499), -- Crystalsong Forest
(32814, 13498), -- Storm Peaks
(32813, 13497), -- Grizzly Hills
(32812, 13496); -- Howling Fjords
UPDATE `quest_template` SET `OfferRewardText`='¡Honrar la llama de ZulDrak!' WHERE `Id`=13500;
UPDATE `quest_template` SET `OfferRewardText`='¡Honrar la llama de Tundra Boreal!' WHERE `Id`=13493;
UPDATE `quest_template` SET `OfferRewardText`='¡Honrar la llama de Cuenca de Solozar!' WHERE `Id`=13494;
UPDATE `quest_template` SET `OfferRewardText`='¡Honrar la llama de Cementerio de Dragones!' WHERE `Id`=13495;
UPDATE `quest_template` SET `OfferRewardText`='¡Honrar la llama de Bosque Canto de Cristal!' WHERE `Id`=13499;
UPDATE `quest_template` SET `OfferRewardText`='¡Honrar la llama de Cumbres Tormentosas!' WHERE `Id`=13498;
UPDATE `quest_template` SET `OfferRewardText`='¡Honrar la llama de Colinas Pardas!' WHERE `Id`=13497;
UPDATE `quest_template` SET `OfferRewardText`='¡Honrar la llama de Firodo Aquilonal!' WHERE `Id`=13496;

-- Flame Keeper of Eastern Kingdom? {Achievement=1025}
DELETE FROM `creature_questrelation` WHERE `quest` IN (11850,11848,11853,11857,11837,11844,11860,11584,11862,11842,11840);
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES
(25933, 11850), -- Ghostland
(25931, 11848), -- Eversong woods
(25935, 11853), -- Hillsbrad Foothills
(25941, 11857), -- Swamp of sorrows
(25920, 11837), -- Cape of Stranglethorn
(25927, 11844), -- Burning Steppes
(25944, 11860), -- The Hinterlands
(25939, 11584), -- Silverpine Forest
(25946, 11862), -- Tirisfal Glades
(25925, 11842), -- Badlands
(25923, 11840); -- Arathi Highlands
DELETE FROM `creature_involvedrelation` WHERE `quest` IN (11850,11848,11853,11857,11837,11844,11860,11584,11862,11842,11840);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES
(25933, 11850), -- Ghostland
(25931, 11848), -- Eversong woods
(25935, 11853), -- Hillsbrad Foothills
(25941, 11857), -- Swamp of sorrows
(25920, 11837), -- Cape of Stranglethorn
(25927, 11844), -- Burning Steppes
(25944, 11860), -- The Hinterlands
(25939, 11584), -- Silverpine Forest
(25946, 11862), -- Tirisfal Glades
(25925, 11842), -- Badlands
(25923, 11840); -- Arathi Highlands
UPDATE `quest_template` SET `OfferRewardText`='¡Honrar la llama de Tierras Fantasma!' WHERE `Id`=11850;
UPDATE `quest_template` SET `OfferRewardText`='¡Honrar la llama de Bosque Canción Eterna!' WHERE `Id`=11848;
UPDATE `quest_template` SET `OfferRewardText`='¡Honrar la llama de Laderas de Trabalomas!' WHERE `Id`=11853;
UPDATE `quest_template` SET `OfferRewardText`='¡Honrar la llama de Pantano de las Penas!' WHERE `Id`=11857;
UPDATE `quest_template` SET `OfferRewardText`='¡Honrar la llama de Tuercespina!' WHERE `Id`=11837;
UPDATE `quest_template` SET `OfferRewardText`='¡Honrar la llama de Estepas Ardientes!' WHERE `Id`=11844;
UPDATE `quest_template` SET `OfferRewardText`='¡Honrar la llama de Tierras del Interior!' WHERE `Id`=11860;
UPDATE `quest_template` SET `OfferRewardText`='¡Honrar la llama de Bosque de Argéntos!' WHERE `Id`=11584;
UPDATE `quest_template` SET `OfferRewardText`='¡Honrar la llama de Claros de Tirisfal!' WHERE `Id`=11862;
UPDATE `quest_template` SET `OfferRewardText`='¡Honrar la llama de Tierras inhóspitas!' WHERE `Id`=11842;
UPDATE `quest_template` SET `OfferRewardText`='¡Honrar la llama de Arathi!' WHERE `Id`=11840;
INSERT INTO `game_event_gameobject` (`eventEntry`, `guid`) VALUES
(1,164258),
(1,164282),
(1,164283),
(1,164308),
(1,164309),
(1,164310),
(1,164311),
(1,164381),
(1,164383),
(1,164384),
(1,164385),
(1,164386),
(1,164388),
(1,164414),
(1,164415),
(1,164416),
(1,164420),
(1,164421),
(1,164422),
(1,164423),
(1,164424),
(1,164425),
(1,164426),
(1,164427),
(1,164429),
(1,164430),
(1,164431),
(1,164432),
(1,164434),
(1,164435),
(1,164459),
(1,164460),
(1,164461),
(1,164462),
(1,164463),
(1,164464),
(1,164466),
(1,164468),
(1,164470),
(1,164473),
(1,164474),
(1,164476),
(1,164479),
(1,164480),
(1,164481),
(1,164482),
(1,164483),
(1,164507),
(1,164509),
(1,164510),
(1,164511),
(1,164512),
(1,164513),
(1,164514),
(1,164515),
(1,164516),
(1,164517),
(1,164518),
(1,164519),
(1,164520),
(1,164521),
(1,164522),
(1,164524),
(1,164525),
(1,164527),
(1,164528),
(1,164529),
(1,164530),
(1,164531),
(1,164532),
(1,164534),
(1,164535),
(1,164536),
(1,164537),
(1,164538),
(1,164539),
(1,164540),
(1,165334),
(1,164564),
(1,164565),
(1,164566),
(1,164567),
(1,164568),
(1,164571),
(1,164572),
(1,164573),
(1,164575),
(1,164577),
(1,164578),
(1,164579),
(1,164580),
(1,164581),
(1,164582),
(1,164583),
(1,164584),
(1,164608),
(1,164609),
(1,164610),
(1,164612),
(1,164613),
(1,164614),
(1,164615),
(1,164616),
(1,164617),
(1,164618),
(1,164620),
(1,164621),
(1,164622),
(1,164623),
(1,164624),
(1,164625),
(1,164626),
(1,164628),
(1,164629),
(1,164630),
(1,164631),
(1,164632),
(1,164633),
(1,164634),
(1,164635),
(1,164638),
(1,164639),
(1,164640),
(1,164641),
(1,164642),
(1,164643),
(1,164644),
(1,164668),
(1,164670),
(1,165359),
(1,164672),
(1,164673),
(1,164674),
(1,164675),
(1,164676),
(1,164677),
(1,164678),
(1,164679),
(1,164680),
(1,164681),
(1,164682),
(1,164683),
(1,164727),
(1,164728),
(1,164729),
(1,164730),
(1,164731),
(1,164732),
(1,164733),
(1,164735),
(1,164736),
(1,164737),
(1,164738),
(1,164739),
(1,164740),
(1,164741),
(1,164742),
(1,211540),
(1,211541),
(1,211542),
(1,211543),
(1,211544),
(1,211545),
(1,211546),
(1,164707),
(1,164708),
(1,164711),
(1,164712),
(1,164713),
(1,164714),
(1,164715),
(1,164716),
(1,164717),
(1,164718),
(1,164719),
(1,164720),
(1,164721),
(1,164722),
(1,164723),
(1,164726),
(1,164766),
(1,164767),
(1,164768),
(1,164769),
(1,164770),
(1,164771),
(1,164772),
(1,164773),
(1,164774),
(1,164775),
(1,164776),
(1,164778),
(1,164779),
(1,164780),
(1,164781),
(1,164783),
(1,164784),
(1,164785),
(1,164786),
(1,164787),
(1,164788),
(1,164812),
(1,164813),
(1,164814),
(1,164815),
(1,164816),
(1,164817),
(1,164818),
(1,164819),
(1,164820),
(1,164821),
(1,164822),
(1,164823),
(1,164825),
(1,164826),
(1,164827),
(1,165383),
(1,165384),
(1,164852),
(1,164853),
(1,164854),
(1,164855),
(1,164856),
(1,164857),
(1,164858),
(1,164859),
(1,164861),
(1,164862),
(1,164863),
(1,164864),
(1,164865),
(1,164866),
(1,164867),
(1,164868),
(1,164869),
(1,164870),
(1,164894),
(1,164895),
(1,164896),
(1,164897),
(1,164898),
(1,164899),
(1,164900),
(1,164901),
(1,164902),
(1,164903),
(1,164904),
(1,164905),
(1,164906),
(1,164907),
(1,164908),
(1,164909),
(1,164910),
(1,164911),
(1,164913),
(1,164914),
(1,164915),
(1,164916),
(1,164917),
(1,164918),
(1,164919),
(1,164920),
(1,164921),
(1,164922),
(1,164923),
(1,164924),
(1,164974),
(1,164975),
(1,164976),
(1,164977),
(1,164978),
(1,164979),
(1,164980),
(1,164981),
(1,164982),
(1,164983),
(1,164984),
(1,164985),
(1,165408),
(1,165034),
(1,165038),
(1,165039),
(1,165040),
(1,165041),
(1,165042),
(1,165043),
(1,165044),
(1,165045),
(1,165046),
(1,165047),
(1,165048),
(1,165049),
(1,165050),
(1,165051),
(1,165052),
(1,165053),
(1,165054),
(1,165055),
(1,165056),
(1,165057),
(1,165058),
(1,165059),
(1,165060),
(1,165062),
(1,165063),
(1,165064),
(1,165066),
(1,165067),
(1,165068),
(1,165069),
(1,165070),
(1,165071),
(1,165072),
(1,165074),
(1,165075),
(1,165077),
(1,165078),
(1,165079),
(1,165080),
(1,165081),
(1,165105),
(1,165106),
(1,165107),
(1,165108),
(1,165109),
(1,165110),
(1,165111),
(1,165009),
(1,165010),
(1,165012),
(1,165013),
(1,165014),
(1,165015),
(1,165016),
(1,165019),
(1,165020),
(1,165021),
(1,165022),
(1,165023),
(1,165024),
(1,165025),
(1,165026),
(1,165027),
(1,165028),
(1,165029),
(1,165030),
(1,165031),
(1,165032),
(1,165033),
(1,165112),
(1,165115),
(1,165116),
(1,165117),
(1,165118),
(1,165119),
(1,165120),
(1,165121),
(1,165145),
(1,165146),
(1,165147),
(1,165148),
(1,165149),
(1,165150),
(1,165151),
(1,165152),
(1,165153),
(1,165154),
(1,165156),
(1,165157),
(1,165160),
(1,165161),
(1,165162),
(1,165163),
(1,165164),
(1,165165),
(1,165166),
(1,165167),
(1,165168),
(1,165169),
(1,165170),
(1,165171),
(1,165172),
(1,165173),
(1,165174),
(1,165175),
(1,165176),
(1,165358),
(1,165177),
(1,165178),
(1,165179),
(1,165180),
(1,165181),
(1,165182),
(1,165183),
(1,165184),
(1,165185),
(1,165186),
(1,165187),
(1,165188),
(1,165189),
(1,165190),
(1,165191),
(1,165192),
(1,165193),
(1,165194),
(1,165195),
(1,165196),
(1,165197),
(1,165198),
(1,165199),
(1,165200),
(1,165201),
(1,165202),
(1,165203),
(1,165204),
(1,165205),
(1,165206),
(1,165208),
(1,165209),
(1,165210),
(1,165211),
(1,165212),
(1,165213),
(1,165214),
(1,165215),
(1,165216),
(1,165217),
(1,165218),
(1,165219),
(1,165220),
(1,165221),
(1,165222),
(1,165223),
(1,165224),
(1,165225),
(1,165226),
(1,165227),
(1,165229),
(1,165230),
(1,165231),
(1,165232),
(1,165233),
(1,165234),
(1,165235),
(1,165236),
(1,165237),
(1,165238),
(1,165239),
(1,165240),
(1,165241),
(1,165242),
(1,165243),
(1,165244),
(1,165245),
(1,165246),
(1,165247),
(1,165248),
(1,165249),
(1,165250),
(1,165251),
(1,165252),
(1,165253),
(1,165254),
(1,165255),
(1,165256),
(1,165257),
(1,165259),
(1,165260),
(1,165409),
(1,165410),
(1,165411),
(1,49313),
(1,165412),
(1,165413),
(1,165414),
(1,165415),
(1,165416),
(1,165417),
(1,165418),
(1,165419),
(1,165420),
(1,165421),
(1,165422),
(1,165423),
(1,165424),
(1,165425),
(1,165426),
(1,165427),
(1,165428),
(1,165429),
(1,165430),
(1,165431),
(1,165432),
(1,165433),
(1,165434),
(1,165435),
(1,165436),
(1,165437),
(1,165438),
(1,165439),
(1,165440),
(1,165441),
(1,165442),
(1,165443),
(1,165444),
(1,165445),
(1,165446),
(1,165447),
(1,165448),
(1,165449),
(1,165450),
(1,165451),
(1,165452),
(1,165453),
(1,165454),
(1,165455),
(1,165456),
(1,165457),
(1,165458),
(1,165459),
(1,165460),
(1,165461),
(1,165462),
(1,165463),
(1,165464),
(1,165465),
(1,165466),
(1,165467),
(1,165468),
(1,165469),
(1,165470),
(1,165471),
(1,165472),
(1,165473),
(1,165474),
(1,165475),
(1,165476),
(1,165477),
(1,165478),
(1,165479),
(1,165480),
(1,165481),
(1,165482),
(1,165483),
(1,165484),
(1,165485),
(1,165509),
(1,165510),
(1,165511),
(1,165512),
(1,165513),
(1,165514),
(1,165515),
(1,165516),
(1,165517),
(1,165518),
(1,165519),
(1,165520),
(1,165521),
(1,165522),
(1,165523),
(1,165524),
(1,165525),
(1,165550),
(1,165551),
(1,165552),
(1,165553),
(1,165554),
(1,165555),
(1,165556),
(1,165557),
(1,165581),
(1,165582),
(1,165583),
(1,165607),
(1,165608),
(1,165609),
(1,165610),
(1,165612),
(1,165613),
(1,165614),
(1,165615),
(1,165616),
(1,165617),
(1,165618),
(1,165677),
(1,165678),
(1,165679),
(1,165680),
(1,165681),
(1,165682),
(1,165683),
(1,165684),
(1,165685),
(1,165686),
(1,165687),
(1,165688),
(1,165689),
(1,165690),
(1,165691),
(1,165715),
(1,165723),
(1,165747),
(1,165748),
(1,165749),
(1,165773),
(1,165774),
(1,165800),
(1,165801),
(1,165802),
(1,165803),
(1,165827),
(1,165828),
(1,165829),
(1,165830),
(1,165831),
(1,165832),
(1,165833),
(1,165834),
(1,165835),
(1,165837),
(1,165838),
(1,165839),
(1,165840),
(1,165841),
(1,165842),
(1,165843),
(1,165844),
(1,165845),
(1,165846),
(1,165847),
(1,165848),
(1,165849),
(1,165850),
(1,165851),
(1,165852),
(1,165853),
(1,165854),
(1,165855),
(1,165856),
(1,165857),
(1,165858),
(1,165859),
(1,165860),
(1,165862),
(1,165886),
(1,165887),
(1,165888),
(1,165889),
(1,165890),
(1,165914),
(1,165915),
(1,165916),
(1,165917),
(1,165918),
(1,165919),
(1,165920),
(1,165921),
(1,165922),
(1,165923),
(1,165924),
(1,165925),
(1,165926),
(1,165951),
(1,165952),
(1,165953),
(1,165954),
(1,165955),
(1,165956),
(1,165957),
(1,165958),
(1,165959),
(1,165960),
(1,165961),
(1,165962),
(1,165963),
(1,165964);
INSERT INTO `game_event_creature` (`eventEntry`, `guid`) VALUES
(1,150000),
(1,150001),
(1,150002),
(1,150003),
(1,150004),
(1,150005),
(1,150006),
(1,150007),
(1,150008),
(1,150009),
(1,150010),
(1,150011),
(1,150012),
(1,150013),
(1,150014),
(1,150015),
(1,150016),
(1,150017),
(1,150018),
(1,150019),
(1,150020),
(1,150021),
(1,150022),
(1,150023),
(1,150024),
(1,150025),
(1,150026),
(1,150027),
(1,150028),
(1,150029),
(1,150030),
(1,150031),
(1,150032),
(1,150033),
(1,150034),
(1,150035),
(1,150036),
(1,150037),
(1,150038),
(1,150039),
(1,150040),
(1,150041),
(1,150042),
(1,150043),
(1,150044),
(1,150045),
(1,150046),
(1,150047),
(1,150048),
(1,150049),
(1,150050),
(1,150051),
(1,150052),
(1,150053),
(1,150054),
(1,150055),
(1,150056),
(1,150057),
(1,150058),
(1,150059),
(1,150060),
(1,150061),
(1,150062),
(1,150063),
(1,150064),
(1,150065),
(1,150066),
(1,150067),
(1,150068),
(1,150069),
(1,150070),
(1,150071),
(1,150072),
(1,150073),
(1,150074),
(1,150075),
(1,150076),
(1,150077),
(1,150078),
(1,150079),
(1,150080),
(1,150081),
(1,150082),
(1,150083),
(1,150084),
(1,150085),
(1,150086),
(1,150087),
(1,150088),
(1,150089),
(1,150090),
(1,150091),
(1,150092),
(1,150093),
(1,150094),
(1,150095),
(1,150096),
(1,150097),
(1,150098),
(1,150099),
(1,150100),
(1,150101),
(1,150102),
(1,150103),
(1,150104),
(1,150105),
(1,150106),
(1,150107),
(1,150108),
(1,150109),
(1,150110),
(1,150111),
(1,150112),
(1,150113),
(1,150114),
(1,150115),
(1,150116),
(1,150117),
(1,150118),
(1,150119),
(1,150120),
(1,150121),
(1,150122),
(1,150123),
(1,150124),
(1,150125),
(1,150126),
(1,150127),
(1,150128),
(1,150129),
(1,150130),
(1,150131),
(1,150132),
(1,150133),
(1,150134),
(1,150135),
(1,150136),
(1,150137),
(1,150138),
(1,150139),
(1,150140),
(1,150141),
(1,150142),
(1,150143),
(1,150144),
(1,150145),
(1,150146),
(1,150147),
(1,150148),
(1,150149),
(1,150150),
(1,150151),
(1,150152),
(1,150153),
(1,150154),
(1,150155),
(1,150156),
(1,150157),
(1,150158),
(1,150159),
(1,150160),
(1,150161),
(1,150162),
(1,150163),
(1,150164),
(1,150165),
(1,150166),
(1,150167),
(1,150168),
(1,150169),
(1,150170),
(1,150171),
(1,150172),
(1,150173),
(1,150174),
(1,150175),
(1,150176),
(1,150177),
(1,150178),
(1,150179),
(1,150180),
(1,150181),
(1,150182),
(1,150183),
(1,150184),
(1,150185),
(1,150186),
(1,150187),
(1,150188),
(1,150189),
(1,150190),
(1,150191),
(1,150192),
(1,150193),
(1,150194),
(1,150195),
(1,150196),
(1,150197),
(1,150198),
(1,150199),
(1,150200),
(1,150201),
(1,150202),
(1,150203),
(1,150204),
(1,150205),
(1,150206),
(1,150207),
(1,150208),
(1,150209),
(1,150210),
(1,150211),
(1,150212),
(1,150213),
(1,150214),
(1,150215),
(1,150216),
(1,150217),
(1,150218),
(1,150219),
(1,150220),
(1,150221),
(1,150222),
(1,150223),
(1,150224),
(1,150225),
(1,150226),
(1,150227),
(1,150228),
(1,150229),
(1,150230),
(1,150231),
(1,150232),
(1,150233),
(1,150234),
(1,150235),
(1,150236),
(1,150237),
(1,150238),
(1,150239),
(1,150240),
(1,150241),
(1,150242),
(1,150243),
(1,150244),
(1,150245),
(1,150246),
(1,150247),
(1,150248),
(1,150249),
(1,150250),
(1,150251),
(1,150252),
(1,150253),
(1,150254),
(1,150255),
(1,150256),
(1,150257),
(1,150258),
(1,150259),
(1,150260),
(1,150261),
(1,150262),
(1,150263),
(1,150264),
(1,150265),
(1,150266),
(1,150267),
(1,150268),
(1,150269),
(1,150270),
(1,150271),
(1,150272),
(1,150273),
(1,150274),
(1,150275),
(1,150276),
(1,150277),
(1,150278),
(1,150279),
(1,150280),
(1,150281),
(1,150282),
(1,150283),
(1,150284),
(1,150285),
(1,150286),
(1,150287),
(1,150288),
(1,150289),
(1,150290),
(1,150291),
(1,150292),
(1,150293),
(1,150294),
(1,150295),
(1,150296),
(1,150297),
(1,150298),
(1,150299),
(1,150300),
(1,150301),
(1,150302),
(1,150303),
(1,150304),
(1,150305),
(1,150306),
(1,150307),
(1,150308),
(1,150309),
(1,150310),
(1,150311),
(1,150312),
(1,150313),
(1,150314),
(1,150315),
(1,150316),
(1,150317),
(1,150318),
(1,150319),
(1,150320),
(1,150321),
(1,150322),
(1,150323),
(1,150324),
(1,267731),
(1,267971),
(1,267975),
(1,267977),
(1,267979),
(1,267980),
(1,267981),
(1,267982),
(1,267452),
(1,267467),
(1,267471),
(1,267462),
(1,267463),
(1,267455),
(1,267456),
(1,267457),
(1,267475),
(1,267476),
(1,267459),
(1,267460),
(1,267461),
(1,267464),
(1,267465),
(1,267466),
(1,267469),
(1,267451),
(1,267458),
(1,267470),
(1,267472),
(1,267453),
(1,267454),
(1,267473),
(1,267474),
(1,267478),
(1,267479),
(1,267480),
(1,267481),
(1,267482),
(1,267483),
(1,267484),
(1,267485),
(1,267486),
(1,267487),
(1,267489),
(1,267490),
(1,267488),
(1,267468),
(1,267477),
(1,150381),
(1,150380),
(1,150379),
(1,150378),
(1,150377),
(1,150376),
(1,150375),
(1,150374),
(1,150373),
(1,150372),
(1,150371),
(1,150370),
(1,150369),
(1,150368),
(1,150367),
(1,150366),
(1,150365),
(1,150364),
(1,150363),
(1,150362),
(1,150361),
(1,150360),
(1,150359),
(1,150358),
(1,150357),
(1,150356),
(1,150355),
(1,150354),
(1,150353),
(1,150352),
(1,150351),
(1,150350),
(1,150349),
(1,150348),
(1,150347),
(1,150346),
(1,150345),
(1,150344),
(1,150343),
(1,150342),
(1,150341),
(1,150340),
(1,150339),
(1,150338),
(1,150337),
(1,150336),
(1,150335),
(1,150334),
(1,150333),
(1,150332),
(1,150331),
(1,150330),
(1,150329),
(1,150328),
(1,150327),
(1,150326),
(1,150325),
(1,150382),
(1,150383),
(1,150384),
(1,150385),
(1,150386),
(1,150387),
(1,150388),
(1,150389),




(1,150525),
(1,150521),
(1,150523),
(1,150519),
(1,150517),
(1,150514),
(1,150512),
(1,150511),
(1,150508),
(1,150507),
(1,150506),
(1,150504),
(1,150502),
(1,150500),
(1,150498),
(1,150497),
(1,150495),
(1,150493),
(1,150491),
(1,150489),
(1,150487),
(1,150485),
(1,150483),
(1,150481),
(1,150479),
(1,150477),
(1,150475),
(1,150473),
(1,150471),
(1,150469),
(1,150467),
(1,150465),
(1,150463),
(1,150461),
(1,150459),
(1,150457),
(1,150455),
(1,150453),
(1,150451),
(1,150449),
(1,150447),
(1,150445),
(1,150443),
(1,150441),
(1,150439),
(1,150437),
(1,150435),
(1,150433),
(1,150431),
(1,150429),
(1,150427),
(1,150425),
(1,150423),
(1,150422),
(1,150420),
(1,150418),
(1,150416),
(1,150415),
(1,150413),
(1,150411),
(1,150409),
(1,150406),
(1,150404),
(1,150403),
(1,150400),
(1,150398),
(1,150397),
(1,150394),
(1,150393),
(1,150392),
(1,150526),
(1,150528),
(1,150530),
(1,150532),
(1,150534),
(1,150536),
(1,150462),
(1,150460),
(1,150458),
(1,150456),
(1,150454),
(1,150452),
(1,150450),
(1,150448),
(1,150446),
(1,150444),
(1,150442),
(1,150440),
(1,150438),
(1,150436),
(1,150434),
(1,150432),
(1,150430),
(1,150428),
(1,150426),
(1,150424),
(1,150421),
(1,150419),
(1,150417),
(1,150414),
(1,150412),
(1,150410),
(1,150408),
(1,150407),
(1,150405),
(1,150402),
(1,150401),
(1,150399),
(1,150396),
(1,150395),
(1,150391),
(1,150522),
(1,150524),
(1,150520),
(1,150518),
(1,150516),
(1,150515),
(1,150513),
(1,150510),
(1,150509),
(1,150505),
(1,150503),
(1,150501),
(1,150499),
(1,150496),
(1,150494),
(1,150492),
(1,150490),
(1,150488),
(1,150486),
(1,150484),
(1,150482),
(1,150480),
(1,150478),
(1,150476),
(1,150474),
(1,150472),
(1,150470),
(1,150468),
(1,150466),
(1,150464),
(1,150527),
(1,150529),
(1,150531),
(1,150533),
(1,150535),
(1,150537),
(1,150390),
(1,150538),
(1,150539),
(1,150540),
(1,150541),
(1,150542),
(1,150543),
(1,150544),
(1,150545),
(1,150546),
(1,150547),
(1,150548),
(1,150549),
(1,150550),
(1,150551),
(1,150552),
(1,150553),
(1,150554),
(1,150555),
(1,150556),
(1,150557),
(1,150558),
(1,150559),
(1,150560);

-- #1) Add all quests connected with Midsummer Fire Festival that are to be reseted on each next year to game_event_seasonal_questrelation, so players can complete them on and on... /as of different festivals/.
DELETE FROM `game_event_seasonal_questrelation` WHERE `questId` IN (11846,11845,11852,11839,11859,11841,11849,11861,11847,11836,11838,11856,11850,11848,11853,11857,11837,11844,11860,11584,11862,11842,11840,11851,11855,11835,11858,11863,11821,11854,11843,13500,13493,13494,13495,13496,13497,13498,13499,11805,11812,11815,11834,11833,11831,11817,11811,11806,11809,11826,11824,11826,11827,11819,11583,11828,11816,11810,11808,11804,11832,11813,11814,11820,11822,11823,11821,11830,11818,11825,11807,11829,13485,13487,13489,13488,13490,13486,13491,13492,11770,11769,11777,11803,11783,11773,11765,11771,11785,11800,11780,11802,11774,11772,11776,11781,11801,11768,11784,11580,11786,11766,11764,11775,11779,11799,11782,11787,11767,11778,13458,13441,13450,13451,13457,13455,13454,13453,11734,11741,11744,11763,11762,11760,11746,11740,11735,11738,11753,11755,11756,11748,11581,11757,11745,11739,11737,11732,11761,11742,11743,11749,11751,11752,11750,11759,11747,11754,11736,11758,13440,13443,13445,13444,13449,13446,13442,13447,13431,9324,11935,9326,9325,9332,9331,9330,11933,11972);
INSERT INTO `game_event_seasonal_questrelation` (`questId`, `eventEntry`) VALUES
(11846,1), -- Durotar // Honor the Flame (Horde) - Kalimdor
(11845,1), -- Desolace
(11852,1), -- Mulgore
(11839,1), -- Winterspring
(11859,1), -- Barrens
(11849,1), -- Feralas
(11841,1), -- Ashenvale
(11847,1), -- Dustwallow marsh
(11861,1), -- Thousand Needles
(11856,1), -- Stonetalon Mountains
(11836,1), -- Silithus
(11838,1), -- Tanaris
(11850,1), -- Ghostland // Honor the Flame (Horde) - Eeastern Kingdoms
(11848,1), -- Eversong woods
(11853,1), -- Hillsbrad Foothills
(11857,1), -- Swamp of sorrows
(11837,1), -- Cape of Stranglethorn
(11844,1), -- Burning Steppes
(11860,1), -- The Hinterlands
(11584,1), -- Silverpine Forest
(11862,1), -- Tirisfal Glades
(11842,1), -- Badlands
(11840,1), -- Arathi Highlands
(11851,1), -- Hellfire Peninsula // Honor the Flame (Horde) - Outland
(11855,1), -- Shadowmoon Valley
(11835,1), -- Netherstorm
(11858,1), -- Terokkar
(11863,1), -- Zangarmarsh
(11854,1), -- Nagrand
(11843,1), -- Blade''s Edge Mountains
(13500,1), -- Zul'Drak // Honor the Flame (Horde) - Northrend
(13493,1), -- Borean Tundra
(13494,1), -- Sholazar Basin
(13495,1), -- Dragonblight
(13499,1), -- Crystalsong Forest
(13498,1), -- Storm Peaks
(13497,1), -- Grizzly Hills
(13496,1), -- Howling Fjords
(11805,1), -- Ashenvale // Honor the Flame (Alliance) - Kalimdor
(11812,1), -- Desolace
(11815,1), -- Dustwallow Marsh
(11834,1), -- Winterspring
(11833,1), -- Tanaris
(11831,1), -- Silithus
(11817,1), -- Feralas
(11811,1), -- Darkshore
(11806,1), -- Azuremyst Isle
(11809,1), -- Bloodmyst Isle
(11824,1), -- Teldrassil
(11826,1), -- The Hinterlands // Honor the Flame (Alliance) - Eeastern Kingdoms
(11827,1), -- The Western Plaguelands
(11819,1), -- Hillsbrad Foothills
(11583,1), -- Westfall
(11828,1), -- Wetlands
(11816,1), -- Elwynn Forest
(11810,1), -- Burning Steppes
(11808,1), -- Blasted Lands
(11804,1), -- Arathi Highlands
(11832,1), -- Cape of Stranglethorn
(11813,1), -- Dun Morogh
(11814,1), -- Duskwood
(11820,1), -- Loch Modan
(11822,1), -- Redridge Mountains
(11823,1), -- Shadowmoon Valley // Honor the Flame (Alliance) - Outland
(11821,1), -- Nagrand
(11830,1), -- Netherstorm
(11818,1), -- Hellfire Peninsula
(11825,1), -- Terokkar
(11807,1), -- Blade's Edge
(11829,1), -- Zangarmarsh
(13485,1), -- Borean Tundra // Honor the Flame (Alliance) - Northrend
(13487,1), -- Dragonblight
(13489,1), -- Grizzly Hills
(13488,1), -- Howling Fjord
(13492,1), -- Zul'Drak
(13490,1), -- The Storm Peaks
(13486,1), -- Sholazar Basin
(13491,1), -- Crystalsong Forest
(11770,1), -- Durotar // Desecrate the Flame (Alliance) - Kalimdor
(11769,1), -- Desolace
(11777,1), -- Mulgore
(11803,1), -- Winterspring
(11783,1), -- Barrens
(11773,1), -- Feralas
(11765,1), -- Ashenvale
(11771,1), -- Dustwallow marsh
(11785,1), -- Thousand Needles
(11800,1), -- Silithus
(11780,1), -- Stonetalon Mountains
(11802,1), -- Tanaris
(11774,1), -- Ghostland // Desecrate the Flame (Alliance) - Eastern Kingdoms
(11772,1), -- Eversong woods
(11776,1), -- Hillsbrad Foothills
(11781,1), -- Swamp of sorrows
(11801,1), -- Cape of Stranglethorn
(11768,1), -- Burning Steppes
(11784,1), -- The Hinterlands
(11580,1), -- Silverpine Forest
(11786,1), -- Tirisfal Glades
(11766,1), -- Badlands
(11764,1), -- Arathi Highlands
(11775,1), -- Hellfire Peninsula // Desecrate the Flame (Alliance) - Outland
(11779,1), -- Shadowmoon Valley
(11799,1), -- Netherstorm
(11782,1), -- Terokkar
(11787,1), -- Zangarmarsh
(11767,1), -- Blade' Edge
(11778,1), -- Nagrand
(13458,1), -- Zul'Drak // Desecrate the Flame (Alliance) - Northrend
(13441,1), -- Borean Tundra
(13450,1), -- Sholazar Basin
(13451,1), -- Dragonblight
(13457,1), -- Crystalsong Forest
(13455,1), -- Storm Peaks
(13454,1), -- Grizzly Hills
(13453,1), -- Howling Fjords
(11734,1), -- Ashenvale // Desecrate the Flame (Horde) - Kalimdor
(11741,1), -- Desolace
(11744,1), -- Dustwallow Marsh
(11763,1), -- Winterspring
(11762,1), -- Tanaris
(11760,1), -- Silithus
(11746,1), -- Feralas
(11740,1), -- Darkshore
(11735,1), -- Azuremyst Isle
(11738,1), -- Bloodmyst Isle
(11753,1), -- Teldrassil
(11755,1), -- The Hinterlands // Desecrate the Flame (Horde) - Eastern Kingdoms
(11756,1), -- The Western Plaguelands
(11748,1), -- Hillsbrad Foothills
(11581,1), -- Westfall
(11757,1), -- Wetlands
(11745,1), -- Elwynn Forest
(11739,1), -- Burning Steppes
(11737,1), -- Blasted Lands
(11732,1), -- Arathi Highlands
(11761,1), -- Cape of Stranglethorn
(11742,1), -- Dun Morogh
(11743,1), -- Duskwood
(11749,1), -- Loch Modan
(11751,1), -- Redridge Mountains
(11752,1), -- Shadowmoon Valley // Desecrate the Flame (Horde) - Outland
(11750,1), -- Nagrand
(11759,1), -- Netherstorm
(11747,1), -- Hellfire Peninsula
(11754,1), -- Terokkar
(11736,1), -- Blade's Edge
(11758,1), -- Zangarmarsh
(13440,1), -- Borean Tundra // Desecrate the Flame (Horde) - Northrend
(13443,1), -- Dragonblight
(13445,1), -- Grizzly
(13444,1), -- Howling Fjord
(13449,1), -- Zul'Drak
(13446,1), -- The Storm Peaks
(13442,1), -- Sholazar Basin
(13447,1), -- Crystalsong Forest
(11972,1), -- Shards of Ahune
(9324,1), -- Stealing Orgrimmar''s Flame
(11935,1), -- Stealing Silvermoon''s Flame
(9326,1), -- Stealing the Undercity''s Flame
(9325,1), -- Stealing Thunder Bluff''s Flame
(9332,1), -- Stealing Darnassus''s Flame
(9331,1), -- Stealing Ironforge''s Flame
(9330,1), -- Stealing Stormwind''s Flame
(11933,1); -- Stealing the Exodar''s Flame
-- #2) Add quest relations to game_event_gameobject_quest and game_event_creature_quest
DELETE FROM `game_event_creature_quest` WHERE `quest` IN (11846,11845,11852,11839,11859,11841,11849,11861,11847,11836,11838,11856,11850,11848,11853,11857,11837,11844,11860,11584,11862,11842,11840,11851,11855,11835,11858,11863,11821,11854,11843,13500,13493,13494,13495,13496,13497,13498,13499,11805,11812,11815,11834,11833,11831,11817,11811,11806,11809,11826,11824,11826,11827,11819,11583,11828,11816,11810,11808,11804,11832,11813,11814,11820,11822,11823,11821,11830,11818,11825,11807,11829,13485,13487,13489,13488,13490,13486,13491,13492,11805,11812,11815,11834,11833,11831,11817,11811,11806,11809,11824,11826,11827,11819,11583,11828,11816,11810,11808,11804,11832,11813,11814,11820,11822,13485,13487,13489,13488,13490,13486,13491,13490,11823,11821,11830,11818,11825,11807,11829,11775,11917,11947,11948,11952,11953,11954,11886,11891,12012,11955,11696,11691,11971,11970,11966,11964,11922,11923,11926,11925,11731,11657,11921,11924,9339,9365);
INSERT INTO `game_event_creature_quest` (`eventEntry`,`id`, `quest`) VALUES
(1,25929, 11846), -- Durotar // Honor the Flame (Horde) - Kalimdor
(1,25928, 11845), -- Desolace
(1,25936, 11852), -- Mulgore
(1,25922, 11839), -- Winterspring
(1,25943, 11859), -- Barrens
(1,25932, 11849), -- Feralas
(1,25884, 11841), -- Ashenvale
(1,25930, 11847), -- Dustwallow marsh
(1,25945, 11861), -- Thousand Needles
(1,25919, 11836), -- Silithus
(1,25921, 11838), -- Tanaris
(1,25940, 11856), -- Stonetalon Mountains
(1,25934, 11851), -- Hellfire Peninsula // Honor the Flame (Horde) - Outland
(1,25938, 11855), -- Shadowmoon Valley
(1,25918, 11835), -- Netherstorm
(1,25942, 11858), -- Terokkar
(1,25947, 11863), -- Zangarmarsh
(1,25937, 11854), -- Nagrand
(1,25926, 11843), -- Blade''s Edge Mountains
(1,32816, 13500), -- Zul'Drak // Honor the Flame (Horde) - Northrend
(1,32809, 13493), -- Borean Tundra
(1,32810, 13494), -- Sholazar Basin
(1,32811, 13495), -- Dragonblight
(1,32815, 13499), -- Crystalsong Forest
(1,32814, 13498), -- Storm Peaks
(1,32813, 13497), -- Grizzly Hills
(1,32812, 13496), -- Howling Fjords
(1,25933, 11850), -- Ghostland // Honor the Flame (Horde) - Eastern Kingdoms
(1,25931, 11848), -- Eversong woods
(1,25935, 11853), -- Hillsbrad Foothills
(1,25941, 11857), -- Swamp of sorrows
(1,25920, 11837), -- Cape of Stranglethorn
(1,25927, 11844), -- Burning Steppes
(1,25944, 11860), -- The Hinterlands
(1,25939, 11584), -- Silverpine Forest
(1,25946, 11862), -- Tirisfal Glades
(1,25925, 11842), -- Badlands
(1,25923, 11840), -- Arathi Highlands
(1,25883, 11805), -- Ashenvale // Honor the Flame (Alliance) - Kalimdor
(1,25894, 11812), -- Desolace
(1,25897, 11815), -- Dustwallow Marsh
(1,25917, 11834), -- Winterspring
(1,25916, 11833), -- Tanaris
(1,25914, 11831), -- Silithus
(1,25899, 11817), -- Feralas
(1,25893, 11811), -- Darkshore
(1,25888, 11806), -- Azuremyst Isle
(1,25891, 11809), -- Bloodmyst Isle
(1,25906, 11824), -- Teldrassil
(1,25908, 11826), -- The Hinterlands // Honor the Flame (Alliance) - Eeastern Kingdoms
(1,25909, 11827), -- The Western Plaguelands
(1,25901, 11819), -- Hillsbrad Foothills
(1,25910, 11583), -- Westfall
(1,25911, 11828), -- Wetlands
(1,25898, 11816), -- Elwynn Forest
(1,25892, 11810), -- Burning Steppes
(1,25890, 11808), -- Blasted Lands
(1,25887, 11804), -- Arathi Highlands
(1,25915, 11832), -- Cape of Stranglethorn
(1,25895, 11813), -- Dun Morogh
(1,25896, 11814), -- Duskwood
(1,25902, 11820), -- Loch Modan
(1,25904, 11822), -- Redridge Mountains
(1,32801, 13485), -- Borean Tundra // Honor the Flame (Alliance) - Northrend
(1,32803, 13487), -- Dragonblight
(1,32805, 13489), -- Grizzly
(1,32804, 13488), -- Howling Fjord
(1,32808, 13492), -- Zul'Drak
(1,32806, 13490), -- The Storm Peaks
(1,32802, 13486), -- Sholazar Basin
(1,32807, 13491), -- Crystalsong Forest
(1,25905, 11823), -- Shadowmoon Valley // Honor the Flame (Alliance) - Outland
(1,25903, 11821), -- Nagrand
(1,25913, 11830), -- Netherstorm
(1,25900, 11818), -- Hellfire Peninsula
(1,25907, 11825), -- Terokkar
(1,25889, 11807), -- Blade's Edge
(1,25912, 11829), -- Zangarmarsh
(1,26221, 11917), -- Striking Back
(1,26221, 11947), -- Striking Back
(1,26221, 11948), -- Striking Back
(1,26221, 11952), -- Striking Back
(1,26221, 11953), -- Striking Back
(1,26221, 11954), -- Striking Back
(1,26221, 11886), -- Unusual Activity
(1,25324, 11891), -- An Innocent Disguise
(1,25324, 12012), -- Inform the Elder
(1,26221, 11955), -- Ahune, the Frost Lord
(1,25710, 11696), -- Ahune is Here!
(1,25697, 11691), -- Summon Ahune
(1,19169, 11971), -- The Spinner of Summer Tales /Horde/
(1,19178, 11971), -- The Spinner of Summer Tales
(1,19175, 11971), -- The Spinner of Summer Tales
(1,19176, 11971), -- The Spinner of Summer Tales
(1,19177, 11971), -- The Spinner of Summer Tales
(1,20102, 11971), -- The Spinner of Summer Tales
(1,19171, 11970), -- The Master of Summer Lore /Alliance/
(1,19148, 11970), -- The Master of Summer Lore
(1,19172, 11970), -- The Master of Summer Lore
(1,18927, 11970), -- The Master of Summer Lore
(1,19173, 11970), -- The Master of Summer Lore
(1,20102, 11970), -- The Master of Summer Lore
(1,16818, 11966), -- Incense for the Festival Scorchlings
(1,16817, 11964), -- Incense for the Summer Scorchlings
(1,26113, 11922), -- Torch Tossing /H/
(1,26113, 11923), -- Torch Catching /H/
(1,26113, 11926), -- More Torch Tossing /H/
(1,26113, 11925), -- More Torch Catching /H/
(1,25975, 11731), -- Torch Tossing /A/
(1,25975, 11657), -- Torch Catching /A/
(1,25975, 11921), -- More Torch Tossing /A/
(1,25975, 11924), -- More Torch Catching /A/
(1,16818, 9339), -- A Thief''s Reward /H/
(1,16817, 9365); -- A Thief''s Reward /A/
DELETE FROM `game_event_gameobject_quest` WHERE `quest` IN (11767,11778,11787,11782,11799,11779,11775,11734,11741,11744,11763,11762,11760,11746,11740,11735,11738,11753,11755,11756,11748,11581,11757,11745,11739,11737,11732,11761,11742,11743,11749,11751,13440,13443,13445,13444,13449,13446,13442,13447,11752,11750,11759,11747,11754,11736,11758,11770,11769,11777,11803,11783,11773,11765,11771,11785,11800,11780,11802,11774,11772,11776,11781,11801,11768,11784,11580,11786,11766,11764,13458,13441,13450,13451,13457,13455,13454,13453);
INSERT INTO `game_event_gameobject_quest` (`eventEntry`,`id`, `quest`) VALUES
(1,187916, 11734), -- Ashenvale // Desecrate the Flame (Horde) - Kalimdor
(1,187924, 11741), -- Desolace
(1,187927, 11744), -- Dustwallow Marsh
(1,187946, 11763), -- Winterspring
(1,187945, 11762), -- Tanaris
(1,187943, 11760), -- Silithus
(1,187929, 11746), -- Feralas
(1,187923, 11740), -- Darkshore
(1,187917, 11735), -- Azuremyst Isle
(1,187921, 11738), -- Bloodmyst Isle
(1,187936, 11753), -- Teldrassil
(1,187938, 11755), -- The Hinterlands // Desecrate the Flame (Horde) - Eeastern Kingdoms
(1,187939, 11756), -- The Western Plaguelands
(1,187931, 11748), -- Hillsbrad Foothills
(1,187564, 11581), -- Westfall
(1,187940, 11757), -- Wetlands
(1,187928, 11745), -- Elwynn Forest
(1,187922, 11739), -- Burning Steppes
(1,187920, 11737), -- Blasted Lands
(1,187914, 11732), -- Arathi Highlands
(1,187944, 11761), -- Cape of Stranglethorn
(1,187925, 11742), -- Dun Morogh
(1,187926, 11743), -- Duskwood
(1,187932, 11749), -- Loch Modan
(1,187934, 11751), -- Redridge Mountains
(1,194032, 13440), -- Borean Tundra // Desecrate the Flame (Horde) - Northrend
(1,194036, 13443), -- Dragonblight
(1,194040, 13445), -- Grizzly
(1,194038, 13444), -- Howling Fjord
(1,194049, 13449), -- Zul'Drak
(1,194044, 13446), -- The Storm Peaks
(1,194035, 13442), -- Sholazar Basin
(1,194045, 13447), -- Crystalsong Forest
(1,187935, 11752), -- Shadowmoon Valley // Desecrate the Flame (Horde) - Outland
(1,187933, 11750), -- Nagrand
(1,187942, 11759), -- Netherstorm
(1,187930, 11747), -- Hellfire Peninsula
(1,187937, 11754), -- Terokkar
(1,187919, 11736), -- Blade's Edge
(1,187941, 11758), -- Zangarmarsh
(1,187958, 11770), -- Durotar // Desecrate the Flame (Alliance) - Kalimdor
(1,187957, 11769), -- Desolace
(1,187965, 11777), -- Mulgore
(1,187953, 11803), -- Winterspring
(1,187971, 11783), -- Barrens
(1,187961, 11773), -- Feralas
(1,187948, 11765), -- Ashenvale
(1,187959, 11771), -- Dustwallow marsh
(1,187973, 11785), -- Thousand Needles
(1,187950, 11800), -- Silithus
(1,187968, 11780), -- Stonetalon Mountains
(1,187952, 11802), -- Tanaris
(1,187962, 11774), -- Ghostland // Desecrate the Flame (Alliance) - Eeastern Kingdoms
(1,187960, 11772), -- Eversong woods
(1,187964, 11776), -- Hillsbrad Foothills
(1,187969, 11781), -- Swamp of sorrows
(1,187951, 11801), -- Cape of Stranglethorn
(1,187956, 11768), -- Burning Steppes
(1,187972, 11784), -- The Hinterlands
(1,187559, 11580), -- Silverpine Forest
(1,187974, 11786), -- Tirisfal Glades
(1,187954, 11766), -- Badlands
(1,187947, 11764), -- Arathi Highlands
(1,187963, 11775), -- Hellfire Peninsula // Desecrate the Flame (Alliance) - Outland
(1,187967, 11779), -- Shadowmoon Valley
(1,187949, 11799), -- Netherstorm
(1,187970, 11782), -- Terokkar
(1,187975, 11787), -- Zangarmarsh
(1,187955, 11767), -- Blade' Edge
(1,187966, 11778), -- Nagrand
(1,194048, 13458), -- Zul'Drak // Desecrate the Flame (Alliance) - Northend
(1,194033, 13441), -- Borean Tundra
(1,194034, 13450), -- Sholazar Basin
(1,194037, 13451), -- Dragonblight
(1,194046, 13457), -- Crystalsong Forest
(1,194043, 13455), -- Storm Peaks
(1,194042, 13454), -- Grizzly Hills
(1,194039, 13453); -- Howling Fjords

-- Add support for Torch Tossing and More Torch Tossing quests
-- Spell: 47143 "Handle: Not on Quest but has Torch Tossing Aura" -> this should remove the aura, if for some reason player have it, while not on quest, but with conditions I've already binded that possibility making this useless
-- Set the npc used as bunny for the braziers with flag invisible
UPDATE `creature_template` SET `flags_extra`=128 WHERE `entry`=25515;
-- Set timers for Torch Tossing quests
UPDATE `quest_template` SET `LimitTime`=45 WHERE `Id`=11922; -- Horde Torch Tossing /Set 45 sec timer/
UPDATE `quest_template` SET `LimitTime`=45 WHERE `Id`=11731; -- Alliance Torch Tossing /Set 45 sec timer/
UPDATE `quest_template` SET `LimitTime`=90 WHERE `Id`=11926; -- Horde More Torch Tossing /Set 90 sec timer/
UPDATE `quest_template` SET `LimitTime`=90 WHERE `Id`=11921; -- Alliance More Torch Tossing /Set 90 sec timer/
-- Add npc for each target brazier /for the markerks/
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES
(267452, 25515, 1, 1, 1, -1048.8, 299.889, 134.401, 0.698132),
(267467, 25515, 1, 1, 1, -1042.52, 306.56, 134.451, -1.98968),
(267471, 25515, 1, 1, 1, -1041.61, 313.163, 133.278, -1.76278),
(267462, 25515, 1, 1, 1, -1049.08, 306.373, 132.937, -2.18166),
(267463, 25515, 1, 1, 1, -1035.88, 312.549, 134.666, -1.58825),
(267455, 25515, 0, 1, 1, -4685.95, -1218.96, 501.659, 0.698132),
(267456, 25515, 0, 1, 1, -4677.39, -1229.83, 501.659, -1.58825),
(267457, 25515, 0, 1, 1, -4675.41, -1224.66, 501.659, -1.98968),
(267475, 25515, 0, 1, 1, -4683.98, -1232.64, 501.659, -1.76278),
(267476, 25515, 0, 1, 1, -4678.69, -1219.43, 501.659, -2.18166),
(267459, 25515, 1, 1, 1, 8717.3, 920.104, 15.1784, -1.98968),
(267460, 25515, 1, 1, 1, 8721.22, 923.779, 16.4874, 0.698132),
(267461, 25515, 1, 1, 1, 8716.85, 928.883, 15.3478, -1.76278),
(267464, 25515, 1, 1, 1, 8716.73, 936.471, 14.8964, -1.58825),
(267465, 25515, 1, 1, 1, 8722.04, 933.662, 15.9977, -2.18166),
(267466, 25515, 1, 1, 1, 1915.58, -4320.46, 21.8202, -1.58825),
(267469, 25515, 1, 1, 1, 1920.49, -4319.35, 21.8167, 0.698132),
(267451, 25515, 1, 1, 1, 1918.07, -4314.9, 22.8562, -1.98968),
(267458, 25515, 1, 1, 1, 1925.15, -4321.27, 21.6547, -1.76278),
(267470, 25515, 1, 1, 1, 1923.87, -4315.27, 22.4918, -2.181661),
(267472, 25515, 0, 1, 1, 1837.4, 213.158, 60.3433, -1.98968),
(267453, 25515, 0, 1, 1, 1837.19, 225.627, 60.246, -1.58825),
(267454, 25515, 0, 1, 1, 1838.23, 218.969, 60.1496, -1.76278),
(267473, 25515, 0, 1, 1, 1840.84, 216.245, 60.074, -2.18166),
(267474, 25515, 0, 1, 1, 1840.18, 222.607, 60.2069, 0.698132),
(267478, 25515, 530, 1, 1, -3768.73, -11511.2, -134.479, 2.70805),
(267479, 25515, 530, 1, 1, -3773.26, -11519.4, -134.56, 2.53526),
(267480, 25515, 530, 1, 1, -3776.32, -11511.5, -134.569, 5.69256),
(267481, 25515, 530, 1, 1, -3775.23, -11506.7, -134.539, 5.79074),
(267482, 25515, 530, 1, 1, -3780.47, -11514.1, -134.626, 5.66115),
(267483, 25515, 530, 1, 1, 9817.67, -7227.84, 26.1104, 3.89843),
(267484, 25515, 530, 1, 1, 9810.38, -7226.95, 26.0582, 0.898206),
(267485, 25515, 530, 1, 1, 9819.87, -7234.51, 26.1176, 0.898206),
(267486, 25515, 530, 1, 1, 9823.56, -7229.12, 26.1209, 3.78847),
(267487, 25515, 530, 1, 1, 9817.55, -7221.36, 26.1142, 3.80025),
(267477, 25515, 0, 1, 1, -8819.46, 848.506, 98.9483, -2.18166), 
(267468, 25515, 0, 1, 1, -8825.72, 845.613, 99.0511, 2.89725), 
(267488, 25515, 0, 1, 1, -8822.40, 846.765, 99.0875, 4.34518), 
(267489, 25515, 0, 1, 1, -8816.67, 854.945, 98.907, 4.75751), 
(267490, 25515, 0, 1, 1, -8816.66, 858.591, 98.991, 4.47084); 
-- Add required SpellFocus for capital bonfires /that must have no display and this is the only one like that/
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(165965, 300068, 0, 1, 1, -8837.04, 857.657, 98.7763, -2.07694, 0, 0, 0.861629, -0.507538, 180, 100, 1),
(165966, 300068, 0, 1, 1, -4700.28, -1224.34, 501.659, -2.14675, 0, 0, 0.878817, -0.477159, 180, 100, 1),
(165967, 300068, 1, 1, 1, 8700.21, 931.422, 14.823, 1.67552, 0, 0, 0.743145, 0.669131, 180, 100, 1),
(165968, 300068, 0, 1, 1, 1822.27, 218.639, 59.8924, -0.034907, 0, 0, 0.017452, -0.999848, 180, 100, 1),
(165969, 300068, 1, 1, 1, 1911.67, -4338.28, 21.0705, -0.20944, 0, 0, 0.104528, -0.994522, 180, 100, 1),
(165970, 300068, 1, 1, 1, -1027.8, 296.424, 135.746, 2.82743, 0, 0, 0.987688, 0.156434, 180, 100, 1),
(165971, 300068, 530, 1, 1, -3794.02, -11502.1, -134.74, 5.00689, 0, 0, 0.59571, -0.8032, 300, 0, 1),
(165972, 300068, 530, 1, 1, 9805.88, -7239.91, 26.0512, -3.1066, 0, 0, 0, 0, 120, 0, 1);
-- Add spell_linked_spell support for Torch Tossing Aura to combine it with detect invisibility when on and remove when off//26802 - does nothing 45723/requires spell script that use the one I use directly and is used to see it 45725, I written it in this way to avoid spell scripts + I don't really know how the dummy effect should function.
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (45716,46630);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
(45716, 18950, 2, 'Torch tossing training aura trigger detect invisibility + remove on expire'),
(46630, 18950, 2, 'Torch tossing practice aura trigger detect invisibility + remove on expire');
-- Add SAIs for Master Flame/Fire Eater
SET @MFireEater = 25975;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@MFireEater;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@MFireEater;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@MFireEater,0,0,1,19,0,100,0,11731,0,0,0,85,45716,0,0,0,0,0,7,0,0,0,0,0,0,0,'Master fire eater - On target quest accepted - Invoker cast'),
(@MFireEater,0,1,0,61,0,100,0,0,0,0,0,28,45724,0,0,0,0,0,7,0,0,0,0,0,0,0,'Master fire eater - Linked with event 0 - Remove aura from'),
(@MFireEater,0,2,3,19,0,100,0,11921,0,0,0,85,46630,0,0,0,0,0,7,0,0,0,0,0,0,0,'Master fire eater - On target quest accepted - Invoker cast'),
(@MFireEater,0,3,0,61,0,100,0,0,0,0,0,27,45724,0,0,0,0,0,7,0,0,0,0,0,0,0,'Master fire eater - Linked with event 2 - Remove aura from'),
(@MFireEater,0,4,0,20,0,100,0,11921,0,0,0,28,45724,0,0,0,0,0,7,0,0,0,0,0,0,0,'Master fire eater - On target quest rewarded - Remove aura from'),
(@MFireEater,0,5,0,20,0,100,0,11731,0,0,0,28,45724,0,0,0,0,0,7,0,0,0,0,0,0,0,'Master fire eater - On target quest rewarded - Remove aura from'),
(@MFireEater,0,6,7,24,0,100,0,45724,8,0,0,11,45719,0,0,0,0,0,7,0,0,0,0,0,0,0,'Master fire eater - On target buff with spell - Invoker cast'),
(@MFireEater,0,7,0,61,0,100,0,0,0,0,0,26,11731,0,0,0,0,0,7,0,0,0,0,0,0,0,'Master fire eater - Linked with event 6 - Complete quest'),
(@MFireEater,0,8,9,24,0,100,0,45724,20,0,0,11,45719,0,0,0,0,0,7,0,0,0,0,0,0,0,'Master fire eater - On target buff with spell - Invoker cast'),
(@MFireEater,0,9,0,61,0,100,0,0,0,0,0,26,11921,0,0,0,0,0,7,0,0,0,0,0,0,0,'Master fire eater - Linked with event 8 - Complete quest');
SET @MFlameEater = 26113;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@MFlameEater;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@MFlameEater;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@MFlameEater,0,0,1,19,0,100,0,11922,0,0,0,85,45716,0,0,0,0,0,7,0,0,0,0,0,0,0,'Master flame eater - On target quest accepted - Invoker cast'),
(@MFlameEater,0,1,0,61,0,100,0,0,0,0,0,28,45724,0,0,0,0,0,7,0,0,0,0,0,0,0,'Master flame eater - Linked with event 0 - Remove aura from'),
(@MFlameEater,0,2,3,19,0,100,0,11926,0,0,0,85,46630,0,0,0,0,0,7,0,0,0,0,0,0,0,'Master flame eater - On target quest accepted - Invoker cast'),
(@MFlameEater,0,3,0,61,0,100,0,0,0,0,0,28,45724,0,0,0,0,0,7,0,0,0,0,0,0,0,'Master flame eater - Linked with event 2 - Remove aura from'),
(@MFlameEater,0,4,0,20,0,100,0,11922,0,0,0,28,45724,0,0,0,0,0,7,0,0,0,0,0,0,0,'Master flame eater - On target quest rewarded - Remove aura from'),
(@MFlameEater,0,5,0,20,0,100,0,11926,0,0,0,28,45724,0,0,0,0,0,7,0,0,0,0,0,0,0,'Master flame eater - On target quest rewarded - Remove aura from'),
(@MFlameEater,0,6,7,24,0,100,0,45724,8,0,0,11,46651,0,0,0,0,0,7,0,0,0,0,0,0,0,'Master flame eater - On target buff with spell - Invoker cast'),
(@MFlameEater,0,7,0,61,0,100,0,0,0,0,0,26,11922,0,0,0,0,0,7,0,0,0,0,0,0,0,'Master flame eater - Linked with event 6 - Complete quest'),
(@MFlameEater,0,8,9,24,0,100,0,45724,20,0,0,11,46651,0,0,0,0,0,7,0,0,0,0,0,0,0,'Master flame eater - On target buff with spell - Invoker cast'),
(@MFlameEater,0,9,0,61,0,100,0,0,0,0,0,26,11926,0,0,0,0,0,7,0,0,0,0,0,0,0,'Master flame eater - Linked with event 8 - Complete quest');
SET @Brazier :=25515;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@Brazier;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@Brazier;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@Brazier,0,0,1,8,0,100,0,45732,0,0,0,11,45724,2,0,0,0,0,1,0,0,0,0,0,0,0,'Brazzier Bunny - On hit by spell Torch Land - Cast Brazzier hit'),
(@Brazier,0,1,0,61,0,100,0,0,0,0,0,85,45724,2,0,0,0,0,7,0,0,0,0,0,0,0,'Brazzier Bunny - Linked with event 0 - Invoker Cast Brazzier hit'); -- TO DO: Needs restriction for not casting effect 4 /explicit target/ on player
-- Add conditions:
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (45732,45724);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=17 AND `SourceEntry` IN (45719,46651,45724);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition` ,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,45732,0,0,1,0,64328,0,0,0,0,'','Torch toss can hit only targets with mark'),
(17,0,45719,0,1,9,0,11731,0,0,0,0,'','Torch Tossing /A - quest complete/ - Effect 1 can hit only players on quest - 11731'),
(17,0,45719,0,2,9,0,11921,0,0,0,0,'','Torch Tossing /A - quest complete/ - Effect 2 can hit only players on quest - 11921'),
(17,0,46651,0,1,9,0,11922,0,0,0,0,'','Torch Tossing /H - quest complete/ - Effect 1 can hit only players on quest - 11922'),
(17,0,46651,0,2,9,0,11926,0,0,0,0,'','Torch Tossing /H - quest complete/ - Effect 2 can hit only players on quest - 11926');
-- Add random rotation of Brazier marks /action lists/ for Thunder Bluff + Invisible Location Trigger to act as controller
DELETE FROM `creature` WHERE `guid` IN (267731,267971,267975,267977,267979,267980,267981,267982);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(267731, 19656, 1, 1, 1, 17612, 0, -1052.69, 302.024, 133.314, 0.538506, 300, 0, 0, 4120, 0, 0, 0, 0, 0), -- spawn for Invisible Trigger in Thunder Bluff
(267971, 19656, 1, 1, 1, 0, 0, 1914.62, -4316.19, 23.2105, 5.88965, 300, 0, 0, 4120, 0, 0, 0, 0, 0), -- Orgrimmar
(267975, 19656, 0, 1, 1, 0, 0, 1841.84, 220.353, 60.847, 3.54074, 300, 0, 0, 4120, 0, 0, 0, 0, 0), -- Undercity
(267977, 19656, 530, 1, 1, 0, 0, 9823.4, -7221.86, 26.7766, 3.98641, 300, 0, 0, 4120, 0, 0, 0, 0, 0), -- Silvermoon
(267979, 19656, 0, 1, 1, 0, 0, -8820.81, 856.192, 99.035, 2.9833, 300, 0, 0, 4120, 0, 0, 0, 0, 0), -- Stormwind
(267980, 19656, 0, 1, 1, 0, 0, -4680.07, -1224.66, 501.659, 3.35709, 300, 0, 0, 4120, 0, 0, 0, 0, 0), -- Ironforge
(267981, 19656, 1, 1, 1, 17612, 0, 8721.56, 928.809, 16.6237, 3.06253, 300, 0, 0, 4120, 0, 0, 0, 0, 0), -- Darnassus
(267982, 19656, 530, 1, 1, 0, 0, -3771.32, -11515.4, -134.525, 2.54862, 300, 0, 0, 4120, 0, 0, 0, 0, 0); -- Exodar
-- Thunder Bluff
SET @TRotation :=26773100;
SET @TTrigger :=-267731;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@TTrigger;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid` IN (@TRotation,@TRotation+1,@TRotation+2,@TRotation+3,@TRotation+4);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@TTrigger,0,0,0,1,0,100,0,0,0,15000,15000,87,@TRotation,@TRotation+1,@TRotation+2,@TRotation+3,@TRotation+4,@TRotation+2,1,0,0,0,0,0,0,0,'Brazzier Bunny - OC - Run script 00'),
-- Rotation 0
(@TRotation,9,1,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267452,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 1 - Cast mark'),
(@TRotation,9,2,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267452,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 2 - Remove aura from Mark'),
(@TRotation,9,3,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267467,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 3 - Cast mark'),
(@TRotation,9,4,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267467,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 4 - Remove aura from Mark'),
(@TRotation,9,5,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267471,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 5 - Cast mark'),
(@TRotation,9,6,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267471,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 6 - Remove aura from Mark'),
(@TRotation,9,7,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267462,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 7 - Cast mark'),
(@TRotation,9,8,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267462,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 8 - Remove aura from Mark'),
(@TRotation,9,9,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267463,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 9 - Cast mark'),
(@TRotation,9,10,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267463,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 10 - Remove aura from Mark'),
-- Rotation 1
(@TRotation+1,9,1,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267471,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 1 - Cast mark'),
(@TRotation+1,9,2,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267471,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 2 - Remove aura from Mark'),
(@TRotation+1,9,3,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267462,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 3 - Cast mark'),
(@TRotation+1,9,4,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267462,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 4 - Remove aura from Mark'),
(@TRotation+1,9,5,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267452,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 5 - Cast mark'),
(@TRotation+1,9,6,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267452,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 6 - Remove aura from Mark'),
(@TRotation+1,9,7,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267463,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 7 - Cast mark'),
(@TRotation+1,9,8,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267463,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 8 - Remove aura from Mark'),
(@TRotation+1,9,9,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267467,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 9 - Cast mark'),
(@TRotation+1,9,10,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267467,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 10 - Remove aura from Mark'),
-- Rotation 2
(@TRotation+2,9,1,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267463,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 1 - Cast mark'),
(@TRotation+2,9,2,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267463,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 2 - Remove aura from Mark'),
(@TRotation+2,9,3,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267467,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 3 - Cast mark'),
(@TRotation+2,9,4,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267467,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 4 - Remove aura from Mark'),
(@TRotation+2,9,5,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267462,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 5 - Cast mark'),
(@TRotation+2,9,6,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267462,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 6 - Remove aura from Mark'),
(@TRotation+2,9,7,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267452,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 7 - Cast mark'),
(@TRotation+2,9,8,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267452,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 8 - Remove aura from Mark'),
(@TRotation+2,9,9,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267471,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 9 - Cast mark'),
(@TRotation+2,9,10,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267471,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 10 - Remove aura from Mark'),
-- Rotation 3
(@TRotation+3,9,1,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267467,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 1 - Cast mark'),
(@TRotation+3,9,2,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267467,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 2 - Remove aura from Mark'),
(@TRotation+3,9,3,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267463,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 3 - Cast mark'),
(@TRotation+3,9,4,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267463,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 4 - Remove aura from Mark'),
(@TRotation+3,9,5,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267471,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 5 - Cast mark'),
(@TRotation+3,9,6,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267471,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 6 - Remove aura from Mark'),
(@TRotation+3,9,7,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267462,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 7 - Cast mark'),
(@TRotation+3,9,8,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267462,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 8 - Remove aura from Mark'),
(@TRotation+3,9,9,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267452,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 9 - Cast mark'),
(@TRotation+3,9,10,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267452,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 10 - Remove aura from Mark'),
-- Rotation 4
(@TRotation+4,9,1,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267462,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 1 - Cast mark'),
(@TRotation+4,9,2,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267462,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 2 - Remove aura from Mark'),
(@TRotation+4,9,3,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267452,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 3 - Cast mark'),
(@TRotation+4,9,4,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267452,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 4 - Remove aura from Mark'),
(@TRotation+4,9,5,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267471,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 5 - Cast mark'),
(@TRotation+4,9,6,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267471,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 6 - Remove aura from Mark'),
(@TRotation+4,9,7,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267467,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 7 - Cast mark'),
(@TRotation+4,9,8,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267467,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 8 - Remove aura from Mark'),
(@TRotation+4,9,9,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267463,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 9 - Cast mark'),
(@TRotation+4,9,10,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267463,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 10 - Remove aura from Mark');
-- Orgrimmar
SET @ORotation :=26797100;
SET @OTrigger :=-267971;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@OTrigger;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid` IN (@ORotation,@ORotation+1,@ORotation+2,@ORotation+3,@ORotation+4);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@OTrigger,0,0,0,1,0,100,0,0,0,15000,15000,87,@ORotation,@ORotation+1,@ORotation+2,@ORotation+3,@ORotation+4,@ORotation+2,1,0,0,0,0,0,0,0,'Brazzier Bunny - OC - Run script 00'),
-- Rotation 0
(@ORotation,9,1,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267466,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 1 - Cast mark'),
(@ORotation,9,2,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267466,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 2 - Remove aura from Mark'),
(@ORotation,9,3,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267469,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 3 - Cast mark'),
(@ORotation,9,4,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267469,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 4 - Remove aura from Mark'),
(@ORotation,9,5,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267451,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 5 - Cast mark'),
(@ORotation,9,6,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267451,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 6 - Remove aura from Mark'),
(@ORotation,9,7,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267458,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 7 - Cast mark'),
(@ORotation,9,8,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267458,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 8 - Remove aura from Mark'),
(@ORotation,9,9,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267470,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 9 - Cast mark'),
(@ORotation,9,10,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267470,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 10 - Remove aura from Mark'),
-- Rotation 1
(@ORotation+1,9,1,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267451,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 1 - Cast mark'),
(@ORotation+1,9,2,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267451,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 2 - Remove aura from Mark'),
(@ORotation+1,9,3,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267458,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 3 - Cast mark'),
(@ORotation+1,9,4,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267458,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 4 - Remove aura from Mark'),
(@ORotation+1,9,5,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267466,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 5 - Cast mark'),
(@ORotation+1,9,6,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267466,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 6 - Remove aura from Mark'),
(@ORotation+1,9,7,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267470,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 7 - Cast mark'),
(@ORotation+1,9,8,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267470,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 8 - Remove aura from Mark'),
(@ORotation+1,9,9,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267469,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 9 - Cast mark'),
(@ORotation+1,9,10,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267469,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 10 - Remove aura from Mark'),
-- Rotation 2
(@ORotation+2,9,1,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267470,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 1 - Cast mark'),
(@ORotation+2,9,2,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267470,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 2 - Remove aura from Mark'),
(@ORotation+2,9,3,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267469,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 3 - Cast mark'),
(@ORotation+2,9,4,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267469,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 4 - Remove aura from Mark'),
(@ORotation+2,9,5,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267458,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 5 - Cast mark'),
(@ORotation+2,9,6,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267458,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 6 - Remove aura from Mark'),
(@ORotation+2,9,7,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267466,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 7 - Cast mark'),
(@ORotation+2,9,8,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267466,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 8 - Remove aura from Mark'),
(@ORotation+2,9,9,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267451,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 9 - Cast mark'),
(@ORotation+2,9,10,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267451,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 10 - Remove aura from Mark'),
-- Rotation 3
(@ORotation+3,9,1,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267469,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 1 - Cast mark'),
(@ORotation+3,9,2,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267469,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 2 - Remove aura from Mark'),
(@ORotation+3,9,3,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267470,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 3 - Cast mark'),
(@ORotation+3,9,4,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267470,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 4 - Remove aura from Mark'),
(@ORotation+3,9,5,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267451,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 5 - Cast mark'),
(@ORotation+3,9,6,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267451,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 6 - Remove aura from Mark'),
(@ORotation+3,9,7,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267458,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 7 - Cast mark'),
(@ORotation+3,9,8,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267458,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 8 - Remove aura from Mark'),
(@ORotation+3,9,9,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267466,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 9 - Cast mark'),
(@ORotation+3,9,10,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267466,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 10 - Remove aura from Mark'),
-- Rotation 4
(@ORotation+4,9,1,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267458,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 1 - Cast mark'),
(@ORotation+4,9,2,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267458,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 2 - Remove aura from Mark'),
(@ORotation+4,9,3,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267466,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 3 - Cast mark'),
(@ORotation+4,9,4,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267466,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 4 - Remove aura from Mark'),
(@ORotation+4,9,5,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267451,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 5 - Cast mark'),
(@ORotation+4,9,6,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267451,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 6 - Remove aura from Mark'),
(@ORotation+4,9,7,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267469,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 7 - Cast mark'),
(@ORotation+4,9,8,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267469,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 8 - Remove aura from Mark'),
(@ORotation+4,9,9,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267470,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 9 - Cast mark'),
(@ORotation+4,9,10,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267470,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 10 - Remove aura from Mark');
-- The Undercity
SET @URotation :=26797500;
SET @UTrigger :=-267975;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@UTrigger;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid` IN (@URotation,@URotation+1,@URotation+2,@URotation+3,@URotation+4);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@UTrigger,0,0,0,1,0,100,0,0,0,15000,15000,87,@URotation,@URotation+1,@URotation+2,@URotation+3,@URotation+4,@URotation+2,1,0,0,0,0,0,0,0,'Brazzier Bunny - OC - Run script 00'),
-- Rotation 0
(@URotation,9,1,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267472,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 1 - Cast mark'),
(@URotation,9,2,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267472,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 2 - Remove aura from Mark'),
(@URotation,9,3,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267453,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 3 - Cast mark'),
(@URotation,9,4,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267453,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 4 - Remove aura from Mark'),
(@URotation,9,5,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267454,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 5 - Cast mark'),
(@URotation,9,6,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267454,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 6 - Remove aura from Mark'),
(@URotation,9,7,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267473,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 7 - Cast mark'),
(@URotation,9,8,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267473,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 8 - Remove aura from Mark'),
(@URotation,9,9,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267474,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 9 - Cast mark'),
(@URotation,9,10,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267474,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 10 - Remove aura from Mark'),
-- Rotation 1
(@URotation+1,9,1,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267454,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 1 - Cast mark'),
(@URotation+1,9,2,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267454,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 2 - Remove aura from Mark'),
(@URotation+1,9,3,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267473,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 3 - Cast mark'),
(@URotation+1,9,4,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267473,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 4 - Remove aura from Mark'),
(@URotation+1,9,5,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267472,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 5 - Cast mark'),
(@URotation+1,9,6,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267472,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 6 - Remove aura from Mark'),
(@URotation+1,9,7,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267474,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 7 - Cast mark'),
(@URotation+1,9,8,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267474,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 8 - Remove aura from Mark'),
(@URotation+1,9,9,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267453,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 9 - Cast mark'),
(@URotation+1,9,10,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267453,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 10 - Remove aura from Mark'),
-- Rotation 2
(@URotation+2,9,1,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267474,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 1 - Cast mark'),
(@URotation+2,9,2,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267474,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 2 - Remove aura from Mark'),
(@URotation+2,9,3,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267453,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 3 - Cast mark'),
(@URotation+2,9,4,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267453,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 4 - Remove aura from Mark'),
(@URotation+2,9,5,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267473,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 5 - Cast mark'),
(@URotation+2,9,6,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267473,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 6 - Remove aura from Mark'),
(@URotation+2,9,7,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267472,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 7 - Cast mark'),
(@URotation+2,9,8,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267472,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 8 - Remove aura from Mark'),
(@URotation+2,9,9,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267454,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 9 - Cast mark'),
(@URotation+2,9,10,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267454,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 10 - Remove aura from Mark'),
-- Rotation 3
(@URotation+3,9,1,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267453,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 1 - Cast mark'),
(@URotation+3,9,2,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267453,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 2 - Remove aura from Mark'),
(@URotation+3,9,3,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267474,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 3 - Cast mark'),
(@URotation+3,9,4,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267474,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 4 - Remove aura from Mark'),
(@URotation+3,9,5,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267454,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 5 - Cast mark'),
(@URotation+3,9,6,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267454,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 6 - Remove aura from Mark'),
(@URotation+3,9,7,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267473,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 7 - Cast mark'),
(@URotation+3,9,8,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267473,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 8 - Remove aura from Mark'),
(@URotation+3,9,9,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267472,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 9 - Cast mark'),
(@URotation+3,9,10,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267472,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 10 - Remove aura from Mark'),
-- Rotation 4
(@URotation+4,9,1,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267473,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 1 - Cast mark'),
(@URotation+4,9,2,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267473,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 2 - Remove aura from Mark'),
(@URotation+4,9,3,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267472,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 3 - Cast mark'),
(@URotation+4,9,4,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267472,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 4 - Remove aura from Mark'),
(@URotation+4,9,5,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267454,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 5 - Cast mark'),
(@URotation+4,9,6,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267454,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 6 - Remove aura from Mark'),
(@URotation+4,9,7,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267453,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 7 - Cast mark'),
(@URotation+4,9,8,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267453,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 8 - Remove aura from Mark'),
(@URotation+4,9,9,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267474,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 9 - Cast mark'),
(@URotation+4,9,10,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267474,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 10 - Remove aura from Mark');
-- Silvermoon City
SET @SRotation :=26797700;
SET @STrigger :=-267977;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@STrigger;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid` IN (@SRotation,@SRotation+1,@SRotation+2,@SRotation+3,@SRotation+4);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@STrigger,0,0,0,1,0,100,0,0,0,15000,15000,87,@SRotation,@SRotation+1,@SRotation+2,@SRotation+3,@SRotation+4,@SRotation+2,1,0,0,0,0,0,0,0,'Brazzier Bunny - OC - Run script 00'),
-- Rotation 0
(@SRotation,9,1,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267483,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 1 - Cast mark'),
(@SRotation,9,2,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267483,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 2 - Remove aura from Mark'),
(@SRotation,9,3,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267484,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 3 - Cast mark'),
(@SRotation,9,4,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267484,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 4 - Remove aura from Mark'),
(@SRotation,9,5,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267485,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 5 - Cast mark'),
(@SRotation,9,6,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267485,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 6 - Remove aura from Mark'),
(@SRotation,9,7,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267486,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 7 - Cast mark'),
(@SRotation,9,8,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267486,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 8 - Remove aura from Mark'),
(@SRotation,9,9,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267487,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 9 - Cast mark'),
(@SRotation,9,10,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267487,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 10 - Remove aura from Mark'),
-- Rotation 1
(@SRotation+1,9,1,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267485,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 1 - Cast mark'),
(@SRotation+1,9,2,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267485,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 2 - Remove aura from Mark'),
(@SRotation+1,9,3,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267486,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 3 - Cast mark'),
(@SRotation+1,9,4,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267486,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 4 - Remove aura from Mark'),
(@SRotation+1,9,5,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267483,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 5 - Cast mark'),
(@SRotation+1,9,6,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267483,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 6 - Remove aura from Mark'),
(@SRotation+1,9,7,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267487,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 7 - Cast mark'),
(@SRotation+1,9,8,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267487,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 8 - Remove aura from Mark'),
(@SRotation+1,9,9,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267484,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 9 - Cast mark'),
(@SRotation+1,9,10,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267484,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 10 - Remove aura from Mark'),
-- Rotation 2
(@SRotation+2,9,1,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267487,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 1 - Cast mark'),
(@SRotation+2,9,2,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267487,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 2 - Remove aura from Mark'),
(@SRotation+2,9,3,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267484,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 3 - Cast mark'),
(@SRotation+2,9,4,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267484,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 4 - Remove aura from Mark'),
(@SRotation+2,9,5,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267486,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 5 - Cast mark'),
(@SRotation+2,9,6,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267486,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 6 - Remove aura from Mark'),
(@SRotation+2,9,7,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267483,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 7 - Cast mark'),
(@SRotation+2,9,8,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267483,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 8 - Remove aura from Mark'),
(@SRotation+2,9,9,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267485,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 9 - Cast mark'),
(@SRotation+2,9,10,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267485,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 10 - Remove aura from Mark'),
-- Rotation 3
(@SRotation+3,9,1,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267484,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 1 - Cast mark'),
(@SRotation+3,9,2,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267484,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 2 - Remove aura from Mark'),
(@SRotation+3,9,3,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267487,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 3 - Cast mark'),
(@SRotation+3,9,4,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267487,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 4 - Remove aura from Mark'),
(@SRotation+3,9,5,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267485,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 5 - Cast mark'),
(@SRotation+3,9,6,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267485,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 6 - Remove aura from Mark'),
(@SRotation+3,9,7,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267486,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 7 - Cast mark'),
(@SRotation+3,9,8,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267486,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 8 - Remove aura from Mark'),
(@SRotation+3,9,9,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267483,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 9 - Cast mark'),
(@SRotation+3,9,10,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267483,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 10 - Remove aura from Mark'),
-- Rotation 4
(@SRotation+4,9,1,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267486,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 1 - Cast mark'),
(@SRotation+4,9,2,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267486,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 2 - Remove aura from Mark'),
(@SRotation+4,9,3,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267483,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 3 - Cast mark'),
(@SRotation+4,9,4,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267483,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 4 - Remove aura from Mark'),
(@SRotation+4,9,5,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267485,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 5 - Cast mark'),
(@SRotation+4,9,6,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267485,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 6 - Remove aura from Mark'),
(@SRotation+4,9,7,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267484,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 7 - Cast mark'),
(@SRotation+4,9,8,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267484,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 8 - Remove aura from Mark'),
(@SRotation+4,9,9,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267487,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 9 - Cast mark'),
(@SRotation+4,9,10,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267487,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 10 - Remove aura from Mark');
-- Stormwind City
SET @SWRotation :=26797900;
SET @SWTrigger :=-267979;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@SWTrigger;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid` IN (@SWRotation,@SWRotation+1,@SWRotation+2,@SWRotation+3,@SWRotation+4);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@SWTrigger,0,0,0,1,0,100,0,0,0,15000,15000,87,@SWRotation,@SWRotation+1,@SWRotation+2,@SWRotation+3,@SWRotation+4,@SWRotation+2,1,0,0,0,0,0,0,0,'Brazzier Bunny - OC - Run script 00'),
-- Rotation 0
(@SWRotation,9,1,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267477,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 1 - Cast mark'),
(@SWRotation,9,2,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267477,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 2 - Remove aura from Mark'),
(@SWRotation,9,3,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267468,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 3 - Cast mark'),
(@SWRotation,9,4,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267468,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 4 - Remove aura from Mark'),
(@SWRotation,9,5,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267488,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 5 - Cast mark'),
(@SWRotation,9,6,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267488,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 6 - Remove aura from Mark'),
(@SWRotation,9,7,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267489,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 7 - Cast mark'),
(@SWRotation,9,8,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267489,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 8 - Remove aura from Mark'),
(@SWRotation,9,9,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267490,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 9 - Cast mark'),
(@SWRotation,9,10,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267490,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 10 - Remove aura from Mark'),
-- Rotation 1
(@SWRotation+1,9,1,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267488,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 1 - Cast mark'),
(@SWRotation+1,9,2,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267488,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 2 - Remove aura from Mark'),
(@SWRotation+1,9,3,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267489,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 3 - Cast mark'),
(@SWRotation+1,9,4,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267489,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 4 - Remove aura from Mark'),
(@SWRotation+1,9,5,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267477,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 5 - Cast mark'),
(@SWRotation+1,9,6,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267477,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 6 - Remove aura from Mark'),
(@SWRotation+1,9,7,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267490,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 7 - Cast mark'),
(@SWRotation+1,9,8,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267490,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 8 - Remove aura from Mark'),
(@SWRotation+1,9,9,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267468,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 9 - Cast mark'),
(@SWRotation+1,9,10,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267468,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 10 - Remove aura from Mark'),
-- Rotation 2
(@SWRotation+2,9,1,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267490,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 1 - Cast mark'),
(@SWRotation+2,9,2,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267490,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 2 - Remove aura from Mark'),
(@SWRotation+2,9,3,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267468,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 3 - Cast mark'),
(@SWRotation+2,9,4,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267468,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 4 - Remove aura from Mark'),
(@SWRotation+2,9,5,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267489,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 5 - Cast mark'),
(@SWRotation+2,9,6,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267489,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 6 - Remove aura from Mark'),
(@SWRotation+2,9,7,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267477,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 7 - Cast mark'),
(@SWRotation+2,9,8,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267477,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 8 - Remove aura from Mark'),
(@SWRotation+2,9,9,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267488,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 9 - Cast mark'),
(@SWRotation+2,9,10,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267488,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 10 - Remove aura from Mark'),
-- Rotation 3
(@SWRotation+3,9,1,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267468,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 1 - Cast mark'),
(@SWRotation+3,9,2,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267468,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 2 - Remove aura from Mark'),
(@SWRotation+3,9,3,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267490,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 3 - Cast mark'),
(@SWRotation+3,9,4,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267490,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 4 - Remove aura from Mark'),
(@SWRotation+3,9,5,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267488,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 5 - Cast mark'),
(@SWRotation+3,9,6,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267488,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 6 - Remove aura from Mark'),
(@SWRotation+3,9,7,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267489,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 7 - Cast mark'),
(@SWRotation+3,9,8,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267489,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 8 - Remove aura from Mark'),
(@SWRotation+3,9,9,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267477,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 9 - Cast mark'),
(@SWRotation+3,9,10,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267477,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 10 - Remove aura from Mark'),
-- Rotation 4
(@SWRotation+4,9,1,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267489,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 1 - Cast mark'),
(@SWRotation+4,9,2,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267489,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 2 - Remove aura from Mark'),
(@SWRotation+4,9,3,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267477,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 3 - Cast mark'),
(@SWRotation+4,9,4,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267477,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 4 - Remove aura from Mark'),
(@SWRotation+4,9,5,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267488,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 5 - Cast mark'),
(@SWRotation+4,9,6,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267488,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 6 - Remove aura from Mark'),
(@SWRotation+4,9,7,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267468,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 7 - Cast mark'),
(@SWRotation+4,9,8,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267468,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 8 - Remove aura from Mark'),
(@SWRotation+4,9,9,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267490,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 9 - Cast mark'),
(@SWRotation+4,9,10,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267490,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 10 - Remove aura from Mark');
-- Ironforge
SET @IRotation :=26798000;
SET @ITrigger :=-267980;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ITrigger;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid` IN (@IRotation,@IRotation+1,@IRotation+2,@IRotation+3,@IRotation+4);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ITrigger,0,0,0,1,0,100,0,0,0,15000,15000,87,@IRotation,@IRotation+1,@IRotation+2,@IRotation+3,@IRotation+4,@IRotation+2,1,0,0,0,0,0,0,0,'Brazzier Bunny - OC - Run script 00'),
-- Rotation 0
(@IRotation,9,1,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267455,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 1 - Cast mark'),
(@IRotation,9,2,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267455,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 2 - Remove aura from Mark'),
(@IRotation,9,3,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267456,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 3 - Cast mark'),
(@IRotation,9,4,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267456,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 4 - Remove aura from Mark'),
(@IRotation,9,5,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267457,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 5 - Cast mark'),
(@IRotation,9,6,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267457,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 6 - Remove aura from Mark'),
(@IRotation,9,7,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267475,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 7 - Cast mark'),
(@IRotation,9,8,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267475,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 8 - Remove aura from Mark'),
(@IRotation,9,9,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267476,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 9 - Cast mark'),
(@IRotation,9,10,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267476,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 10 - Remove aura from Mark'),
-- Rotation 1
(@IRotation+1,9,1,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267457,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 1 - Cast mark'),
(@IRotation+1,9,2,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267457,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 2 - Remove aura from Mark'),
(@IRotation+1,9,3,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267475,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 3 - Cast mark'),
(@IRotation+1,9,4,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267475,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 4 - Remove aura from Mark'),
(@IRotation+1,9,5,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267455,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 5 - Cast mark'),
(@IRotation+1,9,6,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267455,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 6 - Remove aura from Mark'),
(@IRotation+1,9,7,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267476,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 7 - Cast mark'),
(@IRotation+1,9,8,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267476,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 8 - Remove aura from Mark'),
(@IRotation+1,9,9,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267456,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 9 - Cast mark'),
(@IRotation+1,9,10,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267456,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 10 - Remove aura from Mark'),
-- Rotation 2
(@IRotation+2,9,1,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267476,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 1 - Cast mark'),
(@IRotation+2,9,2,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267476,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 2 - Remove aura from Mark'),
(@IRotation+2,9,3,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267456,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 3 - Cast mark'),
(@IRotation+2,9,4,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267456,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 4 - Remove aura from Mark'),
(@IRotation+2,9,5,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267475,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 5 - Cast mark'),
(@IRotation+2,9,6,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267475,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 6 - Remove aura from Mark'),
(@IRotation+2,9,7,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267455,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 7 - Cast mark'),
(@IRotation+2,9,8,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267455,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 8 - Remove aura from Mark'),
(@IRotation+2,9,9,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267457,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 9 - Cast mark'),
(@IRotation+2,9,10,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267457,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 10 - Remove aura from Mark'),
-- Rotation 3
(@IRotation+3,9,1,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267456,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 1 - Cast mark'),
(@IRotation+3,9,2,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267456,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 2 - Remove aura from Mark'),
(@IRotation+3,9,3,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267476,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 3 - Cast mark'),
(@IRotation+3,9,4,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267476,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 4 - Remove aura from Mark'),
(@IRotation+3,9,5,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267457,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 5 - Cast mark'),
(@IRotation+3,9,6,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267457,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 6 - Remove aura from Mark'),
(@IRotation+3,9,7,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267475,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 7 - Cast mark'),
(@IRotation+3,9,8,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267475,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 8 - Remove aura from Mark'),
(@IRotation+3,9,9,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267455,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 9 - Cast mark'),
(@IRotation+3,9,10,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267455,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 10 - Remove aura from Mark'),
-- Rotation 4
(@IRotation+4,9,1,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267475,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 1 - Cast mark'),
(@IRotation+4,9,2,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267475,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 2 - Remove aura from Mark'),
(@IRotation+4,9,3,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267455,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 3 - Cast mark'),
(@IRotation+4,9,4,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267455,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 4 - Remove aura from Mark'),
(@IRotation+4,9,5,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267457,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 5 - Cast mark'),
(@IRotation+4,9,6,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267457,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 6 - Remove aura from Mark'),
(@IRotation+4,9,7,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267456,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 7 - Cast mark'),
(@IRotation+4,9,8,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267456,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 8 - Remove aura from Mark'),
(@IRotation+4,9,9,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267476,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 9 - Cast mark'),
(@IRotation+4,9,10,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267476,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 10 - Remove aura from Mark');
-- Darnassus
SET @DRotation :=26798100;
SET @DTrigger :=-267981;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@DTrigger;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid` IN (@DRotation,@DRotation+1,@DRotation+2,@DRotation+3,@DRotation+4);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@DTrigger,0,0,0,1,0,100,0,0,0,15000,15000,87,@DRotation,@DRotation+1,@DRotation+2,@DRotation+3,@DRotation+4,@DRotation+2,1,0,0,0,0,0,0,0,'Brazzier Bunny - OC - Run script 00'),
-- Rotation 0
(@DRotation,9,1,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267459,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 1 - Cast mark'),
(@DRotation,9,2,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267459,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 2 - Remove aura from Mark'),
(@DRotation,9,3,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267460,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 3 - Cast mark'),
(@DRotation,9,4,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267460,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 4 - Remove aura from Mark'),
(@DRotation,9,5,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267461,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 5 - Cast mark'),
(@DRotation,9,6,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267461,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 6 - Remove aura from Mark'),
(@DRotation,9,7,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267464,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 7 - Cast mark'),
(@DRotation,9,8,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267464,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 8 - Remove aura from Mark'),
(@DRotation,9,9,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267465,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 9 - Cast mark'),
(@DRotation,9,10,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267465,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 10 - Remove aura from Mark'),
-- Rotation 1
(@DRotation+1,9,1,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267461,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 1 - Cast mark'),
(@DRotation+1,9,2,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267461,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 2 - Remove aura from Mark'),
(@DRotation+1,9,3,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267464,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 3 - Cast mark'),
(@DRotation+1,9,4,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267464,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 4 - Remove aura from Mark'),
(@DRotation+1,9,5,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267459,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 5 - Cast mark'),
(@DRotation+1,9,6,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267459,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 6 - Remove aura from Mark'),
(@DRotation+1,9,7,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267465,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 7 - Cast mark'),
(@DRotation+1,9,8,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267465,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 8 - Remove aura from Mark'),
(@DRotation+1,9,9,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267460,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 9 - Cast mark'),
(@DRotation+1,9,10,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267460,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 10 - Remove aura from Mark'),
-- Rotation 2
(@DRotation+2,9,1,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267465,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 1 - Cast mark'),
(@DRotation+2,9,2,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267465,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 2 - Remove aura from Mark'),
(@DRotation+2,9,3,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267460,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 3 - Cast mark'),
(@DRotation+2,9,4,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267460,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 4 - Remove aura from Mark'),
(@DRotation+2,9,5,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267464,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 5 - Cast mark'),
(@DRotation+2,9,6,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267464,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 6 - Remove aura from Mark'),
(@DRotation+2,9,7,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267459,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 7 - Cast mark'),
(@DRotation+2,9,8,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267459,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 8 - Remove aura from Mark'),
(@DRotation+2,9,9,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267461,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 9 - Cast mark'),
(@DRotation+2,9,10,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267461,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 10 - Remove aura from Mark'),
-- Rotation 3
(@DRotation+3,9,1,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267460,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 1 - Cast mark'),
(@DRotation+3,9,2,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267460,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 2 - Remove aura from Mark'),
(@DRotation+3,9,3,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267465,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 3 - Cast mark'),
(@DRotation+3,9,4,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267465,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 4 - Remove aura from Mark'),
(@DRotation+3,9,5,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267461,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 5 - Cast mark'),
(@DRotation+3,9,6,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267461,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 6 - Remove aura from Mark'),
(@DRotation+3,9,7,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267464,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 7 - Cast mark'),
(@DRotation+3,9,8,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267464,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 8 - Remove aura from Mark'),
(@DRotation+3,9,9,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267459,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 9 - Cast mark'),
(@DRotation+3,9,10,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267459,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 10 - Remove aura from Mark'),
-- Rotation 4
(@DRotation+4,9,1,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267464,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 1 - Cast mark'),
(@DRotation+4,9,2,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267464,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 2 - Remove aura from Mark'),
(@DRotation+4,9,3,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267459,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 3 - Cast mark'),
(@DRotation+4,9,4,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267459,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 4 - Remove aura from Mark'),
(@DRotation+4,9,5,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267461,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 5 - Cast mark'),
(@DRotation+4,9,6,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267461,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 6 - Remove aura from Mark'),
(@DRotation+4,9,7,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267460,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 7 - Cast mark'),
(@DRotation+4,9,8,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267460,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 8 - Remove aura from Mark'),
(@DRotation+4,9,9,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267465,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 9 - Cast mark'),
(@DRotation+4,9,10,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267465,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 10 - Remove aura from Mark');
-- Exodar
SET @ERotation :=26798200;
SET @ETrigger :=-267982;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ETrigger;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid` IN (@ERotation,@ERotation+1,@ERotation+2,@ERotation+3,@ERotation+4);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ETrigger,0,0,0,1,0,100,0,0,0,15000,15000,87,@ERotation,@ERotation+1,@ERotation+2,@ERotation+3,@ERotation+4,@ERotation+2,1,0,0,0,0,0,0,0,'Brazzier Bunny - OC - Run script 00'),
-- Rotation 0
(@ERotation,9,1,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267478,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 1 - Cast mark'),
(@ERotation,9,2,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267478,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 2 - Remove aura from Mark'),
(@ERotation,9,3,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267479,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 3 - Cast mark'),
(@ERotation,9,4,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267479,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 4 - Remove aura from Mark'),
(@ERotation,9,5,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267461,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 5 - Cast mark'),
(@ERotation,9,6,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267461,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 6 - Remove aura from Mark'),
(@ERotation,9,7,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267481,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 7 - Cast mark'),
(@ERotation,9,8,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267481,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 8 - Remove aura from Mark'),
(@ERotation,9,9,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267482,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 9 - Cast mark'),
(@ERotation,9,10,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267482,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 10 - Remove aura from Mark'),
-- Rotation 1
(@ERotation+1,9,1,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,2674821,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 1 - Cast mark'),
(@ERotation+1,9,2,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,2674821,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 2 - Remove aura from Mark'),
(@ERotation+1,9,3,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267481,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 3 - Cast mark'),
(@ERotation+1,9,4,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267481,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 4 - Remove aura from Mark'),
(@ERotation+1,9,5,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267478,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 5 - Cast mark'),
(@ERotation+1,9,6,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267478,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 6 - Remove aura from Mark'),
(@ERotation+1,9,7,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267482,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 7 - Cast mark'),
(@ERotation+1,9,8,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267482,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 8 - Remove aura from Mark'),
(@ERotation+1,9,9,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267479,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 9 - Cast mark'),
(@ERotation+1,9,10,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267479,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 10 - Remove aura from Mark'),
-- Rotation 2
(@ERotation+2,9,1,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267482,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 1 - Cast mark'),
(@ERotation+2,9,2,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267482,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 2 - Remove aura from Mark'),
(@ERotation+2,9,3,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267479,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 3 - Cast mark'),
(@ERotation+2,9,4,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267479,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 4 - Remove aura from Mark'),
(@ERotation+2,9,5,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267481,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 5 - Cast mark'),
(@ERotation+2,9,6,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267481,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 6 - Remove aura from Mark'),
(@ERotation+2,9,7,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267478,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 7 - Cast mark'),
(@ERotation+2,9,8,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267478,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 8 - Remove aura from Mark'),
(@ERotation+2,9,9,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,2674821,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 9 - Cast mark'),
(@ERotation+2,9,10,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,2674821,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 10 - Remove aura from Mark'),
-- Rotation 3
(@ERotation+3,9,1,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267479,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 1 - Cast mark'),
(@ERotation+3,9,2,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267479,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 2 - Remove aura from Mark'),
(@ERotation+3,9,3,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267482,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 3 - Cast mark'),
(@ERotation+3,9,4,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267482,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 4 - Remove aura from Mark'),
(@ERotation+3,9,5,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,2674821,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 5 - Cast mark'),
(@ERotation+3,9,6,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,2674821,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 6 - Remove aura from Mark'),
(@ERotation+3,9,7,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267481,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 7 - Cast mark'),
(@ERotation+3,9,8,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267481,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 8 - Remove aura from Mark'),
(@ERotation+3,9,9,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267478,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 9 - Cast mark'),
(@ERotation+3,9,10,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267478,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 10 - Remove aura from Mark'),
-- Rotation 4
(@ERotation+4,9,1,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267481,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 1 - Cast mark'),
(@ERotation+4,9,2,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267481,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 2 - Remove aura from Mark'),
(@ERotation+4,9,3,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267478,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 3 - Cast mark'),
(@ERotation+4,9,4,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267478,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 4 - Remove aura from Mark'),
(@ERotation+4,9,5,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,2674821,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 5 - Cast mark'),
(@ERotation+4,9,6,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,2674821,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 6 - Remove aura from Mark'),
(@ERotation+4,9,7,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267479,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 7 - Cast mark'),
(@ERotation+4,9,8,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267479,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 8 - Remove aura from Mark'),
(@ERotation+4,9,9,0,0,0,100,0,500,500,0,0,11,64328,0,0,0,0,0,10,267482,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 9 - Cast mark'),
(@ERotation+4,9,10,0,0,0,100,0,2500,2500,0,0,28,64328,0,0,0,0,0,10,267482,0,0,0,0,0,0,'Actionlist /Invisible Trigger controlling braziers/ - Action 10 - Remove aura from Mark');
-- General to do: the ending /awarding is not working/, someone who knows c++ has to rewritte a check for the quest awarding spells to auto check on cast fro nearby friendly unit with 8 or 20 and if result is true to award spell. /Absolutely nothing else can solve it, tested all that core offers, I hope so atleast./ This currently was a way of ending, if target buffet with actualy check for currentl gossip talks as targets


-- Más arreglos

--UPDATE quest_template SET RequiredNpcOrGo1='25515',RequiredNpcOrGoCount1='8' where id in (11922,11731);
--UPDATE creature_template SET NAME='Blandones acertados' WHERE entry='25515';
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150325','25710','547','1','1','0','0','122.747','-92.9202','-1.59055','4.94253','300','0','0','42','0','0','0','0','0');
DELETE FROM creature_questrelation WHERE quest IN (11922,11731,11964,11966,11886,9339,9365,11926,11921,11953,11952,11948,11947,11917,11954,11923,11657,11925,11924);
insert into `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) values('58933','45427','2','Midsummer -Visual conjunto');
UPDATE creature_template SET ScriptName='npc_trigger_ribbon',InhabitType='4',MovementType='0' WHERE entry='17066';
UPDATE creature SET MovementType='0', spawndist='0' WHERE id='17066';
insert into `spell_script_names` (`spell_id`, `ScriptName`) values('45671','spell_gen_lanz_antor_logro');
insert into `spell_script_names` (`spell_id`, `ScriptName`) values('45724','spell_blandones_golpeados_qcredit');
insert into `spell_script_names` (`spell_id`, `ScriptName`) values('45819','spell_gen_antorchas_logr');
insert into `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) values('90027','0','0','0','0','0','18783','0','0','0','Trigger Torch Poss','Solsticio',NULL,'0','80','80','0','35','35','0','1','1.14286','1','1','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','4','1','3','1','1','0','0','0','0','0','0','0','0','1','0','0','130','npc_trigger_torch_mal','1');
DELETE FROM `achievement_criteria_data` WHERE `criteria_id`=6937;
INSERT INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`, `ScriptName`) VALUES
(6937, 16, 341, 0, '');
INSERT INTO `achievement_criteria_data` (criteria_id, TYPE, value1, value2, ScriptName) VALUES
(6937, 6, 4395, 0, '');
UPDATE creature_template SET ScriptName='npc_achievement_llamas_ciudades', AIName='' WHERE entry='16817' OR entry='16818';
insert into `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) values('90030','0','0','0','0','0','18783','0','0','0','<Trigger> Zone Music Alianza','Solsticio',NULL,'0','80','80','0','35','35','0','1','1.14286','2','1','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','4','1','3','1','1','0','0','0','0','0','0','0','0','1','0','0','130','npc_midsummer_music','1');
insert into `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) values('90029','0','0','0','0','0','18783','0','0','0','<Trigger> Zone Music Horda','Solsticio',NULL,'0','80','80','0','35','35','0','1','1.14286','2','1','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','4','1','3','1','1','0','0','0','0','0','0','0','0','1','0','0','130','npc_midsummer_music','1');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150383','90029','1','1','1','0','0','1928.81','-4333.91','19.8534','3.39007','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150384','90029','0','1','1','0','0','1805.54','227.038','60.4005','3.60357','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150385','90029','1','1','1','0','0','-1035.38','289.153','135.747','0.388614','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150386','90029','530','1','1','0','0','9809.12','-7248.14','26.1583','4.6375','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150387','90030','0','1','1','0','0','-8825.62','858.506','99.0302','1.85075','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150388','90030','1','1','1','0','0','8706.99','947.356','13.5829','1.63703','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150389','90030','0','1','1','0','0','-4694.4','-1217.49','501.658','2.94948','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150390','90030','530','1','1','0','0','-3785.54','-11502.4','-134.643','1.8182','300','0','0','16026','0','0','0','33554432','0');
DELETE FROM `creature_questrelation` WHERE `quest` IN (11846,11845,11852,11839,11859,11841,11849,11861,11847,11836,11838,11856,11850,11848,11853,11857,11837,11844,11860,11584,11862,11842,11840,11851,11855,11835,11858,11863,11821,11854,11843,13500,13493,13494,13495,13496,13497,13498,13499,11805,11812,11815,11834,11833,11831,11817,11811,11806,11809,11826,11824,11826,11827,11819,11583,11828,11816,11810,11808,11804,11832,11813,11814,11820,11822,11823,11821,11830,11818,11825,11807,11829,13485,13487,13489,13488,13490,13486,13491,13492,11770,11769,11777,11803,11783,11773,11765,11771,11785,11800,11780,11802,11774,11772,11776,11781,11801,11768,11784,11580,11786,11766,11764,11775,11779,11799,11782,11787,11767,11778,13458,13441,13450,13451,13457,13455,13454,13453,11734,11741,11744,11763,11762,11760,11746,11740,11735,11738,11753,11755,11756,11748,11581,11757,11745,11739,11737,11732,11761,11742,11743,11749,11751,11752,11750,11759,11747,11754,11736,11758,13440,13443,13445,13444,13449,13446,13442,13447,13431,9324,11935,9326,9325,9332,9331,9330,11933,11972,11691);

insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150382','90028','1','1','1','0','0','8722.96','948.429','16.143','0.458931','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150381','90028','1','1','1','0','0','8714.7','956.032','13.4696','0.458931','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150380','90028','1','1','1','0','0','8705.47','950.668','13.5201','2.57951','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150379','90028','1','1','1','0','0','8714.35','950.854','14.2459','0.608157','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150378','90028','1','1','1','0','0','8716.67','945.042','14.8579','0.608157','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150377','90028','1','1','1','0','0','8710.1','945.209','13.9766','0.608157','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150376','90028','1','1','1','0','0','8707.58','940.524','13.9136','0.608157','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150375','90028','530','1','1','0','0','-3779.16','-11473.3','-134.454','5.45852','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150374','90028','530','1','1','0','0','-3792.94','-11486.1','-134.659','4.54746','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150373','90028','530','1','1','0','0','-3784.69','-11479.1','-134.539','4.54746','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150372','90028','530','1','1','0','0','-3775.44','-11480.7','-134.445','0.302382','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150371','90028','530','1','1','0','0','-3783.25','-11483.1','-134.546','0.302382','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150370','90028','530','1','1','0','0','-3780.79','-11491','-134.546','0.302382','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150369','90028','530','1','1','0','0','-3789.75','-11493.8','-134.658','0.302382','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150368','90028','0','1','1','0','0','-4693.75','-1211.65','501.66','5.76512','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150367','90028','0','1','1','0','0','-4702.16','-1199.21','501.66','5.76512','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150366','90028','0','1','1','0','0','-4716.26','-1197.94','501.686','3.16937','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150365','90028','0','1','1','0','0','-4716','-1207.31','501.66','3.16937','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150364','90028','0','1','1','0','0','-4695.12','-1198.54','501.66','0.491165','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150363','90028','0','1','1','0','0','-4711.42','-1201.36','501.66','2.56462','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150362','90028','0','1','1','0','0','-4701.62','-1207.74','501.66','1.88525','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150361','90028','0','1','1','0','0','-8817.92','887.588','98.4141','3.95327','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150360','90028','0','1','1','0','0','-8806.93','876.492','98.9337','1.28291','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150359','90028','0','1','1','0','0','-8819.28','880.149','98.6806','1.28291','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150358','90028','0','1','1','0','0','-8815.47','871.378','98.8916','1.28291','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150357','90028','0','1','1','0','0','-8817.48','864.599','98.9825','3.69016','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150356','90028','0','1','1','0','0','-8821.8','870.714','98.7894','3.69016','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150355','90028','0','1','1','0','0','-8828.54','864.284','98.8717','3.69016','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150354','90028','0','1','1','0','0','1818.69','235.722','60.3845','4.12586','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150353','90028','0','1','1','0','0','1835.87','250.944','59.8592','5.0919','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150352','90028','0','1','1','0','0','1828.2','247.884','60.0161','2.11131','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150351','90028','0','1','1','0','0','1820.15','243.057','60.0035','3.41507','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150350','90028','0','1','1','0','0','1838.94','237.27','60.579','0.0535705','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150349','90028','0','1','1','0','0','1828.46','236.708','60.735','3.03416','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150348','90028','0','1','1','0','0','1827.23','229.415','60.163','4.32614','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150347','90028','1','1','1','0','0','-1046.26','294.061','135.272','1.34353','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150346','90028','1','1','1','0','0','-1050.47','288.632','134.591','1.34353','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150345','90028','1','1','1','0','0','-1044.24','278.656','135.482','1.34353','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150344','90028','1','1','1','0','0','-1046.62','268.358','133.9','3.76256','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150343','90028','1','1','1','0','0','-1040.9','287.406','135.694','3.76256','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150342','90028','1','1','1','0','0','-1034.06','277.841','135.745','6.11876','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150341','90028','1','1','1','0','0','-1032.52','287.095','135.745','6.11876','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150340','90028','530','1','1','0','0','9819.29','-7258.47','26.1761','1.61766','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150339','90028','530','1','1','0','0','9820.11','-7276.02','26.2752','0.533814','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150338','90028','530','1','1','0','0','9815.34','-7267.95','26.2366','0.533814','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150337','90028','530','1','1','0','0','9808.29','-7272.11','26.3002','2.01429','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150336','90028','530','1','1','0','0','9823.08','-7265.08','26.1852','1.11108','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150335','90028','530','1','1','0','0','9810.47','-7258.7','26.2355','1.57054','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150334','90028','530','1','1','0','0','9811.1','-7251.89','26.2041','0.196093','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150333','90028','1','1','1','0','0','1944.08','-4352.18','20.9958','5.53816','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150332','90028','1','1','1','0','0','1948.47','-4332.35','22.4668','6.06045','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150331','90028','1','1','1','0','0','1928.55','-4327.6','20.197','1.48158','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150330','90028','1','1','1','0','0','1927.69','-4353.96','19.8082','4.4818','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150329','90028','1','1','1','0','0','1937.11','-4345.21','20.0795','4.47395','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150328','90028','1','1','1','0','0','1939.73','-4336.21','21.2602','5.80128','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150327','90028','1','1','1','0','0','1932.47','-4332.41','19.834','5.80128','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150326','90028','1','1','1','0','0','1930.04','-4342.38','19.7631','3.59039','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150391','90029','1','1','1','0','0','156.899','-4733.07','15.3233','6.1889','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150392','17066','1','1','1','0','0','157.701','-4761.73','11.7708','0.431139','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150393','17066','1','1','1','0','0','146.642','-4735.25','21.1641','4.55445','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150394','17066','1','1','1','0','0','-4592.49','431.303','49.2427','1.78154','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150395','90029','1','1','1','0','0','-4596.08','439.604','41.8861','1.25925','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150396','90029','1','1','1','0','0','-298.697','-2666.35','93.3333','2.67088','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150397','17066','1','1','1','0','0','-307.44','-2662.5','99.9058','2.94184','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150398','17066','1','1','1','0','0','-7097.06','-3672.92','18.2172','3.7535','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150399','90029','1','1','1','0','0','-7099.43','-3666.23','11.4835','2.54791','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150400','17066','1','1','1','0','0','-1845.77','3037.11','10.482','4.59772','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150401','90029','1','1','1','0','0','-1839.32','3034.45','5.84648','4.02438','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150402','90029','1','1','1','0','0','-3115.4','-2743.07','35.0385','5.36557','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150403','17066','1','1','1','0','0','-3109.69','-2751.4','41.214','1.81164','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150404','17066','1','1','1','0','0','-2342.98','-609.076','-1.32008','2.79124','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150405','90029','1','1','1','0','0','-2346.41','-602.532','-8.34075','5.07126','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150406','17066','1','1','1','0','0','-6977.92','905.376','15.5315','1.61488','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150407','90029','1','1','1','0','0','-6980.24','911.039','9.95554','1.44209','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150408','90029','1','1','1','0','0','937.746','783.579','104.965','1.38108','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150409','17066','1','1','1','0','0','938.876','800.843','110.922','1.7188','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150410','90029','1','1','1','0','0','6846.1','-4567.41','709.001','4.43314','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150411','17066','1','1','1','0','0','6838.63','-4579.37','714.595','1.45985','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150412','90029','1','1','1','0','0','2009.33','-2345.09','89.6542','2.94961','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150413','17066','1','1','1','0','0','1989.84','-2339.54','96.7227','6.0268','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150414','90029','1','1','1','0','0','-5523.14','-2290','-57.8806','0.463027','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150415','17066','1','1','1','0','0','-5511.41','-2275.47','-52.5506','0.730063','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150416','17066','0','1','1','0','0','-1133.59','-3555.83','57.9339','1.42227','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150417','90029','0','1','1','0','0','-7603.96','-2073.49','127.823','0.203073','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150418','17066','0','1','1','0','0','-7607.67','-2070.33','135.359','1.16519','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150419','90029','530','1','1','0','0','7687.5','-6828.05','77.8088','4.93387','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150420','17066','530','1','1','0','0','7670.42','-6836.58','86.162','4.68019','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150421','90029','0','1','1','0','0','-10344.7','-3290.39','22.1238','4.1476','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150422','17066','0','1','1','0','0','-10359.5','-3303.81','28.9832','0.719338','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150423','17066','0','1','1','0','0','-481.218','-4539.09','17.8616','0.795428','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150424','90029','0','1','1','0','0','-6694.9','-2192.09','247.83','5.74912','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150425','17066','0','1','1','0','0','-6681.39','-2197.1','255.515','5.863','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150426','90029','530','1','1','0','0','9377.53','-6781.34','13.8287','4.42022','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150427','17066','530','1','1','0','0','9379.78','-6791.71','21.1353','0.922059','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150428','90029','0','1','1','0','0','-149.412','-802.063','55.6489','0.506497','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150429','17066','0','1','1','0','0','-117.672','-823.417','62.9939','5.58175','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150430','90029','0','1','1','0','0','596.765','1359.68','89.5738','3.86721','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150431','17066','0','1','1','0','0','601.317','1343.16','95.5175','4.31096','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150432','90029','0','1','1','0','0','-14366.9','115.729','0.824879','2.3404','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150433','17066','0','1','1','0','0','-14391.9','132.553','7.21276','5.70976','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150434','90029','0','1','1','0','0','2274.07','447.628','33.9914','0.824668','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150435','17066','0','1','1','0','0','2288.5','422.204','40.8575','5.4059','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150436','90029','530','1','1','0','0','2300.05','6138.23','135.333','1.15799','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150437','17066','530','1','1','0','0','2286.69','6164.11','142.797','3.06101','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150438','90029','530','1','1','0','0','-1217.94','7482.7','21.8879','3.22886','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150439','17066','530','1','1','0','0','-1208.1','7503.71','27.1479','0.757211','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150440','90029','530','1','1','0','0','-3070.93','2375.7','61.7372','1.37565','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150441','17066','530','1','1','0','0','-3045.51','2393.87','68.1418','4.5251','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150442','90029','530','1','1','0','0','202.835','7698.05','23.2255','4.94801','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150443','17066','530','1','1','0','0','221.434','7680.28','29.6626','5.25039','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150444','90029','530','1','1','0','0','31.1101','2589','69.1579','0.622217','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150445','17066','530','1','1','0','0','26.1308','2608.07','78.8839','1.39662','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150446','90029','530','1','1','0','0','2919.22','3707.56','143.972','5.9226','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150447','17066','530','1','1','0','0','2917.44','3677.37','150.448','1.36886','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150448','90029','530','1','1','0','0','-2545.21','4277.23','19.9625','4.15301','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150449','17066','530','1','1','0','0','-2536.98','4277.92','22.9007','4.69101','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150450','90029','571','1','1','0','0','2593.39','-4359.21','275.654','2.37532','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150451','17066','571','1','1','0','0','2584.72','-4363.44','282.102','1.20744','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150452','90029','571','1','1','0','0','6151.37','-1005.93','406.118','5.02464','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150453','17066','571','1','1','0','0','6169.62','-1017.78','414.885','2.60797','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150454','90029','571','1','1','0','0','3764.9','1483.2','92.4843','0.182808','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150455','17066','571','1','1','0','0','3776.5','1488.63','98.1757','0.1671','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150456','90029','571','1','1','0','0','4448.67','5619.5','56.0951','0.831989','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150457','17066','571','1','1','0','0','4470.22','5621.63','65.1324','3.6123','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150458','90029','571','1','1','0','0','5495.34','4885.62','-198.847','0.175842','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150459','17066','571','1','1','0','0','5515.21','4863.42','-192.113','4.01015','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150460','90029','571','1','1','0','0','5277.69','-2761.91','292.419','5.65236','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150461','17066','571','1','1','0','0','5276.28','-2779.79','298.49','4.4507','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150462','90029','571','1','1','0','0','5527.78','-735.705','149.294','0.0805602','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150463','17066','571','1','1','0','0','5539.78','-749.296','158.593','3.28891','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150464','90030','1','1','1','0','0','2577.91','-473.044','107.329','3.49214','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150465','17066','1','1','1','0','0','2562.56','-461.9','115.732','4.23922','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150466','90030','530','1','1','0','0','-2239.96','-11911.2','24.9035','0.448095','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150467','17066','530','1','1','0','0','-2232.11','-11915.5','33.4579','2.53412','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150468','90030','1','1','1','0','0','-64.5836','1239.14','91.0371','0.788392','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150469','17066','1','1','1','0','0','-56.4204','1236.93','97.6241','2.62544','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150470','90030','1','1','1','0','0','-4402.45','3460.56','12.3704','2.80379','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150471','17066','1','1','1','0','0','-4417.1','3455.66','21.8692','5.80872','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150472','90030','1','1','1','0','0','9799.18','1029.42','1302.29','2.71286','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150473','17066','1','1','1','0','0','9781.82','1034.81','1306.18','1.93861','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150474','90030','530','1','1','0','0','-4203.97','-12309.9','1.45051','0.590879','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150475','17066','530','1','1','0','0','-4198.38','-12312.4','7.69259','2.31326','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150476','90030','1','1','1','0','0','6317.31','525.956','17.0424','4.50356','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150477','17066','1','1','1','0','0','6326.05','524.37','22.6322','5.55094','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150478','90030','1','1','1','0','0','-3464.29','-4212.5','9.7914','1.47028','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150479','17066','1','1','1','0','0','-3479.64','-4205.97','19.2893','5.66116','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150480','90030','1','1','1','0','0','-6780.13','546.423','2.12321','0.720123','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150481','17066','1','1','1','0','0','-6780.29','555.397','10.5104','1.00601','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150482','90030','1','1','1','0','0','6858.54','-4745.55','696.84','3.6288','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150483','17066','1','1','1','0','0','6841.77','-4747.81','704.572','5.36453','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150484','90030','1','1','1','0','0','-7240.94','-3849.62','10.3567','2.12297','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150485','17066','1','1','1','0','0','-7244.12','-3842.99','16.6998','0.851745','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150486','90030','0','1','1','0','0','-1199.52','-2668.2','44.5598','0.787405','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150487','17066','0','1','1','0','0','-1190.74','-2672.71','53.3202','6.24514','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150488','90030','0','1','1','0','0','-8257','-2640.73','133.173','5.75756','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150489','17066','0','1','1','0','0','-8256.67','-2647.44','140.237','4.17262','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150490','90030','0','1','1','0','0','-10676.4','-1147.2','25.8292','4.54886','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150491','17066','0','1','1','0','0','-10676.9','-1154.1','32.504','2.6584','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150492','90030','0','1','1','0','0','-5245','-2878.88','338.841','2.94444','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150493','17066','0','1','1','0','0','-5247.15','-2873.08','345.52','2.00668','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150494','90030','0','1','1','0','0','-9437.16','-2126.41','65.8533','3.04542','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150495','17066','0','1','1','0','0','-9443.19','-2133.32','74.0978','3.93214','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150496','90030','0','1','1','0','0','169.423','-2110.17','104.24','1.50927','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150497','17066','0','1','1','0','0','177.102','-2103.47','114.073','6.07087','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150498','17066','0','1','1','0','0','177.102','-2103.47','114.073','6.07087','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150499','90030','0','1','1','0','0','-10644.5','1050.52','33.3038','4.00789','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150500','17066','0','1','1','0','0','-10644.8','1078.46','41.7987','4.37703','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150501','90030','0','1','1','0','0','-10956.8','-3236.61','41.348','2.41161','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150502','17066','0','1','1','0','0','-10961.6','-3232.42','47.6931','1.06072','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150503','90030','0','1','1','0','0','-5422.89','-502.657','396.617','2.79104','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150504','17066','0','1','1','0','0','-5435.74','-493.399','403.312','2.10303','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150505','90030','0','1','1','0','0','-9377.57','15.5126','62.8802','6.17366','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150506','17066','0','1','1','0','0','-9376.06','10.2781','70.1557','3.46011','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150507','17066','0','1','1','0','0','-14277.6','46.9662','7.72701','2.69112','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150508','17066','0','1','1','0','0','994.574','-1436.29','70.6826','2.90301','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150509','90030','0','1','1','0','0','1005.82','-1429.06','65.1511','0.669338','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150510','90030','0','1','1','0','0','-3445.63','-950.665','9.48776','5.53409','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150511','17066','0','1','1','0','0','-3425.17','-961.715','17.7142','5.73044','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150512','17066','530','1','1','0','0','2049.58','6588.62','143.59','4.75106','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150513','90030','530','1','1','0','0','2039.3','6583.57','135.403','3.69863','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150514','17066','530','1','1','0','0','-3965.19','2039.21','101.951','2.51119','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150515','90030','530','1','1','0','0','-3938.18','2040.54','95.0887','3.18978','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150516','90030','530','1','1','0','0','-510.55','2340.98','38.0398','6.10394','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150517','17066','530','1','1','0','0','-508.32','2343.05','44.4517','1.63581','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150518','90030','530','1','1','0','0','3120.65','3723.41','145.461','4.47547','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150519','17066','530','1','1','0','0','3113.28','3717.69','151.865','5.5876','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150520','90030','530','1','1','0','0','-2992.36','4154.54','5.83813','4.68328','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150521','17066','530','1','1','0','0','-2988.71','4126.91','11.6337','5.38307','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150522','90030','571','1','1','0','0','3947.37','-604.501','241.314','4.82764','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150523','17066','571','1','1','0','0','3943.21','-620.715','249.255','3.87574','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150524','90030','571','1','1','0','0','4139.56','5408.35','27.2024','5.04364','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150525','17066','571','1','1','0','0','4149.63','5405.81','35.0304','5.32088','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150526','17066','571','1','1','0','0','4149.94','5405.22','34.6751','3.34011','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150527','90030','571','1','1','0','0','5603.22','-2617.53','292.419','2.96072','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150528','17066','571','1','1','0','0','5587.67','-2625.08','299.112','6.08425','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150529','90030','571','1','1','0','0','5362.15','4850.69','-196.055','3.10767','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150530','17066','571','1','1','0','0','5357.79','4856.06','-187.43','0.566905','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150531','90030','571','1','1','0','0','5142.04','-714.288','170.852','0.309071','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150532','17066','571','1','1','0','0','5151.56','-709.283','176.682','1.98119','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150533','90030','571','1','1','0','0','3408.54','-2874.52','200.879','5.83767','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150534','17066','571','1','1','0','0','3418.91','-2879.52','208.748','5.93192','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150535','90030','571','1','1','0','0','6064.23','-1102.88','420.14','4.7935','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150536','17066','571','1','1','0','0','6061.72','-1112.9','427.54','4.80136','300','0','0','42','0','0','0','0','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150537','90030','571','1','1','0','0','2464.95','-4897.52','263.128','5.6742','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150538','17066','571','1','1','0','0','2477.58','-4905.32','271.609','6.14151','300','0','0','42','0','0','0','0','0');


DELETE FROM smart_scripts WHERE entryorguid=25755;
INSERT INTO smart_scripts (entryorguid,source_type,id,link,event_type,event_phase_mask,event_chance,event_flags,event_param1,event_param2,event_param3,event_param4,action_type,action_param1,action_param2,action_param3,action_param4,action_param5,action_param6,target_type,target_param1,target_param2,target_param3,target_x,target_y,target_z,target_o,comment) VALUES
(25755,0,0,0,1,0,100,1,0,0,0,0,46,30,0,0,0,0,0,1,0,0,0,0,0,0,0,'Ahunite Hailstone - OOC move forward'),
(25755,0,1,0,54,0,100,0,0,0,0,0,75,46542,0,0,0,0,0,1,0,0,0,0,0,0,0,'On Spawn Cast Chilling Aura'),
(25755,0,2,0,0,0,100,0,6000,6000,6000,6000,11,2676,1,0,0,0,0,2,0,0,0,0,0,0,0,'Ahunite Hailstone - cast Pulverize');

DELETE FROM smart_scripts WHERE entryorguid=25756;
INSERT INTO smart_scripts (entryorguid,source_type,id,link,event_type,event_phase_mask,event_chance,event_flags,event_param1,event_param2,event_param3,event_param4,action_type,action_param1,action_param2,action_param3,action_param4,action_param5,action_param6,target_type,target_param1,target_param2,target_param3,target_x,target_y,target_z,target_o,comment) VALUES
(25756,0,0,0,0,0,100,0,0,4000,7000,10000,11,46406,1,0,0,0,0,5,0,0,0,0,0,0,0,'Ahunite Coldwave - cast Bitter Blast'),
(25756,0,1,0,1,0,100,1,0,0,0,0,46,10,0,0,0,0,0,1,0,0,0,0,0,0,0,'Ahunite Coldwave - OOC move forward');

UPDATE quest_template SET RewardSpellCast='46336' WHERE id='11691';

DELETE FROM gameobject_loot_template where entry='28682';
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values('28682','35498','3','1','0','1','1');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values('28682','35557','28','1','0','1','2');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values('28682','35720','3','1','0','5','6');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values('28682','35723','12','1','0','1','1');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values('28682','54801','0','1','1','1','1');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values('28682','54802','0','1','1','1','1');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values('28682','54803','0','1','1','1','1');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values('28682','54804','0','1','1','1','1');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values('28682','54805','0','1','1','1','1');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values('28682','53641','0.7','1','0','1','1');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values('28682','54806','1.4','1','0','1','1');

DELETE from creature_template where entry = '25740';
insert into `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) values('25740','26338','0','0','0','0','23344','0','0','0','Ahune','The Frost Lord','','0','82','82','2','14','14','0','1.2','1.14286','1','1','316','450','0','320','7.5','2000','0','1','0','8','0','0','0','0','0','278','413','58','4','72','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','1','1','40','1','1','0','0','0','0','0','0','0','0','1','0','650854267','0','npc_frostlord_ahune','12340');

UPDATE creature_template SET unit_flags='33538' WHERE entry IN (25949,25980,25951);

insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150539','90031','547','1','1','0','0','-142.913','-266.164','-1.59327','3.80053','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150540','90031','547','1','1','0','0','-127.271','-286.098','-1.58974','3.78089','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150541','90031','547','1','1','0','0','-74.9188','-282.841','-1.32065','4.53095','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150542','90031','547','1','1','0','0','-91.6284','-271.369','-1.31649','3.61989','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150543','90031','547','1','1','0','0','-71.9429','-222.385','-3.15076','0.0306198','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150544','90031','547','1','1','0','0','-71.6837','-144.67','-1.55404','0.545054','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150545','90031','547','1','1','0','0','-116.083','-165.245','-1.63122','0.164132','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150546','90031','547','1','1','0','0','-33.7562','-187.294','-3.12592','5.47732','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150547','90032','547','1','1','0','0','-116.906','-205.92','-1.46129','3.42743','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150548','90032','547','1','1','0','0','-65.1849','-157.089','-2.15645','2.81509','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150549','90032','547','1','1','0','0','-64.1143','-158.49','-2.06002','2.01005','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150550','90032','547','1','1','0','0','-66.512','-162.044','-2.27989','2.08467','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150551','90032','547','1','1','0','0','-67.9147','-159.157','-2.03028','4.50762','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150552','90032','547','1','1','0','0','-70.9592','-184.408','-5.26185','5.23777','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150553','90032','547','1','1','0','0','-73.2004','-184.224','-4.43353','5.23777','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150554','90032','547','1','1','0','0','-73.3254','-186.998','-4.61917','5.23777','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150555','90032','547','1','1','0','0','-118.392','-206.383','-1.50147','1.40503','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150556','90032','547','1','1','0','0','-64.5096','-161.56','-2.26218','3.5298','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150557','90032','547','1','1','0','0','-67.5331','-160.791','-2.1379','5.69357','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150558','90033','547','1','1','0','0','-96.9754','-237.963','-1.2581','4.61734','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150559','90033','547','1','1','0','0','-67.1492','-162.162','-2.23339','6.208','300','0','0','16026','0','0','0','33554432','0');
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('150560','90034','547','1','1','0','0','-95.4318','-199.662','-1.298','4.76661','300','0','0','16026','0','0','0','33554432','0');

insert into `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) values('13','1','46363','0','0','31','0','3','25740','0','0','0','',NULL);
