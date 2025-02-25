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
-- Temporary view structure for view `place_with_avg_star`
--

DROP TABLE IF EXISTS `place_with_avg_star`;
/*!50001 DROP VIEW IF EXISTS `place_with_avg_star`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `place_with_avg_star` AS SELECT 
 1 AS `place_idx`,
 1 AS `location`,
 1 AS `address`,
 1 AS `name`,
 1 AS `recommend_age`,
 1 AS `number_people`,
 1 AS `open_time`,
 1 AS `close_time`,
 1 AS `phone`,
 1 AS `category`,
 1 AS `average_star`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `place_with_rev_count`
--

DROP TABLE IF EXISTS `place_with_rev_count`;
/*!50001 DROP VIEW IF EXISTS `place_with_rev_count`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `place_with_rev_count` AS SELECT 
 1 AS `place_idx`,
 1 AS `location`,
 1 AS `address`,
 1 AS `name`,
 1 AS `recommend_age`,
 1 AS `number_people`,
 1 AS `open_time`,
 1 AS `close_time`,
 1 AS `phone`,
 1 AS `category`,
 1 AS `review_count`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `place_with_avg_star`
--

/*!50001 DROP VIEW IF EXISTS `place_with_avg_star`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`java503_team2`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `place_with_avg_star` AS select `p`.`place_idx` AS `place_idx`,`p`.`location` AS `location`,`p`.`address` AS `address`,`p`.`name` AS `name`,`p`.`recommend_age` AS `recommend_age`,`p`.`number_people` AS `number_people`,`p`.`open_time` AS `open_time`,`p`.`close_time` AS `close_time`,`p`.`phone` AS `phone`,`p`.`category` AS `category`,coalesce(avg(`r`.`star`),0) AS `average_star` from (`place` `p` left join `review` `r` on((`p`.`place_idx` = `r`.`review_place_idx`))) group by `p`.`place_idx` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `place_with_rev_count`
--

/*!50001 DROP VIEW IF EXISTS `place_with_rev_count`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`java503_team2`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `place_with_rev_count` AS select `p`.`place_idx` AS `place_idx`,`p`.`location` AS `location`,`p`.`address` AS `address`,`p`.`name` AS `name`,`p`.`recommend_age` AS `recommend_age`,`p`.`number_people` AS `number_people`,`p`.`open_time` AS `open_time`,`p`.`close_time` AS `close_time`,`p`.`phone` AS `phone`,`p`.`category` AS `category`,coalesce(count(`r`.`star`),0) AS `review_count` from (`place` `p` left join `review` `r` on((`p`.`place_idx` = `r`.`review_place_idx`))) group by `p`.`place_idx` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-25 15:30:38
