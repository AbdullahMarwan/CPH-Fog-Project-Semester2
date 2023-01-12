DROP USER `fog`;
DROP USER `fog1`;
CREATE USER `fog`@`%`;
CREATE USER `fog1`@`%`;
CREATE DATABASE  IF NOT EXISTS `fog` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
GRANT ALL PRIVILEGES ON fog.* TO `fog`@`%` WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON fog.* TO `fog1`@`%` WITH GRANT OPTION;
USE `fog`;
CREATE DATABASE  IF NOT EXISTS `fog` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `fog`;
-- MySQL dump 10.13  Distrib 8.0.30, for macos12 (x86_64)
--
-- Host: 127.0.0.1    Database: fog
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `carport`
--

DROP TABLE IF EXISTS `carport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carport` (
  `carport_id` int NOT NULL AUTO_INCREMENT,
  `length` int NOT NULL,
  `width` int NOT NULL,
  `total_price` int NOT NULL DEFAULT '0',
  `offer_accepted` tinyint(1) NOT NULL DEFAULT '0',
  `payment_paid` tinyint(1) NOT NULL DEFAULT '0',
  `has_shed` tinyint(1) NOT NULL DEFAULT '0',
  `material_id` int DEFAULT '1',
  PRIMARY KEY (`carport_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carport`
--

LOCK TABLES `carport` WRITE;
/*!40000 ALTER TABLE `carport` DISABLE KEYS */;
INSERT INTO `carport` VALUES (1,1090,300,8616,0,0,1,1),(2,780,300,7980,0,0,1,1);
/*!40000 ALTER TABLE `carport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materials`
--

DROP TABLE IF EXISTS `materials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materials` (
  `material_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `price` int NOT NULL,
  `unit_id` int DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `length` int NOT NULL,
  `unitId` int NOT NULL,
  PRIMARY KEY (`material_id`),
  KEY `fk_materials_unit1_idx` (`unit_id`),
  CONSTRAINT `fk_materials_unit1` FOREIGN KEY (`unit_id`) REFERENCES `unit` (`unit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materials`
--

LOCK TABLES `materials` WRITE;
/*!40000 ALTER TABLE `materials` DISABLE KEYS */;
INSERT INTO `materials` VALUES (1,'25x200 mm. trykimp. Brædt',205,2,'understernbrædder til for & bag ende',360,0),(2,'25x200 mm. trykimp. Brædt',308,2,'understernbrædder til siderne',540,0),(3,'25x125mm. trykimp. Brædt',129,2,'oversternbrædder til forenden',360,0),(4,'25x125mm. trykimp. Brædt',194,2,'oversternbrædder til siderne',540,0),(5,'38x73 mm. Lægte ubh.',168,1,'til z på bagside af dør',420,0),(6,'45x95 mm. Reglar ub.',65,1,'løsholter til skur gavle',270,0),(7,'45x95 mm. Reglar ub.',57,1,'løsholter til skur sider',240,0),(8,'45x195 mm. spærtræ ubh.',600,1,'Remme i sider, sadles ned i stolper',600,0),(9,'45x195 mm. spærtræ ubh.',480,1,'Remme i sider, sadles ned i stolper ( skur del, deles)',480,0),(10,'97x97 mm. trykimp. Stolpe',300,1,'Stolper nedgraves 90 cm. i jord',300,0),(11,'19x100 mm. trykimp. Brædt',46,1,'til beklædning af skur 1 på 2',210,0),(12,'19x100 mm. trykimp. Brædt',119,2,'vandbrædt på stern i sider',540,0),(13,'19x100 mm. trykimp. Brædt',79,2,'vandbrædt på stern i forende',360,0),(14,'Plastmo Ecolite blåtonet',678,2,'tagplader monteres på spær',600,0),(15,'Plastmo Ecolite blåtonet',399,2,'tagplader monteres på spær',360,0),(16,'Plastmo bundskruer 200 stk.',429,2,'Skruer til tagplader',0,0),(17,'Hulbånd 1x20 mm. 10 mtr.',349,4,'Til vindkryds på spær',0,0),(18,'Universal 190 mm højre',37,4,'Til montering af spær på rem',0,0),(19,'Universal 190 mm venstre ',37,4,'Til montering af spær på rem',0,0),(20,'4,5 x 60 mm. skruer 200 stk.',218,3,'Til montering af stern&vandbrædt',0,0),(21,'4,0 x 50 mm. beslagskruer 250 stk.',169,3,'Til montering af universalbeslag + hulbånd',0,0),(22,'Bræddebolt 10 x 120 mm.',16,3,'Til montering af rem på stolper',0,0),(23,'Firkantskiver 40x40x11mm',9,4,'Til montering af rem på stolper',0,0),(24,'4,5 x 70 mm. Skruer 400 stk.',229,3,'Til montering af yderste beklædning',0,0),(25,'4,5 x 50 mm. Skruer 300 stk.',129,3,'Til montering af inderste beklædning ',0,0),(26,'Stalddørsgreb 50x75',269,4,'Til lås på dør i skur',0,0),(27,'T hængsel 390 mm ',139,4,'Til skurdør',0,0),(28,'Vinkelbeslag 35',15,4,'Til montering af løsholter i skur',0,0);
/*!40000 ALTER TABLE `materials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(45) NOT NULL,
  `order_date` date DEFAULT NULL,
  `carport_id` int NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `fk_orders_user_idx` (`customer_name`),
  CONSTRAINT `fk_orders_user` FOREIGN KEY (`customer_name`) REFERENCES `user` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'admin',NULL,1),(2,'admin',NULL,2);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unit`
--

DROP TABLE IF EXISTS `unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unit` (
  `unit_id` int NOT NULL,
  `unit_type` varchar(45) NOT NULL,
  PRIMARY KEY (`unit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unit`
--

LOCK TABLES `unit` WRITE;
/*!40000 ALTER TABLE `unit` DISABLE KEYS */;
INSERT INTO `unit` VALUES (1,'wood'),(2,'roof'),(3,'screw'),(4,'fitting');
/*!40000 ALTER TABLE `unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `username` varchar(45) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('admin','1234','admin'),('newusertest1234','1234','user'),('user','1234','user'),('user1234','1234','user'),('user23','123451','user');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'fog'
--

--
-- Dumping routines for database 'fog'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-11 23:07:16
