-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: unpaid_internship_internship_program
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `academic_degree_program_record`
--

DROP TABLE IF EXISTS `academic_degree_program_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `academic_degree_program_record` (
  `degree_program_id` int(4) unsigned zerofill NOT NULL,
  `degree_program_name` varchar(45) NOT NULL,
  `field_id` int DEFAULT NULL,
  PRIMARY KEY (`degree_program_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academic_degree_program_record`
--

LOCK TABLES `academic_degree_program_record` WRITE;
/*!40000 ALTER TABLE `academic_degree_program_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `academic_degree_program_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_of_work_records`
--

DROP TABLE IF EXISTS `field_of_work_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_of_work_records` (
  `field_id` int(4) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `field_name` varchar(45) NOT NULL,
  PRIMARY KEY (`field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_of_work_records`
--

LOCK TABLES `field_of_work_records` WRITE;
/*!40000 ALTER TABLE `field_of_work_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `field_of_work_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `internship_branch_records`
--

DROP TABLE IF EXISTS `internship_branch_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `internship_branch_records` (
  `branch_id` int(4) unsigned zerofill NOT NULL,
  `branch_name` varchar(45) NOT NULL,
  `location` varchar(45) NOT NULL,
  PRIMARY KEY (`branch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `internship_branch_records`
--

LOCK TABLES `internship_branch_records` WRITE;
/*!40000 ALTER TABLE `internship_branch_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `internship_branch_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `internship_program`
--

DROP TABLE IF EXISTS `internship_program`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `internship_program` (
  `internship_program_id` int(4) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `program_name` varchar(45) DEFAULT NULL,
  `field_id` int unsigned DEFAULT NULL,
  `branch_id` int unsigned DEFAULT NULL,
  `internship_start_date` date NOT NULL,
  `internship_end_date` date NOT NULL,
  `application_start_date` date NOT NULL,
  `application_end_date` date NOT NULL,
  `required_year_level` int unsigned DEFAULT NULL,
  `program_status` varchar(8) NOT NULL DEFAULT 'ACTIVE',
  PRIMARY KEY (`internship_program_id`),
  UNIQUE KEY `program_id_UNIQUE` (`internship_program_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `internship_program`
--

LOCK TABLES `internship_program` WRITE;
/*!40000 ALTER TABLE `internship_program` DISABLE KEYS */;
/*!40000 ALTER TABLE `internship_program` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_records`
--

DROP TABLE IF EXISTS `student_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_records` (
  `student_id` int(4) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `student_name` varchar(45) NOT NULL,
  `degree_program_id` int unsigned DEFAULT NULL,
  `age` int unsigned NOT NULL,
  `location` varchar(45) DEFAULT NULL,
  `university` varchar(45) DEFAULT NULL,
  `year_level` int unsigned DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_records`
--

LOCK TABLES `student_records` WRITE;
/*!40000 ALTER TABLE `student_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_records` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-11-08 18:03:58
