CREATE DATABASE  IF NOT EXISTS `ex` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ex`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: ex
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
-- Table structure for table `engine_sample`
--

DROP TABLE IF EXISTS `engine_sample`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `engine_sample` (
  `customer_id` int NOT NULL,
  `customer_last_name` varchar(30) DEFAULT NULL,
  `customer_first_name` varchar(30) DEFAULT NULL,
  `customer_address` varchar(60) DEFAULT NULL,
  `customer_city` varchar(15) DEFAULT NULL,
  `customer_state` varchar(15) DEFAULT NULL,
  `customer_zip` varchar(10) DEFAULT NULL,
  `customer_phone` varchar(24) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `engine_sample`
--

LOCK TABLES `engine_sample` WRITE;
/*!40000 ALTER TABLE `engine_sample` DISABLE KEYS */;
INSERT INTO `engine_sample` VALUES (1,'Anders','Maria','345 Winchell Pl','Anderson','IN','46014','(765) 555-7878'),(2,'Trujillo','Ana','1298 E Smathers St','Benton','AR','72018','(501) 555-7733'),(3,'Moreno','Antonio','6925 N Parkland Ave','Puyallup','WA','98373','(253) 555-8332'),(4,'Hardy','Thomas','83 d\'Urberville Ln','Casterbridge','GA','31209','(478) 555-1139'),(5,'Berglund','Christina','22717 E 73rd Ave','Dubuque','IA','52004','(319) 555-1139'),(6,'Moos','Hanna','1778 N Bovine Ave','Peoria','IL','61638','(309) 555-8755'),(7,'Citeaux','Fred','1234 Main St','Normal','IL','61761','(309) 555-1914'),(8,'Summer','Martin','1877 Ete Ct','Frogtown','LA','70563','(337) 555-9441'),(9,'Lebihan','Laurence','717 E Michigan Ave','Chicago','IL','60611','(312) 555-9441'),(10,'Lincoln','Elizabeth','4562 Rt 78 E','Vancouver','WA','98684','(360) 555-2680'),(11,'Snyder','Howard','2732 Baker Blvd.','Eugene','OR','97403','(503) 555-7555'),(12,'Latimer','Yoshi','City Center Plaza 516 Main St.','Elgin','OR','97827','(503) 555-6874'),(13,'Steel','John','12 Orchestra Terrace','Walla Walla','WA','99362','(509) 555-7969'),(14,'Yorres','Jaime','87 Polk St. Suite 5','San Francisco','CA','94117','(415) 555-5938'),(15,'Wilson','Fran','89 Chiaroscuro Rd.','Portland','OR','97219','(503) 555-9573'),(16,'Phillips','Rene','2743 Bering St.','Anchorage','AK','99508','(907) 555-7584'),(17,'Wilson','Paula','2817 Milton Dr.','Albuquerque','NM','87110','(505) 555-5939'),(18,'Pavarotti','Jose','187 Suffolk Ln.','Boise','ID','83720','(208) 555-8097'),(19,'Braunschweiger','Art','P.O. Box 555','Lander','WY','82520','(307) 555-4680'),(20,'Nixon','Liz','89 Jefferson Way Suite 2','Providence','RI','02909','(401) 555-3612'),(21,'Wong','Liu','55 Grizzly Peak Rd.','Butte','MT','59801','(406) 555-5834'),(22,'Nagy','Helvetius','722 DaVinci Blvd.','Concord','MA','01742','(351) 555-1219'),(23,'Jablonski','Karl','305 - 14th Ave. S. Suite 3B','Seattle','WA','98128','(206) 555-4112'),(24,'Chelan','Donna','2299 E Baylor Dr','Dallas','TX','75224','(469) 555-8828');
/*!40000 ALTER TABLE `engine_sample` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-09 12:11:03
