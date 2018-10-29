-- MySQL dump 10.13  Distrib 8.0.13, for macos10.14 (x86_64)
--
-- Host: localhost    Database: Inventario
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Bienes_activos`
--

DROP TABLE IF EXISTS `Bienes_activos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Bienes_activos` (
  `id_Bienes_activos` int(11) NOT NULL,
  `marca` varchar(45) NOT NULL,
  `serial` varchar(45) NOT NULL,
  `unidades` int(11) NOT NULL,
  `responsable_encargado` varchar(45) NOT NULL,
  `modelo` varchar(45) NOT NULL,
  `precio_unitario` int(11) NOT NULL,
  `numero_solicitud` int(11) NOT NULL,
  `color` varchar(45) NOT NULL,
  `ubicacion` varchar(45) NOT NULL,
  PRIMARY KEY (`id_Bienes_activos`),
  UNIQUE KEY `id_Bienes_activos_UNIQUE` (`id_Bienes_activos`),
  UNIQUE KEY `serial_UNIQUE` (`serial`),
  UNIQUE KEY `responsable_encargado_UNIQUE` (`responsable_encargado`),
  UNIQUE KEY `numero_solicitud_UNIQUE` (`numero_solicitud`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Bienes_activos`
--

LOCK TABLES `Bienes_activos` WRITE;
/*!40000 ALTER TABLE `Bienes_activos` DISABLE KEYS */;
/*!40000 ALTER TABLE `Bienes_activos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Bienes_solicitados`
--

DROP TABLE IF EXISTS `Bienes_solicitados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Bienes_solicitados` (
  `id_Bienes_solicitados` int(11) NOT NULL,
  `marca` varchar(45) NOT NULL,
  `serial` varchar(45) NOT NULL,
  `unidades` varchar(45) NOT NULL,
  `modelo` varchar(45) NOT NULL,
  `precio_unitario` int(11) NOT NULL,
  `numero_solicitud` int(11) NOT NULL,
  PRIMARY KEY (`id_Bienes_solicitados`),
  UNIQUE KEY `id_Bienes_solicitados_UNIQUE` (`id_Bienes_solicitados`),
  UNIQUE KEY `numero_solicitud_UNIQUE` (`numero_solicitud`),
  UNIQUE KEY `serial_UNIQUE` (`serial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Bienes_solicitados`
--

LOCK TABLES `Bienes_solicitados` WRITE;
/*!40000 ALTER TABLE `Bienes_solicitados` DISABLE KEYS */;
/*!40000 ALTER TABLE `Bienes_solicitados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Estado`
--

DROP TABLE IF EXISTS `Estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Estado` (
  `id_Estado` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id_Estado`),
  UNIQUE KEY `id_Estado_UNIQUE` (`id_Estado`),
  UNIQUE KEY `Nombre_UNIQUE` (`Nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Estado`
--

LOCK TABLES `Estado` WRITE;
/*!40000 ALTER TABLE `Estado` DISABLE KEYS */;
/*!40000 ALTER TABLE `Estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Funcionario`
--

DROP TABLE IF EXISTS `Funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Funcionario` (
  `id_funcionario` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `contrasenna` varchar(45) NOT NULL,
  `id_rol` int(11) NOT NULL,
  `cedula` int(11) NOT NULL,
  PRIMARY KEY (`id_funcionario`),
  KEY `id_rol_idx` (`id_rol`),
  CONSTRAINT `id_rol` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Funcionario`
--

LOCK TABLES `Funcionario` WRITE;
/*!40000 ALTER TABLE `Funcionario` DISABLE KEYS */;
/*!40000 ALTER TABLE `Funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Rol`
--

DROP TABLE IF EXISTS `Rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Rol` (
  `id_Rol` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id_Rol`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Rol`
--

LOCK TABLES `Rol` WRITE;
/*!40000 ALTER TABLE `Rol` DISABLE KEYS */;
/*!40000 ALTER TABLE `Rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Solicitud_bienes`
--

DROP TABLE IF EXISTS `Solicitud_bienes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Solicitud_bienes` (
  `id_Solicitud_bienes` int(11) NOT NULL,
  `numero_comprobante` int(11) NOT NULL,
  `fecha_adquisicion` date NOT NULL,
  `tipo_adquisicion` varchar(45) NOT NULL,
  `cantidad_bienes` int(11) NOT NULL,
  `monto_total` int(11) NOT NULL,
  `estado` varchar(45) NOT NULL,
  `nota` varchar(45) NOT NULL,
  `id_registrador` int(11) NOT NULL,
  PRIMARY KEY (`id_Solicitud_bienes`),
  UNIQUE KEY `numero_comprobante_UNIQUE` (`numero_comprobante`),
  UNIQUE KEY `id_registrador_UNIQUE` (`id_registrador`),
  CONSTRAINT `id_funcionario` FOREIGN KEY (`id_registrador`) REFERENCES `funcionario` (`id_funcionario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Solicitud_bienes`
--

LOCK TABLES `Solicitud_bienes` WRITE;
/*!40000 ALTER TABLE `Solicitud_bienes` DISABLE KEYS */;
/*!40000 ALTER TABLE `Solicitud_bienes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Solicitud_translado`
--

DROP TABLE IF EXISTS `Solicitud_translado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Solicitud_translado` (
  `id_Solicitud_translado` int(11) NOT NULL,
  `estado` varchar(45) NOT NULL,
  `nota` varchar(45) DEFAULT NULL,
  `bienes_transladados` varchar(45) NOT NULL,
  `id_solicitante` int(11) NOT NULL,
  `origen` varchar(45) NOT NULL,
  `destino` varchar(45) NOT NULL,
  PRIMARY KEY (`id_Solicitud_translado`),
  UNIQUE KEY `id_Solicitud_translado_UNIQUE` (`id_Solicitud_translado`),
  UNIQUE KEY `estado_UNIQUE` (`estado`),
  UNIQUE KEY `destino_UNIQUE` (`destino`),
  UNIQUE KEY `origen_UNIQUE` (`origen`),
  UNIQUE KEY `id_solicitante_UNIQUE` (`id_solicitante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Solicitud_translado`
--

LOCK TABLES `Solicitud_translado` WRITE;
/*!40000 ALTER TABLE `Solicitud_translado` DISABLE KEYS */;
/*!40000 ALTER TABLE `Solicitud_translado` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-29 15:14:47
