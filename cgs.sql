-- MariaDB dump 10.19  Distrib 10.4.28-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: cgs
-- ------------------------------------------------------
-- Server version	10.4.28-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cadet`
--

DROP TABLE IF EXISTS `cadet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cadet` (
  `cadet_id` int(11) NOT NULL AUTO_INCREMENT,
  `afpsn` varchar(5) NOT NULL,
  `servid` varchar(1) DEFAULT NULL,
  `majid` varchar(2) DEFAULT NULL,
  `yrgr` varchar(4) NOT NULL,
  `oyrgr` varchar(4) NOT NULL,
  `lname` varchar(16) NOT NULL,
  `fname` varchar(25) NOT NULL,
  `aname` varchar(4) DEFAULT NULL,
  `mname` varchar(16) DEFAULT NULL,
  `initls` varchar(8) DEFAULT NULL,
  `gender` varchar(1) NOT NULL,
  `bdate` datetime DEFAULT NULL,
  `bplace` varchar(30) DEFAULT NULL,
  `papa` varchar(30) DEFAULT NULL,
  `padead` bit(1) DEFAULT NULL,
  `mama` varchar(30) DEFAULT NULL,
  `madead` bit(1) DEFAULT NULL,
  `guardian` varchar(30) DEFAULT NULL,
  `addr1` varchar(60) DEFAULT NULL,
  `addr2` varchar(40) DEFAULT NULL,
  `zipcode` varchar(4) DEFAULT NULL,
  `region` varchar(4) DEFAULT NULL,
  `highsch` varchar(30) DEFAULT NULL,
  `height` float DEFAULT NULL,
  `eescore` float DEFAULT NULL,
  `math` decimal(18,0) DEFAULT NULL,
  `engl` decimal(18,0) DEFAULT NULL,
  `spma` decimal(18,0) DEFAULT NULL,
  `coy` varchar(1) DEFAULT NULL,
  `battalion` varchar(1) DEFAULT NULL,
  `battalion2` varchar(1) DEFAULT NULL,
  `cstat` varchar(1) DEFAULT NULL,
  `remarks` varchar(30) DEFAULT NULL,
  `pix` longblob DEFAULT NULL,
  `dateadmitted` varchar(20) DEFAULT NULL,
  `dategrad` varchar(20) DEFAULT NULL,
  `datecomm` varchar(20) DEFAULT NULL,
  `degree` varchar(20) DEFAULT NULL,
  `majorin` varchar(30) DEFAULT NULL,
  `graduate` varchar(1) DEFAULT NULL,
  `latinaward` varchar(20) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  `coybat` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`cadet_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cadet`
--

LOCK TABLES `cadet` WRITE;
/*!40000 ALTER TABLE `cadet` DISABLE KEYS */;
/*!40000 ALTER TABLE `cadet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses` (
  `course_id` int(11) NOT NULL AUTO_INCREMENT,
  `ccode` varchar(4) NOT NULL,
  `cequi` varchar(6) DEFAULT NULL,
  `cname` varchar(8) DEFAULT NULL,
  `cdesc` varchar(40) DEFAULT NULL,
  `cunits` float DEFAULT NULL,
  `ctype` varchar(2) DEFAULT NULL,
  `cadd` varchar(2) DEFAULT NULL,
  `cadd2` varchar(2) DEFAULT NULL,
  `ctypeold` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department` (
  `department_id` int(11) NOT NULL AUTO_INCREMENT,
  `deptcode` varchar(4) NOT NULL,
  `deptname` varchar(50) NOT NULL,
  `depthead` varchar(6) NOT NULL,
  `deptgroup` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculty`
--

DROP TABLE IF EXISTS `faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faculty` (
  `faculty_id` int(11) NOT NULL AUTO_INCREMENT,
  `serialnr` varchar(6) NOT NULL,
  `lname` varchar(15) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `mi` varchar(3) NOT NULL,
  `aname` varchar(4) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `deptcode` varchar(4) NOT NULL,
  `igroup` varchar(7) NOT NULL,
  `itype` varchar(4) NOT NULL,
  `rank` varchar(4) NOT NULL,
  `brofserv` varchar(5) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `pix` longblob DEFAULT NULL,
  `uname` varchar(20) DEFAULT NULL,
  `pwd` varchar(20) DEFAULT NULL,
  `lvl` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  PRIMARY KEY (`faculty_id`,`serialnr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty`
--

LOCK TABLES `faculty` WRITE;
/*!40000 ALTER TABLE `faculty` DISABLE KEYS */;
/*!40000 ALTER TABLE `faculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `major`
--

DROP TABLE IF EXISTS `major`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `major` (
  `major_id` int(11) NOT NULL,
  `majid` varchar(2) NOT NULL,
  `majdes` varchar(40) NOT NULL,
  PRIMARY KEY (`major_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `major`
--

LOCK TABLES `major` WRITE;
/*!40000 ALTER TABLE `major` DISABLE KEYS */;
/*!40000 ALTER TABLE `major` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `pass` varchar(45) DEFAULT NULL,
  `cpass` varchar(45) DEFAULT NULL,
  `user_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'test','test@test.com','test','test','user');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-12 13:58:15
