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

-- Dumping data for table caipl.accounts: ~6 rows (approximately)
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

-- Dumping data for table caipl.account_type: ~2 rows (approximately)
/*!40000 ALTER TABLE `account_type` DISABLE KEYS */;
INSERT INTO `account_type` (`id`, `account_type`) VALUES
	(1, 'User'),
	(2, 'Admin');
/*!40000 ALTER TABLE `account_type` ENABLE KEYS */;

-- Dumping data for table caipl.chapter: ~0 rows (approximately)
/*!40000 ALTER TABLE `chapter` DISABLE KEYS */;
INSERT INTO `chapter` (`id`, `chapter_name`, `chapter_description`) VALUES
	(1, 'Kabanata A', 'The very first chapter of the Kabanata');
/*!40000 ALTER TABLE `chapter` ENABLE KEYS */;

-- Dumping data for table caipl.lesson: ~0 rows (approximately)
/*!40000 ALTER TABLE `lesson` DISABLE KEYS */;
INSERT INTO `lesson` (`id`, `chapter_id`, `lesson_name`, `lesson_description`) VALUES
	(1, 1, '1', 'Panimulang pag aaral ng panitikan ');
/*!40000 ALTER TABLE `lesson` ENABLE KEYS */;

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

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
