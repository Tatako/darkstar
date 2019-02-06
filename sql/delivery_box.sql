-- MySQL dump 10.17  Distrib 10.3.12-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: dspdb
-- ------------------------------------------------------
-- Server version	10.3.12-MariaDB

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
-- Table structure for table `delivery_box`
--

DROP TABLE IF EXISTS `delivery_box`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_box` (
  `charid` int(10) unsigned NOT NULL,
  `charname` varchar(15) DEFAULT NULL,
  `box` tinyint(1) unsigned NOT NULL,
  `slot` smallint(3) unsigned NOT NULL DEFAULT 0,
  `itemid` smallint(5) unsigned NOT NULL,
  `itemsubid` smallint(5) unsigned NOT NULL DEFAULT 0,
  `quantity` int(10) unsigned NOT NULL,
  `extra` tinyblob DEFAULT NULL,
  `senderid` int(10) unsigned NOT NULL DEFAULT 0,
  `sender` varchar(15) DEFAULT NULL,
  `received` tinyint(1) NOT NULL DEFAULT 0,
  `sent` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`charid`,`box`,`slot`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_box`
--

LOCK TABLES `delivery_box` WRITE;
/*!40000 ALTER TABLE `delivery_box` DISABLE KEYS */;
INSERT INTO `delivery_box` VALUES (21828,'Rayne',1,8,65535,853,1000,NULL,0,'AH-Jeuno',0,0),(21828,'Rayne',1,9,65535,853,1000,NULL,0,'AH-Jeuno',0,0),(21828,'Rayne',1,10,65535,853,1000,NULL,0,'AH-Jeuno',0,0),(21828,'Rayne',1,11,65535,853,1000,NULL,0,'AH-Jeuno',0,0),(21828,'Rayne',1,12,65535,853,1000,NULL,0,'AH-Jeuno',0,0),(21828,'Rayne',1,13,65535,903,5000,NULL,0,'AH-Jeuno',0,0),(21828,'Rayne',1,14,65535,3319,30000,NULL,0,'AH-Jeuno',0,0),(21828,'Rayne',1,15,65535,1133,10000,NULL,0,'AH-Jeuno',0,0),(21828,'Rayne',1,16,65535,916,100,NULL,0,'AH-Jeuno',0,0),(21828,'Rayne',1,17,65535,1124,1000,NULL,0,'AH-Jeuno',0,0),(21828,'Rayne',1,18,65535,1122,1000,NULL,0,'AH-Jeuno',0,0),(21828,'Rayne',1,19,65535,1122,1000,NULL,0,'AH-Jeuno',0,0);
/*!40000 ALTER TABLE `delivery_box` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER delivery_box_insert
	BEFORE INSERT ON delivery_box
	FOR EACH ROW
BEGIN
	SET @slot := 0;
	SELECT MAX(slot) INTO @slot FROM delivery_box WHERE box = NEW.box AND charid = NEW.charid;
	IF NEW.box = 1 THEN
	IF @slot IS NULL OR @slot < 8 THEN SET NEW.slot := 8; ELSE SET NEW.slot := @slot + 1; END IF;
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-11 11:59:57
