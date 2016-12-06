-- MySQL dump 10.13  Distrib 5.5.53, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: TEST
-- ------------------------------------------------------
-- Server version	5.5.53-0ubuntu0.14.04.1

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
-- Table structure for table `Organization`
--

DROP TABLE IF EXISTS `Organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Organization` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `owned` int(11) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Organization`
--

LOCK TABLES `Organization` WRITE;
/*!40000 ALTER TABLE `Organization` DISABLE KEYS */;
INSERT INTO `Organization` VALUES (1,'Kids Foundation','Yogyakarta','lorem ipsum dolor sit amet, consectetur adjfl fdjal fje, fjpwej fa jdljsa fjal wopd tempor incid',0,NULL),(2,'Youth Foundation','Gorontalo','lorem ipsum dolor sit amet, consectetur adjfl fdjal fje, fjpwej fa jdljsa fjal wopd tempor incid',0,NULL),(3,'Elderly Foundation','Gunung Kidul','lorem ipsum dolor sit amet, consectetur adjfl fdjal fje, fjpwej fa jdljsa fjal wopd tempor incifsfsd',0,NULL),(4,'fdasfe','fasfe','fdasfe fe ',NULL,'12414'),(5,'fdasfe','fasfe','fdasfe fe ',NULL,'12414'),(6,'fdsaf gkdf ff','fdalfe ','feasfeaf',NULL,'fafefa'),(7,'fdsaf gkdf ff','fdalfe ','feasfeaf',NULL,'fafefa'),(8,'jljljljljljljljl','jldnalkf dsklj','djladja adal daskldanl',NULL,'20193'),(9,'GamaBook','Yogyakarta','GamaBook is a non-profit organization commiting to give everyone a chance to read. Because reading is opening your eyes',NULL,'9899402931');
/*!40000 ALTER TABLE `Organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org`
--

DROP TABLE IF EXISTS `org`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `org` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `owned` int(11) DEFAULT '5',
  `phone` varchar(20) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org`
--

LOCK TABLES `org` WRITE;
/*!40000 ALTER TABLE `org` DISABLE KEYS */;
INSERT INTO `org` VALUES (1,'Book Aid Internatonal','Book Aid International is an NGO that exists to encourage literacy and access to books particularly in Sub-Saharan Africa and the Middle East by distributing books to libraries ','New York',53,'+4928281932','/img/b.jpg'),(2,'Rumah Belajar','Rumah Belajar is one of the book foundation in Indonesia that is still active until now. They always update their activities on here so its really trusted.','Bandung',43,'+6243265424','../img/d.jpg'),(3,'Sejuta Buku','Satu Juta Buku Untuk Anak-anak Indonesia (SAJUBU) is a movement that related with free distribution of books activities. Especially in school library, reading garden, and public library.','Bantul',77,'+62432425','../img/c.jpg'),(4,'Yayasan dan Komunitas 1001Buku','Komunitas 1001buku merupakan organisasi nirlaba, sebuah jaringan pengelola taman bacaan anak. Berangkat dari keprihatinan atas kurangnya bacaan anak Indonesia','Semarang',5,'0291 683822','../img/a.jpg'),(5,'GoodReads','Imagine it as a large library that you can wander through and see everyone?s bookshelves, their reviews, and their ratings. You can also post your own reviews and catalog what you have read','Bambai',5,'+3423940242','../img/b.jpg'),(6,'National Book Foundation','The Mission is simple. Close the achievement gap. To promote literacy and increase academic success by placing new books into the hands and homes of everyone','Bekasi',5,'08371482321','http://www.sarahbraunstein.com/wp-content/uploads/2010/12/s-NATIONAL-BOOK-FOUNDATION-large.jpg'),(8,'GamaBooks','dofjsal fjdlsfj alsdajfl saf;j dsajf;jdasfja;f j;dajfldkj af','Yogyakarta',5,'90193092183','http://www.bigheartedbooks.com/wp-content/uploads/2016/02/booksdonationbox.png');
/*!40000 ALTER TABLE `org` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submit`
--

DROP TABLE IF EXISTS `submit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `submit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `books` varchar(255) DEFAULT NULL,
  `org` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submit`
--

LOCK TABLES `submit` WRITE;
/*!40000 ALTER TABLE `submit` DISABLE KEYS */;
INSERT INTO `submit` VALUES (1,'dfaf','dsf','dsaf','dsf','dsfsdfdsf',NULL),(2,'fdsafkhl','jfldsjflj','ljflsfahf','jflsjfaafd','fsljfl',NULL),(3,'fdsafeljjl','fjlsjfl','jlfjldjl','jfldjlfjqlf','ljfljsdfla',NULL),(4,'fsafdf','safsadfs','fsdfsd','fdsafasf','fsdfasfasf',NULL),(5,'fsdafj','fjslaflj','fjaljfl','fl','jf',3),(6,'','','','','',3);
/*!40000 ALTER TABLE `submit` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-06 14:29:18
