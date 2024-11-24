-- MySQL dump 10.13  Distrib 8.0.37, for Win64 (x86_64)
--
-- Host: localhost    Database: schooldb
-- ------------------------------------------------------
-- Server version	8.0.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classes` (
  `ClassID` int NOT NULL AUTO_INCREMENT,
  `ClassName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ClassID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classes`
--

LOCK TABLES `classes` WRITE;
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
INSERT INTO `classes` VALUES (1,'MALIKHAIN'),(2,'MASIPAG'),(3,'MATIYAGA'),(4,'MABAIT');
/*!40000 ALTER TABLE `classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `StudentID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `Age` int DEFAULT NULL,
  `ClassID` int DEFAULT NULL,
  `Gender` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`StudentID`),
  KEY `ClassID_fk` (`ClassID`),
  CONSTRAINT `ClassID_fk` FOREIGN KEY (`ClassID`) REFERENCES `classes` (`ClassID`)
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'Jordana Langford',18,1,'Female'),(2,'Remy Storks',18,3,'Female'),(3,'Verine Ortmann',20,3,'Female'),(4,'Giff Powers',18,2,'Male'),(5,'Nancee Elliman',19,1,'Female'),(6,'Vernon Walby',20,2,'Male'),(7,'Wenda Andrioli',19,2,'Female'),(8,'Allix Clements',20,1,'Female'),(9,'Clerkclaude Pugh',19,3,'Male'),(10,'Shane Jarred',20,4,'Male'),(11,'Giffy Metson',19,1,'Male'),(12,'Artemas Ship',19,4,'Male'),(13,'Rhona Kittless',20,3,'Female'),(14,'Harriett Neilan',18,2,'Female'),(15,'Gussy Beswick',19,3,'Female'),(16,'Camille Kinneir',18,4,'Female'),(17,'Gareth Rentilll',20,1,'Male'),(18,'Kat Tal',19,3,'Female'),(19,'Boniface Merrell',18,2,'Male'),(20,'Robbin Jelk',19,2,'Female'),(21,'Fran Sperling',20,3,'Female'),(22,'Bruce Zottoli',20,4,'Male'),(23,'Nike Solleme',20,4,'Female'),(24,'Tandie Vlasov',18,3,'Female'),(25,'Aridatha Mullineux',20,3,'Female'),(26,'Tiebold Shallo',20,3,'Male'),(27,'Thaddus Mullord',18,1,'Male'),(28,'Avrom Etienne',19,4,'Male'),(29,'Rhett Whate',19,1,'Male'),(30,'Nappie Ivey',19,4,'Male'),(31,'Tootsie Restieaux',18,1,'Female'),(32,'Dionisio Littleton',18,3,'Male'),(33,'Kalle Apple',18,1,'Male'),(34,'Guglielmo Treby',20,4,'Male'),(35,'Lark Nason',19,4,'Female'),(36,'Thibaut Catley',18,3,'Male'),(37,'Morly Sigart',19,2,'Male'),(38,'Madelon Eland',20,3,'Female'),(39,'Winfred Penhale',20,3,'Male'),(40,'Clayborn Scantleberry',19,2,'Male'),(41,'Lia Lemon',20,4,'Female'),(42,'Concordia Grace',20,2,'Female'),(43,'Hi Vanezis',20,1,'Male'),(44,'Jami Spinelli',19,2,'Female'),(45,'Eve Edens',19,3,'Female'),(46,'Daisy Klamp',18,3,'Female'),(47,'Raimund Northcott',18,1,'Male'),(48,'Kristos de Lloyd',19,1,'Male'),(49,'Lillian Gorges',20,3,'Female'),(50,'Jennette Kitchin',19,4,'Female'),(51,'Clea Maddock',19,3,'Female'),(52,'Gilligan Baldelli',20,4,'Female'),(53,'Osbert Unworth',20,3,'Male'),(54,'Carolin Glanvill',20,2,'Female'),(55,'Olva Cantos',18,1,'Female'),(56,'Tamas Whiteland',18,1,'Male'),(57,'Sergent Roblou',20,1,'Male'),(58,'Flemming Lintill',19,3,'Male'),(59,'Bud Tallant',18,2,'Male'),(60,'Porty Shawdforth',19,2,'Male'),(61,'Stella Robel',20,3,'Female'),(62,'Bobbie Stephenson',18,4,'Male'),(63,'Noni Hars',18,2,'Female'),(64,'Tedra McIlraith',20,3,'Female'),(65,'Germayne Littell',20,2,'Male'),(66,'Karia Hamner',18,4,'Female'),(67,'Wayland Hutson',18,2,'Male'),(68,'Lillis Babinski',18,4,'Female'),(69,'Rooney Thoma',19,1,'Male'),(70,'Dannie Becerra',18,2,'Female'),(71,'Arv Conerding',20,4,'Male'),(72,'Conrad Feldmesser',18,2,'Male'),(73,'Gibbie Paunsford',20,4,'Male'),(74,'Lil Swinley',19,4,'Female'),(75,'Barn O\'Kennedy',19,1,'Male'),(76,'Brantley Berriman',19,2,'Male'),(77,'Francisca Roggers',20,4,'Female'),(78,'Efren Fosse',18,3,'Male'),(79,'Riordan Lenormand',19,4,'Male'),(80,'Percy Hamprecht',19,2,'Male'),(81,'Louie Monckton',20,2,'Male'),(82,'Benny Yelden',18,4,'Male'),(83,'Vivyanne Sturzaker',18,1,'Female'),(84,'Ashlan Whelpton',19,1,'Female'),(85,'Raychel Douberday',18,1,'Female'),(86,'Alanna Smorthwaite',19,1,'Female'),(87,'De Ten Broek',20,2,'Female'),(88,'Lavinia Attrey',19,3,'Female'),(89,'Katheryn Knifton',20,3,'Female'),(90,'Rorke Boggs',20,2,'Male'),(91,'Vern Ionnisian',18,4,'Male'),(92,'Tonie Bierling',19,2,'Female'),(93,'Fleming Taggett',20,2,'Male'),(94,'Gisela Norville',19,2,'Female'),(95,'Mirabelle Leyband',18,3,'Female'),(96,'Marianna Oxer',19,3,'Female'),(97,'Avie Mitchener',20,2,'Female'),(98,'Malinde Giraldon',19,1,'Female'),(99,'Lars D\'Antuoni',19,3,'Male'),(100,'Muhammad Brogan',19,3,'Male'),(101,'Pat Carse',19,1,'Female'),(102,'Jameson Bruckman',20,4,'Male'),(103,'Lind Esposito',20,3,'Female'),(104,'Shamus Ida',19,2,'Male'),(105,'Bradney Andreotti',18,4,'Male'),(106,'Felita Openshaw',20,3,'Female'),(107,'Ciel Stedman',20,3,'Female'),(108,'Melonie Sybry',20,2,'Female'),(109,'Georges Yeandel',19,4,'Male'),(110,'Faina Boddie',20,1,'Female'),(111,'Wendell Mahody',18,4,'Male'),(112,'Devlen Seys',19,3,'Male'),(113,'Patton Woodings',19,2,'Male'),(114,'Orsa Coytes',18,1,'Female'),(115,'Karlan Sailor',19,1,'Male'),(116,'Ashien Membry',18,1,'Female'),(117,'Alwyn Rigolle',19,4,'Male'),(118,'Donny Clements',20,2,'Male'),(119,'Davey Scollick',18,1,'Male'),(120,'Aigneis Dasent',18,4,'Female'),(121,'Rosana Tomkys',19,4,'Female'),(122,'Rudie Nathan',20,3,'Male'),(123,'Jeanelle Stringman',19,2,'Female'),(124,'Conant Burleton',19,2,'Male'),(125,'Alick MacNamee',20,4,'Male'),(126,'Vivienne Poag',19,1,'Female'),(127,'Buck Behrens',20,4,'Male'),(128,'Katy Canter',19,1,'Female'),(129,'Carmelia Brownsall',19,2,'Female'),(130,'Korey Byrd',19,2,'Male'),(131,'Hal Janikowski',18,3,'Male'),(132,'Briney Birkmyr',19,4,'Female'),(133,'Gaylene Patsall',19,4,'Female'),(134,'Conni Cotterell',20,1,'Female'),(135,'Martynne Hallworth',20,3,'Female'),(136,'Ettore Tookey',19,1,'Male'),(137,'Annaliese Kevlin',18,3,'Female'),(138,'Broddie Schiementz',18,1,'Male'),(139,'Andrej Balazs',19,3,'Male'),(140,'Orazio Dimitru',19,3,'Male'),(141,'Gloria Hyams',19,4,'Female'),(142,'Uriah Ashcroft',19,4,'Male'),(143,'Concettina Don',18,4,'Female'),(144,'Ruy Alldre',20,3,'Male'),(145,'Zebadiah Ledwith',18,1,'Male'),(146,'Waylin Reinard',20,1,'Male'),(147,'Beatriz Lauritsen',20,3,'Female'),(148,'Desirae Flecknoe',20,1,'Female'),(149,'Rhianon Casin',18,3,'Female'),(150,'Berty Greenalf',19,1,'Male'),(151,'Glenn Tenman',19,4,'Male'),(152,'Anitra Cardis',19,4,'Female'),(153,'Violette Gissing',19,2,'Female'),(154,'Tate Rusted',18,1,'Male'),(155,'Lorry Lamble',18,1,'Female'),(156,'Georges Cokayne',19,1,'Male'),(157,'Edan Duffet',19,2,'Male'),(158,'Tirrell Bang',18,4,'Male'),(159,'Benedict Wollen',20,4,'Male'),(160,'Ezmeralda Ciraldo',19,3,'Female'),(161,'Danny Styche',19,1,'Female'),(162,'Jozef Townsend',18,3,'Male'),(163,'Sibley Lorans',20,3,'Female'),(164,'Hugo Canner',19,3,'Male'),(165,'Ingaberg Connachan',18,4,'Female'),(166,'Dionis Sothcott',18,1,'Female'),(167,'Sayre Brettoner',18,4,'Female'),(168,'Jaclyn Hawkings',18,3,'Female'),(169,'Dominic Hundell',18,2,'Male'),(170,'Sally Braunfeld',19,1,'Female'),(171,'Ulises Wikey',20,3,'Male'),(172,'Leslie Gwyther',20,4,'Male'),(173,'Austin Paynter',19,2,'Male'),(174,'Loella Lideard',18,4,'Female'),(175,'Fremont Demeza',20,4,'Male'),(176,'Toma Clover',20,3,'Female'),(177,'Justus Kilgannon',18,1,'Male'),(178,'Micheline Bleackley',18,2,'Female'),(179,'Huey Rawne',20,4,'Male'),(180,'Evyn Antonchik',19,2,'Male'),(181,'Sonny Ingliby',20,2,'Male'),(182,'Lavena Kornyakov',19,1,'Female'),(183,'Malory Allmen',18,4,'Female'),(184,'Aggy Cossam',20,2,'Female'),(185,'Leticia Gowanson',18,2,'Female'),(186,'Sarette Bellingham',18,4,'Female'),(187,'Valry Jouhan',19,1,'Female'),(188,'Emmery Gook',18,4,'Male'),(189,'Germain Skelding',18,2,'Female'),(190,'Johnathon Huegett',19,3,'Male'),(191,'Natty Djekovic',18,4,'Male'),(192,'Penny Shawley',18,3,'Male'),(193,'Coreen Harry',20,1,'Female'),(194,'Luther Purves',20,4,'Male'),(195,'Stillman Pantling',18,3,'Male'),(196,'Georgie Dobeson',18,1,'Male'),(197,'Crista Gerrill',19,1,'Female'),(198,'Jim Crozier',18,1,'Male'),(199,'Cornall Arndt',19,1,'Male'),(200,'Jonell Attyeo',20,2,'Female'),(201,'Quack',13,1,'Male');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-24 21:30:54
