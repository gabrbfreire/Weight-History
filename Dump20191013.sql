-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: historico_massa
-- ------------------------------------------------------
-- Server version	5.7.26

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
-- Table structure for table `massas`
--

DROP TABLE IF EXISTS `massas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `massas` (
  `cd_massa` int(11) NOT NULL AUTO_INCREMENT,
  `vl_massa` int(11) DEFAULT NULL,
  `dt_massa` date DEFAULT NULL,
  `usuario_cd_usuario` int(11) NOT NULL,
  PRIMARY KEY (`cd_massa`,`usuario_cd_usuario`),
  KEY `fk_massa_usuario_idx` (`usuario_cd_usuario`),
  CONSTRAINT `fk_massa_usuario` FOREIGN KEY (`usuario_cd_usuario`) REFERENCES `usuarios` (`cd_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `massas`
--

LOCK TABLES `massas` WRITE;
/*!40000 ALTER TABLE `massas` DISABLE KEYS */;
INSERT INTO `massas` VALUES (1,70,'2019-10-02',3),(2,70,'2019-10-03',3),(4,70,'2019-10-05',3),(5,70,'2019-10-06',3),(6,80,'2019-10-06',3),(7,80,'2019-10-06',3),(8,80,'2019-10-06',3),(9,233,'2019-10-06',3),(10,50,'2019-10-06',3),(11,80,'2019-10-06',4),(12,66,'2019-10-06',4),(13,666,'2019-10-06',4),(14,33,'2019-10-06',4),(15,55,'2019-10-06',3),(16,55,'2019-10-06',3),(17,55,'2019-10-06',3),(18,55,'2019-10-06',3),(19,55,'2019-10-06',3),(20,55,'2019-10-06',3),(21,55,'2019-10-06',3),(22,55,'2019-10-06',3),(23,55,'2019-10-06',3),(24,55,'2019-10-06',3),(25,55,'2019-10-06',3),(26,75,'2019-10-13',3),(27,75,'2019-10-13',3),(28,75,'2019-10-13',3);
/*!40000 ALTER TABLE `massas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `cd_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `em_usuario` varchar(45) NOT NULL,
  `pw_usuario` varchar(256) NOT NULL,
  PRIMARY KEY (`cd_usuario`),
  UNIQUE KEY `cd_usuario_UNIQUE` (`cd_usuario`),
  UNIQUE KEY `em_usuario_UNIQUE` (`em_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'asd@g','a'),(2,'asd@gg','$2y$10$qLEkDRT8b32./MUQ64bCuOQzyu6E9i7ft0FEBebg4pvLWN87mDEvW'),(3,'b@b','$2y$10$www14goZc4R036KS1owcE.CmQCsHLxWVkqB4O46vl58XZ9UFbGBEW'),(4,'c@c','$2y$10$AZ6Kdav11HwgreBFuNSLYOyD.dvQfIs2DXT6F5fMdlK1N.KPwGVyq'),(5,'d@d','$2y$10$Dw0ekxxmOjR6rrC.eGITN..u7d8B8eGlWPEsOMRZNS1yLGgLbFTqC'),(6,'test','test'),(8,'as@g','$2y$10$tqxZJKlAwZR.yRPXRBlZvupL1xNM8MvH0cXa4HdgzElnv7H9sMqCq'),(10,'aa@g','$2y$10$uoEcIyx23stM0tBVu3z3E.rvWNxpboDc4Qcb.GQSXwhnU1i9E/hs6'),(11,'bb@g','$2y$10$sAZ2vENlsmelgxIsKtszXO7LDUxdoBkPdDhhNUUGsn.q/MFJOgBdm'),(12,'j@j','$2y$10$iat1cJpDV1ObnhfvvsHRnOeH8ZxpAfpGL6wnioolU8uYzQsXOIyLa'),(13,'k@k','$2y$10$4pSW4FHGh1ZAESHpiEIPxuiCDxi0JweLSdDxaMD5AhoCc/1VOSWZ.'),(14,'p@p','$2y$10$QsOWCf6L69Q2wZEtOhXGL.sJX9Fs3SpT720Pex/txUzrA3AwR5jMW');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-13 14:58:18
