-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: academia
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `comentario`
--

DROP TABLE IF EXISTS `comentario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comentario` (
  `idComentario` int(11) NOT NULL AUTO_INCREMENT,
  `comentario` varchar(45) DEFAULT NULL,
  `Usuario_idUsuario` int(11) DEFAULT NULL,
  `Publicacion_idPublicacion` int(11) NOT NULL,
  `Publicacion_Usuario_idUsuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`idComentario`),
  KEY `fk_Comentario_Usuario1_idx` (`Usuario_idUsuario`),
  CONSTRAINT `fk_Comentario_Usuario1` FOREIGN KEY (`Usuario_idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentario`
--

LOCK TABLES `comentario` WRITE;
/*!40000 ALTER TABLE `comentario` DISABLE KEYS */;
INSERT INTO `comentario` VALUES (1,'Muy buena publicacion',NULL,1,NULL),(2,'this.state.comentario',NULL,1,NULL),(3,'dasd',NULL,1,NULL),(4,'hola',NULL,1,NULL),(5,'hola',NULL,1,NULL),(6,'asdassad',NULL,1,NULL),(7,'asdsa',NULL,1,NULL),(8,'asdasadssadd',NULL,1,NULL),(9,'comentario9',NULL,1,NULL),(10,'hola',NULL,4,NULL),(11,'hhh',NULL,1,NULL),(12,'gg',NULL,4,NULL),(13,'dsdf',NULL,4,NULL),(14,'asd',NULL,1,NULL),(15,'15',NULL,1,NULL),(16,'dasdas',NULL,4,NULL),(17,'ddd',NULL,1,NULL),(18,'ffdsd',NULL,1,NULL),(19,'f',NULL,1,NULL),(20,'hdoashds',NULL,6,NULL),(21,'sadas',NULL,1,NULL);
/*!40000 ALTER TABLE `comentario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `like`
--

DROP TABLE IF EXISTS `like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `like` (
  `idLike` int(11) NOT NULL AUTO_INCREMENT,
  `Usuario_idUsuario` int(11) DEFAULT NULL,
  `Publicacion_idPublicacion` int(11) NOT NULL,
  `Publicacion_Usuario_idUsuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`idLike`),
  KEY `fk_Like_Usuario1_idx` (`Usuario_idUsuario`),
  CONSTRAINT `fk_Like_Usuario1` FOREIGN KEY (`Usuario_idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `like`
--

LOCK TABLES `like` WRITE;
/*!40000 ALTER TABLE `like` DISABLE KEYS */;
INSERT INTO `like` VALUES (1,NULL,1,NULL),(2,NULL,1,NULL),(3,NULL,1,NULL),(4,NULL,1,NULL),(5,NULL,1,NULL),(6,NULL,1,NULL),(7,NULL,1,NULL),(8,NULL,1,NULL),(9,NULL,1,NULL),(10,NULL,1,NULL),(11,NULL,1,NULL),(12,NULL,1,NULL),(13,NULL,1,NULL),(14,NULL,1,NULL),(15,NULL,1,NULL),(16,NULL,4,NULL),(17,NULL,1,NULL),(18,NULL,1,NULL),(19,NULL,1,NULL),(20,NULL,1,NULL),(21,NULL,1,NULL),(22,NULL,1,NULL),(23,NULL,1,NULL),(24,NULL,1,NULL),(25,NULL,1,NULL),(26,NULL,1,NULL),(27,NULL,1,NULL),(28,NULL,1,NULL);
/*!40000 ALTER TABLE `like` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publicacion`
--

DROP TABLE IF EXISTS `publicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publicacion` (
  `idPublicacion` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `precio` varchar(45) DEFAULT NULL,
  `info` text,
  `Usuario_idUsuario` int(11) DEFAULT NULL,
  `img` text,
  `ubicacion_latitud` varchar(45) DEFAULT NULL,
  `ubicacion_longitud` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idPublicacion`),
  KEY `fk_Publicacion_Usuario1_idx` (`Usuario_idUsuario`),
  CONSTRAINT `fk_Publicacion_Usuario1` FOREIGN KEY (`Usuario_idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publicacion`
--

LOCK TABLES `publicacion` WRITE;
/*!40000 ALTER TABLE `publicacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `publicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `puntuacion`
--

DROP TABLE IF EXISTS `puntuacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `puntuacion` (
  `idPuntuacion` int(11) NOT NULL,
  `estrellas` float DEFAULT NULL,
  `Usuario_idUsuario` int(11) NOT NULL,
  `Publicacion_idPublicacion` int(11) NOT NULL,
  `Publicacion_Usuario_idUsuario` int(11) NOT NULL,
  PRIMARY KEY (`idPuntuacion`),
  KEY `fk_Puntuacion_Usuario1_idx` (`Usuario_idUsuario`),
  CONSTRAINT `fk_Puntuacion_Usuario1` FOREIGN KEY (`Usuario_idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `puntuacion`
--

LOCK TABLES `puntuacion` WRITE;
/*!40000 ALTER TABLE `puntuacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `puntuacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `foto` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `tel` varchar(45) NOT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `facebook` varchar(45) DEFAULT NULL,
  `whatsapp` varchar(45) DEFAULT NULL,
  `instagram` varchar(45) DEFAULT NULL,
  `skype` varchar(45) DEFAULT NULL,
  `disponibilidad` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `tipo` int(1) DEFAULT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'hong',' h',' zhougg98@gmail.com','654324123','c/dajdsoad','jdiajod','dasdsa','dadsads','asdas','si',NULL,NULL);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-10  9:27:45
