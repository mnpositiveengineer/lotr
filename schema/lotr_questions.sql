-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: lotr
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question` varchar(1000) NOT NULL,
  `answerA` varchar(1000) NOT NULL,
  `answerB` varchar(1000) NOT NULL,
  `answerC` varchar(1000) NOT NULL,
  `answerD` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,'Question:Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue quis urna sed sodales. Ut ac auctor leo. Ut tempor interdum felis pellentesque commodo.','Question:Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue quis urna sed sodales. Ut ac auctor leo. Ut tempor interdum felis pellentesque commodo.','Question:Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue quis urna sed sodales. Ut ac auctor leo. Ut tempor interdum felis pellentesque commodo.','Question:Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue quis urna sed sodales. Ut ac auctor leo. Ut tempor interdum felis pellentesque commodo.','Question:Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue quis urna sed sodales. Ut ac auctor leo. Ut tempor interdum felis pellentesque commodo.'),(2,'Question:Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue quis urna sed sodales. Ut ac auctor leo. Ut tempor interdum felis pellentesque commodo.','Question:Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue quis urna sed sodales. Ut ac auctor leo. Ut tempor interdum felis pellentesque commodo.','Question:Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue quis urna sed sodales. Ut ac auctor leo. Ut tempor interdum felis pellentesque commodo.','Question:Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue quis urna sed sodales. Ut ac auctor leo. Ut tempor interdum felis pellentesque commodo.','Question:Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue quis urna sed sodales. Ut ac auctor leo. Ut tempor interdum felis pellentesque commodo.'),(3,'Question:Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue quis urna sed sodales. Ut ac auctor leo. Ut tempor interdum felis pellentesque commodo.','Question:Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue quis urna sed sodales. Ut ac auctor leo. Ut tempor interdum felis pellentesque commodo.','Question:Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue quis urna sed sodales. Ut ac auctor leo. Ut tempor interdum felis pellentesque commodo.','Question:Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue quis urna sed sodales. Ut ac auctor leo. Ut tempor interdum felis pellentesque commodo.','Question:Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue quis urna sed sodales. Ut ac auctor leo. Ut tempor interdum felis pellentesque commodo.'),(4,'Question:Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue quis urna sed sodales. Ut ac auctor leo. Ut tempor interdum felis pellentesque commodo.','Question:Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue quis urna sed sodales. Ut ac auctor leo. Ut tempor interdum felis pellentesque commodo.','Question:Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue quis urna sed sodales. Ut ac auctor leo. Ut tempor interdum felis pellentesque commodo.','Question:Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue quis urna sed sodales. Ut ac auctor leo. Ut tempor interdum felis pellentesque commodo.','Question:Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue quis urna sed sodales. Ut ac auctor leo. Ut tempor interdum felis pellentesque commodo.'),(5,'Question:Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue quis urna sed sodales. Ut ac auctor leo. Ut tempor interdum felis pellentesque commodo.','Question:Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue quis urna sed sodales. Ut ac auctor leo. Ut tempor interdum felis pellentesque commodo.','Question:Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue quis urna sed sodales. Ut ac auctor leo. Ut tempor interdum felis pellentesque commodo.','Question:Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue quis urna sed sodales. Ut ac auctor leo. Ut tempor interdum felis pellentesque commodo.','Question:Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue quis urna sed sodales. Ut ac auctor leo. Ut tempor interdum felis pellentesque commodo.'),(6,'Question:Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue quis urna sed sodales. Ut ac auctor leo. Ut tempor interdum felis pellentesque commodo.','Question:Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue quis urna sed sodales. Ut ac auctor leo. Ut tempor interdum felis pellentesque commodo.','Question:Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue quis urna sed sodales. Ut ac auctor leo. Ut tempor interdum felis pellentesque commodo.','Question:Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue quis urna sed sodales. Ut ac auctor leo. Ut tempor interdum felis pellentesque commodo.','Question:Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue quis urna sed sodales. Ut ac auctor leo. Ut tempor interdum felis pellentesque commodo.'),(7,'Question:Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue quis urna sed sodales. Ut ac auctor leo. Ut tempor interdum felis pellentesque commodo.','Question:Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue quis urna sed sodales. Ut ac auctor leo. Ut tempor interdum felis pellentesque commodo.','Question:Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue quis urna sed sodales. Ut ac auctor leo. Ut tempor interdum felis pellentesque commodo.','Question:Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue quis urna sed sodales. Ut ac auctor leo. Ut tempor interdum felis pellentesque commodo.','Question:Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue quis urna sed sodales. Ut ac auctor leo. Ut tempor interdum felis pellentesque commodo.'),(8,'Question:Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue quis urna sed sodales. Ut ac auctor leo. Ut tempor interdum felis pellentesque commodo.','Question:Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue quis urna sed sodales. Ut ac auctor leo. Ut tempor interdum felis pellentesque commodo.','Question:Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue quis urna sed sodales. Ut ac auctor leo. Ut tempor interdum felis pellentesque commodo.','Question:Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue quis urna sed sodales. Ut ac auctor leo. Ut tempor interdum felis pellentesque commodo.','Question:Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue quis urna sed sodales. Ut ac auctor leo. Ut tempor interdum felis pellentesque commodo.'),(9,'Question:Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue quis urna sed sodales. Ut ac auctor leo. Ut tempor interdum felis pellentesque commodo.','Question:Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue quis urna sed sodales. Ut ac auctor leo. Ut tempor interdum felis pellentesque commodo.','Question:Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue quis urna sed sodales. Ut ac auctor leo. Ut tempor interdum felis pellentesque commodo.','Question:Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue quis urna sed sodales. Ut ac auctor leo. Ut tempor interdum felis pellentesque commodo.','Question:Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue quis urna sed sodales. Ut ac auctor leo. Ut tempor interdum felis pellentesque commodo.'),(10,'Question:Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue quis urna sed sodales. Ut ac auctor leo. Ut tempor interdum felis pellentesque commodo.','Question:Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue quis urna sed sodales. Ut ac auctor leo. Ut tempor interdum felis pellentesque commodo.','Question:Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue quis urna sed sodales. Ut ac auctor leo. Ut tempor interdum felis pellentesque commodo.','Question:Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue quis urna sed sodales. Ut ac auctor leo. Ut tempor interdum felis pellentesque commodo.','Question:Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue quis urna sed sodales. Ut ac auctor leo. Ut tempor interdum felis pellentesque commodo.');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-02 18:31:14
