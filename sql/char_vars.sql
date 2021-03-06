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
-- Table structure for table `char_vars`
--

DROP TABLE IF EXISTS `char_vars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `char_vars` (
  `charid` int(10) unsigned NOT NULL,
  `varname` varchar(30) NOT NULL,
  `value` int(11) NOT NULL,
  PRIMARY KEY (`charid`,`varname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `char_vars`
--

LOCK TABLES `char_vars` WRITE;
/*!40000 ALTER TABLE `char_vars` DISABLE KEYS */;
INSERT INTO `char_vars` VALUES (21828,'HpTeleportMask1b',24639),(21828,'HpTeleportMask2b',3802),(21828,'EVERYONES_GRUDGE_KILLS',3),(21829,'MoghouseExplication',1),(21829,'inJail',1),(21829,'GodMode',1),(21829,'Regen',1),(21828,'HpTeleportMask2a',65472),(21828,'bcnm_instanceid',1),(21828,'OptionalCSforSTC',1),(21828,'HpTeleportMask4b',96),(21828,'HpTeleportMask1a',60417),(21828,'COP1',1),(21828,'HpTeleportMask4a',4),(21828,'PromathiaStatus',1),(21828,'saveMySisterVar',1),(21828,'Regen',1),(21828,'MissionStatus',6),(21828,'Wait1DayForRanperre_date',10),(21828,'HpTeleportMask3a',49152),(21828,'HpTeleportMask3b',128),(21828,'ZilartStatus',1),(21828,'Dynamis_Status',1),(21830,'MoghouseExplication',1),(21830,'HpTeleportMask1a',2);
/*!40000 ALTER TABLE `char_vars` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-11 11:59:57
