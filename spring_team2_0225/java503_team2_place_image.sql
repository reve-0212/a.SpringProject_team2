-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 58.239.58.243    Database: java503_team2
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `place_image`
--

DROP TABLE IF EXISTS `place_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `place_image` (
  `place_image_idx` int NOT NULL AUTO_INCREMENT,
  `place_idx` int DEFAULT NULL,
  `image_name` varchar(45) DEFAULT NULL,
  `image_path` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`place_image_idx`),
  KEY `place_idx_idx` (`place_idx`),
  CONSTRAINT `place_idx` FOREIGN KEY (`place_idx`) REFERENCES `place` (`place_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=213 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `place_image`
--

LOCK TABLES `place_image` WRITE;
/*!40000 ALTER TABLE `place_image` DISABLE KEYS */;
INSERT INTO `place_image` VALUES (18,74,'fall.jpg','img/placeimage/animalcafe/'),(19,48,'happy.jpg','img/placeimage/animalcafe/'),(20,11,'mary.jpg','img/placeimage/animalcafe/'),(21,47,'seven.jpg','img/placeimage/animalcafe/'),(22,97,'dmua.jpg','img/placeimage/bake/'),(23,98,'joan.jpg','img/placeimage/bake/'),(24,36,'jung.jpg','img/placeimage/bake/'),(25,35,'pinang.jpg','img/placeimage/bake/'),(26,7,'devil.jpg','img/placeimage/boardgame/'),(27,4,'holic.jpg','img/placeimage/boardgame/'),(28,96,'homes.jpg','img/placeimage/boardgame/'),(29,95,'red.jpg','img/placeimage/boardgame/'),(30,93,'kims.jpg','img/placeimage/bowling/'),(31,92,'mega.jpg','img/placeimage/bowling/'),(32,27,'royal.png','img/placeimage/bowling/'),(33,94,'view.png','img/placeimage/bowling/'),(34,123,'jeju.jpg','img/placeimage/cart/'),(35,68,'club.jpg','img/placeimage/climb/'),(36,23,'dol.jpg','img/placeimage/climb/'),(37,66,'otter.jpg','img/placeimage/climb/'),(38,67,'wave.jpg','img/placeimage/climb/'),(39,73,'icoin.jpg','img/placeimage/coin/'),(40,72,'icon.jpg','img/placeimage/coin/'),(41,71,'nine.jpg','img/placeimage/coin/'),(42,17,'seven.jpg','img/placeimage/coin/'),(43,121,'bexco.jpeg','img/placeimage/convention/'),(44,63,'blue.jpg','img/placeimage/dance/'),(45,64,'heyday.jpg','img/placeimage/dance/'),(46,52,'jet.jpg','img/placeimage/dance/'),(47,65,'thecode.png','img/placeimage/dance/'),(48,53,'cata.jpg','img/placeimage/escape/'),(49,3,'dumb.jpg','img/placeimage/escape/'),(50,1,'escapetop.jpg','img/placeimage/escape/'),(51,2,'roomsa.jpg','img/placeimage/escape/'),(52,14,'banji.jpg','img/placeimage/gongbang/'),(53,55,'foreor.jpg','img/placeimage/gongbang/'),(54,54,'madeinlove.jpg','img/placeimage/gongbang/'),(55,56,'moa.jpg','img/placeimage/gongbang/'),(56,28,'double.jpg','img/placeimage/holdem/'),(57,57,'heads.jpg','img/placeimage/holdem/'),(58,58,'ksuniv.jpg','img/placeimage/holdem/'),(59,59,'top.jpg','img/placeimage/holdem/'),(60,6,'champ.jpg','img/placeimage/kidscafe/'),(61,42,'hi.jpg','img/placeimage/kidscafe/'),(62,8,'lotte.jpg','img/placeimage/kidscafe/'),(63,43,'monster.png','img/placeimage/kidscafe/'),(64,120,'busan.jpg','img/placeimage/kizania/'),(65,69,'center.jpg','img/placeimage/library/'),(66,32,'english.jpg','img/placeimage/library/'),(67,70,'gold.jpg','img/placeimage/library/'),(68,20,'busan.jpg','img/placeimage/luge/'),(69,79,'gyeonju.jpg','img/placeimage/luge/'),(70,80,'tong.jpg','img/placeimage/luge/'),(71,78,'yeosu.jpg','img/placeimage/luge/'),(72,26,'clover.jpg','img/placeimage/maid/'),(73,25,'dream.jpg','img/placeimage/maid/'),(74,81,'moon.jpg','img/placeimage/maid/'),(75,82,'ohmy.png','img/placeimage/maid/'),(76,85,'mol.jpg','img/placeimage/multi/'),(77,84,'plus.jpg','img/placeimage/multi/'),(78,83,'thebox.jpg','img/placeimage/multi/'),(79,31,'theneo.jpg','img/placeimage/multi/'),(80,50,'leff.jpg','img/placeimage/party/'),(81,49,'mono.jpg','img/placeimage/party/'),(82,60,'nos.jpg','img/placeimage/party/'),(83,61,'penta.jpg','img/placeimage/party/'),(84,34,'haru.jpg','img/placeimage/photo/'),(85,33,'life.jpg','img/placeimage/photo/'),(86,86,'planb.jpg','img/placeimage/photo/'),(87,87,'sig.jpg','img/placeimage/photo/'),(88,122,'mct.jpg','img/placeimage/shot/'),(89,39,'iam.jpg','img/placeimage/slime/'),(90,88,'malang.jpg','img/placeimage/slime/'),(91,40,'total.jpg','img/placeimage/slime/'),(92,89,'world.jpg','img/placeimage/slime/'),(93,38,'911.jpg','img/placeimage/survival/'),(94,91,'good.jpg','img/placeimage/survival/'),(95,9,'lasor.png','img/placeimage/survival/'),(96,90,'revent.jpg','img/placeimage/survival/'),(97,62,'ander.png','img/placeimage/theme/'),(98,12,'dynamic.jpg','img/placeimage/theme/'),(99,21,'lotte.jpg','img/placeimage/theme/'),(100,10,'run.jpg','img/placeimage/theme/'),(101,124,'jeju.jpg','img/placeimage/water/'),(102,77,'bridge.png','img/placeimage/zip/'),(103,41,'flying.jpg','img/placeimage/zip/'),(104,75,'lamada.jpg','img/placeimage/zip/'),(105,76,'moon.jpg','img/placeimage/zip/'),(210,125,'sky.jpg','img/placeimage/sky/'),(211,126,'tiktok.jpg','img/placeimage/tiktok/'),(212,127,'surf.jpg','img/placeimage/surf/');
/*!40000 ALTER TABLE `place_image` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-25  8:51:04
