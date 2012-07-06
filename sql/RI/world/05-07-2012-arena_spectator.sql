DELETE FROM `command` WHERE `name` = 'spectate';        
INSERT INTO `command` (`name`, `security`, `help`) VALUES ('arena', 0, 'Ayuda: .arena $subcommand.\nUsa .help arena \n RI-Spectator By Dox.');
DELETE FROM `command` WHERE `name` = 'spectatefrom';    
INSERT INTO `command` (`name`, `security`, `help`) VALUES ('arena ver', 0, 'Ayuda: .arena ver #player\nTe lleva como espectador a la arena del jugador seleccionado.');
DELETE FROM `command` WHERE `name` = 'spectate leav';   
INSERT INTO `command` (`name`, `security`, `help`) VALUES ('arena salir', 0, 'Ayuda: .arena salir\nSalir del modo espectador.');
DELETE FROM `command` WHERE `name` = 'spectate player'; 
INSERT INTO `command` (`name`, `security`, `help`) VALUES ('arena seguir', 0, 'Ayuda: .arena seguir #player\nSigues en primera persona al jugador de la arena seleccionado, para volver al modo normal, coloca tu propio nombre.');
DELETE FROM `command` WHERE `name` = 'spectate reset';  
INSERT INTO `command` (`name`, `security`, `help`) VALUES ('arena reset', 0, 'Ayuda: .arena reset\nDevuelve los valores normales del espectador, en caso de atascarse con el modo espectador, usar esto.');

UPDATE `gameobject_template` SET `flags` = 36 WHERE entry IN (185918, 185917, 183970, 183971, 183972, 183973, 183977, 183979, 183978, 183980);

DELETE FROM creature_template WHERE entry = '190000'; 
INSERT INTO creature_template (entry, modelid1, name, subname, IconName, gossip_menu_id, minlevel, maxlevel, Health_mod, Mana_mod, Armor_mod, faction_A, faction_H, npcflag, speed_walk, speed_run, scale, rank, dmg_multiplier, unit_class, unit_flags, type, type_flags, InhabitType, RegenHealth, flags_extra, ScriptName) VALUES 
('190000', '20466', "Matutano", "Espectador de Arenas por Ranking", 'Speak', '50000', 81, 81, 1.56, 1.56, 1.56, 35, 35, 3, 1, 1.14286, 1.25, 1, 1, 1, 2, 7, 138936390, 3, 1, 2, 'npc_arena_spectator'); 
