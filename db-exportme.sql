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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Dumping data for table caipl.accounts: ~7 rows (approximately)
DELETE FROM `accounts`;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` (`id`, `idnumber`, `username`, `password`, `firstname`, `middlename`, `lastname`, `typeofaccount`) VALUES
	(1, '13-0710-80', 'admin', 'admin', 'Joshua', 'Ricarder', 'Oducado', 2),
	(2, '13-0710-11', 'user', 'user', 'Sumin', 'Bae', 'Jo', 1),
	(3, '13-0710-80', 'ProjectVelox', 'manok098', 'Joshua', 'Ricarder', 'Oducado', 1),
	(4, '13-0710-84', 'Featherxxx', 'manok098', 'Chrystal', 'Oducado', 'Alquisada', 1),
	(5, '13-0718-90', 'Mojacko', 'manok098', 'Feather', 'Alquisada', 'Oducado', 1),
	(6, '12-0918-30', 'SuminJo', 'sumninjo', 'Sumin', 'the', 'Hoe', 1),
	(7, '13-0291-20', 'BenjiBoi', 'manok098', 'Benjamin', 'Louis', 'Mayor', 1);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

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
  `quiz_question` varchar(5000) NOT NULL,
  `option_1` varchar(5000) NOT NULL,
  `option_2` varchar(5000) NOT NULL,
  `option_3` varchar(5000) NOT NULL,
  `option_4` varchar(5000) NOT NULL,
  `answer` varchar(5000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

-- Dumping data for table caipl.quiz: ~22 rows (approximately)
DELETE FROM `quiz`;
/*!40000 ALTER TABLE `quiz` DISABLE KEYS */;
INSERT INTO `quiz` (`id`, `lesson_id`, `quiz_question`, `option_1`, `option_2`, `option_3`, `option_4`, `answer`) VALUES
	(1, 1, 'ITO AY MAY HIMIG NA AWIT DAHILANG ITO AY INAAWIT HABANG MAY NAGSASAYAW.', 'BALAD', 'SONETO', 'DALIT', 'ELEHIYA', '1'),
	(2, 1, 'ITO\'Y TULANG MAY LABING-APAT NA TALUDTOD.', 'BALAD', 'DALIT', 'ELEHIYA', 'SONETO', '4'),
	(3, 1, 'ITO AY KARANIWANG GINAGAMIT SA LAHAT NG MGA DULANG MUSIKA, KASAMA NA ANG OPERA.', 'KOMEDYA', 'MELODRAMA', 'TRAHEDYA', 'PARSA', '2'),
	(4, 1, 'ITO\'Y BATAY SA ALAMAT NG SINGSING NG ISANG PRINSESA NA NAIHULOG NIYA SA DAGAT SA HANGARIN NITONG MAPANGASAWA ANG KASINTAHANG MAHIRAP.', 'DUPLO', 'BALAGTASAN', 'KARAGATAN', 'SAYNETE', '3'),
	(5, 1, 'ITO\'Y ISANG MAHABANG SALAYSAYING NAHAHATI SA MGA KABANATA.', 'NOBELA', 'MAIKLING KWENTO', 'DULA', 'ALAMAT', '1'),
	(6, 1, 'ITO\'Y PAGPAPAHAYAG NG KURU-KUROO OPINYON NG MAY AKDA TUNGKOL SA ISANG SULIRANIN O PANGYAYARI.', 'TALAMBUHAY', 'BALITA', 'ANEKDOTA', 'SANAYSAY', '4'),
	(7, 1, 'ITO\'Y ISANG PAGPAPAHAYAG NA BINIBIGKAS SA HARAP NG MGA TAGAPAKINIG.', 'TALUMPATI', 'BALITA', 'TALAMBUHAY', 'ANEKDOTA', '1'),
	(8, 1, 'ITO\'Y MGA SALAYSAYING HANGO SA BIBLIYA NA TULAD NG ANEKDOTA.', 'TALUMPATI', 'ALAMAT', 'SANAYSAY', 'PARABULA', '4'),
	(9, 1, 'ITO\'Y ISANG URI NG PAGPAPAHAYAG NA NAGSASALAYSAY NG ISANG KARANASAN.', 'PAGLALAHAD', 'PAGSASALAYSAY', 'PAGLALARAWAN', 'PANGANGATWIRAN', '2'),
	(10, 1, 'MGA LIKHANG ISIP LAMANG NG MGA MANUNULAT ANG MGA MAIKLING SAYSAYING ITO NA ANG TANGING LAYUNIN AY MAKAPAGBIGAY ARAL SA MGA MAMBABASA.', 'ALAMAT', 'ANEKDOTA', 'SANAYSAY', 'BALITA', '2'),
	(11, 2, 'MGA LIKHANG ISIP LAMANG NG MGA MANUNULAT ANG MGA MAIKLING SAYSAYING ITO NA ANG TANGING LAYUNIN AY MAKAPAGBIGAY ARAL SA MGA MAMBABASA.', 'ALAMAT', 'ANEKDOTA', 'SANAYSAY', 'BALITA', '2'),
	(12, 2, 'ITO\'Y ISANG URI NG PAGPAPAHAYAG NA NAGSASALAYSAY NG ISANG KARANASAN.', 'PAGLALAHAD', 'PAGSASALAYSAY', 'PAGLALARAWAN', 'PANGANGATWIRAN', '2'),
	(13, 2, 'ITO\'Y MGA SALAYSAYING HANGO SA BIBLIYA NA TULAD NG ANEKDOTA.', 'TALUMPATI', 'ALAMAT', 'SANAYSAY', 'PARABULA', '4'),
	(14, 3, 'MGA LIKHANG ISIP LAMANG NG MGA MANUNULAT ANG MGA MAIKLING SAYSAYING ITO NA ANG TANGING LAYUNIN AY MAKAPAGBIGAY ARAL SA MGA MAMBABASA.', 'ALAMAT', 'ANEKDOTA', 'SANAYSAY', 'BALITA', '2'),
	(15, 4, 'MGA LIKHANG ISIP LAMANG NG MGA MANUNULAT ANG MGA MAIKLING SAYSAYING ITO NA ANG TANGING LAYUNIN AY MAKAPAGBIGAY ARAL SA MGA MAMBABASA.', 'ALAMAT', 'ANEKDOTA', 'SANAYSAY', 'BALITA', '2'),
	(16, 5, 'MGA LIKHANG ISIP LAMANG NG MGA MANUNULAT ANG MGA MAIKLING SAYSAYING ITO NA ANG TANGING LAYUNIN AY MAKAPAGBIGAY ARAL SA MGA MAMBABASA.', 'ALAMAT', 'ANEKDOTA', 'SANAYSAY', 'BALITA', '2'),
	(17, 6, 'MGA LIKHANG ISIP LAMANG NG MGA MANUNULAT ANG MGA MAIKLING SAYSAYING ITO NA ANG TANGING LAYUNIN AY MAKAPAGBIGAY ARAL SA MGA MAMBABASA.', 'ALAMAT', 'ANEKDOTA', 'SANAYSAY', 'BALITA', '2'),
	(18, 7, 'MGA LIKHANG ISIP LAMANG NG MGA MANUNULAT ANG MGA MAIKLING SAYSAYING ITO NA ANG TANGING LAYUNIN AY MAKAPAGBIGAY ARAL SA MGA MAMBABASA.', 'ALAMAT', 'ANEKDOTA', 'SANAYSAY', 'BALITA', '2'),
	(19, 8, 'MGA LIKHANG ISIP LAMANG NG MGA MANUNULAT ANG MGA MAIKLING SAYSAYING ITO NA ANG TANGING LAYUNIN AY MAKAPAGBIGAY ARAL SA MGA MAMBABASA.', 'ALAMAT', 'ANEKDOTA', 'SANAYSAY', 'BALITA', '2'),
	(20, 9, 'MGA LIKHANG ISIP LAMANG NG MGA MANUNULAT ANG MGA MAIKLING SAYSAYING ITO NA ANG TANGING LAYUNIN AY MAKAPAGBIGAY ARAL SA MGA MAMBABASA.', 'ALAMAT', 'ANEKDOTA', 'SANAYSAY', 'BALITA', '2'),
	(21, 10, 'MGA LIKHANG ISIP LAMANG NG MGA MANUNULAT ANG MGA MAIKLING SAYSAYING ITO NA ANG TANGING LAYUNIN AY MAKAPAGBIGAY ARAL SA MGA MAMBABASA.', 'ALAMAT', 'ANEKDOTA', 'SANAYSAY', 'BALITA', '2'),
	(22, 11, 'MGA LIKHANG ISIP LAMANG NG MGA MANUNULAT ANG MGA MAIKLING SAYSAYING ITO NA ANG TANGING LAYUNIN AY MAKAPAGBIGAY ARAL SA MGA MAMBABASA.', 'ALAMAT', 'ANEKDOTA', 'SANAYSAY', 'BALITA', '2');
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
	`quiz_question` VARCHAR(5000) NOT NULL COLLATE 'latin1_swedish_ci',
	`option_1` VARCHAR(5000) NOT NULL COLLATE 'latin1_swedish_ci',
	`option_2` VARCHAR(5000) NOT NULL COLLATE 'latin1_swedish_ci',
	`option_3` VARCHAR(5000) NOT NULL COLLATE 'latin1_swedish_ci',
	`option_4` VARCHAR(5000) NOT NULL COLLATE 'latin1_swedish_ci',
	`answer` VARCHAR(5000) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for table caipl.scores
DROP TABLE IF EXISTS `scores`;
CREATE TABLE IF NOT EXISTS `scores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dateofexam` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `student` varchar(500) DEFAULT NULL,
  `quiz_id` varchar(50) DEFAULT NULL,
  `score` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table caipl.scores: ~5 rows (approximately)
DELETE FROM `scores`;
/*!40000 ALTER TABLE `scores` DISABLE KEYS */;
INSERT INTO `scores` (`id`, `dateofexam`, `student`, `quiz_id`, `score`) VALUES
	(2, '2018-10-30 22:53:30', 'Sumin Bae Jo', '1', '3/10'),
	(3, '2018-10-30 22:56:12', 'Sumin Bae Jo', '2', '0/3'),
	(4, '2018-10-30 22:56:29', 'Sumin Bae Jo', '2', '0/3'),
	(5, '2018-10-30 22:56:57', 'Sumin Bae Jo', '2', '0/3'),
	(6, '2018-10-30 22:57:56', 'Sumin Bae Jo', '6', '0/1');
/*!40000 ALTER TABLE `scores` ENABLE KEYS */;

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
