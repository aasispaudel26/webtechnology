-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: retail_db
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_department_id` int NOT NULL,
  `category_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,2,'Football'),(2,2,'Soccer'),(3,2,'Baseball & Softball'),(4,2,'Basketball'),(5,2,'Lacrosse'),(6,2,'Tennis & Racquet'),(7,2,'Hockey'),(8,2,'More Sports'),(9,3,'Cardio Equipment'),(10,3,'Strength Training'),(11,3,'Fitness Accessories'),(12,3,'Boxing & MMA'),(13,3,'Electronics'),(14,3,'Yoga & Pilates'),(15,3,'Training by Sport'),(16,3,'As Seen on  TV!'),(17,4,'Cleats'),(18,4,'Men\'s Footwear'),(19,4,'Women\'s Footwear'),(20,4,'Kids\' Footwear'),(21,4,'Featured Shops'),(22,4,'Accessories'),(23,5,'Men\'s Apparel'),(24,5,'Women\'s Apparel'),(25,5,'Boys\' Apparel'),(26,5,'Girls\' Apparel'),(27,5,'Accessories'),(28,5,'Top Brands'),(29,5,'Shop By Sport'),(30,6,'Men\'s Golf Clubs'),(31,6,'Women\'s Golf Clubs'),(32,6,'Golf Apparel'),(33,6,'Golf Shoes'),(34,6,'Golf Bags & Carts'),(35,6,'Golf Gloves'),(36,6,'Golf Balls'),(37,6,'Electronics'),(38,6,'Kids\' Golf Clubs'),(39,6,'Team Shop'),(40,6,'Accessories'),(41,6,'Trade-In'),(42,7,'Bike & Skate Shop'),(43,7,'Camping & Hiking'),(44,7,'Hunting & Shooting'),(45,7,'Fishing'),(46,7,'Indoor/Outdoor Games'),(47,7,'Boating'),(48,7,'Water Sports'),(49,8,'MLB'),(50,8,'NFL'),(51,8,'NHL'),(52,8,'NBA'),(53,8,'NCAA'),(54,8,'MLS'),(55,8,'International Soccer'),(56,8,'World Cup Shop'),(57,8,'MLB Players'),(58,8,'NFL Players');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-27 16:17:41
