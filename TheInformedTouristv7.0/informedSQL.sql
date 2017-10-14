CREATE DATABASE  IF NOT EXISTS `informedtourist` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `informedtourist`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: informedtourist
-- ------------------------------------------------------
-- Server version	5.7.17-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `law`
--

DROP TABLE IF EXISTS `law`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `law` (
  `law_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(200) CHARACTER SET latin1 NOT NULL,
  `offense` varchar(200) CHARACTER SET latin1 NOT NULL,
  `Sanction` varchar(255) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`law_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `law`
--

LOCK TABLES `law` WRITE;
/*!40000 ALTER TABLE `law` DISABLE KEYS */;
INSERT INTO `law` VALUES (1,'Soft Drug Law','Possession 0.5-5 g or 1-10 user units ','1 week to 2 months'),(2,'Hard Drug Law','Possession 0.5-5 g or 1-10 user units ','1 week to 3 months'),(3,'Soft Drug Law','Possession 0.5-5 g or 1-10 user units ','1 week to 2 months');
/*!40000 ALTER TABLE `law` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `narcotic`
--

DROP TABLE IF EXISTS `narcotic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `narcotic` (
  `narcotic_id` int(12) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `type` varchar(45) NOT NULL,
  `effect` varchar(1000) NOT NULL,
  PRIMARY KEY (`narcotic_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `narcotic`
--

LOCK TABLES `narcotic` WRITE;
/*!40000 ALTER TABLE `narcotic` DISABLE KEYS */;
INSERT INTO `narcotic` VALUES (1,'Cocaine','Hard Drug','1. Feelings of euphoria.\r\n2. Increased energy.\r\n3. Grandiosity; inflated self-esteem.\r\n4. Elevated mood.');
/*!40000 ALTER TABLE `narcotic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person` (
  `Pers_id` int(11) NOT NULL AUTO_INCREMENT,
  `Visitor_id` int(12) NOT NULL,
  `Professional_id` int(12) DEFAULT NULL,
  `Sector` varchar(45) DEFAULT NULL,
  `visit_id` int(12) DEFAULT NULL,
  PRIMARY KEY (`Pers_id`),
  KEY `Person2visitor_idx` (`Visitor_id`),
  KEY `Person2Visit_idx` (`visit_id`),
  KEY `Professional2Pers_idx` (`Sector`),
  CONSTRAINT `Person2Visit` FOREIGN KEY (`visit_id`) REFERENCES `visit` (`visit_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Person2visitor` FOREIGN KEY (`Visitor_id`) REFERENCES `visitor` (`visitor_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (9,11,NULL,NULL,NULL),(11,12,NULL,NULL,NULL),(12,13,NULL,NULL,NULL),(13,14,NULL,NULL,NULL),(14,15,NULL,NULL,NULL),(15,16,NULL,NULL,NULL),(16,17,NULL,NULL,NULL),(17,18,NULL,NULL,NULL),(19,20,NULL,NULL,NULL),(24,25,NULL,NULL,NULL),(25,26,NULL,NULL,NULL),(26,27,NULL,NULL,NULL),(27,28,NULL,NULL,NULL),(28,29,NULL,NULL,NULL),(29,30,NULL,NULL,NULL),(30,31,NULL,NULL,NULL),(31,32,NULL,NULL,NULL),(32,33,NULL,NULL,NULL),(33,34,NULL,NULL,NULL),(34,35,NULL,NULL,NULL),(35,36,NULL,NULL,NULL),(36,37,NULL,NULL,NULL),(37,38,NULL,NULL,NULL),(38,39,NULL,NULL,NULL),(39,40,NULL,NULL,NULL),(40,41,NULL,NULL,NULL),(41,42,NULL,NULL,NULL),(42,43,NULL,NULL,NULL),(43,44,NULL,NULL,NULL),(44,45,NULL,NULL,NULL),(45,46,NULL,NULL,NULL),(46,47,NULL,NULL,NULL),(47,48,NULL,NULL,NULL),(48,49,NULL,NULL,NULL),(49,50,NULL,NULL,NULL),(50,51,NULL,NULL,NULL),(51,52,NULL,NULL,NULL),(52,53,NULL,NULL,NULL),(53,54,NULL,NULL,NULL),(54,55,NULL,NULL,NULL),(55,56,NULL,NULL,NULL),(56,57,NULL,NULL,NULL),(57,58,NULL,NULL,NULL),(58,59,NULL,NULL,NULL),(59,60,NULL,NULL,NULL),(60,61,NULL,NULL,NULL),(61,62,NULL,NULL,NULL),(62,63,NULL,NULL,NULL),(63,64,NULL,NULL,NULL),(64,65,NULL,NULL,NULL),(65,66,NULL,NULL,NULL),(66,67,NULL,NULL,NULL),(67,68,NULL,NULL,NULL),(68,69,NULL,NULL,NULL),(69,70,NULL,NULL,NULL),(70,71,NULL,NULL,NULL),(71,72,NULL,NULL,NULL),(72,73,NULL,NULL,NULL),(73,74,NULL,NULL,NULL),(74,75,NULL,NULL,NULL),(75,76,NULL,NULL,NULL),(76,77,NULL,NULL,NULL),(77,78,NULL,NULL,NULL),(78,79,NULL,NULL,NULL),(79,80,NULL,NULL,NULL),(80,81,NULL,NULL,NULL),(81,82,NULL,NULL,NULL),(82,83,NULL,NULL,NULL),(83,84,NULL,NULL,NULL),(84,85,NULL,NULL,NULL),(85,86,NULL,NULL,NULL),(86,87,NULL,NULL,NULL),(87,88,NULL,NULL,NULL),(88,89,NULL,NULL,NULL),(89,90,NULL,NULL,NULL),(90,91,NULL,NULL,NULL),(91,92,NULL,NULL,NULL),(92,93,NULL,NULL,NULL),(93,94,NULL,NULL,NULL),(94,95,NULL,NULL,NULL),(95,96,NULL,NULL,NULL),(96,97,NULL,NULL,NULL),(97,98,NULL,NULL,NULL),(98,99,NULL,NULL,NULL),(99,100,NULL,NULL,NULL),(100,101,NULL,NULL,NULL),(101,102,NULL,NULL,NULL),(102,103,NULL,NULL,NULL),(103,104,NULL,NULL,NULL),(104,105,NULL,NULL,NULL),(105,106,NULL,NULL,NULL),(106,107,NULL,NULL,NULL),(107,108,NULL,NULL,NULL),(108,109,NULL,NULL,NULL),(109,110,NULL,NULL,NULL),(110,111,NULL,NULL,NULL),(111,112,NULL,NULL,NULL),(112,113,NULL,NULL,NULL),(113,114,NULL,NULL,NULL),(114,115,NULL,NULL,NULL),(115,116,NULL,NULL,NULL),(116,117,NULL,NULL,NULL),(117,118,NULL,NULL,NULL),(118,119,NULL,NULL,NULL),(119,120,NULL,NULL,NULL),(120,121,NULL,NULL,NULL),(121,122,NULL,NULL,NULL),(122,123,NULL,NULL,NULL),(123,124,NULL,NULL,NULL),(124,125,NULL,NULL,NULL),(125,126,NULL,NULL,NULL),(126,127,NULL,NULL,NULL),(127,128,NULL,NULL,NULL),(128,129,NULL,NULL,NULL),(129,130,NULL,NULL,NULL),(130,131,NULL,NULL,NULL),(131,132,NULL,NULL,NULL),(132,133,NULL,NULL,NULL),(133,134,NULL,NULL,NULL),(134,135,NULL,NULL,NULL),(135,136,NULL,NULL,NULL),(136,137,NULL,NULL,NULL),(137,138,NULL,NULL,NULL),(138,139,NULL,NULL,NULL),(139,140,NULL,NULL,NULL),(140,141,NULL,NULL,NULL),(141,142,NULL,NULL,NULL),(142,143,NULL,NULL,NULL),(143,144,NULL,NULL,NULL),(144,145,NULL,NULL,NULL),(145,146,NULL,NULL,NULL),(146,147,NULL,NULL,NULL),(147,148,NULL,NULL,NULL),(148,149,NULL,NULL,NULL),(149,150,NULL,NULL,NULL),(150,151,NULL,NULL,NULL),(151,152,NULL,NULL,NULL),(152,153,NULL,NULL,NULL),(153,154,NULL,NULL,NULL),(154,155,NULL,NULL,NULL),(155,156,NULL,NULL,NULL),(156,157,NULL,NULL,NULL),(157,158,NULL,NULL,NULL),(158,159,NULL,NULL,NULL),(159,160,NULL,NULL,NULL),(160,161,NULL,NULL,NULL),(161,162,NULL,NULL,NULL),(162,163,NULL,NULL,NULL),(163,164,NULL,NULL,NULL),(164,165,NULL,NULL,NULL),(165,166,NULL,NULL,NULL),(166,167,NULL,NULL,NULL),(167,168,NULL,NULL,NULL),(168,169,NULL,NULL,NULL),(169,170,NULL,NULL,NULL),(170,171,NULL,NULL,NULL),(171,172,NULL,NULL,NULL),(172,173,NULL,NULL,NULL),(173,174,NULL,NULL,NULL),(174,175,NULL,NULL,NULL),(175,176,NULL,NULL,NULL),(176,177,NULL,NULL,NULL),(177,178,NULL,NULL,NULL),(178,179,NULL,NULL,NULL),(179,180,NULL,NULL,NULL),(180,181,NULL,NULL,NULL),(181,182,NULL,NULL,NULL),(182,183,NULL,NULL,NULL),(183,184,NULL,NULL,NULL),(184,185,NULL,NULL,NULL);
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `informedTourist`.`person_AFTER_INSERT` AFTER INSERT ON `person` FOR EACH ROW
BEGIN
update visit set Pers_id = new.Pers_id ORDER BY visit_id DESC LIMIT 1;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `professional`
--

DROP TABLE IF EXISTS `professional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `professional` (
  `First_name` varchar(100) NOT NULL,
  `Last_name` varchar(100) NOT NULL,
  `Professional_id` varchar(20) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Sector` varchar(45) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `Password` varchar(45) NOT NULL,
  PRIMARY KEY (`Professional_id`,`Sector`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professional`
--

LOCK TABLES `professional` WRITE;
/*!40000 ALTER TABLE `professional` DISABLE KEYS */;
INSERT INTO `professional` VALUES ('Stephen Ransford','Saah','575599','575599@student.inholland.nl','Police or Government Authority','Diemen','kojosaah'),('Test','User','TEST01','me_pol@infoTour.our','Police or Government Authority','Amsterdam','money'),('Test','User 2','TEST02','me_hea@infoTour.our','Health Practitioner','Den Haag','health');
/*!40000 ALTER TABLE `professional` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test` (
  `Test_ID` int(12) NOT NULL AUTO_INCREMENT,
  `Narcotic_Name` varchar(45) NOT NULL,
  `Test_Name` varchar(45) NOT NULL,
  PRIMARY KEY (`Test_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testcentre`
--

DROP TABLE IF EXISTS `testcentre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testcentre` (
  `testcentre_id` int(12) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `website` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `cost` varchar(20) DEFAULT NULL,
  `details` varchar(1000) DEFAULT NULL,
  `test_id` int(12) DEFAULT NULL,
  PRIMARY KEY (`testcentre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testcentre`
--

LOCK TABLES `testcentre` WRITE;
/*!40000 ALTER TABLE `testcentre` DISABLE KEYS */;
INSERT INTO `testcentre` VALUES (1,'Jellinek','http://www.jellinek.nl/informatie-over-alcohol-drugs/drugs-test-service/','Jacob Obrechtstraat 92 1071 KG Amsterdam','+3120-5901590','€ 2.50 per sample','Every Wednesday, Thursday and Friday between 5 and 8.30 PM.\r\nYou can call in for the results on Thursdays between 6.30 and 8.30 PM.',NULL),(2,'GGD Amsterdam','http://www.ggd.amsterdam.nl/drugs/drugstestservice/','Valckenierstraat 4 1018 XG Amsterdam','+3120-5555450','€ 2.50 per sample','Every Monday, Thursday and Friday between 5 and 8.30 PM. Saturday between 1:30 and 4:30 PM.\r\nYou can call in for the results on Thursdays between 6.30 and 8.30 PM.',NULL);
/*!40000 ALTER TABLE `testcentre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visit`
--

DROP TABLE IF EXISTS `visit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `visit` (
  `visit_id` int(11) NOT NULL AUTO_INCREMENT,
  `page_name` varchar(100) DEFAULT NULL,
  `DateTime` datetime DEFAULT NULL,
  `Pers_id` int(11) DEFAULT NULL,
  `mac_addr` varchar(45) NOT NULL,
  PRIMARY KEY (`visit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visit`
--

LOCK TABLES `visit` WRITE;
/*!40000 ALTER TABLE `visit` DISABLE KEYS */;
INSERT INTO `visit` VALUES (1,'drug',NULL,NULL,'12345ee:::09876'),(2,NULL,NULL,NULL,'123462958476'),(3,NULL,NULL,NULL,'1:0:5e:0:0:fb'),(5,'cocaine','2011-11-11 12:12:12',NULL,'12345678'),(6,NULL,NULL,NULL,'30:b5:c2:ee:9:32'),(7,'/TheInformedTouristv6.1/LoginHealth.php','2017-06-17 14:09:28',NULL,'30:b5:c2:ee:9:32'),(8,'/TheInformedTouristv6.1/LoginHealth.php','2017-06-17 14:18:00',NULL,'30:b5:c2:ee:9:32'),(9,'/TheInformedTouristv6.1/LoginHealth.php','2017-06-17 14:19:06',17,'30:b5:c2:ee:9:32'),(10,'/TheInformedTouristv6.1/LoginHealth.php','2017-06-17 14:19:56',NULL,'30:b5:c2:ee:9:32'),(11,'/TheInformedTouristv6.1/LoginHealth.php','2017-06-17 14:23:40',19,'30:b5:c2:ee:9:32'),(16,'/TheInformedTouristv6.1/LoginHealth.php','2017-06-17 14:39:41',24,'30:b5:c2:ee:9:32'),(17,'LoginHealth.php','2017-06-17 14:43:10',25,'30:b5:c2:ee:9:32'),(18,'LoginHealth.php','2017-06-17 16:20:12',26,'BE-83-85-CA-CC-0B'),(19,'LoginHealth.php','2017-06-17 16:20:39',27,'BE-83-85-CA-CC-0B'),(20,'LoginHealth.php','2017-06-17 16:27:30',28,'BE-83-85-CA-CC-0B'),(21,'LoginHealth.php','2017-06-17 16:28:19',29,'BE-83-85-CA-CC-0B'),(22,'LoginHealth.php','2017-06-17 16:31:20',30,'BE-83-85-CA-CC-0B'),(23,'LoginHealth.php','2017-06-17 16:31:30',31,'BE-83-85-CA-CC-0B'),(24,'LoginHealth.php','2017-06-17 16:31:37',32,'BE-83-85-CA-CC-0B'),(25,'LoginHealth.php','2017-06-17 16:38:45',33,'BE-83-85-CA-CC-0B'),(26,'LoginHealth.php','2017-06-17 16:43:22',34,'BE-83-85-CA-CC-0B'),(27,'LoginHealth.php','2017-06-17 16:48:58',35,'BE-83-85-CA-CC-0B'),(28,'LoginHealth.php','2017-06-17 16:58:23',36,'BE-83-85-CA-CC-0B'),(29,'LoginHealth.php','2017-06-17 16:58:27',37,'BE-83-85-CA-CC-0B'),(30,'LoginHealth.php','2017-06-17 17:27:17',38,'BE-83-85-CA-CC-0B'),(31,'LoginHealth.php','2017-06-17 17:28:09',39,'BE-83-85-CA-CC-0B'),(32,'LoginHealth.php','2017-06-17 17:28:14',40,'BE-83-85-CA-CC-0B'),(33,'LoginHealth.php','2017-06-17 17:47:42',41,'BE-83-85-CA-CC-0B'),(34,'LoginHealth.php','2017-06-17 17:48:37',42,'BE-83-85-CA-CC-0B'),(35,'LoginHealth.php','2017-06-17 17:49:49',43,'BE-83-85-CA-CC-0B'),(36,'LoginHealth.php','2017-06-17 17:49:57',44,'BE-83-85-CA-CC-0B'),(37,'LoginHealth.php','2017-06-17 17:50:09',45,'BE-83-85-CA-CC-0B'),(38,'LoginHealth.php','2017-06-17 17:50:29',46,'BE-83-85-CA-CC-0B'),(39,'LoginHealth.php','2017-06-17 17:50:31',47,'BE-83-85-CA-CC-0B'),(40,'LoginHealth.php','2017-06-17 17:50:43',48,'BE-83-85-CA-CC-0B'),(41,'LoginHealth.php','2017-06-17 17:51:14',49,'BE-83-85-CA-CC-0B'),(42,'contact.php','2017-06-18 12:33:47',50,'BE-83-85-CA-CC-0B'),(43,'query.php','2017-06-18 22:43:25',51,'BE-83-85-CA-CC-0B'),(44,'query.php','2017-06-18 22:43:31',52,'BE-83-85-CA-CC-0B'),(45,'query.php','2017-06-18 22:43:34',53,'BE-83-85-CA-CC-0B'),(46,'query.php','2017-06-18 22:43:38',54,'BE-83-85-CA-CC-0B'),(47,'query.php','2017-06-18 22:44:19',55,'BE-83-85-CA-CC-0B'),(48,'query.php','2017-06-18 22:44:32',56,'BE-83-85-CA-CC-0B'),(49,'query.php','2017-06-18 22:45:03',57,'BE-83-85-CA-CC-0B'),(50,'query.php','2017-06-18 22:49:44',58,'BE-83-85-CA-CC-0B'),(51,'query.php','2017-06-18 22:52:10',59,'BE-83-85-CA-CC-0B'),(52,'contact.php','2017-06-18 22:58:17',60,'BE-83-85-CA-CC-0B'),(53,'contact.php','2017-06-18 22:58:22',61,'BE-83-85-CA-CC-0B'),(54,'contact.php','2017-06-18 22:58:47',62,'BE-83-85-CA-CC-0B'),(55,'query.php','2017-06-18 22:58:56',63,'BE-83-85-CA-CC-0B'),(56,'query.php','2017-06-18 22:59:01',64,'BE-83-85-CA-CC-0B'),(57,'query.php','2017-06-18 22:59:06',65,'BE-83-85-CA-CC-0B'),(58,'query.php','2017-06-18 23:00:21',66,'BE-83-85-CA-CC-0B'),(59,'query.php','2017-06-18 23:00:25',67,'BE-83-85-CA-CC-0B'),(60,'query.php','2017-06-18 23:00:37',68,'BE-83-85-CA-CC-0B'),(61,'query.php','2017-06-18 23:02:33',69,'BE-83-85-CA-CC-0B'),(62,'query.php','2017-06-18 23:02:34',70,'BE-83-85-CA-CC-0B'),(63,'query.php','2017-06-18 23:02:35',71,'BE-83-85-CA-CC-0B'),(64,'query.php','2017-06-18 23:02:58',72,'BE-83-85-CA-CC-0B'),(65,'query.php','2017-06-18 23:03:04',73,'BE-83-85-CA-CC-0B'),(66,'query.php','2017-06-18 23:03:09',74,'BE-83-85-CA-CC-0B'),(67,'query.php','2017-06-18 23:05:13',75,'BE-83-85-CA-CC-0B'),(68,'query.php','2017-06-18 23:05:22',76,'BE-83-85-CA-CC-0B'),(69,'query.php','2017-06-18 23:05:43',77,'BE-83-85-CA-CC-0B'),(70,'query.php','2017-06-18 23:05:47',78,'BE-83-85-CA-CC-0B'),(71,'query.php','2017-06-18 23:05:51',79,'BE-83-85-CA-CC-0B'),(72,'query.php','2017-06-18 23:07:14',80,'BE-83-85-CA-CC-0B'),(73,'query.php','2017-06-18 23:08:17',81,'BE-83-85-CA-CC-0B'),(74,'query.php','2017-06-18 23:10:11',82,'BE-83-85-CA-CC-0B'),(75,'query.php','2017-06-18 23:12:30',83,'BE-83-85-CA-CC-0B'),(76,'Alcohol.php','2017-06-18 23:12:34',84,'BE-83-85-CA-CC-0B'),(77,'query.php','2017-06-18 23:12:46',85,'BE-83-85-CA-CC-0B'),(78,'query.php','2017-06-18 23:19:40',86,'BE-83-85-CA-CC-0B'),(79,'query.php','2017-06-18 23:19:42',87,'BE-83-85-CA-CC-0B'),(80,'query.php','2017-06-18 23:19:43',88,'BE-83-85-CA-CC-0B'),(81,'query.php','2017-06-18 23:19:50',89,'BE-83-85-CA-CC-0B'),(82,'query.php','2017-06-18 23:22:24',90,'BE-83-85-CA-CC-0B'),(83,'query.php','2017-06-18 23:22:29',91,'BE-83-85-CA-CC-0B'),(84,'query.php','2017-06-18 23:22:44',92,'BE-83-85-CA-CC-0B'),(85,'query.php','2017-06-18 23:22:52',93,'BE-83-85-CA-CC-0B'),(86,'query.php','2017-06-18 23:24:41',94,'BE-83-85-CA-CC-0B'),(87,'query.php','2017-06-18 23:25:12',95,'BE-83-85-CA-CC-0B'),(88,'query.php','2017-06-18 23:25:29',96,'BE-83-85-CA-CC-0B'),(89,'query.php','2017-06-18 23:25:34',97,'BE-83-85-CA-CC-0B'),(90,'query.php','2017-06-18 23:25:40',98,'BE-83-85-CA-CC-0B'),(91,'query.php','2017-06-18 23:26:02',99,'BE-83-85-CA-CC-0B'),(92,'query.php','2017-06-18 23:26:11',100,'BE-83-85-CA-CC-0B'),(93,'query.php','2017-06-18 23:26:58',101,'BE-83-85-CA-CC-0B'),(94,'query.php','2017-06-18 23:27:02',102,'BE-83-85-CA-CC-0B'),(95,'query.php','2017-06-18 23:30:10',103,'BE-83-85-CA-CC-0B'),(96,'query.php','2017-06-18 23:31:01',104,'BE-83-85-CA-CC-0B'),(97,'query.php','2017-06-18 23:31:29',105,'BE-83-85-CA-CC-0B'),(98,'query.php','2017-06-18 23:32:02',106,'BE-83-85-CA-CC-0B'),(99,'query.php','2017-06-18 23:35:15',107,'BE-83-85-CA-CC-0B'),(100,'query.php','2017-06-18 23:43:18',108,'BE-83-85-CA-CC-0B'),(101,'query.php','2017-06-18 23:43:45',109,'BE-83-85-CA-CC-0B'),(102,'query.php','2017-06-18 23:43:50',110,'BE-83-85-CA-CC-0B'),(103,'query.php','2017-06-18 23:43:51',111,'BE-83-85-CA-CC-0B'),(104,'query.php','2017-06-18 23:44:06',112,'BE-83-85-CA-CC-0B'),(105,'query.php','2017-06-18 23:44:33',113,'BE-83-85-CA-CC-0B'),(106,'query.php','2017-06-18 23:44:44',114,'BE-83-85-CA-CC-0B'),(107,'query.php','2017-06-18 23:45:40',115,'BE-83-85-CA-CC-0B'),(108,'query.php','2017-06-18 23:45:46',116,'BE-83-85-CA-CC-0B'),(109,'query.php','2017-06-18 23:47:47',117,'BE-83-85-CA-CC-0B'),(110,'query.php','2017-06-18 23:50:47',118,'BE-83-85-CA-CC-0B'),(111,'query.php','2017-06-18 23:50:54',119,'BE-83-85-CA-CC-0B'),(112,'query.php','2017-06-18 23:51:52',120,'BE-83-85-CA-CC-0B'),(113,'query.php','2017-06-18 23:52:01',121,'BE-83-85-CA-CC-0B'),(114,'query.php','2017-06-18 23:53:40',122,'BE-83-85-CA-CC-0B'),(115,'query.php','2017-06-18 23:53:44',123,'BE-83-85-CA-CC-0B'),(116,'query.php','2017-06-18 23:53:54',124,'BE-83-85-CA-CC-0B'),(117,'query.php','2017-06-18 23:53:58',125,'BE-83-85-CA-CC-0B'),(118,'query.php','2017-06-18 23:55:44',126,'BE-83-85-CA-CC-0B'),(119,'query.php','2017-06-18 23:55:50',127,'BE-83-85-CA-CC-0B'),(120,'query.php','2017-06-18 23:55:51',128,'BE-83-85-CA-CC-0B'),(121,'query.php','2017-06-18 23:55:55',129,'BE-83-85-CA-CC-0B'),(122,'query.php','2017-06-19 00:00:14',130,'BE-83-85-CA-CC-0B'),(123,'query.php','2017-06-19 00:00:17',131,'BE-83-85-CA-CC-0B'),(124,'query.php','2017-06-19 00:00:26',132,'BE-83-85-CA-CC-0B'),(125,'query.php','2017-06-19 00:00:27',133,'BE-83-85-CA-CC-0B'),(126,'query.php','2017-06-19 00:00:45',134,'BE-83-85-CA-CC-0B'),(127,'query.php','2017-06-19 00:03:59',135,'BE-83-85-CA-CC-0B'),(128,'query.php','2017-06-19 00:04:04',136,'BE-83-85-CA-CC-0B'),(129,'informed.php','2017-06-19 00:04:20',137,'BE-83-85-CA-CC-0B'),(130,'query.php','2017-06-19 00:04:23',138,'BE-83-85-CA-CC-0B'),(131,'query.php','2017-06-19 00:04:27',139,'BE-83-85-CA-CC-0B'),(132,'query.php','2017-06-19 00:04:30',140,'BE-83-85-CA-CC-0B'),(133,'query.php','2017-06-19 00:05:26',141,'BE-83-85-CA-CC-0B'),(134,'query.php','2017-06-19 00:05:32',142,'BE-83-85-CA-CC-0B'),(135,'query.php','2017-06-19 00:05:35',143,'BE-83-85-CA-CC-0B'),(136,'query.php','2017-06-19 00:05:59',144,'BE-83-85-CA-CC-0B'),(137,'query.php','2017-06-19 00:08:01',145,'BE-83-85-CA-CC-0B'),(138,'query.php','2017-06-19 00:08:09',146,'BE-83-85-CA-CC-0B'),(139,'query.php','2017-06-19 00:08:13',147,'BE-83-85-CA-CC-0B'),(140,'query.php','2017-06-19 00:08:26',148,'BE-83-85-CA-CC-0B'),(141,'query.php','2017-06-19 00:08:27',149,'BE-83-85-CA-CC-0B'),(142,'sexpolicy.php','2017-06-19 00:08:37',150,'BE-83-85-CA-CC-0B'),(143,'query.php','2017-06-19 00:08:40',151,'BE-83-85-CA-CC-0B'),(144,'query.php','2017-06-19 00:08:47',152,'BE-83-85-CA-CC-0B'),(145,'query.php','2017-06-19 00:08:56',153,'BE-83-85-CA-CC-0B'),(146,'query.php','2017-06-19 00:09:29',154,'BE-83-85-CA-CC-0B'),(147,'query.php','2017-06-19 00:09:33',155,'BE-83-85-CA-CC-0B'),(148,'query.php','2017-06-19 00:09:38',156,'BE-83-85-CA-CC-0B'),(149,'query.php','2017-06-19 00:09:41',157,'BE-83-85-CA-CC-0B'),(150,'query.php','2017-06-19 00:09:45',158,'BE-83-85-CA-CC-0B'),(151,'query.php','2017-06-19 00:09:51',159,'BE-83-85-CA-CC-0B'),(152,'query.php','2017-06-19 00:12:17',160,'BE-83-85-CA-CC-0B'),(153,'query.php','2017-06-19 00:12:21',161,'BE-83-85-CA-CC-0B'),(154,'query.php','2017-06-19 00:12:26',162,'BE-83-85-CA-CC-0B'),(155,'query.php','2017-06-19 00:12:28',163,'BE-83-85-CA-CC-0B'),(156,'query.php','2017-06-19 00:13:27',164,'BE-83-85-CA-CC-0B'),(157,'query.php','2017-06-19 00:13:31',165,'BE-83-85-CA-CC-0B'),(158,'query.php','2017-06-19 00:14:48',166,'BE-83-85-CA-CC-0B'),(159,'query.php','2017-06-19 00:14:53',167,'BE-83-85-CA-CC-0B'),(160,'query.php','2017-06-19 00:14:59',168,'BE-83-85-CA-CC-0B'),(161,'query.php','2017-06-19 00:15:20',169,'BE-83-85-CA-CC-0B'),(162,'query.php','2017-06-19 00:15:24',170,'BE-83-85-CA-CC-0B'),(163,'query.php','2017-06-19 00:15:29',171,'BE-83-85-CA-CC-0B'),(164,'query.php','2017-06-19 00:16:04',172,'BE-83-85-CA-CC-0B'),(165,'query.php','2017-06-19 00:17:08',173,'BE-83-85-CA-CC-0B'),(166,'query.php','2017-06-19 00:17:12',174,'BE-83-85-CA-CC-0B'),(167,'query.php','2017-06-19 00:17:18',175,'BE-83-85-CA-CC-0B'),(168,'contact.php','2017-06-19 00:38:57',176,'BE-83-85-CA-CC-0B'),(169,'contact.php','2017-06-19 00:52:25',177,'BE-83-85-CA-CC-0B'),(170,'informed.php','2017-06-19 00:52:27',178,'BE-83-85-CA-CC-0B'),(171,'attractions.php','2017-06-19 00:52:51',179,'BE-83-85-CA-CC-0B'),(172,'informed.php','2017-06-19 00:52:53',180,'BE-83-85-CA-CC-0B'),(173,'PhonePost.php','2017-06-19 00:52:55',181,'BE-83-85-CA-CC-0B'),(174,'informed.php','2017-06-19 00:54:09',182,'BE-83-85-CA-CC-0B'),(175,'informed.php','2017-06-19 00:54:11',183,'BE-83-85-CA-CC-0B'),(176,'informed.php','2017-06-19 00:54:13',184,'BE-83-85-CA-CC-0B');
/*!40000 ALTER TABLE `visit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visitor`
--

DROP TABLE IF EXISTS `visitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `visitor` (
  `visitor_ip` varchar(20) NOT NULL,
  `country` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `mac_addr` varchar(60) NOT NULL,
  `visitor_id` int(12) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`visitor_id`),
  KEY `idx_visitor_visitor_ip` (`visitor_ip`)
) ENGINE=InnoDB AUTO_INCREMENT=186 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitor`
--

LOCK TABLES `visitor` WRITE;
/*!40000 ALTER TABLE `visitor` DISABLE KEYS */;
INSERT INTO `visitor` VALUES ('140092','Netherlands','Amsterdam','12345ee:::09876',1),('14986','Netherlands','Amsterdam','0:11:5d:d4:73:0',2),('140092','Netherlands','Amsterdam','12345ee:::09876',3),('140092','Netherlands','Amsterdam','12345ee:::09876',11),('175092','Netherlands','Amsterdam','123462958476',12),('192168','','','1:0:5e:0:0:fb',13),('192168','','','30:b5:c2:ee:9:32',14),('192168','','','30:b5:c2:ee:9:32',15),('192168','','','30:b5:c2:ee:9:32',16),('192168','','','30:b5:c2:ee:9:32',17),('192168','','','30:b5:c2:ee:9:32',18),('192168','','','30:b5:c2:ee:9:32',20),('192168','','','30:b5:c2:ee:9:32',25),('192168','','','30:b5:c2:ee:9:32',26),('100','','','BE-83-85-CA-CC-0B',27),('100','','','BE-83-85-CA-CC-0B',28),('167772171','','','BE-83-85-CA-CC-0B',29),('100','','','BE-83-85-CA-CC-0B',30),('100','','','BE-83-85-CA-CC-0B',31),('100','','','BE-83-85-CA-CC-0B',32),('100','','','BE-83-85-CA-CC-0B',33),('0','','','BE-83-85-CA-CC-0B',34),('::1','','','BE-83-85-CA-CC-0B',35),('10.0.0.11','','','BE-83-85-CA-CC-0B',36),('10.0.0.11','','','BE-83-85-CA-CC-0B',37),('10.0.0.11','','','BE-83-85-CA-CC-0B',38),('10.0.0.11','','','BE-83-85-CA-CC-0B',39),('10.0.0.11','','','BE-83-85-CA-CC-0B',40),('10.0.0.11','','','BE-83-85-CA-CC-0B',41),('10.0.0.11','','','BE-83-85-CA-CC-0B',42),('10.0.0.11','','','BE-83-85-CA-CC-0B',43),('10.0.0.11','','','BE-83-85-CA-CC-0B',44),('10.0.0.11','','','BE-83-85-CA-CC-0B',45),('10.0.0.11','','','BE-83-85-CA-CC-0B',46),('10.0.0.11','','','BE-83-85-CA-CC-0B',47),('10.0.0.11','','','BE-83-85-CA-CC-0B',48),('10.0.0.11','','','BE-83-85-CA-CC-0B',49),('10.0.0.11','','','BE-83-85-CA-CC-0B',50),('10.0.0.11','','','BE-83-85-CA-CC-0B',51),('10.0.0.11','','','BE-83-85-CA-CC-0B',52),('10.0.0.11','','','BE-83-85-CA-CC-0B',53),('10.0.0.11','','','BE-83-85-CA-CC-0B',54),('10.0.0.11','','','BE-83-85-CA-CC-0B',55),('10.0.0.11','','','BE-83-85-CA-CC-0B',56),('10.0.0.11','','','BE-83-85-CA-CC-0B',57),('10.0.0.11','','','BE-83-85-CA-CC-0B',58),('10.0.0.11','','','BE-83-85-CA-CC-0B',59),('10.0.0.11','','','BE-83-85-CA-CC-0B',60),('10.0.0.11','','','BE-83-85-CA-CC-0B',61),('10.0.0.11','','','BE-83-85-CA-CC-0B',62),('10.0.0.11','','','BE-83-85-CA-CC-0B',63),('10.0.0.11','','','BE-83-85-CA-CC-0B',64),('10.0.0.11','','','BE-83-85-CA-CC-0B',65),('10.0.0.11','','','BE-83-85-CA-CC-0B',66),('10.0.0.11','','','BE-83-85-CA-CC-0B',67),('10.0.0.11','','','BE-83-85-CA-CC-0B',68),('10.0.0.11','','','BE-83-85-CA-CC-0B',69),('10.0.0.11','','','BE-83-85-CA-CC-0B',70),('10.0.0.11','','','BE-83-85-CA-CC-0B',71),('10.0.0.11','','','BE-83-85-CA-CC-0B',72),('10.0.0.11','','','BE-83-85-CA-CC-0B',73),('10.0.0.11','','','BE-83-85-CA-CC-0B',74),('10.0.0.11','','','BE-83-85-CA-CC-0B',75),('10.0.0.11','','','BE-83-85-CA-CC-0B',76),('10.0.0.11','','','BE-83-85-CA-CC-0B',77),('10.0.0.11','','','BE-83-85-CA-CC-0B',78),('10.0.0.11','','','BE-83-85-CA-CC-0B',79),('10.0.0.11','','','BE-83-85-CA-CC-0B',80),('10.0.0.11','','','BE-83-85-CA-CC-0B',81),('10.0.0.11','','','BE-83-85-CA-CC-0B',82),('10.0.0.11','','','BE-83-85-CA-CC-0B',83),('10.0.0.11','','','BE-83-85-CA-CC-0B',84),('10.0.0.11','','','BE-83-85-CA-CC-0B',85),('10.0.0.11','','','BE-83-85-CA-CC-0B',86),('10.0.0.11','','','BE-83-85-CA-CC-0B',87),('10.0.0.11','','','BE-83-85-CA-CC-0B',88),('10.0.0.11','','','BE-83-85-CA-CC-0B',89),('10.0.0.11','','','BE-83-85-CA-CC-0B',90),('10.0.0.11','','','BE-83-85-CA-CC-0B',91),('10.0.0.11','','','BE-83-85-CA-CC-0B',92),('10.0.0.11','','','BE-83-85-CA-CC-0B',93),('10.0.0.11','','','BE-83-85-CA-CC-0B',94),('10.0.0.11','','','BE-83-85-CA-CC-0B',95),('10.0.0.11','','','BE-83-85-CA-CC-0B',96),('10.0.0.11','','','BE-83-85-CA-CC-0B',97),('10.0.0.11','','','BE-83-85-CA-CC-0B',98),('10.0.0.11','','','BE-83-85-CA-CC-0B',99),('10.0.0.11','','','BE-83-85-CA-CC-0B',100),('10.0.0.11','','','BE-83-85-CA-CC-0B',101),('10.0.0.11','','','BE-83-85-CA-CC-0B',102),('10.0.0.11','','','BE-83-85-CA-CC-0B',103),('10.0.0.11','','','BE-83-85-CA-CC-0B',104),('10.0.0.11','','','BE-83-85-CA-CC-0B',105),('10.0.0.11','','','BE-83-85-CA-CC-0B',106),('10.0.0.11','','','BE-83-85-CA-CC-0B',107),('10.0.0.11','','','BE-83-85-CA-CC-0B',108),('10.0.0.11','','','BE-83-85-CA-CC-0B',109),('10.0.0.11','','','BE-83-85-CA-CC-0B',110),('10.0.0.11','','','BE-83-85-CA-CC-0B',111),('10.0.0.11','','','BE-83-85-CA-CC-0B',112),('10.0.0.11','','','BE-83-85-CA-CC-0B',113),('10.0.0.11','','','BE-83-85-CA-CC-0B',114),('10.0.0.11','','','BE-83-85-CA-CC-0B',115),('10.0.0.11','','','BE-83-85-CA-CC-0B',116),('10.0.0.11','','','BE-83-85-CA-CC-0B',117),('10.0.0.11','','','BE-83-85-CA-CC-0B',118),('10.0.0.11','','','BE-83-85-CA-CC-0B',119),('10.0.0.11','','','BE-83-85-CA-CC-0B',120),('10.0.0.11','','','BE-83-85-CA-CC-0B',121),('10.0.0.11','','','BE-83-85-CA-CC-0B',122),('10.0.0.11','','','BE-83-85-CA-CC-0B',123),('10.0.0.11','','','BE-83-85-CA-CC-0B',124),('10.0.0.11','','','BE-83-85-CA-CC-0B',125),('10.0.0.11','','','BE-83-85-CA-CC-0B',126),('10.0.0.11','','','BE-83-85-CA-CC-0B',127),('10.0.0.11','','','BE-83-85-CA-CC-0B',128),('10.0.0.11','','','BE-83-85-CA-CC-0B',129),('10.0.0.11','','','BE-83-85-CA-CC-0B',130),('10.0.0.11','','','BE-83-85-CA-CC-0B',131),('10.0.0.11','','','BE-83-85-CA-CC-0B',132),('10.0.0.11','','','BE-83-85-CA-CC-0B',133),('10.0.0.11','','','BE-83-85-CA-CC-0B',134),('10.0.0.11','','','BE-83-85-CA-CC-0B',135),('10.0.0.11','','','BE-83-85-CA-CC-0B',136),('10.0.0.11','','','BE-83-85-CA-CC-0B',137),('10.0.0.11','','','BE-83-85-CA-CC-0B',138),('10.0.0.11','','','BE-83-85-CA-CC-0B',139),('10.0.0.11','','','BE-83-85-CA-CC-0B',140),('10.0.0.11','','','BE-83-85-CA-CC-0B',141),('10.0.0.11','','','BE-83-85-CA-CC-0B',142),('10.0.0.11','','','BE-83-85-CA-CC-0B',143),('10.0.0.11','','','BE-83-85-CA-CC-0B',144),('10.0.0.11','','','BE-83-85-CA-CC-0B',145),('10.0.0.11','','','BE-83-85-CA-CC-0B',146),('10.0.0.11','','','BE-83-85-CA-CC-0B',147),('10.0.0.11','','','BE-83-85-CA-CC-0B',148),('10.0.0.11','','','BE-83-85-CA-CC-0B',149),('10.0.0.11','','','BE-83-85-CA-CC-0B',150),('10.0.0.11','','','BE-83-85-CA-CC-0B',151),('10.0.0.11','','','BE-83-85-CA-CC-0B',152),('10.0.0.11','','','BE-83-85-CA-CC-0B',153),('10.0.0.11','','','BE-83-85-CA-CC-0B',154),('10.0.0.11','','','BE-83-85-CA-CC-0B',155),('10.0.0.11','','','BE-83-85-CA-CC-0B',156),('10.0.0.11','','','BE-83-85-CA-CC-0B',157),('10.0.0.11','','','BE-83-85-CA-CC-0B',158),('10.0.0.11','','','BE-83-85-CA-CC-0B',159),('10.0.0.11','','','BE-83-85-CA-CC-0B',160),('10.0.0.11','','','BE-83-85-CA-CC-0B',161),('10.0.0.11','','','BE-83-85-CA-CC-0B',162),('10.0.0.11','','','BE-83-85-CA-CC-0B',163),('10.0.0.11','','','BE-83-85-CA-CC-0B',164),('10.0.0.11','','','BE-83-85-CA-CC-0B',165),('10.0.0.11','','','BE-83-85-CA-CC-0B',166),('10.0.0.11','','','BE-83-85-CA-CC-0B',167),('10.0.0.11','','','BE-83-85-CA-CC-0B',168),('10.0.0.11','','','BE-83-85-CA-CC-0B',169),('10.0.0.11','','','BE-83-85-CA-CC-0B',170),('10.0.0.11','','','BE-83-85-CA-CC-0B',171),('10.0.0.11','','','BE-83-85-CA-CC-0B',172),('10.0.0.11','','','BE-83-85-CA-CC-0B',173),('10.0.0.11','','','BE-83-85-CA-CC-0B',174),('10.0.0.11','','','BE-83-85-CA-CC-0B',175),('10.0.0.11','','','BE-83-85-CA-CC-0B',176),('10.0.0.11','','','BE-83-85-CA-CC-0B',177),('10.0.0.11','','','BE-83-85-CA-CC-0B',178),('10.0.0.11','','','BE-83-85-CA-CC-0B',179),('10.0.0.11','','','BE-83-85-CA-CC-0B',180),('10.0.0.11','','','BE-83-85-CA-CC-0B',181),('10.0.0.11','','','BE-83-85-CA-CC-0B',182),('10.0.0.11','','','BE-83-85-CA-CC-0B',183),('10.0.0.11','','','BE-83-85-CA-CC-0B',184),('10.0.0.11','','','BE-83-85-CA-CC-0B',185);
/*!40000 ALTER TABLE `visitor` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `informedTourist`.`visitor_AFTER_INSERT` AFTER INSERT ON `visitor` FOR EACH ROW
BEGIN

insert into visit (mac_addr) value (new.mac_addr);
insert into person (visitor_id) value (new.visitor_id);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping events for database 'informedtourist'
--

--
-- Dumping routines for database 'informedtourist'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-19  6:59:11
