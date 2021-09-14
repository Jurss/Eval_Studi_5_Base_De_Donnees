-- MariaDB dump 10.19  Distrib 10.6.4-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: cinema
-- ------------------------------------------------------
-- Server version	10.6.4-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `complex`
--

DROP TABLE IF EXISTS `complex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `complex` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `total_hall` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complex`
--

LOCK TABLES `complex` WRITE;
/*!40000 ALTER TABLE `complex` DISABLE KEYS */;
INSERT INTO `complex` VALUES (1,'Le théâtre 4D',9),(2,'Cinemanimal',7),(3,'Spectakl',13),(4,'Mon Siège à Rêves',11),(5,'Frères de l\'Ombre',12),(6,'Multicinéma Martin',10);
/*!40000 ALTER TABLE `complex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complex_info`
--

DROP TABLE IF EXISTS `complex_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `complex_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(250) NOT NULL,
  `postal_code` varchar(5) NOT NULL,
  `address` varchar(250) NOT NULL,
  `phone` char(10) NOT NULL,
  `name_complex_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name_complex_id` (`name_complex_id`),
  CONSTRAINT `complex_info_ibfk_1` FOREIGN KEY (`name_complex_id`) REFERENCES `complex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complex_info`
--

LOCK TABLES `complex_info` WRITE;
/*!40000 ALTER TABLE `complex_info` DISABLE KEYS */;
INSERT INTO `complex_info` VALUES (1,'Lille','59000','28 rue du centre','0321000000',1),(2,'Valenciennes','59300','78 boulevard du nord','0321010101',2),(3,'Lens','62300','4 avenue du sud','0321020202',3),(4,'Arras','62000','136 passage de l\'ouest','0321030303',4),(5,'Saint-Omer','62500','place de l\'est','0321040404',5),(6,'Amiens','80000','44 rue de la cardinalité','0321050505',6);
/*!40000 ALTER TABLE `complex_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hall_detail`
--

DROP TABLE IF EXISTS `hall_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hall_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hall_name` varchar(50) NOT NULL,
  `place` int(4) NOT NULL,
  `id_complex` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_complex` (`id_complex`),
  CONSTRAINT `hall_detail_ibfk_1` FOREIGN KEY (`id_complex`) REFERENCES `complex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hall_detail`
--

LOCK TABLES `hall_detail` WRITE;
/*!40000 ALTER TABLE `hall_detail` DISABLE KEYS */;
INSERT INTO `hall_detail` VALUES (1,'salle n°1',854,1),(2,'salle n°2',854,1),(3,'salle n°3',854,1),(4,'salle n°4',645,1),(5,'salle n°5',645,1),(6,'salle n°6',645,1),(7,'salle n°7',645,1),(8,'salle n°8',520,1),(9,'salle n°9',645,1),(10,'salle n°1',900,2),(11,'salle n°2',900,2),(12,'salle n°3',750,2),(13,'salle n°4',750,2),(14,'salle n°5',750,2),(15,'salle n°6',400,2),(16,'salle n°7',400,2),(17,'salle n°1',734,3),(18,'salle n°2',734,3),(19,'salle n°3',734,3),(20,'salle n°4',734,3),(21,'salle n°5',574,3),(22,'salle n°6',574,3),(23,'salle n°7',574,3),(24,'salle n°8',574,3),(25,'salle n°9',574,3),(26,'salle n°10',500,3),(27,'salle n°11',500,3),(28,'salle n°12',500,3),(29,'salle n°13',500,3),(30,'salle n°1',888,4),(31,'salle n°2',888,4),(32,'salle n°3',888,4),(33,'salle n°4',888,4),(34,'salle n°5',888,4),(35,'salle n°6',888,4),(36,'salle n°7',888,4),(37,'salle n°8',888,4),(38,'salle n°9',888,4),(39,'salle n°10',888,4),(40,'salle n°11',888,4),(41,'salle n°1',480,5),(42,'salle n°2',480,5),(43,'salle n°3',480,5),(44,'salle n°4',480,5),(45,'salle n°5',396,5),(46,'salle n°6',396,5),(47,'salle n°7',396,5),(48,'salle n°8',330,5),(49,'salle n°9',330,5),(50,'salle n°10',330,5),(51,'salle n°11',330,5),(52,'salle n°1',1020,6),(53,'salle n°2',1020,6),(54,'salle n°3',900,6),(55,'salle n°4',900,6),(56,'salle n°5',810,6),(57,'salle n°6',810,6),(58,'salle n°7',810,6),(59,'salle n°8',810,6),(60,'salle n°9',810,6),(61,'salle n°10',680,6);
/*!40000 ALTER TABLE `hall_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_on_show`
--

DROP TABLE IF EXISTS `movie_on_show`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie_on_show` (
  `id` char(36) NOT NULL,
  `movie` varchar(100) NOT NULL,
  `synopsis` text NOT NULL,
  `duration` varchar(5) NOT NULL,
  `producer` varchar(100) NOT NULL,
  `release_date` date NOT NULL,
  `end_broadcast` date NOT NULL,
  `on_complex_id_one` tinyint(1) NOT NULL,
  `on_complex_id_two` tinyint(1) NOT NULL,
  `on_complex_id_three` tinyint(1) NOT NULL,
  `on_complex_id_four` tinyint(1) NOT NULL,
  `on_complex_id_five` tinyint(1) NOT NULL,
  `on_complex_id_six` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_on_show`
--

LOCK TABLES `movie_on_show` WRITE;
/*!40000 ALTER TABLE `movie_on_show` DISABLE KEYS */;
INSERT INTO `movie_on_show` VALUES ('32dbe2ae-1573-11ec-94dd-1c872cb199a9','Men In Black','Chargés de protéger la Terre de toute infraction extraterrestre et de réguler l\'immigration intergalactique sur notre planète, les Men in black ou MIB opèrent dans le plus grand secret. Vêtus de costumes sombres et équipés des toutes dernières technologies, ils passent inaperçus aux yeux des humains dont ils effacent régulièrement la mémoire récente : la présence d\'aliens sur notre sol doit rester secrète.','01h38','Barry Sonnefeld','1997-08-06','2021-10-24',1,1,1,1,1,1),('8b616c41-1574-11ec-94dd-1c872cb199a9','Le seigneur des anneaux: La communauté de l\'anneau','Dans ce chapitre de la trilogie, le jeune et timide Hobbit, Frodon Sacquet, hérite d\'un anneau. Bien loin d\'être une simple babiole, il s\'agit de l\'Anneau Unique, un instrument de pouvoir absolu qui permettrait à Sauron, le Seigneur des ténèbres, de régner sur la Terre du Milieu et de réduire en esclavage ses peuples. À moins que Frodon, aidé d\'une Compagnie constituée de Hobbits, d\'Hommes, d\'un Magicien, d\'un Nain, et d\'un Elfe, ne parvienne à emporter l\'Anneau à travers la Terre du Milieu jusqu\'à la Crevasse du Destin, lieu où il a été forgé, et à le détruire pour toujours. Un tel périple signifie s\'aventurer très loin en Mordor, les terres du Seigneur des ténèbres, où est rassemblée son armée d\'Orques maléfiques... La Compagnie doit non seulement combattre les forces extérieures du mal mais aussi les dissensions internes et l\'influence corruptrice qu\'exerce l\'Anneau lui-même.','02h58','Peter Jackson','2001-12-19','2021-09-29',1,0,1,0,1,0),('b5674e39-1573-11ec-94dd-1c872cb199a9','8 Mile','A Detroit, en 1995, Jimmy Smith Jr. a des rêves plein la tête, mais il lui manque encore les mots pour les exprimer. Sa vie d\'adolescent se déroule entre banlieue blanche et quartiers noirs, le long de cette ligne de démarcation que l\'on nomme 8 Mile Road. En dépit de tous ses efforts, Jimmy n\'a jamais franchi cette barrière symbolique et continue d\'accumuler les déboires familiaux, professionnels et sentimentaux.','01h50','Curtis Hanson','2003-02-26','2021-10-24',1,1,1,0,1,0),('f926acf7-1571-11ec-94dd-1c872cb199a9','Training Day','Jake Hoyt est une nouvelle recrue de la police de Los Angeles. Décidé à devenir inspecteur, il sollicite une mise à l\'essai de 24 heures auprès du sergent chef Alonzo Harris, un vétéran de la lutte antidrogue qui opère depuis douze ans dans les quartiers les plus chauds de la ville.','02h01','Antoine Fuqua','2001-11-07','2021-10-18',0,1,1,1,0,1);
/*!40000 ALTER TABLE `movie_on_show` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment` (
  `id` char(36) NOT NULL,
  `online_payment` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES ('6aa03610-157f-11ec-94dd-1c872cb199a9',0),('6aa03a90-157f-11ec-94dd-1c872cb199a9',1);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `price`
--

DROP TABLE IF EXISTS `price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `price` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `categorie` varchar(25) NOT NULL,
  `price` float(4,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `price`
--

LOCK TABLES `price` WRITE;
/*!40000 ALTER TABLE `price` DISABLE KEYS */;
INSERT INTO `price` VALUES (1,'Plein tarif',9.20),(2,'Etudiant',7.60),(3,'Moins de 14 ans',5.90);
/*!40000 ALTER TABLE `price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservation` (
  `id` char(36) NOT NULL,
  `nb_under_fourteen_place` int(4) DEFAULT 0,
  `nb_student_place` int(4) DEFAULT 0,
  `nb_full_price_place` int(4) DEFAULT 0,
  `id_client` char(36) NOT NULL,
  `id_movie` char(36) NOT NULL,
  `id_payment` char(36) NOT NULL,
  `id_under_fourteen_categorie` int(2) DEFAULT NULL,
  `id_student_categorie` int(2) DEFAULT NULL,
  `id_full_price_categorie` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_client` (`id_client`),
  KEY `id_movie` (`id_movie`),
  KEY `id_payment` (`id_payment`),
  KEY `id_under_fourteen_categorie` (`id_under_fourteen_categorie`),
  KEY `id_student_categorie` (`id_student_categorie`),
  KEY `id_full_price_categorie` (`id_full_price_categorie`),
  CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `user` (`id`),
  CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`id_movie`) REFERENCES `movie_on_show` (`id`),
  CONSTRAINT `reservation_ibfk_3` FOREIGN KEY (`id_payment`) REFERENCES `payment` (`id`),
  CONSTRAINT `reservation_ibfk_4` FOREIGN KEY (`id_under_fourteen_categorie`) REFERENCES `price` (`id`),
  CONSTRAINT `reservation_ibfk_5` FOREIGN KEY (`id_student_categorie`) REFERENCES `price` (`id`),
  CONSTRAINT `reservation_ibfk_6` FOREIGN KEY (`id_full_price_categorie`) REFERENCES `price` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` VALUES ('3524c817-1580-11ec-94dd-1c872cb199a9',3,1,2,'00cfb214-157d-11ec-94dd-1c872cb199a9','8b616c41-1574-11ec-94dd-1c872cb199a9','6aa03a90-157f-11ec-94dd-1c872cb199a9',3,2,1),('74ef86c5-1580-11ec-94dd-1c872cb199a9',0,0,2,'00cfb321-157d-11ec-94dd-1c872cb199a9','f926acf7-1571-11ec-94dd-1c872cb199a9','6aa03610-157f-11ec-94dd-1c872cb199a9',3,2,1);
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` char(36) NOT NULL,
  `role_name` varchar(18) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES ('392ccfe0-1530-11ec-94dd-1c872cb199a9','mainAdmin'),('392ce802-1530-11ec-94dd-1c872cb199a9','adminComplex'),('884cd931-1578-11ec-94dd-1c872cb199a9','client');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timetable`
--

DROP TABLE IF EXISTS `timetable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `timetable` (
  `id` char(36) NOT NULL,
  `start_time` datetime NOT NULL,
  `id_movie` char(36) NOT NULL,
  `id_complex` int(11) NOT NULL,
  `id_hall` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_movie` (`id_movie`),
  KEY `id_complex` (`id_complex`),
  KEY `id_hall` (`id_hall`),
  CONSTRAINT `timetable_ibfk_1` FOREIGN KEY (`id_movie`) REFERENCES `movie_on_show` (`id`),
  CONSTRAINT `timetable_ibfk_2` FOREIGN KEY (`id_complex`) REFERENCES `complex` (`id`),
  CONSTRAINT `timetable_ibfk_3` FOREIGN KEY (`id_hall`) REFERENCES `hall_detail` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timetable`
--

LOCK TABLES `timetable` WRITE;
/*!40000 ALTER TABLE `timetable` DISABLE KEYS */;
INSERT INTO `timetable` VALUES ('45c4b63e-1578-11ec-94dd-1c872cb199a9','2021-09-18 14:00:00','8b616c41-1574-11ec-94dd-1c872cb199a9',1,3),('45c4d391-1578-11ec-94dd-1c872cb199a9','2021-09-18 14:00:00','8b616c41-1574-11ec-94dd-1c872cb199a9',3,1),('45c4d4cc-1578-11ec-94dd-1c872cb199a9','2021-09-18 14:00:00','8b616c41-1574-11ec-94dd-1c872cb199a9',5,1),('45c4d568-1578-11ec-94dd-1c872cb199a9','2021-09-18 20:30:00','f926acf7-1571-11ec-94dd-1c872cb199a9',2,6),('45c4d5f5-1578-11ec-94dd-1c872cb199a9','2021-09-18 20:00:00','f926acf7-1571-11ec-94dd-1c872cb199a9',3,4),('45c4d67c-1578-11ec-94dd-1c872cb199a9','2021-09-18 11:00:00','f926acf7-1571-11ec-94dd-1c872cb199a9',4,6),('45c4d6fe-1578-11ec-94dd-1c872cb199a9','2021-09-18 17:00:00','f926acf7-1571-11ec-94dd-1c872cb199a9',6,9),('45c4d786-1578-11ec-94dd-1c872cb199a9','2021-09-18 17:00:00','b5674e39-1573-11ec-94dd-1c872cb199a9',1,1),('45c4d80b-1578-11ec-94dd-1c872cb199a9','2021-09-18 17:30:00','b5674e39-1573-11ec-94dd-1c872cb199a9',2,1),('45c4d889-1578-11ec-94dd-1c872cb199a9','2021-09-18 16:45:00','b5674e39-1573-11ec-94dd-1c872cb199a9',3,5),('45c4d909-1578-11ec-94dd-1c872cb199a9','2021-09-18 18:15:00','b5674e39-1573-11ec-94dd-1c872cb199a9',5,5),('45c4d98d-1578-11ec-94dd-1c872cb199a9','2021-09-18 17:00:00','b5674e39-1573-11ec-94dd-1c872cb199a9',6,11);
/*!40000 ALTER TABLE `timetable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` char(36) NOT NULL,
  `email` varchar(254) NOT NULL,
  `password` char(60) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `role_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('00cfab47-157d-11ec-94dd-1c872cb199a9','griffinClarke@arkadia.com','$2y$10$wAYcUbpLFvdI2HRtZkK1V.n3U9jR4j8agxLyizi9hlS6NV3.J3oGq','Clarke','Griffin','392ccfe0-1530-11ec-94dd-1c872cb199a9'),('00cfb214-157d-11ec-94dd-1c872cb199a9','johnMcCleane@hell.com','$2y$10$BcrnUiJE.qGqfjOtdwr8OOBcnausz43vdxJDjDckqPDlF6m0HIUc2','John','McCleane','884cd931-1578-11ec-94dd-1c872cb199a9'),('00cfb321-157d-11ec-94dd-1c872cb199a9','heritage@rls.com','$2y$10$CsuDreYC9EQY9xymoKFB7.gsR4Eeq5cfpV6kORoXhQNdXqyNHyM/S','Jim','Hawkins','884cd931-1578-11ec-94dd-1c872cb199a9'),('00cfb393-157d-11ec-94dd-1c872cb199a9','darildidi@hunt.com','$2y$10$CDwpKsU2ZsMqVnvP9orLRObitTOcjPnCYknQIWGAu.S6fQgvhIoLe','Daril','Dixon','392ce802-1530-11ec-94dd-1c872cb199a9'),('00cfb3e6-157d-11ec-94dd-1c872cb199a9','mrrobot@engineer.com','$2y$10$auvqPVUIpvcDJWCZWK.DmegLQsQu6aGuaZHR744QIMY0iVHwsE0tu','Elliot','Alderson','392ce802-1530-11ec-94dd-1c872cb199a9');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-14 19:24:03
