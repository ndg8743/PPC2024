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
-- Table structure for table `player`
--

DROP TABLE IF EXISTS `player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `player` (
  `id` int NOT NULL AUTO_INCREMENT,
  `teamId` int DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `startYear` int DEFAULT NULL,
  `shirtNumber` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `teamId` (`teamId`),
  CONSTRAINT `player_ibfk_1` FOREIGN KEY (`teamId`) REFERENCES `team` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player`
--

LOCK TABLES `player` WRITE;
/*!40000 ALTER TABLE `player` DISABLE KEYS */;
INSERT INTO `player` VALUES (1,1,'Martin','Ødegaard','1998-12-17',2021,8),(2,1,'Gabriel','Jesus','1997-04-03',2022,9),(3,1,'Thomas','Partey','1993-06-13',2020,5),(4,1,'Aaron','Ramsdale','1998-05-14',2021,1),(5,1,'William','Saliba','2001-03-24',2022,12),(6,1,'Kieran','Tierney','1997-06-05',2019,3),(7,1,'Ben','White','1997-10-08',2021,4),(8,1,'Gabriel','Magalhães','1997-12-19',2020,6),(9,1,'Emile','Smith Rowe','2000-07-28',2016,10),(10,18,'Declan','Rice','1999-01-14',2016,41),(11,18,'Jarrod','Bowen','1996-12-20',2020,20),(12,18,'Lucas','Paquetá','1997-08-27',2022,10),(13,18,'Michail','Antonio','1990-03-28',2015,9),(14,18,'Tomas','Sou?ek','1995-02-27',2020,28),(15,18,'Kurt','Zouma','1994-10-27',2021,15),(16,18,'Gianluca','Scamacca','1999-01-01',2022,7),(17,18,'Lukasz','Fabianski','1985-04-18',2018,1),(18,18,'Aaron','Cresswell','1989-12-15',2014,3),(19,18,'Vladimir','Coufal','1993-12-22',2020,5),(20,61,'Florian','Wirtz','2003-05-03',2020,27),(21,61,'Moussa','Diaby','1999-07-07',2019,19),(22,61,'Patrik','Schick','1996-01-24',2020,14),(23,61,'Kerem','Demirbay','1993-07-03',2019,10),(24,61,'Jeremie','Frimpong','2000-12-10',2021,30),(25,61,'Granit','Xhaka','1992-09-27',2023,34),(26,1,'Bukayo','Saka','2001-09-05',2018,7),(27,1,'Martin','Ødegaard','1998-12-17',2021,8);
/*!40000 ALTER TABLE `player` ENABLE KEYS */;
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
