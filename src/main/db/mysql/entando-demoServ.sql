-- MySQL dump 10.13  Distrib 5.1.61, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: entando-demoServ
-- ------------------------------------------------------
-- Server version	5.1.61-0ubuntu0.11.04.1

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
-- Current Database: `entando-demoServ`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `entando-demoServ` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `entando-demoServ`;

--
-- Table structure for table `api_oauth_consumers`
--

DROP TABLE IF EXISTS `api_oauth_consumers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_oauth_consumers` (
  `consumerkey` varchar(100) NOT NULL,
  `consumersecret` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `callbackurl` varchar(500) DEFAULT NULL,
  `expirationdate` date DEFAULT NULL,
  PRIMARY KEY (`consumerkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_oauth_consumers`
--

LOCK TABLES `api_oauth_consumers` WRITE;
/*!40000 ALTER TABLE `api_oauth_consumers` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_oauth_consumers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_oauth_tokens`
--

DROP TABLE IF EXISTS `api_oauth_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_oauth_tokens` (
  `accesstoken` varchar(100) NOT NULL,
  `tokensecret` varchar(100) NOT NULL,
  `consumerkey` varchar(500) NOT NULL,
  `lastaccess` date DEFAULT NULL,
  `username` varchar(40) NOT NULL,
  PRIMARY KEY (`accesstoken`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_oauth_tokens`
--

LOCK TABLES `api_oauth_tokens` WRITE;
/*!40000 ALTER TABLE `api_oauth_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_oauth_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apicatalog_methods`
--

DROP TABLE IF EXISTS `apicatalog_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apicatalog_methods` (
  `resource` varchar(100) NOT NULL,
  `httpmethod` varchar(6) NOT NULL,
  `isactive` tinyint(4) NOT NULL,
  `ishidden` tinyint(4) NOT NULL,
  `authenticationrequired` tinyint(4) DEFAULT NULL,
  `authorizationrequired` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`resource`,`httpmethod`),
  CONSTRAINT `apicatalog_methods_authorizationrequired_fkey` FOREIGN KEY (`authorizationrequired`) REFERENCES `authpermissions` (`permissionname`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apicatalog_methods`
--

LOCK TABLES `apicatalog_methods` WRITE;
/*!40000 ALTER TABLE `apicatalog_methods` DISABLE KEYS */;
/*!40000 ALTER TABLE `apicatalog_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apicatalog_services`
--

DROP TABLE IF EXISTS `apicatalog_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apicatalog_services` (
  `servicekey` varchar(100) NOT NULL,
  `resource` varchar(100) DEFAULT NULL,
  `description` longtext NOT NULL,
  `parameters` longtext,
  `tag` varchar(100) DEFAULT NULL,
  `freeparameters` longtext,
  `isactive` tinyint(4) NOT NULL,
  `ishidden` tinyint(4) NOT NULL,
  `myentando` tinyint(4) NOT NULL,
  `authenticationrequired` tinyint(4),
  `requiredpermission` varchar(30),
  `requiredgroup` varchar(30),
  PRIMARY KEY (`servicekey`),
  CONSTRAINT `apicatalog_services_requiredpermission_fkey` FOREIGN KEY (`requiredpermission`) REFERENCES `authpermissions` (`permissionname`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `apicatalog_services_requiredgroup_fkey` FOREIGN KEY (`requiredgroup`) REFERENCES `authgroups` (`groupname`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apicatalog_services`
--

LOCK TABLES `apicatalog_services` WRITE;
/*!40000 ALTER TABLE `apicatalog_services` DISABLE KEYS */;
/*!40000 ALTER TABLE `apicatalog_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authgroups`
--

DROP TABLE IF EXISTS `authgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authgroups` (
  `groupname` varchar(20) NOT NULL,
  `descr` varchar(50) NOT NULL,
  PRIMARY KEY (`groupname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authgroups`
--

LOCK TABLES `authgroups` WRITE;
/*!40000 ALTER TABLE `authgroups` DISABLE KEYS */;
INSERT INTO `authgroups` VALUES ('administrators','Administrators'),('customers','Customer users'),('free','Free Access'),('intranet','Intranet users'),('registered','Registered Users');
/*!40000 ALTER TABLE `authgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authpermissions`
--

DROP TABLE IF EXISTS `authpermissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authpermissions` (
  `permissionname` varchar(30) NOT NULL,
  `descr` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`permissionname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authpermissions`
--

LOCK TABLES `authpermissions` WRITE;
/*!40000 ALTER TABLE `authpermissions` DISABLE KEYS */;
INSERT INTO `authpermissions` VALUES ('editContents','Content Editing'),('enterBackend','Access to Administration Area'),('jpuserprofile_profile_edit','User Profile - Edit'),('jpuserprofile_profile_view','User Profile - View'),('manageCategories','Operations on Categories'),('managePages','Operations on Pages'),('manageResources','Operations on Resources'),('superuser','All functions'),('validateContents','Supervision of contents');
/*!40000 ALTER TABLE `authpermissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authrolepermissions`
--

DROP TABLE IF EXISTS `authrolepermissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authrolepermissions` (
  `rolename` varchar(30) NOT NULL,
  `permissionname` varchar(30) NOT NULL,
  PRIMARY KEY (`rolename`,`permissionname`),
  KEY `authrolepermissions_permissionname_fkey` (`permissionname`),
  CONSTRAINT `authrolepermissions_permissionname_fkey` FOREIGN KEY (`permissionname`) REFERENCES `authpermissions` (`permissionname`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `authrolepermissions_rolename_fkey` FOREIGN KEY (`rolename`) REFERENCES `authroles` (`rolename`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authrolepermissions`
--

LOCK TABLES `authrolepermissions` WRITE;
/*!40000 ALTER TABLE `authrolepermissions` DISABLE KEYS */;
INSERT INTO `authrolepermissions` VALUES ('admin','superuser');
/*!40000 ALTER TABLE `authrolepermissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authroles`
--

DROP TABLE IF EXISTS `authroles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authroles` (
  `rolename` varchar(30) NOT NULL,
  `descr` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`rolename`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authroles`
--

LOCK TABLES `authroles` WRITE;
/*!40000 ALTER TABLE `authroles` DISABLE KEYS */;
INSERT INTO `authroles` VALUES ('admin','Administrator');
/*!40000 ALTER TABLE `authroles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authusergroups`
--

DROP TABLE IF EXISTS `authusergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authusergroups` (
  `username` varchar(40) NOT NULL,
  `groupname` varchar(20) NOT NULL,
  PRIMARY KEY (`username`,`groupname`),
  KEY `new_fk_constraint` (`groupname`),
  CONSTRAINT `new_fk_constraint` FOREIGN KEY (`groupname`) REFERENCES `authgroups` (`groupname`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authusergroups`
--

LOCK TABLES `authusergroups` WRITE;
/*!40000 ALTER TABLE `authusergroups` DISABLE KEYS */;
INSERT INTO `authusergroups` VALUES ('admin','administrators'),('jeff','administrators'),('max','customers'),('caroline','intranet'),('caroline','registered'),('jeff','registered'),('max','registered');
/*!40000 ALTER TABLE `authusergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authuserroles`
--

DROP TABLE IF EXISTS `authuserroles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authuserroles` (
  `username` varchar(40) NOT NULL,
  `rolename` varchar(30) NOT NULL,
  PRIMARY KEY (`username`,`rolename`),
  KEY `authuserroles_rolename_fkey` (`rolename`),
  CONSTRAINT `authuserroles_rolename_fkey` FOREIGN KEY (`rolename`) REFERENCES `authroles` (`rolename`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authuserroles`
--

LOCK TABLES `authuserroles` WRITE;
/*!40000 ALTER TABLE `authuserroles` DISABLE KEYS */;
INSERT INTO `authuserroles` VALUES ('admin','admin'),('jeff','admin');
/*!40000 ALTER TABLE `authuserroles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authusers`
--

DROP TABLE IF EXISTS `authusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authusers` (
  `username` varchar(40) NOT NULL,
  `passwd` varchar(40) DEFAULT NULL,
  `registrationdate` date NOT NULL,
  `lastaccess` date DEFAULT NULL,
  `lastpasswordchange` date DEFAULT NULL,
  `active` tinyint(4) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authusers`
--

LOCK TABLES `authusers` WRITE;
/*!40000 ALTER TABLE `authusers` DISABLE KEYS */;
INSERT INTO `authusers` VALUES ('admin','adminadmin','2008-10-10','2011-12-19',NULL,1),('caroline','d6lFouRLMVSGYCQqiZnvMA==','2011-09-26','2011-12-07','2011-09-26',1),('jeff','M6a/uY1I0JDGWU/XU+dWTA==','2011-09-26','2012-04-01',NULL,1),('max','oqYapx7mUieGYCQqiZnvMA==','2011-09-26','2011-12-07','2011-09-26',1);
/*!40000 ALTER TABLE `authusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authusershortcuts`
--

DROP TABLE IF EXISTS `authusershortcuts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authusershortcuts` (
  `username` varchar(40) NOT NULL,
  `config` longtext NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authusershortcuts`
--

LOCK TABLES `authusershortcuts` WRITE;
/*!40000 ALTER TABLE `authusershortcuts` DISABLE KEYS */;
INSERT INTO `authusershortcuts` VALUES ('admin','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<shortcuts>\n	<box pos=\"0\">jacms.contentType</box>\n	<box pos=\"1\">core.component.user.list</box>\n	<box pos=\"2\">core.tools.setting</box>\n	<box pos=\"3\">jacms.content.new</box>\n	<box pos=\"4\">jacms.content.list</box>\n	<box pos=\"5\">core.component.labels.list</box>\n	<box pos=\"6\">core.portal.pageTree</box>\n	<box pos=\"7\">core.component.categories</box>\n	<box pos=\"8\">core.tools.entities</box>\n	<box pos=\"9\">core.portal.showletType</box>\n</shortcuts>\n\n'),('jeff','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<shortcuts>\n	<box pos=\"0\">core.component.categories</box>\n	<box pos=\"1\">core.component.group.list</box>\n	<box pos=\"2\">core.component.user.list</box>\n	<box pos=\"3\">core.portal.pageTree</box>\n	<box pos=\"4\">core.portal.showletType</box>\n	<box pos=\"5\">core.tools.setting</box>\n	<box pos=\"6\">jacms.content.list</box>\n	<box pos=\"7\">jacms.content.new</box>\n	<box pos=\"8\">jpuserprofile.profile.list</box>\n	<box pos=\"9\">jpmyportalplus.config.shortCut</box>\n</shortcuts>\n\n');
/*!40000 ALTER TABLE `authusershortcuts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jpsurvey`
--

DROP TABLE IF EXISTS `jpsurvey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jpsurvey` (
  `id` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `maingroup` varchar(20) NOT NULL,
  `startdate` date NOT NULL,
  `enddate` date DEFAULT NULL,
  `active` smallint(6) NOT NULL,
  `publicpartialresult` smallint(6) NOT NULL,
  `publicresult` smallint(6) NOT NULL,
  `questionnaire` smallint(6) NOT NULL,
  `gatheruserinfo` smallint(6) NOT NULL,
  `title` longtext NOT NULL,
  `restrictedaccess` smallint(6) NOT NULL,
  `checkcookie` smallint(6) NOT NULL,
  `checkipaddress` smallint(6) NOT NULL,
  `imageid` varchar(16) DEFAULT NULL,
  `imagedescr` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jpsurvey`
--

LOCK TABLES `jpsurvey` WRITE;
/*!40000 ALTER TABLE `jpsurvey` DISABLE KEYS */;
INSERT INTO `jpsurvey` VALUES (1,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Just some testing here...</property>\n</properties>\n\n','intranet','2011-11-01','2012-12-21',1,0,0,1,0,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Questionnaire 1</property>\n<property key=\"it\">Questionario 1</property>\n</properties>\n\n',0,1,0,'23','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Questionnaire</property>\n</properties>\n\n'),(2,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Testing Pool</property>\n<property key=\"it\">Sondaggio di prova</property>\n</properties>\n\n','intranet','2011-11-01','2013-12-11',1,1,1,0,0,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Pool 1</property>\n<property key=\"it\">Sondaggio 1</property>\n</properties>\n\n',0,1,0,'24','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Pool 1</property>\n</properties>\n\n');
/*!40000 ALTER TABLE `jpsurvey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jpsurvey_choices`
--

DROP TABLE IF EXISTS `jpsurvey_choices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jpsurvey_choices` (
  `id` int(11) NOT NULL,
  `questionid` int(11) NOT NULL,
  `choice` longtext NOT NULL,
  `pos` smallint(6) NOT NULL,
  `freetext` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jpsurvey_answeres_questionid_fkey` (`questionid`),
  CONSTRAINT `jpsurvey_answeres_questionid_fkey` FOREIGN KEY (`questionid`) REFERENCES `jpsurvey_questions` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jpsurvey_choices`
--

LOCK TABLES `jpsurvey_choices` WRITE;
/*!40000 ALTER TABLE `jpsurvey_choices` DISABLE KEYS */;
INSERT INTO `jpsurvey_choices` VALUES (1,1,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">a</property>\n</properties>\n\n',0,0),(2,1,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">b</property>\n</properties>\n\n',1,0),(3,1,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">c</property>\n</properties>\n\n',2,0),(4,2,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">choose 1</property>\n</properties>\n\n',0,0),(5,2,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">choose 2</property>\n</properties>\n\n',1,0),(6,2,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">choose 3</property>\n</properties>\n\n',2,0),(7,3,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">1</property>\n</properties>\n\n',0,0),(8,3,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">2</property>\n</properties>\n\n',1,0),(9,3,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">3</property>\n</properties>\n\n',2,0),(10,3,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">4</property>\n</properties>\n\n',3,0),(11,3,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">5</property>\n</properties>\n\n',4,0),(12,3,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">6</property>\n</properties>\n\n',5,0),(13,3,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">7</property>\n</properties>\n\n',6,0),(14,3,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">8</property>\n</properties>\n\n',7,0),(15,4,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">a</property>\n</properties>\n\n',0,0),(16,4,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">b</property>\n</properties>\n\n',1,0),(17,4,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">c</property>\n</properties>\n\n',2,0),(18,4,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">d</property>\n</properties>\n\n',3,0),(19,5,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">10</property>\n</properties>\n\n',0,0),(20,5,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">20</property>\n</properties>\n\n',1,0),(21,5,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">30+</property>\n</properties>\n\n',2,0),(22,6,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">aa</property>\n</properties>\n\n',0,0),(23,6,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">bb</property>\n</properties>\n\n',1,0),(24,6,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">cc</property>\n</properties>\n\n',2,0);
/*!40000 ALTER TABLE `jpsurvey_choices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jpsurvey_questions`
--

DROP TABLE IF EXISTS `jpsurvey_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jpsurvey_questions` (
  `id` int(11) NOT NULL,
  `surveyid` int(11) NOT NULL,
  `question` longtext NOT NULL,
  `pos` smallint(6) NOT NULL,
  `singlechoice` smallint(6) NOT NULL,
  `minresponsenumber` smallint(6) DEFAULT NULL,
  `maxresponsenumber` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jpsurvey_questions_surveyid_fkey` (`surveyid`),
  CONSTRAINT `jpsurvey_questions_surveyid_fkey` FOREIGN KEY (`surveyid`) REFERENCES `jpsurvey` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jpsurvey_questions`
--

LOCK TABLES `jpsurvey_questions` WRITE;
/*!40000 ALTER TABLE `jpsurvey_questions` DISABLE KEYS */;
INSERT INTO `jpsurvey_questions` VALUES (1,1,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Question number one</property>\n<property key=\"it\">Domanda numero 1</property>\n</properties>\n\n',0,1,0,0),(2,1,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Question two</property>\n</properties>\n\n',1,1,0,0),(3,1,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Question three, multiple choices</property>\n</properties>\n\n',2,0,2,4),(4,2,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Question 1</property>\n<property key=\"it\">Domanda 1</property>\n</properties>\n\n',0,1,0,0),(5,2,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Question two</property>\n<property key=\"it\">Seconda domanda</property>\n</properties>\n\n',1,1,0,0),(6,2,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<properties>\n<property key=\"en\">Last Question</property>\n<property key=\"it\">Ultima Domanda</property>\n</properties>\n\n',2,1,0,0);
/*!40000 ALTER TABLE `jpsurvey_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jpsurvey_responses`
--

DROP TABLE IF EXISTS `jpsurvey_responses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jpsurvey_responses` (
  `voterid` int(11) NOT NULL,
  `questionid` int(11) NOT NULL,
  `choiceid` int(11) NOT NULL,
  `freetext` varchar(30) DEFAULT NULL,
  KEY `choiceid` (`choiceid`),
  KEY `jpsurvey_responses_voterid_fkey` (`voterid`),
  KEY `questionid` (`questionid`),
  CONSTRAINT `choiceid` FOREIGN KEY (`choiceid`) REFERENCES `jpsurvey_choices` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `jpsurvey_responses_voterid_fkey` FOREIGN KEY (`voterid`) REFERENCES `jpsurvey_voters` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `questionid` FOREIGN KEY (`questionid`) REFERENCES `jpsurvey_questions` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jpsurvey_responses`
--

LOCK TABLES `jpsurvey_responses` WRITE;
/*!40000 ALTER TABLE `jpsurvey_responses` DISABLE KEYS */;
INSERT INTO `jpsurvey_responses` VALUES (1,1,1,NULL),(1,2,4,NULL),(1,3,7,NULL),(1,3,11,NULL),(1,3,12,NULL),(1,3,14,NULL),(2,1,1,NULL),(2,2,5,NULL),(2,3,9,NULL),(2,3,13,NULL);
/*!40000 ALTER TABLE `jpsurvey_responses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jpsurvey_voters`
--

DROP TABLE IF EXISTS `jpsurvey_voters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jpsurvey_voters` (
  `id` int(11) NOT NULL,
  `age` smallint(6) DEFAULT NULL,
  `country` varchar(2) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `votedate` date NOT NULL,
  `surveyid` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `ipaddress` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `surveyid` (`surveyid`),
  CONSTRAINT `surveyid` FOREIGN KEY (`surveyid`) REFERENCES `jpsurvey` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jpsurvey_voters`
--

LOCK TABLES `jpsurvey_voters` WRITE;
/*!40000 ALTER TABLE `jpsurvey_voters` DISABLE KEYS */;
INSERT INTO `jpsurvey_voters` VALUES (1,0,NULL,NULL,'2011-11-17',1,'admin','127.0.0.1'),(2,0,NULL,NULL,'2011-11-18',1,'guest','192.168.1.245');
/*!40000 ALTER TABLE `jpsurvey_voters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jpuserprofile_authuserprofiles`
--

DROP TABLE IF EXISTS `jpuserprofile_authuserprofiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jpuserprofile_authuserprofiles` (
  `username` varchar(40) NOT NULL,
  `profiletype` varchar(30) NOT NULL,
  `profilexml` longtext NOT NULL,
  `publicprofile` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jpuserprofile_authuserprofiles`
--

LOCK TABLES `jpuserprofile_authuserprofiles` WRITE;
/*!40000 ALTER TABLE `jpuserprofile_authuserprofiles` DISABLE KEYS */;
INSERT INTO `jpuserprofile_authuserprofiles` VALUES ('admin','PFL','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<profile id=\"admin\" typecode=\"PFL\" typedescr=\"Profilo utente/cittadino tipo\"><descr /><groups /><categories /><attributes><attribute name=\"Nome\" attributetype=\"Monotext\"><monotext>Admin</monotext></attribute><attribute name=\"Cognome\" attributetype=\"Monotext\"><monotext>C.</monotext></attribute><attribute name=\"email\" attributetype=\"Monotext\"><monotext>admin@entando.com</monotext></attribute><attribute name=\"azienda\" attributetype=\"Monotext\"><monotext>admin</monotext></attribute></attributes></profile>\n',0),('caroline','PFL','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<profile id=\"caroline\" typecode=\"PFL\" typedescr=\"Profilo utente/cittadino tipo\"><descr /><groups /><categories /><attributes><attribute name=\"Nome\" attributetype=\"Monotext\"><monotext>Caroline</monotext></attribute><attribute name=\"Cognome\" attributetype=\"Monotext\"><monotext>F.</monotext></attribute><attribute name=\"email\" attributetype=\"Monotext\"><monotext>caroline@entando.com</monotext></attribute><attribute name=\"azienda\" attributetype=\"Monotext\"><monotext>intranet</monotext></attribute></attributes></profile>\n',0),('jeff','PFL','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<profile id=\"jeff\" typecode=\"PFL\" typedescr=\"Profilo utente/cittadino tipo\"><descr /><groups /><categories /><attributes><attribute name=\"Nome\" attributetype=\"Monotext\"><monotext>Jeff</monotext></attribute><attribute name=\"Cognome\" attributetype=\"Monotext\"><monotext>S.</monotext></attribute><attribute name=\"email\" attributetype=\"Monotext\"><monotext>jeff@entando.com</monotext></attribute><attribute name=\"azienda\" attributetype=\"Monotext\"><monotext>admin</monotext></attribute></attributes></profile>\n',0),('max','PFL','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<profile id=\"max\" typecode=\"PFL\" typedescr=\"Profilo utente/cittadino tipo\"><descr /><groups /><categories /><attributes><attribute name=\"Nome\" attributetype=\"Monotext\"><monotext>Max</monotext></attribute><attribute name=\"Cognome\" attributetype=\"Monotext\"><monotext>M.</monotext></attribute><attribute name=\"email\" attributetype=\"Monotext\"><monotext>max@entando.com</monotext></attribute><attribute name=\"azienda\" attributetype=\"Monotext\"><monotext>customer</monotext></attribute></attributes></profile>\n',0);
/*!40000 ALTER TABLE `jpuserprofile_authuserprofiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jpuserprofile_profilesearch`
--

DROP TABLE IF EXISTS `jpuserprofile_profilesearch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jpuserprofile_profilesearch` (
  `username` varchar(40) NOT NULL,
  `attrname` varchar(30) NOT NULL,
  `textvalue` varchar(255) DEFAULT NULL,
  `datevalue` date DEFAULT NULL,
  `numvalue` int(11) DEFAULT NULL,
  `langcode` varchar(2) DEFAULT NULL,
  KEY `jpuserprofile_profilesearch_username_fkey` (`username`),
  CONSTRAINT `jpuserprofile_profilesearch_username_fkey` FOREIGN KEY (`username`) REFERENCES `jpuserprofile_authuserprofiles` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jpuserprofile_profilesearch`
--

LOCK TABLES `jpuserprofile_profilesearch` WRITE;
/*!40000 ALTER TABLE `jpuserprofile_profilesearch` DISABLE KEYS */;
INSERT INTO `jpuserprofile_profilesearch` VALUES ('caroline','Nome','Caroline',NULL,NULL,NULL),('caroline','Cognome','F.',NULL,NULL,NULL),('caroline','email','caroline@entando.com',NULL,NULL,NULL),('max','Nome','Max',NULL,NULL,NULL),('max','Cognome','M.',NULL,NULL,NULL),('max','email','max@entando.com',NULL,NULL,NULL),('admin','Nome','Admin',NULL,NULL,NULL),('admin','Cognome','C.',NULL,NULL,NULL),('admin','email','admin@entando.com',NULL,NULL,NULL),('jeff','Nome','Jeff',NULL,NULL,NULL),('jeff','Cognome','S.',NULL,NULL,NULL),('jeff','email','jeff@entando.com',NULL,NULL,NULL);
/*!40000 ALTER TABLE `jpuserprofile_profilesearch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jpwebdynamicform_messageanswers`
--

DROP TABLE IF EXISTS `jpwebdynamicform_messageanswers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jpwebdynamicform_messageanswers` (
  `answerid` varchar(16) NOT NULL,
  `messageid` varchar(16) NOT NULL,
  `operator` varchar(20) DEFAULT NULL,
  `senddate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `text` longtext NOT NULL,
  PRIMARY KEY (`answerid`),
  KEY `jpwebdynamicform_messageanswers_messageid_fkey` (`messageid`),
  CONSTRAINT `jpwebdynamicform_messageanswers_messageid_fkey` FOREIGN KEY (`messageid`) REFERENCES `jpwebdynamicform_messages` (`messageid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jpwebdynamicform_messageanswers`
--

LOCK TABLES `jpwebdynamicform_messageanswers` WRITE;
/*!40000 ALTER TABLE `jpwebdynamicform_messageanswers` DISABLE KEYS */;
/*!40000 ALTER TABLE `jpwebdynamicform_messageanswers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jpwebdynamicform_messages`
--

DROP TABLE IF EXISTS `jpwebdynamicform_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jpwebdynamicform_messages` (
  `messageid` varchar(16) NOT NULL,
  `username` varchar(40) DEFAULT NULL,
  `langcode` varchar(2) NOT NULL,
  `messagetype` varchar(30) NOT NULL,
  `creationdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `messagexml` longtext NOT NULL,
  PRIMARY KEY (`messageid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jpwebdynamicform_messages`
--

LOCK TABLES `jpwebdynamicform_messages` WRITE;
/*!40000 ALTER TABLE `jpwebdynamicform_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `jpwebdynamicform_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jpwebdynamicform_messagesearch`
--

DROP TABLE IF EXISTS `jpwebdynamicform_messagesearch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jpwebdynamicform_messagesearch` (
  `messageid` varchar(16) NOT NULL,
  `attrname` varchar(30) NOT NULL,
  `textvalue` varchar(255) DEFAULT NULL,
  `datevalue` date DEFAULT NULL,
  `numvalue` int(11) DEFAULT NULL,
  `langcode` varchar(2) DEFAULT NULL,
  KEY `jpwebdynamicform_messagesearch_messageid_fkey` (`messageid`),
  CONSTRAINT `jpwebdynamicform_messagesearch_messageid_fkey` FOREIGN KEY (`messageid`) REFERENCES `jpwebdynamicform_messages` (`messageid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jpwebdynamicform_messagesearch`
--

LOCK TABLES `jpwebdynamicform_messagesearch` WRITE;
/*!40000 ALTER TABLE `jpwebdynamicform_messagesearch` DISABLE KEYS */;
/*!40000 ALTER TABLE `jpwebdynamicform_messagesearch` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-04-01 12:25:31
