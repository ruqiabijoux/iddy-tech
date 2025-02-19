-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: labo
-- ------------------------------------------------------
-- Server version	8.4.0

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
-- Table structure for table `etudiant`
--

DROP TABLE IF EXISTS `etudiant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `etudiant` (
  `matricule` int NOT NULL,
  `nom` varchar(100) DEFAULT NULL,
  `postnom` varchar(100) DEFAULT NULL,
  `sexe` varchar(1) DEFAULT NULL,
  `codepro` int DEFAULT NULL,
  PRIMARY KEY (`matricule`),
  KEY `codepro` (`codepro`),
  CONSTRAINT `jose` FOREIGN KEY (`codepro`) REFERENCES `promotion` (`codepro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etudiant`
--

LOCK TABLES `etudiant` WRITE;
/*!40000 ALTER TABLE `etudiant` DISABLE KEYS */;
INSERT INTO `etudiant` VALUES (2344,'mwadjuma','binti','f',123),(2384,'balonde','elungu','f',124),(2422,'AKWASAPI','MUZINGA','F',1406);
/*!40000 ALTER TABLE `etudiant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frais`
--

DROP TABLE IF EXISTS `frais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `frais` (
  `codefrais` int NOT NULL,
  `montantpaye` int DEFAULT NULL,
  `libellefrais` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`codefrais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frais`
--

LOCK TABLES `frais` WRITE;
/*!40000 ALTER TABLE `frais` DISABLE KEYS */;
INSERT INTO `frais` VALUES (1002,100,'enrolement'),(1003,200,' accademique'),(1004,300,' stage'),(1005,400,' enrollement'),(1006,500,' accademique');
/*!40000 ALTER TABLE `frais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paiement`
--

DROP TABLE IF EXISTS `paiement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paiement` (
  `Idpaie` int NOT NULL,
  `montant` int DEFAULT NULL,
  `datepaie` varchar(10) DEFAULT NULL,
  `matricule` int DEFAULT NULL,
  `codefrais` int DEFAULT NULL,
  PRIMARY KEY (`Idpaie`),
  KEY `matricule` (`matricule`),
  KEY `codefrais` (`codefrais`),
  CONSTRAINT `drdzzep` FOREIGN KEY (`codefrais`) REFERENCES `frais` (`codefrais`),
  CONSTRAINT `drep` FOREIGN KEY (`matricule`) REFERENCES `etudiant` (`matricule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paiement`
--

LOCK TABLES `paiement` WRITE;
/*!40000 ALTER TABLE `paiement` DISABLE KEYS */;
INSERT INTO `paiement` VALUES (3565,120,'10/02/2025',2422,1002);
/*!40000 ALTER TABLE `paiement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion`
--

DROP TABLE IF EXISTS `promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promotion` (
  `codepro` int NOT NULL,
  `libellepro` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`codepro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion`
--

LOCK TABLES `promotion` WRITE;
/*!40000 ALTER TABLE `promotion` DISABLE KEYS */;
INSERT INTO `promotion` VALUES (123,'l2lmd'),(124,'l3lmd'),(125,'l5lmd'),(126,'l1lmd'),(1406,'L1/LMD');
/*!40000 ALTER TABLE `promotion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-19 10:58:19
