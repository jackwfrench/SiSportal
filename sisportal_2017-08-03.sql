# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.6.28)
# Database: sisportal
# Generation Time: 2017-08-03 10:59:56 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table activity_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `activity_log`;

CREATE TABLE `activity_log` (
  `activityID` int(10) NOT NULL,
  `userID` int(10) NOT NULL,
  `activity_date` date NOT NULL,
  PRIMARY KEY (`activityID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table assesment
# ------------------------------------------------------------

DROP TABLE IF EXISTS `assesment`;

CREATE TABLE `assesment` (
  `assesmentID` int(10) NOT NULL,
  `classcode` varchar(7) NOT NULL,
  `assesment_name` varchar(100) NOT NULL,
  `date_given` date NOT NULL,
  `date_due` date NOT NULL,
  `assesment_file_url` varchar(200) NOT NULL,
  PRIMARY KEY (`assesmentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table assesment_results
# ------------------------------------------------------------

DROP TABLE IF EXISTS `assesment_results`;

CREATE TABLE `assesment_results` (
  `assesmentID` int(10) NOT NULL,
  `userID` int(10) NOT NULL,
  `c1` varchar(50) NOT NULL,
  `c1_mark` varchar(2) DEFAULT NULL,
  `c2` varchar(50) DEFAULT NULL,
  `c2_mark` varchar(2) DEFAULT NULL,
  `c3` varchar(50) DEFAULT NULL,
  `c3_mark` varchar(2) DEFAULT NULL,
  `final_result` varchar(2) DEFAULT NULL,
  `view_status` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table attendence
# ------------------------------------------------------------

DROP TABLE IF EXISTS `attendence`;

CREATE TABLE `attendence` (
  `userID` int(10) NOT NULL,
  `period_number` int(1) NOT NULL,
  `absent_date` date NOT NULL,
  `comment` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table behaviour_management
# ------------------------------------------------------------

DROP TABLE IF EXISTS `behaviour_management`;

CREATE TABLE `behaviour_management` (
  `commentID` int(10) NOT NULL,
  `teacher_user` int(10) NOT NULL,
  `student_user` int(10) NOT NULL,
  `commet` varchar(2000) NOT NULL,
  `incident_date` date NOT NULL,
  PRIMARY KEY (`commentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table classes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `classes`;

CREATE TABLE `classes` (
  `classcode` varchar(7) NOT NULL DEFAULT '',
  `userID` int(10) DEFAULT NULL,
  `classroom` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`classcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `classes` WRITE;
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;

INSERT INTO `classes` (`classcode`, `userID`, `classroom`)
VALUES
	('12ACCA',252,'Ma4'),
	('12ACLA',253,'Mc3'),
	('12ANHA',254,'Ri1'),
	('12AQPA',255,'Ho2'),
	('12BCTA',256,'Ch3'),
	('12BIOA',257,'Wa5'),
	('12BUCA',258,'Ma2');

/*!40000 ALTER TABLE `classes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table notices
# ------------------------------------------------------------

DROP TABLE IF EXISTS `notices`;

CREATE TABLE `notices` (
  `noticeID` int(10) NOT NULL,
  `userID` int(10) NOT NULL,
  `activity` varchar(100) NOT NULL,
  `notice_comment` varchar(1000) NOT NULL,
  `through_date` date NOT NULL,
  `y7` int(1) DEFAULT NULL,
  `y8` int(1) DEFAULT NULL,
  `y9` int(1) DEFAULT NULL,
  `y10` int(1) DEFAULT NULL,
  `y11` int(1) DEFAULT NULL,
  `y12` int(1) DEFAULT NULL,
  PRIMARY KEY (`noticeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table parent_student
# ------------------------------------------------------------

DROP TABLE IF EXISTS `parent_student`;

CREATE TABLE `parent_student` (
  `parentID` int(10) NOT NULL,
  `userID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `parent_student` WRITE;
/*!40000 ALTER TABLE `parent_student` DISABLE KEYS */;

INSERT INTO `parent_student` (`parentID`, `userID`)
VALUES
	(333,61),
	(330,109),
	(242,124),
	(110,66),
	(285,166),
	(450,173),
	(368,136),
	(218,10),
	(174,54),
	(435,166),
	(10,82),
	(193,124),
	(369,73),
	(429,172),
	(467,170),
	(172,241),
	(329,132),
	(234,164),
	(297,249),
	(158,164),
	(270,241);

/*!40000 ALTER TABLE `parent_student` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table reports
# ------------------------------------------------------------

DROP TABLE IF EXISTS `reports`;

CREATE TABLE `reports` (
  `userID` int(10) NOT NULL,
  `report_date` date NOT NULL,
  `report_url` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table student_subject
# ------------------------------------------------------------

DROP TABLE IF EXISTS `student_subject`;

CREATE TABLE `student_subject` (
  `userID` int(10) NOT NULL,
  `classcode` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table time_table
# ------------------------------------------------------------

DROP TABLE IF EXISTS `time_table`;

CREATE TABLE `time_table` (
  `userID` int(10) NOT NULL,
  `day` int(1) NOT NULL,
  `p1` varchar(7) DEFAULT NULL,
  `p2` varchar(7) DEFAULT NULL,
  `p3` varchar(7) DEFAULT NULL,
  `p4` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `time_table` WRITE;
/*!40000 ALTER TABLE `time_table` DISABLE KEYS */;

INSERT INTO `time_table` (`userID`, `day`, `p1`, `p2`, `p3`, `p4`)
VALUES
	(4,1,'12BUCA','12AQPA','12ACCA','12BIOA'),
	(10,1,'12BUCA','12AQPA','12ACCA','12BIOA'),
	(18,1,'12BUCA','12AQPA','12ACCA','12BIOA'),
	(54,1,'12BUCA','12AQPA','12ACCA','12BIOA'),
	(55,1,'12BUCA','12AQPA','12ACCA','12BIOA'),
	(61,1,'12BUCA','12AQPA','12ACCA','12BIOA'),
	(66,1,'12BUCA','12AQPA','12ACCA','12BIOA'),
	(69,1,'12BUCA','12AQPA','12ACCA','12BIOA'),
	(73,1,'12BUCA','12AQPA','12ACCA','12BIOA'),
	(82,1,'12BUCA','12AQPA','12ACCA','12BIOA'),
	(99,1,'12BUCA','12AQPA','12ACCA','12BIOA'),
	(108,1,'12BUCA','12AQPA','12ACCA','12BIOA'),
	(109,1,'12BUCA','12AQPA','12ACCA','12BIOA'),
	(124,1,'12BUCA','12AQPA','12ACCA','12BIOA'),
	(132,1,'12BUCA','12AQPA','12ACCA','12BIOA'),
	(136,1,'12BUCA','12AQPA','12ACCA','12BIOA'),
	(140,1,'12BUCA','12AQPA','12ACCA','12BIOA'),
	(145,1,'12BUCA','12AQPA','12ACCA','12BIOA'),
	(148,1,'12BUCA','12AQPA','12ACCA','12BIOA'),
	(154,1,'12BUCA','12AQPA','12ACCA','12BIOA'),
	(158,1,'12BUCA','12AQPA','12ACCA','12BIOA'),
	(164,1,'12BUCA','12AQPA','12ACCA','12BIOA'),
	(166,1,'12BUCA','12AQPA','12ACCA','12BIOA'),
	(169,1,'12BUCA','12AQPA','12ACCA','12BIOA'),
	(170,1,'12BUCA','12AQPA','12ACCA','12BIOA'),
	(172,1,'12BUCA','12AQPA','12ACCA','12BIOA'),
	(173,1,'12BUCA','12AQPA','12ACCA','12BIOA'),
	(176,1,'12BUCA','12AQPA','12ACCA','12BIOA'),
	(201,1,'12BUCA','12AQPA','12ACCA','12BIOA'),
	(215,1,'12BUCA','12AQPA','12ACCA','12BIOA'),
	(229,1,'12BUCA','12AQPA','12ACCA','12BIOA'),
	(238,1,'12BUCA','12AQPA','12ACCA','12BIOA'),
	(241,1,'12BUCA','12AQPA','12ACCA','12BIOA'),
	(249,1,'12BUCA','12AQPA','12ACCA','12BIOA'),
	(250,1,'12BUCA','12AQPA','12ACCA','12BIOA'),
	(4,2,'12ANHA','12AQPA','12BIOA','12BUCA'),
	(10,2,'12ANHA','12AQPA','12BIOA','12BUCA'),
	(18,2,'12ANHA','12AQPA','12BIOA','12BUCA'),
	(54,2,'12ANHA','12AQPA','12BIOA','12BUCA'),
	(55,2,'12ANHA','12AQPA','12BIOA','12BUCA'),
	(61,2,'12ANHA','12AQPA','12BIOA','12BUCA'),
	(66,2,'12ANHA','12AQPA','12BIOA','12BUCA'),
	(69,2,'12ANHA','12AQPA','12BIOA','12BUCA'),
	(73,2,'12ANHA','12AQPA','12BIOA','12BUCA'),
	(82,2,'12ANHA','12AQPA','12BIOA','12BUCA'),
	(99,2,'12ANHA','12AQPA','12BIOA','12BUCA'),
	(108,2,'12ANHA','12AQPA','12BIOA','12BUCA'),
	(109,2,'12ANHA','12AQPA','12BIOA','12BUCA'),
	(124,2,'12ANHA','12AQPA','12BIOA','12BUCA'),
	(132,2,'12ANHA','12AQPA','12BIOA','12BUCA'),
	(136,2,'12ANHA','12AQPA','12BIOA','12BUCA'),
	(140,2,'12ANHA','12AQPA','12BIOA','12BUCA'),
	(145,2,'12ANHA','12AQPA','12BIOA','12BUCA'),
	(148,2,'12ANHA','12AQPA','12BIOA','12BUCA'),
	(154,2,'12ANHA','12AQPA','12BIOA','12BUCA'),
	(158,2,'12ANHA','12AQPA','12BIOA','12BUCA'),
	(164,2,'12ANHA','12AQPA','12BIOA','12BUCA'),
	(166,2,'12ANHA','12AQPA','12BIOA','12BUCA'),
	(169,2,'12ANHA','12AQPA','12BIOA','12BUCA'),
	(170,2,'12ANHA','12AQPA','12BIOA','12BUCA'),
	(172,2,'12ANHA','12AQPA','12BIOA','12BUCA'),
	(173,2,'12ANHA','12AQPA','12BIOA','12BUCA'),
	(176,2,'12ANHA','12AQPA','12BIOA','12BUCA'),
	(201,2,'12ANHA','12AQPA','12BIOA','12BUCA'),
	(215,2,'12ANHA','12AQPA','12BIOA','12BUCA'),
	(229,2,'12ANHA','12AQPA','12BIOA','12BUCA'),
	(238,2,'12ANHA','12AQPA','12BIOA','12BUCA'),
	(241,2,'12ANHA','12AQPA','12BIOA','12BUCA'),
	(249,2,'12ANHA','12AQPA','12BIOA','12BUCA'),
	(250,2,'12ANHA','12AQPA','12BIOA','12BUCA'),
	(4,3,'12ACCA','12AQPA','12ACCA','12ANHA'),
	(10,3,'12ACCA','12AQPA','12ACCA','12ANHA'),
	(18,3,'12ACCA','12AQPA','12ACCA','12ANHA'),
	(54,3,'12ACCA','12AQPA','12ACCA','12ANHA'),
	(55,3,'12ACCA','12AQPA','12ACCA','12ANHA'),
	(61,3,'12ACCA','12AQPA','12ACCA','12ANHA'),
	(66,3,'12ACCA','12AQPA','12ACCA','12ANHA'),
	(69,3,'12ACCA','12AQPA','12ACCA','12ANHA'),
	(73,3,'12ACCA','12AQPA','12ACCA','12ANHA'),
	(82,3,'12ACCA','12AQPA','12ACCA','12ANHA'),
	(99,3,'12ACCA','12AQPA','12ACCA','12ANHA'),
	(108,3,'12ACCA','12AQPA','12ACCA','12ANHA'),
	(109,3,'12ACCA','12AQPA','12ACCA','12ANHA'),
	(124,3,'12ACCA','12AQPA','12ACCA','12ANHA'),
	(132,3,'12ACCA','12AQPA','12ACCA','12ANHA'),
	(136,3,'12ACCA','12AQPA','12ACCA','12ANHA'),
	(140,3,'12ACCA','12AQPA','12ACCA','12ANHA'),
	(145,3,'12ACCA','12AQPA','12ACCA','12ANHA'),
	(148,3,'12ACCA','12AQPA','12ACCA','12ANHA'),
	(154,3,'12ACCA','12AQPA','12ACCA','12ANHA'),
	(158,3,'12ACCA','12AQPA','12ACCA','12ANHA'),
	(164,3,'12ACCA','12AQPA','12ACCA','12ANHA'),
	(166,3,'12ACCA','12AQPA','12ACCA','12ANHA'),
	(169,3,'12ACCA','12AQPA','12ACCA','12ANHA'),
	(170,3,'12ACCA','12AQPA','12ACCA','12ANHA'),
	(172,3,'12ACCA','12AQPA','12ACCA','12ANHA'),
	(173,3,'12ACCA','12AQPA','12ACCA','12ANHA'),
	(176,3,'12ACCA','12AQPA','12ACCA','12ANHA'),
	(201,3,'12ACCA','12AQPA','12ACCA','12ANHA'),
	(215,3,'12ACCA','12AQPA','12ACCA','12ANHA'),
	(229,3,'12ACCA','12AQPA','12ACCA','12ANHA'),
	(238,3,'12ACCA','12AQPA','12ACCA','12ANHA'),
	(241,3,'12ACCA','12AQPA','12ACCA','12ANHA'),
	(249,3,'12ACCA','12AQPA','12ACCA','12ANHA'),
	(250,3,'12ACCA','12AQPA','12ACCA','12ANHA'),
	(4,4,'12ACLA','12BUCA','12BUCA','12ANHA'),
	(10,4,'12ACLA','12BUCA','12BUCA','12ANHA'),
	(18,4,'12ACLA','12BUCA','12BUCA','12ANHA'),
	(54,4,'12ACLA','12BUCA','12BUCA','12ANHA'),
	(55,4,'12ACLA','12BUCA','12BUCA','12ANHA'),
	(61,4,'12ACLA','12BUCA','12BUCA','12ANHA'),
	(66,4,'12ACLA','12BUCA','12BUCA','12ANHA'),
	(69,4,'12ACLA','12BUCA','12BUCA','12ANHA'),
	(73,4,'12ACLA','12BUCA','12BUCA','12ANHA'),
	(82,4,'12ACLA','12BUCA','12BUCA','12ANHA'),
	(99,4,'12ACLA','12BUCA','12BUCA','12ANHA'),
	(108,4,'12ACLA','12BUCA','12BUCA','12ANHA'),
	(109,4,'12ACLA','12BUCA','12BUCA','12ANHA'),
	(124,4,'12ACLA','12BUCA','12BUCA','12ANHA'),
	(132,4,'12ACLA','12BUCA','12BUCA','12ANHA'),
	(136,4,'12ACLA','12BUCA','12BUCA','12ANHA'),
	(140,4,'12ACLA','12BUCA','12BUCA','12ANHA'),
	(145,4,'12ACLA','12BUCA','12BUCA','12ANHA'),
	(148,4,'12ACLA','12BUCA','12BUCA','12ANHA'),
	(154,4,'12ACLA','12BUCA','12BUCA','12ANHA'),
	(158,4,'12ACLA','12BUCA','12BUCA','12ANHA'),
	(164,4,'12ACLA','12BUCA','12BUCA','12ANHA'),
	(166,4,'12ACLA','12BUCA','12BUCA','12ANHA'),
	(169,4,'12ACLA','12BUCA','12BUCA','12ANHA'),
	(170,4,'12ACLA','12BUCA','12BUCA','12ANHA'),
	(172,4,'12ACLA','12BUCA','12BUCA','12ANHA'),
	(173,4,'12ACLA','12BUCA','12BUCA','12ANHA'),
	(176,4,'12ACLA','12BUCA','12BUCA','12ANHA'),
	(201,4,'12ACLA','12BUCA','12BUCA','12ANHA'),
	(215,4,'12ACLA','12BUCA','12BUCA','12ANHA'),
	(229,4,'12ACLA','12BUCA','12BUCA','12ANHA'),
	(238,4,'12ACLA','12BUCA','12BUCA','12ANHA'),
	(241,4,'12ACLA','12BUCA','12BUCA','12ANHA'),
	(249,4,'12ACLA','12BUCA','12BUCA','12ANHA'),
	(250,4,'12ACLA','12BUCA','12BUCA','12ANHA'),
	(4,5,'12ANHA','12AQPA','12BIOA','12ANHA'),
	(10,5,'12ANHA','12AQPA','12BIOA','12ANHA'),
	(18,5,'12ANHA','12AQPA','12BIOA','12ANHA'),
	(54,5,'12ANHA','12AQPA','12BIOA','12ANHA'),
	(55,5,'12ANHA','12AQPA','12BIOA','12ANHA'),
	(61,5,'12ANHA','12AQPA','12BIOA','12ANHA'),
	(66,5,'12ANHA','12AQPA','12BIOA','12ANHA'),
	(69,5,'12ANHA','12AQPA','12BIOA','12ANHA'),
	(73,5,'12ANHA','12AQPA','12BIOA','12ANHA'),
	(82,5,'12ANHA','12AQPA','12BIOA','12ANHA'),
	(99,5,'12ANHA','12AQPA','12BIOA','12ANHA'),
	(108,5,'12ANHA','12AQPA','12BIOA','12ANHA'),
	(109,5,'12ANHA','12AQPA','12BIOA','12ANHA'),
	(124,5,'12ANHA','12AQPA','12BIOA','12ANHA'),
	(132,5,'12ANHA','12AQPA','12BIOA','12ANHA'),
	(136,5,'12ANHA','12AQPA','12BIOA','12ANHA'),
	(140,5,'12ANHA','12AQPA','12BIOA','12ANHA'),
	(145,5,'12ANHA','12AQPA','12BIOA','12ANHA'),
	(148,5,'12ANHA','12AQPA','12BIOA','12ANHA'),
	(154,5,'12ANHA','12AQPA','12BIOA','12ANHA'),
	(158,5,'12ANHA','12AQPA','12BIOA','12ANHA'),
	(164,5,'12ANHA','12AQPA','12BIOA','12ANHA'),
	(166,5,'12ANHA','12AQPA','12BIOA','12ANHA'),
	(169,5,'12ANHA','12AQPA','12BIOA','12ANHA'),
	(170,5,'12ANHA','12AQPA','12BIOA','12ANHA'),
	(172,5,'12ANHA','12AQPA','12BIOA','12ANHA'),
	(173,5,'12ANHA','12AQPA','12BIOA','12ANHA'),
	(176,5,'12ANHA','12AQPA','12BIOA','12ANHA'),
	(201,5,'12ANHA','12AQPA','12BIOA','12ANHA'),
	(215,5,'12ANHA','12AQPA','12BIOA','12ANHA'),
	(229,5,'12ANHA','12AQPA','12BIOA','12ANHA'),
	(238,5,'12ANHA','12AQPA','12BIOA','12ANHA'),
	(241,5,'12ANHA','12AQPA','12BIOA','12ANHA'),
	(249,5,'12ANHA','12AQPA','12BIOA','12ANHA'),
	(250,5,'12ANHA','12AQPA','12BIOA','12ANHA'),
	(4,6,'12ACLA','12BUCA','12ACCA','12BCTA'),
	(10,6,'12ACLA','12BUCA','12ACCA','12BCTA'),
	(18,6,'12ACLA','12BUCA','12ACCA','12BCTA'),
	(54,6,'12ACLA','12BUCA','12ACCA','12BCTA'),
	(55,6,'12ACLA','12BUCA','12ACCA','12BCTA'),
	(61,6,'12ACLA','12BUCA','12ACCA','12BCTA'),
	(66,6,'12ACLA','12BUCA','12ACCA','12BCTA'),
	(69,6,'12ACLA','12BUCA','12ACCA','12BCTA'),
	(73,6,'12ACLA','12BUCA','12ACCA','12BCTA'),
	(82,6,'12ACLA','12BUCA','12ACCA','12BCTA'),
	(99,6,'12ACLA','12BUCA','12ACCA','12BCTA'),
	(108,6,'12ACLA','12BUCA','12ACCA','12BCTA'),
	(109,6,'12ACLA','12BUCA','12ACCA','12BCTA'),
	(124,6,'12ACLA','12BUCA','12ACCA','12BCTA'),
	(132,6,'12ACLA','12BUCA','12ACCA','12BCTA'),
	(136,6,'12ACLA','12BUCA','12ACCA','12BCTA'),
	(140,6,'12ACLA','12BUCA','12ACCA','12BCTA'),
	(145,6,'12ACLA','12BUCA','12ACCA','12BCTA'),
	(148,6,'12ACLA','12BUCA','12ACCA','12BCTA'),
	(154,6,'12ACLA','12BUCA','12ACCA','12BCTA'),
	(158,6,'12ACLA','12BUCA','12ACCA','12BCTA'),
	(164,6,'12ACLA','12BUCA','12ACCA','12BCTA'),
	(166,6,'12ACLA','12BUCA','12ACCA','12BCTA'),
	(169,6,'12ACLA','12BUCA','12ACCA','12BCTA'),
	(170,6,'12ACLA','12BUCA','12ACCA','12BCTA'),
	(172,6,'12ACLA','12BUCA','12ACCA','12BCTA'),
	(173,6,'12ACLA','12BUCA','12ACCA','12BCTA'),
	(176,6,'12ACLA','12BUCA','12ACCA','12BCTA'),
	(201,6,'12ACLA','12BUCA','12ACCA','12BCTA'),
	(215,6,'12ACLA','12BUCA','12ACCA','12BCTA'),
	(229,6,'12ACLA','12BUCA','12ACCA','12BCTA'),
	(238,6,'12ACLA','12BUCA','12ACCA','12BCTA'),
	(241,6,'12ACLA','12BUCA','12ACCA','12BCTA'),
	(249,6,'12ACLA','12BUCA','12ACCA','12BCTA'),
	(250,6,'12ACLA','12BUCA','12ACCA','12BCTA'),
	(4,7,'12ACLA','12BUCA','12ACCA','12ANHA'),
	(10,7,'12ACLA','12BUCA','12ACCA','12ANHA'),
	(18,7,'12ACLA','12BUCA','12ACCA','12ANHA'),
	(54,7,'12ACLA','12BUCA','12ACCA','12ANHA'),
	(55,7,'12ACLA','12BUCA','12ACCA','12ANHA'),
	(61,7,'12ACLA','12BUCA','12ACCA','12ANHA'),
	(66,7,'12ACLA','12BUCA','12ACCA','12ANHA'),
	(69,7,'12ACLA','12BUCA','12ACCA','12ANHA'),
	(73,7,'12ACLA','12BUCA','12ACCA','12ANHA'),
	(82,7,'12ACLA','12BUCA','12ACCA','12ANHA'),
	(99,7,'12ACLA','12BUCA','12ACCA','12ANHA'),
	(108,7,'12ACLA','12BUCA','12ACCA','12ANHA'),
	(109,7,'12ACLA','12BUCA','12ACCA','12ANHA'),
	(124,7,'12ACLA','12BUCA','12ACCA','12ANHA'),
	(132,7,'12ACLA','12BUCA','12ACCA','12ANHA'),
	(136,7,'12ACLA','12BUCA','12ACCA','12ANHA'),
	(140,7,'12ACLA','12BUCA','12ACCA','12ANHA'),
	(145,7,'12ACLA','12BUCA','12ACCA','12ANHA'),
	(148,7,'12ACLA','12BUCA','12ACCA','12ANHA'),
	(154,7,'12ACLA','12BUCA','12ACCA','12ANHA'),
	(158,7,'12ACLA','12BUCA','12ACCA','12ANHA'),
	(164,7,'12ACLA','12BUCA','12ACCA','12ANHA'),
	(166,7,'12ACLA','12BUCA','12ACCA','12ANHA'),
	(169,7,'12ACLA','12BUCA','12ACCA','12ANHA'),
	(170,7,'12ACLA','12BUCA','12ACCA','12ANHA'),
	(172,7,'12ACLA','12BUCA','12ACCA','12ANHA'),
	(173,7,'12ACLA','12BUCA','12ACCA','12ANHA'),
	(176,7,'12ACLA','12BUCA','12ACCA','12ANHA'),
	(201,7,'12ACLA','12BUCA','12ACCA','12ANHA'),
	(215,7,'12ACLA','12BUCA','12ACCA','12ANHA'),
	(229,7,'12ACLA','12BUCA','12ACCA','12ANHA'),
	(238,7,'12ACLA','12BUCA','12ACCA','12ANHA'),
	(241,7,'12ACLA','12BUCA','12ACCA','12ANHA'),
	(249,7,'12ACLA','12BUCA','12ACCA','12ANHA'),
	(250,7,'12ACLA','12BUCA','12ACCA','12ANHA'),
	(4,8,'12BIOA','12AQPA','12BUCA','12BIOA'),
	(10,8,'12BIOA','12AQPA','12BUCA','12BIOA'),
	(18,8,'12BIOA','12AQPA','12BUCA','12BIOA'),
	(54,8,'12BIOA','12AQPA','12BUCA','12BIOA'),
	(55,8,'12BIOA','12AQPA','12BUCA','12BIOA'),
	(61,8,'12BIOA','12AQPA','12BUCA','12BIOA'),
	(66,8,'12BIOA','12AQPA','12BUCA','12BIOA'),
	(69,8,'12BIOA','12AQPA','12BUCA','12BIOA'),
	(73,8,'12BIOA','12AQPA','12BUCA','12BIOA'),
	(82,8,'12BIOA','12AQPA','12BUCA','12BIOA'),
	(99,8,'12BIOA','12AQPA','12BUCA','12BIOA'),
	(108,8,'12BIOA','12AQPA','12BUCA','12BIOA'),
	(109,8,'12BIOA','12AQPA','12BUCA','12BIOA'),
	(124,8,'12BIOA','12AQPA','12BUCA','12BIOA'),
	(132,8,'12BIOA','12AQPA','12BUCA','12BIOA'),
	(136,8,'12BIOA','12AQPA','12BUCA','12BIOA'),
	(140,8,'12BIOA','12AQPA','12BUCA','12BIOA'),
	(145,8,'12BIOA','12AQPA','12BUCA','12BIOA'),
	(148,8,'12BIOA','12AQPA','12BUCA','12BIOA'),
	(154,8,'12BIOA','12AQPA','12BUCA','12BIOA'),
	(158,8,'12BIOA','12AQPA','12BUCA','12BIOA'),
	(164,8,'12BIOA','12AQPA','12BUCA','12BIOA'),
	(166,8,'12BIOA','12AQPA','12BUCA','12BIOA'),
	(169,8,'12BIOA','12AQPA','12BUCA','12BIOA'),
	(170,8,'12BIOA','12AQPA','12BUCA','12BIOA'),
	(172,8,'12BIOA','12AQPA','12BUCA','12BIOA'),
	(173,8,'12BIOA','12AQPA','12BUCA','12BIOA'),
	(176,8,'12BIOA','12AQPA','12BUCA','12BIOA'),
	(201,8,'12BIOA','12AQPA','12BUCA','12BIOA'),
	(215,8,'12BIOA','12AQPA','12BUCA','12BIOA'),
	(229,8,'12BIOA','12AQPA','12BUCA','12BIOA'),
	(238,8,'12BIOA','12AQPA','12BUCA','12BIOA'),
	(241,8,'12BIOA','12AQPA','12BUCA','12BIOA'),
	(249,8,'12BIOA','12AQPA','12BUCA','12BIOA'),
	(250,8,'12BIOA','12AQPA','12BUCA','12BIOA'),
	(4,9,'12BCTA','12BCTA','12ANHA','12BIOA'),
	(10,9,'12BCTA','12BCTA','12ANHA','12BIOA'),
	(18,9,'12BCTA','12BCTA','12ANHA','12BIOA'),
	(54,9,'12BCTA','12BCTA','12ANHA','12BIOA'),
	(55,9,'12BCTA','12BCTA','12ANHA','12BIOA'),
	(61,9,'12BCTA','12BCTA','12ANHA','12BIOA'),
	(66,9,'12BCTA','12BCTA','12ANHA','12BIOA'),
	(69,9,'12BCTA','12BCTA','12ANHA','12BIOA'),
	(73,9,'12BCTA','12BCTA','12ANHA','12BIOA'),
	(82,9,'12BCTA','12BCTA','12ANHA','12BIOA'),
	(99,9,'12BCTA','12BCTA','12ANHA','12BIOA'),
	(108,9,'12BCTA','12BCTA','12ANHA','12BIOA'),
	(109,9,'12BCTA','12BCTA','12ANHA','12BIOA'),
	(124,9,'12BCTA','12BCTA','12ANHA','12BIOA'),
	(132,9,'12BCTA','12BCTA','12ANHA','12BIOA'),
	(136,9,'12BCTA','12BCTA','12ANHA','12BIOA'),
	(140,9,'12BCTA','12BCTA','12ANHA','12BIOA'),
	(145,9,'12BCTA','12BCTA','12ANHA','12BIOA'),
	(148,9,'12BCTA','12BCTA','12ANHA','12BIOA'),
	(154,9,'12BCTA','12BCTA','12ANHA','12BIOA'),
	(158,9,'12BCTA','12BCTA','12ANHA','12BIOA'),
	(164,9,'12BCTA','12BCTA','12ANHA','12BIOA'),
	(166,9,'12BCTA','12BCTA','12ANHA','12BIOA'),
	(169,9,'12BCTA','12BCTA','12ANHA','12BIOA'),
	(170,9,'12BCTA','12BCTA','12ANHA','12BIOA'),
	(172,9,'12BCTA','12BCTA','12ANHA','12BIOA'),
	(173,9,'12BCTA','12BCTA','12ANHA','12BIOA'),
	(176,9,'12BCTA','12BCTA','12ANHA','12BIOA'),
	(201,9,'12BCTA','12BCTA','12ANHA','12BIOA'),
	(215,9,'12BCTA','12BCTA','12ANHA','12BIOA'),
	(229,9,'12BCTA','12BCTA','12ANHA','12BIOA'),
	(238,9,'12BCTA','12BCTA','12ANHA','12BIOA'),
	(241,9,'12BCTA','12BCTA','12ANHA','12BIOA'),
	(249,9,'12BCTA','12BCTA','12ANHA','12BIOA'),
	(250,9,'12BCTA','12BCTA','12ANHA','12BIOA');

/*!40000 ALTER TABLE `time_table` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `userID` int(10) NOT NULL,
  `username` varchar(30) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `prefix` varchar(5) DEFAULT NULL,
  `password` varchar(5) NOT NULL,
  `dob` date NOT NULL,
  `grad_year` int(4) NOT NULL,
  `house` varchar(2) DEFAULT NULL,
  `house_group` int(1) DEFAULT NULL,
  `teacher_status` int(1) NOT NULL,
  `admin_status` int(1) NOT NULL,
  `photo_url` varchar(200) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`userID`, `username`, `firstname`, `lastname`, `prefix`, `password`, `dob`, `grad_year`, `house`, `house_group`, `teacher_status`, `admin_status`, `photo_url`, `email`)
VALUES
	(0,'520raeetoms','Tomson','Raees','Mrs','rcfsb','2005-01-05',2020,'Ma',4,1,1,'/image/profile-pic263','520raeetoms@shalomcollege.com'),
	(4,'520guerleon','Leon','Guerin','','xm948','2003-05-23',2017,'Ma',4,0,0,'/image/profile-pic4','520guerleon@shalomcollege.com'),
	(10,'520bhaakiar','Kiaran','Bhaaldeen','','v6wlo','2005-11-12',2017,'Wa',7,0,0,'/image/profile-pic10','520bhaakiar@shalomcollege.com'),
	(18,'520tierbyro','Byron','Tiernan','','9viqm','2005-09-18',2017,'Li',4,0,0,'/image/profile-pic18','520tierbyro@shalomcollege.com'),
	(54,'520nicktayl','Taylar','Nickson','','7o3my','2003-04-14',2017,'Ri',4,0,0,'/image/profile-pic54','520nicktayl@shalomcollege.com'),
	(55,'520hopedawu','Dawud','Hope','','ba2yx','2000-12-18',2017,'Ch',3,0,0,'/image/profile-pic55','520hopedawu@shalomcollege.com'),
	(61,'520corirhys','Rhys','Corin','','mee5p','2001-04-16',2017,'Ch',1,0,0,'/image/profile-pic61','520corirhys@shalomcollege.com'),
	(66,'520zachrexf','Rexford','Zachariah','Mr','w79lj','1990-03-28',2017,'Li',6,0,0,'/image/profile-pic66','520zachrexf@shalomcollege.com'),
	(69,'520krisforr','Forrest','Kristian','','jw97w','2000-10-09',2017,'Mc',6,0,0,'/image/profile-pic69','520krisforr@shalomcollege.com'),
	(73,'520orricrom','Crombie','Orrin','','el40q','1999-08-13',2017,'Li',4,0,0,'/image/profile-pic73','520orricrom@shalomcollege.com'),
	(82,'520ramaijay','Ijay','Ramanas','','73bdv','2004-10-26',2017,'Ri',2,0,0,'/image/profile-pic82','520ramaijay@shalomcollege.com'),
	(99,'520salvqiru','Qirui','Salvador','','u8e2w','2004-12-02',2017,'Mc',3,0,0,'/image/profile-pic99','520salvqiru@shalomcollege.com'),
	(108,'520taylbenj','Benji','Taylor-Jay','Ms','prty2','1968-06-08',2017,'Li',5,0,0,'/image/profile-pic108','520taylbenj@shalomcollege.com'),
	(109,'520gurvamme','Ammer','Gurveer','','fkesi','2003-09-05',2017,'Ch',4,0,0,'/image/profile-pic109','520gurvamme@shalomcollege.com'),
	(124,'520asfhaili','Ailin','Asfhan','','c5y7z','2005-11-16',2017,'Li',3,0,0,'/image/profile-pic124','520asfhaili@shalomcollege.com'),
	(132,'520caliscot','Scott','Calib','','m0egf','1999-11-24',2017,'Ho',7,0,0,'/image/profile-pic132','520caliscot@shalomcollege.com'),
	(136,'520eonanath','Nathanael','Eonan','','f4rbn','1999-06-09',2017,'Ho',5,0,0,'/image/profile-pic136','520eonanath@shalomcollege.com'),
	(140,'520aceberk','Berkay','Ace','','ymf94','2000-08-02',2017,'Mc',1,0,0,'/image/profile-pic140','520aceberk@shalomcollege.com'),
	(145,'520mikedary','Daryn','Mikee','','xc1p6','1999-12-02',2017,'Ch',6,0,0,'/image/profile-pic145','520mikedary@shalomcollege.com'),
	(148,'520jaysblai','Blaire','Jayse','','10q7l','2002-03-28',2017,'Ri',7,0,0,'/image/profile-pic148','520jaysblai@shalomcollege.com'),
	(154,'520krisjona','Jonathon','Kriss','','7dupq','2002-01-04',2017,'Ma',4,0,0,'/image/profile-pic154','520krisjona@shalomcollege.com'),
	(158,'520glensayf','Sayf','Glenn','','w199v','2005-11-23',2017,'Ad',6,0,0,'/image/profile-pic158','520glensayf@shalomcollege.com'),
	(164,'520lennbrea','Breandan','Lennon','','wlrwd','2000-04-19',2017,'Wa',5,0,0,'/image/profile-pic164','520lennbrea@shalomcollege.com'),
	(166,'520dawiloki','Loki','Dawid','','vr6gn','2000-09-28',2017,'Ch',7,0,0,'/image/profile-pic166','520dawiloki@shalomcollege.com'),
	(169,'520arefmath','Mathew','Aref','','edxoe','1999-08-25',2017,'Ma',6,0,0,'/image/profile-pic169','520arefmath@shalomcollege.com'),
	(170,'520jedisame','Sameer','Jedidiah','','zsfju','2005-11-25',2017,'Ch',3,0,0,'/image/profile-pic170','520jedisame@shalomcollege.com'),
	(172,'520adrisagh','Saghun','Adrien','','healh','1999-01-09',2017,'Ma',1,0,0,'/image/profile-pic172','520adrisagh@shalomcollege.com'),
	(173,'520lewiryhs','Ryhs','Lewis','','fajhe','1999-03-09',2017,'Li',7,0,0,'/image/profile-pic173','520lewiryhs@shalomcollege.com'),
	(176,'520mattkail','Kailin','Matthew','','n9ose','2000-09-17',2017,'Ma',1,0,0,'/image/profile-pic176','520mattkail@shalomcollege.com'),
	(201,'520koreasim','Asim','Korey','','es7a2','2005-08-23',2017,'Ch',3,0,0,'/image/profile-pic201','520koreasim@shalomcollege.com'),
	(215,'520corigiri','Girijan','Corin','','qdpa6','2000-03-14',2017,'Wa',1,0,0,'/image/profile-pic215','520corigiri@shalomcollege.com'),
	(229,'520trisemer','Emerson','Tristan','','ifhe5','2002-11-12',2017,'Mc',7,0,0,'/image/profile-pic229','520trisemer@shalomcollege.com'),
	(238,'520nassmatt','Matteo','Nasser','','hbw4k','2000-02-08',2017,'Mc',5,0,0,'/image/profile-pic238','520nassmatt@shalomcollege.com'),
	(241,'520satvfind','Findlay','Satveer','','k39wf','2005-03-26',2017,'Mc',2,0,0,'/image/profile-pic241','520satvfind@shalomcollege.com'),
	(249,'520dhansahb','Sahbian','Dhani','','5uyq5','2001-08-25',2017,'Wa',4,0,0,'/image/profile-pic249','520dhansahb@shalomcollege.com'),
	(250,'520bradkira','Kiran','Braden','','yb3ty','1999-02-04',2017,'Ad',3,0,0,'/image/profile-pic250','520bradkira@shalomcollege.com'),
	(252,'520alfeazla','Azlan','Alfee','Mrs','s7bvl','2001-02-12',2017,'Ri',5,1,0,'/image/profile-pic252','520alfeazla@shalomcollege.com'),
	(253,'520kierargy','Argyle','Kieran','Mr','yweka','2000-05-25',2022,'Ch',3,1,0,'/image/profile-pic253','520kierargy@shalomcollege.com'),
	(254,'520sethlawl','Lawlyn','Seth','Miss','stpu9','2005-12-28',2019,'Ch',5,1,0,'/image/profile-pic254','520sethlawl@shalomcollege.com'),
	(255,'520graesalm','Salman','Graeme','Ms','snrrb','2005-06-09',2021,'Ad',7,1,0,'/image/profile-pic255','520graesalm@shalomcollege.com'),
	(256,'520robbkale','Kaleb','Robbie','Mr','z5c7d','2003-09-20',2021,'Ch',2,1,0,'/image/profile-pic256','520robbkale@shalomcollege.com'),
	(257,'520stefkabi','Kabir','Stefan','','nk656','2001-02-01',2019,'Ri',4,0,0,'/image/profile-pic257','520stefkabi@shalomcollege.com'),
	(258,'520morgryle','Ryley','Morgyn','Miss','mbl2v','2002-03-05',2019,'Mc',6,1,0,'/image/profile-pic258','520morgryle@shalomcollege.com'),
	(260,'520georkoby','Koby','Georgia','Ms','6pmx6','1958-10-06',0,'Ma',3,0,0,'/image/profile-pic260','520georkoby@shalomcollege.com'),
	(261,'520cesadigb','Digby','Cesare','Miss','reahj','1957-06-25',0,'Ch',5,1,1,'/image/profile-pic261','520cesadigb@shalomcollege.com'),
	(262,'520kurtkyna','Kynan','Kurt','Ms','yn0pw','2002-02-08',2020,'Ho',3,1,1,'/image/profile-pic262','520kurtkyna@shalomcollege.com'),
	(264,'520taoncarl','Carlos','Taonga','Mr','8xy7w','2005-02-08',2021,'Li',3,1,1,'/image/profile-pic264','520taoncarl@shalomcollege.com'),
	(265,'520inanrubh','Rubhan','Inan','Mr','pt40m','2001-03-23',2019,'Ma',1,1,1,'/image/profile-pic265','520inanrubh@shalomcollege.com'),
	(266,'520chrizeph','Zeph','Chris;opher','Mrs','1nroi','1966-05-27',0,'Ho',1,1,1,'/image/profile-pic266','520chrizeph@shalomcollege.com');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
