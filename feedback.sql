-- MySQL dump 10.13  Distrib 5.7.16, for Linux (x86_64)
--
-- Host: localhost    Database: feedback
-- ------------------------------------------------------
-- Server version	5.7.16-0ubuntu0.16.04.1

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
-- Table structure for table `fb_feedback_102`
--

DROP TABLE IF EXISTS `fb_feedback_102`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_feedback_102` (
  `id` bigint(12) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fb_feedback_102`
--

LOCK TABLES `fb_feedback_102` WRITE;
/*!40000 ALTER TABLE `fb_feedback_102` DISABLE KEYS */;
/*!40000 ALTER TABLE `fb_feedback_102` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fb_feedback_details_103`
--

DROP TABLE IF EXISTS `fb_feedback_details_103`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_feedback_details_103` (
  `id` bigint(12) NOT NULL AUTO_INCREMENT,
  `feedback_id` bigint(12) NOT NULL,
  `to_user_id` bigint(12) DEFAULT NULL,
  `from_user_id` bigint(12) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_fb_feedback_details_103_2_idx` (`to_user_id`),
  KEY `fk_fb_feedback_details_103_3_idx` (`from_user_id`),
  CONSTRAINT `fk_fb_feedback_details_103_2` FOREIGN KEY (`to_user_id`) REFERENCES `fb_user_100` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_fb_feedback_details_103_3` FOREIGN KEY (`from_user_id`) REFERENCES `fb_feedback_102` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fb_feedback_details_103`
--

LOCK TABLES `fb_feedback_details_103` WRITE;
/*!40000 ALTER TABLE `fb_feedback_details_103` DISABLE KEYS */;
/*!40000 ALTER TABLE `fb_feedback_details_103` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fb_group_101`
--

DROP TABLE IF EXISTS `fb_group_101`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_group_101` (
  `id` bigint(12) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fb_group_101`
--

LOCK TABLES `fb_group_101` WRITE;
/*!40000 ALTER TABLE `fb_group_101` DISABLE KEYS */;
/*!40000 ALTER TABLE `fb_group_101` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fb_user_100`
--

DROP TABLE IF EXISTS `fb_user_100`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_user_100` (
  `id` bigint(12) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `group` varchar(45) DEFAULT NULL,
  `created_by` varchar(45) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fb_user_100`
--

LOCK TABLES `fb_user_100` WRITE;
/*!40000 ALTER TABLE `fb_user_100` DISABLE KEYS */;
/*!40000 ALTER TABLE `fb_user_100` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-22 22:53:01
