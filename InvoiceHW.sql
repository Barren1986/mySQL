-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: invoice08
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
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company` (
  `CompanyID` int NOT NULL AUTO_INCREMENT COMMENT 'utomatically increments for each company - I believe it to be used as the primary key',
  `CompanyName` varchar(255) DEFAULT NULL COMMENT 'Text with a maximum number of characters.',
  `Address` varchar(255) DEFAULT NULL,
  `Phone` varchar(50) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`CompanyID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='To store seller details (this company''s information)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'Your Company Name','123 Street, City, ST','123-456-7890','email@company.com'),(2,'Your Company Name','123 Street, City, ST','123-456-7890','email@company.com'),(3,'Your Company Name','123 Main Street, City, ST','123-456-7890','company@example.com');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice` (
  `InvoiceID` int NOT NULL AUTO_INCREMENT,
  `InvoiceNumber` varchar(50) DEFAULT NULL,
  `PO_Number` varchar(50) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Salesperson` varchar(45) DEFAULT NULL,
  `CompanyID` int DEFAULT NULL,
  `RecipientID` int DEFAULT NULL,
  PRIMARY KEY (`InvoiceID`),
  KEY `CompanyID_idx` (`CompanyID`),
  KEY `RecipientID_idx` (`RecipientID`),
  CONSTRAINT `CompanyID` FOREIGN KEY (`CompanyID`) REFERENCES `company` (`CompanyID`) ON DELETE CASCADE,
  CONSTRAINT `RecipientID` FOREIGN KEY (`RecipientID`) REFERENCES `recipient` (`recipientID`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='To store overall invoice information.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` VALUES (1,'INV-100','PO-456','2025-02-03','Jane Smith',1,1);
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoiceitem`
--

DROP TABLE IF EXISTS `invoiceitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoiceitem` (
  `ItemID` int NOT NULL AUTO_INCREMENT,
  `InvoiceID` int DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `UnitPrice` decimal(10,2) DEFAULT NULL COMMENT 'DECIMAL(10, 2): Stores numbers with two decimal places (e.g., currency).',
  `Total` decimal(10,2) DEFAULT NULL COMMENT 'DECIMAL(10, 2): Stores numbers with two decimal places (e.g., currency).',
  PRIMARY KEY (`ItemID`),
  KEY `InvoiceID_idx` (`InvoiceID`),
  CONSTRAINT `InvoiceID` FOREIGN KEY (`InvoiceID`) REFERENCES `invoice` (`InvoiceID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='To store the line items listed on an invoice.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoiceitem`
--

LOCK TABLES `invoiceitem` WRITE;
/*!40000 ALTER TABLE `invoiceitem` DISABLE KEYS */;
INSERT INTO `invoiceitem` VALUES (1,1,'Product A',2,50.00,100.00),(2,1,'Product B',1,75.00,75.00);
/*!40000 ALTER TABLE `invoiceitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipient`
--

DROP TABLE IF EXISTS `recipient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipient` (
  `recipientID` int NOT NULL AUTO_INCREMENT,
  `recipientName` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Phone` varchar(50) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`recipientID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='To store the buyers details (the recipient of the invoice)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipient`
--

LOCK TABLES `recipient` WRITE;
/*!40000 ALTER TABLE `recipient` DISABLE KEYS */;
INSERT INTO `recipient` VALUES (1,'John Doe','456 Avenue, City, ST','987-654-3210','john.doe@gmail.com'),(2,'John Doe','456 Elm Street, City, ST','987-654-3210','johndoe@example.com');
/*!40000 ALTER TABLE `recipient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shippingandtax`
--

DROP TABLE IF EXISTS `shippingandtax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shippingandtax` (
  `InvoiceID` int NOT NULL,
  `ShippingVia` varchar(255) DEFAULT NULL,
  `FobPoint` varchar(45) DEFAULT NULL,
  `Terms` varchar(45) DEFAULT NULL,
  `ShippingCost` decimal(10,2) DEFAULT NULL,
  `SalesTax` decimal(10,2) DEFAULT NULL,
  `TotalAmount` decimal(10,2) DEFAULT NULL,
  `Subtotal` decimal(10,2) NOT NULL,
  `TotalDue` decimal(10,2) NOT NULL,
  PRIMARY KEY (`InvoiceID`),
  CONSTRAINT `FK_InvoiceID` FOREIGN KEY (`InvoiceID`) REFERENCES `invoice` (`InvoiceID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='To store shipping, tax, and total calculation details.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shippingandtax`
--

LOCK TABLES `shippingandtax` WRITE;
/*!40000 ALTER TABLE `shippingandtax` DISABLE KEYS */;
INSERT INTO `shippingandtax` VALUES (1,'FedEx','Origin','Net30',10.00,15.00,NULL,175.00,200.00);
/*!40000 ALTER TABLE `shippingandtax` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-03 12:55:16
