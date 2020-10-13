-- MySQL dump 10.13  Distrib 8.0.19, for macos10.15 (x86_64)
--
-- Host: eu-cdbr-west-03.cleardb.net    Database: heroku_1bf375f05667e00
-- ------------------------------------------------------
-- Server version	5.6.49-log

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
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_customer` int(11) NOT NULL,
  `date_order` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `total` float NOT NULL DEFAULT '0',
  `note` text,
  `status` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `f1` (`id_customer`),
  CONSTRAINT `f1` FOREIGN KEY (`id_customer`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
INSERT INTO `bill` VALUES (41,11,'2020-10-12 02:54:46',5,NULL,0),(51,11,'2020-10-12 04:01:25',3,NULL,0),(61,11,'2020-10-12 04:01:34',3,NULL,0),(71,11,'2020-10-12 04:01:52',3,NULL,0),(81,11,'2020-10-12 04:02:17',3,NULL,0),(91,11,'2020-10-12 04:02:31',3,NULL,0),(101,11,'2020-10-12 04:03:15',5,NULL,0),(111,11,'2020-10-12 04:11:30',5,NULL,0),(121,11,'2020-10-12 04:12:01',5,NULL,0),(131,11,'2020-10-12 04:12:27',5,NULL,0),(141,11,'2020-10-12 04:24:11',16,NULL,0),(151,11,'2020-10-12 04:28:26',16,NULL,0),(161,11,'2020-10-12 04:32:14',16,NULL,0),(171,11,'2020-10-12 04:39:47',32,NULL,0);
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill_detail`
--

