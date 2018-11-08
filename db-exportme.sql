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
  `lesson_id` int(11) NOT NULL,
  `quiz_question` varchar(145) NOT NULL,
  `option_1` varchar(63) NOT NULL,
  `option_2` varchar(31) NOT NULL,
  `option_3` varchar(33) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option_4` varchar(36) DEFAULT NULL,
  `answer` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=latin1;

-- Dumping data for table caipl.quiz: ~148 rows (approximately)
DELETE FROM `quiz`;
/*!40000 ALTER TABLE `quiz` DISABLE KEYS */;
INSERT INTO `quiz` (`lesson_id`, `quiz_question`, `option_1`, `option_2`, `option_3`, `id`, `option_4`, `answer`) VALUES
	(4, 'Kauna-unahang nobelang panlipunan sa wikang Kastila na sinulat ni Pedro Paterno.', 'A Mi Madre', 'Ninay', NULL, 1, NULL, NULL),
	(1, 'ITO AY MAY HIMIG NA AWIT DAHILANG ITO AY INAAWIT HABANG MAY NAGSASAYAW.', 'BALAD', 'SONETO', 'DALIT', 2, 'ELEHIYA', 1),
	(1, 'ITO AY TULANG MAY LABING-APAT NA TALUDTOD.', 'BALAD', 'DALIT', 'ELEHIYA', 3, 'SONETO', 4),
	(1, 'ITO AY KARANIWANG GINAGAMIT SA LAHAT NG MGA DULANG MUSIKA, KASAMA NA ANG OPERA.', 'KOMEDYA', 'MELODRAMA', 'TRAHEDYA', 4, 'PARSA', 2),
	(1, 'ITO AY BATAY SA ALAMAT NG SINGSING NG ISANG PRINSESA NA NAIHULOG NIYA SA DAGAT SA HANGARIN NITONG MAPANGASAWA ANG KASINTAHANG MAHIRAP.', 'DUPLO', 'BALAGTASAN', 'KARAGATAN', 5, 'SAYNETE', 3),
	(1, 'ITO AY ISANG MAHABANG SALAYSAYING NAHAHATI SA MGA KABANATA.', 'NOBELA', 'MAIKLING KWENTO', 'DULA', 6, 'ALAMAT', 1),
	(1, 'ITO AY PAGPAPAHAYAG NG KURU-KUROO OPINYON NG MAY AKDA TUNGKOL SA ISANG SULIRANIN O PANGYAYARI.', 'TALAMBUHAY', 'BALITA', 'ANEKDOTA', 7, 'SANAYSAY', 4),
	(1, 'ITO AY ISANG PAGPAPAHAYAG NA BINIBIGKAS SA HARAP NG MGA TAGAPAKINIG.', 'TALUMPATI', 'BALITA', 'TALAMBUHAY', 8, 'ANEKDOTA', 1),
	(1, 'ITO AY MGA SALAYSAYING HANGO SA BIBLIYA NA TULAD NG ANEKDOTA.', 'TALUMPATI', 'ALAMAT', 'SANAYSAY', 9, 'PARABULA', 4),
	(1, 'ITO AY ISANG URI NG PAGPAPAHAYAG NA NAGSASALAYSAY NG ISANG KARANASAN.', 'PAGLALAHAD', 'PAGSASALAYSAY', 'PAGLALARAWAN', 10, 'PANGANGATWIRAN', 2),
	(1, 'MGA LIKHANG ISIP LAMANG NG MGA MANUNULAT ANG MGA MAIKLING SAYSAYING ITO NA ANG TANGING LAYUNIN AY MAKAPAGBIGAY ARAL SA MGA MAMBABASA.', 'ALAMAT', 'ANEKDOTA', 'SANAYSAY', 11, 'BALITA', 2),
	(3, 'Ito ang kauna-unahang aklat na nalimbag sa Pilipinas noong 1953, sa pamamagitan ng Silograpiko.', 'Alibata', 'Vocabulario de la Lengua Tagala', 'Ang Doctrina Cristiana', 12, 'Ang Barlaan at Josaphat', 1),
	(3, 'Unang aklat pang wika sa Kapampangan na sinulat ni Padre Diego Bergano.', 'Arte Y De La  Lengua Bicolana', 'Arte De La Lengua Iloka', 'Arte Y Reflas De La Lengua Tagala', 13, 'Vocabulario De La Lengua Pampango', 4),
	(3, 'Ang Compendio De La Lengua Tagala ay iniakda ni;', 'Padre Diego Bergano', 'Padre Diego Bergano', 'Padre Gaspar', 14, 'Padre marcos Lisboa', 2),
	(3, 'Sinulat ni Padre Blancas de San Jose at isinalin sa Tagalog ni Tomas Pinpin noong 1610.', 'Arte Y Reglas De La Lengua Tagala', 'Compendio De La Lengua Tagala', 'Vocabularyo De La Lengua Tagala', 15, 'Vocabularyo De La. Lengua Pampango', 3),
	(3, 'Itinuturing isa sa mga dulang panlibangan ng mga hulinng tao ng pananakop sa atin ng mga Kastila.', 'Saynete', 'Duplo', 'Kurido', 16, 'Baybay', 1),
	(3, 'Isang melodrama o dulang musikal na tatatluhing yugto.', 'Moro-moro', 'Karilyo', 'Sarsuela', 17, 'Awit', 4),
	(3, 'Ito ay batay sa alamat ng singsing ng isang prinsesa na naihulog nya sa dagat.', 'Karagatan', 'Karagatan', 'Moro-moro', 18, 'Duplo', 1),
	(3, 'Ito ay itinnuturing na  isang laro ng mga aninong ginawa mula sa Karton, na pinapanood na gumagalaw sa likod ng isamg putting tabing.', 'Karagatan', 'Karilyo', 'Moro-moro', 19, 'Duplo', 4),
	(3, 'Ito ang humahalili sa karagatan.', 'Karagatan', 'Karilyo', 'Moro-moro', 20, 'Duplo', 2),
	(3, 'Ito ang ikatlong aklast na nailimbag sa Pilipinas na akda ito  ni Padre Blancas de San Jose at nailimbag sa imprenta ng Pamantasan ng Sto. Tomas.', 'Nuestra Senora del Rosario', 'Ang Barlaan at Josaphat', 'Ang Pasyon', 21, 'Ang Urbana at Odyssey', 2),
	(3, 'Ito ang ipinagmamalaking kauna-unahang akbakadang Filipino na nahalinhan ng alpabetong Romano.', 'Awit', 'Moro-moro', 'Kurido', 22, 'Alibata', 1),
	(3, 'Pagtatanghal ito na natutungkol sa buhay at pagpapasakit n gating Poong si Hesukristo.', 'Tibag', 'Lagaylay', 'Sinakulo', 23, 'Panunuluyan', 4),
	(3, 'Isang pagtatanghal na isinasagawa bago mag alas dose ng gabi ng kapaskuhan.', 'Tibag', 'Lagaylay', 'Sinakulo', 24, 'Panunuluyan', 2),
	(3, 'Tulang pasalaysay na natutungkol sa katapangan, kabayanihan, kababalaghan, at pananampalataya ng mga tauhan.', 'Kurido', 'Sarsuela', 'Saynete', 25, 'Panunuluyan', 3),
	(3, 'Ito ay aklat na natutungkol sa buhay at pagpapasakit ni Hesukristo.', 'Nuestra Senora del Rosario', 'Ang barlaan at Josaphat', 'Ang pasyon', 26, 'Ang Urbana at Felisa', 1),
	(4, 'Nobela ni Rizal na tumatalakay sa malalang sakit ng lipunan.', 'Noli Me Tangere', 'El Filibusterismo', 'Filipinas Dentro de Cien A Aos', 27, 'Wala rito ang sagot', 4),
	(4, 'Nobela ni Rizal na naglantad ng bulok na sistema ng pamahalaan.', 'Nobela ni Rizal na naglantad ng bulok na sistema ng pamahalaan.', 'El Filibusterismo', 'Mi Ultimo Adios', 28, 'Sobre La Indolencia de los Filipinos', 1),
	(4, 'Naging patnugot ng La Solidaridad', 'Antonio Luna', 'Marcelo H. del Pilar', 'Jose Rizal', 29, 'Graciano Lopez Jaena', 4),
	(4, 'Kilala sa pagkakaroon ng Memoria Fotograpica. A', 'Pedro Paterno', 'Emilio Jacinto', 'Jose Ma. Panganiban', 30, 'Jose Palma', 2),
	(4, 'Tanyag sa pagigimg Ama ng Demokrasyang Pilipino. A', 'Andres Bonifacio', 'Apolinario Mabini', 'Emilio Jacinto', 31, 'Marcelo H. del Pilar', 2),
	(2, 'ITO AY MAY HIMIG NA AWIT DAHILANG ITO AY INAAWIT HABANG MAY NAGSASAYAW.', 'BALAD', 'SONETO', 'DALIT', 32, 'ELEHIYA', 1),
	(2, 'ITO AY TULANG MAY LABING-APAT NA TALUDTOD.', 'BALAD', 'DALIT', 'ELEHIYA', 33, 'SONETO', 4),
	(2, 'ITO AY KARANIWANG GINAGAMIT SA LAHAT NG MGA DULANG MUSIKA, KASAMA NA ANG OPERA.', 'KOMEDYA', 'MELODRAMA', 'TRAHEDYA', 34, 'PARSA', 2),
	(2, 'ITO AY BATAY SA ALAMAT NG SINGSING NG ISANG PRINSESA NA NAIHULOG NIYA SA DAGAT SA HANGARIN NITONG MAPANGASAWA ANG KASINTAHANG MAHIRAP.', 'DUPLO', 'BALAGTASAN', 'KARAGATAN', 35, 'SAYNETE', 3),
	(2, 'ITO AY ISANG MAHABANG SALAYSAYING NAHAHATI SA MGA KABANATA.', 'NOBELA', 'MAIKLING KWENTO', 'DULA', 36, 'ALAMAT', 1),
	(2, 'ITO AY PAGPAPAHAYAG NG KURU-KUROO OPINYON NG MAY AKDA TUNGKOL SA ISANG SULIRANIN O PANGYAYARI.', 'TALAMBUHAY', 'BALITA', 'ANEKDOTA', 37, 'SANAYSAY', 4),
	(2, 'ITO AY ISANG PAGPAPAHAYAG NA BINIBIGKAS SA HARAP NG MGA TAGAPAKINIG.', 'TALUMPATI', 'BALITA', 'TALAMBUHAY', 38, 'ANEKDOTA', 1),
	(2, 'ITO AY MGA SALAYSAYING HANGO SA BIBLIYA NA TULAD NG ANEKDOTA.', 'TALUMPATI', 'ALAMAT', 'SANAYSAY', 39, 'PARABULA', 4),
	(2, 'ITO AY ISANG URI NG PAGPAPAHAYAG NA NAGSASALAYSAY NG ISANG KARANASAN.', 'PAGLALAHAD', 'PAGSASALAYSAY', 'PAGLALARAWAN', 40, 'PANGANGATWIRAN', 2),
	(2, 'MGA LIKHANG ISIP LAMANG NG MGA MANUNULAT ANG MGA MAIKLING SAYSAYING ITO NA ANG TANGING LAYUNIN AY MAKAPAGBIGAY ARAL SA MGA MAMBABASA.', 'ALAMAT', 'ANEKDOTA', 'SANAYSAY', 41, 'BALITA', 2),
	(5, 'ITO AY MAY HIMIG NA AWIT DAHILANG ITO AY INAAWIT HABANG MAY NAGSASAYAW.', 'BALAD', 'SONETO', 'DALIT', 42, 'ELEHIYA', 1),
	(5, 'ITO AY TULANG MAY LABING-APAT NA TALUDTOD.', 'BALAD', 'DALIT', 'ELEHIYA', 43, 'SONETO', 4),
	(5, 'ITO AY KARANIWANG GINAGAMIT SA LAHAT NG MGA DULANG MUSIKA, KASAMA NA ANG OPERA.', 'KOMEDYA', 'MELODRAMA', 'TRAHEDYA', 44, 'PARSA', 2),
	(5, 'ITO AY BATAY SA ALAMAT NG SINGSING NG ISANG PRINSESA NA NAIHULOG NIYA SA DAGAT SA HANGARIN NITONG MAPANGASAWA ANG KASINTAHANG MAHIRAP.', 'DUPLO', 'BALAGTASAN', 'KARAGATAN', 45, 'SAYNETE', 3),
	(5, 'ITO AY ISANG MAHABANG SALAYSAYING NAHAHATI SA MGA KABANATA.', 'NOBELA', 'MAIKLING KWENTO', 'DULA', 46, 'ALAMAT', 1),
	(5, 'ITO AY PAGPAPAHAYAG NG KURU-KUROO OPINYON NG MAY AKDA TUNGKOL SA ISANG SULIRANIN O PANGYAYARI.', 'TALAMBUHAY', 'BALITA', 'ANEKDOTA', 47, 'SANAYSAY', 4),
	(5, 'ITO AY ISANG PAGPAPAHAYAG NA BINIBIGKAS SA HARAP NG MGA TAGAPAKINIG.', 'TALUMPATI', 'BALITA', 'TALAMBUHAY', 48, 'ANEKDOTA', 1),
	(5, 'ITO AY MGA SALAYSAYING HANGO SA BIBLIYA NA TULAD NG ANEKDOTA.', 'TALUMPATI', 'ALAMAT', 'SANAYSAY', 49, 'PARABULA', 4),
	(5, 'ITO AY ISANG URI NG PAGPAPAHAYAG NA NAGSASALAYSAY NG ISANG KARANASAN.', 'PAGLALAHAD', 'PAGSASALAYSAY', 'PAGLALARAWAN', 50, 'PANGANGATWIRAN', 2),
	(5, 'MGA LIKHANG ISIP LAMANG NG MGA MANUNULAT ANG MGA MAIKLING SAYSAYING ITO NA ANG TANGING LAYUNIN AY MAKAPAGBIGAY ARAL SA MGA MAMBABASA.', 'ALAMAT', 'ANEKDOTA', 'SANAYSAY', 51, 'BALITA', 2),
	(6, 'ITO AY MAY HIMIG NA AWIT DAHILANG ITO AY INAAWIT HABANG MAY NAGSASAYAW.', 'BALAD', 'SONETO', 'DALIT', 52, 'ELEHIYA', 1),
	(6, 'ITO AY TULANG MAY LABING-APAT NA TALUDTOD.', 'BALAD', 'DALIT', 'ELEHIYA', 53, 'SONETO', 4),
	(6, 'ITO AY KARANIWANG GINAGAMIT SA LAHAT NG MGA DULANG MUSIKA, KASAMA NA ANG OPERA.', 'KOMEDYA', 'MELODRAMA', 'TRAHEDYA', 54, 'PARSA', 2),
	(6, 'ITO AY BATAY SA ALAMAT NG SINGSING NG ISANG PRINSESA NA NAIHULOG NIYA SA DAGAT SA HANGARIN NITONG MAPANGASAWA ANG KASINTAHANG MAHIRAP.', 'DUPLO', 'BALAGTASAN', 'KARAGATAN', 55, 'SAYNETE', 3),
	(6, 'ITO AY ISANG MAHABANG SALAYSAYING NAHAHATI SA MGA KABANATA.', 'NOBELA', 'MAIKLING KWENTO', 'DULA', 56, 'ALAMAT', 1),
	(6, 'ITO AY PAGPAPAHAYAG NG KURU-KUROO OPINYON NG MAY AKDA TUNGKOL SA ISANG SULIRANIN O PANGYAYARI.', 'TALAMBUHAY', 'BALITA', 'ANEKDOTA', 57, 'SANAYSAY', 4),
	(6, 'ITO AY ISANG PAGPAPAHAYAG NA BINIBIGKAS SA HARAP NG MGA TAGAPAKINIG.', 'TALUMPATI', 'BALITA', 'TALAMBUHAY', 58, 'ANEKDOTA', 1),
	(6, 'ITO AY MGA SALAYSAYING HANGO SA BIBLIYA NA TULAD NG ANEKDOTA.', 'TALUMPATI', 'ALAMAT', 'SANAYSAY', 59, 'PARABULA', 4),
	(6, 'ITO AY ISANG URI NG PAGPAPAHAYAG NA NAGSASALAYSAY NG ISANG KARANASAN.', 'PAGLALAHAD', 'PAGSASALAYSAY', 'PAGLALARAWAN', 60, 'PANGANGATWIRAN', 2),
	(6, 'MGA LIKHANG ISIP LAMANG NG MGA MANUNULAT ANG MGA MAIKLING SAYSAYING ITO NA ANG TANGING LAYUNIN AY MAKAPAGBIGAY ARAL SA MGA MAMBABASA.', 'ALAMAT', 'ANEKDOTA', 'SANAYSAY', 61, 'BALITA', 2),
	(7, 'Ito ang kauna-unahang aklat na nalimbag sa Pilipinas noong 1953, sa pamamagitan ng Silograpiko.', 'Alibata', 'Vocabulario de la Lengua Tagala', 'Ang Doctrina Cristiana', 62, 'Ang Barlaan at Josaphat', 1),
	(7, 'Unang aklat pang wika sa Kapampangan na sinulat ni Padre Diego Bergano.', 'Arte Y De La  Lengua Bicolana', 'Arte De La Lengua Iloka', 'Arte Y Reflas De La Lengua Tagala', 63, 'Vocabulario De La Lengua Pampango', 4),
	(7, 'Ang Compendio De La Lengua Tagala ay iniakda ni;', 'Padre Diego Bergano', 'Padre Diego Bergano', 'Padre Gaspar', 64, 'Padre marcos Lisboa', 2),
	(7, 'Sinulat ni Padre Blancas de San Jose at isinalin sa Tagalog ni Tomas Pinpin noong 1610.', 'Arte Y Reglas De La Lengua Tagala', 'Compendio De La Lengua Tagala', 'Vocabularyo De La Lengua Tagala', 65, 'Vocabularyo De La. Lengua Pampango', 3),
	(7, 'Itinuturing isa sa mga dulang panlibangan ng mga hulinng tao ng pananakop sa atin ng mga Kastila.', 'Saynete', 'Duplo', 'Kurido', 66, 'Baybay', 1),
	(7, 'Isang melodrama o dulang musikal na tatatluhing yugto.', 'Moro-moro', 'Karilyo', 'Sarsuela', 67, 'Awit', 4),
	(7, 'Itoy batay sa alamat ng singsing ng isang prinsesa na naihulog nya sa dagat.', 'Karagatan', 'Karagatan', 'Moro-moro', 68, 'Duplo', 1),
	(7, 'Ito ay itinnuturing na  isang laro ng mga aninong ginawa mula sa Karton, na pinapanood na gumagalaw sa likod ng isamg putting tabing.', 'Karagatan', 'Karilyo', 'Moro-moro', 69, 'Duplo', 4),
	(7, 'Ito ang humahalili sa karagatan.', 'Karagatan', 'Karilyo', 'Moro-moro', 70, 'Duplo', 2),
	(7, 'Ito ang ikatlong aklast na nailimbag sa Pilipinas na akda ito  ni Padre Blancas de San Jose at nailimbag sa imprenta ng Pamantasan ng Sto. Tomas.', 'Nuestra Senora del Rosario', 'Ang Barlaan at Josaphat', 'Ang Pasyon', 71, 'Ang Urbana at Odyssey', 2),
	(7, 'Ito ang ipinagmamalaking kauna-unahang akbakadang Filipino na nahalinhan ng alpabetong Romano.', 'Awit', 'Moro-moro', 'Kurido', 72, 'Alibata', 1),
	(7, 'Pagtatanghal ito na natutungkol sa buhay at pagpapasakit n gating Poong si Hesukristo.', 'Tibag', 'Lagaylay', 'Sinakulo', 73, 'Panunuluyan', 4),
	(7, 'Isang pagtatanghal na isinasagawa bago mag alas dose ng gabi ng kapaskuhan.', 'Tibag', 'Lagaylay', 'Sinakulo', 74, 'Panunuluyan', 2),
	(7, 'Tulang pasalaysay na natutungkol sa katapangan, kabayanihan, kababalaghan, at pananampalataya ng mga tauhan.', 'Kurido', 'Sarsuela', 'Saynete', 75, 'Panunuluyan', 3),
	(7, 'Itoy aklat na natutungkol sa buhay at pagpapasakit ni Hesukristo.', 'Nuestra Senora del Rosario', 'Ang barlaan at Josaphat', 'Ang pasyon', 76, 'Ang Urbana at Felisa', 1),
	(8, 'Ito ang kauna-unahang aklat na nalimbag sa Pilipinas noong 1953, sa pamamagitan ng Silograpiko.', 'Alibata', 'Vocabulario de la Lengua Tagala', 'Ang Doctrina Cristiana', 77, 'Ang Barlaan at Josaphat', 1),
	(8, 'Unang aklat pang wika sa Kapampangan na sinulat ni Padre Diego Bergano.', 'Arte Y De La  Lengua Bicolana', 'Arte De La Lengua Iloka', 'Arte Y Reflas De La Lengua Tagala', 78, 'Vocabulario De La Lengua Pampango', 4),
	(8, 'Ang Compendio De La Lengua Tagala ay iniakda ni;', 'Padre Diego Bergano', 'Padre Diego Bergano', 'Padre Gaspar', 79, 'Padre marcos Lisboa', 2),
	(8, 'Sinulat ni Padre Blancas de San Jose at isinalin sa Tagalog ni Tomas Pinpin noong 1610.', 'Arte Y Reglas De La Lengua Tagala', 'Compendio De La Lengua Tagala', 'Vocabularyo De La Lengua Tagala', 80, 'Vocabularyo De La. Lengua Pampango', 3),
	(8, 'Itinuturing isa sa mga dulang panlibangan ng mga hulinng tao ng pananakop sa atin ng mga Kastila.', 'Saynete', 'Duplo', 'Kurido', 81, 'Baybay', 1),
	(8, 'Isang melodrama o dulang musikal na tatatluhing yugto.', 'Moro-moro', 'Karilyo', 'Sarsuela', 82, 'Awit', 4),
	(8, 'Itoy batay sa alamat ng singsing ng isang prinsesa na naihulog nya sa dagat.', 'Karagatan', 'Karagatan', 'Moro-moro', 83, 'Duplo', 1),
	(8, 'Ito ay itinnuturing na  isang laro ng mga aninong ginawa mula sa Karton, na pinapanood na gumagalaw sa likod ng isamg putting tabing.', 'Karagatan', 'Karilyo', 'Moro-moro', 84, 'Duplo', 4),
	(8, 'Ito ang humahalili sa karagatan.', 'Karagatan', 'Karilyo', 'Moro-moro', 85, 'Duplo', 2),
	(8, 'Ito ang ikatlong aklast na nailimbag sa Pilipinas na akda ito  ni Padre Blancas de San Jose at nailimbag sa imprenta ng Pamantasan ng Sto. Tomas.', 'Nuestra Senora del Rosario', 'Ang Barlaan at Josaphat', 'Ang Pasyon', 86, 'Ang Urbana at Odyssey', 2),
	(8, 'Ito ang ipinagmamalaking kauna-unahang akbakadang Filipino na nahalinhan ng alpabetong Romano.', 'Awit', 'Moro-moro', 'Kurido', 87, 'Alibata', 1),
	(8, 'Pagtatanghal ito na natutungkol sa buhay at pagpapasakit n gating Poong si Hesukristo.', 'Tibag', 'Lagaylay', 'Sinakulo', 88, 'Panunuluyan', 4),
	(8, 'Isang pagtatanghal na isinasagawa bago mag alas dose ng gabi ng kapaskuhan.', 'Tibag', 'Lagaylay', 'Sinakulo', 89, 'Panunuluyan', 2),
	(8, 'Tulang pasalaysay na natutungkol sa katapangan, kabayanihan, kababalaghan, at pananampalataya ng mga tauhan.', 'Kurido', 'Sarsuela', 'Saynete', 90, 'Panunuluyan', 3),
	(8, 'Itoy aklat na natutungkol sa buhay at pagpapasakit ni Hesukristo.', 'Nuestra Senora del Rosario', 'Ang barlaan at Josaphat', 'Ang pasyon', 91, 'Ang Urbana at Felisa', 1),
	(9, 'Ito ang kauna-unahang aklat na nalimbag sa Pilipinas noong 1953, sa pamamagitan ng Silograpiko.', 'Alibata', 'Vocabulario de la Lengua Tagala', 'Ang Doctrina Cristiana', 92, 'Ang Barlaan at Josaphat', 1),
	(9, 'Unang aklat pang wika sa Kapampangan na sinulat ni Padre Diego Bergano.', 'Arte Y De La  Lengua Bicolana', 'Arte De La Lengua Iloka', 'Arte Y Reflas De La Lengua Tagala', 93, 'Vocabulario De La Lengua Pampango', 4),
	(9, 'Ang Compendio De La Lengua Tagala ay iniakda ni;', 'Padre Diego Bergano', 'Padre Diego Bergano', 'Padre Gaspar', 94, 'Padre marcos Lisboa', 2),
	(9, 'Sinulat ni Padre Blancas de San Jose at isinalin sa Tagalog ni Tomas Pinpin noong 1610.', 'Arte Y Reglas De La Lengua Tagala', 'Compendio De La Lengua Tagala', 'Vocabularyo De La Lengua Tagala', 95, 'Vocabularyo De La. Lengua Pampango', 3),
	(9, 'Itinuturing isa sa mga dulang panlibangan ng mga hulinng tao ng pananakop sa atin ng mga Kastila.', 'Saynete', 'Duplo', 'Kurido', 96, 'Baybay', 1),
	(9, 'Isang melodrama o dulang musikal na tatatluhing yugto.', 'Moro-moro', 'Karilyo', 'Sarsuela', 97, 'Awit', 4),
	(9, 'Itoy batay sa alamat ng singsing ng isang prinsesa na naihulog nya sa dagat.', 'Karagatan', 'Karagatan', 'Moro-moro', 98, 'Duplo', 1),
	(9, 'Ito ay itinnuturing na  isang laro ng mga aninong ginawa mula sa Karton, na pinapanood na gumagalaw sa likod ng isamg putting tabing.', 'Karagatan', 'Karilyo', 'Moro-moro', 99, 'Duplo', 4),
	(9, 'Ito ang humahalili sa karagatan.', 'Karagatan', 'Karilyo', 'Moro-moro', 100, 'Duplo', 2),
	(9, 'Ito ang ikatlong aklast na nailimbag sa Pilipinas na akda ito  ni Padre Blancas de San Jose at nailimbag sa imprenta ng Pamantasan ng Sto. Tomas.', 'Nuestra Senora del Rosario', 'Ang Barlaan at Josaphat', 'Ang Pasyon', 101, 'Ang Urbana at Odyssey', 2),
	(9, 'Ito ang ipinagmamalaking kauna-unahang akbakadang Filipino na nahalinhan ng alpabetong Romano.', 'Awit', 'Moro-moro', 'Kurido', 102, 'Alibata', 1),
	(9, 'Pagtatanghal ito na natutungkol sa buhay at pagpapasakit n gating Poong si Hesukristo.', 'Tibag', 'Lagaylay', 'Sinakulo', 103, 'Panunuluyan', 4),
	(9, 'Isang pagtatanghal na isinasagawa bago mag alas dose ng gabi ng kapaskuhan.', 'Tibag', 'Lagaylay', 'Sinakulo', 104, 'Panunuluyan', 2),
	(9, 'Tulang pasalaysay na natutungkol sa katapangan, kabayanihan, kababalaghan, at pananampalataya ng mga tauhan.', 'Kurido', 'Sarsuela', 'Saynete', 105, 'Panunuluyan', 3),
	(9, 'Itoy aklat na natutungkol sa buhay at pagpapasakit ni Hesukristo.', 'Nuestra Senora del Rosario', 'Ang barlaan at Josaphat', 'Ang pasyon', 106, 'Ang Urbana at Felisa', 1),
	(10, 'ITO AY MAY HIMIG NA AWIT DAHILANG ITO AY INAAWIT HABANG MAY NAGSASAYAW.', 'BALAD', 'SONETO', 'DALIT', 107, 'ELEHIYA', 1),
	(10, 'ITO AY TULANG MAY LABING-APAT NA TALUDTOD.', 'BALAD', 'DALIT', 'ELEHIYA', 108, 'SONETO', 4),
	(10, 'ITO AY KARANIWANG GINAGAMIT SA LAHAT NG MGA DULANG MUSIKA, KASAMA NA ANG OPERA.', 'KOMEDYA', 'MELODRAMA', 'TRAHEDYA', 109, 'PARSA', 2),
	(10, 'ITO AY BATAY SA ALAMAT NG SINGSING NG ISANG PRINSESA NA NAIHULOG NIYA SA DAGAT SA HANGARIN NITONG MAPANGASAWA ANG KASINTAHANG MAHIRAP.', 'DUPLO', 'BALAGTASAN', 'KARAGATAN', 110, 'SAYNETE', 3),
	(10, 'ITO AY ISANG MAHABANG SALAYSAYING NAHAHATI SA MGA KABANATA.', 'NOBELA', 'MAIKLING KWENTO', 'DULA', 111, 'ALAMAT', 1),
	(10, 'ITO AY PAGPAPAHAYAG NG KURU-KUROO OPINYON NG MAY AKDA TUNGKOL SA ISANG SULIRANIN O PANGYAYARI.', 'TALAMBUHAY', 'BALITA', 'ANEKDOTA', 112, 'SANAYSAY', 4),
	(10, 'ITO AY ISANG PAGPAPAHAYAG NA BINIBIGKAS SA HARAP NG MGA TAGAPAKINIG.', 'TALUMPATI', 'BALITA', 'TALAMBUHAY', 113, 'ANEKDOTA', 1),
	(10, 'ITO AY MGA SALAYSAYING HANGO SA BIBLIYA NA TULAD NG ANEKDOTA.', 'TALUMPATI', 'ALAMAT', 'SANAYSAY', 114, 'PARABULA', 4),
	(10, 'ITO AY ISANG URI NG PAGPAPAHAYAG NA NAGSASALAYSAY NG ISANG KARANASAN.', 'PAGLALAHAD', 'PAGSASALAYSAY', 'PAGLALARAWAN', 115, 'PANGANGATWIRAN', 2),
	(10, 'MGA LIKHANG ISIP LAMANG NG MGA MANUNULAT ANG MGA MAIKLING SAYSAYING ITO NA ANG TANGING LAYUNIN AY MAKAPAGBIGAY ARAL SA MGA MAMBABASA.', 'ALAMAT', 'ANEKDOTA', 'SANAYSAY', 116, 'BALITA', 2),
	(10, 'Pagtatanghal ito na natutungkol sa buhay at pagpapasakit n gating Poong si Hesukristo.', 'Tibag', 'Lagaylay', 'Sinakulo', 117, 'Panunuluyan', 4),
	(10, 'Isang pagtatanghal na isinasagawa bago mag alas dose ng gabi ng kapaskuhan.', 'Tibag', 'Lagaylay', 'Sinakulo', 118, 'Panunuluyan', 2),
	(10, 'Tulang pasalaysay na natutungkol sa katapangan, kabayanihan, kababalaghan, at pananampalataya ng mga tauhan.', 'Kurido', 'Sarsuela', 'Saynete', 119, 'Panunuluyan', 3),
	(10, 'Ito Ay aklat na natutungkol sa buhay at pagpapasakit ni Hesukristo.', 'Nuestra Senora del Rosario', 'Ang barlaan at Josaphat', 'Ang pasyon', 120, 'Ang Urbana at Felisa', 1),
	(11, 'ITO AY MAY HIMIG NA AWIT DAHILANG ITO AY INAAWIT HABANG MAY NAGSASAYAW.', 'BALAD', 'SONETO', 'DALIT', 121, 'ELEHIYA', 1),
	(11, 'ITO AY TULANG MAY LABING-APAT NA TALUDTOD.', 'BALAD', 'DALIT', 'ELEHIYA', 122, 'SONETO', 4),
	(11, 'ITO AY KARANIWANG GINAGAMIT SA LAHAT NG MGA DULANG MUSIKA, KASAMA NA ANG OPERA.', 'KOMEDYA', 'MELODRAMA', 'TRAHEDYA', 123, 'PARSA', 2),
	(11, 'ITO AY BATAY SA ALAMAT NG SINGSING NG ISANG PRINSESA NA NAIHULOG NIYA SA DAGAT SA HANGARIN NITONG MAPANGASAWA ANG KASINTAHANG MAHIRAP.', 'DUPLO', 'BALAGTASAN', 'KARAGATAN', 124, 'SAYNETE', 3),
	(11, 'ITO AY ISANG MAHABANG SALAYSAYING NAHAHATI SA MGA KABANATA.', 'NOBELA', 'MAIKLING KWENTO', 'DULA', 125, 'ALAMAT', 1),
	(11, 'ITO AY PAGPAPAHAYAG NG KURU-KUROO OPINYON NG MAY AKDA TUNGKOL SA ISANG SULIRANIN O PANGYAYARI.', 'TALAMBUHAY', 'BALITA', 'ANEKDOTA', 126, 'SANAYSAY', 4),
	(11, 'ITO AY ISANG PAGPAPAHAYAG NA BINIBIGKAS SA HARAP NG MGA TAGAPAKINIG.', 'TALUMPATI', 'BALITA', 'TALAMBUHAY', 127, 'ANEKDOTA', 1),
	(11, 'ITO AY MGA SALAYSAYING HANGO SA BIBLIYA NA TULAD NG ANEKDOTA.', 'TALUMPATI', 'ALAMAT', 'SANAYSAY', 128, 'PARABULA', 4),
	(11, 'ITO AY ISANG URI NG PAGPAPAHAYAG NA NAGSASALAYSAY NG ISANG KARANASAN.', 'PAGLALAHAD', 'PAGSASALAYSAY', 'PAGLALARAWAN', 129, 'PANGANGATWIRAN', 2),
	(11, 'MGA LIKHANG ISIP LAMANG NG MGA MANUNULAT ANG MGA MAIKLING SAYSAYING ITO NA ANG TANGING LAYUNIN AY MAKAPAGBIGAY ARAL SA MGA MAMBABASA.', 'ALAMAT', 'ANEKDOTA', 'SANAYSAY', 130, 'BALITA', 2),
	(11, 'Pagtatanghal ito na natutungkol sa buhay at pagpapasakit n gating Poong si Hesukristo.', 'Tibag', 'Lagaylay', 'Sinakulo', 131, 'Panunuluyan', 4),
	(11, 'Isang pagtatanghal na isinasagawa bago mag alas dose ng gabi ng kapaskuhan.', 'Tibag', 'Lagaylay', 'Sinakulo', 132, 'Panunuluyan', 2),
	(11, 'Tulang pasalaysay na natutungkol sa katapangan, kabayanihan, kababalaghan, at pananampalataya ng mga tauhan.', 'Kurido', 'Sarsuela', 'Saynete', 133, 'Panunuluyan', 3),
	(11, 'Ito Ay aklat na natutungkol sa buhay at pagpapasakit ni Hesukristo.', 'Nuestra Senora del Rosario', 'Ang barlaan at Josaphat', 'Ang pasyon', 134, 'Ang Urbana at Felisa', 1),
	(12, 'ITO AY MAY HIMIG NA AWIT DAHILANG ITO AY INAAWIT HABANG MAY NAGSASAYAW.', 'BALAD', 'SONETO', 'DALIT', 135, 'ELEHIYA', 1),
	(12, 'ITO AY TULANG MAY LABING-APAT NA TALUDTOD.', 'BALAD', 'DALIT', 'ELEHIYA', 136, 'SONETO', 4),
	(12, 'ITO AY KARANIWANG GINAGAMIT SA LAHAT NG MGA DULANG MUSIKA, KASAMA NA ANG OPERA.', 'KOMEDYA', 'MELODRAMA', 'TRAHEDYA', 137, 'PARSA', 2),
	(12, 'ITO AY BATAY SA ALAMAT NG SINGSING NG ISANG PRINSESA NA NAIHULOG NIYA SA DAGAT SA HANGARIN NITONG MAPANGASAWA ANG KASINTAHANG MAHIRAP.', 'DUPLO', 'BALAGTASAN', 'KARAGATAN', 138, 'SAYNETE', 3),
	(12, 'ITO AY ISANG MAHABANG SALAYSAYING NAHAHATI SA MGA KABANATA.', 'NOBELA', 'MAIKLING KWENTO', 'DULA', 139, 'ALAMAT', 1),
	(12, 'ITO AY PAGPAPAHAYAG NG KURU-KUROO OPINYON NG MAY AKDA TUNGKOL SA ISANG SULIRANIN O PANGYAYARI.', 'TALAMBUHAY', 'BALITA', 'ANEKDOTA', 140, 'SANAYSAY', 4),
	(12, 'ITO AY ISANG PAGPAPAHAYAG NA BINIBIGKAS SA HARAP NG MGA TAGAPAKINIG.', 'TALUMPATI', 'BALITA', 'TALAMBUHAY', 141, 'ANEKDOTA', 1),
	(12, 'ITO AY MGA SALAYSAYING HANGO SA BIBLIYA NA TULAD NG ANEKDOTA.', 'TALUMPATI', 'ALAMAT', 'SANAYSAY', 142, 'PARABULA', 4),
	(12, 'ITO AY ISANG URI NG PAGPAPAHAYAG NA NAGSASALAYSAY NG ISANG KARANASAN.', 'PAGLALAHAD', 'PAGSASALAYSAY', 'PAGLALARAWAN', 143, 'PANGANGATWIRAN', 2),
	(12, 'MGA LIKHANG ISIP LAMANG NG MGA MANUNULAT ANG MGA MAIKLING SAYSAYING ITO NA ANG TANGING LAYUNIN AY MAKAPAGBIGAY ARAL SA MGA MAMBABASA.', 'ALAMAT', 'ANEKDOTA', 'SANAYSAY', 144, 'BALITA', 2),
	(12, 'Pagtatanghal ito na natutungkol sa buhay at pagpapasakit n gating Poong si Hesukristo.', 'Tibag', 'Lagaylay', 'Sinakulo', 145, 'Panunuluyan', 4),
	(12, 'Isang pagtatanghal na isinasagawa bago mag alas dose ng gabi ng kapaskuhan.', 'Tibag', 'Lagaylay', 'Sinakulo', 146, 'Panunuluyan', 2),
	(12, 'Tulang pasalaysay na natutungkol sa katapangan, kabayanihan, kababalaghan, at pananampalataya ng mga tauhan.', 'Kurido', 'Sarsuela', 'Saynete', 147, 'Panunuluyan', 3),
	(12, 'Ito Ay aklat na natutungkol sa buhay at pagpapasakit ni Hesukristo.', 'Nuestra Senora del Rosario', 'Ang barlaan at Josaphat', 'Ang pasyon', 148, 'Ang Urbana at Felisa', 1);
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

-- Dumping data for table caipl.scores: ~27 rows (approximately)
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
	(52, '2018-11-07 16:55:27', 'Sumin Bae Jo', '3', 15);
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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=latin1;

-- Dumping data for table caipl.scores_listing: ~38 rows (approximately)
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
	(84, 52, 'Ito ay aklat na natutungkol sa buhay at pagpapasakit ni Hesukristo.', 'Ang Urbana at Felisa', 'Ang Urbana at Felisa', 'Sumin Bae Jo', '2018-11-07 16:55:28');
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
