-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: login_db
-- ------------------------------------------------------
-- Server version	5.7.26-0ubuntu0.16.04.1

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
-- Table structure for table `ticket_tbl`
--

DROP TABLE IF EXISTS `ticket_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `natureofwork` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  `reqdate` varchar(45) NOT NULL,
  `reqtime` varchar(45) NOT NULL,
  `remarks` varchar(45) NOT NULL,
  `requstuser` varchar(45) NOT NULL,
  `assigndto` varchar(45) CHARACTER SET utf8 NOT NULL,
  `taskcomplete_date` varchar(45) NOT NULL,
  `taskcomplete_time` varchar(45) NOT NULL,
  `typeofsupport` varchar(45) NOT NULL,
  `ticket_id` varchar(45) NOT NULL,
  `priority` varchar(45) NOT NULL,
  `follower` varchar(45) NOT NULL,
  `duedate` varchar(45) NOT NULL,
  `duetime` varchar(45) NOT NULL,
  `files` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
 