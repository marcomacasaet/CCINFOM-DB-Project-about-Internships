-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: unpaid_internship
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
-- Table structure for table `academic_degree_program_records`
--

DROP TABLE IF EXISTS `academic_degree_program_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `academic_degree_program_records` (
  `degree_program_id` int(4) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `degree_program_name` varchar(100) NOT NULL,
  `field_id` int DEFAULT NULL,
  PRIMARY KEY (`degree_program_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academic_degree_program_records`
--

LOCK TABLES `academic_degree_program_records` WRITE;
/*!40000 ALTER TABLE `academic_degree_program_records` DISABLE KEYS */;
INSERT INTO `academic_degree_program_records`
VALUES (0001,'Bachelor of Science in Computer Science major in Software Technology',1), 
		(0002,'Bachelor of Science in Information Technology',1), 
        (0003,'Bachelor of Science in Applied Economics',2), 
        (0004,'Bachelor of Science in Applied Economics and Data Science',2),
        (0005,'Bachelor of Arts in Communication Arts',3),
        (0006,'Bachelor of Science in Business Management',4),
        (0007,'Bachelor of Science in Accountancy',4),
        (0008,'Bachelor of Science in Interdisciplinary Business Studies',4),
        (0009,'Bachelor of Science in Marketing',4),
        (0010,'Bachelor of Arts in Psychology',5);
/*!40000 ALTER TABLE `academic_degree_program_records` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-11-21 20:51:35
-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: unpaid_internship
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
INSERT INTO `field_of_work_records`
VALUES (0001, "Computer Science"),
		(0002, "Economics"),
        (0003, "Communication"),
        (0004, "Business"),
        (0005, "Psychology"),
        (0006, "Chemical Engineering"),
        (0007, "Aerospace"),
        (0008, "Sports"),
        (0009, "Architecture"),
        (0010, "Culinary");
/*!40000 ALTER TABLE `field_of_work_records` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-11-09 11:16:02
-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: unpaid_internship
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
-- Table structure for table `internship_branch_records`
--

DROP TABLE IF EXISTS `internship_branch_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `internship_branch_records` (
  `branch_id` int(4) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `branch_name` varchar(45) NOT NULL,
  `location` varchar(45) NOT NULL,
  PRIMARY KEY (`branch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `internship_branch_records`
--

LOCK TABLES `internship_branch_records` WRITE;
/*!40000 ALTER TABLE `internship_branch_records` DISABLE KEYS */;
INSERT INTO `internship_branch_records` 
VALUES (0001,'Good Pizza, Great Pizza','Someplace Sometown'),
		(0002,'Ultimate Talent Execution Branch','Eden''s Garden Academy'),
        (0003, 'Accenture, Inc. Makati Branch', 'MSE Building, Ayala Avenue, Makati City'),
        (0004, 'Bank of the Philippine Islands Head Office', 'Dela Rosa St., Paseo de Roxas, Makati City'),
        (0005,'Crash Dummies Inc.','Abandoned Factory N-67'),
        (0006, 'Jollibee Foods Corporation', 'Ortigas Center, Pasig City'),
        (0007, 'Psychological Resources Center, Inc.', 'Diliman, Quezon City'),
        (0008, 'Philippine Airlines Head Office', 'Lucio K. Tan Jr. Center, Pasay City'),
        (0009, 'WayneCorp', 'Makati City'),
        (0010, 'LexCorp', 'Marikina City');
/*!40000 ALTER TABLE `internship_branch_records` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-11-21 20:51:35
-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: unpaid_internship
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
-- Table structure for table `internship_program_records`
--

DROP TABLE IF EXISTS `internship_program_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `internship_program_records` (
  `internship_program_id` int(4) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `program_name` varchar(80) DEFAULT NULL,
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
-- Dumping data for table `internship_program_records`
--

LOCK TABLES `internship_program_records` WRITE;
/*!40000 ALTER TABLE `internship_program_records` DISABLE KEYS */;
INSERT INTO `internship_program_records`
VALUES (0001,"Good Pizza, Great Pizza Marketing Internship", 0004, 0001, 2027-01-10,2027-02-10,2026-11-20,2026-12-20,2,'ACTIVE'),
		(0002,"WayneCorp Computer Research Internship", 0001, 0009, 2027-03-01,2027-05-01,2026-12-01,2026-12-31,3,'ACTIVE'),
        (0003,"Psychology Special Patient Examination Internship", 0005, 0007, 2027-01-15,2027-04-15,2026-11-10,2026-12-10,3,'ACTIVE'),
        (0004,"WayneCorp Business Management Internship", 0004,0009,2026-12-01,2026-12-15,2026-11-07,2026-11-28,1,'ACTIVE'),
        (0005,"Philippine Airines Market Research", 0004, 0008,2027-02-01,2027-04-1,2026-12-15,2027-01-15,4,'ACTIVE'),
        (0006,"WayneCorp Financial and Economic Development Internship", 0002,0009,2027-02-12,2027-06-12,2026-11-25,2026-12-15,2,'ACTIVE'),
        (0007,"LexCorp Advertising and Audience Outreach Internship", 0003,0010,2026-11-25,2026-12-05,2026-10-15,2026-10-30,2,'INACTIVE'),
        (0008,"Jollibee Food Corporation Advertising and Audience Outreach Internship", 0003,0010,2027-01-25,2027-02-25,2026-11-30,2026-12-10,'ACTIVE'),
        (0009,"Jollibee Food Corporation Business Strategies Internship", 0004,0010,2027-01-25,2027-02-25,2026-11-30,2026-12-10,'ACTIVE'),
        (0010,"Crash Dummies Inc. Computer System Internship", 0001, 0005, 2027-01-10,2027-02-10,2026-12-01,2026-12-20, 'ACTIVE');
/*!40000 ALTER TABLE `internship_program_records` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-11-09 11:16:01
-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: unpaid_internship
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
-- Dumping routines for database 'unpaid_internship'
--
/*!50003 DROP PROCEDURE IF EXISTS `available_internship_recommendations_rep` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `available_internship_recommendations_rep`(IN user_date date, IN user_student_id int)
BEGIN
	SELECT ip.program_name AS 'PROGRAM NAME', 
    ip.required_year_level AS 'REQ. YEAR LEVEL',
    ip.internship_start_date AS 'PROGRAM START DATE', 
    ip.internship_end_date AS 'PROGRAM END DATE',
    b.location AS 'LOCATION'
    FROM internship_program_records ip
    JOIN student_records s ON s.student_id = user_student_id
    JOIN academic_degree_program_records a ON a.degree_program_id = s.degree_program_id
    JOIN internship_branch_records b ON ip.branch_id = b.branch_id
    
    WHERE user_date >= ip.application_start_date && user_date <= ip.application_end_date
    AND ip.field_id = a.field_id
    AND s.year_level >= ip.required_year_level
    AND ip.program_status LIKE 'ACTIVE'
    ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `internship_program_period_rep` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `internship_program_period_rep`(IN user_month date)
BEGIN
	SELECT f.field_name AS 'FIELD OF WORK',
    COUNT(*) AS 'COUNT'
    FROM internship_program_records ip
    JOIN field_of_work_records f ON f.field_id = ip.field_id
    JOIN internship_branch_records b ON b.branch_id = ip.branch_id
    
    WHERE user_month = ip.internship_start_date && user_month < ip.internship_end_date
    GROUP BY field_id, branch_id
    ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-11-09 11:16:02
-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: unpaid_internship
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
-- Table structure for table `student_records`
--

DROP TABLE IF EXISTS `student_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_records` (
  `student_id` int(4) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `student_name` varchar(70) NOT NULL,
  `degree_program_id` int unsigned DEFAULT NULL,
  `age` int unsigned NOT NULL,
  `location` varchar(70) DEFAULT NULL,
  `university` varchar(70) DEFAULT NULL,
  `year_level` int unsigned DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_records`
--

LOCK TABLES `student_records` WRITE;
/*!40000 ALTER TABLE `student_records` DISABLE KEYS */;
INSERT INTO `student_records`
VALUES (0001, "John Jones", 0003, 20, "Manila City", "De La Salle University", 2),
		(0002, "Lucas Tan", 0010, 18, "Manila City", "De La Salle University", 1),
        (0003, "Luisa Sta. Teresa", 0003, 19, "Quezon City", "Ateneo De Manila University", 2),
        (0004, "Lorenzo Lopez", 0004, 18, "Quezon City", "Ateneo De Manila Univeristy", 1),
        (0005, "Raymond Salvador", 0005, 20, "Quezon City", "University of the Philippines Diliman", 3),
        (0006, "Alyssa Liu", 0010, 22, "Manila City", "University of Santo Tomas", 4),
        (0007, "Nicollo Villarin", 0001, 19, "Manila City", "De La Salle University", 2),
        (0008, "John Paul Ringo", 0002, 18, "Makati City", "Mapua University", 1),
        (0009, "Asa Mitaka", 0006, 19, "Taguig City", "University of the Philipines Bonifacio Global City", 2),
        (0010, "Jonathan Joestar", 0008, 22, "Quezon City", "Ateneo De Manila University", 4);
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

-- Dump completed on 2026-11-09 11:16:01
