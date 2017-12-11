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
INSERT INTO `Bicicleta` VALUES (0,'Activa','8'),(1,'Activa','19'),(2,'Activa','15'),(3,'Activa','24'),(4,'Activa','25'),(5,'Activa','13'),(6,'Activa','16'),(7,'Activa','7'),(8,'Activa','8'),(9,'Activa','25'),(10,'Activa','27'),(11,'Activa','30'),(12,'Activa','5'),(13,'Activa','10'),(14,'Activa','0'),(15,'Activa','19'),(16,'Activa','8'),(17,'Activa','3'),(18,'Activa','10'),(19,'Activa','21'),(20,'Activa','6'),(21,'Activa','15'),(22,'Activa','24'),(23,'Activa','25'),(24,'Activa','19'),(25,'Activa','20'),(26,'Activa','8'),(27,'Activa','5'),(28,'Activa','0'),(29,'Activa','18'),(30,'Activa','22'),(31,'Activa','29'),(32,'Activa','17'),(33,'Activa','26'),(34,'Activa','26'),(35,'Activa','5'),(36,'Activa','24'),(37,'Activa','27'),(38,'Activa','25'),(39,'Activa','24'),(40,'Activa','11'),(41,'Activa','30'),(42,'Activa','4'),(43,'Activa','18'),(44,'Activa','1'),(45,'Activa','27'),(46,'Activa','23'),(47,'Activa','5'),(48,'Activa','0'),(49,'Activa','29'),(50,'Activa','24'),(51,'Activa','22'),(52,'Activa','2'),(53,'Activa','2'),(54,'Activa','4'),(55,'Activa','27'),(56,'Activa','5'),(57,'Activa','15'),(58,'Activa','4'),(59,'Activa','3'),(60,'Activa','15'),(61,'Activa','8'),(62,'Activa','18'),(63,'Activa','11'),(64,'Activa','15'),(65,'Activa','0'),(66,'Activa','17'),(67,'Activa','17'),(68,'Activa','16'),(69,'Activa','14'),(70,'Activa','25'),(71,'Activa','3'),(72,'Activa','26'),(73,'Activa','14'),(74,'Activa','13'),(75,'Activa','14'),(76,'Activa','5'),(77,'Activa','11'),(78,'Activa','24'),(79,'Activa','20'),(80,'Activa','29'),(81,'Activa','9'),(82,'Activa','23'),(83,'Activa','15'),(84,'Activa','20'),(85,'Activa','10'),(86,'Activa','11'),(87,'Activa','4'),(88,'Activa','8'),(89,'Activa','20'),(90,'Activa','26'),(91,'Activa','4'),(92,'Activa','5'),(93,'Activa','1'),(94,'Activa','20'),(95,'Activa','23'),(96,'Activa','1'),(97,'Activa','8'),(98,'Activa','3'),(99,'Activa','23'),(100,'Activa','29'),(101,'Activa','23'),(102,'Activa','6'),(103,'Activa','12'),(104,'Activa','0'),(105,'Activa','17'),(106,'Activa','28'),(107,'Activa','23'),(108,'Activa','11'),(109,'Activa','12'),(110,'Activa','6'),(111,'Activa','1'),(112,'Activa','5'),(113,'Activa','26'),(114,'Activa','10'),(115,'Activa','19'),(116,'Activa','11'),(117,'Activa','12'),(118,'Activa','25'),(119,'Activa','16'),(120,'Activa','27'),(121,'Activa','1'),(122,'Activa','0'),(123,'Activa','13'),(124,'Activa','21'),(125,'Activa','20'),(126,'Activa','16'),(127,'Activa','8'),(128,'Activa','1'),(129,'Activa','19'),(130,'Activa','29'),(131,'Activa','21'),(132,'Activa','30'),(133,'Activa','14'),(134,'Activa','15'),(135,'Activa','24'),(136,'Activa','14'),(137,'Activa','2'),(138,'Activa','9'),(139,'Activa','4'),(140,'Activa','21'),(141,'Activa','19'),(142,'Activa','24'),(143,'Activa','9'),(144,'Activa','19'),(145,'Activa','26'),(146,'Activa','5'),(147,'Activa','23'),(148,'Activa','2'),(149,'Activa','24'),(150,'Activa','25'),(151,'Activa','25'),(152,'Activa','20'),(153,'Activa','30'),(154,'Activa','3'),(155,'Activa','26'),(156,'Activa','11'),(157,'Activa','21'),(158,'Activa','29'),(159,'Activa','15'),(160,'Activa','18'),(161,'Activa','1'),(162,'Activa','13'),(163,'Activa','22'),(164,'Activa','23'),(165,'Activa','28'),(166,'Activa','27'),(167,'Activa','17'),(168,'Activa','8'),(169,'Activa','12'),(170,'Activa','22'),(171,'Activa','19'),(172,'Activa','18'),(173,'Activa','17'),(174,'Activa','11'),(175,'Activa','7'),(176,'Activa','6'),(177,'Activa','30'),(178,'Activa','20'),(179,'Activa','8'),(180,'Activa','30'),(181,'Activa','5'),(182,'Activa','12'),(183,'Activa','3'),(184,'Activa','3'),(185,'Activa','29'),(186,'Activa','17'),(187,'Activa','22'),(188,'Activa','8'),(189,'Activa','22'),(190,'Activa','8'),(191,'Activa','26'),(192,'Activa','11'),(193,'Activa','1'),(194,'Activa','23'),(195,'Activa','2'),(196,'Activa','16'),(197,'Activa','17'),(198,'Activa','17'),(199,'Activa','13');
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
  `CodigoEstacion` int(11) NOT NULL,
  `Estado` varchar(140) DEFAULT NULL,
  `Posicion` varchar(140) DEFAULT NULL,
  PRIMARY KEY (`CodigoEstacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Estacion`
--

LOCK TABLES `Estacion` WRITE;
/*!40000 ALTER TABLE `Estacion` DISABLE KEYS */;
INSERT INTO `Estacion` VALUES (0,'Activa','Pos0'),(1,'Activa','Pos1'),(2,'Activa','Pos2'),(3,'Activa','Pos3'),(4,'Activa','Pos4'),(5,'Activa','Pos5'),(6,'Activa','Pos6'),(7,'Activa','Pos7'),(8,'Activa','Pos8'),(9,'Activa','Pos9'),(10,'Activa','Pos10'),(11,'Activa','Pos11'),(12,'Activa','Pos12'),(13,'Activa','Pos13'),(14,'Activa','Pos14'),(15,'Activa','Pos15'),(16,'Activa','Pos16'),(17,'Activa','Pos17'),(18,'Activa','Pos18'),(19,'Activa','Pos19'),(20,'Activa','Pos20'),(21,'Activa','Pos21'),(22,'Activa','Pos22'),(23,'Activa','Pos23'),(24,'Activa','Pos24'),(25,'Activa','Pos25'),(26,'Activa','Pos26'),(27,'Activa','Pos27'),(28,'Activa','Pos28'),(29,'Activa','Pos29');
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
  PRIMARY KEY (`CodigoBicicleta`,`CodigoPersonal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ReparaBicicleta`
--

LOCK TABLES `ReparaBicicleta` WRITE;
/*!40000 ALTER TABLE `ReparaBicicleta` DISABLE KEYS */;
/*!40000 ALTER TABLE `ReparaBicicleta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ReparaEstacion`
--

DROP TABLE IF EXISTS `ReparaEstacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ReparaEstacion` (
  `CodigoEstacion` int(11) NOT NULL,
  `CodigoPersonal` int(11) NOT NULL,
  `MensajeReparacion` varchar(140) DEFAULT NULL,
  PRIMARY KEY (`CodigoEstacion`,`CodigoPersonal`)
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
-- Table structure for table `Sanciona`
--

DROP TABLE IF EXISTS `Sanciona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Sanciona` (
  `DNI` char(9) NOT NULL,
  `CodigoEstacion` int(11) NOT NULL,
  `CodigoBicicleta` int(11) NOT NULL,
  PRIMARY KEY (`DNI`,`CodigoEstacion`,`CodigoBicicleta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sanciona`
--

LOCK TABLES `Sanciona` WRITE;
/*!40000 ALTER TABLE `Sanciona` DISABLE KEYS */;
/*!40000 ALTER TABLE `Sanciona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Traslada`
--

DROP TABLE IF EXISTS `Traslada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Traslada` (
  `CodigoBicicleta` int(11) NOT NULL,
  `CodigoPersonal` int(11) NOT NULL,
  `EstacionPocasBicicletas` int(11) DEFAULT NULL,
  `EstacionMuchasBicicletas` int(11) DEFAULT NULL,
  `NumeroBicicletas` int(11) DEFAULT NULL,
  PRIMARY KEY (`CodigoBicicleta`,`CodigoPersonal`)
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
  `Nombre` varchar(20) DEFAULT NULL,
  `Edad` varchar(3) DEFAULT NULL,
  `NumeroCuenta` int(24) DEFAULT NULL,
  `Email` varchar(20) DEFAULT NULL,
  `Tarifa` int(11) DEFAULT NULL,
  `Telefono` int(13) DEFAULT NULL,
  `Contrasena` varchar(20) DEFAULT NULL,
  `TiempoAsignado` int(11) DEFAULT NULL,
  `Sancionado` tinyint(1) DEFAULT NULL,
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

-- Dump completed on 2017-12-11 19:45:06