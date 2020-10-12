-- MySQL dump 10.16  Distrib 10.2.13-MariaDB, for osx10.13 (x86_64)
--
-- Host: localhost    Database: Mall
-- ------------------------------------------------------
-- Server version	10.2.13-MariaDB

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
-- Table structure for table `Accounts`
--

DROP TABLE IF EXISTS `Accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Accounts` (
  `aid` int(11) NOT NULL,
  `balance` double DEFAULT NULL,
  `type` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`aid`),
  CONSTRAINT `CHK_Type` CHECK (`type` = 'credit' or `type` = 'checking' or `type` = 'cash')
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Accounts`
--

LOCK TABLES `Accounts` WRITE;
/*!40000 ALTER TABLE `Accounts` DISABLE KEYS */;
INSERT INTO `Accounts` VALUES (11111,500000,'cash'),(22222,20000,'credit'),(33333,1000000,'checking'),(44444,700,'checking'),(55555,8000,'credit'),(66666,40000,'cash'),(77777,60,'cash');
/*!40000 ALTER TABLE `Accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customers`
--

DROP TABLE IF EXISTS `Customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Customers` (
  `name` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `aid` int(11) NOT NULL,
  PRIMARY KEY (`name`,`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customers`
--

LOCK TABLES `Customers` WRITE;
/*!40000 ALTER TABLE `Customers` DISABLE KEYS */;
INSERT INTO `Customers` VALUES ('Billy','500th Middle Country Ln',55555),('Fernando','450th NW Platinum Rd',44444),('Freddy','238th NE Bronze Blvd',22222),('Jacob','349th SE Silver St',33333),('Jason','127th SW Golden Ave',11111);
/*!40000 ALTER TABLE `Customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Employees`
--

DROP TABLE IF EXISTS `Employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Employees` (
  `eid` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `salary` double DEFAULT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employees`
--

