/*
SQLyog Ultimate v9.50 
MySQL - 5.5.24 
*********************************************************************
*/
/*!40101 SET NAMES utf8 */;

create table `spell_linked_spell` (
	`spell_trigger` mediumint (8),
	`spell_effect` mediumint (8),
	`type` tinyint (3),
	`comment` blob 
); 
insert into `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) values('46924','49203','2','Bladestorm - Hungering Cold');
