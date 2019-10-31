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
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logs` (
  `id_log` int(11) NOT NULL AUTO_INCREMENT,
  `nm_tipoLog` varchar(45) NOT NULL,
  `dt_dataLog` datetime(6) NOT NULL,
  `usuarios_cd_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id_log`),
  UNIQUE KEY `id_log_UNIQUE` (`id_log`),
  KEY `fk_logs_usuarios1_idx` (`usuarios_cd_usuario`),
  CONSTRAINT `fk_logs_usuarios1` FOREIGN KEY (`usuarios_cd_usuario`) REFERENCES `usuarios` (`cd_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
INSERT INTO `logs` VALUES (1,'asd','2008-11-11 13:23:44.000000',1),(2,'insert','2019-10-30 00:00:00.000000',4),(3,'insert','2019-10-30 20:23:13.000000',4),(4,'delete','2019-10-30 20:28:33.000000',4),(5,'update','2019-10-30 20:28:44.000000',4),(6,'update','2019-10-30 20:31:20.000000',5),(7,'delete','2019-10-30 20:31:29.000000',5),(8,'insert','2019-10-30 20:31:33.000000',5);
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `massas`
--

LOCK TABLES `massas` WRITE;
/*!40000 ALTER TABLE `massas` DISABLE KEYS */;
INSERT INTO `massas` VALUES (6,80,'2019-10-06',3),(7,80,'2019-10-06',3),(8,80,'2019-10-06',3),(10,50,'2019-10-06',3),(15,55,'2019-10-06',3),(16,55,'2019-10-06',3),(17,55,'2019-10-06',3),(18,55,'2019-10-06',3),(19,55,'2019-10-06',3),(20,55,'2019-10-06',3),(21,55,'2019-10-06',3),(22,55,'2019-10-06',3),(23,55,'2019-10-06',3),(24,55,'2019-10-06',3),(25,55,'2019-10-06',3),(26,75,'2019-10-13',3),(27,75,'2019-10-13',3),(28,75,'2019-10-13',3),(37,55,'2019-10-16',4),(39,80,'2019-10-16',4),(41,50,'2019-10-20',4),(42,50,'2019-10-20',4),(43,50,'2019-10-20',4),(44,50,'2019-10-20',4),(45,50,'2019-10-20',4),(46,50,'2019-10-20',4),(48,50,'2019-10-20',4),(50,66,'2019-10-21',3),(53,66,'2019-10-25',5),(54,80,'2019-10-25',5),(56,90,'2019-10-25',5),(57,80,'2019-10-25',5),(61,80,'2019-10-25',4),(62,80,'2019-10-25',4),(63,55,'2019-10-25',4),(64,55,'2019-10-25',4),(65,55,'2019-10-25',4),(66,55,'2019-10-25',4),(67,63,'2019-10-25',4),(70,80,'2019-10-25',15),(71,55,'2019-10-25',15),(72,66,'2019-10-25',15),(73,35,'2019-10-25',15),(74,71,'2019-10-25',15),(75,73,'2019-10-25',15),(76,80,'2019-10-25',15),(77,70,'2019-10-25',15),(79,71,'2019-10-25',15),(82,73,'2019-10-25',17),(85,73,'2019-10-28',17),(88,70,'2019-10-30',5);
/*!40000 ALTER TABLE `massas` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER in_massas 
BEFORE INSERT ON historico_massa.massas
FOR EACH ROW 
CALL AdicionaLog('insert', CURRENT_TIMESTAMP(), NEW.usuario_cd_usuario) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER up_massas 
BEFORE UPDATE ON historico_massa.massas
FOR EACH ROW 
CALL AdicionaLog('update', CURRENT_TIMESTAMP(), NEW.usuario_cd_usuario) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER dl_massas 
BEFORE DELETE ON historico_massa.massas
FOR EACH ROW 
CALL AdicionaLog('delete', CURRENT_TIMESTAMP(), OLD.usuario_cd_usuario) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'asd@g','a'),(2,'asd@gg','$2y$10$qLEkDRT8b32./MUQ64bCuOQzyu6E9i7ft0FEBebg4pvLWN87mDEvW'),(3,'b@b','$2y$10$www14goZc4R036KS1owcE.CmQCsHLxWVkqB4O46vl58XZ9UFbGBEW'),(4,'c@c','$2y$10$AZ6Kdav11HwgreBFuNSLYOyD.dvQfIs2DXT6F5fMdlK1N.KPwGVyq'),(5,'d@d','$2y$10$Dw0ekxxmOjR6rrC.eGITN..u7d8B8eGlWPEsOMRZNS1yLGgLbFTqC'),(6,'test','test'),(8,'as@g','$2y$10$tqxZJKlAwZR.yRPXRBlZvupL1xNM8MvH0cXa4HdgzElnv7H9sMqCq'),(10,'aa@g','$2y$10$uoEcIyx23stM0tBVu3z3E.rvWNxpboDc4Qcb.GQSXwhnU1i9E/hs6'),(11,'bb@g','$2y$10$sAZ2vENlsmelgxIsKtszXO7LDUxdoBkPdDhhNUUGsn.q/MFJOgBdm'),(12,'j@j','$2y$10$iat1cJpDV1ObnhfvvsHRnOeH8ZxpAfpGL6wnioolU8uYzQsXOIyLa'),(13,'k@k','$2y$10$4pSW4FHGh1ZAESHpiEIPxuiCDxi0JweLSdDxaMD5AhoCc/1VOSWZ.'),(14,'p@p','$2y$10$QsOWCf6L69Q2wZEtOhXGL.sJX9Fs3SpT720Pex/txUzrA3AwR5jMW'),(15,'abc@abc','$2y$10$N3STtKsDibLj/5ONoaw2AO4ui7Ua1j2ozXpixmqWAjJ.1Bm4pLXJy'),(17,'gabrbfreire@gmail.com','$2y$10$btQwGczjZiD/JGBOjwM3Ze9yAKBW25AIWzt2dXJI3gazBibfBqACe');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'historico_massa'
--

--
-- Dumping routines for database 'historico_massa'
--
/*!50003 DROP PROCEDURE IF EXISTS `AdicionaDadoUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AdicionaDadoUsuario`(
	IN massa int(11),
	IN dia date,
	IN cd varchar(11)
)
BEGIN
	INSERT INTO massas(vl_massa, dt_massa, usuario_cd_usuario) 
    VALUES (massa, dia, cd);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AdicionaLog` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AdicionaLog`(
	IN tipoLog varchar(45),
    IN dataLog datetime(6),
    IN cd varchar(11)
)
BEGIN
	INSERT INTO logs(nm_tipoLog, dt_dataLog, usuarios_cd_usuario)
    VALUES (tipoLog, dataLog, cd);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AlteraDado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AlteraDado`(
	IN cd varchar(256),
    IN massa int(11)
)
BEGIN
	UPDATE massas SET vl_massa = massa WHERE cd_massa = cd;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DeletaDado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeletaDado`(
	IN cd varchar(256)
)
BEGIN
	DELETE FROM massas WHERE cd_massa = cd;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `LogIn` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `LogIn`(
	IN email varchar(45)
)
BEGIN
    SELECT * FROM usuarios WHERE em_usuario = email;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SelecionaCdUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SelecionaCdUsuario`(
	IN usuario varchar(45)
)
BEGIN
	SELECT cd_usuario FROM usuarios WHERE em_usuario = usuario;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SelecionaDadosUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SelecionaDadosUsuario`(
	IN cd varchar(256)
)
BEGIN
	SELECT * FROM massas WHERE usuario_cd_usuario = cd;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SignIn` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SignIn`(
	IN email varchar(45), 
    IN senha varchar(256)
)
BEGIN
    INSERT INTO usuarios (em_usuario, pw_usuario) VALUES (email, senha);
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

-- Dump completed on 2019-10-30 20:56:32