LOCK TABLES `Employees` WRITE;
/*!40000 ALTER TABLE `Employees` DISABLE KEYS */;
INSERT INTO `Employees` VALUES ('10101010101','Zoey','Cashier',35000),('11011011011','Alexander','Customer Service',40000),('11111111111','Mario','Manager',80000),('12012012012','Alyssa','Customer Service',40000),('13013013013','Emma','Customer Service',40000),('14014014014','Fiona','Inventory Taker',50000),('15015015015','Jake','Inventory Manager',55000),('22222222222','Luigi','Assistant Manager',75000),('33333333333','Bill','Cashier',35000),('44444444444','Ned','Cashier',35000),('55555555555','Michael','Cashier',35000),('66666666666','Patrick','Cashier',35000),('77777777777','Kathy','Cashier',35000),('88888888888','Lauren','Cashier',35000),('99999999999','Julia','Cashier',35000);
/*!40000 ALTER TABLE `Employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Employs`
--

DROP TABLE IF EXISTS `Employs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Employs` (
  `store` varchar(255) NOT NULL,
  `eid` int(11) NOT NULL,
  PRIMARY KEY (`store`,`eid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employs`
--

LOCK TABLES `Employs` WRITE;
/*!40000 ALTER TABLE `Employs` DISABLE KEYS */;
INSERT INTO `Employs` VALUES ('Aeropostale',1201201),('Aldi',4444444),('American Eagle',1101101),('Apple',1601601),('AT&T',1701701),('Best Buy',5555555),('Costco',2020202),('Dollar General',1401401),('Dollar Tree',1501501),('Forever 21',1010101),('GameStop',9999999),('JCPenney',8888888),('Macys',7777777),('Publix',2222222),('Sams Club',1901901),('Sears',1301301),('Target',3333333),('Toys R Us',6666666),('Verizon',1801801),('Walmart',1111111);
/*!40000 ALTER TABLE `Employs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Inventory`
--

DROP TABLE IF EXISTS `Inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Inventory` (
  `name` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`,`item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Inventory`
--

LOCK TABLES `Inventory` WRITE;
/*!40000 ALTER TABLE `Inventory` DISABLE KEYS */;
INSERT INTO `Inventory` VALUES ('Best Buy','Camera',650),('Best Buy','iPhone X',700),('Best Buy','Playstation 4',600),('Best Buy','Television',500),('Best Buy','Windows PC',200),('Costco','Camera',1200),('Costco','iPhone X',950),('Costco','Playstation 4',750),('Costco','Television',200),('Costco','Windows PC',250),('Sears','Camera',170),('Sears','iPhone X',25),('Sears','Playstation 4',10),('Sears','Television',20),('Sears','Windows PC',90),('Target','Camera',250),('Target','iPhone X',250),('Target','Playstation 4',150),('Target','Television',40),('Target','Windows PC',70),('Walmart','Camera',300),('Walmart','iPhone X',250),('Walmart','Playstation 4',200),('Walmart','Television',20),('Walmart','Windows PC',50);
/*!40000 ALTER TABLE `Inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Items`
--

DROP TABLE IF EXISTS `Items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Items` (
  `item` varchar(255) NOT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Items`
--

LOCK TABLES `Items` WRITE;
/*!40000 ALTER TABLE `Items` DISABLE KEYS */;
INSERT INTO `Items` VALUES ('Belt','Gucci',499.99),('Camera','Amazon',49.99),('Glasses','Gucci',899.99),('iPhone X','Apple',999.99),('Jeans','American Eagle',24.99),('MacBook Pro','Apple',1499.99),('Nintendo Switch','Nintendo',399.99),('Playstation 4','Sony',799.99),('Samsung Galaxy S9','Samsung',699.99),('Shirt','Aeropostale',24.99),('Shoes','Walmart',19.99),('Speakers','Amazon',79.99),('Watch','Apple',799.99),('Windows PC','Microsoft',499.99),('Xbox One','Microsoft',899.99);
/*!40000 ALTER TABLE `Items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Stores`
--

DROP TABLE IF EXISTS `Stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Stores` (
  `name` varchar(255) NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Stores`
--

LOCK TABLES `Stores` WRITE;
/*!40000 ALTER TABLE `Stores` DISABLE KEYS */;
INSERT INTO `Stores` VALUES ('Best Buy','SW 420 Crazy Blvd'),('Costco','NE 800 Mystery Rd'),('Target','SE 250 LaLa Ave'),('Walmart','NW 180 Maple St');
/*!40000 ALTER TABLE `Stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Transactions`
--

DROP TABLE IF EXISTS `Transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Transactions` (
  `tid` int(11) NOT NULL,
  `store` varchar(255) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL,
  `customer` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Transactions`
--

LOCK TABLES `Transactions` WRITE;
/*!40000 ALTER TABLE `Transactions` DISABLE KEYS */;
INSERT INTO `Transactions` VALUES (10101,'Sears','Camera','Freddy','2017-12-26'),(11011,'Walmart','Playstation 4','Freddy','2017-12-26'),(11111,'Walmart','Windows PC','Jason','2017-12-06'),(12012,'Publix','Chicken Tender Sub','Freddy','2017-12-26'),(13013,'Best Buy','Windows PC','Jacob','2018-01-02'),(14014,'Costco','Television','Jacob','2018-01-02'),(15015,'Sears','iPhone X','Jacob','2018-01-02'),(16016,'Walmart','Camera','Jacob','2018-01-02'),(17017,'Target','Playstation 4','Jacob','2018-01-02'),(18018,'Publix','Chicken Tender Sub','Jacob','2018-01-02'),(19019,'Costco','Windows PC','Fernando','2018-02-14'),(20202,'Sears','Television','Fernando','2018-02-14'),(21021,'Walmart','iPhone X','Fernando','2018-02-14'),(22022,'Target','Camera','Fernando','2018-02-14'),(22222,'Target','Television','Jason','2017-12-06'),(23023,'Best Buy','Playstation 4','Fernando','2018-02-14'),(24024,'Publix','Chicken Tender Sub','Fernando','2018-02-14'),(25025,'Sears','Windows PC','Billy','2018-04-01'),(26026,'Walmart','Television','Billy','2018-04-01'),(27027,'Target','iPhone X','Billy','2018-04-01'),(28028,'Best Buy','Camera','Billy','2018-04-01'),(29029,'Costco','Playstation 4','Billy','2018-04-01'),(30303,'Publix','Chicken Tender Sub','Billy','2018-04-01'),(33333,'Best Buy','iPhone X','Jason','2017-12-06'),(44444,'Costco','Camera','Jason','2017-12-06'),(55555,'Sears','Playstation 4','Jason','2017-12-06'),(66666,'Publix','Chicken Tender Sub','Jason','2017-12-06'),(77777,'Target','Windows PC','Freddy','2017-12-26'),(88888,'Best Buy','Television','Freddy','2017-12-26'),(99999,'Costco','iPhone X','Freddy','2017-12-26');
/*!40000 ALTER TABLE `Transactions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-09 16:49:03
