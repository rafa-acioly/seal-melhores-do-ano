-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: seal
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.16.04.1

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
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_11_25_181829_create_participants_table',1),(4,'2016_11_25_204447_AddColumnToParticipants',2),(5,'2016_11_28_131628_create_seal_telecoms_table',2),(6,'2016_11_28_132105_create_seals_table',3),(9,'2016_11_28_133308_addColumnSituationToSeal',4),(10,'2016_11_28_133450_addColumnSituationToSealTelecom',4),(11,'2016_11_29_125942_AddColumnCanBeVotedToSealTable',5),(12,'2016_11_29_135101_AddColumnCanBeVotedToSealTelecoms',6),(13,'2016_12_08_132347_AddColumnDepartamentToSeals',7),(14,'2016_12_08_133951_AddColumnDepartmentToSealTelecoms',8);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participants`
--

DROP TABLE IF EXISTS `participants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `participants` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `situation` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `commitment` int(11) NOT NULL,
  `proactivity` int(11) NOT NULL,
  `superation` int(11) NOT NULL,
  `teamWork` int(11) NOT NULL,
  `planning` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participants`
--

LOCK TABLES `participants` WRITE;
/*!40000 ALTER TABLE `participants` DISABLE KEYS */;
INSERT INTO `participants` VALUES (1,'3188eec3dbed389ad9e8e34208584623','Ms. Esther Hilpert',0,'2016-11-25 20:34:22','2016-11-25 20:34:22',0,0,0,0,0),(2,'7c9c0da1300b2c2cfd0b5a1d9b7fdc79','Pascale Parker DDS',1,'2016-11-25 20:34:22','2016-11-25 20:34:22',0,0,0,0,0),(3,'460151bc1e57309012ab1f5d1ab98594','Dannie Rohan',1,'2016-11-25 20:34:22','2016-11-25 20:34:22',0,0,0,0,0),(4,'9e3724af026de6f868c9dd3ac1691041','Mr. Harley Hartmann',1,'2016-11-25 20:34:22','2016-11-25 20:34:22',0,0,0,0,0),(5,'19da1c0a16a85bed3689fb3a67d4c38b','Nikki Gulgowski',1,'2016-11-25 20:34:22','2016-11-25 20:34:22',0,0,0,0,0),(6,'38914a4cf61629615791258560764fdf','Annetta Adams',1,'2016-11-25 20:34:22','2016-11-25 20:34:22',0,0,0,0,0),(7,'0343a077c7684ad5fb00a538fb176c4b','Prof. Katlyn Parisian',1,'2016-11-25 20:34:22','2016-11-25 20:34:22',0,0,0,0,0),(8,'31abe2bfaed4c7d8d00ed292814c2405','Derek Gusikowski',1,'2016-11-25 20:34:23','2016-11-25 20:34:23',0,0,0,0,0),(9,'74d4f0c3781ddd977807599ebbdea900','Dr. Cecil Cole',0,'2016-11-25 20:34:23','2016-11-25 20:34:23',0,0,0,0,0),(10,'46775707be6452944afc97befeaad30a','Devin Goodwin',0,'2016-11-25 20:34:23','2016-11-25 20:34:23',0,0,0,0,0);
/*!40000 ALTER TABLE `participants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seal_telecoms`
--

DROP TABLE IF EXISTS `seal_telecoms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seal_telecoms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `department` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `commitment` int(11) NOT NULL DEFAULT '0',
  `proActivity` int(11) NOT NULL DEFAULT '0',
  `superation` int(11) NOT NULL DEFAULT '0',
  `teamWork` int(11) NOT NULL DEFAULT '0',
  `planningAndOrganization` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `situation` int(11) NOT NULL DEFAULT '0',
  `canBeVoted` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seal_telecoms`
--

LOCK TABLES `seal_telecoms` WRITE;
/*!40000 ALTER TABLE `seal_telecoms` DISABLE KEYS */;
INSERT INTO `seal_telecoms` VALUES (1,'159357951753','Adilson Alexandre Pinto','adilson@sealtelecom.com.br','Engenharia de Operações',1,1,0,0,0,'2016-12-08 13:41:33',NULL,0,1),(2,'159357951754','Adriana Meneses Alves','adriana@sealtelecom.com.br','Financeiro',0,0,0,7,0,'2016-12-08 13:41:33',NULL,0,1),(3,'159357951755','Adriano Roberto Battaglin','adriano@sealtelecom.com.br','Engenharia de Operações',0,0,0,3,0,'2016-12-08 13:41:33',NULL,0,1),(4,'159357951756','Alan Martins de Macedo','alan@sealtelecom.com.br','Controladoria',0,5,0,0,0,'2016-12-08 13:41:33',NULL,0,1),(5,'159357951757','Alda Lima de A. Silva','marketing@sealtelecom.com.br','Administração',0,0,0,0,0,'2016-12-08 13:41:33',NULL,0,1),(6,'159357951758','Aldeir José da Silva','aldeir@sealtelecom.com.br','Engenharia de Operações',0,0,0,0,0,'2016-12-08 13:41:34',NULL,0,1),(7,'159357951759','Alex Rocha de Meneses','ameneses@sealtelecom.com.br','Engenharia de Operações',0,0,0,0,0,'2016-12-08 13:41:34',NULL,0,1),(8,'159357951760','Alex Silva dos Santos','alex.santos@sealbc.com.br','Seal Broadcast',0,0,0,0,0,'2016-12-08 13:41:34',NULL,0,1),(9,'159357951761','Aline Zenaide Vitorino Ashino','avitorino@sealtelecom.com.br','Diretoria',0,0,0,0,0,'2016-12-08 13:41:34',NULL,0,1),(10,'159357951762','Almir Severiano de Jesus','almir@sealtelecom.com.br','Gestão de Projetos',0,0,0,0,0,'2016-12-08 13:41:34',NULL,0,1),(11,'159357951763','Amanda Pacola Napoleão','anapoleao@sealtelecom.com.br','Controladoria',0,0,0,0,0,'2016-12-08 13:41:34',NULL,0,1),(12,'159357951764','Ana Paula Reis de  uveia','anapaula@sealtelecom.com.br','Engenharia de Operações',0,0,0,0,0,'2016-12-08 13:41:34',NULL,0,1),(13,'159357951765','Anderson Luiz do Nascimento','anderson@sealtelecom.com.br','Engenharia de Operações',0,0,0,0,0,'2016-12-08 13:41:34',NULL,0,1),(14,'159357951766','Anderson Martins','amartins@sealtelecom.com.br','Financeiro',0,0,0,0,0,'2016-12-08 13:41:34',NULL,0,1),(15,'159357951767','André Ferreira Tavares','atavares@sealtelecom.com.br','Pre-venda',0,0,0,0,0,'2016-12-08 13:41:34',NULL,0,1),(16,'159357951768','Angela Tinti da Silva','recepcao@sealtelecom.com.br','Administrativo',0,0,0,0,0,'2016-12-08 13:41:34',NULL,0,1),(17,'159357951769','Antonio Augusto  Andrade de Lima','antonio@sealtelecom.com.br','Engenharia de Operações',0,0,0,0,0,'2016-12-08 13:41:34',NULL,0,1),(18,'159357951770','Antonio Gilson de Miranda Abrahão','gilson@sealtelecom.com.br','Engenharia de Operações',0,0,0,0,0,'2016-12-08 13:41:34',NULL,0,1),(19,'159357951771','Barbara Guilhen','barbara@sealtelecom.com.br','Engenharia de Operações',0,0,0,0,0,'2016-12-08 13:41:34',NULL,0,1),(20,'159357951772','Bruno Cubi de Souza','bsouza@sealtelecom.com.br','Suporte',0,0,0,0,0,'2016-12-08 13:41:34',NULL,0,1),(21,'159357951773','Bruno Duarte da Costa','bruno@sealtelecom.com.br','Pré – Venda',0,0,0,0,0,'2016-12-08 13:41:34',NULL,0,1),(22,'159357951774','Caio Hunke da Silva','caio@sealtelecom.com.br','Engenharia de Operações',0,0,0,0,0,'2016-12-08 13:41:34',NULL,0,1),(23,'159357951775','Camila Vieira','camila@sealtelecom.com.br','Marketing  Seal Telecom',0,0,0,0,0,'2016-12-08 13:41:34',NULL,0,1),(24,'159357951776','Carlos Alberto da Fonseca','cafonseca@sealtelecom.com.br','Controladoria',0,0,0,0,0,'2016-12-08 13:41:34',NULL,0,1),(25,'159357951777','Carlos Alberto de Figueiredo Zaia','czaia@sealtelecom.com.br','Suporte & Assistencia Técnica',0,0,0,0,0,'2016-12-08 13:41:34',NULL,0,1),(26,'159357951778','Carlos Eduardo Brito dos Santos','carlos@sealtelecom.com.br','Suporte & Assistencia Técnica',0,0,0,0,0,'2016-12-08 13:41:34',NULL,0,1),(27,'159357951779','Carlos Eduardo Marcelino dos Santos','csantos@sealtelecom.com.br','Engenharia de Operações',0,0,0,0,0,'2016-12-08 13:41:34',NULL,0,1),(28,'159357951780','Carlos Magno da Silva Cavalcante','ccavalcante@sealtelecom.com.br','Pré - Venda',0,0,0,0,0,'2016-12-08 13:41:34',NULL,0,1),(29,'159357951781','Christian  nzalo Escudero','escudero@sealtelecom.com.br','Engenharia de Operações',0,0,0,0,0,'2016-12-08 13:41:35',NULL,0,1),(30,'159357951782','Cícero Sousa e Silva','cicero@sealtelecom.com.br','Comercial',0,0,0,0,0,'2016-12-08 13:41:35',NULL,0,1),(31,'159357951783','Clayton Seiki Tsugiyama Fujii','clayton@sealtelecom.com.br','Engenharia de Operações',0,0,0,0,0,'2016-12-08 13:41:35',NULL,0,1),(32,'159357951784','Cristina dos Santos Silva','cristina@sealtelecom.com.br','Recursos Humanos',0,0,0,0,0,'2016-12-08 13:41:35',NULL,0,1),(33,'159357951785','Daniel Majela Galvão de Souza','dmajela@sealtelecom.com.br','Suporte & Assistencia Técnica',0,0,0,0,0,'2016-12-08 13:41:35',NULL,0,1),(34,'159357951786','Daniela Faria de Oliveira','daniela@sealtelecom.com.br','Suporte & Assistencia Técnica',0,0,0,0,0,'2016-12-08 13:41:35',NULL,0,1),(35,'159357951787','Daniela Farias Pinto','arias@sealtelecom.com.br','Comercial Regional',0,0,0,0,0,'2016-12-08 13:41:35',NULL,0,1),(36,'159357951788','Davi José Pereira Miranda','davi@sealtelecom.com.br','Pré - Venda',0,0,0,0,0,'2016-12-08 13:41:35',NULL,0,1),(37,'159357951789','Demetrius Flori Bitzios','demetrius@sealtelecom.com.br','Engenharia de Operações',0,0,0,0,0,'2016-12-08 13:41:35',NULL,0,1),(38,'159357951790','Denis Junio Nobre','denis@sealtelecom.com.br','Engenharia de Operações',0,0,0,0,0,'2016-12-08 13:41:35',NULL,0,1),(39,'159357951791','Die  Francis Alves da Silva','die @sealtelecom.com.br','Logística - Paranaiba',0,0,0,0,0,'2016-12-08 13:41:35',NULL,0,1),(40,'159357951792','Edith osito','edith@sealtelecom.com.br','Suporte & Assistencia Técnica',0,0,0,0,0,'2016-12-08 13:41:35',NULL,0,1),(41,'159357951793','Edmar Afonso Inácio','edmar@sealtelecom.com.br','Engenharia de Operações',0,0,0,0,0,'2016-12-08 13:41:35',NULL,0,1),(42,'159357951794','Ednilson Coppini Castanheira','ednilson@sealtelecom.com.br','Comercial Regional',0,0,0,0,0,'2016-12-08 13:41:35',NULL,0,1),(43,'159357951795','Eduardo Arruda Carrasco','eduardo@sealtelecom.com.br','Comercial',0,0,0,0,0,'2016-12-08 13:41:35',NULL,0,1),(44,'159357951796','Eliane Maria Szigmond Franco','eliane@sealtelecom.com.br','Gestão de Projetos',0,0,0,0,0,'2016-12-08 13:41:35',NULL,0,1),(45,'159357951797','Eliane Pimentel Peres Pereira','eperes@sealtelecom.com.br','Controladoria',0,0,0,0,0,'2016-12-08 13:41:35',NULL,0,1),(46,'159357951798','Elisangela Silva Pereira','recepcao@sealtelecom.com.br','Administrativo',0,0,0,0,0,'2016-12-08 13:41:35',NULL,0,1),(47,'159357951799','Evandro dos Santos Silva','evandro@sealtelecom.com.br','Suporte & Assistencia Técnica',0,0,0,0,0,'2016-12-08 13:41:35',NULL,0,1),(48,'159357951800','Evangelino Suárez Victor','evictor@sealtelecom.com.br','Suporte & Assistencia Técnica',0,0,0,0,0,'2016-12-08 13:41:35',NULL,0,1),(49,'159357951801','Ewerton Souza Rocha','ewerton@sealtelecom.com.br','Suporte & Assistencia Técnica',0,0,0,0,0,'2016-12-08 13:41:35',NULL,0,1),(50,'159357951802','Expedito de Jesus Araujo','araujo@sealtelecom.com.br','Engenharia de Operações',0,0,0,0,0,'2016-12-08 13:41:35',NULL,0,1),(51,'159357951803','Felipe Alexandre de Oliveira','foliveira@sealtelecom.com.br','Pre-venda',0,0,0,0,0,'2016-12-08 13:41:35',NULL,0,1),(52,'159357951804','Felipe Marcomini','fmarcomini@sealtelecom.com.br','Controladoria',0,0,0,0,0,'2016-12-08 13:41:35',NULL,0,1),(53,'159357951805','Felipe Oliveira Martins Cunha','fcunha@sealtelecom.com.br','TI',0,0,0,0,0,'2016-12-08 13:41:36',NULL,0,1),(54,'159357951806','Fernando Bastos Sardá','fsarda@sealtelecom.com.br','Comercial Regional',0,0,0,0,0,'2016-12-08 13:41:36',NULL,0,1),(55,'159357951807','Fernando da Silva Soares','marketing@sealtelecom.com.br','Administrativo',0,0,0,0,0,'2016-12-08 13:41:36',NULL,0,1),(56,'159357951808','Fernando Sobral Regis Peixoto','fernando.peixoto@sealbc.com.br','Seal Broadcast',0,0,0,0,0,'2016-12-08 13:41:36',NULL,0,1),(57,'159357951809','Francisco Tadeu Rodrigues Barros','tadeu@sealtelecom.com.br','Comercial',0,0,0,0,0,'2016-12-08 13:41:36',NULL,0,1),(58,'159357951810','Gabriel Macedo Fernandes','gfernandes@sealtelecom.com.br','Engenharia de Operações',0,0,0,0,0,'2016-12-08 13:41:36',NULL,0,1),(59,'159357951811','Gabriel Santia  Nunes','gabriel@sealtelecom.com.br','Engenharia de Operações',0,0,0,0,0,'2016-12-08 13:41:36',NULL,0,1),(60,'159357951812','Gabriela Guariso de Campos','gabriela@sealtelecom.com.br','Licitações',0,0,0,0,0,'2016-12-08 13:41:36',NULL,0,1),(61,'159357951813','Geilson Ferreira de Souza','geilson@sealtelecom.com.br','Engenharia de Operações',0,0,0,0,0,'2016-12-08 13:41:36',NULL,0,1),(62,'159357951814','Gildazio Lisboa  nçalves','gildazio@sealtelecom.com.br','Engenharia de Operações',0,0,0,0,0,'2016-12-08 13:41:36',NULL,0,1),(63,'159357951815','Gisele Aparecida da Silva','gisele@sealtelecom.com.br','Recursos Humanos',0,0,0,0,0,'2016-12-08 13:41:36',NULL,0,1),(64,'159357951816','Gustavo de Vasconcelos Florentino','gustavo@sealtelecom.com.br','Gestão de Projetos',0,0,0,0,0,'2016-12-08 13:41:36',NULL,0,1),(65,'159357951817','Gustavo Henriques Pontes','gpontes@sealtelecom.com.br','Engenharia de Operações',0,0,0,0,0,'2016-12-08 13:41:36',NULL,0,1),(66,'159357951818','Gustavo Luiz José Vicente da Silva','gsilva@sealtelecom.com.br','Logística',0,0,0,0,0,'2016-12-08 13:41:36',NULL,0,1),(67,'159357951819','Heitor Pereira da Rocha','heitor@sealtelecom.com.br','Engenharia de Operações',0,0,0,0,0,'2016-12-08 13:41:36',NULL,0,1),(68,'159357951820','I r Milhomens dos Santos','i r@sealtelecom.com.br','Engenharia de Operações',0,0,0,0,0,'2016-12-08 13:41:36',NULL,0,1),(69,'159357951821','Italo Washington  nçalves Braga','italo@sealtelecom.com.br','Engenharia de Operações',0,0,0,0,0,'2016-12-08 13:41:36',NULL,0,1),(70,'159357951822','Ivete ejo','ivete@sealtelecom.com.br','Financeiro',0,0,0,0,0,'2016-12-08 13:41:36',NULL,0,1),(71,'159357951823','João Batista de Andrade','joao@sealtelecom.com.br','Engenharia de Operações',0,0,0,0,0,'2016-12-08 13:41:36',NULL,0,1),(72,'159357951824','Jonilson Lopes Campos Filho','jonilson@sealtelecom.com.br','Suporte',0,0,0,0,0,'2016-12-08 13:41:36',NULL,0,1),(73,'159357951825','Jorge Luiz Guedes Fernandes','jorge.fernandes@sealtelecom.com.br','Comercial Regional',0,0,0,0,0,'2016-12-08 13:41:36',NULL,0,1),(74,'159357951826','Jorge Sadao Shinotsuka','sadao@sealtelecom.com.br','Comercial Regional',0,0,0,0,0,'2016-12-08 13:41:36',NULL,0,1),(75,'159357951827','José Douglas Ferreira de Freitas','jfreitas@sealtelecom.com.br','Logística',0,0,0,0,0,'2016-12-08 13:41:36',NULL,0,1),(76,'159357951828','José Fernandes Garcia de Paula','jfernandes@sealtelecom.com.br','Engenharia de Operaçoes',0,0,0,0,0,'2016-12-08 13:41:36',NULL,0,1),(77,'159357951829','José Luiz de Matos','jmatos@sealtelecom.com.br','Comercial - PR',0,0,0,0,0,'2016-12-08 13:41:36',NULL,0,1),(78,'159357951830','Karina Pexenim da Silva Lourenço','karina@sealtelecom.com.br','Financeiro',0,0,0,0,0,'2016-12-08 13:41:36',NULL,0,1),(79,'159357951831','Katia Christina Re  Kaczan','katia@sealtelecom.com.br','Administração',0,0,0,0,0,'2016-12-08 13:41:36',NULL,0,1),(80,'159357951832','Kleber Sergio Correia','Kleber@sealtelecom.com.br','Controladoria',0,0,0,0,0,'2016-12-08 13:41:36',NULL,0,1),(81,'159357951833','Klebson José da Silva','klebson@sealtelecom.com.br','Engenharia de Operações',0,0,0,0,0,'2016-12-08 13:41:36',NULL,0,1),(82,'159357951834','Letícia de Paula Silva','leticia@sealtelecom.com.br','Gestão de Projetos',0,0,0,0,0,'2016-12-08 13:41:37',NULL,0,1),(83,'159357951835','Lisete Ullmann Vinci Rocha','lisete@sealtelecom.com.br','Recursos Humanos',0,0,0,0,0,'2016-12-08 13:41:37',NULL,0,1),(84,'159357951836','Luis Ricardo Machado de Sousa Bernardoni','luis.bernardoni@sealbc.com.br','Seal Broadcast',0,0,0,0,0,'2016-12-08 13:41:37',NULL,0,1),(85,'159357951837','Maiza Oliveira da Silva','maiza@sealtelecom.com.br','Licitações',0,0,0,0,0,'2016-12-08 13:41:37',NULL,0,1),(86,'159357951838','Marcelo Furlan de Siqueira','marcelo@sealtelecom.com.br','Pré-venda',0,0,0,0,0,'2016-12-08 13:41:37',NULL,0,1),(87,'159357951839','Marcelo Garcia Laudares Pereira','mpereira@sealtelecom.com.br','Pré - Venda',0,0,0,0,0,'2016-12-08 13:41:37',NULL,0,1),(88,'159357951840','Márcia Marques Nunes','mnunes@sealtelecom.com.br','Compras - Telecom',0,0,0,0,0,'2016-12-08 13:41:37',NULL,0,1),(89,'159357951841','Marco Antonio Varanda','mvaranda@seal.com.br','TI',0,0,0,0,0,'2016-12-08 13:41:37',NULL,0,1),(90,'159357951842','Marcos Roberto Li ri Filho','mroberto@sealtelecom.com.br','TI',0,0,0,0,0,'2016-12-08 13:41:37',NULL,0,1),(91,'159357951843','Marcos Vinicius França Silvestre','vinicius@sealtelecom.com.br','TI',0,0,0,0,0,'2016-12-08 13:41:37',NULL,0,1),(92,'159357951844','Mateus Thomé Pacheco da Silva','mateus@sealtelecom.com.br','Engenharia de Operações',0,0,0,0,0,'2016-12-08 13:41:37',NULL,0,1),(93,'159357951845','Matheus Cesar Duarte da Silva','mduarte@sealtelecom.com.br','Geração de Demanda',0,0,0,0,0,'2016-12-08 13:41:37',NULL,0,1),(94,'159357951846','Mauricio Bruno Guimarães','mguimaraes@sealtelecom.com.br','Engenharia de Operações',0,0,0,0,0,'2016-12-08 13:41:37',NULL,0,1),(95,'159357951847','Mauricio Martins Nobre dos Santos Junior','antos@sealtelecom.com.br','Suporte & Assistencia Técnica',10,0,0,0,0,'2016-12-08 13:41:37',NULL,0,1),(96,'159357951848','Maxwel Rios Andrade','mandrade@sealtelecom.com.br','Engenharia de Operações',0,0,0,0,0,'2016-12-08 13:41:37',NULL,0,1),(97,'159357951849','Melani Lichti Martins','melani@sealtelecom.com.br','Engenharia de Operações',0,0,0,0,0,'2016-12-08 13:41:37',NULL,0,1),(98,'159357951850','Monique A stinelli Peres','mperes@sealtelecom.com.br','Engenharia de Operações',0,0,0,0,0,'2016-12-08 13:41:37',NULL,0,1),(99,'159357951851','Nelson Batista Resende','nelson@sealtelecom.com.br','Licitações',0,0,0,0,0,'2016-12-08 13:41:38',NULL,0,1),(100,'159357951852','Nelson Lucci','nlucci@sealtelecom.com.br','Engenharia de Operações',0,0,0,0,0,'2016-12-08 13:41:38',NULL,0,1),(101,'159357951853','Nelson Mitsuru Morishita','morishita@sealtelecom.com.br','Licitações',0,0,0,0,0,'2016-12-08 13:41:38',NULL,0,1),(102,'159357951854','Nicolas Marcos Lourenço','nicolas@sealtelecom.com.br','Suporte & Assistencia Técnica',0,0,0,0,0,'2016-12-08 13:41:38',NULL,0,1),(103,'159357951855','Osmar Francisco Alves Junior','osmar@sealtelecom.com.br','Suporte & Assistencia Técnica',0,0,0,0,0,'2016-12-08 13:41:38',NULL,0,1),(104,'159357951856','Paolo Augusto Girardello','paolo@sealtelecom.com.br','Geração de Demanda',0,0,0,0,0,'2016-12-08 13:41:38',NULL,0,1),(105,'159357951857','Paulo David Bragança de Vasconcelos Pessoa','ppessoa@sealtelecom.com.br','Suporte & Assistencia Técnica',0,0,0,0,0,'2016-12-08 13:41:38',NULL,0,1),(106,'159357951858','Paulo Henrique Oliveira dos Santos','paulo@sealtelecom.com.br','Controladoria',0,0,0,0,0,'2016-12-08 13:41:38',NULL,0,1),(107,'159357951859','Pedro Henrique de Mendonça Sena','pedro@sealtelecom.com.br','Suporte & Assistencia Técnica',0,0,0,0,0,'2016-12-08 13:41:38',NULL,0,1),(108,'159357951860','Priscila Aparecida Santos de Souza','priscila@sealtelecom.com.br','Suporte & Assistencia Técnica',0,0,0,0,0,'2016-12-08 13:41:38',NULL,0,1),(109,'159357951861','Philip Marques Silva','philip@sealtelecom.com.br','Suporte',0,0,0,0,0,'2016-12-08 13:41:38',NULL,0,1),(110,'159357951862','Rafael Lima  mes','rafael@sealtelecom.com.br','Pré - Venda',0,0,0,0,0,'2016-12-08 13:41:38',NULL,0,1),(111,'159357951863','Rafael Oliveira Silva','rafaeloliveira@axyon.com.br','Logística',0,0,0,0,0,'2016-12-08 13:41:38',NULL,0,1),(112,'159357951864','Rafael Pereira e Silva','rpsilva@sealtelecom.com.br','Suporte & Assistencia Técnica',0,0,0,0,0,'2016-12-08 13:41:38',NULL,0,1),(113,'159357951865','Rafael Shoiti Yokoyama','ryokoyama@sealtelecom.com.br','Engenharia de Operações',0,0,0,0,0,'2016-12-08 13:41:38',NULL,0,1),(114,'159357951866','Rafael Ximenes Barcelos Faria','ximenes@sealtelecom.com.br','Engenharia de Operações',0,0,0,0,0,'2016-12-08 13:41:38',NULL,0,1),(115,'159357951867','Railson Ferreira Tavares','railson@sealtelecom.com.br','Engenharia de Operações',0,0,0,0,0,'2016-12-08 13:41:38',NULL,0,1),(116,'159357951868','Renan Silva de Farias','renan@sealtelecom.com.br','Suporte & Assistencia Técnica',0,0,0,0,0,'2016-12-08 13:41:38',NULL,0,1),(117,'159357951869','Renato Rubio Se via','renato@sealtelecom.com.br','Comercial Regional',0,0,0,0,0,'2016-12-08 13:41:38',NULL,0,1),(118,'159357951870','Ricardo Ferreira','ferreira@sealtelecom.com.br','Gestão de Projetos',0,0,0,0,0,'2016-12-08 13:41:39',NULL,0,1),(119,'159357951871','Ricardo Gre rio Matteuzzi','ricardo@sealtelecom.com.br','Logística',0,0,0,0,0,'2016-12-08 13:41:39',NULL,0,1),(120,'159357951872','Robert Costa','robert@sealtelecom.com.br','Comercial Regional',0,0,0,0,0,'2016-12-08 13:41:39',NULL,0,1),(121,'159357951873','Rodolfo  nçalves Pereira','rodolfo@sealtelecom.com.br','Pré - Venda',0,0,0,0,0,'2016-12-08 13:41:39',NULL,0,1),(122,'159357951874','Rodri  Chaves da Silva','rsilva@sealtelecom.com.br','Pré - Venda',0,0,0,0,0,'2016-12-08 13:41:39',NULL,0,1),(123,'159357951875','Rodri  Felipe  mes Ferreira','rferreira@sealtelecom.com.br','Pré - Venda',0,0,0,0,0,'2016-12-08 13:41:39',NULL,0,1),(124,'159357951876','Roger Oliveira Bre lim','roliveira@sealtelecom.com.br','Pré - Venda',0,0,0,0,0,'2016-12-08 13:41:39',NULL,0,1),(125,'159357951877','Roger Pedroso da Costa','roger@sealtelecom.com.br','Pré - Venda',0,0,0,0,0,'2016-12-08 13:41:39',NULL,0,1),(126,'159357951878','Rogerio de Menezes Pereira','rogerio@sealtelecom.com.br','Engenharia de Operações',0,0,0,0,0,'2016-12-08 13:41:39',NULL,0,1),(127,'159357951879','Roni Willian de Oliveira','roni@sealtelecom.com.br','Suporte & Assistencia Técnica',0,0,0,0,0,'2016-12-08 13:41:39',NULL,0,1),(128,'159357951880','Sabrina Firmino dos Passos','sabrina@sealtelecom.com.br','Suporte & Assistencia Técnica',0,0,0,0,0,'2016-12-08 13:41:39',NULL,0,1),(129,'159357951881','Sandoval Santos Silva','sandoval@sealtelecom.com.br','Engenharia de Operações',0,0,0,0,0,'2016-12-08 13:41:39',NULL,0,1),(130,'159357951882','Sérgio Dener Simões Donizete','sergio@sealtelecom.com.br','Suporte & Assistencia Técnica',0,0,0,0,0,'2016-12-08 13:41:39',NULL,0,1),(131,'159357951883','Sergio Henrique Diniz','sdiniz@sealtelecom.com.br','Comercial',0,0,0,0,0,'2016-12-08 13:41:39',NULL,0,1),(132,'159357951884','Severino Felipe Santos Neto','felipesantos@sealtelecom.com.br','Recursos Humanos',0,0,0,0,0,'2016-12-08 13:41:39',NULL,0,1),(133,'159357951885','Sheila Lins de Melo e Silva','sheila@sealtelecom.com.br','Comercial',0,0,0,0,0,'2016-12-08 13:41:39',NULL,0,1),(134,'159357951886','Silvio Luiz Guerini','silvio@sealtelecom.com.br','Suporte & Assistencia Técnica',0,0,0,0,0,'2016-12-08 13:41:39',NULL,0,1),(135,'159357951887','Sue Helen Francis da Silva Canatto Pena','sue@sealtelecom.com.br','Controladoria',0,0,0,0,0,'2016-12-08 13:41:39',NULL,0,1),(136,'159357951888','Sueli Cristina Letizio','sueli@sealtelecom.com.br','Licitações',0,0,0,0,0,'2016-12-08 13:41:39',NULL,0,1),(137,'159357951889','Suenia Tavares Esteves','suenia@sealtelecom.com.br','Administração',0,0,0,0,0,'2016-12-08 13:41:39',NULL,0,1),(138,'159357951890','Tamires  mes Silva','tamires@sealtelecom.com.br','Administração',0,0,0,0,0,'2016-12-08 13:41:39',NULL,0,1),(139,'159357951891','Tamiris Fantini','tfantini@sealtelecom.com.br','Pre-Venda   - Paranaiba',0,0,0,0,0,'2016-12-08 13:41:39',NULL,0,1),(140,'159357951892','Thia  Minoru Yokoyama','Thia @sealtelecom.com.br','Engenharia de Operações',0,0,0,0,0,'2016-12-08 13:41:39',NULL,0,1),(141,'159357951893','Tia  Batista da Silva','tsilva@sealtelecom.com.br','Suporte & Assistencia Técnica',0,0,0,0,0,'2016-12-08 13:41:39',NULL,0,1),(142,'159357951894','Tscherly Kleber da Silva Neiva','ksilva@sealtelecom.com.br','Suporte & Assistencia Técnica',0,0,0,0,0,'2016-12-08 13:41:39',NULL,0,1),(143,'159357951895','Ulisses Alves Menezes Neto','ulisses@sealtelecom.com.br','Comercial Regional',0,0,0,0,0,'2016-12-08 13:41:40',NULL,0,1),(144,'159357951896','Vagner Avelino','avelino@sealtelecom.com.br','TI',0,0,0,0,0,'2016-12-08 13:41:40',NULL,0,1),(145,'159357951897','Vagner Vasconcellos Zanetti','vzanetti@sealtelecom.com.br','Pré-venda Curitiba',0,0,0,0,0,'2016-12-08 13:41:40',NULL,0,1),(146,'159357951898','Valdeci Nogueira','valdeci@sealtelecom.com.br','Comercial Regional',0,0,0,0,0,'2016-12-08 13:41:40',NULL,0,1),(147,'159357951899','Victor Hu  Nepomuceno Silva','vsilva@sealtelecom.com.br','Pre-Venda   - Paranaiba',0,0,0,0,0,'2016-12-08 13:41:40',NULL,0,1),(148,'159357951900','Vinicius dos Santos Neivas','vneivas@sealtelecom.com.br','Engenharia de Operações',0,0,0,0,0,'2016-12-08 13:41:40',NULL,0,1),(149,'159357951901','Vinicius Ribeiro da Silva','vribeiro@sealtelecom.com.br','Suporte & Assistencia Técnica',0,0,0,0,0,'2016-12-08 13:41:40',NULL,0,1),(150,'159357951902','Vinicius Salatino Saragô','vsara @sealtelecom.com.br','Pré - Venda',0,0,0,0,0,'2016-12-08 13:41:40',NULL,0,1),(151,'159357951903','Vladimir Esteves Lourenço','vladimir@sealtelecom.com.br','Comercial Regional',0,0,0,0,0,'2016-12-08 13:41:40',NULL,0,1),(152,'159357951904','Wagner Manoel da Silva','wagner@sealtelecom.com.br','Engenharia de Operações',0,0,0,0,0,'2016-12-08 13:41:40',NULL,0,1),(153,'159357951905','Wesley Barbosa Santana','wesley@sealtelecom.com.br','Suporte & Assistencia Técnica',0,0,0,0,0,'2016-12-08 13:41:40',NULL,0,1),(154,'159357951906','William Alves  da Silva','william@sealtelecom.com.br','Engenharia de Operações',0,0,0,0,0,'2016-12-08 13:41:40',NULL,0,1),(155,'159357951907','Alexandre Novakoski','alexandre@sealtelecom.com.br','Comercial Sul   NE NO',0,0,0,0,0,'2016-12-08 13:41:40',NULL,0,0),(156,'159357951908','Carlos Mauricio Guizelli','cguizelli@sealtelecom.com.br','Comercial Regional',0,0,0,0,0,'2016-12-08 13:41:40',NULL,0,0),(157,'159357951909','Cristiano Felicissimo Soares','cristiano@sealtelecom.com.br','Diretoria - Pré venda',0,0,0,0,0,'2016-12-08 13:41:40',NULL,0,0),(158,'159357951910','Daniel Skitnevsky','daniel@sealtelecom.com.br',NULL,0,0,0,0,0,'2016-12-08 13:41:40',NULL,0,0),(159,'159357951911','Danillo Regis  doy Garcia','danillo.garcia@sealbc.com.br','Seal Broadcast',0,0,0,0,0,'2016-12-08 13:41:40',NULL,0,0),(160,'159357951912','Douglas Garcia de Miranda','dmiranda@sealtelecom.com.br','Diretoria - Comercial Regional',0,0,0,0,0,'2016-12-08 13:41:40',NULL,0,0),(161,'159357951913','Rubens Moraes Dias','rubens@sealtelecom.com.br','Diretoria Suporte & Assistencia Técnica',0,0,0,0,0,'2016-12-08 13:41:40',NULL,0,0),(162,'159357951914','Fatima Silano do Nascimento','fatima@sealtelecom.com.br','Comercial Nova Empresa',0,0,0,0,0,'2016-12-08 13:41:40',NULL,0,0);
/*!40000 ALTER TABLE `seal_telecoms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seals`
--

DROP TABLE IF EXISTS `seals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seals` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `department` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `teamWork` int(11) NOT NULL DEFAULT '0',
  `proActivity` int(11) NOT NULL DEFAULT '0',
  `deliveryOfResult` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `situation` int(11) NOT NULL DEFAULT '0',
  `canBeVoted` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seals`
--

LOCK TABLES `seals` WRITE;
/*!40000 ALTER TABLE `seals` DISABLE KEYS */;
INSERT INTO `seals` VALUES (1,'159752','Adriano Correia','acorrea@seal.com.br','Assistencia Tecnica',0,0,0,'2016-12-08 13:28:26',NULL,0,1),(2,'159753','Alex Martins','amartins@seal.com.br','Suporte de TI',0,0,0,'2016-12-08 13:28:26','2016-12-08 19:26:11',1,1),(3,'159754','Artur Gonçalves','agoncalves@seal.com.br','Comercial estratégico',0,0,0,'2016-12-08 13:28:26',NULL,0,1),(4,'159755','Camila Martins','cmartins@seal.com.br',NULL,0,0,0,'2016-12-08 13:28:26',NULL,0,0),(5,'159756','Carlos Ferreira','cferreira@seal.com.br',NULL,0,0,0,'2016-12-08 13:28:26',NULL,0,0),(6,'159757','Carlos Santana','csantana@seal.com.br',NULL,0,0,0,'2016-12-08 13:28:26',NULL,0,0),(7,'159758','Carlos Benno','cbenno@seal.com.br','Comercial SP',0,0,0,'2016-12-08 13:28:26',NULL,0,1),(8,'159759','Cicero Resio','estoque@seal.com.br','Administrativo',0,0,0,'2016-12-08 13:28:27',NULL,0,1),(9,'159760','Daiane Serra','dserra@seal.com.br','Financeiro',0,0,0,'2016-12-08 13:28:27',NULL,0,1),(10,'159761','Daniel Oliveira','doliveira@seal.com.br','Assistencia Tecnica',0,0,0,'2016-12-08 13:28:27',NULL,0,1),(11,'159762','Daylon Fontes','dfontes@seal.com.br','Engenharia',0,0,0,'2016-12-08 13:28:27',NULL,0,1),(12,'159763','Denis Santos','dsantos@seal.com.br','Suporte Tecnico',0,0,0,'2016-12-08 13:28:27',NULL,0,1),(13,'159764','Denise Lefol','dpaiva@seal.com.br','Marketing',0,0,0,'2016-12-08 13:28:27',NULL,0,0),(14,'159765','Douglas Francia','douglasf@seal.com.br','Comercial SP',0,0,0,'2016-12-08 13:28:27',NULL,0,1),(15,'159766','Eduard Volkl','evolkl@seal.com.br','Engenharia',0,0,0,'2016-12-08 13:28:27',NULL,0,1),(16,'159767','Eros Levanavicius','elevanavicius@seal.com.br','Software',0,0,0,'2016-12-08 13:28:27',NULL,0,1),(17,'159768','Evandro Streiling','estreiling@seal.com.br','Engenharia',0,0,0,'2016-12-08 13:28:27',NULL,0,1),(18,'159769','Everton Gonzalez','emartin@seal.com.br','Engenharia',0,0,0,'2016-12-08 13:28:27',NULL,0,1),(19,'159770','Fabiola Dandrea','fdandrea@seal.com.br','Comercial estratégico',0,0,0,'2016-12-08 13:28:27',NULL,0,0),(20,'159771','Fernando Claro','fclaro@seal.com.br',NULL,0,0,0,'2016-12-08 13:28:27',NULL,0,0),(21,'159772','Fernando Colletti','fcolletti@seal.com.br','Software',0,0,0,'2016-12-08 13:28:27',NULL,0,1),(22,'159773','Gabriel Teodoro','gcosmi@seal.com.br','Engenharia',0,0,0,'2016-12-08 13:28:27',NULL,0,1),(23,'159774','Gerson de Castro','gcastro@seal.com.br',NULL,0,0,0,'2016-12-08 13:28:27',NULL,0,0),(24,'159775','Geyzon Lemos','glemos@seal.com.br','Software',0,0,0,'2016-12-08 13:28:27',NULL,0,1),(25,'159776','Guilherme Nascimento','gnascimento@seal.com.br','Comercial ESL',0,0,0,'2016-12-08 13:28:27',NULL,0,1),(26,'159777','Israel Culatrelli','israel@seal.com.br','Financeiro',0,0,0,'2016-12-08 13:28:27',NULL,0,1),(27,'159778','Jeferson Pereira','jpereira@seal.com.br','Comercial SP',0,0,0,'2016-12-08 13:28:27',NULL,0,1),(28,'159779','Milena Fernandes','recepcao@seal.com.br','Administrativo',0,0,0,'2016-12-08 13:28:27',NULL,0,1),(29,'159780','João Frazão','jfrazao@seal.com.br','Comercial Regional',0,0,0,'2016-12-08 13:28:27',NULL,0,1),(30,'159781','João Neto','jneto@seal.com.br','Software',0,0,0,'2016-12-08 13:28:27',NULL,0,1),(31,'159782','José Neto','jcneto@seal.com.br','Comercial Regional',0,0,0,'2016-12-08 13:28:28',NULL,0,1),(32,'159783','Messias Nunes','jnunes@seal.com.br','Suporte Tecnico',0,0,0,'2016-12-08 13:28:28',NULL,0,1),(33,'159784','Juliano Fontes','jfontes@seal.com.br','Suporte BRF',0,0,0,'2016-12-08 13:28:28',NULL,0,1),(34,'159785','Leandro Facchini','lfacchini@seal.com.br','Software',0,0,0,'2016-12-08 13:28:28',NULL,0,1),(35,'159786','Leidy Alves','lalves@seal.com.br','Software',0,0,0,'2016-12-08 13:28:28',NULL,0,1),(36,'159787','Lucas Ormond','lcampos@seal.com.br','Comercial RFID',0,0,0,'2016-12-08 13:28:28',NULL,0,1),(37,'159788','Luciane Mendes','luciane@seal.com.br','Financeiro',0,0,0,'2016-12-08 13:28:28',NULL,0,1),(38,'159789','Luis Américo','lpinho@seal.com.br','Engenharia',0,0,0,'2016-12-08 13:28:28',NULL,0,0),(39,'159790','Luiz Peleckas','lpeleckas@seal.com.br','Engenharia',0,0,0,'2016-12-08 13:28:28',NULL,0,1),(40,'159791','Manoela Nascimento','mnascimento@seal.com.br','Comercial SP',0,0,0,'2016-12-08 13:28:28',NULL,0,1),(41,'159792','Marcia Farinelli','mfarinelli@seal.com.br','Televendas',0,0,0,'2016-12-08 13:28:28',NULL,0,1),(42,'159793','Maria José Silva','mjsilva@seal.com.br','Administrativo',0,0,0,'2016-12-08 13:28:28',NULL,0,1),(43,'159794','Mauricio Servija','mauricio@seal.com.br',NULL,0,0,0,'2016-12-08 13:28:28',NULL,0,0),(44,'159795','Moises Skitnevsky','mskit@seal.com.br',NULL,0,0,0,'2016-12-08 13:28:28',NULL,0,0),(45,'159796','Reiner Steinmaier','rsteinmaier@seal.com.br','Comercial ESL',0,0,0,'2016-12-08 13:28:28',NULL,0,1),(46,'159797','Renato Foresti','rforesti@seal.com.br','Engenharia',0,0,0,'2016-12-08 13:28:28',NULL,0,1),(47,'159798','Ricardo Alves','rfalves@seal.com.br','Software',0,0,0,'2016-12-08 13:28:28',NULL,0,0),(48,'159799','Roberta Silva','rsilva@seal.com.br','Administrativo',0,0,0,'2016-12-08 13:28:28',NULL,0,1),(49,'159800','Rosimeire Faria','rfaria@seal.com.br','Administrativo',0,0,0,'2016-12-08 13:28:28',NULL,0,1),(50,'159801','Ruy Castro','rcastro@seal.com.br',NULL,0,0,0,'2016-12-08 13:28:28',NULL,0,0),(51,'159802','Samuel Souza','ssouza@seal.com.br','Suporte Naus',0,0,0,'2016-12-08 13:28:28',NULL,0,1),(52,'159803','Sandro Novak','snovak@seal.com.br','Suporte GPA',0,0,0,'2016-12-08 13:28:28',NULL,0,1),(53,'159804','Marco Varanda','mvaranda@seal.com.br','TI',0,0,0,'2016-12-08 13:28:28',NULL,0,1),(54,'159805','Vicente Shinoda','vshinoda@seal.com.br','Comercial RFID',0,0,0,'2016-12-08 13:28:29',NULL,0,1),(55,'159806','Wagner Bernardes','wbernardes@seal.com.br',NULL,0,0,0,'2016-12-08 13:28:29',NULL,0,0),(56,'159807','Yoko Yoshii','yyoshii@seal.com.br','Controladoria',0,0,0,'2016-12-08 13:28:29',NULL,0,1),(57,'159808','Thiago Garcia','tgarcia@seal.com.br','Suporte Naus',0,0,0,'2016-12-08 13:28:29',NULL,0,1),(58,'159809','Anderson Santos','aoliveira@seal.com.br','Comercial Regional',0,0,0,'2016-12-08 13:28:29',NULL,0,1),(59,'159810','Izabela Simões','isimoes@seal.com.br','Marketing',0,0,0,'2016-12-08 13:28:29',NULL,0,1),(60,'159811','Filipe Assunção','fassuncao@seal.com.br','Financeiro',0,0,0,'2016-12-08 13:28:29',NULL,0,1),(61,'159812','Gustavo Souza','gsouza@seal.com.br','Administrativo',0,0,0,'2016-12-08 13:28:29',NULL,0,1),(62,'159813','Carlos Arruda','carruda@seal.com.br','Comercial SP',0,0,0,'2016-12-08 13:28:29',NULL,0,1),(63,'159814','Alexandre Silva','asilva@seal.com.br','Suporte Prossegur',0,0,0,'2016-12-08 13:28:29',NULL,0,1),(64,'159815','Henrique Rodrigues','hrodrigues@seal.com.br','Suporte Naus',0,0,0,'2016-12-08 13:28:29',NULL,0,1),(65,'159816','José Oliveira','joliveira@seal.com.br','Suporte BRF',0,0,0,'2016-12-08 13:28:29',NULL,0,1),(66,'159817','Lucas Oliveira','loliveira@seal.com.br','Suporte Man',0,0,0,'2016-12-08 13:28:29',NULL,0,1),(67,'159818','Marcio Marinho','mmarinho@seal.com.br','Suporte BRF',0,0,0,'2016-12-08 13:28:29',NULL,0,1),(68,'159819','Wellington Cruz','wcruz@seal.com.br','Suporte Man',0,0,0,'2016-12-08 13:28:29',NULL,0,1),(69,'159820','Leandro Macedo','lmacedo@seal.com.br','Suporte Brf',0,0,0,'2016-12-08 13:28:29',NULL,0,1);
/*!40000 ALTER TABLE `seals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','contato@seal.com.br','$2y$10$PJv5lDRqbD9fktVenytDcevjX88qQwwfULeLn.KeqvK5WpbtmmSTS','zMyiORNebITdTIvzpKFEMXNfYLDxNMH9CcXfLIObYcLjupxFDEkN13VRQco2','2016-11-29 19:17:41','2016-11-29 21:03:24');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-24 12:07:10
