CREATE DATABASE  IF NOT EXISTS `soccer_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `soccer_db`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: soccer_db
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `referee`
--

DROP TABLE IF EXISTS `referee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `referee` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `yearsOfExperiance` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referee`
--

LOCK TABLES `referee` WRITE;
/*!40000 ALTER TABLE `referee` DISABLE KEYS */;
INSERT INTO `referee` VALUES (1,'Anthony','Taylor','1978-10-20',22),(2,'Martin','Atkinson','1971-03-31',25),(3,'Mike','Dean','1968-06-02',27),(4,'Paul','Tierney','1980-12-25',18),(5,'Mateu','Lahoz','1977-03-12',24),(6,'Carlos','Del Cerro Grande','1976-03-13',22),(7,'Jesús','Gil Manzano','1984-02-04',19),(8,'Antonio','Mateu','1977-12-11',23),(9,'Alejandro','Hernández','1982-11-10',17),(10,'Felix','Brych','1975-08-03',25),(11,'Deniz','Aytekin','1978-07-21',18),(12,'Daniel','Siebert','1984-05-04',15),(13,'Tobias','Stieler','1981-07-02',17),(14,'Sascha','Stegemann','1984-12-06',14),(15,'Daniele','Orsato','1975-11-23',21),(16,'Gianluca','Rocchi','1973-08-25',24),(17,'Paolo','Valeri','1978-05-16',19),(18,'Massimiliano','Irrati','1979-06-27',17),(19,'Marco','Guida','1981-06-07',18),(20,'Clément','Turpin','1982-05-16',16),(21,'Ruddy','Buquet','1977-01-29',20),(22,'Benoît','Bastien','1983-04-17',14),(23,'Stéphanie','Frappart','1983-12-14',11),(24,'Jérôme','Brisard','1986-03-24',12),(25,'Michael','Oliver','1985-02-20',20);
/*!40000 ALTER TABLE `referee` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-02 18:48:10
