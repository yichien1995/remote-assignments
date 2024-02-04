-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: assignment
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text,
  `author_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `author_id` (`author_id`),
  CONSTRAINT `article_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `store_information` (`storeid`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,'jelly',' Lorem ipsum dolor sit, amet consectetur adipisicing elit. Excepturi, fuga',5),(2,'crust',' Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ex, vel',2),(3,'milk',' Lorem ipsum dolor, sit amet consectetur adipisicing elit. Nemo, maiores accusamus?',5),(4,'ketchup',' Lorem ipsum dolor sit amet consectetur adipisicing elit. Sint, iste.',8),(5,'garlic',' Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore, eaque commodi.',3),(6,'salmon',' Lorem ipsum dolor sit amet consectetur, adipisicing elit. Laboriosam, doloribus harum. Commodi',1),(7,'tofu',' Lorem ipsum dolor sit amet consectetur adipisicing elit. Nesciunt.',7),(8,'eggplant',' Lorem ipsum dolor sit amet.',2),(9,'shrimp',' Lorem ipsum dolor sit amet consectetur adipisicing elit. Quaerat',6),(10,'meat',' Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quasi, dolore.',9),(11,'ice',' Lorem ipsum dolor sit amet consectetur adipisicing elit.',10),(12,'salad',' Lorem ipsum dolor sit amet consectetur adipisicing elit. Saepe, cupiditate eum.',2),(13,'taco',' Lorem ipsum dolor sit amet consectetur, adipisicing elit. Deserunt unde quam praesentium?',4),(14,'salt',' Lorem ipsum dolor sit.',3),(15,'ginger',' Lorem ipsum, dolor sit amet consectetur adipisicing elit. Maxime, voluptatibus. Beatae, amet sapiente! ',6),(16,'vanilla',' Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur, delectus.',5),(17,'grape',' Lorem ipsum dolor sit amet consectetur, adipisicing elit. Hic, at!',10),(18,'sugar',' Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam, velit.',4),(19,'hamburger',' Lorem ipsum, dolor sit amet consectetur adipisicing elit. Accusamus, ab?',5),(20,'lemon',' Lorem ipsum dolor sit amet consectetur adipisicing elit. Iste, maxime?',1),(21,'mushroom','Lorem ipsum dolor sit amet consectetur adipisicing elit. Cum, facilis!',2),(22,'rice','Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque, saepe.',2),(23,'apple','Lorem ipsum dolor sit amet consectetur adipisicing elit. Debitis, optio! ',9),(24,'soup','Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatibus odio amet quos labore.',7),(25,'vitamin','Lorem ipsum dolor, sit amet consectetur adipisicing elit. Hic, nostrum doloribus?',6),(26,'noodles','Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore, qui.',6),(27,'tomato','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod, nulla temporibus.',8),(28,'kiwi','Lorem ipsum, dolor sit amet consectetur adipisicing elit. Sunt, dolores ipsam.',10),(29,'candy','Lorem ipsum dolor sit amet consectetur adipisicing elit. Minus!',2),(30,'orange','Lorem ipsum dolor sit amet consectetur adipisicing elit.',1),(31,'juice','Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore, iure?',4),(32,'jimmies','Lorem ipsum dolor sit amet, consectetur adipisicing.',6),(33,'lime','Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolorem, ipsa?',5),(34,'hash','Lorem ipsum dolor, sit amet consectetur adipisicing elit. Delectus laboriosam officia expedita debitis ex?',9),(35,'appetite','Lorem ipsum dolor sit amet consectetur adipisicing.',1),(36,'pear','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Veniam, placeat?',1),(37,'oven','Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis incidunt magnam ipsum eos nobis non?',9),(38,'ham','Lorem ipsum dolor sit amet consectetur adipisicing elit. Iste, architecto tempora?',3),(39,'coffee','Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore aliquid mollitia aliquam maxime fugit eveniet.',10),(40,'loaf','Lorem ipsum dolor sit, amet consectetur adipisicing elit. Repellendus, exercitationem laborum.',2),(41,'melon','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, quae expedita!',5),(42,'lamb','Lorem ipsum dolor sit amet consectetur, adipisicing elit. Possimus voluptate dolorum tenetur aspernatur magnam vitae!',5),(43,'wheat','Lorem ipsum dolor, sit amet consectetur adipisicing elit.',10),(44,'mango','Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam.',2),(45,'cream','Lorem ipsum dolor sit amet consectetur adipisicing elit. Vero, cum.',2),(46,'yolk','Lorem ipsum, dolor sit amet consectetur adipisicing elit. Magnam, tenetur!',6),(47,'juice','Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore, ab!',5),(48,'diner','Lorem ipsum dolor sit amet consectetur adipisicing elit. Autem, quas?',8),(49,'oyster','Lorem ipsum dolor sit amet consectetur adipisicing elit. Placeat, culpa!',7),(50,'pork','Lorem ipsum dolor sit, amet consectetur adipisicing elit. Alias provident enim autem, voluptatum pariatur esse?',7);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_information`
--

DROP TABLE IF EXISTS `store_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_information` (
  `storeid` int NOT NULL,
  `store_email` varchar(255) DEFAULT NULL,
  `store_password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`storeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_information`
--

LOCK TABLES `store_information` WRITE;
/*!40000 ALTER TABLE `store_information` DISABLE KEYS */;
INSERT INTO `store_information` VALUES (1,'123@gamil.com','123'),(2,'456@gamil.com','456'),(3,'789@gmail.com','789'),(4,'abc@gmail.com','abc'),(5,'def@gmail.com','def'),(6,'ghi@gmail.com','ghi'),(7,'jkl@gmail.com','jkl'),(8,'mno@gmail.com','mno'),(9,'pqr@gmail.com','pqr'),(10,'stu@gmail.com','stu');
/*!40000 ALTER TABLE `store_information` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-04 20:52:21
