-- MySQL dump 10.16  Distrib 10.2.11-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: BicicletasParis
-- ------------------------------------------------------
-- Server version	10.2.11-MariaDB-10.2.11+maria~xenial

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Banco`
--

DROP TABLE IF EXISTS `Banco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Banco` (
  `Entidad` int(11) NOT NULL,
  PRIMARY KEY (`Entidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Banco`
--

LOCK TABLES `Banco` WRITE;
/*!40000 ALTER TABLE `Banco` DISABLE KEYS */;
/*!40000 ALTER TABLE `Banco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Bicicleta`
--

DROP TABLE IF EXISTS `Bicicleta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Bicicleta` (
  `CodigoBicicleta` int(11) NOT NULL,
  `Estado` varchar(140) DEFAULT NULL,
  `Posicion` varchar(140) DEFAULT NULL,
  PRIMARY KEY (`CodigoBicicleta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Bicicleta`
--

LOCK TABLES `Bicicleta` WRITE;
/*!40000 ALTER TABLE `Bicicleta` DISABLE KEYS */;
INSERT INTO `Bicicleta` VALUES (0,'Disponible','8'),(1,'Disponible','19'),(2,'Disponible','15'),(3,'Disponible','24'),(4,'Disponible','25'),(5,'Disponible','13'),(6,'Disponible','16'),(7,'Disponible','7'),(8,'Disponible','8'),(9,'Disponible','25'),(10,'Disponible','27'),(11,'Disponible','30'),(12,'Disponible','5'),(13,'Disponible','10'),(14,'Disponible','0'),(15,'Disponible','19'),(16,'Disponible','8'),(17,'Disponible','3'),(18,'Disponible','10'),(19,'Disponible','21'),(20,'Disponible','6'),(21,'Disponible','15'),(22,'Disponible','24'),(23,'Disponible','25'),(24,'Disponible','19'),(25,'Disponible','20'),(26,'Disponible','8'),(27,'Disponible','5'),(28,'Disponible','0'),(29,'Disponible','18'),(30,'Disponible','22'),(31,'Disponible','29'),(32,'Disponible','17'),(33,'Disponible','26'),(34,'Disponible','26'),(35,'Disponible','5'),(36,'Disponible','24'),(37,'Disponible','27'),(38,'Disponible','25'),(39,'Disponible','24'),(40,'Disponible','11'),(41,'Disponible','30'),(42,'Disponible','4'),(43,'Disponible','18'),(44,'Disponible','1'),(45,'Disponible','27'),(46,'Disponible','23'),(47,'Disponible','5'),(48,'Disponible','0'),(49,'Disponible','29'),(50,'Disponible','24'),(51,'Disponible','22'),(52,'Disponible','2'),(53,'Disponible','2'),(54,'Disponible','4'),(55,'Disponible','27'),(56,'Disponible','5'),(57,'Disponible','15'),(58,'Disponible','4'),(59,'Disponible','3'),(60,'Disponible','15'),(61,'Disponible','8'),(62,'Disponible','18'),(63,'Disponible','11'),(64,'Disponible','15'),(65,'Disponible','0'),(66,'Disponible','17'),(67,'Disponible','17'),(68,'Disponible','16'),(69,'Disponible','14'),(70,'Disponible','25'),(71,'Disponible','3'),(72,'Disponible','26'),(73,'Disponible','14'),(74,'Disponible','13'),(75,'Disponible','14'),(76,'Disponible','5'),(77,'Disponible','11'),(78,'Disponible','24'),(79,'Disponible','20'),(80,'Disponible','29'),(81,'Disponible','9'),(82,'Disponible','23'),(83,'Disponible','15'),(84,'Disponible','20'),(85,'Disponible','10'),(86,'Disponible','11'),(87,'Disponible','4'),(88,'Disponible','8'),(89,'Disponible','20'),(90,'Disponible','26'),(91,'Disponible','4'),(92,'Disponible','5'),(93,'Disponible','1'),(94,'Disponible','20'),(95,'Disponible','23'),(96,'Disponible','1'),(97,'Disponible','8'),(98,'Disponible','3'),(99,'Disponible','23'),(100,'Disponible','29'),(101,'Disponible','23'),(102,'Disponible','6'),(103,'Disponible','12'),(104,'Disponible','0'),(105,'Disponible','17'),(106,'Disponible','28'),(107,'Disponible','23'),(108,'Disponible','11'),(109,'Disponible','12'),(110,'Disponible','6'),(111,'Disponible','1'),(112,'Disponible','5'),(113,'Disponible','26'),(114,'Disponible','10'),(115,'Disponible','19'),(116,'Disponible','11'),(117,'Disponible','12'),(118,'Disponible','25'),(119,'Disponible','16'),(120,'Disponible','27'),(121,'Disponible','1'),(122,'Disponible','0'),(123,'Disponible','13'),(124,'Disponible','21'),(125,'Disponible','20'),(126,'Disponible','16'),(127,'Disponible','8'),(128,'Disponible','1'),(129,'Disponible','19'),(130,'Disponible','29'),(131,'Disponible','21'),(132,'Disponible','30'),(133,'Disponible','14'),(134,'Disponible','15'),(135,'Disponible','24'),(136,'Disponible','14'),(137,'Disponible','2'),(138,'Disponible','9'),(139,'Disponible','4'),(140,'Disponible','21'),(141,'Disponible','19'),(142,'Disponible','24'),(143,'Disponible','9'),(144,'Disponible','19'),(145,'Disponible','26'),(146,'Disponible','5'),(147,'Disponible','23'),(148,'Disponible','2'),(149,'Disponible','24'),(150,'Disponible','25'),(151,'Disponible','25'),(152,'Disponible','20'),(153,'Disponible','30'),(154,'Disponible','3'),(155,'Disponible','26'),(156,'Disponible','11'),(157,'Disponible','21'),(158,'Disponible','29'),(159,'Disponible','15'),(160,'Disponible','18'),(161,'Disponible','1'),(162,'Disponible','13'),(163,'Disponible','22'),(164,'Disponible','23'),(165,'Disponible','28'),(166,'Disponible','27'),(167,'Disponible','17'),(168,'Disponible','8'),(169,'Disponible','12'),(170,'Disponible','22'),(171,'Disponible','19'),(172,'Disponible','18'),(173,'Disponible','17'),(174,'Disponible','11'),(175,'Disponible','7'),(176,'Disponible','6'),(177,'Disponible','30'),(178,'Disponible','20'),(179,'Disponible','8'),(180,'Disponible','30'),(181,'Disponible','5'),(182,'Disponible','12'),(183,'Disponible','3'),(184,'Disponible','3'),(185,'Disponible','29'),(186,'Disponible','17'),(187,'Disponible','22'),(188,'Disponible','8'),(189,'Disponible','22'),(190,'Disponible','8'),(191,'Disponible','26'),(192,'Disponible','11'),(193,'Disponible','1'),(194,'Disponible','23'),(195,'Disponible','2'),(196,'Disponible','16'),(197,'Disponible','17'),(198,'Disponible','17'),(199,'Disponible','13');
/*!40000 ALTER TABLE `Bicicleta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Comunica`
--

DROP TABLE IF EXISTS `Comunica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Comunica` (
  `CodigoIncidencia` int(11) NOT NULL,
  `CodigoPersonal` int(11) NOT NULL,
  PRIMARY KEY (`CodigoIncidencia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Comunica`
--

LOCK TABLES `Comunica` WRITE;
/*!40000 ALTER TABLE `Comunica` DISABLE KEYS */;
/*!40000 ALTER TABLE `Comunica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Estacion`
--

DROP TABLE IF EXISTS `Estacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Estacion` (
  `Posicion` varchar(140) NOT NULL,
  `Estado` varchar(140) DEFAULT NULL,
  PRIMARY KEY (`Posicion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Estacion`
--

LOCK TABLES `Estacion` WRITE;
/*!40000 ALTER TABLE `Estacion` DISABLE KEYS */;
INSERT INTO `Estacion` VALUES ('Pos0','Activa'),('Pos1','Activa'),('Pos10','Activa'),('Pos11','Activa'),('Pos12','Activa'),('Pos13','Activa'),('Pos14','Activa'),('Pos15','Activa'),('Pos16','Activa'),('Pos17','Activa'),('Pos18','Activa'),('Pos19','Activa'),('Pos2','Activa'),('Pos20','Activa'),('Pos21','Activa'),('Pos22','Activa'),('Pos23','Activa'),('Pos24','Activa'),('Pos25','Activa'),('Pos26','Activa'),('Pos27','Activa'),('Pos28','Activa'),('Pos29','Activa'),('Pos3','Activa'),('Pos4','Activa'),('Pos5','Activa'),('Pos6','Activa'),('Pos7','Activa'),('Pos8','Activa'),('Pos9','Activa');
/*!40000 ALTER TABLE `Estacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Incidencias`
--

DROP TABLE IF EXISTS `Incidencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Incidencias` (
  `CodigoIncidencia` int(11) NOT NULL,
  `Tipo` varchar(140) DEFAULT NULL,
  `Descripcion` varchar(140) DEFAULT NULL,
  PRIMARY KEY (`CodigoIncidencia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Incidencias`
--

LOCK TABLES `Incidencias` WRITE;
/*!40000 ALTER TABLE `Incidencias` DISABLE KEYS */;
/*!40000 ALTER TABLE `Incidencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Llega`
--

DROP TABLE IF EXISTS `Llega`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Llega` (
  `DNI` char(9) NOT NULL,
  `CodigoEstacion` int(11) NOT NULL,
  `CodigoBicicleta` int(11) NOT NULL,
  PRIMARY KEY (`DNI`,`CodigoEstacion`,`CodigoBicicleta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Llega`
--

LOCK TABLES `Llega` WRITE;
/*!40000 ALTER TABLE `Llega` DISABLE KEYS */;
/*!40000 ALTER TABLE `Llega` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER revisaInsertaLlegada
BEFORE INSERT ON Llega
FOR EACH ROW
BEGIN
    IF (NEW.CodigoBicicleta<0 OR NEW.CodigoBicicleta>199) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT='Código de bicicleta fuera de los límites [0,199]';
    END IF;
    IF (NEW.CodigoEstacion<0 OR NEW.CodigoEstacion>29) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT='Código de estacion fuera de los límites [0,29]';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Personal`
--

DROP TABLE IF EXISTS `Personal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Personal` (
  `CodigoPersonal` int(11) NOT NULL,
  PRIMARY KEY (`CodigoPersonal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Personal`
--

LOCK TABLES `Personal` WRITE;
/*!40000 ALTER TABLE `Personal` DISABLE KEYS */;
INSERT INTO `Personal` VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12),(13),(14),(15),(16),(17),(18),(19),(20),(21),(22),(23),(24),(25),(26),(27),(28),(29),(30),(31),(32),(33),(34),(35),(36),(37),(38),(39),(40),(41),(42),(43),(44),(45),(46),(47),(48),(49),(50);
/*!40000 ALTER TABLE `Personal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pone`
--

DROP TABLE IF EXISTS `Pone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pone` (
  `CodigoPersonal` int(11) NOT NULL,
  `CodigoReclamacion` int(11) NOT NULL,
  PRIMARY KEY (`CodigoReclamacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pone`
--

LOCK TABLES `Pone` WRITE;
/*!40000 ALTER TABLE `Pone` DISABLE KEYS */;
/*!40000 ALTER TABLE `Pone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RecibePago`
--

DROP TABLE IF EXISTS `RecibePago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RecibePago` (
  `DNI` char(9) NOT NULL,
  `Entidad` int(11) NOT NULL,
  PRIMARY KEY (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RecibePago`
--

LOCK TABLES `RecibePago` WRITE;
/*!40000 ALTER TABLE `RecibePago` DISABLE KEYS */;
/*!40000 ALTER TABLE `RecibePago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Reclamacion`
--

DROP TABLE IF EXISTS `Reclamacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Reclamacion` (
  `CodigoReclamacion` int(11) NOT NULL,
  `NombreArchivo` varchar(140) DEFAULT NULL,
  `Fecha` varchar(140) DEFAULT NULL,
  PRIMARY KEY (`CodigoReclamacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Reclamacion`
--

LOCK TABLES `Reclamacion` WRITE;
/*!40000 ALTER TABLE `Reclamacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `Reclamacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ReparaBicicleta`
--

DROP TABLE IF EXISTS `ReparaBicicleta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ReparaBicicleta` (
  `CodigoBicicleta` int(11) NOT NULL,
  `CodigoPersonal` int(11) NOT NULL,
  `NumeroTaller` int(11) DEFAULT NULL,
  `CodReparacionBicicleta` varchar(140) NOT NULL,
  PRIMARY KEY (`CodReparacionBicicleta`,`CodigoBicicleta`,`CodigoPersonal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ReparaBicicleta`
--

LOCK TABLES `ReparaBicicleta` WRITE;
/*!40000 ALTER TABLE `ReparaBicicleta` DISABLE KEYS */;
/*!40000 ALTER TABLE `ReparaBicicleta` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER revisaReparaBicicletas
BEFORE INSERT ON ReparaBicicleta
FOR EACH ROW
BEGIN
    IF (NEW.CodigoBicicleta<0 OR NEW.CodigoBicicleta>199) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT='Código de bicicleta fuera de los límites [0,199]';
    END IF;
    IF (NEW.CodigoPersonal<0 OR NEW.CodigoPersonal>29) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT='Código de personal fuera de los límites [0,29]';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ReparaEstacion`
--

DROP TABLE IF EXISTS `ReparaEstacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ReparaEstacion` (
  `Posicion` varchar(140) NOT NULL,
  `CodigoPersonal` int(11) NOT NULL,
  `MensajeReparacion` varchar(140) DEFAULT NULL,
  `CodReparacionEstacion` varchar(140) NOT NULL,
  PRIMARY KEY (`CodReparacionEstacion`,`Posicion`,`CodigoPersonal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ReparaEstacion`
--

LOCK TABLES `ReparaEstacion` WRITE;
/*!40000 ALTER TABLE `ReparaEstacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `ReparaEstacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Revisa`
--

DROP TABLE IF EXISTS `Revisa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Revisa` (
  `CodigoBicicleta` int(11) NOT NULL,
  `CodigoPersonal` int(11) NOT NULL,
  `NumeroTaller` int(11) DEFAULT NULL,
  PRIMARY KEY (`CodigoBicicleta`,`CodigoPersonal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Revisa`
--

LOCK TABLES `Revisa` WRITE;
/*!40000 ALTER TABLE `Revisa` DISABLE KEYS */;
/*!40000 ALTER TABLE `Revisa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TarifasTiempo`
--

DROP TABLE IF EXISTS `TarifasTiempo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TarifasTiempo` (
  `Tarifa` int(11) NOT NULL,
  `TiempoAsignado` int(11) DEFAULT NULL,
  PRIMARY KEY (`Tarifa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TarifasTiempo`
--

LOCK TABLES `TarifasTiempo` WRITE;
/*!40000 ALTER TABLE `TarifasTiempo` DISABLE KEYS */;
INSERT INTO `TarifasTiempo` VALUES (0,45),(1,60),(2,90);
/*!40000 ALTER TABLE `TarifasTiempo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Traslada`
--

DROP TABLE IF EXISTS `Traslada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Traslada` (
  `CodigoTraslado` int(11) NOT NULL,
  `CodigoBicicleta` int(11) NOT NULL,
  `CodigoPersonal` int(11) NOT NULL,
  `EstacionPocasBicicletas` int(11) DEFAULT NULL,
  `EstacionMuchasBicicletas` int(11) DEFAULT NULL,
  `NumeroBicicletas` int(11) DEFAULT NULL,
  PRIMARY KEY (`CodigoTraslado`,`CodigoBicicleta`,`CodigoPersonal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Traslada`
--

LOCK TABLES `Traslada` WRITE;
/*!40000 ALTER TABLE `Traslada` DISABLE KEYS */;
/*!40000 ALTER TABLE `Traslada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Usuario`
--

DROP TABLE IF EXISTS `Usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Usuario` (
  `DNI` char(9) NOT NULL,
  `Nombre` varchar(140) DEFAULT NULL,
  `Edad` int(11) DEFAULT NULL,
  `NumeroCuenta` int(11) DEFAULT NULL,
  `Email` varchar(140) DEFAULT NULL,
  `Tarifa` int(11) DEFAULT NULL,
  `Telefono` int(11) DEFAULT NULL,
  `Contrasena` varchar(140) DEFAULT NULL,
  `Sancionado` tinyint(1) DEFAULT NULL,
  `KmRecorridos` int(11) DEFAULT NULL,
  PRIMARY KEY (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuario`
--

LOCK TABLES `Usuario` WRITE;
/*!40000 ALTER TABLE `Usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `Usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER edadMinima
BEFORE INSERT ON Usuario
FOR EACH ROW
BEGIN
  IF (NEW.Edad <= 14) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "No se puede dar de alta un usuario menor de 15 años.";
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Utiliza`
--

DROP TABLE IF EXISTS `Utiliza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Utiliza` (
  `DNI` char(9) NOT NULL,
  `CodigoBicicleta` int(11) NOT NULL,
  `TiempoEmpleado` int(11) DEFAULT NULL,
  PRIMARY KEY (`DNI`,`CodigoBicicleta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Utiliza`
--

LOCK TABLES `Utiliza` WRITE;
/*!40000 ALTER TABLE `Utiliza` DISABLE KEYS */;
/*!40000 ALTER TABLE `Utiliza` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-18 17:06:08
