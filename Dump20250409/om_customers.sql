CREATE DATABASE  IF NOT EXISTS `om` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `om`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: om
-- ------------------------------------------------------
-- Server version	8.0.41

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customer_id` int NOT NULL,
  `customer_first_name` varchar(50) DEFAULT NULL,
  `customer_last_name` varchar(50) NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  `customer_city` varchar(50) NOT NULL,
  `customer_state` char(2) NOT NULL,
  `customer_zip` varchar(20) NOT NULL,
  `customer_phone` varchar(30) NOT NULL,
  `customer_fax` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Korah','Blanca','1555 W Lane Ave','Columbus','OH','43221','6145554435','6145553928'),(2,'Yash','Randall','11 E Rancho Madera Rd','Madison','WI','53707','2095551205','2095552262'),(3,'Johnathon','Millerton','60 Madison Ave','New York','NY','10010','2125554800','NULL'),(4,'Mikayla','Damion','2021 K Street Nw','Washington','DC','20006','2025555561','NULL'),(5,'Kendall','Mayte','4775 E Miami River Rd','Cleves','OH','45002','5135553043','NULL'),(6,'Kaitlin','Hostlery','3250 Spring Grove Ave','Cincinnati','OH','45225','8005551957','8005552826'),(7,'Derek','Chaddick','9022 E Merchant Wy','Fairfield','IA','52556','5155556130','NULL'),(8,'Deborah','Damien','415 E Olive Ave','Fresno','CA','93728','5595558060','NULL'),(9,'Karina','Lacy','882 W Easton Wy','Los Angeles','CA','90084','8005557000','NULL'),(10,'Kurt','Nickalus','28210 N Avenue Stanford','Valencia','CA','91355','8055550584','055556689'),(11,'Kelsey','Eulalia','7833 N Ridge Rd','Sacramento','CA','95887','2095557500','2095551302'),(12,'Anders','Rohansen','12345 E 67th Ave NW','Takoma Park','MD','24512','3385556772','NULL'),(13,'Thalia','Neftaly','2508 W Shaw Ave','Fresno','CA','93711','5595556245','NULL'),(14,'Gonzalo','Keeton','12 Daniel Road','Fairfield','NJ','07004','2015559742','NULL'),(15,'Ania','Irvin','1099 N Farcourt St','Orange','CA','92807','7145559000','NULL'),(16,'Dakota','Baylee','1033 N Sycamore Ave.','Los Angeles','CA','90038','2135554322','NULL'),(17,'Samuel','Jacobsen','3433 E Widget Ave','Palo Alto','CA','92711','4155553434','NULL'),(18,'Justin','Javen','828 S Broadway','Tarrytown','NY','10591','8005550037','NULL'),(19,'Kyle','Marissa','789 E Mercy Ave','Phoenix','AZ','85038','9475553900','NULL'),(20,'Erick','Kaleigh','Five Lakepointe Plaza, Ste 500','Charlotte','NC','28217','7045553500','NULL'),(21,'Marvin','Quintin','2677 Industrial Circle Dr','Columbus','OH','43260','6145558600','6145557580'),(22,'Rashad','Holbrooke','3467 W Shaw Ave #103','Fresno','CA','93711','5595558625','5595558495'),(23,'Trisha','Anum','627 Aviation Way','Manhatttan Beach','CA','90266','3105552732','NULL'),(24,'Julian','Carson','372 San Quentin','San Francisco','CA','94161','6175550700','NULL'),(25,'Kirsten','Story','2401 Wisconsin Ave NW','Washington','DC','20559','2065559115','NULL');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-09 12:11:01
