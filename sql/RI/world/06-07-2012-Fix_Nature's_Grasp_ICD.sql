-- Nature's Grasp fix
DELETE FROM `spell_proc_event` WHERE `entry` IN (16689,16810,16811,16812,16813,17329,27009,53312);
INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES
(16689,0,0,0,0,0,0,0,0,100,1), -- Nature's Grasp (Rank 1)
(16810,0,0,0,0,0,0,0,0,100,1), -- Nature's Grasp (Rank 2)
(16811,0,0,0,0,0,0,0,0,100,1), -- Nature's Grasp (Rank 3)
(16812,0,0,0,0,0,0,0,0,100,1), -- Nature's Grasp (Rank 4)
(16813,0,0,0,0,0,0,0,0,100,1), -- Nature's Grasp (Rank 5)
(17329,0,0,0,0,0,0,0,0,100,1), -- Nature's Grasp (Rank 6)
(27009,0,0,0,0,0,0,0,0,100,1), -- Nature's Grasp (Rank 7)
(53312,0,0,0,0,0,0,0,0,100,1);-- Nature's Grasp (Rank 8)