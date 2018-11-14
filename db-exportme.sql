-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.29-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for caipl
DROP DATABASE IF EXISTS `caipl`;
CREATE DATABASE IF NOT EXISTS `caipl` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `caipl`;

-- Dumping structure for table caipl.accounts
DROP TABLE IF EXISTS `accounts`;
CREATE TABLE IF NOT EXISTS `accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idnumber` varchar(20) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `firstname` varchar(150) DEFAULT NULL,
  `middlename` varchar(150) DEFAULT NULL,
  `lastname` varchar(150) DEFAULT NULL,
  `typeofaccount` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Dumping data for table caipl.accounts: ~7 rows (approximately)
DELETE FROM `accounts`;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` (`id`, `idnumber`, `username`, `password`, `firstname`, `middlename`, `lastname`, `typeofaccount`, `status`) VALUES
	(1, '13-0710-80', 'admin', 'admin', 'Joshua', 'Ricarder', 'Oducado', 2, 2),
	(2, '13-0710-11', 'user', 'user', 'Sumin', 'Bae', 'Jo', 1, 2),
	(3, '13-0710-80', 'ProjectVelox', 'manok098', 'Joshua', 'Ricarder', 'Oducado', 1, 1),
	(4, '13-0710-84', 'Featherxxx', 'manok098', 'Chrystal', 'Oducado', 'Alquisada', 1, 2),
	(5, '13-0718-90', 'Mojacko', 'manok098', 'Feather', 'Alquisada', 'Oducado', 1, 1),
	(6, '12-0918-30', 'SuminJo', 'sumninjo', 'Sumin', 'the', 'Hoe', 1, 2),
	(7, '13-0291-20', 'BenjiBoi', 'manok098', 'Benjamin', 'Louis', 'Mayor', 1, 1);
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;

-- Dumping structure for view caipl.account_listing
DROP VIEW IF EXISTS `account_listing`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `account_listing` (
	`id` INT(11) NOT NULL,
	`idnumber` VARCHAR(20) NULL COLLATE 'latin1_swedish_ci',
	`username` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`password` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`firstname` VARCHAR(150) NULL COLLATE 'latin1_swedish_ci',
	`middlename` VARCHAR(150) NULL COLLATE 'latin1_swedish_ci',
	`lastname` VARCHAR(150) NULL COLLATE 'latin1_swedish_ci',
	`typeofaccount` INT(11) NULL,
	`status` INT(11) NULL,
	`account_type` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for table caipl.account_type
DROP TABLE IF EXISTS `account_type`;
CREATE TABLE IF NOT EXISTS `account_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table caipl.account_type: ~2 rows (approximately)
DELETE FROM `account_type`;
/*!40000 ALTER TABLE `account_type` DISABLE KEYS */;
INSERT INTO `account_type` (`id`, `account_type`) VALUES
	(1, 'User'),
	(2, 'Admin');
/*!40000 ALTER TABLE `account_type` ENABLE KEYS */;

