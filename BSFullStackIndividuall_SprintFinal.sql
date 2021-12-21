CREATE DATABASE  IF NOT EXISTS `sprint_final_individual` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sprint_final_individual`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: sprint_final_individual
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `access`
--

DROP TABLE IF EXISTS `access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `access` (
  `idaccess` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `rol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idaccess`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `access`
--

LOCK TABLES `access` WRITE;
/*!40000 ALTER TABLE `access` DISABLE KEYS */;
INSERT INTO `access` VALUES (1,'admin','$2a$10$6ZFwXNqhvqQo8LS9WmKNyOpqAaszj440dd/ZOW3XrvUWv6t.f9V6y','ADMIN'),(2,'dan','$2a$10$4kM/srzDTaYU6SOWK0h2ceMQ9NtLwKBfd31mJS1Am.8TL4yNp4rr.','ADMIN'),(3,'user','$2a$10$kvmbxT9sba4rEYWLAAH8Ye5DqXR4N9qagkjtwBMzFtikmvbhBiTES','USER');
/*!40000 ALTER TABLE `access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactos`
--

DROP TABLE IF EXISTS `contactos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contactos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `apellido` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `telefono` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `correo` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactos`
--

LOCK TABLES `contactos` WRITE;
/*!40000 ALTER TABLE `contactos` DISABLE KEYS */;
INSERT INTO `contactos` VALUES (1,'Dandaly','Morales Valencia','958511951','dan.moralesv@gmail.com'),(2,'Juan','Perez','956855421','juanperez@gmail.com'),(3,'Rodrigo','Moya','956885425','rodrigo.moya@elcorreo.cl'),(4,'Claudia','Castillo','989654575','c.castillo@hotmail.com'),(5,'Lorena','Espinoza','999657456','lore.espe.no@gmail.com'),(6,'Esteban','Quito','945678456','estebanquito@banquitol.cl');
/*!40000 ALTER TABLE `contactos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oficinas`
--

DROP TABLE IF EXISTS `oficinas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oficinas` (
  `idoficinas` int NOT NULL AUTO_INCREMENT,
  `nombre_oficina` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `comuna` varchar(45) DEFAULT NULL,
  `region` varchar(52) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `espacios` varchar(45) DEFAULT NULL,
  `horario` varchar(45) DEFAULT NULL,
  `valor` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idoficinas`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oficinas`
--

LOCK TABLES `oficinas` WRITE;
/*!40000 ALTER TABLE `oficinas` DISABLE KEYS */;
INSERT INTO `oficinas` VALUES (1,'Chacabuco','Chacabuco 100','Providencia','Región de La Araucanía','958511569','chaca.centro@centro.cl','10','Vespertino','25000'),(4,'Nueva Vida','Avda. Siempre Viva 742','Springfield','USA','956844754','simpsons@gmail.com','10','Diurno','30000'),(15,'Apoquindo','Psje. Pajaritos Interior 64 Malloco','Las Condes','Región Metropolitana de Santiago','965314785','dan.moralesv@gmail.com','15','Vespertino','35000'),(17,'Pajaritos','Pajaritos 64','Peñaflor','Región Metropolitana de Santiago','965844587','officessnw@nw.cl','50','Vespertino','45000'),(18,'Matta','Avda. Matta 1133','Santiago','Región Metropolitana de Santiago','996666584','mattaoffice@matta.cl','25','Vespertino','15000'),(40,'Paso Nevado','Balmaceda 100','Padre Hurtado','Región Metropolitana de Santiago','999968547','balmaoffice@officessa.cl','25','Diurno','15000'),(41,'Balmaceda ','Balmaceda 150','Penaflor','Región Metropolitana de Santiago','956478555','nevado@nevado.cl','10','Diurno','15000'),(43,'Eliseo','1 Oriente','Talca','Región Metropolitana de Santiago','968554789','octo_dreams@lll.cl','30','Diurno','15000');
/*!40000 ALTER TABLE `oficinas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-21 15:37:58
