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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_idx` int NOT NULL AUTO_INCREMENT COMMENT 'user 번호',
  `id` varchar(45) DEFAULT NULL COMMENT '아이디',
  `password` varchar(45) DEFAULT NULL COMMENT '비밀번호',
  `name` varchar(45) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL COMMENT '주소',
  `email` varchar(45) DEFAULT NULL COMMENT '이메일',
  `phone` varchar(45) DEFAULT NULL COMMENT '전화번호',
  `birth_year` varchar(45) DEFAULT NULL COMMENT '생년',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '생성일',
  `level` int DEFAULT '0' COMMENT '관리자 계정일 경우 1',
  PRIMARY KEY (`user_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='유저';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (2,'test1','test10','세찬이',NULL,'test1','123123123123','2025','2025-02-12 09:30:26',0),(21,'test4','test6','침착',NULL,'test3@bilc.ac.kr','01012345678','2025','2025-02-14 05:19:28',0),(23,'test5','test5','호민',NULL,'test3@bilc.ac.kr','01012345678','2025','2025-02-18 01:44:41',0),(24,'test7','test8','전무',NULL,'test3@bilc.ac.kr','01012340987','2025','2025-02-18 02:20:22',0),(25,'test10','test11','우재',NULL,'test3@bilc.ac.kr','01012345679','2025','2025-02-19 01:14:42',0),(28,'test11','test','신선',NULL,'test3@bitc.ac.kr','01012345678','2025','2025-02-19 23:58:27',0),(29,'manager','manager','관리자',NULL,NULL,NULL,NULL,'2025-02-20 09:22:56',1),(31,'test','test','임인스',NULL,'test3@bitc.ac.kr','01012345678','2025','2025-02-20 05:04:10',0),(35,'testerhoon','asd123','테스터훈',NULL,'','01011112222','2025','2025-02-24 03:02:07',0);
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

-- Dump completed on 2025-02-25  8:51:03