-- Dumping structure for table caipl.chapter
DROP TABLE IF EXISTS `chapter`;
CREATE TABLE IF NOT EXISTS `chapter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chapter_name` varchar(200) DEFAULT NULL,
  `chapter_description` varchar(10000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- Dumping data for table caipl.chapter: ~12 rows (approximately)
DELETE FROM `chapter`;
/*!40000 ALTER TABLE `chapter` DISABLE KEYS */;
INSERT INTO `chapter` (`id`, `chapter_name`, `chapter_description`) VALUES
	(1, 'Kabanata 1', 'Maraming pakahulugan ang iba’t ibang manunulat tumgkol sa panitikan. May nag sasabing “Ang tunay na kahulugan daw ng panitikan ay yaong pag papahayag ng damdamin, panaginip, at karanasan ng sangkatauhan nasusulat sa maganda, makahulugan, at manising na mga pahayag’’ . Sa aklat nina Atienza, Ramos, Zalazar, at Nazal na pinamagatang “Panitikang Pilipino, ipinahahayag na “ang tunay na panitikan ay yaong walang kamatayan’ yaong nagpapahayag ng damdamin ng tao bilang ganti niya sareaksyon sa kanyang pang araw-araw na pagsusumikap upang mabuhay at lumigaya sa kanyang kapaligiran ay gayun din sa kanyang pasusumikap na Makita ang Maykapal.'),
	(2, 'Kabanata 2', 'Maraming pakahulugan ang iba’t ibang manunulat tumgkol sa panitikan. May nag sasabing “Ang tunay na kahulugan daw ng panitikan ay yaong pag papahayag ng damdamin, panaginip, at karanasan ng sangkatauhan nasusulat sa maganda, makahulugan, at manising na mga pahayag’’ . Sa aklat nina Atienza, Ramos, Zalazar, at Nazal na pinamagatang “Panitikang Pilipino, ipinahahayag na “ang tunay na panitikan ay yaong walang kamatayan’ yaong nagpapahayag ng damdamin ng tao bilang ganti niya sareaksyon sa kanyang pang araw-araw na pagsusumikap upang mabuhay at lumigaya sa kanyang kapaligiran ay gayun din sa kanyang pasusumikap na Makita ang Maykapal.'),
	(3, 'Kabanata 3', 'Maraming pakahulugan ang iba’t ibang manunulat tumgkol sa panitikan. May nag sasabing “Ang tunay na kahulugan daw ng panitikan ay yaong pag papahayag ng damdamin, panaginip, at karanasan ng sangkatauhan nasusulat sa maganda, makahulugan, at manising na mga pahayag’’ . Sa aklat nina Atienza, Ramos, Zalazar, at Nazal na pinamagatang “Panitikang Pilipino, ipinahahayag na “ang tunay na panitikan ay yaong walang kamatayan’ yaong nagpapahayag ng damdamin ng tao bilang ganti niya sareaksyon sa kanyang pang araw-araw na pagsusumikap upang mabuhay at lumigaya sa kanyang kapaligiran ay gayun din sa kanyang pasusumikap na Makita ang Maykapal.'),
	(4, 'Kabanata 4', 'Maraming pakahulugan ang iba’t ibang manunulat tumgkol sa panitikan. May nag sasabing “Ang tunay na kahulugan daw ng panitikan ay yaong pag papahayag ng damdamin, panaginip, at karanasan ng sangkatauhan nasusulat sa maganda, makahulugan, at manising na mga pahayag’’ . Sa aklat nina Atienza, Ramos, Zalazar, at Nazal na pinamagatang “Panitikang Pilipino, ipinahahayag na “ang tunay na panitikan ay yaong walang kamatayan’ yaong nagpapahayag ng damdamin ng tao bilang ganti niya sareaksyon sa kanyang pang araw-araw na pagsusumikap upang mabuhay at lumigaya sa kanyang kapaligiran ay gayun din sa kanyang pasusumikap na Makita ang Maykapal.'),
	(5, 'Kabanata 5', 'Maraming pakahulugan ang iba’t ibang manunulat tumgkol sa panitikan. May nag sasabing “Ang tunay na kahulugan daw ng panitikan ay yaong pag papahayag ng damdamin, panaginip, at karanasan ng sangkatauhan nasusulat sa maganda, makahulugan, at manising na mga pahayag’’ . Sa aklat nina Atienza, Ramos, Zalazar, at Nazal na pinamagatang “Panitikang Pilipino, ipinahahayag na “ang tunay na panitikan ay yaong walang kamatayan’ yaong nagpapahayag ng damdamin ng tao bilang ganti niya sareaksyon sa kanyang pang araw-araw na pagsusumikap upang mabuhay at lumigaya sa kanyang kapaligiran ay gayun din sa kanyang pasusumikap na Makita ang Maykapal.'),
	(6, 'Kabanata 6', 'Maraming pakahulugan ang iba’t ibang manunulat tumgkol sa panitikan. May nag sasabing “Ang tunay na kahulugan daw ng panitikan ay yaong pag papahayag ng damdamin, panaginip, at karanasan ng sangkatauhan nasusulat sa maganda, makahulugan, at manising na mga pahayag’’ . Sa aklat nina Atienza, Ramos, Zalazar, at Nazal na pinamagatang “Panitikang Pilipino, ipinahahayag na “ang tunay na panitikan ay yaong walang kamatayan’ yaong nagpapahayag ng damdamin ng tao bilang ganti niya sareaksyon sa kanyang pang araw-araw na pagsusumikap upang mabuhay at lumigaya sa kanyang kapaligiran ay gayun din sa kanyang pasusumikap na Makita ang Maykapal.'),
	(7, 'Kabanata 7', 'Maraming pakahulugan ang iba’t ibang manunulat tumgkol sa panitikan. May nag sasabing “Ang tunay na kahulugan daw ng panitikan ay yaong pag papahayag ng damdamin, panaginip, at karanasan ng sangkatauhan nasusulat sa maganda, makahulugan, at manising na mga pahayag’’ . Sa aklat nina Atienza, Ramos, Zalazar, at Nazal na pinamagatang “Panitikang Pilipino, ipinahahayag na “ang tunay na panitikan ay yaong walang kamatayan’ yaong nagpapahayag ng damdamin ng tao bilang ganti niya sareaksyon sa kanyang pang araw-araw na pagsusumikap upang mabuhay at lumigaya sa kanyang kapaligiran ay gayun din sa kanyang pasusumikap na Makita ang Maykapal.'),
	(8, 'Kabanata 8', 'Maraming pakahulugan ang iba’t ibang manunulat tumgkol sa panitikan. May nag sasabing “Ang tunay na kahulugan daw ng panitikan ay yaong pag papahayag ng damdamin, panaginip, at karanasan ng sangkatauhan nasusulat sa maganda, makahulugan, at manising na mga pahayag’’ . Sa aklat nina Atienza, Ramos, Zalazar, at Nazal na pinamagatang “Panitikang Pilipino, ipinahahayag na “ang tunay na panitikan ay yaong walang kamatayan’ yaong nagpapahayag ng damdamin ng tao bilang ganti niya sareaksyon sa kanyang pang araw-araw na pagsusumikap upang mabuhay at lumigaya sa kanyang kapaligiran ay gayun din sa kanyang pasusumikap na Makita ang Maykapal.'),
	(9, 'Kabanata 9', 'Maraming pakahulugan ang iba’t ibang manunulat tumgkol sa panitikan. May nag sasabing “Ang tunay na kahulugan daw ng panitikan ay yaong pag papahayag ng damdamin, panaginip, at karanasan ng sangkatauhan nasusulat sa maganda, makahulugan, at manising na mga pahayag’’ . Sa aklat nina Atienza, Ramos, Zalazar, at Nazal na pinamagatang “Panitikang Pilipino, ipinahahayag na “ang tunay na panitikan ay yaong walang kamatayan’ yaong nagpapahayag ng damdamin ng tao bilang ganti niya sareaksyon sa kanyang pang araw-araw na pagsusumikap upang mabuhay at lumigaya sa kanyang kapaligiran ay gayun din sa kanyang pasusumikap na Makita ang Maykapal.'),
	(10, 'Kabanata 10', 'Maraming pakahulugan ang iba’t ibang manunulat tumgkol sa panitikan. May nag sasabing “Ang tunay na kahulugan daw ng panitikan ay yaong pag papahayag ng damdamin, panaginip, at karanasan ng sangkatauhan nasusulat sa maganda, makahulugan, at manising na mga pahayag’’ . Sa aklat nina Atienza, Ramos, Zalazar, at Nazal na pinamagatang “Panitikang Pilipino, ipinahahayag na “ang tunay na panitikan ay yaong walang kamatayan’ yaong nagpapahayag ng damdamin ng tao bilang ganti niya sareaksyon sa kanyang pang araw-araw na pagsusumikap upang mabuhay at lumigaya sa kanyang kapaligiran ay gayun din sa kanyang pasusumikap na Makita ang Maykapal.'),
	(11, 'Kabanata 11', 'Maraming pakahulugan ang iba’t ibang manunulat tumgkol sa panitikan. May nag sasabing “Ang tunay na kahulugan daw ng panitikan ay yaong pag papahayag ng damdamin, panaginip, at karanasan ng sangkatauhan nasusulat sa maganda, makahulugan, at manising na mga pahayag’’ . Sa aklat nina Atienza, Ramos, Zalazar, at Nazal na pinamagatang “Panitikang Pilipino, ipinahahayag na “ang tunay na panitikan ay yaong walang kamatayan’ yaong nagpapahayag ng damdamin ng tao bilang ganti niya sareaksyon sa kanyang pang araw-araw na pagsusumikap upang mabuhay at lumigaya sa kanyang kapaligiran ay gayun din sa kanyang pasusumikap na Makita ang Maykapal.'),
	(12, 'Kabanata 12', 'Maraming pakahulugan ang iba’t ibang manunulat tumgkol sa panitikan. May nag sasabing “Ang tunay na kahulugan daw ng panitikan ay yaong pag papahayag ng damdamin, panaginip, at karanasan ng sangkatauhan nasusulat sa maganda, makahulugan, at manising na mga pahayag’’ . Sa aklat nina Atienza, Ramos, Zalazar, at Nazal na pinamagatang “Panitikang Pilipino, ipinahahayag na “ang tunay na panitikan ay yaong walang kamatayan’ yaong nagpapahayag ng damdamin ng tao bilang ganti niya sareaksyon sa kanyang pang araw-araw na pagsusumikap upang mabuhay at lumigaya sa kanyang kapaligiran ay gayun din sa kanyang pasusumikap na Makita ang Maykapal.');
/*!40000 ALTER TABLE `chapter` ENABLE KEYS */;

-- Dumping structure for view caipl.chapterandlessons_listing
DROP VIEW IF EXISTS `chapterandlessons_listing`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `chapterandlessons_listing` (
	`chapter_and_lesson` TEXT NULL COLLATE 'latin1_swedish_ci',
	`chapter_name` VARCHAR(200) NULL COLLATE 'latin1_swedish_ci',
	`chapter_description` VARCHAR(10000) NULL COLLATE 'latin1_swedish_ci',
	`lesson_name` VARCHAR(500) NOT NULL COLLATE 'latin1_swedish_ci',
	`lesson_description` VARCHAR(10000) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for table caipl.lesson
DROP TABLE IF EXISTS `lesson`;
CREATE TABLE IF NOT EXISTS `lesson` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chapter_id` int(11) NOT NULL,
  `lesson_name` varchar(500) NOT NULL,
  `lesson_description` varchar(10000) NOT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- Dumping data for table caipl.lesson: ~12 rows (approximately)
DELETE FROM `lesson`;
/*!40000 ALTER TABLE `lesson` DISABLE KEYS */;
INSERT INTO `lesson` (`id`, `chapter_id`, `lesson_name`, `lesson_description`, `status`) VALUES
	(1, 1, 'Ang Aralin', 'Maraming pakahulugan ang iba’t ibang manunulat tumgkol sa panitikan. May nag sasabing “Ang tunay na kahulugan daw ng panitikan ay yaong pag papahayag ng damdamin, panaginip, at karanasan ng sangkatauhan nasusulat sa maganda, makahulugan, at manising na mga pahayag’’ . Sa aklat nina Atienza, Ramos, Zalazar, at Nazal na pinamagatang “Panitikang Pilipino, ipinahahayag na “ang tunay na panitikan ay yaong walang kamatayan’ yaong nagpapahayag ng damdamin ng tao bilang ganti niya sareaksyon sa kanyang pang araw-araw na pagsusumikap upang mabuhay at lumigaya sa kanyang kapaligiran ay gayun din sa kanyang pasusumikap na Makita ang Maykapal.\r\n	Si bro. Azarias ay nag sabing “ang panitikan ay ang pagpapahayag ng damdamin ng tao, sa lipunan, sa pamahalaan, sa kapaligiran, sa kapwa, at sa Dakilang Lumikha”. Ang pagpapahayag dawn g damdamin ng isang nilikha ay maaring sa pamamagitan ng pag ibig, kalungkutan, kaligayahan, galit o poot, pagkahabag, pag alipusta, paghihiganti at iba pa.	\r\n	Ayon naman sa Webster, sa kaniyang pinakabuod na kahulugan, “anu mang bagay raw naisasatitik, basta may kaugnayan sa pag iisip at damdamin ng tao, maging ito ay totoo, kathang isip o bungang tulog lamang ay maaaring tawaging panitikan”.\r\n	Ganito naman ang makabayanihang pakahulugan ni Maria Ramon sa panitikan. Ayon sa kanya “Ang panitikan ay kasaysayan ng kaluluwa ng mga mamamayan. Sa panitikan  nasasalamin ang mga layunin, damdamin, panaginip, pag-asa, hinaing at guni guni ng mga mamamayan na nasusulat o binabanggit sa sa maganda,makulay, makahulugan, matalinhaga, at masining na mga pahayag”.Ang panitikan ay nag bubunsod sa pagkilos ng mga mamamayan sa kanyang pagkamakabayan o nasyonalismo. Ito ang lakas na nagbubuklod ng kanilang damdamin, nagdidilat ng mga kanilang mata sa katwiran at katarungan.\r\n	Ang panitikan ay indi lamang lumilinang ng nasyonalismo kundi ito ay nag iingat din ng mga karanasan, tradisyon at mga mithiin ng bawat bansa. Hinuhubog sa panitikan ang kagandahan ng kultura ng bawat lipunan. Dito nasusulat ang henyo ng bawat panahon. Ito’y walang paglipas hanggang may tao sa sandaigdigan. Ang panitikan ay isang ilaw ng walang kamatayang tumatanglaw sa kabihasnan ng tao.\r\n', NULL),
	(2, 2, 'Ang Aralin', 'Maraming pakahulugan ang iba’t ibang manunulat tumgkol sa panitikan. May nag sasabing “Ang tunay na kahulugan daw ng panitikan ay yaong pag papahayag ng damdamin, panaginip, at karanasan ng sangkatauhan nasusulat sa maganda, makahulugan, at manising na mga pahayag’’ . Sa aklat nina Atienza, Ramos, Zalazar, at Nazal na pinamagatang “Panitikang Pilipino, ipinahahayag na “ang tunay na panitikan ay yaong walang kamatayan’ yaong nagpapahayag ng damdamin ng tao bilang ganti niya sareaksyon sa kanyang pang araw-araw na pagsusumikap upang mabuhay at lumigaya sa kanyang kapaligiran ay gayun din sa kanyang pasusumikap na Makita ang Maykapal.\r\n	Si bro. Azarias ay nag sabing “ang panitikan ay ang pagpapahayag ng damdamin ng tao, sa lipunan, sa pamahalaan, sa kapaligiran, sa kapwa, at sa Dakilang Lumikha”. Ang pagpapahayag dawn g damdamin ng isang nilikha ay maaring sa pamamagitan ng pag ibig, kalungkutan, kaligayahan, galit o poot, pagkahabag, pag alipusta, paghihiganti at iba pa.	\r\n	Ayon naman sa Webster, sa kaniyang pinakabuod na kahulugan, “anu mang bagay raw naisasatitik, basta may kaugnayan sa pag iisip at damdamin ng tao, maging ito ay totoo, kathang isip o bungang tulog lamang ay maaaring tawaging panitikan”.\r\n	Ganito naman ang makabayanihang pakahulugan ni Maria Ramon sa panitikan. Ayon sa kanya “Ang panitikan ay kasaysayan ng kaluluwa ng mga mamamayan. Sa panitikan  nasasalamin ang mga layunin, damdamin, panaginip, pag-asa, hinaing at guni guni ng mga mamamayan na nasusulat o binabanggit sa sa maganda,makulay, makahulugan, matalinhaga, at masining na mga pahayag”.Ang panitikan ay nag bubunsod sa pagkilos ng mga mamamayan sa kanyang pagkamakabayan o nasyonalismo. Ito ang lakas na nagbubuklod ng kanilang damdamin, nagdidilat ng mga kanilang mata sa katwiran at katarungan.\r\n	Ang panitikan ay indi lamang lumilinang ng nasyonalismo kundi ito ay nag iingat din ng mga karanasan, tradisyon at mga mithiin ng bawat bansa. Hinuhubog sa panitikan ang kagandahan ng kultura ng bawat lipunan. Dito nasusulat ang henyo ng bawat panahon. Ito’y walang paglipas hanggang may tao sa sandaigdigan. Ang panitikan ay isang ilaw ng walang kamatayang tumatanglaw sa kabihasnan ng tao.\r\n', NULL),
	(3, 3, 'Ang Aralin', 'Maraming pakahulugan ang iba’t ibang manunulat tumgkol sa panitikan. May nag sasabing “Ang tunay na kahulugan daw ng panitikan ay yaong pag papahayag ng damdamin, panaginip, at karanasan ng sangkatauhan nasusulat sa maganda, makahulugan, at manising na mga pahayag’’ . Sa aklat nina Atienza, Ramos, Zalazar, at Nazal na pinamagatang “Panitikang Pilipino, ipinahahayag na “ang tunay na panitikan ay yaong walang kamatayan’ yaong nagpapahayag ng damdamin ng tao bilang ganti niya sareaksyon sa kanyang pang araw-araw na pagsusumikap upang mabuhay at lumigaya sa kanyang kapaligiran ay gayun din sa kanyang pasusumikap na Makita ang Maykapal.\r\n	Si bro. Azarias ay nag sabing “ang panitikan ay ang pagpapahayag ng damdamin ng tao, sa lipunan, sa pamahalaan, sa kapaligiran, sa kapwa, at sa Dakilang Lumikha”. Ang pagpapahayag dawn g damdamin ng isang nilikha ay maaring sa pamamagitan ng pag ibig, kalungkutan, kaligayahan, galit o poot, pagkahabag, pag alipusta, paghihiganti at iba pa.	\r\n	Ayon naman sa Webster, sa kaniyang pinakabuod na kahulugan, “anu mang bagay raw naisasatitik, basta may kaugnayan sa pag iisip at damdamin ng tao, maging ito ay totoo, kathang isip o bungang tulog lamang ay maaaring tawaging panitikan”.\r\n	Ganito naman ang makabayanihang pakahulugan ni Maria Ramon sa panitikan. Ayon sa kanya “Ang panitikan ay kasaysayan ng kaluluwa ng mga mamamayan. Sa panitikan  nasasalamin ang mga layunin, damdamin, panaginip, pag-asa, hinaing at guni guni ng mga mamamayan na nasusulat o binabanggit sa sa maganda,makulay, makahulugan, matalinhaga, at masining na mga pahayag”.Ang panitikan ay nag bubunsod sa pagkilos ng mga mamamayan sa kanyang pagkamakabayan o nasyonalismo. Ito ang lakas na nagbubuklod ng kanilang damdamin, nagdidilat ng mga kanilang mata sa katwiran at katarungan.\r\n	Ang panitikan ay indi lamang lumilinang ng nasyonalismo kundi ito ay nag iingat din ng mga karanasan, tradisyon at mga mithiin ng bawat bansa. Hinuhubog sa panitikan ang kagandahan ng kultura ng bawat lipunan. Dito nasusulat ang henyo ng bawat panahon. Ito’y walang paglipas hanggang may tao sa sandaigdigan. Ang panitikan ay isang ilaw ng walang kamatayang tumatanglaw sa kabihasnan ng tao.\r\n', NULL),
	(4, 4, 'Ang Aralin', 'Maraming pakahulugan ang iba’t ibang manunulat tumgkol sa panitikan. May nag sasabing “Ang tunay na kahulugan daw ng panitikan ay yaong pag papahayag ng damdamin, panaginip, at karanasan ng sangkatauhan nasusulat sa maganda, makahulugan, at manising na mga pahayag’’ . Sa aklat nina Atienza, Ramos, Zalazar, at Nazal na pinamagatang “Panitikang Pilipino, ipinahahayag na “ang tunay na panitikan ay yaong walang kamatayan’ yaong nagpapahayag ng damdamin ng tao bilang ganti niya sareaksyon sa kanyang pang araw-araw na pagsusumikap upang mabuhay at lumigaya sa kanyang kapaligiran ay gayun din sa kanyang pasusumikap na Makita ang Maykapal.\r\n	Si bro. Azarias ay nag sabing “ang panitikan ay ang pagpapahayag ng damdamin ng tao, sa lipunan, sa pamahalaan, sa kapaligiran, sa kapwa, at sa Dakilang Lumikha”. Ang pagpapahayag dawn g damdamin ng isang nilikha ay maaring sa pamamagitan ng pag ibig, kalungkutan, kaligayahan, galit o poot, pagkahabag, pag alipusta, paghihiganti at iba pa.	\r\n	Ayon naman sa Webster, sa kaniyang pinakabuod na kahulugan, “anu mang bagay raw naisasatitik, basta may kaugnayan sa pag iisip at damdamin ng tao, maging ito ay totoo, kathang isip o bungang tulog lamang ay maaaring tawaging panitikan”.\r\n	Ganito naman ang makabayanihang pakahulugan ni Maria Ramon sa panitikan. Ayon sa kanya “Ang panitikan ay kasaysayan ng kaluluwa ng mga mamamayan. Sa panitikan  nasasalamin ang mga layunin, damdamin, panaginip, pag-asa, hinaing at guni guni ng mga mamamayan na nasusulat o binabanggit sa sa maganda,makulay, makahulugan, matalinhaga, at masining na mga pahayag”.Ang panitikan ay nag bubunsod sa pagkilos ng mga mamamayan sa kanyang pagkamakabayan o nasyonalismo. Ito ang lakas na nagbubuklod ng kanilang damdamin, nagdidilat ng mga kanilang mata sa katwiran at katarungan.\r\n	Ang panitikan ay indi lamang lumilinang ng nasyonalismo kundi ito ay nag iingat din ng mga karanasan, tradisyon at mga mithiin ng bawat bansa. Hinuhubog sa panitikan ang kagandahan ng kultura ng bawat lipunan. Dito nasusulat ang henyo ng bawat panahon. Ito’y walang paglipas hanggang may tao sa sandaigdigan. Ang panitikan ay isang ilaw ng walang kamatayang tumatanglaw sa kabihasnan ng tao.\r\n', NULL),
	(5, 5, 'Ang Aralin', 'Maraming pakahulugan ang iba’t ibang manunulat tumgkol sa panitikan. May nag sasabing “Ang tunay na kahulugan daw ng panitikan ay yaong pag papahayag ng damdamin, panaginip, at karanasan ng sangkatauhan nasusulat sa maganda, makahulugan, at manising na mga pahayag’’ . Sa aklat nina Atienza, Ramos, Zalazar, at Nazal na pinamagatang “Panitikang Pilipino, ipinahahayag na “ang tunay na panitikan ay yaong walang kamatayan’ yaong nagpapahayag ng damdamin ng tao bilang ganti niya sareaksyon sa kanyang pang araw-araw na pagsusumikap upang mabuhay at lumigaya sa kanyang kapaligiran ay gayun din sa kanyang pasusumikap na Makita ang Maykapal.\r\n	Si bro. Azarias ay nag sabing “ang panitikan ay ang pagpapahayag ng damdamin ng tao, sa lipunan, sa pamahalaan, sa kapaligiran, sa kapwa, at sa Dakilang Lumikha”. Ang pagpapahayag dawn g damdamin ng isang nilikha ay maaring sa pamamagitan ng pag ibig, kalungkutan, kaligayahan, galit o poot, pagkahabag, pag alipusta, paghihiganti at iba pa.	\r\n	Ayon naman sa Webster, sa kaniyang pinakabuod na kahulugan, “anu mang bagay raw naisasatitik, basta may kaugnayan sa pag iisip at damdamin ng tao, maging ito ay totoo, kathang isip o bungang tulog lamang ay maaaring tawaging panitikan”.\r\n	Ganito naman ang makabayanihang pakahulugan ni Maria Ramon sa panitikan. Ayon sa kanya “Ang panitikan ay kasaysayan ng kaluluwa ng mga mamamayan. Sa panitikan  nasasalamin ang mga layunin, damdamin, panaginip, pag-asa, hinaing at guni guni ng mga mamamayan na nasusulat o binabanggit sa sa maganda,makulay, makahulugan, matalinhaga, at masining na mga pahayag”.Ang panitikan ay nag bubunsod sa pagkilos ng mga mamamayan sa kanyang pagkamakabayan o nasyonalismo. Ito ang lakas na nagbubuklod ng kanilang damdamin, nagdidilat ng mga kanilang mata sa katwiran at katarungan.\r\n	Ang panitikan ay indi lamang lumilinang ng nasyonalismo kundi ito ay nag iingat din ng mga karanasan, tradisyon at mga mithiin ng bawat bansa. Hinuhubog sa panitikan ang kagandahan ng kultura ng bawat lipunan. Dito nasusulat ang henyo ng bawat panahon. Ito’y walang paglipas hanggang may tao sa sandaigdigan. Ang panitikan ay isang ilaw ng walang kamatayang tumatanglaw sa kabihasnan ng tao.\r\n', NULL),
	(6, 6, 'Ang Aralin', 'Maraming pakahulugan ang iba’t ibang manunulat tumgkol sa panitikan. May nag sasabing “Ang tunay na kahulugan daw ng panitikan ay yaong pag papahayag ng damdamin, panaginip, at karanasan ng sangkatauhan nasusulat sa maganda, makahulugan, at manising na mga pahayag’’ . Sa aklat nina Atienza, Ramos, Zalazar, at Nazal na pinamagatang “Panitikang Pilipino, ipinahahayag na “ang tunay na panitikan ay yaong walang kamatayan’ yaong nagpapahayag ng damdamin ng tao bilang ganti niya sareaksyon sa kanyang pang araw-araw na pagsusumikap upang mabuhay at lumigaya sa kanyang kapaligiran ay gayun din sa kanyang pasusumikap na Makita ang Maykapal.\r\n	Si bro. Azarias ay nag sabing “ang panitikan ay ang pagpapahayag ng damdamin ng tao, sa lipunan, sa pamahalaan, sa kapaligiran, sa kapwa, at sa Dakilang Lumikha”. Ang pagpapahayag dawn g damdamin ng isang nilikha ay maaring sa pamamagitan ng pag ibig, kalungkutan, kaligayahan, galit o poot, pagkahabag, pag alipusta, paghihiganti at iba pa.	\r\n	Ayon naman sa Webster, sa kaniyang pinakabuod na kahulugan, “anu mang bagay raw naisasatitik, basta may kaugnayan sa pag iisip at damdamin ng tao, maging ito ay totoo, kathang isip o bungang tulog lamang ay maaaring tawaging panitikan”.\r\n	Ganito naman ang makabayanihang pakahulugan ni Maria Ramon sa panitikan. Ayon sa kanya “Ang panitikan ay kasaysayan ng kaluluwa ng mga mamamayan. Sa panitikan  nasasalamin ang mga layunin, damdamin, panaginip, pag-asa, hinaing at guni guni ng mga mamamayan na nasusulat o binabanggit sa sa maganda,makulay, makahulugan, matalinhaga, at masining na mga pahayag”.Ang panitikan ay nag bubunsod sa pagkilos ng mga mamamayan sa kanyang pagkamakabayan o nasyonalismo. Ito ang lakas na nagbubuklod ng kanilang damdamin, nagdidilat ng mga kanilang mata sa katwiran at katarungan.\r\n	Ang panitikan ay indi lamang lumilinang ng nasyonalismo kundi ito ay nag iingat din ng mga karanasan, tradisyon at mga mithiin ng bawat bansa. Hinuhubog sa panitikan ang kagandahan ng kultura ng bawat lipunan. Dito nasusulat ang henyo ng bawat panahon. Ito’y walang paglipas hanggang may tao sa sandaigdigan. Ang panitikan ay isang ilaw ng walang kamatayang tumatanglaw sa kabihasnan ng tao.\r\n', NULL),
	(7, 7, 'Ang Aralin', 'Maraming pakahulugan ang iba’t ibang manunulat tumgkol sa panitikan. May nag sasabing “Ang tunay na kahulugan daw ng panitikan ay yaong pag papahayag ng damdamin, panaginip, at karanasan ng sangkatauhan nasusulat sa maganda, makahulugan, at manising na mga pahayag’’ . Sa aklat nina Atienza, Ramos, Zalazar, at Nazal na pinamagatang “Panitikang Pilipino, ipinahahayag na “ang tunay na panitikan ay yaong walang kamatayan’ yaong nagpapahayag ng damdamin ng tao bilang ganti niya sareaksyon sa kanyang pang araw-araw na pagsusumikap upang mabuhay at lumigaya sa kanyang kapaligiran ay gayun din sa kanyang pasusumikap na Makita ang Maykapal.\r\n	Si bro. Azarias ay nag sabing “ang panitikan ay ang pagpapahayag ng damdamin ng tao, sa lipunan, sa pamahalaan, sa kapaligiran, sa kapwa, at sa Dakilang Lumikha”. Ang pagpapahayag dawn g damdamin ng isang nilikha ay maaring sa pamamagitan ng pag ibig, kalungkutan, kaligayahan, galit o poot, pagkahabag, pag alipusta, paghihiganti at iba pa.	\r\n	Ayon naman sa Webster, sa kaniyang pinakabuod na kahulugan, “anu mang bagay raw naisasatitik, basta may kaugnayan sa pag iisip at damdamin ng tao, maging ito ay totoo, kathang isip o bungang tulog lamang ay maaaring tawaging panitikan”.\r\n	Ganito naman ang makabayanihang pakahulugan ni Maria Ramon sa panitikan. Ayon sa kanya “Ang panitikan ay kasaysayan ng kaluluwa ng mga mamamayan. Sa panitikan  nasasalamin ang mga layunin, damdamin, panaginip, pag-asa, hinaing at guni guni ng mga mamamayan na nasusulat o binabanggit sa sa maganda,makulay, makahulugan, matalinhaga, at masining na mga pahayag”.Ang panitikan ay nag bubunsod sa pagkilos ng mga mamamayan sa kanyang pagkamakabayan o nasyonalismo. Ito ang lakas na nagbubuklod ng kanilang damdamin, nagdidilat ng mga kanilang mata sa katwiran at katarungan.\r\n	Ang panitikan ay indi lamang lumilinang ng nasyonalismo kundi ito ay nag iingat din ng mga karanasan, tradisyon at mga mithiin ng bawat bansa. Hinuhubog sa panitikan ang kagandahan ng kultura ng bawat lipunan. Dito nasusulat ang henyo ng bawat panahon. Ito’y walang paglipas hanggang may tao sa sandaigdigan. Ang panitikan ay isang ilaw ng walang kamatayang tumatanglaw sa kabihasnan ng tao.\r\n', NULL),
	(8, 8, 'Ang Aralin', 'Maraming pakahulugan ang iba’t ibang manunulat tumgkol sa panitikan. May nag sasabing “Ang tunay na kahulugan daw ng panitikan ay yaong pag papahayag ng damdamin, panaginip, at karanasan ng sangkatauhan nasusulat sa maganda, makahulugan, at manising na mga pahayag’’ . Sa aklat nina Atienza, Ramos, Zalazar, at Nazal na pinamagatang “Panitikang Pilipino, ipinahahayag na “ang tunay na panitikan ay yaong walang kamatayan’ yaong nagpapahayag ng damdamin ng tao bilang ganti niya sareaksyon sa kanyang pang araw-araw na pagsusumikap upang mabuhay at lumigaya sa kanyang kapaligiran ay gayun din sa kanyang pasusumikap na Makita ang Maykapal.\r\n	Si bro. Azarias ay nag sabing “ang panitikan ay ang pagpapahayag ng damdamin ng tao, sa lipunan, sa pamahalaan, sa kapaligiran, sa kapwa, at sa Dakilang Lumikha”. Ang pagpapahayag dawn g damdamin ng isang nilikha ay maaring sa pamamagitan ng pag ibig, kalungkutan, kaligayahan, galit o poot, pagkahabag, pag alipusta, paghihiganti at iba pa.	\r\n	Ayon naman sa Webster, sa kaniyang pinakabuod na kahulugan, “anu mang bagay raw naisasatitik, basta may kaugnayan sa pag iisip at damdamin ng tao, maging ito ay totoo, kathang isip o bungang tulog lamang ay maaaring tawaging panitikan”.\r\n	Ganito naman ang makabayanihang pakahulugan ni Maria Ramon sa panitikan. Ayon sa kanya “Ang panitikan ay kasaysayan ng kaluluwa ng mga mamamayan. Sa panitikan  nasasalamin ang mga layunin, damdamin, panaginip, pag-asa, hinaing at guni guni ng mga mamamayan na nasusulat o binabanggit sa sa maganda,makulay, makahulugan, matalinhaga, at masining na mga pahayag”.Ang panitikan ay nag bubunsod sa pagkilos ng mga mamamayan sa kanyang pagkamakabayan o nasyonalismo. Ito ang lakas na nagbubuklod ng kanilang damdamin, nagdidilat ng mga kanilang mata sa katwiran at katarungan.\r\n	Ang panitikan ay indi lamang lumilinang ng nasyonalismo kundi ito ay nag iingat din ng mga karanasan, tradisyon at mga mithiin ng bawat bansa. Hinuhubog sa panitikan ang kagandahan ng kultura ng bawat lipunan. Dito nasusulat ang henyo ng bawat panahon. Ito’y walang paglipas hanggang may tao sa sandaigdigan. Ang panitikan ay isang ilaw ng walang kamatayang tumatanglaw sa kabihasnan ng tao.\r\n', NULL),
	(9, 9, 'Ang Aralin', 'Maraming pakahulugan ang iba’t ibang manunulat tumgkol sa panitikan. May nag sasabing “Ang tunay na kahulugan daw ng panitikan ay yaong pag papahayag ng damdamin, panaginip, at karanasan ng sangkatauhan nasusulat sa maganda, makahulugan, at manising na mga pahayag’’ . Sa aklat nina Atienza, Ramos, Zalazar, at Nazal na pinamagatang “Panitikang Pilipino, ipinahahayag na “ang tunay na panitikan ay yaong walang kamatayan’ yaong nagpapahayag ng damdamin ng tao bilang ganti niya sareaksyon sa kanyang pang araw-araw na pagsusumikap upang mabuhay at lumigaya sa kanyang kapaligiran ay gayun din sa kanyang pasusumikap na Makita ang Maykapal.\r\n	Si bro. Azarias ay nag sabing “ang panitikan ay ang pagpapahayag ng damdamin ng tao, sa lipunan, sa pamahalaan, sa kapaligiran, sa kapwa, at sa Dakilang Lumikha”. Ang pagpapahayag dawn g damdamin ng isang nilikha ay maaring sa pamamagitan ng pag ibig, kalungkutan, kaligayahan, galit o poot, pagkahabag, pag alipusta, paghihiganti at iba pa.	\r\n	Ayon naman sa Webster, sa kaniyang pinakabuod na kahulugan, “anu mang bagay raw naisasatitik, basta may kaugnayan sa pag iisip at damdamin ng tao, maging ito ay totoo, kathang isip o bungang tulog lamang ay maaaring tawaging panitikan”.\r\n	Ganito naman ang makabayanihang pakahulugan ni Maria Ramon sa panitikan. Ayon sa kanya “Ang panitikan ay kasaysayan ng kaluluwa ng mga mamamayan. Sa panitikan  nasasalamin ang mga layunin, damdamin, panaginip, pag-asa, hinaing at guni guni ng mga mamamayan na nasusulat o binabanggit sa sa maganda,makulay, makahulugan, matalinhaga, at masining na mga pahayag”.Ang panitikan ay nag bubunsod sa pagkilos ng mga mamamayan sa kanyang pagkamakabayan o nasyonalismo. Ito ang lakas na nagbubuklod ng kanilang damdamin, nagdidilat ng mga kanilang mata sa katwiran at katarungan.\r\n	Ang panitikan ay indi lamang lumilinang ng nasyonalismo kundi ito ay nag iingat din ng mga karanasan, tradisyon at mga mithiin ng bawat bansa. Hinuhubog sa panitikan ang kagandahan ng kultura ng bawat lipunan. Dito nasusulat ang henyo ng bawat panahon. Ito’y walang paglipas hanggang may tao sa sandaigdigan. Ang panitikan ay isang ilaw ng walang kamatayang tumatanglaw sa kabihasnan ng tao.\r\n', NULL),
	(10, 10, 'Ang Aralin', 'Maraming pakahulugan ang iba’t ibang manunulat tumgkol sa panitikan. May nag sasabing “Ang tunay na kahulugan daw ng panitikan ay yaong pag papahayag ng damdamin, panaginip, at karanasan ng sangkatauhan nasusulat sa maganda, makahulugan, at manising na mga pahayag’’ . Sa aklat nina Atienza, Ramos, Zalazar, at Nazal na pinamagatang “Panitikang Pilipino, ipinahahayag na “ang tunay na panitikan ay yaong walang kamatayan’ yaong nagpapahayag ng damdamin ng tao bilang ganti niya sareaksyon sa kanyang pang araw-araw na pagsusumikap upang mabuhay at lumigaya sa kanyang kapaligiran ay gayun din sa kanyang pasusumikap na Makita ang Maykapal.\r\n	Si bro. Azarias ay nag sabing “ang panitikan ay ang pagpapahayag ng damdamin ng tao, sa lipunan, sa pamahalaan, sa kapaligiran, sa kapwa, at sa Dakilang Lumikha”. Ang pagpapahayag dawn g damdamin ng isang nilikha ay maaring sa pamamagitan ng pag ibig, kalungkutan, kaligayahan, galit o poot, pagkahabag, pag alipusta, paghihiganti at iba pa.	\r\n	Ayon naman sa Webster, sa kaniyang pinakabuod na kahulugan, “anu mang bagay raw naisasatitik, basta may kaugnayan sa pag iisip at damdamin ng tao, maging ito ay totoo, kathang isip o bungang tulog lamang ay maaaring tawaging panitikan”.\r\n	Ganito naman ang makabayanihang pakahulugan ni Maria Ramon sa panitikan. Ayon sa kanya “Ang panitikan ay kasaysayan ng kaluluwa ng mga mamamayan. Sa panitikan  nasasalamin ang mga layunin, damdamin, panaginip, pag-asa, hinaing at guni guni ng mga mamamayan na nasusulat o binabanggit sa sa maganda,makulay, makahulugan, matalinhaga, at masining na mga pahayag”.Ang panitikan ay nag bubunsod sa pagkilos ng mga mamamayan sa kanyang pagkamakabayan o nasyonalismo. Ito ang lakas na nagbubuklod ng kanilang damdamin, nagdidilat ng mga kanilang mata sa katwiran at katarungan.\r\n	Ang panitikan ay indi lamang lumilinang ng nasyonalismo kundi ito ay nag iingat din ng mga karanasan, tradisyon at mga mithiin ng bawat bansa. Hinuhubog sa panitikan ang kagandahan ng kultura ng bawat lipunan. Dito nasusulat ang henyo ng bawat panahon. Ito’y walang paglipas hanggang may tao sa sandaigdigan. Ang panitikan ay isang ilaw ng walang kamatayang tumatanglaw sa kabihasnan ng tao.\r\n', NULL),
	(11, 11, 'Ang Aralin', 'Maraming pakahulugan ang iba’t ibang manunulat tumgkol sa panitikan. May nag sasabing “Ang tunay na kahulugan daw ng panitikan ay yaong pag papahayag ng damdamin, panaginip, at karanasan ng sangkatauhan nasusulat sa maganda, makahulugan, at manising na mga pahayag’’ . Sa aklat nina Atienza, Ramos, Zalazar, at Nazal na pinamagatang “Panitikang Pilipino, ipinahahayag na “ang tunay na panitikan ay yaong walang kamatayan’ yaong nagpapahayag ng damdamin ng tao bilang ganti niya sareaksyon sa kanyang pang araw-araw na pagsusumikap upang mabuhay at lumigaya sa kanyang kapaligiran ay gayun din sa kanyang pasusumikap na Makita ang Maykapal.\r\n	Si bro. Azarias ay nag sabing “ang panitikan ay ang pagpapahayag ng damdamin ng tao, sa lipunan, sa pamahalaan, sa kapaligiran, sa kapwa, at sa Dakilang Lumikha”. Ang pagpapahayag dawn g damdamin ng isang nilikha ay maaring sa pamamagitan ng pag ibig, kalungkutan, kaligayahan, galit o poot, pagkahabag, pag alipusta, paghihiganti at iba pa.	\r\n	Ayon naman sa Webster, sa kaniyang pinakabuod na kahulugan, “anu mang bagay raw naisasatitik, basta may kaugnayan sa pag iisip at damdamin ng tao, maging ito ay totoo, kathang isip o bungang tulog lamang ay maaaring tawaging panitikan”.\r\n	Ganito naman ang makabayanihang pakahulugan ni Maria Ramon sa panitikan. Ayon sa kanya “Ang panitikan ay kasaysayan ng kaluluwa ng mga mamamayan. Sa panitikan  nasasalamin ang mga layunin, damdamin, panaginip, pag-asa, hinaing at guni guni ng mga mamamayan na nasusulat o binabanggit sa sa maganda,makulay, makahulugan, matalinhaga, at masining na mga pahayag”.Ang panitikan ay nag bubunsod sa pagkilos ng mga mamamayan sa kanyang pagkamakabayan o nasyonalismo. Ito ang lakas na nagbubuklod ng kanilang damdamin, nagdidilat ng mga kanilang mata sa katwiran at katarungan.\r\n	Ang panitikan ay indi lamang lumilinang ng nasyonalismo kundi ito ay nag iingat din ng mga karanasan, tradisyon at mga mithiin ng bawat bansa. Hinuhubog sa panitikan ang kagandahan ng kultura ng bawat lipunan. Dito nasusulat ang henyo ng bawat panahon. Ito’y walang paglipas hanggang may tao sa sandaigdigan. Ang panitikan ay isang ilaw ng walang kamatayang tumatanglaw sa kabihasnan ng tao.\r\n', NULL),
	(12, 12, 'Ang Aralin', 'Maraming pakahulugan ang iba’t ibang manunulat tumgkol sa panitikan. May nag sasabing “Ang tunay na kahulugan daw ng panitikan ay yaong pag papahayag ng damdamin, panaginip, at karanasan ng sangkatauhan nasusulat sa maganda, makahulugan, at manising na mga pahayag’’ . Sa aklat nina Atienza, Ramos, Zalazar, at Nazal na pinamagatang “Panitikang Pilipino, ipinahahayag na “ang tunay na panitikan ay yaong walang kamatayan’ yaong nagpapahayag ng damdamin ng tao bilang ganti niya sareaksyon sa kanyang pang araw-araw na pagsusumikap upang mabuhay at lumigaya sa kanyang kapaligiran ay gayun din sa kanyang pasusumikap na Makita ang Maykapal.\r\n	Si bro. Azarias ay nag sabing “ang panitikan ay ang pagpapahayag ng damdamin ng tao, sa lipunan, sa pamahalaan, sa kapaligiran, sa kapwa, at sa Dakilang Lumikha”. Ang pagpapahayag dawn g damdamin ng isang nilikha ay maaring sa pamamagitan ng pag ibig, kalungkutan, kaligayahan, galit o poot, pagkahabag, pag alipusta, paghihiganti at iba pa.	\r\n	Ayon naman sa Webster, sa kaniyang pinakabuod na kahulugan, “anu mang bagay raw naisasatitik, basta may kaugnayan sa pag iisip at damdamin ng tao, maging ito ay totoo, kathang isip o bungang tulog lamang ay maaaring tawaging panitikan”.\r\n	Ganito naman ang makabayanihang pakahulugan ni Maria Ramon sa panitikan. Ayon sa kanya “Ang panitikan ay kasaysayan ng kaluluwa ng mga mamamayan. Sa panitikan  nasasalamin ang mga layunin, damdamin, panaginip, pag-asa, hinaing at guni guni ng mga mamamayan na nasusulat o binabanggit sa sa maganda,makulay, makahulugan, matalinhaga, at masining na mga pahayag”.Ang panitikan ay nag bubunsod sa pagkilos ng mga mamamayan sa kanyang pagkamakabayan o nasyonalismo. Ito ang lakas na nagbubuklod ng kanilang damdamin, nagdidilat ng mga kanilang mata sa katwiran at katarungan.\r\n	Ang panitikan ay indi lamang lumilinang ng nasyonalismo kundi ito ay nag iingat din ng mga karanasan, tradisyon at mga mithiin ng bawat bansa. Hinuhubog sa panitikan ang kagandahan ng kultura ng bawat lipunan. Dito nasusulat ang henyo ng bawat panahon. Ito’y walang paglipas hanggang may tao sa sandaigdigan. Ang panitikan ay isang ilaw ng walang kamatayang tumatanglaw sa kabihasnan ng tao.\r\n', NULL);
/*!40000 ALTER TABLE `lesson` ENABLE KEYS */;

-- Dumping structure for table caipl.quiz
DROP TABLE IF EXISTS `quiz`;
CREATE TABLE IF NOT EXISTS `quiz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lesson_id` int(11) NOT NULL,
  `quiz_question` varchar(145) NOT NULL,
  `option_1` varchar(63) NOT NULL,
  `option_2` varchar(31) NOT NULL,
  `option_3` varchar(33) DEFAULT NULL,
  `option_4` varchar(36) DEFAULT NULL,
  `answer` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=473 DEFAULT CHARSET=latin1;

-- Dumping data for table caipl.quiz: ~148 rows (approximately)
DELETE FROM `quiz`;
/*!40000 ALTER TABLE `quiz` DISABLE KEYS */;
INSERT INTO `quiz` (`id`, `lesson_id`, `quiz_question`, `option_1`, `option_2`, `option_3`, `option_4`, `answer`) VALUES
	(311, 1, 'Tulang may labing- apat na taludtod.', 'soneto', 'awit', 'liriko', 'dalit', 1),
	(312, 1, 'Binubuo ng sukat na lala- lambindalawahing pantig at inaawit nang mabagal sa saliw ng gitara.', 'soneto', 'awit', 'liriko', 'comedya', 2),
	(313, 1, 'Binubuo ng wawaluhing pantig na sukat at binibigtkas sa kumpas ng martsa', 'soneto', 'awit', 'liriko', 'kurido', 3),
	(314, 1, 'Tulang nagpapahayag ng damdamin tungkol sa kamatayan.', 'Tulang Pasalaysay', 'Elihiya', 'Epiko', 'Awit at Kurido', 2),
	(315, 1, 'Mga awit na pumupuri sa diyos sa mahal na birhin', 'Epiko', 'dalit', 'Awit at Kurido', 'soneto', 2),
	(316, 1, 'Tulang nagsasalaysay  ng kabayanihan', 'Epiko', 'dalit', 'Awit at Kurido', 'soneto', 1),
	(317, 1, 'Tala ng kasaysayan ng buhay ng tao', 'sanaysay', 'balita', 'talambuhay', 'parabola', 3),
	(318, 1, 'Anumang bagay na naisatitik at may kaugnayan sa buhay at damdamin ng tao.', 'koran', 'anekdota', 'panitikan', 'Ang mahabharata', 3),
	(319, 1, 'Mga bagay na naisa titik at tunay na nangyayari', 'bibliya', 'iliad', 'koran', 'canterbury tales', 1),
	(320, 1, 'Pinagmulan ng kakristiyanuhan.', 'panitikan', 'talambuhay', 'parabula', 'kasaysayan', 3),
	(321, 1, 'Ito ay may himig na awit dahilang ito ay inaawit habang may nagsasayaw', 'balad', 'soneto', 'dalit', 'elehiya', 1),
	(322, 1, 'Ito ay tulang may labing-apat na taludtod', 'balad', 'dalit', 'elehiya', 'soneto', 3),
	(323, 1, 'Ito ay karaniwang ginagamit sa lahat ng mga dulang musika, kasama na ang opera', 'komedya', 'melodrama', 'trahedya', 'parsa', 2),
	(324, 1, 'Ito ay batay sa alamat ng singsing ng isang prinsesa na naihulog niya sa dagat sa hangarin nitong mapangasawa ang kasintahang mahirap.', 'duplo', 'balagtasan', 'karagatan', 'saynete', 3),
	(325, 1, 'Ito ay isang mahabang salaysaying nahahati sa mga kabanata', 'nobela', 'maikling kwento', 'dula', 'alamat', 1),
	(326, 1, 'Ito ay pagpapahayag ng kuru-kuroo opinyon ng may akda tungkol sa isang suliranin o pangyayari', 'talambuhay', 'balita', 'anekdota', 'sanaysay', 3),
	(327, 1, 'Ito ay isang pagpapahayag na binibigkas sa harap ng mga tagapakinig', 'talumpati', 'balita', 'talambuhay', 'anekdota', 1),
	(328, 1, 'Ito ay mga salaysaying hango sa bibliya na tulad ng anekdota', 'talumpati', 'alamat', 'salaysay', 'parabula', 3),
	(329, 1, 'Ito ay isang uri ng pagpapahayag na nagsasalaysay ng isang karanasan', 'paglalahad', 'pagsasalaysay', 'paglalarawan', 'pangangatwiran', 2),
	(330, 1, 'Ito ay isang uri ng pagpapahayag na nagsasalaysay ng isang karanasan ito na ang tanging layunin ay makapagbigay aral sa mga mambabasa.', 'alamat', 'anekdota', 'sanaysay', 'balita', 2),
	(331, 2, 'Parang Sabir', 'epiko ng moro', 'epiko  ng bisaya', 'epiko ng mga taga banwa', 'epiko ng mga bagobo', 1),
	(332, 2, '"Dagoy" at "Sudsud"', 'epiko ng moro', 'epiko  ng bisaya', 'epiko ng mga taga banwa', 'epiko ng mga bagobo', 3),
	(333, 2, 'Lagda', 'epiko ng  moro', 'epiko  ng bisaya', 'epiko ng mga taga banwa', 'epiko ng mga bagobo', 2),
	(334, 2, 'Haraya', 'epiko ng moro', 'epiko  ng bisaya', 'epiko ng mga taga banwa', 'epiko ng mga bagobo', 2),
	(335, 2, 'maragtas', 'epiko ng moro', 'epiko  ng bisaya', 'epiko ng mga taga banwa', 'epiko ng mga bagobo', 2),
	(336, 2, 'Bantugan', 'epiko ng moro', 'epiko  ng bisaya', 'epiko ng mga taga banwa', 'epiko ng mga bagobo', 3),
	(337, 2, 'Bidasari', 'epiko ng moro', 'epiko ng ipugaw', 'epiko ng bagobo', 'epiko ng bisaya', 3),
	(338, 2, 'Alim', 'epiko ng moro', 'epiko ng ipugaw', 'epiko ng bagobo', 'epiko ng bisaya', 1),
	(339, 2, 'Biag ni Lam-ang', 'epiko ng moro', 'epiko ng ipugaw', 'epiko ng bagobo', 'epiko ng bisaya', 2),
	(340, 2, 'Ang dalit o Imno', 'awit sa pamamangka', 'awit ng pag ibig', 'awit sa kasal', 'awit sa Diyos-diyosan ng mga bisaya', 1),
	(341, 2, 'Talindaw', 'awit sa pamamangka', 'awit ng pag ibig', 'awit sa kasal', 'awit sa Diyos-diyosan ng mga bisaya', 3),
	(342, 2, 'Diona', 'awit sa pamamangka', 'awit ng pag ibig', 'awit sa kasal', 'awit sa Diyos-diyosan ng mga bisaya', 1),
	(343, 2, 'Kumintang', 'epiko ng bisaya', 'epiko ng moro', 'epiko ng tagalog', 'epiko ng bagobo', 3),
	(344, 2, 'Kundiman', 'awit sa pamamangka', 'awit ng pag ibig', 'awit sa kasal', 'awit sa Diyos-diyosan ng mga bisaya', 3),
	(345, 2, 'Epiko ng Ilokano', 'Biag ni Lam-ang', 'Alim', 'bidasari', 'si bulan at si Adlaw', 2),
	(346, 2, 'Sumulat ng Biag  ni Lam-Ang', 'Padre bukanag', 'Pedro Abuna', 'Pedro Bukaneg', 'Padre Abuena', 1),
	(347, 2, 'Pagkakilala kay Padre Bukaneg', 'Ama ng Panitikang Pilipino', 'Pader ng Panitikang Ilokano', 'Pare ng Panitikang Ilokano', 'si bulan at si Adlaw', 3),
	(348, 2, 'Pangunahing tauhan sa Biag ni Lam-Ang', 'Lam-Ang', 'Pedro', 'bukaneg', 'Lamang', 1),
	(349, 2, 'Kasulatang o Tagumpay', 'awit ng pag-ibig', 'awit sa diyos-diyosan ng mga bi', 'awit ng pandigma', 'awit ng Tagumpay', 1),
	(350, 3, 'Ito ang kauna-unahang aklat na nalimbag sa Pilipinas noong 1953,', 'Alibata', 'Vocabulario de la Lengua Tagala', 'Ang Doctrina Cristiana', 'Ang Barlaan at Josaphat', 3),
	(351, 3, '. Unang aklat pang wika sa Kapampangan na sinulat ni Padre Diego Bergano.', 'Arte Y De La Lengua Bicolana', 'Arte De La Lengua Iloka', 'Arte Y Reflas De La Lengua Tagala', 'Vocabulario De La Lengua Pampango', 3),
	(352, 3, 'Ang Compendio De La Lengua Tagala ay iniakda ni;', 'Padre Diego Bergano', 'Padre Pedro de San Buenaventura', 'Padre Gaspar', 'Padre marcos Lisboa', 2),
	(353, 3, '. Sinulat ni Padre Blancas de San Jose at isinalin sa Tagalog ni Tomas Pinpin noong 1610', 'Arte Y Reglas De La Lengua Tagala', '. Compendio De La Lengua Tagala', 'Vocabularyo De La Lengua Tagala', 'Vocabularyo De La. Lengua Pampango', 1),
	(354, 3, 'Itinuturing isa sa mga dulang panlibangan ng mga hulinng tao ng pananakop sa atin ng mga Kastila.', 'Saynete', 'duplo', 'kurido', 'baybay', 1),
	(355, 3, '. Isang melodrama o dulang musikal na tatatluhing yugto', 'moro moro', 'karilyo', 'sursuela', 'awit', 3),
	(356, 3, 'Ito ay batay sa alamat ng singsing ng isang prinsesa na naihulog nya sa dagat.', 'karagatan', 'karilyo', 'moro moro', 'duplo', 1),
	(357, 3, '. Ito ay itinnuturing na  isang laro ng mga aninong ginawa mula sa Karton na pinapanood na gumagalaw sa likod ng isamg putting tabing.', 'karagatan', 'karilyo', 'moro moro', 'duplo', 2),
	(358, 3, 'Ito ang humahalili sa karagatan', 'karagatan', 'karilyo', 'moro moro', 'duplo', 3),
	(359, 3, 'Ito ang ikatlong aklast na nailimbag sa Pilipinas na akda ito  ni Padre Blancas de San Jose at nailimbag sa imprenta ng Pamantasan ng Sto. Tomas.', 'Nuestra Senora del Rosario', 'Ang Barlaan at Josaphat', 'Ang Pasyon', 'Ang Urbana at Odyssey', 2),
	(360, 3, 'Ito ang ipinagmamalaking kauna-unahang akbakadang Filipino na nahalinhan ng alpabetong Romano.', 'awit', 'moro moro', 'kurido', 'alibata', 3),
	(361, 3, 'Pagtatanghal ito na natutungkol sa buhay at pagpapasakit n gating Poong si Hesukristo', 'tibag', 'ligaylay', 'sinakulo', 'panunuluyan', 3),
	(362, 3, 'Isang pagtatanghal na isinasagawa bago mag alas dose ng gabi ng kapaskuhan.', 'tibag', 'Lagaylay', 'sinakulo', 'panunuluyan', 3),
	(363, 3, 'Tulang pasalaysay na natutungkol sa katapangan, kabayanihan, kababalaghan, at pananampalataya ng mga tauhan.', 'kurido', 'sarsuela', 'saynete', 'kurido', 3),
	(364, 3, 'Ito ay aklat na natutungkol sa buhay at pagpapasakit ni Hesukristo', 'Nuestra Senora del Rosario', 'Ang barlaan at Josaphat', 'Ang pasyon', 'Ang Urbana at Felisa', 3),
	(365, 4, 'Dolores Manapat', 'Dr. Jose Rizal', 'Marcelo H. Del Pilar', 'Jose Ma. Panganiban', 'Antonio Luna', 2),
	(366, 4, 'Tagailog', 'Dr. Jose Rizal', 'Marcelo H. Del Pilar', 'Jose Ma. Panganiban', 'Antonio Luna', 3),
	(367, 4, 'Kalipulako', 'Antonio Luna', 'Dr. Jose Rizal', 'Mariano Ponce', 'Jose Ma. Panganiban', 3),
	(368, 4, 'Dimasalang', 'Antonio Luna', 'Dr. Jose Rizal', 'Mariano Ponce', 'Jose Ma. Panganiban', 2),
	(369, 4, 'Plaridel', 'Dr. Jose Rizal', 'Marcelo H. Del Pilar', 'Jose Ma. Panganiban', 'Antonio Luna', 2),
	(370, 4, 'Jomapa', 'Dr. Jose Rizal', 'Marcelo H. Del Pilar', 'Jose Ma. Panganiban', 'Antonio Luna', 3),
	(371, 4, 'Laong Laan', 'Dr. Jose Rizal', 'Marcelo H. Del Pilar', 'Jose Ma. Panganiban', 'antonio Luna', 1),
	(372, 4, 'Pupdoh', 'Dr. Jose Rizal', 'Marcelo H. Del Pilar', 'Jose Ma. Panganiban', 'Antonio Luna', 2),
	(373, 4, 'Tikbalang', 'Antonio Luna', 'Dr. Jose Rizal', 'Mariano Ponce', 'Jose Ma. Panganiban', 3),
	(374, 4, 'Piping Dilat', 'Dr. Jose Rizal', 'Marcelo H. Del Pilar', 'Jose Ma. Panganiban', 'Antonio Luna', 2),
	(375, 4, 'Dolores Manapat', 'Noli Me Tangere', 'El Filibusterismo', 'Filipinas Dentro de Cien Años', 'Wala rito ang sagot', 3),
	(376, 4, 'Tagailog', 'Noli', 'Fili', 'Mi Ultimo Adios', 'Sobre La Indolencia de los Filipinos', 3),
	(377, 4, 'Kalipulako', 'Antonio Luna', 'Marcelo H. del Pilar', 'Jose Rizal', 'Graciano Lopez Jaena', 3),
	(378, 4, 'Dimasalang', '. Pedro Paterno', 'Emilio Jacinto', 'Jose Ma. Panganiban', 'Jose Palma', 3),
	(379, 4, 'Plaridel', 'Andres Bonifacio', 'Apolinario Mabini', 'Emilio Jacinto', 'Marcelo H. del Pilar', 1),
	(380, 4, 'Jomapa', 'A Mi Madre', 'Ninay', 'Melancholas', 'El Pensamiento', 1),
	(381, 4, 'Laong Laan', 'Por Madrid', 'La Tertulia Filipina', 'Se Divierten', 'La Casa de Huespedes', 3),
	(382, 4, 'Pupdoh', 'Apolinario Mabini', 'Emilio Jacinto', 'Andres Bonifacio', 'Jose Palma', 3),
	(383, 4, 'Tikbalang', 'La Indenpendencia', 'La Republica Filipina', 'La Libertad', 'Heraldo de la Revolution', 3),
	(384, 4, 'Piping Dilat', 'Apolinario Mabini', '. Emilio Jacinto', 'Andres Bonifacio', 'Jose Palma', 3),
	(385, 5, 'Batikuling', 'Jose Corazon de Jesus', 'Jose Garcia', 'Inigo Ed. Regalado', 'Jesus Balmori', 3),
	(386, 5, 'Kintin Kulirat', 'Ang Muling Pagsilang', 'Malaya', 'Ang Sigaw ng Bayan', 'Wala sa nabanggit', 3),
	(387, 5, 'Kuntil Butil', 'Jose Garcia', 'Severino Reyes', 'Valeriano Hernandez Peña', 'Florentino Collantes', 3),
	(388, 5, 'Odalager', 'Jose Corazon de Jesus', 'Jose Garcia', 'Inigo Ed. Regalado', 'Jesus Balmori', 3),
	(389, 5, 'Doveglion', 'Jose Garcia', 'Severino Reyes', 'Valeriano Hernandez Peña', 'Florentino Collantes', 1),
	(390, 5, 'Huseng Batute', 'Jose Corazon de Jesus', 'Jose Garcia', 'Inigo Ed. Regalado', 'Jesus Balmori', 1),
	(391, 5, 'Lola Basyang', 'Jose Corazon de Jesus', 'Jose Garcia', 'Inigo Ed. Regalado', 'Severino Reyes', 3),
	(392, 5, 'El Nuevo Dia', 'Jose Garcia', 'Severino Reyes', 'Valeriano Hernandez Peña', 'Florentino Collantes', 3),
	(393, 5, 'El Renacimiento', 'Ang Muling Pagsilang', 'Malaya', 'Ang Sigaw ng Bayan', 'Wala sa nabanggit', 3),
	(394, 5, 'El Grito del Pueblo', 'Ang Muling Pagsilang', 'Malaya', 'Ang Sigaw ng Bayan', 'Wala sa nabanggit', 3),
	(395, 6, 'Higanti ng Patay', 'Ildefonso Santos', 'Julian Cruz Balamaceda', 'Jose Ma. Hernandez', 'Narciso Reyes', 2),
	(396, 6, 'Sa Pula Sa Puti', 'Francisco Soc. Rodrigo', 'Julian Cruz Balamaceda', 'Gonzalo K. Flores', 'NVM Gonzales', 1),
	(397, 6, 'Panday Pira', 'Ildefonso Santos', '. Julian Cruz Balamaceda', 'Jose Ma. Hernandez', 'Narciso Reyes', 3),
	(398, 6, 'Bulaga', 'NVM Gonzales', 'Julian Cruz Balmaceda', 'Clodualdo del Mundo', 'Jose Ma. Hernandez', 3),
	(399, 6, 'Uhaw Ang Tigang Na Lupa', 'NVM Gonzales', 'Liwayway Arceo', 'Ildefonso Santos', 'Francisco Soc. Rodrigo', 3),
	(400, 6, 'Lupong Tinubuan', 'Ildefonso Santos', 'Julian Cruz Balamaceda', 'Jose Ma. Hernandez', 'Narciso Reyes', 1),
	(401, 6, 'Palay  ( Tanaga )', 'Ildefonso Santos', 'Julian Cruz Balamaceda', 'Jose Ma. Hernandez', 'Narciso Reyes', 3),
	(402, 6, 'Tutubi ( Haiku )', 'Ildefonso Santos', 'Julian Cruz Balamaceda', 'Gonzalo K. Flores', 'Narciso Reyes', 1),
	(403, 6, 'Pag-ibig', 'Teodoro Gener', 'Liwayway Arceo', 'Ildefonso Santos', 'Francisco Soc. Rodrigo', 3),
	(404, 7, 'Ako ay Isang Tinig', 'Genoveva E. Matute', 'Pedro S. Dandan', 'Domingo Landicho', 'Rogelio Mangahas', 3),
	(405, 7, 'Mga Piling Katha', 'Pedro S. Dandan', 'Alejandro Abadilla', 'Rogelio Mangahas', 'Teodoro Agoncillo', 2),
	(406, 7, 'Mabangis na kamay – Maamong Kamay', 'Genoveva E. Matute', 'Pedro S. Dandan', 'Domingo Landicho', 'Rogelio Mangahas', 1),
	(407, 7, 'Planeta, Buwan at Bituin', 'Rogelio Mangahas', 'Teodoro Agoncillo', 'Domingo Landicho', 'Elpidio Kapulong', 3),
	(408, 7, 'Maikling Kuwentong Tagalog', 'Rogelio Mangahas', '. Teodoro Agoncillo', 'Domingo Landicho', 'Elpidio Kapulong', 2),
	(409, 7, 'Manlilikha, Mga Piling Tula', 'Rogelio Mangahas', 'Teodoro Agoncillo', 'Domingo Landicho', 'Elpidio Kapulong', 1),
	(410, 7, 'Sinig at Pamamaraan ng Pag-aaral ng Panitikan', 'Domingo Landicho', 'Ben Ungson', 'Elpidio Kapulong', 'Diosdado Capino', 3),
	(411, 7, '. Ang Buhay at mga Akda ni Rizal', 'Domingo Landicho', 'Ben Ungson', 'Elpidio Kapulong', 'Diosdado Capino', 2),
	(412, 7, 'Ulirang mag-aaral ni Rizal', 'Domingo Landicho', 'Ben Ungson', 'Elpidio Kapulong', 'Diosdado Capino', 3),
	(413, 7, 'Rizal, Ang Bayani at Guro.', 'Domingo Landicho', 'Ben Ungson', 'Elpidio Kapulong', 'Diosdado Capino', 1),
	(414, 8, 'Mga Gintong Kaisipan', 'Rolando S. Tinio', 'Segundo Esguerra', 'Alejandro Q. Perer', 'Rio Alma', 1),
	(415, 8, 'Mga A! ng Panahon', 'Rolando S. Tinio', 'Segundo Esguerra', 'Alejandro Q. Perer', 'Rio Alma', 3),
	(416, 8, 'Sitsit sa Kulilig', 'Rolando S. Tinio', 'Segundo Esguerra', 'Alejandro Q. Perer', 'Rio Alma', 1),
	(417, 8, 'Kalikasan', 'V.G Suarez', 'Segundo Esguerra', 'Aniceto Silvestre', '. Rio Alma', 3),
	(418, 8, 'Mga Tula Ng Bayan Ko At Iba Pa', 'V.G Suarez', 'Segundo Esguerra', 'Aniceto Silvestre', 'Rio Alma', 1),
	(419, 8, 'Peregrinasyon at Iba pang Tula', 'V.G Suarez', 'Segundo Esguerra', 'Aniceto Silvestre', 'Rio Alma', 3),
	(420, 8, 'Taong naging mainit ang pamamalasak ng aktibismo ng mga kabataan', '1971-1972', '1970-1971', '1970-1972', '1970-1971', 3),
	(421, 8, 'Radikal o rebelde', 'burgis', 'burge', 'burgos', 'burigis', 1),
	(422, 8, '. Taon na dineklara ang Batas Militar', '1970', '1971', '1972', '1973', 3),
	(423, 8, 'Sumulat ng aklat na “Panitikang Pilipino sa Kaunlaran nang Bansa”', 'Ponciano Pineda', 'G. Ponciano Pineda', 'Ponciano Pined', 'G. Ponciano Pinedad', 2),
	(424, 9, 'Nagsimula ang panahong ng bagong lipunan noong?', '. Setyembre 21, 1972', 'Setyembre 22, 1972', '21-Sep-71', 'Setyembre 22, 1971', 1),
	(425, 9, '. Itinatag ng pamahalaang militar na syang maging tagapamahala at sumubaybay sa mga pahayagan, aklat, at iba pang babasahing panlipunan.', 'Milary Ministri ng Kabatirang Pambansa', 'Military Ministri ng Kabatirang', '. Ministri ng Kabatirang Pambansa', 'Ministri ng Kabatirang Pampahayagan', 3),
	(426, 9, 'Taong nagbago ang takbo ng kasaysayan ng Awiting Pilipino', '1974', '1976', '1975', '1973', 3),
	(427, 9, 'Isang makabago o istilong rock na operang baalet.', 'Teles of Manuvu', 'Tales of Manovu', 'Manuvo Thales', 'Manuvu Tales', 1),
	(428, 9, 'Teatro Filipino', 'Rolando Tinio', 'Behn Cervantes', 'Zenaida Amador', 'Lino Brocka', 2),
	(429, 9, 'UP Repertory', 'Rolando Tinio', 'Behn Cervantes', 'Zenaida Amador', 'Lino Brocka', 1),
	(430, 9, 'Pelikulang pinangunahan  nina Christopher de Leon at Gloria diaz.', 'Ganito kami Noon .. Paano  kayo Ngayon”', '. “Insiang', '“Minsa ay Isang Gamu-gamu”', '“Nora Aunor”', 1),
	(431, 9, 'Pelikulang pinangunahan  ni Hilda Coronel', '“Ganito kami Noon .. Paano  kayo Ngayon”', '. “Insiang', '“Minsa ay Isang Gamu-gamu”', 'Wala sa nabanggit', 2),
	(432, 9, 'Pangunahing bituin sa “Minsa ay Isang Gamo-gamu”', 'Christopher de Leon', 'Nora Aunor', 'Gloria Diaz', 'Hilda Coronel', 2),
	(433, 9, 'Sinulat  ni Edgarde Reyes', 'Minsa ay .. Sa Mga Kuko Ng Liwanag', 'Ganito kami Noon .. Paano  kayo', 'Minsa ay Isang Gamu-gamu', 'Lahat ng nabanggit', 1),
	(434, 10, 'Kailan inalis sa ilalim ng Batas Militar ang Pilipinas', 'Agosto 21, 1983', 'Pebrero 5, 1986', 'Enero 2, 1981', '12-Jul-87', 3),
	(435, 10, 'Kailan pinatay ang dating senador ng bansa na si Benigno Aquino Jr?', 'Agosto 21, 1983', 'Pebrero 5, 1986', 'Enero 2, 1981', '12-Jul-81', 1),
	(436, 10, 'Idolo ng Masang Pilipino', 'Coritha', 'Ninoy Aquino', 'Cory Aquino', 'Freddie Aguilar', 2),
	(437, 10, 'Saan unang inawit ni Coritha ang awiting pinamagatang “Laban Na”?', 'Presidential Campaign Movement of Cory Aquino', 'National Unification Conference', 'Peoples Tonight', 'Wala sa nabanggit', 2),
	(438, 10, 'Kalian unang inawit ni Coritha ang awiting “Laban Pa”?', 'Marso , 1985', 'Enero,  1986', 'Enero, 1985', 'wala sa nabanggit', 1),
	(439, 10, 'Awiting orihinal na sinulat nina Jose Corazon de Jesus at C.  de Guzman na muling binuhay ni Freddie Aguilar.', 'Pilipino', 'Di mo masilip ang langit', 'Sa panahon ng ligalig', 'Bayan ko', 3),
	(440, 10, 'Mga pahayagang tinangkilik naman ng marami at pinaniniwalaang  nagpapahayag ng mga totoong pangyayari.', 'Forum', 'Masaya', 'Manila Times', 'Lahat ng nabanggit', 3),
	(441, 10, 'Pinakaprestihiyosong gawad pamapanitikan ng bansa', 'Presidential Campaign Movement', 'National Unification Conference', 'Don Carlos Palanca Memorial Award', 'Wala sa nabanggit', 3),
	(442, 10, 'Akda ng maikling kuwento na pinamagatang “ Di mo masisilip ang langit”.', 'Benjamin P. Pascual', 'Mike L. Bigornia', 'Jose F. Lacaba', 'Romulo Sandoval', 1),
	(443, 10, 'Bansag kay Benjamin Pascual', 'Homos', 'Radamen', 'Don Miguel', 'Agapito Lugay', 2),
	(444, 11, 'Maikling Talambuhay', 'Freddie Aguilar', 'Romulo A. Sandoval', 'Coritha at Eric', 'Mike L. Bigornia', 3),
	(445, 11, 'Pakikidigma', 'Freddie Aguilar', 'Romulo A. Sandoval', 'Coritha at Eric', 'Mike L. Bigornia', 2),
	(446, 11, 'Bayan Ko', 'Freddie Aguilar', 'Romulo A. Sandoval', 'Coritha at Eric', 'Mike L. Bigornia', 3),
	(447, 11, 'Si Edgardo Reyes', 'Jose Corazon de Jesus', 'Romulo A. Sandoval', 'Rosario Torres Yu', 'Mike L. Bigornia', 3),
	(448, 11, 'Ang Damo sa Fort Bonifacio', 'Freddie Aguilar', 'Romulo A. Sandoval', 'Coritha at Eric', 'Mike L. Bigornia', 3),
	(449, 11, 'Dikta ng Dayuhan', '. Jose Corazon Jesus at C. Je de Jesus', 'Jose Corazon de Guzman at C. Je', 'Jose Corazon de Guzman at C. Je d', 'wala sa nabanggit', 1),
	(450, 11, 'Bukas na Liham', 'Freddie Aguilar', 'Romulo A. Sandoval', 'Coritha at Eric', 'Mike L. Bigornia', 2),
	(451, 11, 'Handog ng Pilipino', 'Benjamin Pascual', 'Jose F. Lacaba', 'Fidell Rillo Jr.', 'Panny A. Garcia', 3),
	(452, 11, 'Pag-ibig Laban sanTangke', 'Jose F. Lacaba', 'Cresenciano C. Marquez Jr.', 'Fidell Rillo Jr.', 'Benjamien Pascual', 3),
	(453, 11, 'Gitna ng Bayan', 'Ernie Yang', 'Romulo A. Sandoval', '. Coritha at Eric', 'Mike L. Bigornia', 1),
	(454, 11, '. Magkaisa', 'Jose F. Lacaba', 'Cresenciano C. Marquez Jr.', 'Fidell Rillo Jr.', 'Benjamien Pascual', 3),
	(455, 11, 'Bawasan ang Amortisasyon', 'Mike L. Bigornia', 'Cresenciano C. Marquez Jr.', 'Fidell Rillo Jr.', 'Tomus F. Agulto', 3),
	(456, 11, 'Himala Ni Bathala', 'Mike L. Bigornia', 'Cresenciano C. Marquez Jr', 'Fidell Rillo Jr.', 'Tomus F. Agulto', 2),
	(457, 11, 'Lumaya ang Media', 'Lualhati Baustista Dela Cruz', 'Cresenciano C. Marquez Jr.', 'Fidell Rillo Jr.', 'Mike . Bigonia', 1),
	(458, 11, 'Alumbreng May Tinik, Bombang Tubig at Usok na Malupit', 'Lualhati Baustista Dela Cruz', 'c', 'Fidell Rillo Jr.', 'Mike. Bigonia', 3),
	(459, 12, 'Pinabayaaan ang pamilya dahil lamang sa isang kerida.', 'Luis', 'Mang Luis', 'Luise', 'Mang Luise', 1),
	(460, 12, 'Nalaman niya ang kaniyang kamalian kaya at bumalik siya sa kanyang pamilya upang humingi ng tawad.', 'Luis', 'Mang Luis', 'Luise', 'Mang Luise', 2),
	(461, 12, 'Nabilanggo dahil sa kanyang prinsipyo', 'Ernan', 'Bok', 'Tony', 'Domeng', 1),
	(462, 12, 'Labis niyang kinamuhian ang ama dahil sa sinapit nilang mag-iina', 'Ernan', 'Bok', 'Tony', 'Domeng', 3),
	(463, 12, '. Binigyang diin ay ang interaksyon ng mga tauhan sa kapwa at sa lipunan, ang sanhi ng pagkakaroon ng mga ganoong pangyayari sa buhay, ang kanila', 'Sosyolohikal', 'Moralisiko', 'Sikolohikal', 'Pormalistiko', 1),
	(464, 12, 'Malambot na pangalan ngunit matigas ang puso.', 'Luis', 'Domeng', 'Bok', 'Tony', 3),
	(465, 12, 'Dahil sa kanya natuwid ang landas ni Tony.', 'Padre Abena', 'Padre Abuena', 'Padre Abuna', 'Padre Abeuna', 1),
	(466, 12, '. Isa syang masipag na ahente ng seguro nanagsususmikap uoang mabigyan .', 'Mang Luis', 'Bb. Reyes', 'Domeng', 'Ernan', 3),
	(467, 12, 'Ito ang panunnuring nangangailangan ng masusing pag-aaral sa kabuuan ng akda 10  Ito ang panuring ang diin ay nasa pagtatalo ng kaisipan ng pangu', 'Sikolohikal', 'Arketipal', 'Pormalistiko', 'Sosyolohikal', 2),
	(468, 12, 'Kuwentong isisnulat ni Dionisio Salazar', 'Sinag sa Karimlan', 'Sinag at Karimlan', 'Sinag ng Karimlan', 'Sinang sa Karimlan', 1),
	(469, 12, 'Matigas ang pangalan kaya inilalarawang pusakal', 'Bok', 'Tony', 'Ernan', 'Luis', 1),
	(470, 12, 'Natutungkol sa panunuri ng kayarian ng akda kung kumbensyunal o makabago ang kayarian ng akda.', 'Moralistiko', 'Artipekal', 'Pormalistiko', 'Sikolohikal', 1),
	(471, 12, 'Pangunahing tauhan sa “Sinang sa Karimlan”', 'Bok', 'Tony', 'Ernan', 'Luis', 3),
	(472, 12, 'Iginagalang na nars sa ospital ng bilangguan', 'Bb. Reyes', 'Bb. Reys', 'Bb. Ryes', 'Bb. Yeres', 2);
/*!40000 ALTER TABLE `quiz` ENABLE KEYS */;

-- Dumping structure for table caipl.quizzes
DROP TABLE IF EXISTS `quizzes`;
CREATE TABLE IF NOT EXISTS `quizzes` (
  `id` int(255) NOT NULL,
  `que` text NOT NULL,
  `option 1` varchar(222) NOT NULL,
  `option 2` varchar(222) NOT NULL,
  `option 3` varchar(222) NOT NULL,
  `option 4` varchar(222) NOT NULL,
  `ans` varchar(222) NOT NULL,
  `userans` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table caipl.quizzes: ~5 rows (approximately)
DELETE FROM `quizzes`;
/*!40000 ALTER TABLE `quizzes` DISABLE KEYS */;
INSERT INTO `quizzes` (`id`, `que`, `option 1`, `option 2`, `option 3`, `option 4`, `ans`, `userans`) VALUES
	(1, 'What does PHP stand for?', 'Preprocessed Hypertext Page', 'Hypertext Markup Language', 'Hypertext Preprocessor', 'Hypertext Transfer Protocol', 'Hypertext Preprocessor', 'Hypertext Transfer Protocol'),
	(2, 'What will be the value of $var? ', '0', '1', '2', 'NULL', '0', '0'),
	(3, ' ____________ function in PHP Returns a list of response headers sent (or ready to send)', 'header', 'headers_list', 'header_sent', 'header_send', 'headers_list', 'headers_list'),
	(4, 'Which of the following is the Server Side Scripting Language?', 'HTML', 'CSS', 'JS', 'PHP', 'PHP', 'PHP'),
	(5, 'From which website you download this source code?', 'Softglobe.net', 'w3school.com', 'technopoints.co.in', 'php.net', 'technopoints.co.in', 'technopoints.co.in');
/*!40000 ALTER TABLE `quizzes` ENABLE KEYS */;

-- Dumping structure for view caipl.quiz_listing
DROP VIEW IF EXISTS `quiz_listing`;
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `quiz_listing` (
	`chapter_name` VARCHAR(200) NULL COLLATE 'latin1_swedish_ci',
	`lesson_name` VARCHAR(500) NOT NULL COLLATE 'latin1_swedish_ci',
	`quiz_question` VARCHAR(145) NOT NULL COLLATE 'latin1_swedish_ci',
	`option_1` VARCHAR(63) NOT NULL COLLATE 'latin1_swedish_ci',
	`option_2` VARCHAR(31) NOT NULL COLLATE 'latin1_swedish_ci',
	`option_3` VARCHAR(33) NULL COLLATE 'latin1_swedish_ci',
	`option_4` VARCHAR(36) NULL COLLATE 'latin1_swedish_ci',
	`answer` INT(11) NULL
) ENGINE=MyISAM;

-- Dumping structure for table caipl.scores
DROP TABLE IF EXISTS `scores`;
CREATE TABLE IF NOT EXISTS `scores` (
  `score_id` int(11) NOT NULL AUTO_INCREMENT,
  `dateofexam` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `student` varchar(500) DEFAULT NULL,
  `quiz_id` varchar(50) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  PRIMARY KEY (`score_id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;

-- Dumping data for table caipl.scores: ~32 rows (approximately)
DELETE FROM `scores`;
/*!40000 ALTER TABLE `scores` DISABLE KEYS */;
INSERT INTO `scores` (`score_id`, `dateofexam`, `student`, `quiz_id`, `score`) VALUES
	(26, '2018-11-07 15:55:58', 'Sumin Bae Jo', '1', 10),
	(27, '2018-11-07 15:56:13', 'Sumin Bae Jo', '1', 10),
	(28, '2018-11-07 15:56:34', 'Sumin Bae Jo', '1', 10),
	(29, '2018-11-07 15:56:56', 'Sumin Bae Jo', '1', 10),
	(30, '2018-11-07 15:57:05', 'Sumin Bae Jo', '1', 10),
	(31, '2018-11-07 15:57:10', 'Sumin Bae Jo', '1', 10),
	(32, '2018-11-07 15:57:14', 'Sumin Bae Jo', '1', 10),
	(33, '2018-11-07 15:57:18', 'Sumin Bae Jo', '1', 10),
	(34, '2018-11-07 15:57:25', 'Sumin Bae Jo', '1', 10),
	(35, '2018-11-07 15:57:28', 'Sumin Bae Jo', '1', 10),
	(36, '2018-11-07 15:57:33', 'Sumin Bae Jo', '1', 10),
	(37, '2018-11-07 15:58:16', 'Sumin Bae Jo', '1', 10),
	(38, '2018-11-07 15:58:43', 'Sumin Bae Jo', '1', 10),
	(39, '2018-11-07 15:58:45', 'Sumin Bae Jo', '1', 10),
	(40, '2018-11-07 15:58:49', 'Sumin Bae Jo', '1', 10),
	(41, '2018-11-07 15:58:53', 'Sumin Bae Jo', '1', 10),
	(42, '2018-11-07 16:00:00', 'Sumin Bae Jo', '1', 10),
	(43, '2018-11-07 16:00:04', 'Sumin Bae Jo', '1', 10),
	(44, '2018-11-07 16:00:08', 'Sumin Bae Jo', '1', 10),
	(45, '2018-11-07 16:00:25', 'Sumin Bae Jo', '1', 10),
	(46, '2018-11-07 16:00:32', 'Sumin Bae Jo', '1', 10),
	(47, '2018-11-07 16:00:46', 'Sumin Bae Jo', '1', 10),
	(48, '2018-11-07 16:03:41', 'Sumin Bae Jo', '1', 10),
	(49, '2018-11-07 16:05:00', 'Sumin Bae Jo', '1', 10),
	(50, '2018-11-07 16:09:35', 'Sumin Bae Jo', '1', 10),
	(51, '2018-11-07 16:22:39', 'Sumin Bae Jo', '1', 10),
	(52, '2018-11-07 16:55:27', 'Sumin Bae Jo', '3', 15),
	(53, '2018-11-08 16:06:40', 'Sumin Bae Jo', '1', 10),
	(54, '2018-11-08 16:09:39', 'Sumin Bae Jo', '1', 10),
	(55, '2018-11-08 16:12:20', 'Sumin Bae Jo', '1', 10),
	(56, '2018-11-08 16:15:10', 'Sumin Bae Jo', '2', 10),
	(57, '2018-11-08 19:31:54', 'Sumin Bae Jo', '1', 10);
/*!40000 ALTER TABLE `scores` ENABLE KEYS */;

-- Dumping structure for table caipl.scores_listing
DROP TABLE IF EXISTS `scores_listing`;
CREATE TABLE IF NOT EXISTS `scores_listing` (
  `score_guid` int(11) NOT NULL AUTO_INCREMENT,
  `score_id` int(11) DEFAULT NULL,
  `question` varchar(1500) DEFAULT NULL,
  `answer` varchar(1500) DEFAULT NULL,
  `correct` varchar(1500) DEFAULT NULL,
  `student` varchar(1500) DEFAULT NULL,
  `date_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`score_guid`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=latin1;

-- Dumping data for table caipl.scores_listing: ~65 rows (approximately)
DELETE FROM `scores_listing`;
/*!40000 ALTER TABLE `scores_listing` DISABLE KEYS */;
INSERT INTO `scores_listing` (`score_guid`, `score_id`, `question`, `answer`, `correct`, `student`, `date_created`) VALUES
	(47, 25, 'ITO AY MAY HIMIG NA AWIT DAHILANG ITO AY INAAWIT HABANG MAY NAGSASAYAW.', 'SONETO', '1', 'Sumin Bae Jo', '2018-11-07 15:54:22'),
	(48, 25, 'ITO AY KARANIWANG GINAGAMIT SA LAHAT NG MGA DULANG MUSIKA, KASAMA NA ANG OPERA.', 'KOMEDYA', '2', 'Sumin Bae Jo', '2018-11-07 15:54:22'),
	(49, 25, 'MGA LIKHANG ISIP LAMANG NG MGA MANUNULAT ANG MGA MAIKLING SAYSAYING ITO NA ANG TANGING LAYUNIN AY MAKAPAGBIGAY ARAL SA MGA MAMBABASA.', 'ALAMAT', '2', 'Sumin Bae Jo', '2018-11-07 15:54:22'),
	(50, 26, 'ITO AY MAY HIMIG NA AWIT DAHILANG ITO AY INAAWIT HABANG MAY NAGSASAYAW.', 'ELEHIYA', '1', 'Sumin Bae Jo', '2018-11-07 15:55:58'),
	(51, 26, 'ITO AY KARANIWANG GINAGAMIT SA LAHAT NG MGA DULANG MUSIKA, KASAMA NA ANG OPERA.', 'PARSA', '2', 'Sumin Bae Jo', '2018-11-07 15:55:58'),
	(52, 26, 'MGA LIKHANG ISIP LAMANG NG MGA MANUNULAT ANG MGA MAIKLING SAYSAYING ITO NA ANG TANGING LAYUNIN AY MAKAPAGBIGAY ARAL SA MGA MAMBABASA.', 'BALITA', '2', 'Sumin Bae Jo', '2018-11-07 15:55:58'),
	(53, 27, 'ITO AY MAY HIMIG NA AWIT DAHILANG ITO AY INAAWIT HABANG MAY NAGSASAYAW.', 'ELEHIYA', '1', 'Sumin Bae Jo', '2018-11-07 15:56:13'),
	(54, 27, 'ITO AY KARANIWANG GINAGAMIT SA LAHAT NG MGA DULANG MUSIKA, KASAMA NA ANG OPERA.', 'PARSA', '2', 'Sumin Bae Jo', '2018-11-07 15:56:13'),
	(55, 27, 'MGA LIKHANG ISIP LAMANG NG MGA MANUNULAT ANG MGA MAIKLING SAYSAYING ITO NA ANG TANGING LAYUNIN AY MAKAPAGBIGAY ARAL SA MGA MAMBABASA.', 'BALITA', '2', 'Sumin Bae Jo', '2018-11-07 15:56:13'),
	(56, 28, 'MGA LIKHANG ISIP LAMANG NG MGA MANUNULAT ANG MGA MAIKLING SAYSAYING ITO NA ANG TANGING LAYUNIN AY MAKAPAGBIGAY ARAL SA MGA MAMBABASA.', 'BALITA', '2', 'Sumin Bae Jo', '2018-11-07 15:56:35'),
	(57, 29, 'MGA LIKHANG ISIP LAMANG NG MGA MANUNULAT ANG MGA MAIKLING SAYSAYING ITO NA ANG TANGING LAYUNIN AY MAKAPAGBIGAY ARAL SA MGA MAMBABASA.', 'SANAYSAY', '2', 'Sumin Bae Jo', '2018-11-07 15:56:56'),
	(58, 40, 'MGA LIKHANG ISIP LAMANG NG MGA MANUNULAT ANG MGA MAIKLING SAYSAYING ITO NA ANG TANGING LAYUNIN AY MAKAPAGBIGAY ARAL SA MGA MAMBABASA.', 'BALITA', '2', 'Sumin Bae Jo', '2018-11-07 15:58:49'),
	(59, 41, 'MGA LIKHANG ISIP LAMANG NG MGA MANUNULAT ANG MGA MAIKLING SAYSAYING ITO NA ANG TANGING LAYUNIN AY MAKAPAGBIGAY ARAL SA MGA MAMBABASA.', 'SANAYSAY', '2', 'Sumin Bae Jo', '2018-11-07 15:58:53'),
	(60, 42, 'MGA LIKHANG ISIP LAMANG NG MGA MANUNULAT ANG MGA MAIKLING SAYSAYING ITO NA ANG TANGING LAYUNIN AY MAKAPAGBIGAY ARAL SA MGA MAMBABASA.', 'SANAYSAY', '2', 'Sumin Bae Jo', '2018-11-07 16:00:00'),
	(61, 43, 'MGA LIKHANG ISIP LAMANG NG MGA MANUNULAT ANG MGA MAIKLING SAYSAYING ITO NA ANG TANGING LAYUNIN AY MAKAPAGBIGAY ARAL SA MGA MAMBABASA.', 'BALITA', '2', 'Sumin Bae Jo', '2018-11-07 16:00:04'),
	(62, 44, 'MGA LIKHANG ISIP LAMANG NG MGA MANUNULAT ANG MGA MAIKLING SAYSAYING ITO NA ANG TANGING LAYUNIN AY MAKAPAGBIGAY ARAL SA MGA MAMBABASA.', 'ALAMAT', '2', 'Sumin Bae Jo', '2018-11-07 16:00:08'),
	(63, 46, 'MGA LIKHANG ISIP LAMANG NG MGA MANUNULAT ANG MGA MAIKLING SAYSAYING ITO NA ANG TANGING LAYUNIN AY MAKAPAGBIGAY ARAL SA MGA MAMBABASA.', 'BALITA', '2', 'Sumin Bae Jo', '2018-11-07 16:00:33'),
	(64, 47, 'MGA LIKHANG ISIP LAMANG NG MGA MANUNULAT ANG MGA MAIKLING SAYSAYING ITO NA ANG TANGING LAYUNIN AY MAKAPAGBIGAY ARAL SA MGA MAMBABASA.', 'BALITA', '2', 'Sumin Bae Jo', '2018-11-07 16:00:46'),
	(65, 48, 'MGA LIKHANG ISIP LAMANG NG MGA MANUNULAT ANG MGA MAIKLING SAYSAYING ITO NA ANG TANGING LAYUNIN AY MAKAPAGBIGAY ARAL SA MGA MAMBABASA.', 'BALITA', '2', 'Sumin Bae Jo', '2018-11-07 16:03:41'),
	(66, 49, 'MGA LIKHANG ISIP LAMANG NG MGA MANUNULAT ANG MGA MAIKLING SAYSAYING ITO NA ANG TANGING LAYUNIN AY MAKAPAGBIGAY ARAL SA MGA MAMBABASA.', 'BALITA', '2', 'Sumin Bae Jo', '2018-11-07 16:05:00'),
	(67, 50, 'ITO AY MAY HIMIG NA AWIT DAHILANG ITO AY INAAWIT HABANG MAY NAGSASAYAW.', 'ELEHIYA', 'ELEHIYA', 'Sumin Bae Jo', '2018-11-07 16:09:35'),
	(68, 50, 'ITO AY KARANIWANG GINAGAMIT SA LAHAT NG MGA DULANG MUSIKA, KASAMA NA ANG OPERA.', 'TRAHEDYA', 'TRAHEDYA', 'Sumin Bae Jo', '2018-11-07 16:09:35'),
	(69, 50, 'MGA LIKHANG ISIP LAMANG NG MGA MANUNULAT ANG MGA MAIKLING SAYSAYING ITO NA ANG TANGING LAYUNIN AY MAKAPAGBIGAY ARAL SA MGA MAMBABASA.', 'BALITA', 'BALITA', 'Sumin Bae Jo', '2018-11-07 16:09:35'),
	(70, 51, 'ITO AY MAY HIMIG NA AWIT DAHILANG ITO AY INAAWIT HABANG MAY NAGSASAYAW.', 'DALIT', 'DALIT', 'Sumin Bae Jo', '2018-11-07 16:22:39'),
	(71, 51, 'ITO AY KARANIWANG GINAGAMIT SA LAHAT NG MGA DULANG MUSIKA, KASAMA NA ANG OPERA.', 'KOMEDYA', 'KOMEDYA', 'Sumin Bae Jo', '2018-11-07 16:22:39'),
	(72, 51, 'MGA LIKHANG ISIP LAMANG NG MGA MANUNULAT ANG MGA MAIKLING SAYSAYING ITO NA ANG TANGING LAYUNIN AY MAKAPAGBIGAY ARAL SA MGA MAMBABASA.', 'BALITA', 'BALITA', 'Sumin Bae Jo', '2018-11-07 16:22:39'),
	(73, 52, 'Ito ang kauna-unahang aklat na nalimbag sa Pilipinas noong 1953, sa pamamagitan ng Silograpiko.', 'Ang Doctrina Cristiana', 'Ang Doctrina Cristiana', 'Sumin Bae Jo', '2018-11-07 16:55:27'),
	(74, 52, 'Unang aklat pang wika sa Kapampangan na sinulat ni Padre Diego Bergano.', 'Arte De La Lengua Iloka', 'Arte De La Lengua Iloka', 'Sumin Bae Jo', '2018-11-07 16:55:27'),
	(75, 52, 'Sinulat ni Padre Blancas de San Jose at isinalin sa Tagalog ni Tomas Pinpin noong 1610.', 'Compendio De La Lengua Tagala', 'Compendio De La Lengua Tagala', 'Sumin Bae Jo', '2018-11-07 16:55:28'),
	(76, 52, 'Isang melodrama o dulang musikal na tatatluhing yugto.', 'Sarsuela', 'Sarsuela', 'Sumin Bae Jo', '2018-11-07 16:55:28'),
	(77, 52, 'Ito ay batay sa alamat ng singsing ng isang prinsesa na naihulog nya sa dagat.', 'Moro-moro', 'Moro-moro', 'Sumin Bae Jo', '2018-11-07 16:55:28'),
	(78, 52, 'Ito ay itinnuturing na  isang laro ng mga aninong ginawa mula sa Karton, na pinapanood na gumagalaw sa likod ng isamg putting tabing.', 'Karagatan', 'Karagatan', 'Sumin Bae Jo', '2018-11-07 16:55:28'),
	(79, 52, 'Ito ang humahalili sa karagatan.', 'Moro-moro', 'Moro-moro', 'Sumin Bae Jo', '2018-11-07 16:55:28'),
	(80, 52, 'Ito ang ikatlong aklast na nailimbag sa Pilipinas na akda ito  ni Padre Blancas de San Jose at nailimbag sa imprenta ng Pamantasan ng Sto. Tomas.', 'Ang Pasyon', 'Ang Pasyon', 'Sumin Bae Jo', '2018-11-07 16:55:28'),
	(81, 52, 'Ito ang ipinagmamalaking kauna-unahang akbakadang Filipino na nahalinhan ng alpabetong Romano.', 'Kurido', 'Kurido', 'Sumin Bae Jo', '2018-11-07 16:55:28'),
	(82, 52, 'Isang pagtatanghal na isinasagawa bago mag alas dose ng gabi ng kapaskuhan.', 'Panunuluyan', 'Panunuluyan', 'Sumin Bae Jo', '2018-11-07 16:55:28'),
	(83, 52, 'Tulang pasalaysay na natutungkol sa katapangan, kabayanihan, kababalaghan, at pananampalataya ng mga tauhan.', 'Kurido', 'Kurido', 'Sumin Bae Jo', '2018-11-07 16:55:28'),
	(84, 52, 'Ito ay aklat na natutungkol sa buhay at pagpapasakit ni Hesukristo.', 'Ang Urbana at Felisa', 'Ang Urbana at Felisa', 'Sumin Bae Jo', '2018-11-07 16:55:28'),
	(85, 53, 'ITO AY TULANG MAY LABING-APAT NA TALUDTOD.', 'BALAD', 'BALAD', 'Sumin Bae Jo', '2018-11-08 16:06:40'),
	(86, 53, 'ITO AY BATAY SA ALAMAT NG SINGSING NG ISANG PRINSESA NA NAIHULOG NIYA SA DAGAT SA HANGARIN NITONG MAPANGASAWA ANG KASINTAHANG MAHIRAP.', 'SAYNETE', 'SAYNETE', 'Sumin Bae Jo', '2018-11-08 16:06:40'),
	(87, 53, 'ITO AY ISANG PAGPAPAHAYAG NA BINIBIGKAS SA HARAP NG MGA TAGAPAKINIG.', 'TALAMBUHAY', 'TALAMBUHAY', 'Sumin Bae Jo', '2018-11-08 16:06:40'),
	(88, 53, 'ITO AY MGA SALAYSAYING HANGO SA BIBLIYA NA TULAD NG ANEKDOTA.', 'SANAYSAY', 'SANAYSAY', 'Sumin Bae Jo', '2018-11-08 16:06:40'),
	(89, 53, 'MGA LIKHANG ISIP LAMANG NG MGA MANUNULAT ANG MGA MAIKLING SAYSAYING ITO NA ANG TANGING LAYUNIN AY MAKAPAGBIGAY ARAL SA MGA MAMBABASA.', 'BALITA', 'BALITA', 'Sumin Bae Jo', '2018-11-08 16:06:40'),
	(90, 54, 'ITO AY TULANG MAY LABING-APAT NA TALUDTOD.', 'BALAD', 'BALAD', 'Sumin Bae Jo', '2018-11-08 16:09:39'),
	(91, 54, 'ITO AY BATAY SA ALAMAT NG SINGSING NG ISANG PRINSESA NA NAIHULOG NIYA SA DAGAT SA HANGARIN NITONG MAPANGASAWA ANG KASINTAHANG MAHIRAP.', 'SAYNETE', 'SAYNETE', 'Sumin Bae Jo', '2018-11-08 16:09:39'),
	(92, 54, 'ITO AY ISANG PAGPAPAHAYAG NA BINIBIGKAS SA HARAP NG MGA TAGAPAKINIG.', 'TALAMBUHAY', 'TALAMBUHAY', 'Sumin Bae Jo', '2018-11-08 16:09:40'),
	(93, 54, 'ITO AY MGA SALAYSAYING HANGO SA BIBLIYA NA TULAD NG ANEKDOTA.', 'SANAYSAY', 'SANAYSAY', 'Sumin Bae Jo', '2018-11-08 16:09:40'),
	(94, 54, 'MGA LIKHANG ISIP LAMANG NG MGA MANUNULAT ANG MGA MAIKLING SAYSAYING ITO NA ANG TANGING LAYUNIN AY MAKAPAGBIGAY ARAL SA MGA MAMBABASA.', 'BALITA', 'BALITA', 'Sumin Bae Jo', '2018-11-08 16:09:40'),
	(95, 55, 'ITO AY TULANG MAY LABING-APAT NA TALUDTOD.', 'BALAD', 'SONETO', 'Sumin Bae Jo', '2018-11-08 16:12:20'),
	(96, 55, 'ITO AY BATAY SA ALAMAT NG SINGSING NG ISANG PRINSESA NA NAIHULOG NIYA SA DAGAT SA HANGARIN NITONG MAPANGASAWA ANG KASINTAHANG MAHIRAP.', 'SAYNETE', 'KARAGATAN', 'Sumin Bae Jo', '2018-11-08 16:12:20'),
	(97, 55, 'ITO AY ISANG PAGPAPAHAYAG NA BINIBIGKAS SA HARAP NG MGA TAGAPAKINIG.', 'TALAMBUHAY', 'TALUMPATI', 'Sumin Bae Jo', '2018-11-08 16:12:21'),
	(98, 55, 'ITO AY MGA SALAYSAYING HANGO SA BIBLIYA NA TULAD NG ANEKDOTA.', 'SANAYSAY', 'PARABULA', 'Sumin Bae Jo', '2018-11-08 16:12:21'),
	(99, 55, 'MGA LIKHANG ISIP LAMANG NG MGA MANUNULAT ANG MGA MAIKLING SAYSAYING ITO NA ANG TANGING LAYUNIN AY MAKAPAGBIGAY ARAL SA MGA MAMBABASA.', 'BALITA', 'ANEKDOTA', 'Sumin Bae Jo', '2018-11-08 16:12:21'),
	(100, 56, 'ITO AY MAY HIMIG NA AWIT DAHILANG ITO AY INAAWIT HABANG MAY NAGSASAYAW.', 'SONETO', 'BALAD', 'Sumin Bae Jo', '2018-11-08 16:15:11'),
	(101, 56, 'ITO AY TULANG MAY LABING-APAT NA TALUDTOD.', 'ELEHIYA', 'SONETO', 'Sumin Bae Jo', '2018-11-08 16:15:11'),
	(102, 56, 'ITO AY MGA SALAYSAYING HANGO SA BIBLIYA NA TULAD NG ANEKDOTA.', 'TALUMPATI', 'PARABULA', 'Sumin Bae Jo', '2018-11-08 16:15:11'),
	(103, 56, 'MGA LIKHANG ISIP LAMANG NG MGA MANUNULAT ANG MGA MAIKLING SAYSAYING ITO NA ANG TANGING LAYUNIN AY MAKAPAGBIGAY ARAL SA MGA MAMBABASA.', 'BALITA', 'ANEKDOTA', 'Sumin Bae Jo', '2018-11-08 16:15:11'),
	(104, 57, 'ITO AY MAY HIMIG NA AWIT DAHILANG ITO AY INAAWIT HABANG MAY NAGSASAYAW.', 'SONETO', 'BALAD', 'Sumin Bae Jo', '2018-11-08 19:31:54'),
	(105, 57, 'ITO AY TULANG MAY LABING-APAT NA TALUDTOD.', 'BALAD', 'SONETO', 'Sumin Bae Jo', '2018-11-08 19:31:54'),
	(106, 57, 'ITO AY KARANIWANG GINAGAMIT SA LAHAT NG MGA DULANG MUSIKA, KASAMA NA ANG OPERA.', 'TRAHEDYA', 'MELODRAMA', 'Sumin Bae Jo', '2018-11-08 19:31:54'),
	(107, 57, 'ITO AY PAGPAPAHAYAG NG KURU-KUROO OPINYON NG MAY AKDA TUNGKOL SA ISANG SULIRANIN O PANGYAYARI.', 'ANEKDOTA', 'SANAYSAY', 'Sumin Bae Jo', '2018-11-08 19:31:54'),
	(108, 57, 'ITO AY ISANG PAGPAPAHAYAG NA BINIBIGKAS SA HARAP NG MGA TAGAPAKINIG.', 'ANEKDOTA', 'TALUMPATI', 'Sumin Bae Jo', '2018-11-08 19:31:54'),
	(109, 57, 'ITO AY MGA SALAYSAYING HANGO SA BIBLIYA NA TULAD NG ANEKDOTA.', 'ALAMAT', 'PARABULA', 'Sumin Bae Jo', '2018-11-08 19:31:54'),
	(110, 57, 'ITO AY ISANG URI NG PAGPAPAHAYAG NA NAGSASALAYSAY NG ISANG KARANASAN.', 'PAGLALAHAD', 'PAGSASALAYSAY', 'Sumin Bae Jo', '2018-11-08 19:31:54'),
	(111, 57, 'MGA LIKHANG ISIP LAMANG NG MGA MANUNULAT ANG MGA MAIKLING SAYSAYING ITO NA ANG TANGING LAYUNIN AY MAKAPAGBIGAY ARAL SA MGA MAMBABASA.', 'ALAMAT', 'ANEKDOTA', 'Sumin Bae Jo', '2018-11-08 19:31:55');
/*!40000 ALTER TABLE `scores_listing` ENABLE KEYS */;

-- Dumping structure for view caipl.account_listing
DROP VIEW IF EXISTS `account_listing`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `account_listing`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `account_listing` AS SELECT 
	accounts.*, 
	account_type.account_type 
FROM accounts
INNER JOIN account_type 
ON accounts.typeofaccount = account_type.id ;

-- Dumping structure for view caipl.chapterandlessons_listing
DROP VIEW IF EXISTS `chapterandlessons_listing`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `chapterandlessons_listing`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `chapterandlessons_listing` AS SELECT 
	Concat(chapter.chapter_name," " ,lesson.lesson_name) AS chapter_and_lesson,
	chapter.chapter_name,
	chapter.chapter_description, 
	lesson.lesson_name,
	lesson.lesson_description
FROM chapter
INNER JOIN lesson 
ON chapter.id = lesson.chapter_id ;

-- Dumping structure for view caipl.quiz_listing
DROP VIEW IF EXISTS `quiz_listing`;
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `quiz_listing`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `quiz_listing` AS SELECT 
	chapter.chapter_name, 
	lesson.lesson_name,
	quiz.quiz_question,
	quiz.option_1,
	quiz.option_2,
	quiz.option_3,
	quiz.option_4,
	quiz.answer
FROM chapter
INNER JOIN lesson 
ON chapter.id = lesson.chapter_id 

INNER JOIN quiz 
ON lesson.id = quiz.lesson_id ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
