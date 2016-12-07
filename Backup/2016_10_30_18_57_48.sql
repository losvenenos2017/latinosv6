-- MySQL dump 10.16  Distrib 10.1.10-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: latinosv6
-- ------------------------------------------------------
-- Server version	10.1.10-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `agenda_cita`
--

DROP TABLE IF EXISTS `agenda_cita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agenda_cita` (
  `_id_cita` int(11) NOT NULL AUTO_INCREMENT,
  `_id_barbero` int(11) NOT NULL,
  `_id_turno` int(11) NOT NULL,
  `_id_cliente` int(11) NOT NULL,
  `_id_corte` int(11) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`_id_cita`),
  KEY `_id_corte` (`_id_corte`),
  KEY `_id_barbero` (`_id_barbero`),
  KEY `_id_turno` (`_id_turno`),
  KEY `_id_cliente` (`_id_cliente`),
  CONSTRAINT `agenda_cita_ibfk_1` FOREIGN KEY (`_id_barbero`) REFERENCES `barberos` (`_id_barbero`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `agenda_cita_ibfk_2` FOREIGN KEY (`_id_turno`) REFERENCES `turno` (`_id_turno`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `agenda_cita_ibfk_3` FOREIGN KEY (`_id_cliente`) REFERENCES `cliente` (`_id_cliente`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agenda_cita`
--

LOCK TABLES `agenda_cita` WRITE;
/*!40000 ALTER TABLE `agenda_cita` DISABLE KEYS */;
/*!40000 ALTER TABLE `agenda_cita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `barbero_turno`
--

DROP TABLE IF EXISTS `barbero_turno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `barbero_turno` (
  `_id_barbero_turno` int(11) NOT NULL AUTO_INCREMENT,
  `_id_turno` int(11) NOT NULL,
  `_id_barbero` int(11) NOT NULL,
  `estado` varchar(30) NOT NULL,
  `fecha` date NOT NULL,
  `_id_corte` int(11) NOT NULL,
  `_id_user` int(11) NOT NULL,
  PRIMARY KEY (`_id_barbero_turno`),
  KEY `_id_turno` (`_id_turno`,`_id_barbero`,`_id_corte`,`_id_user`),
  KEY `_id_usuario` (`_id_user`),
  KEY `_id_barbero` (`_id_barbero`),
  KEY `_id_corte` (`_id_corte`),
  CONSTRAINT `barbero_turno_ibfk_1` FOREIGN KEY (`_id_barbero_turno`) REFERENCES `barberos` (`_id_barbero`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `barbero_turno_ibfk_2` FOREIGN KEY (`_id_turno`) REFERENCES `turno` (`_id_turno`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `barbero_turno`
--

LOCK TABLES `barbero_turno` WRITE;
/*!40000 ALTER TABLE `barbero_turno` DISABLE KEYS */;
/*!40000 ALTER TABLE `barbero_turno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `barberos`
--

DROP TABLE IF EXISTS `barberos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `barberos` (
  `_id_barbero` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nombrescompletos` varchar(255) NOT NULL,
  `telefono` int(11) NOT NULL,
  `movil` int(11) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  PRIMARY KEY (`_id_barbero`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `barberos`
--

LOCK TABLES `barberos` WRITE;
/*!40000 ALTER TABLE `barberos` DISABLE KEYS */;
INSERT INTO `barberos` VALUES (2147483647,'mar-c-ruyli@hotmail.com','Marcela Dominguez Peña',3568426,2147483647,'Cra 26 Nº 15- 218 Barrio la Cabaña');
/*!40000 ALTER TABLE `barberos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `_id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(30) NOT NULL,
  `nombrescompletos` varchar(255) NOT NULL,
  `documento` int(11) NOT NULL,
  `telefono` int(11) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `_id_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`_id_cliente`),
  KEY `_id_usuario` (`_id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (28,'runbi2013@hotmail.com','Carlos andres marin',1030575602,2563126,'cra 21 # 13-59 barrio paraiso',47),(29,'1030575304','mari angel murillo',2265988,3562158,'cra 77p # 30-56',47),(31,'marco@gmail.com','juan angel perez zapata',1030562355,5236549,'cra 100 # 1000- 32  barrio la casilda',47),(32,'juanda1933@hotmail.com','gtuyjjh',1534,2147483647,'xd fbvfbtghrthsfgh',NULL),(33,'juanda1933@hotmail.com','gtuyjjh',1534,2147483647,'xd fbvfbtghrthsfgh',NULL),(34,'','',0,0,'',NULL),(35,'','',0,0,'',NULL),(36,'oisdfuh@sdf.com','sdfljk',126548,4868123,'dsfggf',NULL),(37,'sdfkb@gmail.com','fdghfdhg',45445,434343,'rtyfth',NULL);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cortes`
--

DROP TABLE IF EXISTS `cortes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cortes` (
  `_id_corte` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `precio` int(11) NOT NULL,
  `_id_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`_id_corte`),
  KEY `_id_usuario` (`_id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cortes`
--

LOCK TABLES `cortes` WRITE;
/*!40000 ALTER TABLE `cortes` DISABLE KEYS */;
INSERT INTO `cortes` VALUES (1,'fghdfghfghdfgh','fdghdfghdfhgdfhg',15000,NULL);
/*!40000 ALTER TABLE `cortes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turno`
--

DROP TABLE IF EXISTS `turno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `turno` (
  `_id_turno` int(11) NOT NULL,
  `hora_inicio` time NOT NULL,
  `hora_fin` time NOT NULL,
  PRIMARY KEY (`_id_turno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turno`
--

LOCK TABLES `turno` WRITE;
/*!40000 ALTER TABLE `turno` DISABLE KEYS */;
INSERT INTO `turno` VALUES (1,'09:01:00','09:20:00'),(2,'09:21:00','09:40:00'),(3,'09:41:00','10:00:00'),(4,'10:41:00','11:00:00'),(5,'11:01:00','11:20:00'),(6,'11:21:00','11:40:00'),(7,'11:41:00','12:00:00'),(8,'12:01:00','12:20:00'),(9,'12:21:00','12:40:00'),(10,'13:01:00','13:20:00'),(11,'13:21:00','13:40:00'),(12,'14:01:00','14:20:00'),(13,'15:01:00','15:20:00'),(14,'15:21:00','15:40:00'),(15,'15:41:00','16:00:00'),(16,'16:01:00','16:20:00'),(17,'16:21:00','16:40:00'),(18,'16:41:00','17:00:00'),(19,'17:01:00','17:20:00'),(20,'17:21:00','17:40:00'),(21,'18:01:00','18:20:00'),(22,'18:21:00','18:40:00'),(23,'19:01:00','19:20:00'),(24,'19:21:00','19:40:00'),(25,'19:41:00','20:00:00'),(26,'20:01:00','20:20:00'),(27,'20:21:00','20:40:00'),(28,'20:41:00','21:00:00'),(29,'21:21:00','21:40:00'),(30,'21:41:00','22:00:00'),(31,'22:01:00','22:20:00');
/*!40000 ALTER TABLE `turno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turno_cliente`
--

DROP TABLE IF EXISTS `turno_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `turno_cliente` (
  `_id_tuno` int(11) NOT NULL,
  `_id_cliente` int(11) NOT NULL,
  `estado` varchar(30) NOT NULL,
  `fecha` datetime NOT NULL,
  KEY `_id_tuno` (`_id_tuno`,`_id_cliente`),
  KEY `_id_cliente` (`_id_cliente`),
  CONSTRAINT `turno_cliente_ibfk_1` FOREIGN KEY (`_id_tuno`) REFERENCES `turno` (`_id_turno`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `turno_cliente_ibfk_2` FOREIGN KEY (`_id_cliente`) REFERENCES `cliente` (`_id_cliente`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turno_cliente`
--

LOCK TABLES `turno_cliente` WRITE;
/*!40000 ALTER TABLE `turno_cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `turno_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `_id_user` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `contrasena` varchar(256) NOT NULL,
  `rol` varchar(10) NOT NULL,
  PRIMARY KEY (`_id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (16,'jjaa','$2y$10$ONLSfLNKY3dWZYCDcOQ/Iel8HeVKDNhIhA0esVrF4kAD7lEGJ5Zwe','root'),(42,'runbi2013@hotmail.com','$2y$10$dynHJ.nl.XE2FmE6KW2unOXiu1HkKGFcvkw2Mhoevyxo6vQLW0dKC','admin'),(47,'marco@gmail.com','$2y$10$133BilYr6nhs4ejsUDeo/.jZ.DfyLfZSGoocJmgrsI6dkRhWTsE6.','cliente'),(62,'mar-c-ruyli@hotmail.com','$2y$10$svEw51NqdD9I7o24Adl.mOQLctsoruB/CJUwiEb2.D1bfKIF0.SQu','empleado');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-30 12:57:49
