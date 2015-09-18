-- MySQL dump 10.13  Distrib 5.5.45, for Linux (x86_64)
--
-- Host: localhost    Database: teamwork
-- ------------------------------------------------------
-- Server version	5.5.45

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
-- Table structure for table `lkp_categories`
--

DROP TABLE IF EXISTS `lkp_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lkp_categories` (
  `parentId` int(10) unsigned DEFAULT NULL,
  `name` varchar(2000) NOT NULL,
  `id` int(10) unsigned NOT NULL,
  `type` varchar(2000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lkp_categories`
--

LOCK TABLES `lkp_categories` WRITE;
/*!40000 ALTER TABLE `lkp_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `lkp_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lkp_companies`
--

DROP TABLE IF EXISTS `lkp_companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lkp_companies` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(2000) NOT NULL,
  `industry` varchar(2000) NOT NULL,
  `website` varchar(2000) NOT NULL,
  `country` varchar(2000) NOT NULL,
  `countrycode` varchar(2000) NOT NULL,
  `cid` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lkp_companies`
--

LOCK TABLES `lkp_companies` WRITE;
/*!40000 ALTER TABLE `lkp_companies` DISABLE KEYS */;
INSERT INTO `lkp_companies` VALUES (42951,'MASNEGOCIO.COM S.A.P.I  DE C.V.','Professional Services','http://www.masnegocio.com/','Mexico','MX',0),(50486,'CAME','null','null','null','null',0),(49592,'Empresa Consulta','null','null','null','null',0),(54896,'GRUPO P.I. MABE','null','null','null','null',0),(52473,'Independiente','null','null','null','null',0),(56842,'Temporal','null','null','null','null',0);
/*!40000 ALTER TABLE `lkp_companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lkp_expenses`
--

DROP TABLE IF EXISTS `lkp_expenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lkp_expenses` (
  `invoiced` int(10) unsigned NOT NULL,
  `projectid` int(10) unsigned NOT NULL,
  `name` varchar(2000) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `companyid` int(10) unsigned NOT NULL,
  `created_by_userid` int(10) unsigned NOT NULL,
  `id` int(10) unsigned NOT NULL,
  `date` date NOT NULL,
  `cost` float(5,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lkp_expenses`
--

LOCK TABLES `lkp_expenses` WRITE;
/*!40000 ALTER TABLE `lkp_expenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `lkp_expenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lkp_milestones`
--

DROP TABLE IF EXISTS `lkp_milestones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lkp_milestones` (
  `projectid` int(10) unsigned NOT NULL,
  `canComplete` varchar(2000) NOT NULL,
  `responsiblePartyId` int(10) unsigned DEFAULT NULL,
  `completerid` int(10) unsigned NOT NULL,
  `status` varchar(2000) NOT NULL,
  `completed_on` datetime NOT NULL,
  `createdOn` datetime DEFAULT NULL,
  `responsiblePartyType` int(10) unsigned DEFAULT NULL,
  `id` int(10) unsigned NOT NULL,
  `lastChangedOn` datetime DEFAULT NULL,
  `description` varchar(2000) NOT NULL,
  `responsiblePartyIds` int(10) unsigned DEFAULT NULL,
  `companyid` int(10) unsigned NOT NULL,
  `creatorid` int(10) unsigned NOT NULL,
  `deadline` date NOT NULL,
  `title` varchar(2000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lkp_milestones`
--

LOCK TABLES `lkp_milestones` WRITE;
/*!40000 ALTER TABLE `lkp_milestones` DISABLE KEYS */;
INSERT INTO `lkp_milestones` VALUES (120376,'1',98620,0,'completed','0000-00-00 00:00:00','2015-07-23 21:17:34',0,142237,'2015-08-19 23:23:11','null',98620,42951,87542,'2015-07-23','Selección de Nuevo Implementador'),(118848,'1',98630,0,'completed','0000-00-00 00:00:00','2015-07-23 21:13:45',0,142234,'2015-08-03 18:27:43','null',98630,42951,87542,'2015-07-29','Entrega Ambiente Producción (Customer Experience)'),(120387,'1',98620,0,'completed','0000-00-00 00:00:00','2015-07-23 21:15:47',0,142235,'2015-08-11 18:12:45','null',98620,42951,87542,'2015-08-07','Entrega Ambiente Desarrollo (Commerce)'),(129095,'1',88830,0,'completed','0000-00-00 00:00:00','2015-08-07 08:49:14',0,146674,'2015-08-07 08:49:20','Validación entrega ambiente Desarrollo para Oracle Commerce BCC',88830,42951,88830,'2015-08-07','Validación entrega ambiente Desarrollo para Oracle Commerce BCC'),(120377,'1',87542,0,'completed','0000-00-00 00:00:00','2015-07-23 21:00:10',0,142228,'2015-08-17 04:44:26','null',87542,42951,87542,'2015-08-08','Migración (EBS,SIEBEL,HYPERION) Go Live'),(129088,'1',98627,0,'late','0000-00-00 00:00:00','2015-07-31 21:59:11',0,144492,'2015-07-31 21:59:11','Entrega de flujos',98627,42951,98627,'2015-08-14','Entrega de Flujos de automatizacion'),(120384,'1',87542,0,'completed','0000-00-00 00:00:00','2015-07-23 16:29:15',0,142154,'2015-08-17 04:45:55','null',87542,42951,87542,'2015-08-15','Migración (EBS) Go Live'),(118845,'1',88830,0,'late','0000-00-00 00:00:00','2015-07-23 21:29:56',0,142240,'2015-07-24 04:37:02','null',88830,42951,87542,'2015-08-15','Entrega Formal Producción (Oracle Retail)'),(140850,'1',98570,0,'completed','0000-00-00 00:00:00','2015-08-18 05:07:28',0,152428,'2015-08-18 17:40:34','null',98570,42951,88829,'2015-08-18','Instalación EBS 12.2.4'),(120372,'1',87542,0,'completed','0000-00-00 00:00:00','2015-07-23 21:04:14',0,142230,'2015-09-02 15:04:27','null',87542,42951,87542,'2015-08-21','Cerrar Auditoria y Licencias'),(118848,'1',88830,0,'completed','0000-00-00 00:00:00','2015-08-12 23:03:13',0,148638,'2015-09-02 22:22:02','null',88830,42951,88830,'2015-08-28','Salida producción Commerce'),(129097,'1',87542,0,'late','0000-00-00 00:00:00','2015-07-23 21:01:52',0,142229,'2015-07-23 21:01:52','null',87542,42951,87542,'2015-08-31','Vender Giro de Servicios'),(129088,'1',98627,0,'late','0000-00-00 00:00:00','2015-07-31 21:59:45',0,144493,'2015-07-31 21:59:45','null',98627,42951,98627,'2015-08-31','Entrega de flujos de automatizacion'),(120371,'1',87542,0,'late','0000-00-00 00:00:00','2015-07-21 15:02:30',0,141105,'2015-07-21 15:02:47','null',87542,42951,87542,'2015-09-01','Cambio de MPLS a Fibra'),(118845,'1',87542,0,'late','0000-00-00 00:00:00','2015-07-25 05:38:44',0,142631,'2015-07-25 05:38:44','null',87542,42951,88829,'2015-09-15','Respaldos ZFS - (EBS y Hyperion)'),(118845,'1',87542,0,'upcoming','0000-00-00 00:00:00','2015-07-24 04:39:08',0,142338,'2015-09-15 18:11:05','Se decide por este y no DRP, dada la necesidad de Oracle Retail\n\nSe espera habilitar los servidores para este ambiente, para no detener proyecto se refrescará en el ambiente actual de FADEV\n\n\nSe está en espera del VoBo de la ventana de FAH',87542,42951,88829,'2015-09-21','Habilitar FATEST'),(120378,'1',87542,0,'upcoming','0000-00-00 00:00:00','2015-07-25 05:02:45',0,142627,'2015-09-11 06:15:35','null',87542,42951,88829,'2015-09-25','Reinstalación SOA'),(120377,'1',87542,0,'upcoming','0000-00-00 00:00:00','2015-07-23 20:58:21',0,142227,'2015-09-11 05:59:33','null',87542,42951,88829,'2015-09-30','Prueba Resplado RMAN (EBS)'),(120378,'1',87542,0,'upcoming','0000-00-00 00:00:00','2015-07-23 21:07:57',0,142231,'2015-07-23 21:07:57','null',87542,42951,87542,'2015-09-30','Migrar Infra al OVCA'),(120388,'1',87542,0,'upcoming','0000-00-00 00:00:00','2015-07-23 21:23:37',0,142238,'2015-07-23 21:24:25','null',87542,42951,87542,'2015-09-30','Solventar problema con la versión de JAVA'),(120378,'1',98570,0,'upcoming','0000-00-00 00:00:00','2015-07-23 21:09:23',0,142232,'2015-09-11 06:13:56','null',98570,42951,88829,'2015-10-01','Certificado de I-Supplier'),(129098,'1',87542,0,'upcoming','0000-00-00 00:00:00','2015-07-23 21:11:12',0,142233,'2015-09-11 06:20:50','null',87542,42951,88829,'2015-10-01','Decisión ROADMAP'),(120371,'1',98605,0,'upcoming','0000-00-00 00:00:00','2015-07-21 15:04:30',0,141108,'2015-09-11 05:50:59','null',98605,42951,88829,'2015-10-11','Habilitar Ambiente Siebel en HA'),(129098,'1',87542,0,'upcoming','0000-00-00 00:00:00','2015-07-25 05:36:02',0,142630,'2015-09-11 06:24:43','null',87542,42951,88829,'2015-10-11','Ambiente pruebas Siebel a Linux'),(131788,'1',108769,0,'upcoming','0000-00-00 00:00:00','2015-08-26 18:47:22',0,155078,'2015-08-26 18:50:03','null',108769,42951,97407,'2015-10-12','Salida a Producción'),(120372,'1',87542,0,'upcoming','0000-00-00 00:00:00','2015-07-25 05:26:52',0,142629,'2015-07-25 05:26:52','null',87542,42951,88829,'2015-11-01','Upgrade base de datos 11g EBS'),(129097,'1',87542,0,'upcoming','0000-00-00 00:00:00','2015-09-11 06:47:09',0,159568,'2015-09-11 06:47:09','null',87542,42951,88829,'2015-11-30','Migración a 64 bits BD Siebel'),(120371,'1',98616,0,'upcoming','0000-00-00 00:00:00','2015-07-21 15:01:21',0,141104,'2015-09-11 05:54:21','null',98616,42951,88829,'2015-12-01','Generación de DRP (Siebel y EBS)'),(129095,'1',87542,0,'upcoming','0000-00-00 00:00:00','2015-07-23 21:28:18',0,142239,'2015-08-07 00:38:34','null',87542,42951,87542,'2016-06-30','Migración (EBS) Go Live');
/*!40000 ALTER TABLE `lkp_milestones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lkp_persons`
--

DROP TABLE IF EXISTS `lkp_persons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lkp_persons` (
  `lastName` varchar(2000) DEFAULT NULL,
  `emailAddress` varchar(2000) DEFAULT NULL,
  `userUUID` int(10) unsigned NOT NULL,
  `userName` varchar(2000) DEFAULT NULL,
  `id` int(10) unsigned NOT NULL,
  `lastChangedOn` datetime DEFAULT NULL,
  `firstName` varchar(2000) DEFAULT NULL,
  `userType` varchar(2000) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `companyId` int(10) unsigned NOT NULL,
  `title` varchar(2000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lkp_persons`
--

LOCK TABLES `lkp_persons` WRITE;
/*!40000 ALTER TABLE `lkp_persons` DISABLE KEYS */;
INSERT INTO `lkp_persons` VALUES ('Espinal Santos','abraham.espinal@masnegocio.com',0,'abraham.espinal@masnegocio.com',98614,'2015-07-02 17:03:32','Abraham','account','2015-06-18 23:04:53',42951,'ADMINISTRADOR DE INFRAESTRUCTURA INTERMEDIO'),('Rosas','abraham.rosas@masnegocio.com',0,'abraham.rosas@masnegocio.com',90930,'2015-07-02 17:03:45','Abraham','account','2015-06-02 21:39:19',42951,'ADMINISTRADOR DE SISTEMA SENIOR'),('Lopez','adan.lopez@masnegocio.com',0,'adan.lopez@masnegocio.com',97407,'2015-08-18 04:02:47','Adan','account','2015-06-17 19:07:50',42951,'GERENTE SERVICE DELIVERY OFFICE'),('Administrador','servicios@masnegocio.com',0,'servicios@masnegocio.com',100606,'2015-06-26 23:50:25','Administrador','account','2015-06-23 16:45:26',42951,'Administrador'),('Ballesteros','alberto.ballesteros@masnegocio.com',0,'alberto.ballesteros@masnegocio.com',97541,'2015-07-02 17:04:06','Alberto','account','2015-06-18 00:50:50',42951,'COORDINADOR SAP/JDE'),('Martinez Chavez','alejandra.martinez@masnegocio.com',0,'alejandra.martinez@masnegocio.com',98507,'2015-07-02 17:04:12','Alejandra','account','2015-06-18 23:04:32',42951,'CONTADOR'),('Ramos Villanueva','alejandro.ramos@masnegocio.com',0,'alejandro.ramos@masnegocio.com',98629,'2015-07-02 17:04:18','Alejandro','account','2015-06-18 23:04:56',42951,'EJECUTIVO DE CUENTA - SAP'),('Delgadillo','adelgadillo@nuestrosite.com',0,'adelgadillo@nuestrosite.com',125013,'2015-08-22 00:34:14','Alfonso','account','2015-08-22 00:34:14',42951,'null'),('Méndez Díaz','alfonso.mendez@masnegocio.com',0,'alfonso.mendez@masnegocio.com',98647,'2015-07-02 18:20:26','Alfonso','account','2015-06-18 23:05:00',42951,'PRE-VENTA'),('Diaz Alvarez','alfonso.diaz@masnegocio.com',0,'alfonso.diaz@masnegocio.com',127653,'2015-08-27 17:14:09','Alfonso Jonathan','account','2015-08-27 17:14:09',42951,'ADMINISTRADOR DE SISTEMAS JUNIOR'),('Sánchez Pérez','alfredo.sanchez@masnegocio.com',0,'alfredo.sanchez@masnegocio.com',98594,'2015-07-02 18:20:41','Alfredo','account','2015-06-18 23:04:49',42951,'ADMINISTRADOR DE SISTEMA INTERMEDIO'),('Juárez López','cecilia.juarez@masnegocio.com',0,'cecilia.juarez@masnegocio.com',98612,'2015-07-02 18:21:00','Alicia Cecilia','account','2015-06-18 23:04:52',42951,'DIRECTORA DE  ADMINISTRACIN Y FINANZAS'),('Salgado Rodriguez','alma.salgado@masnegocio.com',0,'alma.salgado@masnegocio.com',98524,'2015-07-02 17:04:43','Alma Delia','account','2015-06-18 23:04:35',42951,'CONSULTOR DE SOPORTE FUNCIONAL A APLICATIVOS JUNIOR'),('Bernal Valencia','alonso.bernal@masnegocio.com',0,'alonso.bernal@masnegocio.com',108776,'2015-07-11 17:54:18','Alonso','account','2015-07-11 16:59:06',42951,'CONSULTOR DE SOPORTE FUNCIONAL A APLICATIVOS JUNIOR'),('Abi-Rached Meza','amin.rached@masnegocio.com',0,'amin.rached@masnegocio.com',98624,'2015-07-02 17:04:49','Amin','account','2015-06-18 23:04:55',42951,'GERENTE DE OPERACIONES DE PRODUCTOS MSNEGOCIO'),('Andreu Vega','ana.andreu@masnegocio.com',0,'ana.andreu@masnegocio.com',98585,'2015-07-30 14:06:19','Ana Yanci','account','2015-06-18 23:04:47',42951,'AGENTE DE MESA DE SERVICIO'),('De La Cruz Gonzalez','anel.delacruz@masnegocio.com',0,'anel.delacruz@masnegocio.com',98559,'2015-07-02 18:21:37','Anel','account','2015-06-18 23:04:42',42951,'CONSULTOR DE SOPORTE TCNICO A APLICATIVOS MSNEGOCIO INTERMEDIO'),('Patricio Rodríguez','angel.rodriguez@masnegocio.com',0,'angel.rodriguez@masnegocio.com',98646,'2015-07-02 18:21:52','Angel','account','2015-06-18 23:04:59',42951,'ANALISTA PROGRAMADOR SENIOR'),('Schulenburg Sanabria','angel.schulenburg@masnegocio.com',0,'angel.schulenburg@masnegocio.com',98552,'2015-08-05 16:40:44','Angel Aaron','account','2015-06-18 23:04:40',42951,'AGENTE DE MESA DE SERVICIO'),('Maza Ceron','angela.maza@masnegocio.com',0,'angela.maza@masnegocio.com',98609,'2015-09-14 21:19:56','Angela','account','2015-06-18 23:04:52',42951,'ADMINISTRADOR DE SISTEMA JUNIOR'),('Huerta Balderas','antonio.huerta@masnegocio.com',0,'antonio.huerta@masnegocio.com',98637,'2015-07-02 17:05:24','Antonio','account','2015-06-18 23:04:57',42951,'ADMINISTRADOR DE APLICACIONES SENIOR'),('Mata Martinez','arnulfo.mata@masnegocio.com',0,'arnulfo.mata@masnegocio.com',98563,'2015-06-30 18:37:55','Arnulfo','account','2015-06-18 23:04:42',42951,'CONSULTOR DE SOPORTE TCNICO A APLICATIVOS SENIOR'),('Ballesteros Robledo','azucena.ballesteros@masnegocio.com',0,'azucena.ballesteros@masnegocio.com',108769,'2015-08-26 19:10:33','Azucena','account','2015-07-11 16:59:05',42951,'COORDINADORA SAP HYBRIS'),('Sánchez Hernández','barbara.sanchez@masnegocio.com',0,'barbara.sanchez@masnegocio.com',108765,'2015-07-13 15:44:16','Bárbara','account','2015-07-11 16:59:05',42951,'CONSULTOR DE SOPORTE FUNCIONAL A SAPLICATIVOS JUNIOR'),('Larios Santiago','beatriz.larios@masnegocio.com',0,'beatriz.larios@masnegocio.com',98622,'2015-07-02 17:05:34','Beatriz Alejandra','account','2015-06-18 23:04:54',42951,'ADMINISTRADOR DE SISTEMA JUNIOR'),('Martínez García','beatriz.martinez@masnegocio.com',0,'beatriz.martinez@masnegocio.com',98580,'2015-07-02 18:23:53','Beatriz Arianne','account','2015-06-18 23:04:46',42951,'TESORERO'),('Canseco Peralta','benjamin.canseco@masnegocio.com',0,'benjamin.canseco@masnegocio.com',98652,'2015-07-02 17:05:46','Benjamin','account','2015-06-18 23:05:00',42951,'ADMINISTRADOR DE APLICACIONES SENIOR'),('Bautista Martínez','bernabe.bautista@masnegocio.com',0,'bernabe.bautista@masnegocio.com',98662,'2015-07-02 18:24:27','Bernabé Serafín','account','2015-06-18 23:05:02',42951,'ADMINISTRADOR DE SISTEMAS SR. SAP HYBRIS'),('Perez Garcia','blancam.perez@masnegocio.com',0,'blancam.perez@masnegocio.com',98546,'2015-08-05 14:17:39','Blanca Monica','account','2015-06-18 23:04:39',42951,'AGENTE DE MESA DE SERVICIO'),('Solares Cortes','candido.solares@masnegocio.com',0,'candido.solares@masnegocio.com',98544,'2015-07-02 17:11:24','Candido','account','2015-06-18 23:04:39',42951,'CONSULTOR DE SOPORTE TCNICO JUNIOR'),('Lemus Vega','carlos.lemus@masnegocio.com',0,'carlos.lemus@masnegocio.com',98551,'2015-07-06 17:51:39','Carlos Alberto','account','2015-06-18 23:04:40',42951,'AGENTE SERVICE DELIVERY OFFICE SENIOR'),('Méndez Jiménez','carlos.mendez@masnegocio.com',0,'carlos.mendez@masnegocio.com',98532,'2015-07-16 23:52:12','Carlos Alberto','account','2015-06-18 23:04:37',42951,'ADMINISTRADOR DE APLICACIONES INTERMEDIO'),('Martinez Rocha','carlos.martinez@masnegocio.com',0,'carlos.martinez@masnegocio.com',98597,'2015-07-02 17:11:40','Carlos Augusto','account','2015-06-18 23:04:49',42951,'ADMINISTRADOR DE BASE DE DATOS INTERMEDIO'),('Dominguez Ramirez','leticia.dominguez@masnegocio.com',0,'leticia.dominguez@masnegocio.com',98516,'2015-07-02 17:11:45','Carmen Leticia','account','2015-06-18 23:04:34',42951,'RECEPCIONISTA'),('Sánchez Aguilar','cesar.sanchez@masnegocio.com',0,'cesar.sanchez@masnegocio.com',98540,'2015-07-02 18:25:05','Cesar Osvaldo','account','2015-06-18 23:04:38',42951,'CONSULTOR DE SEGURIDAD DE APLICATIVOS SENIOR'),('Hernandez Sanchez','christian.hernandez@masnegocio.com',0,'christian.hernandez@masnegocio.com',98549,'2015-06-29 16:07:29','Christian Javier','account','2015-06-18 23:04:40',42951,'PROGRAMADOR'),('Olmos Roa','cinthya.olmos@masnegocio.com',0,'cinthya.olmos@masnegocio.com',88829,'2015-07-02 17:11:58','Cinthya','account','2015-05-28 18:56:47',42951,'COORDINADOR SIEBEL'),('Segovia Reyes','claudia.segovia@masnegocio.com',0,'claudia.segovia@masnegocio.com',98564,'2015-07-02 17:12:03','Claudia Oliva','account','2015-06-18 23:04:43',42951,'ANALISTA BPO'),('Valerio Prado','eloy.valerio@masnegocio.com',0,'eloy.valerio@masnegocio.com',98505,'2015-07-02 17:12:15','Crescencio','account','2015-06-18 23:04:32',42951,'ADMINISTRADOR DE APLICACIONES INTERMEDIO'),('Iturriaga Ruedas','damaris.iturriaga@masnegocio.com',0,'damaris.iturriaga@masnegocio.com',98560,'2015-07-02 17:12:21','Damaris','account','2015-06-18 23:04:42',42951,'EJECUTIVO DE CUENTA - COMMERCE'),('Lopez Lopez','daniel.lopez@masnegocio.com',0,'daniel.lopez@masnegocio.com',98529,'2015-07-01 16:45:35','Daniel Demostenes','account','2015-06-18 23:04:36',42951,'COORDINADOR DE ADMINISTRACIN DE INFRAESTRUCTURA Y VIRTUALIZACIN'),('Camacho Chimal','daniel.camacho@masnegocio.com',0,'daniel.camacho@masnegocio.com',108767,'2015-07-11 17:54:18','Daniel Edmundo','account','2015-07-11 16:59:05',42951,'CONSULTOR DE SOPORTE TCNICO A APLICATIVOS MSNEGOCIO JUNIOR'),('Mondragón Corona','daniela.mondragon@masnegocio.com',0,'daniela.mondragon@masnegocio.com',98660,'2015-07-02 18:25:39','Daniela','account','2015-06-18 23:05:02',42951,'ADMINISTRADOR DE SISTEMA JUNIOR'),('Sosa Velzquez','daniela.sosa@masnegocio.com',0,'daniela.sosa@masnegocio.com',108768,'2015-07-11 17:54:18','Daniela','account','2015-07-11 16:59:05',42951,'BECARIA BPO'),('Sandoval Carrillo','dante.sandoval@masnegocio.com',0,'dante.sandoval@masnegocio.com',98648,'2015-07-02 17:12:36','Dante Daniel','account','2015-06-18 23:05:00',42951,'ADMINISTRADOR DE APLICACIONES JUNIOR'),('Alfaro Contreras','david.alfaro@masnegocio.com',0,'david.alfaro@masnegocio.com',98599,'2015-07-02 17:12:41','David','account','2015-06-18 23:04:50',42951,'AGENTE DE MESA DE SERVICIO'),('Gonzalez','david.gonzalez@masnegocio.com',0,'david.gonzalez@masnegocio.com',87834,'2015-08-25 18:01:10','David','account','2015-05-26 21:48:07',42951,'Coordinador de BD Oracle'),('Hernández Aguirre','david.hernandez@masnegocio.com',0,'david.hernandez@masnegocio.com',98643,'2015-07-07 18:36:44','David Eduardo','account','2015-06-18 23:04:58',42951,'BECARIO DE PRE-VENTA'),('Martinez Chavez','diana.martinez@masnegocio.com',0,'diana.martinez@masnegocio.com',98508,'2015-07-02 17:12:59','Diana','account','2015-06-18 23:04:32',42951,'CONSULTOR DE SOPORTE FUNCIONAL A APLICATIVOS SENIOR'),('Vargas Meza','lucia.vargas@masnegocio.com',0,'lucia.vargas@masnegocio.com',98572,'2015-07-02 17:13:05','Diana Lucia','account','2015-06-18 23:04:44',42951,'COBRANZA'),('Narvaez Rodriguez','tamara.narvaez@masnegocio.com',0,'tamara.narvaez@masnegocio.com',98510,'2015-07-02 17:13:11','Diana Tamara','account','2015-06-18 23:04:32',42951,'GERENTE PMO'),('Aguilar Murillo','francisco.aguilar@masnegocio.com',0,'francisco.aguilar@masnegocio.com',98541,'2015-07-02 17:13:19','Duver Francisco','account','2015-06-18 23:04:38',42951,'ANALISTA BPO Y ADMINISTRADOR PAC'),('Rojas Flores','edgar.rojas@masnegocio.com',0,'edgar.rojas@masnegocio.com',98536,'2015-07-02 17:13:25','Edgar','account','2015-06-18 23:04:37',42951,'ADMINISTRADOR DE SISTEMA SENIOR'),('Mendoza Garcia','edgar.mendoza@masnegocio.com',0,'edgar.mendoza@masnegocio.com',98556,'2015-07-02 17:13:30','Edgar Antonio','account','2015-06-18 23:04:41',42951,'CONSULTOR DE SOPORTE TCNICO A APLICATIVOS MSNEGOCIO INTERMEDIO'),('Torres Jimenez','enrique.torres@masnegocio.com',0,'enrique.torres@masnegocio.com',98547,'2015-07-02 17:13:36','Edgar Enrique','account','2015-06-18 23:04:39',42951,'PM TRANSITION INTERMEDIO'),('Rodrguez Ameneyro','edgar.rodriguez@masnegocio.com',0,'edgar.rodriguez@masnegocio.com',98635,'2015-07-02 17:13:41','Edgar Franciso','account','2015-06-18 23:04:57',42951,'ADMINISTRADOR DE INFRAESTRUCTURA JUNIOR'),('Cruz Lopez','omar.cruz@masnegocio.com',0,'omar.cruz@masnegocio.com',98528,'2015-07-02 17:13:47','Edgar Omar','account','2015-06-18 23:04:36',42951,'ADMINISTRADOR DE SISTEMA SENIOR'),('Balderas Herrera','eduard.balderas@masnegocio.com',0,'eduard.balderas@masnegocio.com',98512,'2015-07-02 17:13:52','Eduardo','account','2015-06-18 23:04:33',42951,'ADMINISTRADOR DE APLICACIONES INTERMEDIO'),('Camarena Villaseñor','eduardo.camarena@masnegocio.com',0,'eduardo.camarena@masnegocio.com',98583,'2015-07-07 18:55:03','Eduardo','account','2015-06-18 23:04:46',42951,'SOCIO DIRECTOR DE BUSINESS DEVELOPMENT'),('Hernández Domínguez','eduardo.hernandez@masnegocio.com',0,'eduardo.hernandez@masnegocio.com',98598,'2015-06-30 15:33:08','Eduardo','account','2015-06-18 23:04:49',42951,'CONSULTOR DE SOPORTE FUNCIONAL A APLICATIVOS INTERMEDIO'),('Rosas Hernández','edwin.rosas@masnegocio.com',0,'edwin.rosas@masnegocio.com',98573,'2015-08-19 19:27:25','Edwin','account','2015-06-18 23:04:44',42951,'ADMINISTRADOR DE BASE DE DATOS'),('Renteria','efrain.renteria@masnegocio.com',0,'efrain.renteria@masnegocio.com',97538,'2015-07-02 17:14:16','Efrain','account','2015-06-18 00:47:42',42951,'GERENTE DE TECNOLOGÍA E INFRAESTRUCTURA'),('Rodriguez Merino','elias.rodriguez@masnegocio.com',0,'elias.rodriguez@masnegocio.com',98567,'2015-07-02 17:14:22','Elias Alanis','account','2015-06-18 23:04:43',42951,'COORDINADOR DE INGENIERA Y PRODUCTOS MSNEGOCIO'),('Mateos Fuentes','elisa.mateos@masnegocio.com',0,'elisa.mateos@masnegocio.com',98569,'2015-09-10 18:55:03','Elisa','account','2015-06-18 23:04:44',42951,'AUDITOR INTERNO'),('Berumen Vázquez','elsa.berumen@masnegocio.com',0,'elsa.berumen@masnegocio.com',108777,'2015-07-11 17:54:18','Elsa','account','2015-07-11 16:59:06',42951,'CONSULTOR DE SOPORTE FUNCIONAL A APLICATIVOS SENIOR'),('Rodriguez Mendoza','ema.rodriguez@masnegocio.com',0,'ema.rodriguez@masnegocio.com',98509,'2015-07-02 17:14:57','Ema Beatriz','account','2015-06-18 23:04:32',42951,'ADMINISTRADOR DE PROYECTOS JUNIOR'),('Villarreal Báez','emilio.villarreal@masnegocio.com',0,'emilio.villarreal@masnegocio.com',108772,'2015-07-11 17:54:18','Emilio Martín','account','2015-07-11 16:59:06',42951,'ADMINISTRADOR DE SISTEMA INTERMEDIO'),('Marquez Capistran','emmanuel.marquez@masnegocio.com',0,'emmanuel.marquez@masnegocio.com',98561,'2015-07-02 17:15:04','Emmanuel','account','2015-06-18 23:04:42',42951,'CONSULTOR DE SOPORTE TCNICO A APLICATIVOS MSNEGOCIO INTERMEDIO'),('Gimenez Diaz','enric.gimenez@masnegocio.com',0,'enric.gimenez@masnegocio.com',98600,'2015-07-02 17:15:09','Enric','account','2015-06-18 23:04:50',42951,'EJECUTIVO DE CUENTA'),('Prado Meneses','erick.prado@masnegocio.com',0,'erick.prado@masnegocio.com',108766,'2015-07-11 17:54:18','Erick','account','2015-07-11 16:59:05',42951,'ABOGADO JR.'),('Vertti Córdova','erika.vertti@masnegocio.com',0,'erika.vertti@masnegocio.com',108764,'2015-07-11 17:54:18','Erika María','account','2015-07-11 16:59:05',42951,'COORDINADOR SOPORTE FUNCIONAL SAP'),('Valdes Márquez','erika.valdez@masnegocio.com',0,'erika.valdez@masnegocio.com',98623,'2015-07-02 18:28:44','Erika Nohem','account','2015-06-18 23:04:55',42951,'ANALISTA PROGRAMADOR JUNIOR'),('Andrade','evelyn.andrade@masnegocio.com',0,'evelyn.andrade@masnegocio.com',90940,'2015-07-02 17:15:19','Evelyn','account','2015-06-02 22:03:42',42951,'ADMINISTRADOR DE BASE DE DATOS INTERMEDIO'),('Esteban Castro','felipe.esteban@masnegocio.com',0,'felipe.esteban@masnegocio.com',98538,'2015-09-09 02:22:53','Felipe De Jesus','account','2015-06-18 23:04:38',42951,'AGENTE DE MESA DE SERVICIO'),('Munguia','filiberto.munguia@masnegocio.com',0,'filiberto.munguia@masnegocio.com',107266,'2015-07-07 17:28:03','Filiberto','account','2015-07-07 17:28:03',42951,'null'),('Lopez','francisco.lopez@masnegocio.com',0,'francisco.lopez@masnegocio.com',90928,'2015-07-02 17:15:30','Francisco','account','2015-06-02 21:33:32',42951,'DIRECTOR DE SERVICIOS DE TECNOLOGÍAS DE LA INFORMACIÓN'),('Gonzaga Gutierrez','gerardo.gonzaga@masnegocio.com',0,'gerardo.gonzaga@masnegocio.com',98542,'2015-07-02 17:15:35','Gerardo','account','2015-06-18 23:04:38',42951,'ADMINISTRADOR DE SISTEMA INTERMEDIO'),('Hernandez','giovanna.hernandez@masnegocio.com',0,'giovanna.hernandez@masnegocio.com',97542,'2015-07-02 17:15:40','Giovanna','account','2015-06-18 00:53:32',42951,'GERENTE DE SOPORTE FUNCIONAL Y TÉCNICO A APLICATIVOS'),('Pelcastre Ramírez','gloria.pelcastre@masnegocio.com',0,'gloria.pelcastre@masnegocio.com',108773,'2015-08-12 17:54:21','Gloria Samantha','account','2015-07-11 16:59:06',42951,'ADMINISTRADOR DE SISTEMAS JUNIOR'),('David Andrade','gonzalo.andrade@masnegocio.com',0,'gonzalo.andrade@masnegocio.com',98521,'2015-07-02 17:15:45','Gonzalo','account','2015-06-18 23:04:35',42951,'CONSULTOR DE SOPORTE TCNICO A APLICATIVOS SENIOR'),('Jaimes Salinas','gregorio.jaimes@masnegocio.com',0,'gregorio.jaimes@masnegocio.com',98639,'2015-07-02 17:15:50','Gregorio','account','2015-06-18 23:04:58',42951,'ADMINISTRADOR DE INFRAESTRUCTURA INTERMEDIO'),('Andrade Jiménez','guillermo.andrade@masnegocio.com',0,'guillermo.andrade@masnegocio.com',98636,'2015-07-02 18:30:55','Guillermo Alberto','account','2015-06-18 23:04:57',42951,'ADMINISTRADOR DE SISTEMA INTERMEDIO'),('Zamora Dorles','gustavo.zamora@masnegocio.com',0,'gustavo.zamora@masnegocio.com',98658,'2015-07-02 17:16:00','Gustavo','account','2015-06-18 23:05:02',42951,'CONSULTOR DE SEGURIDAD PEOPLESOFT JUNIOR'),('Ortiz Castañeda','operador03@masnegocio.com',0,'operador03@masnegocio.com',98531,'2015-07-02 18:45:57','Hector Alan','account','2015-06-18 23:04:36',42951,'AGENTE DE MESA DE SERVICIO'),('Esquivel Vargas','hector.esquivel@masnegocio.com',0,'hector.esquivel@masnegocio.com',98518,'2015-07-02 17:16:10','Hector Hugo','account','2015-06-18 23:04:34',42951,'CONSULTOR DE SOPORTE TCNICO A APLICATIVOS SENIOR'),('Villamarin','humberto.villamarin@gmail.com',0,'humberto.villamarin@gmail.com',108694,'2015-09-08 17:48:23','Humberto','account','2015-07-10 23:58:05',52473,'Consultor de Desarrollo HPOO'),('Ullrich Medrano','ingrid.ullrich@masnegocio.com',0,'ingrid.ullrich@masnegocio.com',98606,'2015-07-02 17:16:15','Ingrid Marlene','account','2015-06-18 23:04:51',42951,'ABOGADO'),('Cuellar Reyes','israel.cuellar@masnegocio.com',0,'israel.cuellar@masnegocio.com',98619,'2015-07-02 17:16:20','Israel','account','2015-06-18 23:04:54',42951,'ADMINISTRADOR DE APLICACIONES INTERMEDIO'),('Hernandez Valle','israel.hernandez@masnegocio.com',0,'israel.hernandez@masnegocio.com',98576,'2015-07-02 17:16:32','Israel','account','2015-06-18 23:04:45',42951,'ANALISTA PROGRAMADOR INTERMEDIO'),('Hernandez Gomez','ivan.hernandez@masnegocio.com',0,'ivan.hernandez@masnegocio.com',98575,'2015-07-02 17:16:38','Ivan','account','2015-06-18 23:04:45',42951,'ANALISTA DE RECURSOS HUMANOS'),('Rosas Rodriguez','ivan.rosas@masnegocio.com',0,'ivan.rosas@masnegocio.com',129641,'2015-09-02 18:57:46','Ivan','account','2015-09-02 18:57:46',42951,'null'),('Curiel Lopez','jaime.curiel@masnegocio.com',0,'jaime.curiel@masnegocio.com',98514,'2015-07-02 17:16:43','Jaime','account','2015-06-18 23:04:33',42951,'ADMINISTRADOR DE SISTEMA SENIOR'),('Mendoza Santos','jasmin.mendoza@masnegocio.com',0,'jasmin.mendoza@masnegocio.com',98615,'2015-07-24 16:56:42','Jasmin','account','2015-06-18 23:04:53',42951,'ADMINISTRADOR DE SISTEMA INTERMEDIO'),('Nava Ortiz','javier.nava@masnegocio.com',0,'javier.nava@masnegocio.com',98603,'2015-07-02 17:16:57','Javier','account','2015-06-18 23:04:50',42951,'ADMINISTRADOR DE BASE DE DATOS SENIOR'),('Serrato Murillo','jeremias.serrato@masnegocio.com',0,'jeremias.serrato@masnegocio.com',108771,'2015-07-11 17:54:18','Jeremias','account','2015-07-11 16:59:05',42951,'CONSULTOR DE SOPORTE TCNICO A APLICATIVOS SENIOR'),('Ramon Silva','jonathan.ramon@masnegocio.com',0,'jonathan.ramon@masnegocio.com',98545,'2015-07-02 17:17:04','Jonathan Agustin','account','2015-06-18 23:04:39',42951,'ADMINISTRADOR DE SISTEMA  INTERMEDIO'),('Aguilera Maycotte','jorge.aguilera@masnegocio.com',0,'jorge.aguilera@masnegocio.com',98554,'2015-07-02 17:17:09','Jorge','account','2015-06-18 23:04:41',42951,'SUPERVISOR MESA DE SERVICIOS INSTITUCIONAL'),('Márquez Estrada','jorge.marquez@masnegocio.com',0,'jorge.marquez@masnegocio.com',98613,'2015-07-02 18:32:44','Jorge Alberto','account','2015-06-18 23:04:52',42951,'ADMINISTRADOR DE INFRAESTRUCTURA JUNIOR'),('Vega Romo','jorge.vega@masnegocio.com',0,'jorge.vega@masnegocio.com',98655,'2015-07-02 17:17:23','Jorge Edwars','account','2015-06-18 23:05:01',42951,'ADMINISTRADOR DE INFRAESTRUCTURA INTERMEDIO'),('Torres Vergara','jorge.torres@masnegocio.com',0,'jorge.torres@masnegocio.com',98527,'2015-07-02 17:17:27','Jorge Luis','account','2015-06-18 23:04:36',42951,'AGENTE DE MESA DE SERVICIO'),('Romero Soto','jorge.romero@masnegocio.com',0,'jorge.romero@masnegocio.com',98568,'2015-07-02 17:17:31','Jorge Reyes','account','2015-06-18 23:04:43',42951,'ADMINISTRADOR DE SISTEMA JUNIOR'),('Lopez Carrasco','alejandro.lopez@masnegocio.com',0,'alejandro.lopez@masnegocio.com',98555,'2015-07-16 22:10:28','Jose Alejandro','account','2015-06-18 23:04:41',42951,'ADMINISTRADOR DE APLICACIONES JUNIOR'),('Conde Barrios','jose.conde@masnegocio.com',0,'jose.conde@masnegocio.com',98659,'2015-07-02 18:34:19','José Antonio','account','2015-06-18 23:05:02',42951,'ADMINISTRADOR DE BASE DE DATOS INTERMEDIO'),('Hernandez Ramirez','jesus.hernandez@masnegocio.com',0,'jesus.hernandez@masnegocio.com',98607,'2015-07-02 17:18:15','Jose De Jesus','account','2015-06-18 23:04:51',42951,'ADMINISTRADOR DE APLICACIONES INTERMEDIO'),('Reyes Torres','ernesto.reyes@masnegocio.com',0,'ernesto.reyes@masnegocio.com',98525,'2015-08-12 15:23:31','Jose Ernesto','account','2015-06-18 23:04:35',42951,'AGENTE DE MESA DE SERVICIO'),('López Valencia','jose.lopez@masnegocio.com',0,'jose.lopez@masnegocio.com',98656,'2015-07-02 18:34:32','José Fernando','account','2015-06-18 23:05:01',42951,'CONTRALOR'),('Torres Vergara','ivan.torres@masnegocio.com',0,'ivan.torres@masnegocio.com',98533,'2015-07-02 17:18:25','Jose Ivan','account','2015-06-18 23:04:37',42951,'AGENTE DE MESA DE SERVICIO'),('Esquivel Gómez','jose.esquivel@masnegocio.com',0,'jose.esquivel@masnegocio.com',98621,'2015-07-02 18:34:51','José Luis','account','2015-06-18 23:04:54',42951,'ADMINISTRADOR DE APLICACIONES JUNIOR'),('Hernandez Rosas','luis.hernandez@masnegocio.com',0,'luis.hernandez@masnegocio.com',98522,'2015-07-02 17:18:30','Jose Luis','account','2015-06-18 23:04:35',42951,'COORDINADOR WMS'),('Hintze','jhintzem@gpomabe.com.mx',0,'jhintzem@gpomabe.com.mx',113888,'2015-07-25 00:52:30','José Luis','account','2015-07-25 00:52:30',54896,'null'),('Noriega Lopez','jose.noriega@masnegocio.com',0,'jose.noriega@masnegocio.com',98550,'2015-08-05 16:33:54','Jose Luis','account','2015-06-18 23:04:40',42951,'DIRECTOR DE SERVICIO AL CLIENTE & MESA DE AYUDA'),('Santiago Gonzalez','luis.santiago@masnegocio.com',0,'luis.santiago@masnegocio.com',98604,'2015-07-02 17:18:46','Jose Luis','account','2015-06-18 23:04:51',42951,'ADMINISTRADOR DE INFRAESTRUCTURA INTERMEDIO'),('Vázquez Pérez','oswaldo.vazquez@masnegocio.com',0,'oswaldo.vazquez@masnegocio.com',98632,'2015-07-02 18:35:09','José Oswaldo','account','2015-06-18 23:04:56',42951,'CONSULTOR DE SOPORTE TCNICO INTERMEDIO'),('Da Silva Coelho','jose.dasilva@masnegocio.com',0,'jose.dasilva@masnegocio.com',87542,'2015-07-02 17:18:51','José Ricardo','account','2015-05-26 21:31:59',42951,'GERENTE DE PRODUCTOS ORACLE'),('Varela Rojas','roberto.varela@masnegocio.com',0,'roberto.varela@masnegocio.com',98617,'2015-07-02 18:35:21','José Roberto','account','2015-06-18 23:04:53',42951,'ADMINISTRADOR DE SISTEMA SENIOR'),('LZacarias','josue.lara@masnegocio.com',0,'josue.lara@masnegocio.com',98631,'2015-07-14 16:45:17','Josue','account','2015-06-18 23:04:56',42951,'ADMINISTRADOR DE BASE DE DATOS SENIOR'),('Avila','juan.avila@masnegocio.com',0,'juan.avila@masnegocio.com',118259,'2015-08-05 21:48:59','Juan','account','2015-08-05 21:48:59',42951,'null'),('Pluma Avila','juan.pluma@masnegocio.com',0,'juan.pluma@masnegocio.com',98566,'2015-07-02 17:19:04','Juan','account','2015-06-18 23:04:43',42951,'ADMINISTRADOR DE SISTEMA JUNIOR'),('Quintana Robledo','juan.quintana@masnegocio.com',0,'juan.quintana@masnegocio.com',98578,'2015-07-02 17:19:09','Juan','account','2015-06-18 23:04:45',42951,'ANALISTA PROGRAMADOR INTERMEDIO'),('Rasgado Ceballos','juan.rasgado@masnegocio.com',0,'juan.rasgado@masnegocio.com',98663,'2015-07-02 17:19:13','Juan','account','2015-06-18 23:05:03',42951,'ADMINISTRADOR DE SISTEMA JUNIOR'),('De La Fuente Rodriguez','juan.delafuente@masnegocio.com',0,'juan.delafuente@masnegocio.com',98506,'2015-07-02 17:19:19','Juan Antonio','account','2015-06-18 23:04:32',42951,'EJECUTIVO DE CUENTA - KIO'),('Rodriguez Tostado','juan.rodriguez@masnegocio.com',0,'juan.rodriguez@masnegocio.com',98595,'2015-07-02 17:19:24','Juan Carlos','account','2015-06-18 23:04:49',42951,'EJECUTIVO DE CUENTA'),('Serralde Mendoza','juan.serralde@masnegocio.com',0,'juan.serralde@masnegocio.com',98641,'2015-07-02 17:19:29','Juan Carlos','account','2015-06-18 23:04:58',42951,'CONSULTOR DE SOPORTE FUNCIONAL A APLICATIVOS JUNIOR'),('Sánchez Flores','juan.sanchez@masnegocio.com',0,'juan.sanchez@masnegocio.com',98616,'2015-07-02 18:36:33','Juan Luis','account','2015-06-18 23:04:53',42951,'ADMINISTRADOR DE SISTEMA SENIOR'),('Hernandez Serrano','jramon.hernandez@masnegocio.com',0,'jramon.hernandez@masnegocio.com',98513,'2015-07-02 17:19:39','Juan Ramon','account','2015-06-18 23:04:33',42951,'ADMINISTRADOR DE SISTEMA SENIOR (COORDINADOR)'),('López Granados','karen.lopez@masnegocio.com',0,'karen.lopez@masnegocio.com',98644,'2015-09-10 19:41:05','Karen Ximena','account','2015-06-18 23:04:59',42951,'ADMINISTRADOR DE SISTEMA INTERMEDIO'),('Hernández Chávez','karina.hernandez@masnegocio.com',0,'karina.hernandez@masnegocio.com',108763,'2015-07-11 17:54:18','Karina','account','2015-07-11 16:59:04',42951,'COORDINADOR SOPORTE FUNCIONAL E-BUSINESS'),('Medina Martinez','karina.medina@masnegocio.com',0,'karina.medina@masnegocio.com',98535,'2015-06-29 16:08:21','Karina','account','2015-06-18 23:04:37',42951,'AGENTE SERVICE DELIVERY OFFICE INTERMEDIO'),('Fernández Peña','leonardo.fernandez@masnegocio.com',0,'leonardo.fernandez@masnegocio.com',98589,'2015-07-16 22:51:08','Leonardo Santiago','account','2015-06-18 23:04:48',42951,'ADMINISTRADOR DE SISTEMAS SENIOR'),('Castillo Medina','liliana.castillo@masnegocio.com',0,'liliana.castillo@masnegocio.com',98593,'2015-07-02 17:20:14','Liliana','account','2015-06-18 23:04:48',42951,'ADMINISTRADOR DE SISTEMA INTERMEDIO'),('Ruggiero','lorenzo.ruggiero@masnegocio.com',0,'null',102945,'2015-08-20 15:23:57','Lorenzo','contact','2015-06-30 01:16:23',42951,'ADMINISTRADOR DE SISTEMAS INTERMEDIO'),('Gonzalez Tobón','luis.gonzalez@masnegocio.com',0,'luis.gonzalez@masnegocio.com',98661,'2015-07-02 18:37:47','Luis Abraham','account','2015-06-18 23:05:02',42951,'BECARIO CUENTAS POR COBRAR'),('Olvera Reyes','luis.olvera@masnegocio.com',0,'luis.olvera@masnegocio.com',98515,'2015-07-02 17:20:30','Luis Alfonso','account','2015-06-18 23:04:33',42951,'COORDINADOR SOPORTE FUNCIONAL PEOPLESOFT HRMS'),('Gallegos Tovar','luis.gallegos@masnegocio.com',0,'luis.gallegos@masnegocio.com',98618,'2015-07-02 17:20:34','Luis Alfredo','account','2015-06-18 23:04:53',42951,'CONSULTOR DE SOPORTE FUNCIONAL A APLICATIVOS SENIOR'),('Mendiola Gaona','armando.mendiola@masnegocio.com',0,'armando.mendiola@masnegocio.com',98539,'2015-07-02 21:15:32','Luis Armando','account','2015-06-18 23:04:38',42951,'COORDINADOR SOPORTE TCNICO PEOPLESOFT'),('Amaya Gonzalez','luis.amaya@masnegocio.com',0,'luis.amaya@masnegocio.com',98610,'2015-07-02 17:20:44','Luis Enrique','account','2015-06-18 23:04:52',42951,'ADMINISTRADOR DE INFRAESTRUCTURA INTERMEDIO'),('Recillas Calderón','luis.recillas@masnegocio.com',0,'luis.recillas@masnegocio.com',98649,'2015-07-02 18:38:12','Luis Mauricio','account','2015-06-18 23:05:00',42951,'CONSULTOR DE SOPORTE TCNICO A APLICATIVOS SENIOR'),('Suárez Pichardo','maghandi.suarez@masnegocio.com',0,'maghandi.suarez@masnegocio.com',98581,'2015-07-02 18:38:30','Maghandi','account','2015-06-18 23:04:46',42951,'DIRECTOR COMERCIAL'),('Lara De La Cruz','marco.lara@masnegocio.com',0,'marco.lara@masnegocio.com',108774,'2015-07-11 17:54:18','Marco Antonio','account','2015-07-11 16:59:06',42951,'CONSULTOR DE SOPORTE TCNICO A APLICATIVOS MSNEGOCIO JUNIOR'),('Ramirez','mramirez@nuestrosite.com',0,'mramirez@nuestrosite.com',125012,'2015-08-22 00:29:56','Marco Antonio','account','2015-08-22 00:29:56',42951,'null'),('Saavedra Fuentes','marco.saavedra@masnegocio.com',0,'marco.saavedra@masnegocio.com',98626,'2015-08-17 16:37:02','Marco Antonio','account','2015-06-18 23:04:55',42951,'COORDINADOR DE IMPLEMENTACIONES DE PRODUCTOS MSNEGOCIO'),('Ruiz Sánchez','elisa.ruiz@masnegocio.com',0,'elisa.ruiz@masnegocio.com',98588,'2015-08-25 22:47:06','Maria Elisa','account','2015-06-18 23:04:48',42951,'ADMINISTRADOR DE BASE DE DATOS JUNIOR'),('Hernandez Gonzalez','mariana.hernandez@masnegocio.com',0,'mariana.hernandez@masnegocio.com',98558,'2015-07-02 17:21:17','Mariana','account','2015-06-18 23:04:41',42951,'ADMINISTRADOR DE PROYECTOS JUNIOR'),('Marquez Cazares','martha.marquez@masnegocio.com',0,'martha.marquez@masnegocio.com',98537,'2015-07-02 17:21:22','Martha','account','2015-06-18 23:04:38',42951,'CONSULTOR DE SOPORTE FUNCIONAL A APLICATIVOS JUNIOR'),('Lara Prieto','maximiliano.lara@masnegocio.com',0,'maximiliano.lara@masnegocio.com',98634,'2015-07-02 17:21:27','Maximiliano','account','2015-06-18 23:04:57',42951,'ADMINISTRADOR DE INFRAESTRUCTURA JUNIOR'),('Franco Perez','mayra.franco@masnegocio.com',0,'mayra.franco@masnegocio.com',130796,'2015-09-08 19:37:35','Mayra','account','2015-09-08 19:37:35',42951,'Administrador de sistemas Intermedio'),('Carvajal Borges','miguel.carvajal@masnegocio.com',0,'miguel.carvajal@masnegocio.com',98571,'2015-07-02 17:21:32','Miguel Angel','account','2015-06-18 23:04:44',42951,'ADMINISTRADOR DE SISTEMA SENIOR (COORDINADOR)'),('Pelenco Hernández','miguel.pelenco@masnegocio.com',0,'miguel.pelenco@masnegocio.com',98553,'2015-07-02 18:39:09','Miguel Angel','account','2015-06-18 23:04:41',42951,'CONSULTOR DE SOPORTE TCNICO A APLICATIVOS INTERMEDIO'),('Alegria Elizalde','mireya.alegria@masnegocio.com',0,'mireya.alegria@masnegocio.com',98562,'2015-07-02 17:21:42','Mireya','account','2015-06-18 23:04:42',42951,'ANALISTA BPO'),('Gomez Gomez Daza','rabick.gomez@masnegocio.com',0,'rabick.gomez@masnegocio.com',98596,'2015-09-16 05:18:37','Nestor Rabick','account','2015-06-18 23:04:49',42951,'COORDINADOR PRODUCTOS MICROSOFT'),('Moreno Alvarez','manuel.moreno@masnegocio.com',0,'manuel.moreno@masnegocio.com',98543,'2015-08-10 16:11:52','Noe Manuel','account','2015-06-18 23:04:39',42951,'COORDINADOR MESAS DE AYUDA'),('Santamaria Rodriguez','noemi.santamaria@masnegocio.com',0,'noemi.santamaria@masnegocio.com',98574,'2015-07-02 17:21:56','Noemi','account','2015-06-18 23:04:45',42951,'COORDINADOR DE SOPORTE TCNICO A PRODUCTOS MSNEGOCIO'),('Sánchez Mendoza','norma.sanchez@masnegocio.com',0,'norma.sanchez@masnegocio.com',98650,'2015-07-02 18:39:34','Norma Guadalupe','account','2015-06-18 23:05:00',42951,'BECARIA DE RECURSOS HUMANOS'),('Escalona Beltrán','norma.escalona@masnegocio.com',0,'norma.escalona@masnegocio.com',98638,'2015-07-02 18:39:49','Norma Lidia','account','2015-06-18 23:04:57',42951,'ADMINISTRADOR DE APLICACIONES SENIOR'),('Camarena Villaseñor','octavio.camarena@masnegocio.com',0,'octavio.camarena@masnegocio.com',98582,'2015-07-07 18:56:13','Octavio','account','2015-06-18 23:04:46',42951,'DIRECTOR GENERAL'),('Badillo Zamora','olga.badillo@masnegocio.com',0,'olga.badillo@masnegocio.com',98517,'2015-07-02 21:21:58','Olga Lyan','account','2015-06-18 23:04:34',42951,'GERENTE BPO'),('Guzmán Trejo','omar.guzman@masnegocio.com',0,'omar.guzman@masnegocio.com',98657,'2015-07-02 22:14:30','Omar','account','2015-06-18 23:05:01',42951,'COORDINADOR DE ADMINISTRACIN DE SISTEMAS OPERATIVOS'),('Pérez Mora','omar.prez@masnegocio.com',0,'omar.prez@masnegocio.com',98633,'2015-07-02 18:40:59','Omar','account','2015-06-18 23:04:57',42951,'CONTADOR'),('Santana','omar.santana@masnegocio.com',0,'omar.santana@masnegocio.com',98587,'2015-07-02 17:22:33','Omar','account','2015-06-18 23:04:47',42951,'ADMINISTRADOR DE SISTEMA INTERMEDIO'),('Silva Flores','omar.silva@masnegocio.com',0,'omar.silva@masnegocio.com',98584,'2015-07-02 17:22:37','Omar','account','2015-06-18 23:04:47',42951,'CONSULTOR DE SOPORTE FUNCIONAL A APLICATIVOS INTERMEDIO'),('Pantoja González','orquidea.pantoja@masnegocio.com',0,'orquidea.pantoja@masnegocio.com',98591,'2015-07-02 17:22:42','Orquídea','account','2015-06-18 23:04:48',42951,'ADMINISTRADOR DE VENTAS'),('Chavez','oscar.chavez@came.org.mx',0,'oscar.chavez@came.org.mx',104637,'2015-07-03 18:36:22','Oscar','account','2015-07-03 18:36:22',50486,'null'),('Rueda Corona','oscar.rueda@masnegocio.com',0,'oscar.rueda@masnegocio.com',98520,'2015-06-29 17:31:21','Oscar Cuauhtémoc','account','2015-06-18 23:04:34',42951,'CONSULTOR DE SOPORTE FUNCIONAL A APLICATIVOS SENIOR'),('Ortiz Rangel','enrique.ortiz@masnegocio.com',0,'enrique.ortiz@masnegocio.com',98579,'2015-06-29 15:52:13','Oscar Enrique','account','2015-06-18 23:04:46',42951,'ADMINISTRADOR DE SISTEMA INTERMEDIO'),('Martinez Vazquez','oscar.martinez@masnegocio.com',0,'oscar.martinez@masnegocio.com',98602,'2015-08-11 19:23:17','Oscar Gerardo','account','2015-06-18 23:04:50',42951,'ANALISTA BPO'),('Vivas','osman.vivas@masnegocio.com',0,'osman.vivas@masnegocio.com',98627,'2015-07-10 23:42:15','Osman','account','2015-06-18 23:04:55',42951,'ADMINISTRADOR DE APLICACIONES Sr. (COORDINADOR)'),('Schulenburg Sanabria','otto.schulenburg@masnegocio.com',0,'otto.schulenburg@masnegocio.com',98601,'2015-07-02 17:23:48','Otto','account','2015-06-18 23:04:50',42951,'AGENTE DE MESA DE SERVICIO'),('Romero Hernandez','veronica.romero@masnegocio.com',0,'veronica.romero@masnegocio.com',98565,'2015-07-03 16:27:34','Paola Veronica','account','2015-06-18 23:04:43',42951,'CONSULTOR DE SOPORTE FUNCIONAL A APLICATIVOS JUNIOR'),('Arriaga Sanroman','patricia.arriaga@masnegocio.com',0,'patricia.arriaga@masnegocio.com',98504,'2015-07-02 17:24:21','Patricia','account','2015-06-18 23:04:31',42951,'ASISTENTE DE DIRECCIN GENERAL & SERVICIOS INTERNOS'),('Godoy Morales','paulina.godoy@masnegocio.com',0,'paulina.godoy@masnegocio.com',98605,'2015-07-07 01:27:42','Paulina','account','2015-06-18 23:04:51',42951,'ADMINISTRADOR DE SISTEMA JUNIOR'),('Gonzalez Arizmendi','pavel.gonzalez@masnegocio.com',0,'pavel.gonzalez@masnegocio.com',98557,'2015-07-02 17:24:31','Pavel Axel','account','2015-06-18 23:04:41',42951,'ADMINISTRADOR DE BASE DE DATOS JUNIOR'),('Bucio Cuellar','pedro.bucio@masengocio.com',0,'pedro.bucio@masengocio.com',98511,'2015-07-02 17:24:35','Pedro','account','2015-06-18 23:04:33',42951,'COORDINADOR SOPORTE FUNCIONAL PEOPLESOFT DISTRIBUCIN'),('Gonzalez Mirafuentes','pedro.gonzalez@masnegocio.com',0,'pedro.gonzalez@masnegocio.com',98590,'2015-07-02 18:41:51','Pedro','account','2015-06-18 23:04:48',42951,'ADMINISTRADOR DE SISTEMA INTERMEDIO'),('Peñaloza Rosas','pedro.penaloza@masnegocio.com',0,'pedro.penaloza@masnegocio.com',125981,'2015-08-24 15:51:28','Pedro','account','2015-08-24 15:51:28',42951,'ADMINISTRADOR DE SISTEMA SENIOR'),('García Martínez','rafael.garcia@masnegocio.com',0,'rafael.garcia@masnegocio.com',101253,'2015-07-11 16:59:05','Rafael','account','2015-06-24 21:12:32',42951,'ADMINISTRADOR DE SISTEMAS SR.'),('Soriano lvarez','ramses.soriano@masnegocio.com',0,'ramses.soriano@masnegocio.com',98642,'2015-07-02 18:42:09','Ramsés','account','2015-06-18 23:04:58',42951,'CONSULTOR DE SOPORTE FUNCIONAL A APLICATIVOS SENIOR'),('Jaimes Martin','raul.jaimes@masnegocio.com',0,'raul.jaimes@masnegocio.com',88830,'2015-07-02 18:16:36','Raul','account','2015-05-28 18:56:47',42951,'COORDINADOR COMMERCE'),('Dominguez','raymundo.dominguez@masnegocio.com',0,'raymundo.dominguez@masnegocio.com',90929,'2015-07-02 18:16:41','Raymundo','account','2015-06-02 21:36:13',42951,'DIRECTOR DE SERVICIOS DE TECNOLOGÍAS DE LA INFORMACIÓN'),('Laiseca Hernandez','ricardo.laiseca@masnegocio.com',0,'ricardo.laiseca@masnegocio.com',98586,'2015-07-02 18:16:46','Ricardo','account','2015-06-18 23:04:47',42951,'GERENTE DE RECURSOS HUMANOS'),('Agustin Priego Lorena','robert.priego@masnegocio.com',0,'robert.priego@masnegocio.com',98640,'2015-07-02 18:16:51','Robert','account','2015-06-18 23:04:58',42951,'ADMINISTRADOR DE BASE DE DATOS SENIOR'),('Concha Gallegos','roberto.concha@masnegocio.com',0,'roberto.concha@masnegocio.com',98645,'2015-07-02 18:16:56','Roberto','account','2015-06-18 23:04:59',42951,'COORDINADOR DE DESARROLLO DE PRODUCTOS MSNEGOCIO'),('Del Rio Diaz','rrd@masnegocio.com',0,'rrd@masnegocio.com',98530,'2015-07-02 18:17:01','Roberto','account','2015-06-18 23:04:36',42951,'EJECUTIVO DE CUENTA - GOBIERNO'),('Rodriguez Saldaña','rocio.rodriguez@masnegocio.com',0,'rocio.rodriguez@masnegocio.com',98577,'2015-07-02 18:43:03','Rocio Marisol','account','2015-06-18 23:04:45',42951,'STAFF PRODUCTOS MSNEGOCIO'),('Avila Lopez','rodolfo.avila@masnegocio.com',0,'rodolfo.avila@masnegocio.com',98523,'2015-07-02 18:17:11','Rodolfo','account','2015-06-18 23:04:35',42951,'ADMINISTRADOR DE SISTEMA SENIOR'),('Garza Jaimes','rodolfo.garza@masnegocio.com',0,'rodolfo.garza@masnegocio.com',98651,'2015-07-02 18:17:16','Rodolfo','account','2015-06-18 23:05:00',42951,'CONSULTOR DE SOPORTE TCNICO A APLICATIVOS MSNEGOCIO SENIOR'),('Olivares Ramirez','rodolfo.olivares@masnegocio.com',0,'rodolfo.olivares@masnegocio.com',98654,'2015-08-26 02:25:59','Rodolfo','account','2015-06-18 23:05:01',42951,'ADMINISTRADOR DE SISTEMA SENIOR'),('Puerto Guillermo','omar.puerto@masnegocio.com',0,'omar.puerto@masnegocio.com',98592,'2015-07-02 18:17:28','Roger Omar','account','2015-06-18 23:04:48',42951,'ADMINISTRADOR DE SISTEMA INTERMEDIO'),('Lara Otero','sandra.lara@masnegocio.com',0,'sandra.lara@masnegocio.com',98519,'2015-06-29 21:24:15','Sandra Araceli','account','2015-06-18 23:04:34',42951,'CONSULTOR DE SOPORTE FUNCIONAL A APLICATIVOS INTERMEDIO'),('Pacheco Valerio','sasha.pacheco@masnegocio.com',0,'sasha.pacheco@masnegocio.com',98608,'2015-07-02 18:17:46','Sasha','account','2015-06-18 23:04:51',42951,'CONSULTOR DE SOPORTE FUNCIONAL A APLICATIVOS JUNIOR'),('Hernández Hernández','sergio.hernandez@masnegocio.com',0,'sergio.hernandez@masnegocio.com',108775,'2015-07-24 17:10:02','Sergio Ángel','account','2015-07-11 16:59:06',42951,'ADMINISTRADOR DE SISTEMAS JR.'),('Bailleres Rodriguez','sergio.bailleres@masnegocio.com',0,'sergio.bailleres@masnegocio.com',98548,'2015-07-02 18:17:51','Sergio Ivan','account','2015-06-18 23:04:40',42951,'ADMINISTRADOR DE INFRAESTRUCTURA SENIOR'),('Mecatl García','sharay.mecatl@masnegocio.com',0,'sharay.mecatl@masnegocio.com',98653,'2015-07-02 18:43:50','Sharay','account','2015-06-18 23:05:01',42951,'CONSULTOR DE SOPORTE TCNICO A APLICATIVOS INTERMEDIO'),('Tarango Cernas','tania.tarango@masnegocio.com',0,'tania.tarango@masnegocio.com',108778,'2015-07-11 17:54:18','Tania Paola','account','2015-07-11 16:59:06',42951,'CONSULTOR DE SOPORTE TCNICO A APLICATIVOS SENIOR'),('Limón Loya','tanya.limon@masnegocio.com',0,'tanya.limon@masnegocio.com',98620,'2015-07-02 18:44:03','Tanya','account','2015-06-18 23:04:54',42951,'AGENTE SERVICE DELIVERY OFFICE SENIOR'),('Fernández Rivera','tomas.fernandez@masnegocio.com',0,'tomas.fernandez@masnegocio.com',98625,'2015-07-02 18:44:22','Tomás','account','2015-06-18 23:04:55',42951,'ANALISTA PROGRAMADOR INTERMEDIO'),('Consulta','efrain_renteria@hotmail.com',0,'efrain.renteria@hotmail.com',102816,'2015-08-05 21:46:34','Usuario','account','2015-06-29 18:59:39',49592,'Consulta'),('Suarez Espinosa','victor.suarez@masnegocio.com',0,'victor.suarez@masnegocio.com',98570,'2015-07-22 16:29:15','Victor Hugo','account','2015-06-18 23:04:44',42951,'ADMINISTRADOR DE SISTEMA INTERMEDIO'),('lvarez Carrillo','violeta.alvarez@masnegocio.com',0,'violeta.alvarez@masnegocio.com',98630,'2015-07-10 16:25:51','Violeta','account','2015-06-18 23:04:56',42951,'ADMINISTRADOR DE SISTEMA INTERMEDIO'),('Bucio Cuellar','yolanda.bucio@masnegocio.com',0,'yolanda.bucio@masnegocio.com',98526,'2015-07-02 18:18:22','Yolanda','account','2015-06-18 23:04:35',42951,'CONSULTOR DE SOPORTE FUNCIONAL A APLICATIVOS SENIOR'),('Leal Farres','frances.leal@masnegocio.com',0,'frances.leal@masnegocio.com',98611,'2015-07-02 18:18:29','Yolanda Frances','account','2015-06-18 23:04:52',42951,'RECEPCIONISTA');
/*!40000 ALTER TABLE `lkp_persons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lkp_projects`
--

DROP TABLE IF EXISTS `lkp_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lkp_projects` (
  `companyid` int(10) unsigned DEFAULT NULL,
  `name` varchar(2000) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `status` varchar(2000) NOT NULL,
  `createdOn` datetime DEFAULT NULL,
  `startDate` datetime NOT NULL,
  `id` int(10) unsigned NOT NULL,
  `lastChangedOn` datetime DEFAULT NULL,
  `endDate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lkp_projects`
--

LOCK TABLES `lkp_projects` WRITE;
/*!40000 ALTER TABLE `lkp_projects` DISABLE KEYS */;
INSERT INTO `lkp_projects` VALUES (42951,'ALazos','null','active','2015-07-17 22:53:27','0000-00-00 00:00:00',132307,'2015-09-10 19:46:38','0000-00-00 00:00:00'),(42951,'Alica','null','active','2015-06-25 00:50:12','2015-07-01 05:00:00',120367,'2015-09-17 21:44:09','2016-12-31 06:00:00'),(42951,'Alimentaria Menonita','null','active','2015-07-17 23:18:05','0000-00-00 00:00:00',132334,'2015-09-10 19:46:38','0000-00-00 00:00:00'),(42951,'Alsea','null','active','2015-06-25 00:51:01','2015-07-01 05:00:00',120368,'2015-09-17 17:46:37','2016-12-31 06:00:00'),(42951,'Andamios y Pararrayos','null','active','2015-07-17 23:08:53','0000-00-00 00:00:00',132324,'2015-09-10 19:46:38','0000-00-00 00:00:00'),(42951,'APE PLazas','null','active','2015-07-11 00:24:15','0000-00-00 00:00:00',129099,'2015-09-14 15:57:41','0000-00-00 00:00:00'),(42951,'Argos','null','active','2015-07-17 22:26:48','0000-00-00 00:00:00',132297,'2015-09-10 19:46:39','0000-00-00 00:00:00'),(42951,'Atento','null','active','2015-07-17 23:20:02','0000-00-00 00:00:00',132337,'2015-09-10 19:46:39','0000-00-00 00:00:00'),(42951,'Auto Todo','null','active','2015-06-25 00:52:09','2015-07-01 05:00:00',120369,'2015-09-11 16:31:20','2016-12-31 06:00:00'),(42951,'Avante','null','active','2015-07-17 23:23:18','0000-00-00 00:00:00',132340,'2015-09-10 19:46:39','0000-00-00 00:00:00'),(42951,'BELCORP','null','active','2015-07-17 23:06:04','0000-00-00 00:00:00',132320,'2015-09-10 19:46:39','0000-00-00 00:00:00'),(42951,'BMV','null','active','2015-06-25 00:52:51','2015-07-01 05:00:00',120370,'2015-09-10 19:46:39','2016-12-31 06:00:00'),(42951,'BMW','null','active','2015-07-17 22:55:03','0000-00-00 00:00:00',132308,'2015-09-10 19:46:39','0000-00-00 00:00:00'),(42951,'Caja Plax','null','active','2015-07-17 23:11:19','0000-00-00 00:00:00',132327,'2015-09-10 19:46:39','0000-00-00 00:00:00'),(42951,'Came','null','active','2015-06-25 00:53:23','2015-07-01 05:00:00',120371,'2015-09-17 15:13:44','2016-12-31 06:00:00'),(42951,'Chedraui','null','active','2015-07-17 22:28:20','0000-00-00 00:00:00',132300,'2015-09-10 19:46:39','0000-00-00 00:00:00'),(42951,'CIMA','null','active','2015-07-17 22:27:25','0000-00-00 00:00:00',132298,'2015-09-10 19:46:39','0000-00-00 00:00:00'),(42951,'Cinepolis','null','active','2015-06-22 18:17:05','2015-06-23 05:00:00',118853,'2015-09-10 19:46:39','2016-08-01 05:00:00'),(42951,'Claustro','null','active','2015-07-17 22:56:21','0000-00-00 00:00:00',132311,'2015-09-10 19:46:39','0000-00-00 00:00:00'),(42951,'CLEU','null','active','2015-07-11 00:41:09','0000-00-00 00:00:00',129104,'2015-09-10 22:59:53','0000-00-00 00:00:00'),(42951,'Club + Uno','null','active','2015-07-17 23:21:08','0000-00-00 00:00:00',132338,'2015-09-10 19:46:39','0000-00-00 00:00:00'),(42951,'Comprobamex','null','active','2015-07-17 00:41:33','0000-00-00 00:00:00',131785,'2015-09-10 19:46:39','0000-00-00 00:00:00'),(42951,'Corporate','null','active','2015-06-25 00:53:51','2015-07-01 05:00:00',120372,'2015-09-11 05:57:03','2016-12-31 06:00:00'),(42951,'Costa Baja','null','active','2015-07-17 23:07:24','0000-00-00 00:00:00',132321,'2015-09-10 19:46:39','0000-00-00 00:00:00'),(42951,'Credifiel','null','active','2015-07-11 00:19:20','0000-00-00 00:00:00',129097,'2015-09-16 04:25:11','0000-00-00 00:00:00'),(42951,'Cruz Roja Mexicana','null','active','2015-06-25 00:54:29','2015-07-01 05:00:00',120374,'2015-09-11 00:29:48','2016-12-31 06:00:00'),(42951,'Danone','null','active','2015-07-17 23:03:17','0000-00-00 00:00:00',132316,'2015-09-10 19:46:40','0000-00-00 00:00:00'),(42951,'Dicanco','null','active','2015-07-17 22:23:35','0000-00-00 00:00:00',132293,'2015-09-10 19:46:40','0000-00-00 00:00:00'),(42951,'Eurest','null','active','2015-07-17 00:37:41','0000-00-00 00:00:00',131783,'2015-09-17 22:29:24','0000-00-00 00:00:00'),(42951,'Expansion','null','active','2015-06-25 00:55:07','2015-07-01 05:00:00',120375,'2015-09-10 23:41:14','2016-12-31 06:00:00'),(42951,'Farmacias del Ahorro','Cliente Farmacias del Ahorro','active','2015-06-22 18:11:50','2015-07-01 05:00:00',118845,'2015-09-17 17:46:08','2016-08-01 05:00:00'),(42951,'Farmacos Especializados','null','active','2015-07-17 22:48:06','0000-00-00 00:00:00',132303,'2015-09-10 19:46:40','0000-00-00 00:00:00'),(42951,'Fortaleza','null','active','2015-07-11 00:22:02','0000-00-00 00:00:00',129098,'2015-09-17 18:41:07','0000-00-00 00:00:00'),(42951,'GBM','null','active','2015-07-17 22:25:17','0000-00-00 00:00:00',132295,'2015-09-10 19:46:40','0000-00-00 00:00:00'),(42951,'Globalcard','null','active','2015-07-17 22:26:05','0000-00-00 00:00:00',132296,'2015-09-10 19:46:40','0000-00-00 00:00:00'),(42951,'IGNIA','null','active','2015-07-17 22:22:47','0000-00-00 00:00:00',132292,'2015-09-10 19:46:40','0000-00-00 00:00:00'),(42951,'IMAX','null','active','2015-07-17 23:19:01','0000-00-00 00:00:00',132335,'2015-09-10 19:46:40','0000-00-00 00:00:00'),(42951,'Inova','null','active','2015-07-17 01:47:38','0000-00-00 00:00:00',131802,'2015-09-10 19:46:40','0000-00-00 00:00:00'),(42951,'Interjet','null','active','2015-06-25 00:55:31','2015-07-01 05:00:00',120376,'2015-09-17 17:28:38','2016-12-31 06:00:00'),(42951,'Interplanet','null','active','2015-07-17 23:04:45','0000-00-00 00:00:00',132318,'2015-09-10 19:46:41','0000-00-00 00:00:00'),(42951,'Javer','null','active','2015-06-25 00:55:55','2015-07-01 05:00:00',120377,'2015-09-15 21:43:23','2016-12-31 06:00:00'),(42951,'Karisma','null','active','2015-07-17 22:21:54','0000-00-00 00:00:00',132291,'2015-09-10 19:46:41','0000-00-00 00:00:00'),(42951,'Kosmos','null','active','2015-06-25 00:56:21','2015-07-01 05:00:00',120378,'2015-09-17 14:54:34','2016-12-31 06:00:00'),(42951,'Lumen','null','active','2015-07-17 00:57:27','0000-00-00 00:00:00',131790,'2015-09-10 19:46:41','0000-00-00 00:00:00'),(42951,'Marti','null','active','2015-06-22 18:15:57','2015-07-01 05:00:00',118848,'2015-09-17 16:35:05','2016-08-01 05:00:00'),(42951,'Másnegocio (DO)','null','active','2015-06-02 22:13:26','2015-01-01 06:00:00',109953,'2015-09-10 19:46:41','2015-12-31 06:00:00'),(42951,'Masnegocio (GPO)','null','active','2015-07-02 02:00:16','2015-07-01 05:00:00',123530,'2015-09-16 03:10:00','2016-12-31 06:00:00'),(42951,'Masnegocio (GSAP)','null','active','2015-08-27 16:37:45','2015-07-10 05:00:00',151767,'2015-09-10 19:46:41','2018-08-27 05:00:00'),(42951,'Masnegocio (GTI)','null','active','2015-07-02 03:09:44','0000-00-00 00:00:00',123542,'2015-09-10 19:46:41','0000-00-00 00:00:00'),(42951,'MasNegocio (Mesa de Servicio)','null','active','2015-07-10 23:37:44','0000-00-00 00:00:00',129088,'2015-09-17 21:31:15','0000-00-00 00:00:00'),(42951,'Masnegocio (SDO)','null','active','2015-07-02 02:03:12','0000-00-00 00:00:00',123531,'2015-09-11 17:46:34','0000-00-00 00:00:00'),(42951,'Near Technologies','null','active','2015-06-25 01:11:15','2015-07-01 05:00:00',120382,'2015-09-15 14:45:37','2016-12-31 06:00:00'),(42951,'Out Helping','null','active','2015-06-25 01:11:57','2015-07-01 05:00:00',120383,'2015-09-10 19:46:41','2016-12-31 06:00:00'),(42951,'P.I. Mabe','null','active','2015-06-25 01:12:49','2015-07-01 05:00:00',120384,'2015-09-14 16:02:45','2016-12-31 06:00:00'),(42951,'Planfia','null','active','2015-06-25 01:13:18','2015-01-20 06:00:00',120385,'2015-09-10 19:46:41','2016-12-31 06:00:00'),(42951,'Progresemos','Cliente Farmacias del Ahorro','active','2015-07-11 00:29:55','0000-00-00 00:00:00',129101,'2015-09-10 19:46:41','0000-00-00 00:00:00'),(42951,'Promotora','null','active','2015-07-11 00:39:27','0000-00-00 00:00:00',129103,'2015-09-17 16:32:45','0000-00-00 00:00:00'),(42951,'Provident','null','active','2015-07-17 22:21:04','0000-00-00 00:00:00',132290,'2015-09-10 19:46:42','0000-00-00 00:00:00'),(42951,'RAGASA','null','active','2015-07-17 00:36:58','0000-00-00 00:00:00',131782,'2015-09-17 20:56:36','0000-00-00 00:00:00'),(42951,'Red Office','null','active','2015-07-17 23:10:04','0000-00-00 00:00:00',132325,'2015-09-10 19:46:42','0000-00-00 00:00:00'),(42951,'Reforestamos','null','active','2015-07-17 23:22:08','0000-00-00 00:00:00',132339,'2015-09-10 19:46:42','0000-00-00 00:00:00'),(42951,'Resort','null','active','2015-07-17 23:12:58','0000-00-00 00:00:00',132329,'2015-09-10 19:46:42','0000-00-00 00:00:00'),(42951,'Rotoplas','null','active','2015-07-17 22:50:58','0000-00-00 00:00:00',132305,'2015-09-10 19:46:42','0000-00-00 00:00:00'),(42951,'Royal','null','active','2015-07-17 22:20:23','0000-00-00 00:00:00',132289,'2015-09-15 15:32:55','0000-00-00 00:00:00'),(42951,'SAAS 8.15','null','active','2015-07-28 21:48:13','0000-00-00 00:00:00',137016,'2015-09-10 19:46:42','0000-00-00 00:00:00'),(42951,'SAAS 8.8','null','active','2015-07-28 21:52:23','0000-00-00 00:00:00',137019,'2015-09-11 01:56:06','0000-00-00 00:00:00'),(42951,'Scotiabank','null','active','2015-07-28 21:43:52','0000-00-00 00:00:00',137010,'2015-09-10 19:46:42','0000-00-00 00:00:00'),(42951,'Sears','null','active','2015-06-25 01:13:42','2015-07-01 05:00:00',120387,'2015-09-17 17:28:42','2016-12-31 06:00:00'),(42951,'Six SIGMA / Aliat','null','active','2015-06-25 01:14:30','2015-07-01 05:00:00',120388,'2015-09-14 16:09:45','2016-12-31 06:00:00'),(42951,'Six SIGMA / CHOPO','Cliente Farmacias del Ahorro','active','2015-07-11 00:27:34','0000-00-00 00:00:00',129100,'2015-09-10 19:46:42','0000-00-00 00:00:00'),(42951,'Six SIGMA / COMEX','Cliente Farmacias del Ahorro','active','2015-07-11 00:13:37','0000-00-00 00:00:00',129095,'2015-09-14 18:00:00','0000-00-00 00:00:00'),(42951,'Six SIGMA / SAP','null','active','2015-06-25 01:15:15','2015-07-01 05:00:00',120389,'2015-09-10 19:46:42','2016-12-31 06:00:00'),(42951,'Six SIGMA / Taco Holding','Cliente Farmacias del Ahorro','active','2015-08-05 18:51:41','0000-00-00 00:00:00',140850,'2015-09-11 06:49:19','0000-00-00 00:00:00'),(42951,'Soriana','null','active','2015-07-17 00:49:51','0000-00-00 00:00:00',131788,'2015-09-10 19:46:42','0000-00-00 00:00:00'),(42951,'Super Mercados Santa Fe','null','active','2015-07-17 00:48:29','0000-00-00 00:00:00',131786,'2015-09-11 21:13:41','0000-00-00 00:00:00'),(42951,'Synthes','null','active','2015-07-17 23:16:43','0000-00-00 00:00:00',132331,'2015-09-10 19:46:43','0000-00-00 00:00:00'),(42951,'Teleton','null','active','2015-06-25 01:15:57','2015-07-01 05:00:00',120390,'2015-09-10 19:46:43','2016-12-31 06:00:00'),(42951,'Terumo Medical','null','active','2015-07-17 00:38:18','0000-00-00 00:00:00',131784,'2015-09-11 05:49:26','0000-00-00 00:00:00'),(42951,'Test','null','active','2015-06-12 23:26:26','2015-05-17 05:00:00',114776,'2015-09-11 16:55:15','2016-01-05 06:00:00'),(42951,'Tu Carrera','null','active','2015-07-11 00:34:56','0000-00-00 00:00:00',129102,'2015-09-17 16:56:44','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `lkp_projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lkp_tags`
--

DROP TABLE IF EXISTS `lkp_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lkp_tags` (
  `name` varchar(2000) NOT NULL,
  `id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lkp_tags`
--

LOCK TABLES `lkp_tags` WRITE;
/*!40000 ALTER TABLE `lkp_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `lkp_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lkp_task_lists`
--

DROP TABLE IF EXISTS `lkp_task_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lkp_task_lists` (
  `projectid` int(10) unsigned NOT NULL,
  `name` varchar(2000) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `milestoneid` int(10) unsigned NOT NULL,
  `uncompleted_count` int(10) unsigned NOT NULL,
  `complete` varchar(2000) NOT NULL,
  `overdue_count` int(10) unsigned NOT NULL,
  `id` int(10) unsigned NOT NULL,
  `completed_count` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lkp_task_lists`
--

LOCK TABLES `lkp_task_lists` WRITE;
/*!40000 ALTER TABLE `lkp_task_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `lkp_task_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lkp_tasks`
--

DROP TABLE IF EXISTS `lkp_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lkp_tasks` (
  `projectid` int(10) unsigned NOT NULL,
  `created_on` datetime NOT NULL,
  `id` int(10) unsigned NOT NULL,
  `completed` bit(1) NOT NULL,
  `estimated_minutes` int(10) unsigned NOT NULL,
  `description` varchar(2000) NOT NULL,
  `progress` int(10) unsigned NOT NULL,
  `parentTaskId` int(10) unsigned DEFAULT NULL,
  `start_date` date NOT NULL,
  `responsible_partyid` int(10) unsigned NOT NULL,
  `due_date_base` date NOT NULL,
  `status` varchar(2000) NOT NULL,
  `todo_listid` int(10) unsigned NOT NULL,
  `content` varchar(2000) NOT NULL,
  `responsible_party_type` varchar(2000) NOT NULL,
  `last_changed_on` datetime NOT NULL,
  `due_date` date NOT NULL,
  `priority` varchar(2000) NOT NULL,
  `responsible_party_ids` int(10) unsigned NOT NULL,
  `tasklist_lockdownId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lkp_tasks`
--

LOCK TABLES `lkp_tasks` WRITE;
/*!40000 ALTER TABLE `lkp_tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `lkp_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lkp_time_entries`
--

DROP TABLE IF EXISTS `lkp_time_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lkp_time_entries` (
  `project_id` int(10) unsigned NOT NULL,
  `minutes` int(10) unsigned NOT NULL,
  `isbillable` int(10) unsigned NOT NULL,
  `description` varchar(2000) NOT NULL,
  `todo_list_id` int(10) unsigned NOT NULL,
  `company_id` int(10) unsigned NOT NULL,
  `person_id` int(10) unsigned NOT NULL,
  `id` int(10) unsigned NOT NULL,
  `date` datetime NOT NULL,
  `todo_item_id` int(10) unsigned DEFAULT NULL,
  `invoiceNo` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lkp_time_entries`
--

LOCK TABLES `lkp_time_entries` WRITE;
/*!40000 ALTER TABLE `lkp_time_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `lkp_time_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rel_categories`
--

DROP TABLE IF EXISTS `rel_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rel_categories` (
  `id` int(10) unsigned NOT NULL,
  `parent_type` varchar(2000) NOT NULL,
  `parentid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rel_categories`
--

LOCK TABLES `rel_categories` WRITE;
/*!40000 ALTER TABLE `rel_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `rel_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rel_tags`
--

DROP TABLE IF EXISTS `rel_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rel_tags` (
  `tagid` int(10) unsigned NOT NULL,
  `parent_type` varchar(2000) NOT NULL,
  `parentid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`tagid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rel_tags`
--

LOCK TABLES `rel_tags` WRITE;
/*!40000 ALTER TABLE `rel_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `rel_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rel_tasks`
--

DROP TABLE IF EXISTS `rel_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rel_tasks` (
  `taskid` int(10) unsigned NOT NULL,
  `parent_type` varchar(2000) NOT NULL,
  `parentid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`taskid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rel_tasks`
--

LOCK TABLES `rel_tasks` WRITE;
/*!40000 ALTER TABLE `rel_tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `rel_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `x`
--

DROP TABLE IF EXISTS `x`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `x` (
  `c1` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `x`
--

LOCK TABLES `x` WRITE;
/*!40000 ALTER TABLE `x` DISABLE KEYS */;
INSERT INTO `x` VALUES ('hola'),('mundo'),('del'),('dba');
/*!40000 ALTER TABLE `x` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-09-17 19:23:52
