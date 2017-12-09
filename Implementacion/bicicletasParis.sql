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
  `CodigoBicicleta` int(11) NOT NULL,
  `MensajeReparacion` varchar(140) DEFAULT NULL,
  PRIMARY KEY (`CodigoEstacion`,`CodigoBicicleta`)
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
  `NumeroCuenta` char(24) DEFAULT NULL,
  `Email` varchar(20) DEFAULT NULL,
  `Tarifa` int(11) DEFAULT NULL,
  `Telefono` varchar(13) DEFAULT NULL,
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

-- Dump completed on 2017-12-09 13:55:21
