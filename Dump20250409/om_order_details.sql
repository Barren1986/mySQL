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
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_details` (
  `order_id` int NOT NULL,
  `item_id` int NOT NULL,
  `order_qty` int NOT NULL,
  PRIMARY KEY (`order_id`,`item_id`),
  KEY `order_details_fk_items` (`item_id`),
  CONSTRAINT `order_details_fk_items` FOREIGN KEY (`item_id`) REFERENCES `items` (`item_id`),
  CONSTRAINT `order_details_fk_orders` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
INSERT INTO `order_details` VALUES (19,5,1),(29,3,1),(29,10,1),(32,7,1),(70,1,1),(89,4,1),(97,4,1),(97,8,1),(118,1,1),(144,3,1),(158,3,1),(165,4,1),(180,4,1),(231,10,1),(242,1,1),(242,6,1),(264,4,1),(264,7,1),(264,8,1),(298,1,1),(321,10,1),(381,1,1),(392,8,1),(413,10,1),(442,1,1),(479,1,2),(479,4,1),(491,6,1),(494,2,1),(523,9,1),(548,9,1),(550,1,1),(550,4,1),(601,5,1),(601,9,1),(606,8,1),(607,3,1),(607,10,1),(624,7,1),(627,9,1),(630,5,1),(630,6,2),(631,10,1),(651,3,1),(658,1,1),(687,6,1),(687,8,1),(693,6,1),(693,7,3),(693,10,1),(703,4,1),(773,10,1),(778,1,1),(778,3,1),(796,2,1),(796,5,1),(796,7,1),(800,1,1),(800,5,1),(802,2,1),(802,3,1),(824,3,1),(824,7,2),(827,6,1),(829,1,1),(829,2,1),(829,5,1),(829,9,1);
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
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
