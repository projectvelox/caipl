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
CREATE DATABASE IF NOT EXISTS `caipl` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `caipl`;

-- Dumping structure for table caipl.accounts
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
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` (`id`, `idnumber`, `username`, `password`, `firstname`, `middlename`, `lastname`, `typeofaccount`) VALUES
	(1, '13-0710-80', 'admin', 'admin', 'Joshua', 'Ricarder', 'Oducado', 2),
	(2, '13-0710-11', 'user', 'user', 'Sumin', 'Bae', 'Jo', 1),
	(3, '13-0710-80', 'ProjectVelox', 'manok098', 'Joshua', 'Ricarder', 'Oducado', NULL),
	(4, '13-0710-84', 'Featherxxx', 'manok098', 'Chrystal', 'Oducado', 'Alquisada', NULL),
	(5, '13-0718-90', 'Mojacko', 'manok098', 'Feather', 'Alquisada', 'Oducado', NULL),
	(6, '12-0918-30', 'SuminJo', 'sumninjo', 'Sumin', 'the', 'Hoe', NULL),
	(7, '13-0291-20', 'BenjiBoi', 'manok098', 'Benjamin', 'Louis', 'Mayor', NULL);
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;

-- Dumping structure for view caipl.account_listing
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
CREATE TABLE IF NOT EXISTS `account_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table caipl.account_type: ~2 rows (approximately)
/*!40000 ALTER TABLE `account_type` DISABLE KEYS */;
INSERT INTO `account_type` (`id`, `account_type`) VALUES
	(1, 'User'),
	(2, 'Admin');
/*!40000 ALTER TABLE `account_type` ENABLE KEYS */;

-- Dumping structure for table caipl.chapter
CREATE TABLE IF NOT EXISTS `chapter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chapter_name` varchar(200) DEFAULT NULL,
  `chapter_description` varchar(10000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table caipl.chapter: ~1 rows (approximately)
/*!40000 ALTER TABLE `chapter` DISABLE KEYS */;
INSERT INTO `chapter` (`id`, `chapter_name`, `chapter_description`) VALUES
	(1, 'Kabanata A', 'The very first chapter of the Kabanata');
/*!40000 ALTER TABLE `chapter` ENABLE KEYS */;

-- Dumping structure for view caipl.chapterandlessons_listing
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `chapterandlessons_listing` (
	`chapter_and_lesson` TEXT NULL COLLATE 'latin1_swedish_ci',
	`chapter_name` VARCHAR(200) NULL COLLATE 'latin1_swedish_ci',
	`chapter_description` VARCHAR(10000) NULL COLLATE 'latin1_swedish_ci',
	`lesson_name` VARCHAR(500) NOT NULL COLLATE 'latin1_swedish_ci',
	`lesson_description` VARCHAR(10000) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for table caipl.lesson
CREATE TABLE IF NOT EXISTS `lesson` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chapter_id` int(11) NOT NULL,
  `lesson_name` varchar(500) NOT NULL,
  `lesson_description` varchar(10000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table caipl.lesson: ~1 rows (approximately)
/*!40000 ALTER TABLE `lesson` DISABLE KEYS */;
INSERT INTO `lesson` (`id`, `chapter_id`, `lesson_name`, `lesson_description`) VALUES
	(1, 1, '1', 'Panimulang pag aaral ng panitikan ');
/*!40000 ALTER TABLE `lesson` ENABLE KEYS */;

-- Dumping structure for table caipl.quiz
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table caipl.quiz: ~6 rows (approximately)
/*!40000 ALTER TABLE `quiz` DISABLE KEYS */;
INSERT INTO `quiz` (`id`, `lesson_id`, `quiz_question`, `option_1`, `option_2`, `option_3`, `option_4`, `answer`) VALUES
	(1, 1, '1 + 1 = ?', '2', '3', '4', '5', '2'),
	(2, 1, '1 + 2 = ?', '3', '4', '5', '6', '3'),
	(3, 1, '1 + 3 = ?', '4', '5', '6', '7', '4'),
	(4, 1, '2 + 1 = ?', '2', '3', '4', '5', '3'),
	(5, 1, '2 + 2 = ?', '2', '3', '4', '5', '4'),
	(6, 1, '5 + 2 = ?', '2', '7', '4', '5', '7');
/*!40000 ALTER TABLE `quiz` ENABLE KEYS */;

-- Dumping structure for view caipl.quiz_listing
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

-- Dumping structure for view caipl.account_listing
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `account_listing`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `account_listing` AS SELECT 
	accounts.*, 
	account_type.account_type
FROM accounts
INNER JOIN account_type 
ON accounts.typeofaccount = account_type.id ;

-- Dumping structure for view caipl.chapterandlessons_listing
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
