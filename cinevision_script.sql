CREATE DATABASE  IF NOT EXISTS `cinevision` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cinevision`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cinevision
-- ------------------------------------------------------
-- Server version	8.2.0

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
-- Table structure for table `asientos`
--

DROP TABLE IF EXISTS `asientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asientos` (
  `idAsientos` int NOT NULL AUTO_INCREMENT,
  `fkSala` int NOT NULL,
  `Fila` int DEFAULT NULL,
  `Columna` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idAsientos`),
  KEY `fkasieS` (`fkSala`),
  CONSTRAINT `fkasieS` FOREIGN KEY (`fkSala`) REFERENCES `salas` (`idSalas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asientos`
--

LOCK TABLES `asientos` WRITE;
/*!40000 ALTER TABLE `asientos` DISABLE KEYS */;
/*!40000 ALTER TABLE `asientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cines`
--

DROP TABLE IF EXISTS `cines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cines` (
  `idCines` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) DEFAULT NULL,
  `Direccion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCines`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cines`
--

LOCK TABLES `cines` WRITE;
/*!40000 ALTER TABLE `cines` DISABLE KEYS */;
INSERT INTO `cines` VALUES (1,'Metropolis','+18');
/*!40000 ALTER TABLE `cines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `idClientes` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) DEFAULT NULL,
  `Nit` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idClientes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `derechos`
--

DROP TABLE IF EXISTS `derechos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `derechos` (
  `idDerechos` int NOT NULL AUTO_INCREMENT,
  `fkPelicula` int NOT NULL,
  `estadoDerechos` tinyint DEFAULT NULL,
  PRIMARY KEY (`idDerechos`),
  KEY `fkpder` (`fkPelicula`),
  CONSTRAINT `fkpder` FOREIGN KEY (`fkPelicula`) REFERENCES `peliculas` (`idPeliculas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `derechos`
--

LOCK TABLES `derechos` WRITE;
/*!40000 ALTER TABLE `derechos` DISABLE KEYS */;
/*!40000 ALTER TABLE `derechos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura`
--

DROP TABLE IF EXISTS `factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `factura` (
  `idFactura` int NOT NULL AUTO_INCREMENT,
  `fkCliente` int DEFAULT NULL,
  `metodoPago` varchar(45) DEFAULT NULL,
  `subTotal` double DEFAULT NULL,
  `impuesto` double DEFAULT NULL,
  PRIMARY KEY (`idFactura`),
  KEY `fkfacCl` (`fkCliente`),
  CONSTRAINT `fkfacCl` FOREIGN KEY (`fkCliente`) REFERENCES `clientes` (`idClientes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura`
--

LOCK TABLES `factura` WRITE;
/*!40000 ALTER TABLE `factura` DISABLE KEYS */;
/*!40000 ALTER TABLE `factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horariocine`
--

DROP TABLE IF EXISTS `horariocine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `horariocine` (
  `idhorarioCine` int NOT NULL AUTO_INCREMENT,
  `fkPelicula` int DEFAULT NULL,
  `fkSala` int NOT NULL,
  `fechaHorario` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idhorarioCine`),
  KEY `fkhcinP` (`fkPelicula`),
  KEY `fkhcinSa` (`fkSala`),
  CONSTRAINT `fkhcinP` FOREIGN KEY (`fkPelicula`) REFERENCES `peliculas` (`idPeliculas`),
  CONSTRAINT `fkhcinSa` FOREIGN KEY (`fkSala`) REFERENCES `salas` (`idSalas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horariocine`
--

LOCK TABLES `horariocine` WRITE;
/*!40000 ALTER TABLE `horariocine` DISABLE KEYS */;
/*!40000 ALTER TABLE `horariocine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peliculas`
--

DROP TABLE IF EXISTS `peliculas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `peliculas` (
  `idPeliculas` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) DEFAULT NULL,
  `Clasificacion` varchar(45) DEFAULT NULL,
  `Genero` varchar(45) DEFAULT NULL,
  `Subtitulado` varchar(45) DEFAULT NULL,
  `Idioma` varchar(45) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  PRIMARY KEY (`idPeliculas`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peliculas`
--

LOCK TABLES `peliculas` WRITE;
/*!40000 ALTER TABLE `peliculas` DISABLE KEYS */;
INSERT INTO `peliculas` VALUES (1,'Batman','pg13','MasculinoXD','Si','Ingles',1200);
/*!40000 ALTER TABLE `peliculas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privilegios`
--

DROP TABLE IF EXISTS `privilegios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `privilegios` (
  `idPrivilegios` int NOT NULL AUTO_INCREMENT,
  `descPrivilegio` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idPrivilegios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privilegios`
--

LOCK TABLES `privilegios` WRITE;
/*!40000 ALTER TABLE `privilegios` DISABLE KEYS */;
/*!40000 ALTER TABLE `privilegios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registropuntos`
--

DROP TABLE IF EXISTS `registropuntos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registropuntos` (
  `idregistroPuntos` int NOT NULL AUTO_INCREMENT,
  `fkCliente` int NOT NULL,
  `puntosAcum` int DEFAULT NULL,
  `puntosUsados` int DEFAULT NULL,
  PRIMARY KEY (`idregistroPuntos`),
  KEY `fkregCl` (`fkCliente`),
  CONSTRAINT `fkregCl` FOREIGN KEY (`fkCliente`) REFERENCES `clientes` (`idClientes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registropuntos`
--

LOCK TABLES `registropuntos` WRITE;
/*!40000 ALTER TABLE `registropuntos` DISABLE KEYS */;
/*!40000 ALTER TABLE `registropuntos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservaciones`
--

DROP TABLE IF EXISTS `reservaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservaciones` (
  `idReservaciones` int NOT NULL AUTO_INCREMENT,
  `fkAsientos` int NOT NULL,
  `subTotalAsiento` double DEFAULT NULL,
  `fkFactura` int DEFAULT NULL,
  PRIMARY KEY (`idReservaciones`),
  KEY `fkresas` (`fkAsientos`),
  KEY `fkresfac` (`fkFactura`),
  CONSTRAINT `fkresas` FOREIGN KEY (`fkAsientos`) REFERENCES `asientos` (`idAsientos`),
  CONSTRAINT `fkresfac` FOREIGN KEY (`fkFactura`) REFERENCES `factura` (`idFactura`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservaciones`
--

LOCK TABLES `reservaciones` WRITE;
/*!40000 ALTER TABLE `reservaciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `reservaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salas`
--

DROP TABLE IF EXISTS `salas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salas` (
  `idSalas` int NOT NULL AUTO_INCREMENT,
  `fkCine` int NOT NULL,
  `Descripción` varchar(100) DEFAULT NULL,
  `formatoPeli` varchar(45) DEFAULT NULL,
  `puntos` int DEFAULT NULL,
  `precioSala` double DEFAULT NULL,
  PRIMARY KEY (`idSalas`),
  KEY `fk_cinS` (`fkCine`),
  CONSTRAINT `fk_cinS` FOREIGN KEY (`fkCine`) REFERENCES `cines` (`idCines`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salas`
--

LOCK TABLES `salas` WRITE;
/*!40000 ALTER TABLE `salas` DISABLE KEYS */;
/*!40000 ALTER TABLE `salas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_aplicaciones`
--

DROP TABLE IF EXISTS `tbl_aplicaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_aplicaciones` (
  `pk_id_aplicacion` int NOT NULL,
  `nombre_aplicacion` varchar(50) NOT NULL,
  `descripcion_aplicacion` varchar(150) NOT NULL,
  `estado_aplicacion` tinyint DEFAULT '0',
  PRIMARY KEY (`pk_id_aplicacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_aplicaciones`
--

LOCK TABLES `tbl_aplicaciones` WRITE;
/*!40000 ALTER TABLE `tbl_aplicaciones` DISABLE KEYS */;
INSERT INTO `tbl_aplicaciones` VALUES (1,'Menu','Ingreso Login',1),(999,'Cerrar Sesion','Cerrar Sesion',1),(1000,'MDI SEGURIDAD','PARA SEGURIDAD',1),(1001,'Mant. Usuario','PARA SEGURIDAD',1),(1002,'Mant. Aplicación','PARA SEGURIDAD',1),(1003,'Mant. Modulo','PARA SEGURIDAD',1),(1004,'Mant. Perfil','PARA SEGURIDAD',1),(1101,'Asign. Modulo Aplicacion','PARA SEGURIDAD',1),(1102,'Asign. Aplicacion Perfil','PARA SEGURIDAD',1),(1103,'Asign. Perfil Usuario','PARA SEGURIDAD',1),(1201,'Pcs. Cambio Contraseña','PARA SEGURIDAD',1),(1301,'Pcs. BITACORA','PARA SEGURIDAD',1),(7000,'MDI BANCOS','PARA BANCOS',1),(7001,'Movimientos Bancarios','PARA BANCOS',1),(7002,'Conciliacion Bancaria','PARA BANCOS',1),(7003,'Tipo de cambio','PARA BANCOS',1),(7004,'Disponibilidad diaria','PARA BANCOS',1),(7005,'Autorizacion de ordenes de compras','PARA BANCOS',1),(7006,'Mant. Ag.Bancos','PARA BANCOS',1),(7007,'Mant. Ag.Cuentas','PARA BANCOS',1),(7008,'Mant. Ag.Movimiento','PARA BANCOS',1),(7009,'Mant. Ordenes de compra','PARA BANCOS',1);
/*!40000 ALTER TABLE `tbl_aplicaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_asignacionesperfilsusuario`
--

DROP TABLE IF EXISTS `tbl_asignacionesperfilsusuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_asignacionesperfilsusuario` (
  `fk_id_usuario` int NOT NULL,
  `fk_id_perfil` int NOT NULL,
  PRIMARY KEY (`fk_id_usuario`,`fk_id_perfil`),
  KEY `fk_id_perfil` (`fk_id_perfil`),
  CONSTRAINT `tbl_asignacionesperfilsusuario_ibfk_1` FOREIGN KEY (`fk_id_usuario`) REFERENCES `tbl_usuarios` (`pk_id_usuario`),
  CONSTRAINT `tbl_asignacionesperfilsusuario_ibfk_2` FOREIGN KEY (`fk_id_perfil`) REFERENCES `tbl_perfiles` (`pk_id_perfil`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_asignacionesperfilsusuario`
--

LOCK TABLES `tbl_asignacionesperfilsusuario` WRITE;
/*!40000 ALTER TABLE `tbl_asignacionesperfilsusuario` DISABLE KEYS */;
INSERT INTO `tbl_asignacionesperfilsusuario` VALUES (1,1);
/*!40000 ALTER TABLE `tbl_asignacionesperfilsusuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_asignacionmoduloaplicacion`
--

DROP TABLE IF EXISTS `tbl_asignacionmoduloaplicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_asignacionmoduloaplicacion` (
  `fk_id_modulos` int NOT NULL,
  `fk_id_aplicacion` int NOT NULL,
  PRIMARY KEY (`fk_id_modulos`,`fk_id_aplicacion`),
  KEY `fk_id_aplicacion` (`fk_id_aplicacion`),
  CONSTRAINT `tbl_asignacionmoduloaplicacion_ibfk_1` FOREIGN KEY (`fk_id_modulos`) REFERENCES `tbl_modulos` (`pk_id_modulos`),
  CONSTRAINT `tbl_asignacionmoduloaplicacion_ibfk_2` FOREIGN KEY (`fk_id_aplicacion`) REFERENCES `tbl_aplicaciones` (`pk_id_aplicacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_asignacionmoduloaplicacion`
--

LOCK TABLES `tbl_asignacionmoduloaplicacion` WRITE;
/*!40000 ALTER TABLE `tbl_asignacionmoduloaplicacion` DISABLE KEYS */;
INSERT INTO `tbl_asignacionmoduloaplicacion` VALUES (1000,1000),(1000,1001),(1000,1002),(1000,1003),(1000,1004),(1000,1102),(1000,1103),(1000,1201),(1000,1301),(7000,7000),(7000,7001),(7000,7002),(7000,7003),(7000,7004),(7000,7005),(7000,7006),(7000,7007),(7000,7008),(7000,7009);
/*!40000 ALTER TABLE `tbl_asignacionmoduloaplicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bitacoradeeventos`
--

DROP TABLE IF EXISTS `tbl_bitacoradeeventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_bitacoradeeventos` (
  `pk_id_bitacora` int NOT NULL AUTO_INCREMENT,
  `fk_id_usuario` int NOT NULL,
  `fk_id_aplicacion` int NOT NULL,
  `fecha_bitacora` date NOT NULL,
  `hora_bitacora` time NOT NULL,
  `host_bitacora` varchar(45) NOT NULL,
  `ip_bitacora` varchar(100) NOT NULL,
  `accion_bitacora` varchar(50) NOT NULL,
  PRIMARY KEY (`pk_id_bitacora`),
  KEY `fk_id_usuario` (`fk_id_usuario`),
  KEY `fk_id_aplicacion` (`fk_id_aplicacion`),
  CONSTRAINT `tbl_bitacoradeeventos_ibfk_1` FOREIGN KEY (`fk_id_usuario`) REFERENCES `tbl_usuarios` (`pk_id_usuario`),
  CONSTRAINT `tbl_bitacoradeeventos_ibfk_2` FOREIGN KEY (`fk_id_aplicacion`) REFERENCES `tbl_aplicaciones` (`pk_id_aplicacion`)
) ENGINE=InnoDB AUTO_INCREMENT=315 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bitacoradeeventos`
--

LOCK TABLES `tbl_bitacoradeeventos` WRITE;
/*!40000 ALTER TABLE `tbl_bitacoradeeventos` DISABLE KEYS */;
INSERT INTO `tbl_bitacoradeeventos` VALUES (1,1,1,'2023-10-27','14:05:00','OLSTER','fe80::a328:23e5:7f78:af4f%14','Ingreso Login'),(2,1,999,'2023-10-27','14:05:02','OLSTER','fe80::a328:23e5:7f78:af4f%14','Cerro Sesion'),(3,1,1000,'2023-10-27','14:08:27','OLSTER','fe80::a328:23e5:7f78:af4f%14','Se ha guardado un registro'),(4,1,1,'2023-10-27','15:25:57','OLSTER','fe80::a328:23e5:7f78:af4f%14','Ingreso Login'),(5,1,999,'2023-10-27','15:25:58','OLSTER','fe80::a328:23e5:7f78:af4f%14','Cerro Sesion'),(6,1,1000,'2023-10-27','15:28:22','OLSTER','192.168.56.1','Se ha guardado un registro'),(7,1,1000,'2023-10-27','15:28:38','OLSTER','192.168.56.1','Se ha modificado un registro'),(8,1,1,'2023-10-30','23:50:17','OLSTER','fe80::a328:23e5:7f78:af4f%14','Ingreso Login'),(9,1,999,'2023-10-30','23:50:18','OLSTER','fe80::a328:23e5:7f78:af4f%14','Cerro Sesion'),(10,1,1000,'2023-10-30','23:51:18','OLSTER','fe80::a328:23e5:7f78:af4f%14','Se ha guardado un registro'),(11,1,1000,'2023-10-30','23:53:48','OLSTER','fe80::a328:23e5:7f78:af4f%14','Se ha guardado un registro'),(12,1,1,'2023-11-03','12:39:11','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Login'),(13,1,999,'2023-11-03','12:39:25','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Cerro Sesion'),(14,1,1,'2023-11-03','12:41:51','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Login'),(15,1,1,'2023-11-03','15:13:01','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Login'),(16,1,1,'2023-11-03','15:24:41','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Login'),(17,1,7000,'2023-11-03','15:24:43','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Ventas'),(18,1,1,'2023-11-03','15:26:56','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Login'),(19,1,1,'2023-11-03','15:28:30','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Login'),(20,1,7000,'2023-11-03','15:28:31','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Ventas'),(21,1,1,'2023-11-03','22:35:50','OLSTER','fe80::a328:23e5:7f78:af4f%14','Ingreso Login'),(22,1,7000,'2023-11-03','22:35:54','OLSTER','fe80::a328:23e5:7f78:af4f%14','Ingreso Ventas'),(23,1,1,'2023-11-04','20:34:39','OLSTER','fe80::a328:23e5:7f78:af4f%14','Ingreso Login'),(24,1,7000,'2023-11-04','20:34:41','OLSTER','fe80::a328:23e5:7f78:af4f%14','Ingreso Ventas'),(25,1,1,'2023-11-04','20:40:02','OLSTER','fe80::a328:23e5:7f78:af4f%14','Ingreso Login'),(26,1,7000,'2023-11-04','20:40:04','OLSTER','fe80::a328:23e5:7f78:af4f%14','Ingreso Ventas'),(27,1,1,'2023-11-04','20:42:54','OLSTER','fe80::a328:23e5:7f78:af4f%14','Ingreso Login'),(28,1,7000,'2023-11-04','20:42:56','OLSTER','fe80::a328:23e5:7f78:af4f%14','Ingreso Ventas'),(29,1,1,'2023-11-04','20:47:17','OLSTER','fe80::a328:23e5:7f78:af4f%14','Ingreso Login'),(30,1,7000,'2023-11-04','20:47:19','OLSTER','fe80::a328:23e5:7f78:af4f%14','Ingreso Ventas'),(31,1,1,'2023-11-04','20:55:04','OLSTER','fe80::a328:23e5:7f78:af4f%14','Ingreso Login'),(32,1,7000,'2023-11-04','20:55:05','OLSTER','fe80::a328:23e5:7f78:af4f%14','Ingreso Ventas'),(33,1,1,'2023-11-04','21:02:58','OLSTER','fe80::a328:23e5:7f78:af4f%14','Ingreso Login'),(34,1,7000,'2023-11-04','21:02:59','OLSTER','fe80::a328:23e5:7f78:af4f%14','Ingreso Ventas'),(35,1,1,'2023-11-04','21:09:27','OLSTER','fe80::a328:23e5:7f78:af4f%14','Ingreso Login'),(36,1,999,'2023-11-04','21:09:27','OLSTER','fe80::a328:23e5:7f78:af4f%14','Cerro Sesion'),(37,1,1,'2023-11-04','21:09:37','OLSTER','fe80::a328:23e5:7f78:af4f%14','Ingreso Login'),(38,1,7000,'2023-11-04','21:09:39','OLSTER','fe80::a328:23e5:7f78:af4f%14','Ingreso Ventas'),(39,1,1,'2023-11-04','21:20:36','OLSTER','fe80::a328:23e5:7f78:af4f%14','Ingreso Login'),(40,1,7000,'2023-11-04','21:20:38','OLSTER','fe80::a328:23e5:7f78:af4f%14','Ingreso Ventas'),(41,1,1,'2023-11-04','21:27:42','OLSTER','fe80::a328:23e5:7f78:af4f%14','Ingreso Login'),(42,1,7000,'2023-11-04','21:27:44','OLSTER','fe80::a328:23e5:7f78:af4f%14','Ingreso Ventas'),(43,1,1,'2023-11-04','21:32:11','OLSTER','fe80::a328:23e5:7f78:af4f%14','Ingreso Login'),(44,1,7000,'2023-11-04','21:32:13','OLSTER','fe80::a328:23e5:7f78:af4f%14','Ingreso Ventas'),(45,1,1,'2023-11-04','21:35:25','OLSTER','fe80::a328:23e5:7f78:af4f%14','Ingreso Login'),(46,1,7000,'2023-11-04','21:35:27','OLSTER','fe80::a328:23e5:7f78:af4f%14','Ingreso Ventas'),(47,1,1,'2023-11-04','21:40:05','OLSTER','fe80::a328:23e5:7f78:af4f%14','Ingreso Login'),(48,1,7000,'2023-11-04','21:40:07','OLSTER','fe80::a328:23e5:7f78:af4f%14','Ingreso Ventas'),(49,1,1,'2023-11-04','21:45:12','OLSTER','fe80::a328:23e5:7f78:af4f%14','Ingreso Login'),(50,1,7000,'2023-11-04','21:45:14','OLSTER','fe80::a328:23e5:7f78:af4f%14','Ingreso Ventas'),(51,1,1,'2023-11-04','21:53:17','OLSTER','fe80::a328:23e5:7f78:af4f%14','Ingreso Login'),(52,1,7000,'2023-11-04','21:53:18','OLSTER','fe80::a328:23e5:7f78:af4f%14','Ingreso Ventas'),(53,1,1,'2023-11-04','21:54:32','OLSTER','fe80::a328:23e5:7f78:af4f%14','Ingreso Login'),(54,1,7000,'2023-11-04','21:54:33','OLSTER','fe80::a328:23e5:7f78:af4f%14','Ingreso Ventas'),(55,1,1,'2023-11-04','21:56:58','OLSTER','fe80::a328:23e5:7f78:af4f%14','Ingreso Login'),(56,1,7000,'2023-11-04','21:57:01','OLSTER','fe80::a328:23e5:7f78:af4f%14','Ingreso Ventas'),(57,1,1004,'2023-11-04','21:58:02','OLSTER','fe80::a328:23e5:7f78:af4f%14','Guardar'),(58,1,1004,'2023-11-04','21:58:27','OLSTER','fe80::a328:23e5:7f78:af4f%14','Modificar'),(59,1,999,'2023-11-04','22:02:11','OLSTER','fe80::a328:23e5:7f78:af4f%14','Cerro Sesion'),(60,1,1,'2023-11-05','20:32:24','OLSTER','fe80::a328:23e5:7f78:af4f%14','Ingreso Login'),(61,1,7000,'2023-11-05','20:32:27','OLSTER','fe80::a328:23e5:7f78:af4f%14','Ingreso Ventas'),(62,1,1,'2023-11-05','21:12:57','OLSTER','fe80::a328:23e5:7f78:af4f%14','Ingreso Login'),(63,1,7000,'2023-11-05','21:12:58','OLSTER','fe80::a328:23e5:7f78:af4f%14','Ingreso Ventas'),(64,1,1,'2023-11-05','21:14:00','OLSTER','fe80::a328:23e5:7f78:af4f%14','Ingreso Login'),(65,1,7000,'2023-11-05','21:14:01','OLSTER','fe80::a328:23e5:7f78:af4f%14','Ingreso Ventas'),(66,1,1,'2023-11-05','21:18:38','OLSTER','fe80::a328:23e5:7f78:af4f%14','Ingreso Login'),(67,1,7000,'2023-11-05','21:18:39','OLSTER','fe80::a328:23e5:7f78:af4f%14','Ingreso Ventas'),(68,1,999,'2023-11-05','21:18:52','OLSTER','fe80::a328:23e5:7f78:af4f%14','Cerro Sesion'),(69,1,1,'2023-11-05','21:20:09','OLSTER','fe80::a328:23e5:7f78:af4f%14','Ingreso Login'),(70,1,7000,'2023-11-05','21:20:10','OLSTER','fe80::a328:23e5:7f78:af4f%14','Ingreso Ventas'),(71,1,999,'2023-11-05','21:20:24','OLSTER','fe80::a328:23e5:7f78:af4f%14','Cerro Sesion'),(72,1,1,'2023-11-05','21:21:11','OLSTER','fe80::a328:23e5:7f78:af4f%14','Ingreso Login'),(73,1,7000,'2023-11-05','21:21:12','OLSTER','fe80::a328:23e5:7f78:af4f%14','Ingreso Ventas'),(74,1,1,'2023-11-05','21:22:57','OLSTER','fe80::a328:23e5:7f78:af4f%14','Ingreso Login'),(75,1,7000,'2023-11-05','21:22:58','OLSTER','fe80::a328:23e5:7f78:af4f%14','Ingreso Ventas'),(76,1,1,'2023-11-06','22:51:39','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Login'),(77,1,7000,'2023-11-06','22:51:40','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Ventas'),(78,1,1004,'2023-11-06','22:52:15','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Guardar'),(79,1,1,'2023-11-06','23:35:34','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Login'),(80,1,7000,'2023-11-06','23:35:35','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Ventas'),(81,1,1,'2023-11-06','23:36:37','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Login'),(82,1,7000,'2023-11-06','23:36:38','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Ventas'),(83,1,1,'2023-11-06','23:37:40','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Login'),(84,1,7000,'2023-11-06','23:37:42','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Ventas'),(85,1,1,'2023-11-06','23:39:08','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Login'),(86,1,7000,'2023-11-06','23:39:11','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Ventas'),(87,1,1,'2023-11-06','23:41:18','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Login'),(88,1,7000,'2023-11-06','23:41:19','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Ventas'),(89,1,1,'2023-11-06','23:44:41','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Login'),(90,1,7000,'2023-11-06','23:44:42','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Ventas'),(91,1,1,'2023-11-06','23:46:38','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Login'),(92,1,7000,'2023-11-06','23:46:39','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Ventas'),(93,1,1,'2023-11-06','23:50:39','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Login'),(94,1,7000,'2023-11-06','23:50:40','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Ventas'),(95,1,1,'2023-11-06','23:53:18','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Login'),(96,1,7000,'2023-11-06','23:53:19','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Ventas'),(97,1,1003,'2023-11-06','23:53:35','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Guardar'),(98,1,999,'2023-11-06','23:55:40','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Cerro Sesion'),(99,1,1,'2023-11-07','00:43:59','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Login'),(100,1,7000,'2023-11-07','00:44:01','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Ventas'),(101,1,1,'2023-11-07','00:45:52','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Login'),(102,1,7000,'2023-11-07','00:45:53','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Ventas'),(103,1,1,'2023-11-07','00:47:02','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Login'),(104,1,7000,'2023-11-07','00:47:02','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Ventas'),(105,1,1,'2023-11-07','00:48:55','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Login'),(106,1,7000,'2023-11-07','00:48:56','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Ventas'),(107,1,1,'2023-11-07','00:49:41','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Login'),(108,1,7000,'2023-11-07','00:49:42','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Ventas'),(109,1,1,'2023-11-07','00:50:51','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Login'),(110,1,7000,'2023-11-07','00:50:53','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Ventas'),(111,1,1003,'2023-11-07','00:51:08','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Guardar'),(112,1,1004,'2023-11-07','00:51:32','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Guardar'),(113,1,999,'2023-11-07','00:51:53','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Cerro Sesion'),(114,1,1,'2023-11-07','00:58:01','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Login'),(115,1,7000,'2023-11-07','00:58:12','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Ventas'),(116,1,1,'2023-11-07','00:58:57','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Login'),(117,1,7000,'2023-11-07','00:58:59','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Ventas'),(118,1,1,'2023-11-07','01:11:09','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Login'),(119,1,7000,'2023-11-07','01:11:10','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Ventas'),(120,1,1,'2023-11-07','01:12:26','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Login'),(121,1,7000,'2023-11-07','01:12:28','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Ventas'),(122,1,1,'2023-11-07','01:15:01','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Login'),(123,1,7000,'2023-11-07','01:15:02','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Ventas'),(124,1,1,'2023-11-07','01:17:34','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Login'),(125,1,7000,'2023-11-07','01:17:35','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Ventas'),(126,1,1,'2023-11-07','01:20:58','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Login'),(127,1,7000,'2023-11-07','01:20:59','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Ventas'),(128,1,1,'2023-11-07','01:24:26','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Login'),(129,1,7000,'2023-11-07','01:24:27','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Ventas'),(130,1,1,'2023-11-07','01:26:47','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Login'),(131,1,7000,'2023-11-07','01:26:48','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Ventas'),(132,1,1,'2023-11-07','01:28:43','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Login'),(133,1,7000,'2023-11-07','01:28:44','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Ventas'),(134,1,1,'2023-11-07','01:31:22','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Login'),(135,1,7000,'2023-11-07','01:31:23','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Ventas'),(136,1,1004,'2023-11-07','01:31:53','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Guardar'),(137,1,1,'2023-11-07','07:32:31','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Login'),(138,1,7000,'2023-11-07','07:32:33','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Ventas'),(139,1,1,'2023-11-07','07:33:51','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Login'),(140,1,7000,'2023-11-07','07:33:52','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Ventas'),(141,1,1,'2023-11-07','07:54:33','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Login'),(142,1,7000,'2023-11-07','07:54:43','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Ventas'),(143,1,1,'2023-11-07','08:01:26','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Login'),(144,1,7000,'2023-11-07','08:01:27','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Ventas'),(145,1,1003,'2023-11-07','08:03:08','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Guardar'),(146,1,1,'2023-11-07','08:05:31','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Login'),(147,1,7000,'2023-11-07','08:05:32','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Ingreso Ventas'),(148,1,1004,'2023-11-07','08:06:19','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Guardar'),(149,1,1003,'2023-11-07','08:08:28','OLSTER','fe80::8a8a:66cd:92ea:16ea%18','Guardar'),(150,1,1,'2023-11-07','20:59:16','OLSTER','fe80::a328:23e5:7f78:af4f%14','Ingreso Login'),(151,1,1,'2023-11-08','21:25:58','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(152,1,7000,'2023-11-08','21:26:00','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Ventas'),(153,1,1,'2023-11-08','21:42:26','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(154,1,7000,'2023-11-08','21:42:57','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Ventas'),(155,1,999,'2023-11-08','21:54:36','OLSTER','fe80::a328:23e5:7f78:af4f%13','Cerro Sesion'),(156,1,1,'2023-11-08','22:03:12','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(157,1,7000,'2023-11-08','22:03:13','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Ventas'),(158,1,999,'2023-11-08','22:03:34','OLSTER','fe80::a328:23e5:7f78:af4f%13','Cerro Sesion'),(159,1,1,'2023-11-08','22:05:55','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(160,1,7000,'2023-11-08','22:05:56','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Ventas'),(161,1,1,'2023-11-08','22:08:15','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(162,1,7000,'2023-11-08','22:08:16','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Ventas'),(163,1,1,'2023-11-08','22:39:40','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(164,1,7000,'2023-11-08','22:39:42','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Ventas'),(165,1,999,'2023-11-08','22:40:41','OLSTER','fe80::a328:23e5:7f78:af4f%13','Cerro Sesion'),(166,1,1,'2023-11-08','22:46:10','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(167,1,7000,'2023-11-08','22:46:11','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Ventas'),(168,1,1,'2023-11-08','22:49:26','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(169,1,7000,'2023-11-08','22:50:39','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Ventas'),(170,1,999,'2023-11-08','22:51:26','OLSTER','fe80::a328:23e5:7f78:af4f%13','Cerro Sesion'),(171,1,1,'2023-11-08','22:57:08','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(172,1,7000,'2023-11-08','22:57:13','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Ventas'),(173,1,1,'2023-11-08','22:58:36','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(174,1,7000,'2023-11-08','22:58:37','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Ventas'),(175,1,1,'2023-11-08','23:00:13','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(176,1,7000,'2023-11-08','23:00:14','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Ventas'),(177,1,1,'2023-11-08','23:01:58','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(178,1,7000,'2023-11-08','23:01:59','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Ventas'),(179,1,1,'2023-11-08','23:03:56','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(180,1,7000,'2023-11-08','23:03:58','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Ventas'),(181,1,999,'2023-11-08','23:04:52','OLSTER','fe80::a328:23e5:7f78:af4f%13','Cerro Sesion'),(182,1,1,'2023-11-08','23:08:27','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(183,1,7000,'2023-11-08','23:08:28','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Ventas'),(184,1,1,'2023-11-08','23:11:56','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(185,1,7000,'2023-11-08','23:11:57','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Ventas'),(186,1,1,'2023-11-08','23:14:18','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(187,1,7000,'2023-11-08','23:14:19','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Ventas'),(188,1,999,'2023-11-08','23:15:15','OLSTER','fe80::a328:23e5:7f78:af4f%13','Cerro Sesion'),(189,1,1,'2023-11-08','23:17:22','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(190,1,7000,'2023-11-08','23:17:23','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Ventas'),(191,1,1,'2023-11-08','23:19:44','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(192,1,7000,'2023-11-08','23:19:45','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Ventas'),(193,1,1004,'2023-11-08','23:20:33','OLSTER','fe80::a328:23e5:7f78:af4f%13','Guardar'),(194,1,1,'2023-11-09','00:14:54','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(195,1,7000,'2023-11-09','00:14:55','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Ventas'),(196,1,1,'2023-11-09','00:16:01','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(197,1,7000,'2023-11-09','00:16:02','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Ventas'),(198,1,1,'2023-11-09','00:23:21','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(199,1,7000,'2023-11-09','00:23:22','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Ventas'),(200,1,1,'2023-11-09','00:25:16','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(201,1,7000,'2023-11-09','00:25:18','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Ventas'),(202,1,1004,'2023-11-09','00:25:44','OLSTER','fe80::a328:23e5:7f78:af4f%13','Guardar'),(203,1,999,'2023-11-09','00:25:49','OLSTER','fe80::a328:23e5:7f78:af4f%13','Cerro Sesion'),(204,1,1,'2023-11-09','00:37:04','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(205,1,7000,'2023-11-09','00:37:05','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Ventas'),(206,1,1,'2023-11-09','00:42:10','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(207,1,7000,'2023-11-09','00:42:11','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Ventas'),(208,1,1,'2023-11-09','00:58:33','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(209,1,7000,'2023-11-09','00:58:41','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Ventas'),(210,1,1,'2023-11-09','01:03:01','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(211,1,7000,'2023-11-09','01:03:02','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Ventas'),(212,1,1,'2023-11-09','01:06:08','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(213,1,7000,'2023-11-09','01:06:09','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Ventas'),(214,1,1,'2023-11-09','01:07:37','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(215,1,7000,'2023-11-09','01:07:39','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Ventas'),(216,1,1,'2023-11-09','01:15:08','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(217,1,7000,'2023-11-09','01:15:08','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Ventas'),(218,1,1,'2023-11-09','01:17:54','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(219,1,7000,'2023-11-09','01:17:55','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Ventas'),(220,1,1,'2023-11-09','01:19:00','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(221,1,7000,'2023-11-09','01:19:01','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Ventas'),(222,1,1,'2023-11-09','01:22:04','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(223,1,7000,'2023-11-09','01:22:05','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Ventas'),(224,1,1,'2023-11-09','01:26:38','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(225,1,7000,'2023-11-09','01:26:39','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Ventas'),(226,1,1,'2023-11-09','01:30:14','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(227,1,7000,'2023-11-09','01:30:15','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Ventas'),(228,1,1,'2023-11-09','01:36:11','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(229,1,7000,'2023-11-09','01:36:12','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Ventas'),(230,1,1,'2023-11-09','01:40:04','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(231,1,7000,'2023-11-09','01:40:05','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Ventas'),(232,1,1,'2023-11-09','01:42:21','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(233,1,7000,'2023-11-09','01:42:22','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Ventas'),(234,1,1,'2023-11-09','01:43:48','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(235,1,7000,'2023-11-09','01:43:49','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Ventas'),(236,1,1,'2023-11-09','23:48:04','OLSTER','fe80::53e8:da7a:9560:b915%8','Ingreso Login'),(237,1,7000,'2023-11-09','23:48:05','OLSTER','fe80::53e8:da7a:9560:b915%8','Ingreso Ventas'),(238,1,1,'2023-11-09','23:49:25','OLSTER','fe80::53e8:da7a:9560:b915%8','Ingreso Login'),(239,1,7000,'2023-11-09','23:49:26','OLSTER','fe80::53e8:da7a:9560:b915%8','Ingreso Ventas'),(240,1,1,'2023-11-09','23:50:28','OLSTER','fe80::53e8:da7a:9560:b915%8','Ingreso Login'),(241,1,7000,'2023-11-09','23:50:29','OLSTER','fe80::53e8:da7a:9560:b915%8','Ingreso Ventas'),(242,1,999,'2023-11-09','23:50:36','OLSTER','fe80::53e8:da7a:9560:b915%8','Cerro Sesion'),(243,1,1,'2023-11-09','23:56:14','OLSTER','fe80::53e8:da7a:9560:b915%8','Ingreso Login'),(244,1,7000,'2023-11-09','23:56:15','OLSTER','fe80::53e8:da7a:9560:b915%8','Ingreso Ventas'),(245,1,1,'2023-11-10','00:10:33','OLSTER','fe80::53e8:da7a:9560:b915%8','Ingreso Login'),(246,1,7000,'2023-11-10','00:10:34','OLSTER','fe80::53e8:da7a:9560:b915%8','Ingreso Ventas'),(247,1,1,'2023-11-10','00:48:46','OLSTER','fe80::53e8:da7a:9560:b915%8','Ingreso Login'),(248,1,7000,'2023-11-10','00:48:48','OLSTER','fe80::53e8:da7a:9560:b915%8','Ingreso Ventas'),(249,1,999,'2023-11-10','00:49:00','OLSTER','fe80::53e8:da7a:9560:b915%8','Cerro Sesion'),(250,1,1,'2023-11-10','07:19:59','OLSTER','fe80::8a8a:66cd:92ea:16ea%19','Ingreso Login'),(251,1,7000,'2023-11-10','07:20:00','OLSTER','fe80::8a8a:66cd:92ea:16ea%19','Ingreso Hoteleria'),(252,1,1,'2023-11-10','07:36:33','OLSTER','fe80::8a8a:66cd:92ea:16ea%19','Ingreso Login'),(253,1,7000,'2023-11-10','07:36:34','OLSTER','fe80::8a8a:66cd:92ea:16ea%19','Ingreso Hoteleria'),(254,1,7002,'2023-11-10','07:39:00','OLSTER','fe80::8a8a:66cd:92ea:16ea%19','Guardar'),(255,1,7002,'2023-11-10','07:40:00','OLSTER','fe80::8a8a:66cd:92ea:16ea%19','Eliminar'),(256,1,1,'2023-11-10','11:35:23','OLSTER','fe80::8a8a:66cd:92ea:16ea%19','Ingreso Login'),(257,1,7000,'2023-11-10','11:35:25','OLSTER','fe80::8a8a:66cd:92ea:16ea%19','Ingreso Hoteleria'),(258,1,7002,'2023-11-10','11:35:37','OLSTER','fe80::8a8a:66cd:92ea:16ea%19','Eliminar'),(259,1,7002,'2023-11-10','11:35:43','OLSTER','fe80::8a8a:66cd:92ea:16ea%19','Eliminar'),(260,1,7002,'2023-11-10','11:35:50','OLSTER','fe80::8a8a:66cd:92ea:16ea%19','Eliminar'),(261,1,7002,'2023-11-10','11:35:56','OLSTER','fe80::8a8a:66cd:92ea:16ea%19','Eliminar'),(262,1,7002,'2023-11-10','11:36:18','OLSTER','fe80::8a8a:66cd:92ea:16ea%19','Guardar'),(263,1,1,'2023-11-10','11:40:57','OLSTER','fe80::8a8a:66cd:92ea:16ea%19','Ingreso Login'),(264,1,7000,'2023-11-10','11:40:58','OLSTER','fe80::8a8a:66cd:92ea:16ea%19','Ingreso Hoteleria'),(265,1,1,'2023-11-10','11:46:57','OLSTER','fe80::8a8a:66cd:92ea:16ea%19','Ingreso Login'),(266,1,7000,'2023-11-10','11:46:59','OLSTER','fe80::8a8a:66cd:92ea:16ea%19','Ingreso Hoteleria'),(267,1,1,'2023-11-10','11:47:43','OLSTER','fe80::8a8a:66cd:92ea:16ea%19','Ingreso Login'),(268,1,7000,'2023-11-10','11:47:44','OLSTER','fe80::8a8a:66cd:92ea:16ea%19','Ingreso Hoteleria'),(269,1,1,'2023-11-10','11:48:58','OLSTER','fe80::8a8a:66cd:92ea:16ea%19','Ingreso Login'),(270,1,7000,'2023-11-10','11:48:59','OLSTER','fe80::8a8a:66cd:92ea:16ea%19','Ingreso Hoteleria'),(271,1,1,'2023-11-10','11:53:27','OLSTER','fe80::8a8a:66cd:92ea:16ea%19','Ingreso Login'),(272,1,7000,'2023-11-10','11:53:28','OLSTER','fe80::8a8a:66cd:92ea:16ea%19','Ingreso Hoteleria'),(273,1,1,'2023-11-10','11:57:22','OLSTER','fe80::8a8a:66cd:92ea:16ea%19','Ingreso Login'),(274,1,7000,'2023-11-10','11:57:23','OLSTER','fe80::8a8a:66cd:92ea:16ea%19','Ingreso Hoteleria'),(275,1,7001,'2023-11-10','11:58:03','OLSTER','fe80::8a8a:66cd:92ea:16ea%19','Guardar'),(276,1,7004,'2023-11-10','11:58:43','OLSTER','fe80::8a8a:66cd:92ea:16ea%19','Guardar'),(277,1,7004,'2023-11-10','11:58:58','OLSTER','fe80::8a8a:66cd:92ea:16ea%19','Modificar'),(278,1,7005,'2023-11-10','11:59:37','OLSTER','fe80::8a8a:66cd:92ea:16ea%19','Guardar'),(279,1,7002,'2023-11-10','12:01:05','OLSTER','fe80::8a8a:66cd:92ea:16ea%19','Guardar'),(280,1,7003,'2023-11-10','12:03:51','OLSTER','fe80::8a8a:66cd:92ea:16ea%19','Guardar'),(281,1,1,'2023-11-21','08:38:11','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(282,1,1,'2023-11-21','08:40:52','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(283,1,1,'2023-11-21','08:51:14','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(284,1,1,'2023-11-21','08:52:21','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(285,1,1,'2023-11-21','08:53:30','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(286,1,1,'2023-11-21','08:54:43','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(289,1,1,'2023-11-21','08:55:51','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(291,1,1,'2023-11-21','09:08:55','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(293,1,1,'2023-11-21','09:10:10','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(295,1,1,'2023-11-21','09:10:52','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(296,1,999,'2023-11-21','09:10:52','OLSTER','fe80::a328:23e5:7f78:af4f%13','Cerro Sesion'),(297,1,1,'2023-11-21','09:10:56','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(299,1,1,'2023-11-21','09:12:35','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(301,1,7001,'2023-11-21','09:13:22','OLSTER','fe80::a328:23e5:7f78:af4f%13','Guardar'),(302,1,7001,'2023-11-21','09:13:46','OLSTER','fe80::a328:23e5:7f78:af4f%13','Modificar'),(303,1,999,'2023-11-21','09:13:54','OLSTER','fe80::a328:23e5:7f78:af4f%13','Cerro Sesion'),(304,1,1,'2023-11-21','09:17:56','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(306,1,1,'2023-11-21','09:18:43','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(308,1,1,'2023-11-21','09:19:59','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(310,1,1,'2023-11-21','09:24:31','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(312,1,1,'2023-11-21','09:25:05','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(314,1,7001,'2023-11-21','09:25:19','OLSTER','fe80::a328:23e5:7f78:af4f%13','Guardar');
/*!40000 ALTER TABLE `tbl_bitacoradeeventos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_estados`
--

DROP TABLE IF EXISTS `tbl_estados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_estados` (
  `pk_id_estado` int NOT NULL AUTO_INCREMENT,
  `est_info_estado` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `est_num_estado` int DEFAULT NULL,
  PRIMARY KEY (`pk_id_estado`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_estados`
--

LOCK TABLES `tbl_estados` WRITE;
/*!40000 ALTER TABLE `tbl_estados` DISABLE KEYS */;
INSERT INTO `tbl_estados` VALUES (1,'Activo',1),(2,'Eliminado',2),(3,'Modificado',3);
/*!40000 ALTER TABLE `tbl_estados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_modulos`
--

DROP TABLE IF EXISTS `tbl_modulos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_modulos` (
  `pk_id_modulos` int NOT NULL,
  `nombre_modulo` varchar(50) NOT NULL,
  `descripcion_modulo` varchar(150) NOT NULL,
  `estado_modulo` tinyint DEFAULT '0',
  PRIMARY KEY (`pk_id_modulos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_modulos`
--

LOCK TABLES `tbl_modulos` WRITE;
/*!40000 ALTER TABLE `tbl_modulos` DISABLE KEYS */;
INSERT INTO `tbl_modulos` VALUES (1000,'SEGURIDAD','Seguridad',1),(7000,'Hoteleria','Hoteleria',1);
/*!40000 ALTER TABLE `tbl_modulos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_perfiles`
--

DROP TABLE IF EXISTS `tbl_perfiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_perfiles` (
  `pk_id_perfil` int NOT NULL AUTO_INCREMENT,
  `nombre_perfil` varchar(50) NOT NULL,
  `descripcion_perfil` varchar(150) NOT NULL,
  `estado_perfil` tinyint DEFAULT '0',
  PRIMARY KEY (`pk_id_perfil`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_perfiles`
--

LOCK TABLES `tbl_perfiles` WRITE;
/*!40000 ALTER TABLE `tbl_perfiles` DISABLE KEYS */;
INSERT INTO `tbl_perfiles` VALUES (1,'ADMINISTRADOR','contiene todos los permisos del programa',1),(2,'SEGURIDAD','contiene todos los permisos de seguridad',1);
/*!40000 ALTER TABLE `tbl_perfiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_permisosaplicacionesusuario`
--

DROP TABLE IF EXISTS `tbl_permisosaplicacionesusuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_permisosaplicacionesusuario` (
  `fk_id_aplicacion` int NOT NULL,
  `fk_id_usuario` int NOT NULL,
  `guardar_permiso` tinyint(1) DEFAULT '0',
  `modificar_permiso` tinyint(1) DEFAULT '0',
  `eliminar_permiso` tinyint(1) DEFAULT '0',
  `buscar_permiso` tinyint(1) DEFAULT '0',
  `imprimir_permiso` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`fk_id_aplicacion`,`fk_id_usuario`),
  KEY `fk_id_usuario` (`fk_id_usuario`),
  CONSTRAINT `tbl_permisosaplicacionesusuario_ibfk_1` FOREIGN KEY (`fk_id_aplicacion`) REFERENCES `tbl_aplicaciones` (`pk_id_aplicacion`),
  CONSTRAINT `tbl_permisosaplicacionesusuario_ibfk_2` FOREIGN KEY (`fk_id_usuario`) REFERENCES `tbl_usuarios` (`pk_id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_permisosaplicacionesusuario`
--

LOCK TABLES `tbl_permisosaplicacionesusuario` WRITE;
/*!40000 ALTER TABLE `tbl_permisosaplicacionesusuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_permisosaplicacionesusuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_permisosaplicacionperfil`
--

DROP TABLE IF EXISTS `tbl_permisosaplicacionperfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_permisosaplicacionperfil` (
  `fk_id_perfil` int NOT NULL,
  `fk_id_aplicacion` int NOT NULL,
  `guardar_permiso` tinyint(1) DEFAULT '0',
  `modificar_permiso` tinyint(1) DEFAULT '0',
  `eliminar_permiso` tinyint(1) DEFAULT '0',
  `buscar_permiso` tinyint(1) DEFAULT '0',
  `imprimir_permiso` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`fk_id_perfil`,`fk_id_aplicacion`),
  KEY `fk_id_aplicacion` (`fk_id_aplicacion`),
  CONSTRAINT `tbl_permisosaplicacionperfil_ibfk_1` FOREIGN KEY (`fk_id_aplicacion`) REFERENCES `tbl_aplicaciones` (`pk_id_aplicacion`),
  CONSTRAINT `tbl_permisosaplicacionperfil_ibfk_2` FOREIGN KEY (`fk_id_perfil`) REFERENCES `tbl_perfiles` (`pk_id_perfil`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_permisosaplicacionperfil`
--

LOCK TABLES `tbl_permisosaplicacionperfil` WRITE;
/*!40000 ALTER TABLE `tbl_permisosaplicacionperfil` DISABLE KEYS */;
INSERT INTO `tbl_permisosaplicacionperfil` VALUES (1,1000,1,1,1,1,1),(1,1001,1,1,1,1,1),(1,1002,1,1,1,1,1),(1,1003,1,1,1,1,1),(1,1004,1,1,1,1,1),(1,1101,1,1,1,1,1),(1,1102,1,1,1,1,1),(1,1103,1,1,1,1,1),(1,1201,1,1,1,1,1),(1,1301,1,1,1,1,1),(1,7000,1,1,1,1,1),(1,7001,1,1,1,1,1),(1,7002,1,1,1,1,1),(1,7003,1,1,1,1,1),(1,7004,1,1,1,1,1),(1,7005,1,1,1,1,1),(1,7006,1,1,1,1,1),(1,7007,1,1,1,1,1),(1,7008,1,1,1,1,1),(1,7009,1,1,1,1,1);
/*!40000 ALTER TABLE `tbl_permisosaplicacionperfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_reportes`
--

DROP TABLE IF EXISTS `tbl_reportes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_reportes` (
  `pk_id_reporte` int NOT NULL AUTO_INCREMENT,
  `rep_correlativo` int DEFAULT NULL,
  `rep_nombre` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `fk_estado` int DEFAULT NULL,
  `rep_fecha` datetime DEFAULT NULL,
  `rep_archivo` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `rep_fechaMod` datetime DEFAULT NULL,
  PRIMARY KEY (`pk_id_reporte`),
  UNIQUE KEY `rep_correlativo` (`rep_correlativo`),
  KEY `fk_estado` (`fk_estado`),
  CONSTRAINT `tbl_reportes_ibfk_1` FOREIGN KEY (`fk_estado`) REFERENCES `tbl_estados` (`pk_id_estado`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_reportes`
--

LOCK TABLES `tbl_reportes` WRITE;
/*!40000 ALTER TABLE `tbl_reportes` DISABLE KEYS */;
INSERT INTO `tbl_reportes` VALUES (10,10002,'planilssla.txt',1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_reportes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_usuarios`
--

DROP TABLE IF EXISTS `tbl_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_usuarios` (
  `pk_id_usuario` int NOT NULL AUTO_INCREMENT,
  `nombre_usuario` varchar(50) NOT NULL,
  `apellido_usuario` varchar(50) NOT NULL,
  `username_usuario` varchar(20) NOT NULL,
  `password_usuario` varchar(100) NOT NULL,
  `email_usuario` varchar(50) NOT NULL,
  `estado_usuario` tinyint NOT NULL DEFAULT '0',
  `pregunta` varchar(50) NOT NULL,
  `respuesta` varchar(50) NOT NULL,
  PRIMARY KEY (`pk_id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_usuarios`
--

LOCK TABLES `tbl_usuarios` WRITE;
/*!40000 ALTER TABLE `tbl_usuarios` DISABLE KEYS */;
INSERT INTO `tbl_usuarios` VALUES (1,'admin','admin','admin','HO0aGo4nM94=','esduardo@gmail.com',1,'COLOR FAVORITO','X9yc1/l1b2A=');
/*!40000 ALTER TABLE `tbl_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarioprivilegios`
--

DROP TABLE IF EXISTS `usuarioprivilegios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarioprivilegios` (
  `idusuarioPrivilegios` int NOT NULL AUTO_INCREMENT,
  `fkUsuario` int NOT NULL,
  `fkPrivilegio` int NOT NULL,
  PRIMARY KEY (`idusuarioPrivilegios`),
  KEY `fk_UserP` (`fkUsuario`),
  KEY `fk_PrivP` (`fkPrivilegio`),
  CONSTRAINT `fk_PrivP` FOREIGN KEY (`fkPrivilegio`) REFERENCES `privilegios` (`idPrivilegios`),
  CONSTRAINT `fk_UserP` FOREIGN KEY (`fkUsuario`) REFERENCES `usuarios` (`idUsuarios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarioprivilegios`
--

LOCK TABLES `usuarioprivilegios` WRITE;
/*!40000 ALTER TABLE `usuarioprivilegios` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuarioprivilegios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `idUsuarios` int NOT NULL AUTO_INCREMENT,
  `Usuario` varchar(45) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `estado` tinyint DEFAULT '1',
  PRIMARY KEY (`idUsuarios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vista_aplicacion_perfil`
--

DROP TABLE IF EXISTS `vista_aplicacion_perfil`;
/*!50001 DROP VIEW IF EXISTS `vista_aplicacion_perfil`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_aplicacion_perfil` AS SELECT 
 1 AS `ID`,
 1 AS `Perfil`,
 1 AS `Aplicacion`,
 1 AS `Insertar`,
 1 AS `Modificar`,
 1 AS `Eliminar`,
 1 AS `Buscar`,
 1 AS `Reporte`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_aplicacionusuario`
--

DROP TABLE IF EXISTS `vista_aplicacionusuario`;
/*!50001 DROP VIEW IF EXISTS `vista_aplicacionusuario`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_aplicacionusuario` AS SELECT 
 1 AS `Aplicacion`,
 1 AS `ID`,
 1 AS `Usuario`,
 1 AS `Insertar`,
 1 AS `Editar`,
 1 AS `Eliminar`,
 1 AS `Buscar`,
 1 AS `Reporte`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_modulo_aplicacion`
--

DROP TABLE IF EXISTS `vista_modulo_aplicacion`;
/*!50001 DROP VIEW IF EXISTS `vista_modulo_aplicacion`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_modulo_aplicacion` AS SELECT 
 1 AS `ID`,
 1 AS `Modulo`,
 1 AS `Aplicacion`,
 1 AS `Nombre`,
 1 AS `Descripcion`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_perfil_usuario`
--

DROP TABLE IF EXISTS `vista_perfil_usuario`;
/*!50001 DROP VIEW IF EXISTS `vista_perfil_usuario`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_perfil_usuario` AS SELECT 
 1 AS `ID`,
 1 AS `Usuario`,
 1 AS `nickName`,
 1 AS `perfil`,
 1 AS `Nombre`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vista_aplicacion_perfil`
--

/*!50001 DROP VIEW IF EXISTS `vista_aplicacion_perfil`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_aplicacion_perfil` AS select 1 AS `ID`,1 AS `Perfil`,1 AS `Aplicacion`,1 AS `Insertar`,1 AS `Modificar`,1 AS `Eliminar`,1 AS `Buscar`,1 AS `Reporte` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_aplicacionusuario`
--

/*!50001 DROP VIEW IF EXISTS `vista_aplicacionusuario`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_aplicacionusuario` AS select 1 AS `Aplicacion`,1 AS `ID`,1 AS `Usuario`,1 AS `Insertar`,1 AS `Editar`,1 AS `Eliminar`,1 AS `Buscar`,1 AS `Reporte` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_modulo_aplicacion`
--

/*!50001 DROP VIEW IF EXISTS `vista_modulo_aplicacion`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_modulo_aplicacion` AS select 1 AS `ID`,1 AS `Modulo`,1 AS `Aplicacion`,1 AS `Nombre`,1 AS `Descripcion` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_perfil_usuario`
--

/*!50001 DROP VIEW IF EXISTS `vista_perfil_usuario`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_perfil_usuario` AS select 1 AS `ID`,1 AS `Usuario`,1 AS `nickName`,1 AS `perfil`,1 AS `Nombre` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-21  9:49:00
