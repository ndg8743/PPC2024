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
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `stadium` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES (1,'Arsenal','Emirates Stadium','London'),(2,'Aston Villa','Villa Park','Birmingham'),(3,'Bournemouth','Vitality Stadium','Bournemouth'),(4,'Brentford','Gtech Community Stadium','Brentford'),(5,'Brighton & Hove Albion','Amex Stadium','Brighton'),(6,'Chelsea','Stamford Bridge','London'),(7,'Crystal Palace','Selhurst Park','London'),(8,'Everton','Goodison Park','Liverpool'),(9,'Fulham','Craven Cottage','London'),(10,'Liverpool','Anfield','Liverpool'),(11,'Luton Town','Kenilworth Road','Luton'),(12,'Manchester City','Etihad Stadium','Manchester'),(13,'Manchester United','Old Trafford','Manchester'),(14,'Newcastle United','St James\' Park','Newcastle'),(15,'Nottingham Forest','City Ground','Nottingham'),(16,'Sheffield United','Bramall Lane','Sheffield'),(17,'Tottenham Hotspur','Tottenham Hotspur Stadium','London'),(18,'West Ham United','London Stadium','London'),(19,'Wolverhampton Wanderers','Molineux Stadium','Wolverhampton'),(20,'Burnley','Turf Moor','Burnley'),(21,'Alavés','Estadio de Mendizorroza','Vitoria-Gasteiz'),(22,'Almería','Estadio de los Juegos Mediterráneos','Almería'),(23,'Athletic Bilbao','San Mamés','Bilbao'),(24,'Atlético Madrid','Cívitas Metropolitano','Madrid'),(25,'Barcelona','Camp Nou','Barcelona'),(26,'Betis','Estadio Benito Villamarín','Seville'),(27,'Cádiz','Estadio Nuevo Mirandilla','Cádiz'),(28,'Celta Vigo','Estadio Municipal de Balaídos','Vigo'),(29,'Getafe','Coliseum Alfonso Pérez','Getafe'),(30,'Girona','Estadi Municipal de Montilivi','Girona'),(31,'Granada','Estadio Nuevo Los Cármenes','Granada'),(32,'Las Palmas','Estadio de Gran Canaria','Las Palmas'),(33,'Osasuna','Estadio El Sadar','Pamplona'),(34,'Real Madrid','Santiago Bernabéu','Madrid'),(35,'Real Sociedad','Reale Arena','San Sebastián'),(36,'Real Valladolid','Estadio José Zorrilla','Valladolid'),(37,'Rayo Vallecano','Estadio de Vallecas','Madrid'),(38,'Sevilla','Estadio Ramón Sánchez Pizjuán','Seville'),(39,'Valencia','Estadio Mestalla','Valencia'),(40,'Villarreal','Estadio de la Cerámica','Villarreal'),(41,'Atalanta','Gewiss Stadium','Bergamo'),(42,'Bologna','Stadio Renato Dall\'Ara','Bologna'),(43,'Brescia','Stadio Mario Rigamonti','Brescia'),(44,'Cagliari','Unipol Domus','Cagliari'),(45,'Cremonese','Stadio Giovanni Zini','Cremona'),(46,'Empoli','Stadio Carlo Castellani','Empoli'),(47,'Fiorentina','Stadio Artemio Franchi','Florence'),(48,'Genoa','Stadio Luigi Ferraris','Genoa'),(49,'Inter Milan','San Siro','Milan'),(50,'Juventus','Allianz Stadium','Turin'),(51,'Lazio','Stadio Olimpico','Rome'),(52,'AC Milan','San Siro','Milan'),(53,'Napoli','Stadio Diego Armando Maradona','Naples'),(54,'Monza','U-Power Stadium','Monza'),(55,'Roma','Stadio Olimpico','Rome'),(56,'Sampdoria','Stadio Luigi Ferraris','Genoa'),(57,'Sassuolo','Mapei Stadium','Reggio Emilia'),(58,'Torino','Stadio Olimpico Grande Torino','Turin'),(59,'Udinese','Dacia Arena','Udine'),(60,'Verona','Stadio Marcantonio Bentegodi','Verona'),(61,'Bayer Leverkusen','BayArena','Leverkusen'),(62,'Bayern Munich','Allianz Arena','Munich'),(63,'Bremen','Weser-Stadion','Bremen'),(64,'Burgos','Estadio El Plantío','Burgos'),(65,'Cologne','RheinEnergieStadion','Cologne'),(66,'Dortmund','Signal Iduna Park','Dortmund'),(67,'Eintracht Frankfurt','Deutsche Bank Park','Frankfurt'),(68,'Freiburg','Europa-Park Stadion','Freiburg'),(69,'Hamburg','Volksparkstadion','Hamburg'),(70,'Hannover','HDI-Arena','Hannover'),(71,'Hoffenheim','PreZero Arena','Sinsheim'),(72,'Mainz','Mewa Arena','Mainz'),(73,'Monchengladbach','Borussia-Park','Mönchengladbach'),(74,'RB Leipzig','Red Bull Arena','Leipzig'),(75,'Stuttgart','Mercedes-Benz Arena','Stuttgart'),(76,'Union Berlin','Stadion An der Alten Försterei','Berlin'),(77,'Wolfsburg','Volkswagen Arena','Wolfsburg'),(78,'Paderborn','Benteler-Arena','Paderborn'),(79,'Düsseldorf','Merkur Spiel-Arena','Düsseldorf'),(80,'Kaiserslautern','Fritz-Walter-Stadion','Kaiserslautern'),(81,'Auxerre','Stade de l\'Abbé-Deschamps','Auxerre'),(82,'Brest','Stade Francis-Le Blé','Brest'),(83,'Lille','Stade Pierre-Mauroy','Lille'),(84,'Lorient','Stade Yves-Allainmat','Lorient'),(85,'Lyon','Groupama Stadium','Décines-Charpieu'),(86,'Marseille','Vélodrome Stadium','Marseille'),(87,'Monaco','Stade Louis II','Monaco'),(88,'Montpellier','Stade de la Mosson','Montpellier'),(89,'Nantes','Stade de la Beaujoire','Nantes'),(90,'Nice','Allianz Riviera','Nice'),(91,'Paris Saint-Germain (PSG)','Parc des Princes','Paris'),(92,'Rennes','Roazhon Park','Rennes'),(93,'Strasbourg','Stade de la Meinau','Strasbourg'),(94,'Toulouse','Stadium de Toulouse','Toulouse'),(95,'Clermont','Stade Gabriel Montpied','Clermont-Ferrand'),(96,'Reims','Stade Auguste-Delaune','Reims'),(97,'Bordeaux','Stade de Bordeaux','Bordeaux'),(98,'Lens','Stade Bollaert-Delelis','Lens'),(99,'Ajaccio','Stade François-Coty','Ajaccio');
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
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
