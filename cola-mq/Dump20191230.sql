CREATE DATABASE  IF NOT EXISTS `db_example` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_example`;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: db_example
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `cbu` varchar(255) NOT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `dni` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cbu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES ('0000000000000012355463','00000000000000003234',6700,'USD','0032424556','Gustavo   ','Gonzales  '),('0000000000000546678323','00000000000000002342',6800,'USD','0000324234','Nelson    ','Roberto   '),('0000000000002287964731','00000000000000007658',5450,'USD','0032723821','Lucas     ','Farrell   '),('0000000000022345876565','00000000000000003543',9250,'USD','0023772130','Pedro     ','Gabriel   ');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (2);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transferencia`
--

DROP TABLE IF EXISTS `transferencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transferencia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cbu_entrada` varchar(255) DEFAULT NULL,
  `cbu_salida` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `monto` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transferencia`
--

LOCK TABLES `transferencia` WRITE;
/*!40000 ALTER TABLE `transferencia` DISABLE KEYS */;
INSERT INTO `transferencia` VALUES (1,'0000000000022345876565','0000000000002287964731','CANCELADO','2019-12-26 17:45:11',300),(2,'0000000000022345876565','0000000000002287964731','CANCELADO','2019-12-26 17:45:38',150),(3,'0000000000022345876565','0000000000002287964731','Transferido','2019-12-27 09:49:48',150),(4,'0000000000022345876565','0000000000002287964731','Transferido','2019-12-27 09:50:02',150),(5,'0000000000022345876565','0000000000002287964731','Transferido','2019-12-27 09:50:10',150),(6,'0000000000022345876565','0000000000002287964731','Transferido','2019-12-27 09:53:02',150),(7,'0000000000022345876565','0000000000002287964731','Transferido','2019-12-27 09:53:02',150),(8,'0000000000022345876565','0000000000002287964731','Transferido','2019-12-27 09:53:37',150),(9,'0000000000022345876565','0000000000002287964731','Transferido','2019-12-27 09:53:37',150),(10,'0000000000022345876565','0000000000002287964731','Transferido','2019-12-27 09:53:38',150),(11,'0000000000022345876565','0000000000002287964731','Transferido','2019-12-27 09:53:38',150),(12,'0000000000022345876565','0000000000002287964731','Transferido','2019-12-27 09:53:38',150),(13,'0000000000022345876565','0000000000002287964731','Transferido','2019-12-27 09:53:38',150),(14,'0000000000022345876565','0000000000002287964731','Transferido','2019-12-27 09:53:39',150),(15,'0000000000022345876565','0000000000002287964731','Transferido','2019-12-27 09:53:39',150),(16,'0000000000022345876565','0000000000002287964731','Transferido','2019-12-27 09:57:25',150),(17,'0000000000022345876565','0000000000002287964731','Transferido','2019-12-27 09:57:25',150),(18,'0000000000022345876565','0000000000002287964731','Transferido','2019-12-27 10:13:35',150),(19,'0000000000022345876565','0000000000002287964731','Transferido','2019-12-27 10:13:42',150),(20,'0000000000022345876565','0000000000002287964731','CANCELADO','2019-12-27 10:16:37',150),(21,'0000000000022345876565','0000000000002287964731','CANCELADO','2019-12-27 10:18:42',150),(22,'0000000000022345876565','0000000000002287964731','CANCELADO','2019-12-27 10:20:59',300);
/*!40000 ALTER TABLE `transferencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'someemail@someemailprovider.com','First'),(2,'marcos@gmail.com','Marcos'),(3,'abraham_adriel227@hotmail.com','Martin');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'db_example'
--

--
-- Dumping routines for database 'db_example'
--
/*!50003 DROP PROCEDURE IF EXISTS `agregarTranferencia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregarTranferencia`(IN fecha DATE,IN monto DOUBLE,IN cbuSalida VARCHAR(255),IN cbuLlegada VARCHAR(255),IN estado VARCHAR(255))
BEGIN
INSERT INTO transferencia (id,fecha,monto,cbu_entrada,cbu_salida,estado) VALUES (NULL, now(),monto,cbuLlegada,cbuSalida,estado);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `arreglarCliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `arreglarCliente`()
BEGIN
UPDATE cliente SET amount = 100000 where cbu=000000000000000123543;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `cambiarEstadoTransferencia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cambiarEstadoTransferencia`(IN numero LONG,IN estadoNuevo VARCHAR(255))
BEGIN
UPDATE transferencia SET estado = estadoNuevo  where id=numero;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `findAllClients` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `findAllClients`()
BEGIN
        SELECT * FROM cliente;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `findTransferenciaByID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `findTransferenciaByID`(IN numero DOUBLE)
BEGIN
select * from transferencia where id = numero;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `transferir` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `transferir`(IN cbuCuentaLlegada VARCHAR(255),IN cbuCuentaSalida VARCHAR(255), IN monto DOUBLE)
BEGIN
DECLARE importeClienteQueLeTransfieren DOUBLE;
DECLARE importeClienteQueTransfiere DOUBLE;
DECLARE importeAgregado DOUBLE;
DECLARE importeTotalClienteQueLeTransfieren DOUBLE;
DECLARE importeTotalClienteQueTransfiere DOUBLE;
SET @importeClienteQueLeTransfieren = (select amount from cliente where cbu=cbuCuentaLlegada);
SET @importeAgregado = monto;
SET @importeTotalClienteQueLeTransfieren = (@importeAgregado + @importeClienteQueLeTransfieren);
UPDATE cliente SET amount = @importeTotalClienteQueLeTransfieren where cbu=cbuCuentaLlegada;
SET @importeClienteQueTransfiere = (select amount from cliente where cbu=cbuCuentaSalida);
SET @importeTotalClienteQueTransfiere = (@importeClienteQueTransfiere - @importeAgregado);
UPDATE cliente SET amount = @importeTotalClienteQueTransfiere where cbu=cbuCuentaSalida;
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

-- Dump completed on 2019-12-30 10:27:55
