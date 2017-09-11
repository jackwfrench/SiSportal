# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.6.28)
# Database: sisportal
# Generation Time: 2017-09-10 17:39:56 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table activity
# ------------------------------------------------------------

DROP TABLE IF EXISTS `activity`;

CREATE TABLE `activity` (
  `activityID` int(11) NOT NULL AUTO_INCREMENT,
  `classcode` varchar(10) NOT NULL,
  `activity_name` varchar(100) NOT NULL,
  `activity_desc` varchar(1000) NOT NULL,
  `date_due` date NOT NULL,
  PRIMARY KEY (`activityID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `activity` WRITE;
/*!40000 ALTER TABLE `activity` DISABLE KEYS */;

INSERT INTO `activity` (`activityID`, `classcode`, `activity_name`, `activity_desc`, `date_due`)
VALUES
	(1,'12ACCA','Business booklet\'s complete','Booklet\'s must be complete by tomorrow the 28th','2021-10-11'),
	(2,'12AQPA','Physics booklet\'s complete','Booklet\'s must be complete by tomorrow the 28th','2021-10-11');

/*!40000 ALTER TABLE `activity` ENABLE KEYS */;
UNLOCK TABLES;


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
  `assesmentID` int(10) NOT NULL AUTO_INCREMENT,
  `classcode` varchar(7) NOT NULL,
  `assesment_name` varchar(100) NOT NULL,
  `date_given` date NOT NULL,
  `date_due` date NOT NULL,
  PRIMARY KEY (`assesmentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `assesment` WRITE;
/*!40000 ALTER TABLE `assesment` DISABLE KEYS */;

INSERT INTO `assesment` (`assesmentID`, `classcode`, `assesment_name`, `date_given`, `date_due`)
VALUES
	(1,'12BUCA','Business and the living 2.3','2017-08-10','2017-08-10'),
	(2,'12BUCA','Law in society 2.3','2017-08-10','2017-08-10');

/*!40000 ALTER TABLE `assesment` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table assesment_results
# ------------------------------------------------------------

DROP TABLE IF EXISTS `assesment_results`;

CREATE TABLE `assesment_results` (
  `assesmentID` int(10) NOT NULL,
  `classcode` varchar(30) NOT NULL,
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

LOCK TABLES `assesment_results` WRITE;
/*!40000 ALTER TABLE `assesment_results` DISABLE KEYS */;

INSERT INTO `assesment_results` (`assesmentID`, `classcode`, `userID`, `c1`, `c1_mark`, `c2`, `c2_mark`, `c3`, `c3_mark`, `final_result`, `view_status`)
VALUES
	(1,'12BUCA',4,'Kaps','A+','Communication','A+','Maps','A+','A+','p'),
	(2,'12BUCA',4,'Kaps','A+','Communication','A+','Maps','A+','A+','p');

/*!40000 ALTER TABLE `assesment_results` ENABLE KEYS */;
UNLOCK TABLES;


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
	('12ANHA',252,'Ri1'),
	('12AQPA',253,'Ho2'),
	('12BCTA',252,'Ch3'),
	('12BIOA',253,'Wa5'),
	('12BUCA',252,'Ma2');

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
  PRIMARY KEY (`noticeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `notices` WRITE;
/*!40000 ALTER TABLE `notices` DISABLE KEYS */;

INSERT INTO `notices` (`noticeID`, `userID`, `activity`, `notice_comment`, `through_date`)
VALUES
	(0,0,'Table Tennis','Could all student\'s interested in playing table tennis this year please meet Mr Cave at classroom 1A at lunchtime today','0000-00-00'),
	(1,0,'Maths B','Can all maths B students please checkout today','0000-00-00');

/*!40000 ALTER TABLE `notices` ENABLE KEYS */;
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

LOCK TABLES `student_subject` WRITE;
/*!40000 ALTER TABLE `student_subject` DISABLE KEYS */;

INSERT INTO `student_subject` (`userID`, `classcode`)
VALUES
	(4,'12ACCA'),
	(4,'12ACLA'),
	(4,'12ANHA'),
	(4,'12AQPA'),
	(4,'12BCTA'),
	(4,'12BIOA'),
	(4,'12BUCA'),
	(10,'12ACCA'),
	(10,'12ACLA'),
	(10,'12ANHA'),
	(10,'12AQPA'),
	(10,'12BCTA'),
	(10,'12BIOA'),
	(10,'12BUCA'),
	(18,'12ACCA'),
	(18,'12ACLA'),
	(18,'12ANHA'),
	(18,'12AQPA'),
	(18,'12BCTA'),
	(18,'12BIOA'),
	(18,'12BUCA'),
	(54,'12ACCA'),
	(54,'12ACLA'),
	(54,'12ANHA'),
	(54,'12AQPA'),
	(54,'12BCTA'),
	(54,'12BIOA'),
	(54,'12BUCA'),
	(55,'12ACCA'),
	(55,'12ACLA'),
	(55,'12ANHA'),
	(55,'12AQPA'),
	(55,'12BCTA'),
	(55,'12BIOA'),
	(55,'12BUCA'),
	(61,'12ACCA'),
	(61,'12ACLA'),
	(61,'12ANHA'),
	(61,'12AQPA'),
	(61,'12BCTA'),
	(61,'12BIOA'),
	(61,'12BUCA'),
	(66,'12ACCA'),
	(66,'12ACLA'),
	(66,'12ANHA'),
	(66,'12AQPA'),
	(66,'12BCTA'),
	(66,'12BIOA'),
	(66,'12BUCA'),
	(69,'12ACCA'),
	(69,'12ACLA'),
	(69,'12ANHA'),
	(69,'12AQPA'),
	(69,'12BCTA'),
	(69,'12BIOA'),
	(69,'12BUCA'),
	(73,'12ACCA'),
	(73,'12ACLA'),
	(73,'12ANHA'),
	(73,'12AQPA'),
	(73,'12BCTA'),
	(73,'12BIOA'),
	(73,'12BUCA'),
	(82,'12ACCA'),
	(82,'12ACLA'),
	(82,'12ANHA'),
	(82,'12AQPA'),
	(82,'12BCTA'),
	(82,'12BIOA'),
	(82,'12BUCA'),
	(99,'12ACCA'),
	(99,'12ACLA'),
	(99,'12ANHA'),
	(99,'12AQPA'),
	(99,'12BCTA'),
	(99,'12BIOA'),
	(99,'12BUCA'),
	(108,'12ACCA'),
	(108,'12ACLA'),
	(108,'12ANHA'),
	(108,'12AQPA'),
	(108,'12BCTA'),
	(108,'12BIOA'),
	(108,'12BUCA'),
	(109,'12ACCA'),
	(109,'12ACLA'),
	(109,'12ANHA'),
	(109,'12AQPA'),
	(109,'12BCTA'),
	(109,'12BIOA'),
	(109,'12BUCA'),
	(124,'12ACCA'),
	(124,'12ACLA'),
	(124,'12ANHA'),
	(124,'12AQPA'),
	(124,'12BCTA'),
	(124,'12BIOA'),
	(124,'12BUCA'),
	(132,'12ACCA'),
	(132,'12ACLA'),
	(132,'12ANHA'),
	(132,'12AQPA'),
	(132,'12BCTA'),
	(132,'12BIOA'),
	(132,'12BUCA'),
	(136,'12ACCA'),
	(136,'12ACLA'),
	(136,'12ANHA'),
	(136,'12AQPA'),
	(136,'12BCTA'),
	(136,'12BIOA'),
	(136,'12BUCA'),
	(140,'12ACCA'),
	(140,'12ACLA'),
	(140,'12ANHA'),
	(140,'12AQPA'),
	(140,'12BCTA'),
	(140,'12BIOA'),
	(140,'12BUCA'),
	(145,'12ACCA'),
	(145,'12ACLA'),
	(145,'12ANHA'),
	(145,'12AQPA'),
	(145,'12BCTA'),
	(145,'12BIOA'),
	(145,'12BUCA'),
	(148,'12ACCA'),
	(148,'12ACLA'),
	(148,'12ANHA'),
	(148,'12AQPA'),
	(148,'12BCTA'),
	(148,'12BIOA'),
	(148,'12BUCA'),
	(154,'12ACCA'),
	(154,'12ACLA'),
	(154,'12ANHA'),
	(154,'12AQPA'),
	(154,'12BCTA'),
	(154,'12BIOA'),
	(154,'12BUCA'),
	(158,'12ACCA'),
	(158,'12ACLA'),
	(158,'12ANHA'),
	(158,'12AQPA'),
	(158,'12BCTA'),
	(158,'12BIOA'),
	(158,'12BUCA'),
	(164,'12ACCA'),
	(164,'12ACLA'),
	(164,'12ANHA'),
	(164,'12AQPA'),
	(164,'12BCTA'),
	(164,'12BIOA'),
	(164,'12BUCA'),
	(166,'12ACCA'),
	(166,'12ACLA'),
	(166,'12ANHA'),
	(166,'12AQPA'),
	(166,'12BCTA'),
	(166,'12BIOA'),
	(166,'12BUCA'),
	(169,'12ACCA'),
	(169,'12ACLA'),
	(169,'12ANHA'),
	(169,'12AQPA'),
	(169,'12BCTA'),
	(169,'12BIOA'),
	(169,'12BUCA'),
	(170,'12ACCA'),
	(170,'12ACLA'),
	(170,'12ANHA'),
	(170,'12AQPA'),
	(170,'12BCTA'),
	(170,'12BIOA'),
	(170,'12BUCA'),
	(172,'12ACCA'),
	(172,'12ACLA'),
	(172,'12ANHA'),
	(172,'12AQPA'),
	(172,'12BCTA'),
	(172,'12BIOA'),
	(172,'12BUCA'),
	(173,'12ACCA'),
	(173,'12ACLA'),
	(173,'12ANHA'),
	(173,'12AQPA'),
	(173,'12BCTA'),
	(173,'12BIOA'),
	(173,'12BUCA'),
	(176,'12ACCA'),
	(176,'12ACLA'),
	(176,'12ANHA'),
	(176,'12AQPA'),
	(176,'12BCTA'),
	(176,'12BIOA'),
	(176,'12BUCA'),
	(201,'12ACCA'),
	(201,'12ACLA'),
	(201,'12ANHA'),
	(201,'12AQPA'),
	(201,'12BCTA'),
	(201,'12BIOA'),
	(201,'12BUCA'),
	(215,'12ACCA'),
	(215,'12ACLA'),
	(215,'12ANHA'),
	(215,'12AQPA'),
	(215,'12BCTA'),
	(215,'12BIOA'),
	(215,'12BUCA'),
	(229,'12ACCA'),
	(229,'12ACLA'),
	(229,'12ANHA'),
	(229,'12AQPA'),
	(229,'12BCTA'),
	(229,'12BIOA'),
	(229,'12BUCA'),
	(238,'12ACCA'),
	(238,'12ACLA'),
	(238,'12ANHA'),
	(238,'12AQPA'),
	(238,'12BCTA'),
	(238,'12BIOA'),
	(238,'12BUCA'),
	(241,'12ACCA'),
	(241,'12ACLA'),
	(241,'12ANHA'),
	(241,'12AQPA'),
	(241,'12BCTA'),
	(241,'12BIOA'),
	(241,'12BUCA'),
	(249,'12ACCA'),
	(249,'12ACLA'),
	(249,'12ANHA'),
	(249,'12AQPA'),
	(249,'12BCTA'),
	(249,'12BIOA'),
	(249,'12BUCA'),
	(250,'12ACCA'),
	(250,'12ACLA'),
	(250,'12ANHA'),
	(250,'12AQPA'),
	(250,'12BCTA'),
	(250,'12BIOA'),
	(250,'12BUCA');

/*!40000 ALTER TABLE `student_subject` ENABLE KEYS */;
UNLOCK TABLES;


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
	(250,9,'12BCTA','12BCTA','12ANHA','12BIOA'),
	(252,1,'12BUCA','spare','12ACCA','spare'),
	(252,2,'12ANHA','spare','Spare','12BUCA'),
	(252,3,'12ACCA','spare','12ACCA','12ANHA'),
	(252,4,'spare','12BUCA','12BUCA','12ANHA'),
	(252,5,'12ANHA','spare','spare','12ANHA'),
	(252,6,'spare','12BUCA','12ACCA','12BCTA'),
	(252,7,'spare','12BUCA','12ACCA','12ANHA'),
	(252,8,'spare','spare','12BUCA','spare'),
	(252,9,'12BCTA','12BCTA','12ANHA','spare'),
	(253,1,'spare','12APQA','spare','12BIOA'),
	(253,2,'spare','12APQA','12BIOA','spare'),
	(253,3,'spare','12APQA','spare','spare'),
	(253,4,'12ACLA','spare','spare','spare'),
	(253,5,'spare','12APQA','12BIOA','spare'),
	(253,6,'12ACLA','spare','spare','spare'),
	(253,7,'12ACLA','spare','spare','spare'),
	(253,8,'12BIOA','12APQA','spare','12BIOA'),
	(253,9,'spare','spare','spare','spare');

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
