DROP USER `fog1`;
-- DROP USER `fog1`@`%`;
-- DROP USER `fog1`@`localhost`;
-- DROP USER `fog1`@`host.docker.internal`;

-- CREATE USER `fog1`@`172.26.0.1`;
-- CREATE USER `fog1`@`192.168.80.1`;
-- CREATE USER `fog1`@`192.168.2.1`;
CREATE USER `fog1`@`%`;
-- CREATE USER `fog1`@`192.168.2.2`;
-- CREATE USER `fog1`@`%`;
-- CREATE USER `fog1`@`localhost`;
-- CREATE USER `fog1`@`host.docker.internal`;

-- /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION=`N` */;
CREATE DATABASE IF NOT EXISTS `fog`;
-- USE `fog`;

-- GRANT ALL PRIVILEGES ON `fog` TO `fog1`@`%` WITH GRANT OPTION;
-- GRANT ALL PRIVILEGES ON `fog` TO `fog1`@`localhost` WITH GRANT OPTION;
-- GRANT ALL PRIVILEGES ON `fog` TO `fog1`@`host.docker.internal` WITH GRANT OPTION;

-- GRANT ALL PRIVILEGES ON `fog`.* TO `fog1`@`192.168.80.1` WITH GRANT OPTION;
-- GRANT ALL PRIVILEGES ON `fog`.* TO `fog1`@`192.168.2.1` WITH GRANT OPTION;
-- GRANT ALL PRIVILEGES ON `fog`.* TO `fog1`@`192.168.2.2` WITH GRANT OPTION;

-- GRANT ALL PRIVILEGES ON fog.* TO `fog1`@`192.168.2.1` WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON fog.* TO `fog1`@`%` WITH GRANT OPTION;
-- GRANT ALL PRIVILEGES ON fog.* TO `fog1`@`192.168.2.2` WITH GRANT OPTION;

-- GRANT ALL PRIVILEGES ON *.* TO `fog1`@`172.26.0.1` WITH GRANT OPTION;
-- GRANT ALL PRIVILEGES ON *.* TO `fog1`@`192.168.80.1` WITH GRANT OPTION;
-- GRANT ALL PRIVILEGES ON *.* TO `fog1`@`192.168.2.1` WITH GRANT OPTION;
-- GRANT ALL PRIVILEGES ON *.* TO `fog1`@`192.168.2.2` WITH GRANT OPTION;
-- GRANT ALL PRIVILEGES ON *.* TO `fog1`@`%` WITH GRANT OPTION;

-- CREATE DATABASE  IF NOT EXISTS `fog` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
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
-- Table structure for table `materials`
--

DROP TABLE IF EXISTS `materials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materials` (
  `material_id` int NOT NULL AUTO_INCREMENT,
  `material_name` varchar(45) NOT NULL,
  `material_price` int NOT NULL,
  PRIMARY KEY (`material_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materials`
--

LOCK TABLES `materials` WRITE;
/*!40000 ALTER TABLE `materials` DISABLE KEYS */;
/*!40000 ALTER TABLE `materials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_lines`
--

DROP TABLE IF EXISTS `order_lines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_lines` (
  `orderline_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `material_id` int NOT NULL,
  PRIMARY KEY (`orderline_id`),
  KEY `fk_order_lines_orders1_idx` (`order_id`),
  KEY `fk_order_lines_materials1_idx` (`material_id`),
  CONSTRAINT `fk_order_lines_materials1` FOREIGN KEY (`material_id`) REFERENCES `materials` (`material_id`),
  CONSTRAINT `fk_order_lines_orders1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_lines`
--

LOCK TABLES `order_lines` WRITE;
/*!40000 ALTER TABLE `order_lines` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_lines` ENABLE KEYS */;
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
  `order_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`order_id`),
  KEY `fk_orders_user_idx` (`customer_name`),
  CONSTRAINT `fk_orders_user` FOREIGN KEY (`customer_name`) REFERENCES `user` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
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
  `amount` int NOT NULL,
  PRIMARY KEY (`unit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unit`
--

LOCK TABLES `unit` WRITE;
/*!40000 ALTER TABLE `unit` DISABLE KEYS */;
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
  `password` varchar(45) NOT NULL,
  `role` varchar(45) NOT NULL DEFAULT 'user',
  `balance` varchar(45) NOT NULL DEFAULT '0',
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('admin','1234','admin','0'),('user','1234','user','0'),('user1234','1234','user','0'),('user23','123451','user','0');
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

-- Dump completed on 2022-12-16 21:04:02