DROP TABLE IF EXISTS `bill_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_bill` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `quantity` float DEFAULT '0',
  `price` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `f2` (`id_bill`),
  KEY `f3` (`id_product`),
  CONSTRAINT `f2` FOREIGN KEY (`id_bill`) REFERENCES `bill` (`id`),
  CONSTRAINT `f3` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=341 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill_detail`
--

LOCK TABLES `bill_detail` WRITE;
/*!40000 ALTER TABLE `bill_detail` DISABLE KEYS */;
INSERT INTO `bill_detail` VALUES (21,41,35,4,5),(31,51,34,2,3),(41,61,34,2,3),(51,71,34,2,3),(61,81,34,3,3),(71,91,34,3,3),(81,101,35,3,5),(91,111,29,2,5),(101,141,29,3,5),(111,141,30,1,5),(121,141,31,1,6),(131,151,29,3,5),(141,151,30,1,5),(151,151,31,1,6),(161,161,29,3,5),(171,161,30,1,5),(181,161,31,1,6),(311,171,29,3,5),(321,171,30,1,5),(331,171,31,2,6);
/*!40000 ALTER TABLE `bill_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(255) NOT NULL,
  `id_product` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `f5` (`id_product`),
  CONSTRAINT `f5` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (54,'https://i.ibb.co/sR0xbwM/54.jpg',29),(55,'https://i.ibb.co/mvtR3pX/55.jpg',29),(56,'https://i.ibb.co/fY5fJBg/56.jpg',30),(57,'https://i.ibb.co/PMnXZ08/57.jpg',30),(58,'https://i.ibb.co/Np9CbVx/58.jpg',31),(59,'https://i.ibb.co/V9nqr1p/59.jpg',31),(60,'https://i.ibb.co/L0Vcwf1/60.jpg',32),(61,'https://i.ibb.co/DwPd3Cw/61.jpg',32),(62,'https://i.ibb.co/2cZMwwp/62.jpg',33),(63,'https://i.ibb.co/hcn5y3J/63.jpg',33),(64,'https://i.ibb.co/2FV3Nvy/64.jpg',34),(65,'https://i.ibb.co/sjX4vz4/65.jpg',34),(66,'https://i.ibb.co/MDBVWTH/66.jpg',35),(67,'https://i.ibb.co/yh8TnJD/67.jpg',35),(68,'https://i.ibb.co/Fn7PjLq/68.jpg',36),(69,'https://i.ibb.co/YpN8HWF/69.jpg',36),(70,'https://i.ibb.co/wKxjV9M/70.jpg',37),(71,'https://i.ibb.co/LtZwLVF/71.jpg',37);
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `id_type` int(11) DEFAULT NULL,
  `price` float DEFAULT '0',
  `color` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `new` tinyint(4) NOT NULL DEFAULT '0',
  `readyForAdopt` tinyint(1) NOT NULL DEFAULT '0',
  `vaccinatedLastTime` varchar(255) DEFAULT '25th March 2020',
  `weight` varchar(255) DEFAULT '3 kilogram',
  `gender` varchar(255) DEFAULT 'female',
  `totalDonation` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `f4` (`id_type`),
  CONSTRAINT `f4` FOREIGN KEY (`id_type`) REFERENCES `product_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (29,'Kiki',4,5,'Brown','Young','Kiki suffered from mange, parasites, bacterial infections and malnutrition Thanks to the love and care of a veterinary clinic, she not only survived by thrived..',1,1,'25th March 2020','3 kilogram','female',0),(30,'Koko',4,5,'White','Full grown','Koko was found in Espoo on the side of the road eating a dead skunk with her sister. A kind woman took the dogs in, cleaned them up, and send her here.',1,1,'25th March 2020','3 kilogram','female',0),(31,'Bum',4,6,'Brown','Young','Bum was born with a heredity condition that caused a deformity, and the man trying to sell him outside of a grocery store simply left him there when nobody wanted him.',1,1,'25th March 2020','3 kilogram','female',0),(32,'Bom',4,7,'Wheat','Young','The dog\'s owner had passed, and his son took her, but didn\'t really want her. She had been chained and she could barely even walk.',1,1,'25th March 2020','3 kilogram','female',0),(33,'Musti',5,8,'Black','Old','Musti was found on the streets of HCM city as a stray, he had several wounds and injuries from being attacked by a dog. ',1,1,'25th March 2020','3 kilogram','female',0),(34,'Moon',6,3,'Mix','Young','Moon was hit by a car and had to learn to live with three legs, a volunteer took him home for some much-needed TLC and strength training.',1,1,'25th March 2020','3 kilogram','female',0),(35,'Toco',5,5,'Yellow','Young','Toco was hit by a car and had to learn to live with three legs, a volunteer took him home for some much-needed TLC and strength training.',1,1,'12th Octorber 2020','1 kilogram','female',0),(36,'Chip',5,7,'Yellow','Young','Chip suffered from mange, parasites, bacterial infections and malnutrition Thanks to the love and care of a veterinary clinic, she not only survived by thrived..',1,1,'12th Octorber 2020','1 kilogram','female',0),(37,'Hero',5,7,'Stripe','Full grown','Hero\'s owner had passed, and his son took her, but didn\'t really want her. She had been chained to a tree with no food or water.',1,1,'12th Octorber 2020','3 kilogram','female',0);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_type`
--

DROP TABLE IF EXISTS `product_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_type`
--

LOCK TABLES `product_type` WRITE;
/*!40000 ALTER TABLE `product_type` DISABLE KEYS */;
INSERT INTO `product_type` VALUES (4,'Dog','https://i.ibb.co/P5GKmYW/dog.jpg'),(5,'Cat','https://i.ibb.co/F4Pf8gq/cat.jpg'),(6,'Others','https://i.ibb.co/2ZGgJQZ/bunny.jpg');
/*!40000 ALTER TABLE `product_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'huong@gmail.com','c4ca4238a0b923820dcc509a6f75849b',NULL,NULL,NULL),(2,'','d41d8cd98f00b204e9800998ecf8427e','',NULL,NULL),(4,'huonggg@gmail.com','c4ca4238a0b923820dcc509a6f75849b','huong',NULL,NULL),(6,'huonggssssg@gmail.com','c4ca4238a0b923820dcc509a6f75849b','huong',NULL,NULL),(7,'huossssggag@gmail.com','c4ca4238a0b923820dcc509a6f75849b','Hương siêu nhân','234567890','123343 lê thị riêng'),(11,'Yanxinyee@gmail.com','202cb962ac59075b964b07152d234b70','Nhi',NULL,NULL);
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

-- Dump completed on 2020-10-13 14:42:46
