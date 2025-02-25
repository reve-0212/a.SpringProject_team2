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
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `review_idx` int NOT NULL AUTO_INCREMENT COMMENT 'PK',
  `review_place_idx` int DEFAULT NULL,
  `review_user_idx` int DEFAULT NULL COMMENT '작성자',
  `review_user_id` varchar(45) DEFAULT NULL,
  `review_user_name` varchar(45) DEFAULT NULL,
  `comment` varchar(200) DEFAULT NULL COMMENT '후기',
  `star` double DEFAULT NULL COMMENT '별점',
  `write_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '작성일',
  PRIMARY KEY (`review_idx`),
  KEY `review_place_idx_idx` (`review_place_idx`),
  KEY `review_user_idx_idx` (`review_user_idx`),
  CONSTRAINT `review_place_idx` FOREIGN KEY (`review_place_idx`) REFERENCES `place` (`place_idx`),
  CONSTRAINT `review_user_idx` FOREIGN KEY (`review_user_idx`) REFERENCES `user` (`user_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='리뷰';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (57,59,2,'test1','세찬이','qweqweqeqwe',3.5,'2025-02-21 12:21:05'),(60,59,21,'test4','침착','werwerwerewrwerewrewrewwer',1.5,'2025-02-21 12:48:06'),(62,69,2,'test1','세찬이','475445444545454',2.5,'2025-02-21 15:05:30'),(64,1,31,'test','임인스','qweqweqqweqeqweqeqwqweqwe',3.5,'2025-02-21 16:02:37'),(65,1,31,'test','임인스','afsdsad',5,'2025-02-21 16:50:17'),(66,1,31,'test','임인스','dsfsafda',4.5,'2025-02-21 16:54:58'),(67,1,31,'test','임인스','fdsalksdjflsakjflsafjlasjfldjaflkjdsfljsfdskkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk',0.5,'2025-02-21 17:25:06'),(68,123,31,'test','임인스','nice',5,'2025-02-24 09:07:31'),(69,67,31,'test','임인스','재미있는데 너무 힘들고 그렇습니다 ㅠㅠ',3,'2025-02-24 09:34:25'),(70,93,31,'test','임인스','외관에 비해 내부는 생각보다 오래되지 않은듯',3.5,'2025-02-24 09:34:47'),(71,93,31,'test','임인스','오래 운영해서 좋아요',2.5,'2025-02-24 09:39:56'),(73,39,2,'test1','세찬이','2222',4.5,'2025-02-24 13:57:34'),(76,123,31,'test','임인스','test',0,'2025-02-24 14:21:16'),(77,33,2,'test1','세찬이','qweqweqweqwewqewe',1.5,'2025-02-24 14:41:35'),(79,39,2,'test1','세찬이','1231231233',3,'2025-02-24 14:56:02'),(80,41,2,'test1','세찬이','123123123123',1.5,'2025-02-24 15:04:26'),(81,41,2,'test1','세찬이','werwerwerwr',1.5,'2025-02-24 16:23:14'),(82,59,21,'test4','침착','33333333333333',4.5,'2025-02-24 16:23:32'),(83,39,31,'test','임인스','22222',2.5,'2025-02-24 16:24:32'),(89,27,31,'test','임인스','리뷰가',4,'2025-02-24 16:46:46'),(90,2,31,'test','임인스','리뷰 추가',5,'2025-02-24 16:47:58'),(92,4,37,'tested','리뷰어','보드게임이 많이있음',5,'2025-02-25 14:03:03');
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-25 15:30:37
