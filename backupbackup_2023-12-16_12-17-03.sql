-- MariaDB dump 10.19  Distrib 10.4.28-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: counselling
-- ------------------------------------------------------
-- Server version	10.4.28-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `achievements`
--

DROP TABLE IF EXISTS `achievements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `achievements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `dis` varchar(1000) NOT NULL,
  `sid` varchar(255) NOT NULL,
  `sname` varchar(200) NOT NULL,
  `link` varchar(1000) NOT NULL,
  `hide` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `achievements`
--

LOCK TABLES `achievements` WRITE;
/*!40000 ALTER TABLE `achievements` DISABLE KEYS */;
INSERT INTO `achievements` VALUES (1,' CSE project show summer 2022','Every semester my University arrange project show in summer 2022 semester i am the Champion in Dbms lab.Total 67 teams participants','011201240','Abdullah Al Sakib','https://drive.google.com/file/d/1YtioSZHf9hOQCHptCrA1NIS4Pni-8WRa/view',0),(3,' ICPC - ACM International Collegiate Programming ConteICPC - ACM International Collegiate Programming Contest','45th ICPC participations','011201240','Abdullah Al Sakib','https://drive.google.com/file/d/1vixoiNRzzBz9q969nlZXCBFaCLOCT6Vi/view',0),(4,'Codegoda 2022 programing competition  ','Unstop Codegoda 2022 programing competition  participations ','011201240','Abdullah Al Sakib','https://d8it4huxumps7.cloudfront.net/lambda-pdfs/certificate-images/1dfa700d-bfbe-48e9-a5ab-595a3f559e14.jpg',0),(5,'Hacker Rank Sql Intermediate ','Achieve the Sql Intermediate Certificate','011201240','Abdullah Al Sakib','https://www.hackerrank.com/certificates/f2b5f2a8b2f2',0);
/*!40000 ALTER TABLE `achievements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apply`
--

DROP TABLE IF EXISTS `apply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(250) NOT NULL,
  `sid` varchar(250) NOT NULL,
  `cgpa` varchar(250) NOT NULL,
  `cname` varchar(250) NOT NULL,
  `cid` varchar(250) NOT NULL,
  `section` varchar(250) NOT NULL,
  `tname` varchar(250) NOT NULL,
  `ctimestart` varchar(250) NOT NULL,
  `ctimeend` varchar(250) NOT NULL,
  `tid` varchar(255) NOT NULL,
  `credit` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apply`
--

LOCK TABLES `apply` WRITE;
/*!40000 ALTER TABLE `apply` DISABLE KEYS */;
INSERT INTO `apply` VALUES (32,'Abdullah Al Sakib','011201240','3.8','Database Management Systems Laboratory','CSE 3522','C','Md. Mohaiminul Islam','11:00','13:30','MOI',1),(33,'Abdullah Al Sakib','011201240','3.8','Structured Programming Language',' CSE 1111','C','Mr. Md. Benzir Ahamed','15:00','16:30','BA',3),(34,'Mirza hasan','011201247','3.78','Database Management Systems Laboratory','CSE 3522','C','Md. Mohaiminul Islam','11:00','13:30','MOI',1),(35,'Arshadul Mokaddis','011201260','3.8','Database Management Systems Laboratory','CSE 3522','C','Md. Mohaiminul Islam','11:00','13:30','MOI',1),(36,'Abdullah Al Sakib','011201240','3.8','Structured Programming Language',' CSE 1111','A','Mr. Farhan Anan Himu','08:30','10:00','FAH',3),(37,'Abdullah Al Sakib','011201240','3.8','Data Structure and Algorithms II','CSE 2217','D','Fariha Tabassum Islam','14:00','15:30','FTI',3),(45,'Abdullah Al Sakib','011201240','3.8','Database Management Systems Laboratory','CSE 3522','A','Dr. Salekul Islam','08:30','11:00','SI',1),(46,'Abdullah Al Sakib','011201240','3.8','Structured Programming Language Lab','CSI 122','A','Fariha Tabassum Islam','8:30','11:00','FTI',1);
/*!40000 ALTER TABLE `apply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bokking`
--

DROP TABLE IF EXISTS `bokking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bokking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(200) NOT NULL,
  `day` varchar(255) NOT NULL,
  `tid` varchar(255) NOT NULL,
  `tname` varchar(200) NOT NULL,
  `sid` varchar(200) NOT NULL,
  `sname` varchar(200) NOT NULL,
  `start` varchar(200) NOT NULL,
  `end` varchar(200) NOT NULL,
  `states` varchar(200) NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `bid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bokking`
--

LOCK TABLES `bokking` WRITE;
/*!40000 ALTER TABLE `bokking` DISABLE KEYS */;
INSERT INTO `bokking` VALUES (5,'2022-09-17','Saturday','NC','Mr. Md. Nadeem Chowdhury','021213001','Nissan Biswas','22','22:30','Cancelled','Pore din a aico',65),(19,'2022-11-19','Saturday','sakib1122','Abdullah Al Sakib','011201247','Mirza hasan','21:13','21:16','Accepted','',71),(20,'2022-11-19','Saturday','AZ','Mr. Akib Zaman','011201240','Abdullah Al Sakib','10:35','11:05','pending','',11),(24,'2023-01-14','Saturday','sakib1122','Abdullah Al Sakib','011201240','Abdullah Al Sakib','21:13','21:16','Accepted','',71),(25,'2023-04-23','Sunday','AM','Mr. Anik Mazumder','011201240','Abdullah Al Sakib','10:30','11:00','Accepted','',63),(26,'2023-04-30','Sunday','AM','Mr. Anik Mazumder','011201240','Abdullah Al Sakib','10:30','11:00','Rejected','',63);
/*!40000 ALTER TABLE `bokking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `sid` varchar(100) NOT NULL,
  `coursename` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (18,'pdf-639b1cd78e90d7.09503960.pptx','011201247','Data Structure and Algorithms I'),(20,'pdf-639b1d7b213258.86314058.pptx','011201260','Electronics'),(21,'pdf-639d46fb044039.23538318.pptx','011201247','System Analysis and Design'),(22,'pdf-639d4734b78a50.01271141.pdf','011201247','Data Structure and Algorithms I'),(29,'1676695691.pdf','011201240','my cv'),(31,'1676740372.pdf','011201240','Data'),(32,'1680424548.pdf','011201240','Data');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `code`
--

DROP TABLE IF EXISTS `code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `ename` varchar(100) NOT NULL,
  `qus` varchar(1000) NOT NULL,
  `input1` varchar(500) NOT NULL,
  `input2` varchar(1000) NOT NULL,
  `input3` varchar(1000) NOT NULL,
  `output1` varchar(1000) NOT NULL,
  `output2` varchar(1000) NOT NULL,
  `output3` varchar(1000) NOT NULL,
  `len` varchar(100) NOT NULL,
  `mark` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `week` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `code`
--

LOCK TABLES `code` WRITE;
/*!40000 ALTER TABLE `code` DISABLE KEYS */;
INSERT INTO `code` VALUES (7,2,'Coding Test 1','C Program to Add Two Integers','10 12','10 10','20 20','22','20','40','C',10,10,'Week1'),(8,2,'Coding Test 1','subtract two numbers in C','20 10','30 10','40 15','10','20','25','C',10,10,'Week1');
/*!40000 ALTER TABLE `code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `codeans`
--

DROP TABLE IF EXISTS `codeans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `codeans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ename` varchar(200) NOT NULL,
  `cid` varchar(11) NOT NULL,
  `week` varchar(255) NOT NULL,
  `qus` varchar(1000) NOT NULL,
  `ans` varchar(1000) NOT NULL,
  `sid` varchar(255) NOT NULL,
  `sname` varchar(200) NOT NULL,
  `qid` varchar(11) NOT NULL,
  `mark` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `codeans`
--

LOCK TABLES `codeans` WRITE;
/*!40000 ALTER TABLE `codeans` DISABLE KEYS */;
INSERT INTO `codeans` VALUES (9,'sakib','2','Week1','C Program to Add Two Integers','sakib\r\n','011201240','Abdullah Al Sakib','5',0),(10,'sakib','2','Week1','maw','rakib\r\n','011201240','Abdullah Al Sakib','5',0),(11,'sakib','2','Week1','C Program to Add Two Integers','rakib\r\n','011201240','Abdullah Al Sakib','5',0),(12,'sakib','2','Week1','C Program to Add Two Integers','rakib\r\n','011201240','Abdullah Al Sakib','5',0),(13,'sakib','2','Week1','C Program to Add Two Integers','rakib\r\n','011201240','Abdullah Al Sakib','5',0),(14,'sakib','2','Week1','C Program to Add Two Integers','rakib\r\n','011201240','Abdullah Al Sakib','5',0),(15,'sakib','2','Week1','C Program to Add Two Integers','rherhre','011201240','Abdullah Al Sakib','5',0),(16,'sakib','2','Week1','C Program to Add Two Integers','rherhre','011201240','Abdullah Al Sakib','5',0),(17,'sakib','2','Week1','C Program to Add Two Integers','gip\r\n','011201240','Abdullah Al Sakib','5',0),(18,'sakib','2','week2','fthretjtyj','ans naui','011201240','abdullah','5',0),(19,'sakib','2','Week1','C Program to Add Two Integers','#include <stdio.h>\r\nint main() {    \r\n\r\n    int number1, number2, sum;\r\n    \r\n    \r\n    scanf(\"%d %d\", &number1, &number2);\r\n\r\n    // calculating sum\r\n    sum = number1 + number2;      \r\n    \r\n    printf(\" %d\", sum);\r\n    return 0;\r\n}\r\n','011201240','Abdullah Al Sakib','5',0),(20,'sakib','2','week2','fthretjtyj','ans naui','011201240','abdullah','5',0),(21,'sakib','2','Week1','C Program to Add Two Integers','#include <stdio.h>\r\nint main() {    \r\n\r\n    int number1, number2, sum;\r\n    \r\n    printf(\"Enter two integers: \");\r\n    scanf(\"%d %d\", &number1, &number2);\r\n\r\n    // calculating sum\r\n    sum = number1 + number2;      \r\n    \r\n    printf(\"%d + %d = %d\", number1, number2, sum);\r\n    return 0;\r\n}\r\n','011201240','Abdullah Al Sakib','5',0),(22,'sakib','2','Week1','C Program to Add Two Integers','#include <stdio.h>\r\nint main() {    \r\n\r\n    int number1, number2, sum;\r\n    \r\n    printf(\"Enter two integers: \");\r\n    scanf(\"%d %d\", &number1, &number2);\r\n\r\n    // calculating sum\r\n    sum = number1 + number2;      \r\n    \r\n    printf(\"%d + %d = %d\", number1, number2, sum);\r\n    return 0;\r\n}\r\n','011201240','Abdullah Al Sakib','5',0),(23,'sakib','2','Week1','C Program to Add Two Integers','#include <stdio.h>\r\nint main() {    \r\n\r\n    int number1, number2, sum;\r\n    \r\n    printf(\"Enter two integers: \");\r\n    scanf(\"%d %d\", &number1, &number2);\r\n\r\n    // calculating sum\r\n    sum = number1 + number2;      \r\n    \r\n    printf(\"%d + %d = %d\", number1, number2, sum);\r\n    return 0;\r\n}\r\n','011201240','Abdullah Al Sakib','5',0),(24,'sakib','2','Week1','C Program to Add Two Integers','#include <stdio.h>\r\nint main() {    \r\n\r\n    int number1, number2, sum;\r\n    \r\n    printf(\"Enter two integers: \");\r\n    scanf(\"%d %d\", &number1, &number2);\r\n\r\n    // calculating sum\r\n    sum = number1 + number2;      \r\n    \r\n    printf(\"%d + %d = %d\", number1, number2, sum);\r\n    return 0;\r\n}\r\n','011201240','Abdullah Al Sakib','5',0),(25,'sakib','2','Week1','C Program to Add Two Integers','#include <stdio.h>\r\nint main() {    \r\n\r\n    int number1, number2, sum;\r\n    \r\n    printf(\"Enter two integers: \");\r\n    scanf(\"%d %d\", &number1, &number2);\r\n\r\n    // calculating sum\r\n    sum = number1 + number2;      \r\n    \r\n    printf(\"%d + %d = %d\", number1, number2, sum);\r\n    return 0;\r\n}\r\n','011201240','Abdullah Al Sakib','5',0),(26,'sakib','2','Week1','C Program to Add Two Integers','#include <stdio.h>\r\nint main() {    \r\n\r\n    int number1, number2, sum;\r\n    \r\n    printf(\"Enter two integers: \");\r\n    scanf(\"%d %d\", &number1, &number2);\r\n\r\n    // calculating sum\r\n    sum = number1 + number2;      \r\n    \r\n    printf(\"%d + %d = %d\", number1, number2, sum);\r\n    return 0;\r\n}\r\n','011201240','Abdullah Al Sakib','5',0),(27,'sakib','2','Week1','C Program to Add Two Integers','#include <stdio.h>\r\nint main() {    \r\n\r\n    int number1, number2, sum;\r\n    \r\n    printf(\"Enter two integers: \");\r\n    scanf(\"%d %d\", &number1, &number2);\r\n\r\n    // calculating sum\r\n    sum = number1 + number2;      \r\n    \r\n    printf(\"%d + %d = %d\", number1, number2, sum);\r\n    return 0;\r\n}\r\n','011201240','Abdullah Al Sakib','5',0),(28,'sakib','2','Week1','C Program to Add Two Integers','#include <stdio.h>\r\nint main() {    \r\n\r\n    int number1, number2, sum;\r\n    \r\n    printf(\"Enter two integers: \");\r\n    scanf(\"%d %d\", &number1, &number2);\r\n\r\n    // calculating sum\r\n    sum = number1 + number2;      \r\n    \r\n    printf(\"%d + %d = %d\", number1, number2, sum);\r\n    return 0;\r\n}\r\n','011201240','Abdullah Al Sakib','5',0),(29,'sakib','2','Week1','C Program to Add Two Integers','#include <stdio.h>\r\nint main() {    \r\n\r\n    int number1, number2, sum;\r\n    \r\n    printf(\"Enter two integers: \");\r\n    scanf(\"%d %d\", &number1, &number2);\r\n\r\n    // calculating sum\r\n    sum = number1 + number2;      \r\n    \r\n    printf(\"%d + %d = %d\", number1, number2, sum);\r\n    return 0;\r\n}\r\n','011201240','Abdullah Al Sakib','5',0),(30,'sakib','2','Week1','C Program to Add Two Integers','#include <stdio.h>\r\nint main() {    \r\n\r\n    int number1, number2, sum;\r\n    \r\n    printf(\"Enter two integers: \");\r\n    scanf(\"%d %d\", &number1, &number2);\r\n\r\n    // calculating sum\r\n    sum = number1 + number2;      \r\n    \r\n    printf(\"%d + %d = %d\", number1, number2, sum);\r\n    return 0;\r\n}\r\n','011201240','Abdullah Al Sakib','5',0),(31,'sakib','2','Week1','C Program to Add Two Integers','#include <stdio.h>\r\nint main() {    \r\n\r\n    int number1, number2, sum;\r\n    \r\n    printf(\"Enter two integers: \");\r\n    scanf(\"%d %d\", &number1, &number2);\r\n\r\n    // calculating sum\r\n    sum = number1 + number2;      \r\n    \r\n    printf(\"%d + %d = %d\", number1, number2, sum);\r\n    return 0;\r\n}\r\n','011201240','Abdullah Al Sakib','5',0),(32,'sakib','2','Week1','C Program To Check Leap Year','#include <stdio.h>\r\nint main() {\r\n   int year;\r\n   printf(\"Enter a year: \");\r\n   scanf(\"%d\", &year);\r\n\r\n   // leap year if perfectly divisible by 400\r\n   if (year % 400 == 0) {\r\n      printf(\"%d is a leap year.\", year);\r\n   }\r\n   // not a leap year if divisible by 100\r\n   // but not divisible by 400\r\n   else if (year % 100 == 0) {\r\n      printf(\"%d is not a leap year.\", year);\r\n   }\r\n   // leap year if not divisible by 100\r\n   // but divisible by 4\r\n   else if (year % 4 == 0) {\r\n      printf(\"%d is a leap year.\", year);\r\n   }\r\n   // all other years are not leap years\r\n   else {\r\n      printf(\"%d is not a leap year.\", year);\r\n   }\r\n\r\n   return 0;\r\n}','011201240','Abdullah Al Sakib','6',9),(33,'Coding Test 1','2','Week1','subtract two numbers in C','#include <stdio.h>\r\nint main() {    \r\n\r\n    int number1, number2, sum;\r\n    \r\n    printf(\"Enter two integers: \");\r\n    scanf(\"%d %d\", &number1, &number2);\r\n\r\n    // calculating sum\r\n    sum = number1 + number2;      \r\n    \r\n    printf(\"%d + %d = %d\", number1, number2, sum);\r\n    return 0;\r\n}\r\n','011201240','Abdullah Al Sakib','8',8),(34,'Coding Test 1','2','Week1','C Program to Add Two Integers','#include <stdio.h>\r\nint main() {    \r\n\r\n    int number1, number2, sum;\r\n    \r\n    printf(\"Enter two integers: \");\r\n    scanf(\"%d %d\", &number1, &number2);\r\n\r\n    // calculate the sum\r\n    sum = number1 + number2;      \r\n    \r\n    printf(\"%d + %d = %d\", number1, number2, sum);\r\n    return 0;\r\n}','011201240','Abdullah Al Sakib','7',0);
/*!40000 ALTER TABLE `codeans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `codemark`
--

DROP TABLE IF EXISTS `codemark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `codemark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ename` varchar(255) NOT NULL,
  `eid` int(11) NOT NULL,
  `week` varchar(200) NOT NULL,
  `qus` varchar(1000) NOT NULL,
  `ans` varchar(1000) NOT NULL,
  `sid` varchar(255) NOT NULL,
  `sanme` varchar(200) NOT NULL,
  `qid` int(11) NOT NULL,
  `mark` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `codemark`
--

LOCK TABLES `codemark` WRITE;
/*!40000 ALTER TABLE `codemark` DISABLE KEYS */;
INSERT INTO `codemark` VALUES (1,'sakib',2,'Week1','C Program to Add Two Integers','#include <stdio.h>\r\nint main() {    \r\n\r\n    int number1, number2, sum;\r\n    \r\n   \r\n    scanf(\"%d %d\", &number1, &number2);\r\n\r\n    // calculating sum\r\n    sum = number1 + number2;      \r\n    \r\n    printf(\"%d\", sum);\r\n    return 0;\r\n}','011201240','Abdullah Al Sakib',5,20),(2,'sakib',2,'Week1','C Program to Add Two Integers','#include <stdio.h>\r\nint main() {    \r\n\r\n    int number1, number2, sum;\r\n    \r\n   \r\n    scanf(\"%d %d\", &number1, &number2);\r\n\r\n    // calculating sum\r\n    sum = number1 + number2;      \r\n    \r\n    printf(\"%d\", sum);\r\n    return 0;\r\n}','011201247','Mirza hasan',5,20),(3,'sakib',2,'Week1','C Program to Add Two Integers','#include <stdio.h>\r\nint main() {    \r\n\r\n    int number1, number2, sum;\r\n    \r\n    \r\n    scanf(\"%d %d\", &number1, &number2);\r\n\r\n    // calculating sum\r\n    sum = number1 + number2;      \r\n    \r\n    printf(\" %d\", sum);\r\n    return 0;\r\n}\r\n','011201240','Abdullah Al Sakib',5,20),(4,'sakib',2,'Week1','C Program to Add Two Integers','#include <stdio.h>\r\nint main() {    \r\n\r\n    int number1, number2, sum;\r\n    \r\n  \r\n    scanf(\"%d %d\", &number1, &number2);\r\n\r\n    // calculating sum\r\n    sum = number1 + number2;      \r\n    \r\n    printf(\" %d\", sum);\r\n    return 0;\r\n}\r\n','011201260','Arshadul Mokaddis',5,20),(5,'Coding Test 1',2,'Week1','C Program to Add Two Integers','#include <stdio.h>\r\nint main() {    \r\n\r\n    int number1, number2, sum;\r\n    \r\n\r\n    scanf(\"%d %d\", &number1, &number2);\r\n\r\n    // calculating sum\r\n    sum = number1 + number2;      \r\n    \r\n    printf(\"%d\",  sum);\r\n    return 0;\r\n}\r\n','011201240','Abdullah Al Sakib',7,10),(6,'Coding Test 1',2,'Week1','C Program to Add Two Integers','#include <stdio.h>\r\nint main() {    \r\n\r\n    int number1, number2, sum;\r\n    \r\n    \r\n    scanf(\"%d %d\", &number1, &number2);\r\n\r\n    // calculate the sum\r\n    sum = number1 + number2;      \r\n    \r\n    printf(\"%d\",  sum);\r\n    return 0;\r\n}','011201240','Abdullah Al Sakib',7,10);
/*!40000 ALTER TABLE `codemark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Phone_number` varchar(20) NOT NULL,
  `Comment` varchar(500) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (1,'gwegewqew','ege','eherh','egew'),(2,'egw','ewg','wegqewewg','wegewg'),(3,'sdgS','drhaerh','dhaeh','reher'),(4,'egewgsa','dsbgdgbd','sdgsadg','asdgsdg'),(5,'AFQWF','EWQY34Y','QY43Y','EQYQ34Y'),(6,'gg','hh','hh','gg');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` varchar(200) NOT NULL,
  `cname` varchar(1000) NOT NULL,
  `section` varchar(200) NOT NULL,
  `tname` varchar(200) NOT NULL,
  `tid` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `Room` varchar(100) NOT NULL,
  `ctimestart` varchar(100) NOT NULL,
  `ctimeend` varchar(100) NOT NULL,
  `occupied` int(11) NOT NULL,
  `credit` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (16,' CSE 1111','Structured Programming Language','A','Mr. Farhan Anan Himu','FAH','CSE','401','08:30','10:00',40,3),(17,' CSE 1111','Structured Programming Language','B',' Anika Tasnim Rodela','ATR','CSE','402','10:00','11:30',40,3),(19,' CSE 1111','Structured Programming Language','C','Mr. Md. Benzir Ahamed','BA','CSE','406','15:00','16:30',40,3),(20,'CSE 1115 ','Object-Oriented Programming','A','Dr. Dewan Md. Farid','DF','CSE','401','10:00','12:30',40,3),(21,'CSE 1115 ','Object-Oriented Programming','B','Mr. Farhan Anan Himu','FAH','CSE','403','12:00','13:30',40,3),(22,'CSE 1115 ','Object-Oriented Programming','C','Md. Rayhan Ahmed','RA','CSE','405','14:00','15:30',40,3),(23,'CSE 2215','Data Structure and Algorithms I','A','MD. TAREK HASAN','TH','CSE','421','09:00','10:30',40,3),(24,'CSE 2215','Data Structure and Algorithms I','B','Md. Mohaiminul Islam','MOI','CSE','406','13:00','14:30',40,3),(25,'CSE 2215','Data Structure and Algorithms I','C','Dr.Mohammad Nurul Huda','MNH','CSE','329','10:30','12:00',40,3),(26,'CSE 2213 ','Discrete Mathematics','A','Minhajul Bashir','MB','CSE','402','08:00','09:30',40,3),(27,'CSE 2213 ','Discrete Mathematics','B','Mr. Md. Mumtahin Habib Ullah Mazumder','MHU','CSE','401','13:00','14:30',40,3),(28,'CSE 2213 ','Discrete Mathematics','E','Md. Rayhan Ahmed','RA','CSE','406','09:00','10:30',40,3),(30,'CSE 3521','Database Management Systems','E','Sadia Islam','SAI','CSE','402','15:00','16:30',40,3),(31,'CSE 3521','Database Management Systems','B','Mr. Farhan Anan Himu','FAH','CSE','401','10:00','11:30',40,3),(32,'CSE 3521','Database Management Systems','A','Sadia Islam','SAI','CSE','404','08:00','09:30',40,3),(33,'CSE 2217','Data Structure and Algorithms II','A','MD. TAREK HASAN','TH','CSE','424','10:30','12:00',40,3),(34,'CSE 2217','Data Structure and Algorithms II','D','Fariha Tabassum Islam','FTI','CSE','433','14:00','15:30',40,3),(35,'CSE 2217','Data Structure and Algorithms II','E','Gourab Saha','GS','CSE','405','10:00','11:30',40,3),(36,'CSE 3522','Database Management Systems Laboratory','C','Md. Mohaiminul Islam','MOI','CSE','425','11:00','13:30',38,1),(37,'CSE 123','Electronics','A','Mr. Md. Abir Hassan','AH','CSE','404','10:00','12:30',40,3),(38,'CSE 123','Electronics','B','Mr. Anik Mazumder','AM','CSE','403','08:30','10:00',40,3),(39,'CSE 123','Electronics','C','Mr. Md. Abir Hassan','AH','CSE','405','08:30','10:00',40,3),(40,'CSE 3313 ','Computer Architecture','A','Mr. Shoib Ahmed Shourav','SAS','CSE','429','10:30','12:00',40,3),(41,'CSE 3313 ','Computer Architecture','B','Mr. Anik Mazumder','AM','CSE','404','12:00','14:30',40,3),(42,'CSE 3313 ','Computer Architecture','D','Mr. Shoib Ahmed Shourav','SAS','CSE','402','12:00','13:30',40,3),(43,'CSE 2233','Theory of Computation','A','Mr. Akib Zaman','AZ','CSE','429','08:30','10:00',40,3),(44,'CSE 2233','Theory of Computation','C',' Anika Tasnim Rodela','ATR','CSE','404','14:00','15:30',40,3),(45,'CSE 2233','Computer Architecture','B','Ms. Farhanaz Farheen','FF','CSE','403','10:30','12:00',40,3),(46,'CSE 3522','Database Management Systems Laboratory','A','Dr. Salekul Islam','SI','CSE','525','08:30','11:00',38,1),(47,'CSE 3522','Database Management Systems Laboratory','B','Sadia Islam','SAI','CSE','530','11:00','13:30',38,1),(48,'CSE 1325','Digital Logic Design','A','Minhajul Bashir','MB','CSE','406','11:00','12:30',40,3),(49,'CSE 1325','Digital Logic Design','B','Mr. Shoib Ahmed Shourav','SAS','CSE','407','08:30','10:00',40,3),(50,'CSE 1325 ','Digital Logic Design','C','Fariha Tabassum Islam','FTI','CSE','407','11:00','12:30',40,3),(51,'CSE 4325 ','Microprocessors and Microcontrollers ','A','Mr. Md. Mahbub Hossain Raton','MHR','CSE','425','08:30','10:00',40,3),(52,'CSE 4325 ','Microprocessors and Microcontrollers ','C','Mr. Md. Mahbub Hossain Raton','MHR','CSE','408','11:30','13:00',40,3),(53,'CSE 4325 ','Microprocessors and Microcontrollers ','D','Fahim Hafiz','FH','CSE','408','08:30','10:00',40,3),(55,'CSE 3411 ','System Analysis and Design','A','Mr. Suman Ahmmed','SM','CSE','407','13:00','14:30',40,3),(56,'CSE 3411 ','System Analysis and Design','B','Adiba Shaira','AS','CSE','409','08:30','10:00',40,3),(57,'CSE 3421 ','Software Engineering','A','MD. TAREK HASAN','TH','CSE','413','01:30','03:00',40,3),(58,'CSE 3421 ','Software Engineering','B','Md. Rafi-Ur-Rashid','RUR','CSE','409','10:30','12:00',40,3),(59,'CSE 3811 ','Artificial Intelligence','A','Fariha Tabassum Islam','FTI','CSE','411','08:30','10:00',40,3),(60,'CSE 3811 ','Artificial Intelligence','B','Ms. Rubaiya Rahtin Khan','RRK','CSE','409','13:00','14:30',40,3),(61,'BIO 3105 ','Biology for Engineers','A','Ms.Nipa Roy','NR','CSE','408','13:30','15:00',40,3),(62,'BIO 3105 ','Biology for Engineers','B','Hasin Anupama Azhari','HAA','CSE','410','10:30','12:00',40,3),(63,'IPE 3401 ','Industrial and Operational Management','B','Gourab Kumar Roy','GKR','CSE','429','13:00','14:30',40,3),(64,'CSE 2118','Advanced Object Oriented Programming Laboratory','C','Ajwad Akil','AA','CSE','529','08:30','11:00',38,1),(65,' CSE 4165 ','Web Programming','F','Nahid Hossain','NH','CSE','410','13:00','14:30',40,3),(66,'CSE 4181 ','Mobile Application Development','B','Sufi Aurangzeb Hossain','SAH','CSE','411','10:30','12:00',40,3),(67,'MATH 2205 ','Probability and Statistics ','A','Jashodhan Saha','JS','CSE','405','12:00','13:30',40,3),(68,'CSE 3711 ','Computer Networks','A','Dr. Md. Abul Kashem Mia','AKM','CSE','412','10:30','12:00',40,3),(69,'CSE 3715 ','Data Communication','A','Moynuddin Ahmed Shibly','MAS','CSE','411','14:30','16:00',40,3),(70,'CSE 4889 ','Machine Learning','A','Dr. Dewan Md. Farid','DF','CSE','412','08:30','10:00',40,3),(72,'CSE 4521 ','Computer Graphics','A','Md. Hasan Al Kayem','HAK','CSE','412','13:30','15:00',40,3),(73,'CSE 4587 ','Cloud Computing','B','Dr. A.K.M. Muzahidul Islam','A.K.M','CSE','413','08:30','10:00',40,3),(74,'PHY 2105 ','Physics','B','Prof. Dr. Md. Abu Saklayen','ABS','CSE','412','10:30','12:00',40,3),(75,'EEE 1001','Electrical Circuits I ','A','Mr. B.K.M. Mizanur Rahman','BKM','EEE','601','08:30','10:00',40,3),(76,'EEE 1001','Electrical Circuits I ','C','Dr. M. Rezwan Khan','RK','EEE','602','10:30','12:00',40,3),(77,' EEE 1003','Electrical Circuits II','A','Dr. M. Rezwan Khan','RK','EEE','601','13:30','15:00',40,3),(78,'EEE 2101','Electronics I','A','Sandid Muneer','SnM','EEE','601','10:00','11:30',40,3),(79,' CHE 2101','Chemistry','A','Mr. Mohammad Mahboob Ali Siddiqi','MASQ','EEE','601','11:30','13:00',40,3),(80,' EEE 2401','Structured Programming Language','B','Mr. Salahuddin Ahmed','SAMD','EEE','602','08:30','10:00',40,3),(81,' EEE 2103','Electronics II','C','Mr. Md. Zubair Alam','ZA','EEE','603','10:30','12:00',40,3),(82,' EEE 2200','Electrical Wiring and Drafting','A','Mr. Md. Zubair Alam','ZA','EEE','602','13:00','15:30',40,3),(83,' EEE 2200','Electrical Wiring and Drafting','B','Mr. Avijit Saha','AVS','EEE','602','15:00','16:30',40,3),(84,'EEE 2201','Energy Conversion I ','A','Mr. B.K.M. Mizanur Rahman','BKM','EEE','604','10:30','12:00',40,3),(85,'EEE 2301','Signals and Linear Systems','A','Dr. Raqibul Mostafa','RM','EEE','603','08:30','10:00',40,3),(86,'EE 2203','Energy Conversion II','A','Dr. Intekhab Alam','IA','EEE','603','13:30','15:00',40,3),(87,'EEE 3107','Electrical Properties of Materials','A','Dr. Md. Iqbal Bahar Chowdhury','IBC','EEE','604','08:30','10:00',40,3),(88,'SOC 3101','Society, Environment and Engineering Ethics','A','Md. Mizanur Rahman','MR','EEE','604','13:30','15:00',40,3),(89,'EEE 3309','Digital Signal Processing','A','Dr. Raqibul Mostafa','RM','EEE','605','10:30','12:00',40,3),(90,'EEE 3205','Power System','A','Mr. B.K.M. Mizanur Rahman','BKM','EEE','605','15:00','16:30',40,3),(91,'IPE 4101','Industrial Production Engineering ','A','Gourab Kumar Roy','GR','EEE','604','15:00','16:30',40,3),(93,' EEE 2105 ','Digital Electronics','A','Mr. Md. Zubair Alam','ZA','EEE','605','08:30','10:00',40,3),(94,'EEE 3207 ','Power Electronics','A','Dr. Intekhab Alam','IA','EEE','605','12:30','14:00',40,3),(95,'EEE 3303','Probability, Statistics and Random Variables','A','Dr. Khawza Iftekhar Uddin Ahmed','KIUA','EEE','606','08:30','10:00',40,3),(96,' EEE 3403','Microprocessor and Interfacing','A','Mr. Salahuddin Ahmed','SAMD','EEE','606','10:30','12:00',40,3),(97,'EEE 3305','Engineering Electromagnetics','A','Mr. B.K.M. Mizanur Rahman','BKM','EEE','606','12:30','14:00',40,3),(99,'ECN 2214 ','Macroeconomics','A','Ms. Tanzila Amir','TA','BBA','301','08:30','10:00',40,3),(101,'BST 1308 ','Business Statistics I','B','Ms. Mimnun Sultana','MS','BBA','302','08:30','10:00',40,3),(102,'BST 2216','Business Statistics II','A','Md. Kazimul Hoque','KH','BBA','301','10:30','12:00',40,3),(103,'ACN 1205 ','Financial Accounting I','A','Mr. Mofijul Hoq Masum','MHM','BBA','301','12:30','14:00',40,3),(104,'ACN 2215 ','Management Accounting','B','Dr. Mohammad A. Ashraf','MAA','BBA','301','15:00','16:30',40,3),(105,'MGT 1307 ','Principles of Management','A','Mr. Mohammad Behroz Jalil','BJ','BBA','302','10:30','12:00',40,3),(106,'MGT 2318','Organizational Behavior','D','Mr. Mohammad Behroz Jalil','BJ','BBA','302','12:30','14:00',40,3),(108,'MGT 4356','Strategic Management','C','Prof. Dr. Abu Saleh Md. Sohel-Uz-Zaman','ASSZ','BBA','303','08:30','10:00',40,3),(109,'FIN 2319 ','Principles of Finance','B','Md. Qamruzzaman','MQ','BBA','302','15:00','16:30',40,3),(110,'CST 1206','Computer Applications','A','Jerin Haque Chhanda','JHC','BBA','303','10:30','12:00',40,3),(111,'IBS 3338','Export Import Management','B','Dr. Seyama Sultana','SeyS','BBA','303','12:30','14:00',40,3),(112,'ACN 4135 ','Taxation','C','Mr. Mofijul Hoq Masum','MHM','BBA','303','15:00','16:30',40,3),(113,'MKT 4309','Global Marketing','A','Dr. Seyama Sultana','SeyS','BBA','304','08:30','10:00',40,3),(114,'MKT 4308','Supply Chain Management','B','Mr. Abu Zafar Md. Rashed Osman','ARO','BBA','304','10:30','12:00',40,3),(115,'HRM 4365 ','Change Management','A','Ms. Ishrat Sultana','IS','BBA','304','12:30','14:00',40,3),(116,'CSE ','Object Oriented Programming','A','','3556u7','CSE','423','13:12','13:13',40,3),(117,'CSI 122','Structured Programming Language Lab','A','Fariha Tabassum Islam','FTI','CSE','422','8:30','11:00',38,1),(118,'CSI 122','Structured Programming Language Lab','B','Fariha Tabassum Islam','FTI','CSE','522','14:00','16:30',38,1),(119,'CSI 122','Structured Programming Language Lab','C','Fahim Hafiz','FH','CSE','422','14:00','16:30',38,1),(120,'CSI 212','Object-Oriented Programming Laboratory','A','Fahim Hafiz','FH','CSE','622','8:30','11:00',38,1),(121,'CSI 212','Object-Oriented Programming Laboratory','B','Fahim Hafiz','FH','CSE','622','8:30','11:00',38,1),(122,'CSI 212','Object-Oriented Programming Laboratory','C','Fariha Tabassum Islam','FTI','CSE','622','8:30','11:00',38,1),(123,'CSE 426','Microprocessor, Microcontroller and Interfacing Laboratory','A','Mr. Md. Mahbub Hossain Raton','MHR','CSE','402','8:30','11:00',38,1),(124,'CSE 426','Microprocessor, Microcontroller and Interfacing Laboratory','B','Mr. Md. Mahbub Hossain Raton','MHR','CSE','402','8:30','11:00',38,1),(125,'CSE 426','Microprocessor, Microcontroller and Interfacing Laboratory','C','Mr. Md. Mahbub Hossain Raton','MHR','CSE','402','14:00','16:30',38,1),(126,'CSE 124','Electronics Laboratory','A','Mr. Anik Mazumder','AM','CSE','407','14:00','16:30',38,1),(127,'CSE 124','Electronics Laboratory','B','Mr. Anik Mazumder','AM','CSE','407','14:00','16:30',38,1),(128,'CSE 124','Electronics Laboratory','C','Mr. Md. Abir Hassan','AH','CSE','407','8:30','11:00',38,1),(129,'CSE 324','Computer Networks Laboratory','A','Anika Tasnim Rodela','ATR','CSE','730','8:30','11:00',38,1),(130,'CSE 324','Computer Networks Laboratory','B','Anika Tasnim Rodela','ATR','CSE','730','8:30','11:00',38,1),(131,'CSE 324','Computer Networks Laboratory','C','Anika Tasnim Rodela','ATR','CSE','730','11:00','13:30',38,1),(132,'CSE 2216','Data Structure and Algorithms I Laboratory','A','Mr. Akib Zaman','AZ','CSE','730','8:30','11:00',38,1),(133,'CSE 2216','Data Structure and Algorithms I Laboratory','B','Mr. Akib Zaman','AZ','CSE','730','14:00','16:30',38,1),(134,'CSE 2216','Data Structure and Algorithms I Laboratory','C','Mr. Akib Zaman','AZ','CSE','730','14:00','16:30',38,1),(135,'CSE 2218','Data Structure and Algorithms II Laboratory','A','Mr. Farhan Anan Himu','FAH','CSE','324','14:00','16:30',38,1),(136,'CSE 2218','Data Structure and Algorithms II Laboratory','B','Mr. Farhan Anan Himu','FAH','CSE','324','8:30','11:00',38,1),(137,'CSE 2218','Data Structure and Algorithms II Laboratory','C','Ajwad Akil','AA','CSE','324','8:30','11:00',38,1);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coursevideo`
--

DROP TABLE IF EXISTS `coursevideo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coursevideo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `cid` varchar(255) NOT NULL,
  `weak` varchar(255) NOT NULL,
  `title` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coursevideo`
--

LOCK TABLES `coursevideo` WRITE;
/*!40000 ALTER TABLE `coursevideo` DISABLE KEYS */;
INSERT INTO `coursevideo` VALUES (5,'VIDEO-635f705d0a1019.90793742.mp4','','',''),(6,'VIDEO-635f70bece7946.46864976.mp4','','',''),(7,'VIDEO-635f70d5e1cc51.51460866.mp4','','',''),(8,'VIDEO-635f711ab0e075.61383018.mp4','','',''),(9,'VIDEO-635f713aad1399.63300418.mp4','','',''),(10,'VIDEO-635f715131f573.00462746.mp4','','',''),(11,'VIDEO-635f716b3a36a9.29275140.mp4','','',''),(12,'VIDEO-635f7175793173.33533317.mp4','','',''),(13,'VIDEO-635f735bd801b5.93183603.mp4','','',''),(14,'VIDEO-635f736e6d6f03.89383785.mp4','','',''),(15,'VIDEO-635f73771f79f8.26022293.mp4','','',''),(23,'VIDEO-63873271632c34.08530942.mp4','2','Week2',''),(24,'VIDEO-638735b053bb51.63270877.mp4','2','Week3','input output'),(31,'VIDEO-63b1ba023713a0.44312073.mp4','2','Week1','Break and Continue Statements In C'),(32,'VIDEO-63b1ba44727945.21489091.mp4','2','Week1','Do While Loop In C'),(33,'VIDEO-63b1baa282f869.34595333.mp4','2','Week1','Loops In C'),(34,'VIDEO-63b1baf8b843e7.55240472.mp4','2','Week1','C Exercise 1- Multiplication Table Solution + Shoutouts- C');
/*!40000 ALTER TABLE `coursevideo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `depertment`
--

DROP TABLE IF EXISTS `depertment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `depertment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `number` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `depertment`
--

LOCK TABLES `depertment` WRITE;
/*!40000 ALTER TABLE `depertment` DISABLE KEYS */;
INSERT INTO `depertment` VALUES (2,'CSE','mirzahasanlimon619@gmail.com','01623398837','81dc9bdb52d04dc20036dbd8313ed055'),(4,'BBA','sakib@cse.uiu.ac.bd','01755656599','81dc9bdb52d04dc20036dbd8313ed055');
/*!40000 ALTER TABLE `depertment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education`
--

DROP TABLE IF EXISTS `education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `education` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `start` varchar(255) NOT NULL,
  `end` varchar(255) NOT NULL,
  `sid` varchar(255) NOT NULL,
  `sname` varchar(255) NOT NULL,
  `hide` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education`
--

LOCK TABLES `education` WRITE;
/*!40000 ALTER TABLE `education` DISABLE KEYS */;
INSERT INTO `education` VALUES (1,'United International University','B.Sc. in Computer Science and Engineering',' 2020-01-08','','011201240','Abdullah Al Sakib',0),(4,'Milestone School And College','HSC',' 2017-06-08','2019-04-30','011201240','Abdullah Al Sakib',0);
/*!40000 ALTER TABLE `education` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enroll`
--

DROP TABLE IF EXISTS `enroll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enroll` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `sid` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enroll`
--

LOCK TABLES `enroll` WRITE;
/*!40000 ALTER TABLE `enroll` DISABLE KEYS */;
INSERT INTO `enroll` VALUES (1,12,'011201240'),(2,3,'011201240'),(3,2,'011201240'),(4,2,'011201247'),(5,2,'011201260');
/*!40000 ALTER TABLE `enroll` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `experience`
--

DROP TABLE IF EXISTS `experience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `experience` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `companyname` varchar(255) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `sid` varchar(255) NOT NULL,
  `start` varchar(200) NOT NULL,
  `end` varchar(200) NOT NULL,
  `hide` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experience`
--

LOCK TABLES `experience` WRITE;
/*!40000 ALTER TABLE `experience` DISABLE KEYS */;
INSERT INTO `experience` VALUES (4,'Associate Media Communication',' UIU APP FORUM',' This is very good Forum I love it. Thank you','011201240','2022-08-10','Present',0);
/*!40000 ALTER TABLE `experience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graderpyment`
--

DROP TABLE IF EXISTS `graderpyment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `graderpyment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` varchar(200) NOT NULL,
  `sname` varchar(255) NOT NULL,
  `as1` varchar(255) NOT NULL,
  `as2` varchar(200) NOT NULL,
  `as3` varchar(200) NOT NULL,
  `as4` varchar(200) NOT NULL,
  `cid` varchar(200) NOT NULL,
  `section` varchar(200) NOT NULL,
  `status` varchar(255) NOT NULL,
  `tid` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graderpyment`
--

LOCK TABLES `graderpyment` WRITE;
/*!40000 ALTER TABLE `graderpyment` DISABLE KEYS */;
INSERT INTO `graderpyment` VALUES (82,'011201240','Abdullah Al Sakib','40','40','50','56','CSE 1115','B','Pending',''),(83,'011201240','Mirza hasan','40','40','50','50','CSE 1115','B','Pending',''),(84,'011201240','Abdullah Al Sakib','40','40','50','56','CSE 1111','A','Pending','FAH'),(85,'011201240','Abdullah Al Sakib','40','40','50','50','CSE 1111','B','Pending','AM'),(86,'011201240','Habib','40','40','50','50','CSE 2215','A','Pending','AH'),(87,'011201240','Mirza hasan','40','40','50','50','CSE 2215','B','Pending','A.K.M');
/*!40000 ALTER TABLE `graderpyment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mark`
--

DROP TABLE IF EXISTS `mark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ename` varchar(100) NOT NULL,
  `week` varchar(100) NOT NULL,
  `sid` varchar(100) NOT NULL,
  `mark` int(11) NOT NULL,
  `tmark` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mark`
--

LOCK TABLES `mark` WRITE;
/*!40000 ALTER TABLE `mark` DISABLE KEYS */;
INSERT INTO `mark` VALUES (26,'Class Test 1','Week1','011201240',1,3,2),(27,'Class Test 1','Week1','011201240',1,3,2),(28,'Class Test 1','Week1','011201240',3,3,2),(29,'Coding Test 1','Week1','011201240',18,20,2),(30,'Class Test 1','Week1','011201240',3,3,2),(31,'Class Test 1','Week1','011201240',0,3,2),(32,'Class Test 1','Week1','011201240',0,3,2),(33,'Class Test 1','Week1','011201240',0,3,2),(34,'Class Test 1','Week1','011201240',0,3,2);
/*!40000 ALTER TABLE `mark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material`
--

DROP TABLE IF EXISTS `material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `material` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `week` varchar(255) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `link` varchar(1000) NOT NULL,
  `file` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material`
--

LOCK TABLES `material` WRITE;
/*!40000 ALTER TABLE `material` DISABLE KEYS */;
INSERT INTO `material` VALUES (5,2,'Week1','Book','','Book.63b1bb44ea55e7.95312352.pdf'),(6,2,'Week1','C Code Practice','https://www.w3resource.com/c-programming-exercises/',''),(7,2,'Week1','c programming_ tutorial','','c programming_ tutorial.63b1bcd386b9a3.65713215.pdf'),(8,2,'Week1','Sakib','rh3h','');
/*!40000 ALTER TABLE `material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mcq`
--

DROP TABLE IF EXISTS `mcq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mcq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(200) NOT NULL,
  `ename` varchar(255) NOT NULL,
  `week` varchar(255) NOT NULL,
  `qus` varchar(10000) NOT NULL,
  `option1` varchar(1000) NOT NULL,
  `option2` varchar(1000) NOT NULL,
  `option3` varchar(1000) NOT NULL,
  `option4` varchar(1000) NOT NULL,
  `answer` varchar(1000) NOT NULL,
  `time` int(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mcq`
--

LOCK TABLES `mcq` WRITE;
/*!40000 ALTER TABLE `mcq` DISABLE KEYS */;
INSERT INTO `mcq` VALUES (13,2,'Class Test 1','Week1',' What is a lint?','C compiler','Interactive debugger','Analyzing tool','C interpreter','Analyzing tool',1,''),(14,2,'Class Test 1','Week1','What is the output of this statement \"printf(\"%d\", (a++))\"?','The value of (a + 1)','The current value of a','Error message','Garbage','The current value of a',1,''),(15,2,'Class Test 1','Week1','Study the following program:','6','9','12','8','8',1,'IMG-63b1bf50d6a559.34875904.png');
/*!40000 ALTER TABLE `mcq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participants`
--

DROP TABLE IF EXISTS `participants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `participants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ename` varchar(200) NOT NULL,
  `cid` int(11) NOT NULL,
  `week` varchar(255) NOT NULL,
  `sname` varchar(200) NOT NULL,
  `sid` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participants`
--

LOCK TABLES `participants` WRITE;
/*!40000 ALTER TABLE `participants` DISABLE KEYS */;
INSERT INTO `participants` VALUES (1,'sakib',2,'Week1','Mirza hasan','011201247'),(2,'sakib',2,'Week1','Abdullah Al Sakib','011201240'),(3,'sakib',2,'Week1','Abdullah Al Sakib','011201240'),(4,'sakib',2,'Week1','Abdullah Al Sakib','011201240'),(5,'Basic C',2,'Week1','Abdullah Al Sakib','011201240'),(6,'Basic',2,'Week1','Abdullah Al Sakib','011201240'),(7,'Basic C',2,'Week1','Abdullah Al Sakib','011201240'),(8,'Basic C',2,'Week1','Abdullah Al Sakib','011201240'),(9,'Basic C',2,'Week1','Abdullah Al Sakib','011201240'),(10,'sakib',2,'Week1','Abdullah Al Sakib','011201240'),(11,'sakib',2,'Week1','Abdullah Al Sakib','011201240'),(12,'sakib',2,'Week1','Abdullah Al Sakib','011201240'),(13,'sakib',2,'Week1','Abdullah Al Sakib','011201240'),(14,'sakib',2,'Week1','Abdullah Al Sakib','011201240'),(15,'sakib',2,'Week1','Abdullah Al Sakib','011201240'),(16,'sakib',2,'Week1','Abdullah Al Sakib','011201240'),(17,'sakib',2,'Week1','Abdullah Al Sakib','011201240'),(18,'sakib',2,'Week1','Mirza hasan','011201247'),(19,'sakib',2,'Week1','Mirza hasan','011201247'),(20,'sakib',2,'Week1','Mirza hasan','011201247'),(21,'sakib',2,'Week1','Abdullah Al Sakib','011201240'),(22,'sakib',2,'Week1','Arshadul Mokaddis','011201260'),(23,'Basic',2,'Week1','Abdullah Al Sakib','011201240'),(24,'Basic',2,'Week1','Abdullah Al Sakib','011201240'),(25,'Basic',2,'Week1','Abdullah Al Sakib','011201240'),(26,'sakib',2,'Week1','Abdullah Al Sakib','011201240'),(27,'Basic',2,'Week1','Abdullah Al Sakib','011201240'),(28,'Basic',2,'Week1','Abdullah Al Sakib','011201240'),(29,'sakib',2,'Week1','Abdullah Al Sakib','011201240'),(30,'Basic',2,'Week1','Abdullah Al Sakib','011201240'),(31,'Basic',2,'Week1','Abdullah Al Sakib','011201240'),(32,'Basic',2,'Week1','Abdullah Al Sakib','011201240'),(33,'Basic',2,'Week1','Abdullah Al Sakib','011201240'),(34,'Basic',2,'Week1','Abdullah Al Sakib','011201240'),(35,'Basic',2,'Week1','Abdullah Al Sakib','011201240'),(36,'Basic',2,'Week1','Abdullah Al Sakib','011201240'),(37,'sakib',2,'Week1','Abdullah Al Sakib','011201240'),(38,'sakib',2,'Week1','Abdullah Al Sakib','011201240'),(39,'Class Test 1',2,'Week1','Abdullah Al Sakib','011201240'),(40,'Class Test 1',2,'Week1','Abdullah Al Sakib','011201240'),(41,'Class Test 1',2,'Week1','Abdullah Al Sakib','011201240'),(42,'Coding Test 1',2,'Week1','Abdullah Al Sakib','011201240'),(43,'Coding Test 1',2,'Week1','Abdullah Al Sakib','011201240'),(44,'Coding Test 1',2,'Week1','Abdullah Al Sakib','011201240'),(45,'Coding Test 1',2,'Week1','Abdullah Al Sakib','011201240'),(46,'Coding Test 1',2,'Week1','Abdullah Al Sakib','011201240'),(47,'Class Test 1',2,'Week1','Abdullah Al Sakib','011201240'),(48,'Class Test 1',2,'Week1','Abdullah Al Sakib','011201240'),(49,'Class Test 1',2,'Week1','Abdullah Al Sakib','011201240'),(50,'Class Test 1',2,'Week1','Abdullah Al Sakib','011201240'),(51,'Coding Test 1',2,'Week1','Abdullah Al Sakib','011201240'),(52,'Class Test 1',2,'Week1','Abdullah Al Sakib','011201240'),(53,'Coding Test 1',2,'Week1','Abdullah Al Sakib','011201240'),(54,'Coding Test 1',2,'Week1','Abdullah Al Sakib','011201240'),(55,'Coding Test 1',2,'Week1','Abdullah Al Sakib','011201240'),(56,'Class Test 1',2,'Week1','Abdullah Al Sakib','011201240'),(57,'Class Test 1',2,'Week1','Abdullah Al Sakib','011201240'),(58,'Class Test 1',2,'Week1','Abdullah Al Sakib','011201240'),(59,'Coding Test 1',2,'Week1','Abdullah Al Sakib','011201240'),(60,'Class Test 1',2,'Week1','Abdullah Al Sakib','011201240'),(61,'Class Test 1',2,'Week1','Abdullah Al Sakib','011201240'),(62,'Class Test 1',2,'Week1','Abdullah Al Sakib','011201240');
/*!40000 ALTER TABLE `participants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `project_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_name` varchar(200) NOT NULL,
  `project_dis` varchar(10000) NOT NULL,
  `project_link` varchar(1000) NOT NULL,
  `sid` varchar(100) NOT NULL,
  `sname` varchar(200) NOT NULL,
  `hide` int(11) NOT NULL,
  `fid` varchar(255) NOT NULL,
  `tri` varchar(255) NOT NULL,
  `cid` varchar(255) NOT NULL,
  `cname` varchar(200) NOT NULL,
  `sec` varchar(200) NOT NULL,
  `tn` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `video` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (1,'UIU Activity Tracker','1.Using Html Css Php Mysqlgwet2e','https://abdullah201240.github.io/personal_website/','011201240','Abdullah Al Sakib',0,'','','','','','','','',''),(12,'Automatic Water pump and water level Detectoreceteor',' Components: \r\n1. Arduino-Uno\r\n2. Dc motor\r\n3.Buzzer\r\n4.Ultrasonic Sensor\r\nMy first personal project for Circuit lab. This is a very elementary level project.\r\n','','021213001','Nissan Biswas',0,'','','','','','','','',''),(15,'Chat Server','You can massage anyone using this website.','https://chatapp7075.000webhostapp.com/login.php','011201240','Abdullah Al Sakib',0,'','','','','','','','',''),(17,'Find books easily','This is my university electronic lab project. This project help people to find a book easily and this is a hardware base project using arduino uno.','https://github.com/abdullah201240/Find_books_easily','011201240','Abdullah Al Sakib',0,'','','','','','','','',''),(19,'UIU Academic Buddy','Using Html Css php mysql','','011201240','Abdullah Al Sakib',0,'SAH','Spring 2023','CSE 3422','Software Engineering Laboratory','A','Team Echo','','uiu.mp4',''),(21,'3t134y','rherhdfbheh','reerheh','011201240','Abdullah Al Sakib',0,'','','','','','','','',''),(22,'The master tech','The project is mainly used for students. Student can get many things from this project. And It will be very helpful for their future.','','011201240','Abdullah Al Sakib',0,'SAI','Spring 2023','CSE 3522','Database Management Systems Laboratory','A','Team Echo','','','Champion'),(23,'UIU Technical Error','This is the project for UIU students. Students can benefited for using this project. They can collaborate with the Alumni for make good decision and get information for their future job.','','011201240','Abdullah Al Sakib',0,'MOI','Summer 2023','CSE 3412','System Analysis and Design Laboratory','C','Team Echo','','',''),(24,'Make more efficient','This project help to generate some good Idea for create high level project. It also help to get the good source and make a good relations. ','','011201240','Abdullah Al Sakib',0,'AA','Fall 2023','CSE 3422','Software Engineering Laboratory','B','Team Echo','','',''),(25,'UIU ECATES','Lab Project','','011201240','Abdullah Al Sakib',0,'HS','Spring 2023','CSE 3412','Software Engineering Laboratory','A','Team Echo','','',''),(26,'TA requirement ','NA','','011201305','Umme Aimon Bristy',0,'SAI','Spring 2023','CSE 3522','Database Management Systems Laboratory','A','','','',''),(27,'House rental ','Ka','','011201305','Umme Aimon Bristy',0,'SAI','Spring 2023','CSE 3522','Database Management Systems Laboratory','B','','','',''),(28,'Smart marker service ','MIcro','','011201305','Umme Aimon Bristy',0,'MHR','Spring 2023','','Microprocessors and Microcontrollers Laboratory','A','','','',''),(29,'Smart marker service ','Micro','','011201305','Umme Aimon Bristy',0,'MHR','Spring 2023','CSE 4326','Microprocessors and Microcontrollers Laboratory','A','','','',''),(30,'Automatic railway Station gate control ','Nsbs','','011201305','Umme Aimon Bristy',0,'gh','Spring 2023','CSE 4326','Microprocessors and Microcontrollers Laboratory','B','','','',''),(31,'Hospital management ','Nsksk','','011201305','Umme Aimon Bristy',0,'ATR','Spring 2023','CSE 3522','Database Management Systems Laboratory','C','','','',''),(32,'Bank management system ','Nsmjd','','011201305','Umme Aimon Bristy',0,'FTI','Summer 2023','CSE 3412','System Analysis and Design Laboratory','C','','','',''),(33,'UIU solutions ','Nsnsb','','011201305','Umme Aimon Bristy',0,'MI','Summer 2023','CSE 3412','System Analysis and Design Laboratory','B','','','',''),(34,'Bus tickets with seat booking system ','nsksj','','011201305','Umme Aimon Bristy',0,'HAK','Fall 2023','CSE 2118','Advanced Object Oriented Programming Lab','A','','','',''),(35,'Smart sport room','Bhff','','011201305','Umme Aimon Bristy',0,'AH','Summer 2023','EEE 2124','Electronics Laboratory','C','','','',''),(36,'UIU E-CATS','Vgfhx','','011201305','Umme Aimon Bristy',0,'MI','Spring 2023','CSE 3422','Software Engineering Laboratory','A','','','',''),(37,'Smart watch ','Hsjsjsb','','011201305','Umme Aimon Bristy',0,'AM','Spring 2023','EEE 2124','Electronics Laboratory','B','','','','');
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_faculty`
--

DROP TABLE IF EXISTS `project_faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_faculty` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `fid` varchar(255) NOT NULL,
  `project_id` int(11) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_faculty`
--

LOCK TABLES `project_faculty` WRITE;
/*!40000 ALTER TABLE `project_faculty` DISABLE KEYS */;
INSERT INTO `project_faculty` VALUES (3,'Md. Mohaiminul Islam','MOI',8,'Verified'),(5,'Mr. Akib Zaman','AZ',9,'Pending'),(9,'Md. Mohaiminul Islam','MOI',11,'Verified'),(10,'Mr. Md. Nadeem Chowdhury','NC',12,'Verified'),(20,'Sadia Islam','SAI',1,'Verified'),(21,'Mr. Anik Mazumder','AM',17,'Verified'),(22,'Abdullah Al Sakib','sakib1122',1,'Verified');
/*!40000 ALTER TABLE `project_faculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_image`
--

DROP TABLE IF EXISTS `project_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_image` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `imageid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`imageid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_image`
--

LOCK TABLES `project_image` WRITE;
/*!40000 ALTER TABLE `project_image` DISABLE KEYS */;
INSERT INTO `project_image` VALUES (19,'IMG-63208117bf0c63.79678535.png',9),(19,'IMG-63208122631222.27443189.png',10);
/*!40000 ALTER TABLE `project_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_partner`
--

DROP TABLE IF EXISTS `project_partner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_partner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `partnerName` varchar(100) NOT NULL,
  `partnerID` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_partner`
--

LOCK TABLES `project_partner` WRITE;
/*!40000 ALTER TABLE `project_partner` DISABLE KEYS */;
INSERT INTO `project_partner` VALUES (16,1,'Arshadul Mokaddis','011201260'),(17,19,'Mirza hasan','011201247'),(18,17,'Mirza hasan','011201247'),(19,19,'Arshadul Mokaddis','011201260'),(20,1,'Abdullah Al Sakib','011201240'),(21,1,'Mirza hasan','011201247');
/*!40000 ALTER TABLE `project_partner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `result`
--

DROP TABLE IF EXISTS `result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `result` (
  `Student_Name` varchar(70) NOT NULL,
  `Student_Id` int(11) NOT NULL,
  `Course_Name` varchar(80) NOT NULL,
  `Course_Id` text NOT NULL,
  `Result` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `result`
--

LOCK TABLES `result` WRITE;
/*!40000 ALTER TABLE `result` DISABLE KEYS */;
INSERT INTO `result` VALUES ('Abdullah Al Sakib',11201240,'Calculus and Linear Algebra','MATH 2183','A'),('Shabrina Airen Esha ',11201005,'Calculus and Linear Algebra','MATH 2183','A'),('Shahariar Sarkar',11201237,'Calculus and Linear Algebra','MATH 2183','A'),('Umme Aimon Bristy',11201305,'Calculus and Linear Algebra','MATH 2183','A'),('Abdullah Al Sakib',11201240,'Structured Programming Language','CSE 1111','A'),('Shabrina Airen Esha',11201005,'Structured Programming Language','CSE 1111','A'),('Shahariar Sarkar',11201237,'Structured Programming Language','CSE 1111','A'),('Umme Aimon Bristy',11201305,'Structured Programming Language','CSE 1111','A-'),('Shahariar Sarkar',11201237,'Structured Programming Language Laboratory','CSE 1112','A'),('Abdullah Al Sakib',11201240,'Structured Programming Language Laboratory','CSE 1112','A'),('Shabrina Airen Esha',11201005,'Structured Programming Language Laboratory','CSE 1112','A'),('Umme Aimon Bristy',11201305,'Structured Programming Language Laboratory','CSE 1112','A-'),('Shahariar Sarkar',11201237,'Object Oriented Programming','CSE 1115','A'),('Abdullah Al Sakib',11201240,'Object Oriented Programming','CSE 1115','A'),('Shabrina Airen Esha',11201005,'Object Oriented Programming','CSE 1115','A'),('Umme Aimon Bristy',11201305,'Object Oriented Programming','CSE 1115','B'),('Abdullah Al Sakib',11201240,'Object Oriented Programming Laboratory','CSE 1116','A'),('Shahariar Sarkar',11201237,'Object Oriented Programming Laboratory','CSE 1116','A-'),('Shabrina Airen Esha',11201005,'Object Oriented Programming Laboratory','CSE 1116','A'),('Umme Aimon Bristy',11201305,'Object Oriented Programming Laboratory','CSE 1116','B+'),('Shabrina Airen Esha ',11201005,'System Analysis and Design','CSE 3411','A-'),('Shahariar Sarkar',11201237,'System Analysis and Design','CSE 3411','A'),('Abdullah Al Sakib',11201240,'System Analysis and Design','CSE 3411','A'),('Umme Aimon Bristy',11201305,'System Analysis and Design','CSE 3411','B'),('Shabrina Airen Esha',11201005,'System Analysis and Design Laboratory','CSE 3412','A-'),('Shahariar sarkar',11201237,'System Analysis and Design Laboratory','CSE 3412','A-'),('Abdullah Al Sakib',11201240,'System Analysis and Design Laboratory','CSE 3412','A'),('Umme Aimon Bristy',11201305,'System Analysis and Design Laboratory','CSE 3412','A-'),('Abdullah Al Sakib',11201240,' Database Management Systems','CSE 3521','A'),('Shahariar Sarkar',11201237,' Database Management Systems','CSE 3521','A'),('Shabrina Airen Esha',11201005,' Database Management Systems','CSE 3521','A'),('Umme Aimon Bristy',11201305,' Database Management Systems','CSE 3521','B'),('Abdullah Al Sakib',11201240,'Database Management Systems Laboratory','CSE 3522','A'),('Shahariar Sarkar',11201237,'Database Management Systems Laboratory','CSE 3522','A'),('Shabrina Airen Esha',11201005,'Database Management Systems Laboratory','CSE 3522','A'),('Umme Aimon Bristy',11201305,'Database Management Systems Laboratory','CSE 3522','A'),('Abdullah Al Sakib',11201240,'Computer Networks','CSE 3711','A'),('Shahariar Sarkar',11201237,'Computer Networks','CSE 3711','A'),('Shabrina Airen Esha',11201005,'Computer Networks','CSE 3711','A'),('Umme Aimon Bristy',11201305,'Computer Networks','CSE 3711','B-'),('Abdullah Al Sakib',11201240,'Computer Networks Laboratory','CSE 3712','A'),('Shahariar Sarkar',11201237,'Computer Networks Laboratory','CSE 3712','A'),('Shabrina Airen Esha',11201005,'Computer Networks Laboratory','CSE 3712','A'),('Umme Aimon Bristy',11201305,'Computer Networks Laboratory','CSE 3712','A-'),('Shabrina Airen Esha',11201005,'Coordinate Geometry and Vector Analysis','MATH 2201','A'),('Shahariar Sarkar',11201237,'Coordinate Geometry and Vector Analysis','MATH 2201','A'),('Abdullah Al Sakib',11201240,'Coordinate Geometry and Vector Analysis','MATH 2201','A'),('Umme Aimon Bristy',11201305,'Coordinate Geometry and Vector Analysis','MATH 2201','A'),('Shabrina Airen Esha',11201005,' Software Engineering','CSE 3421','A'),('Shahariar Sarkar',11201237,' Software Engineering','CSE 3421','A'),('Abdullah Al Sakib',11201240,' Software Engineering','CSE 3421','A'),('Umme Aimon Bristy',11201305,' Software Engineering','CSE 3421','B-'),('Shabrina Airen Esha',11201005,'Software Engineering Laboratory','CSE 3422','A'),('Shahariar Sarkar',11201237,'Software Engineering Laboratory','CSE 3422','A'),('Abdullah Al Sakib',11201240,'Software Engineering Laboratory','CSE 3422','A'),('Umme Aimon Bristy',11201305,'Software Engineering Laboratory','CSE 3422','A'),('Shabrina Airen Esha',11201005,'Data Structure and Algorithms I','CSE 2215','A'),('Shahariar Sarkar',11201237,'Data Structure and Algorithms I','CSE 2215','A'),('Abdullah Al Sakib',11201240,'Data Structure and Algorithms I','CSE 2215','A'),('Umme Aimon Bristy',11201305,'Data Structure and Algorithms I','CSE 2215','B+'),('Shabrina Airen Esha ',111201005,'Data Structure and Algorithms I Laboratory','CSE 2216','A'),('Shahariar Sarkar',11201237,'Data Structure and Algorithms I Laboratory','CSE 2216','A-'),('Abdullah Al Sakib',11201240,'Data Structure and Algorithms I Laboratory','CSE 2216','A'),('Umme Aimon Bristy',11201305,'Data Structure and Algorithms I Laboratory','CSE 2216','B+'),('Shabrina Airen Esha',11201005,' Data Structure and Algorithms II','CSE 2217','A'),('Shahariar Sarkar',11201237,' Data Structure and Algorithms II','CSE 2217','A'),('Abdullah Al Sakib',11201240,' Data Structure and Algorithms II','CSE 2217','A'),('Umme Aimon Bristy',11201305,' Data Structure and Algorithms II','CSE 2217','B'),('Shabrina Airen Esha',11201005,'Data Structure and Algorithms II Laboratory','CSE 2218','A'),('Shahariar Sarkar',11201237,'Data Structure and Algorithms II Laboratory','CSE 2218','A'),('Abdullah Al Sakib',11201240,'Data Structure and Algorithms II Laboratory','CSE 2218','A'),('Umme Aimon Bristy',11201305,'Data Structure and Algorithms II Laboratory','CSE 2218','B+'),('Shabrina Airen Esha ',11201305,' Artificial Intelligence','CSE 3811','A'),('Shahariar Sarkar',11201237,' Artificial Intelligence','CSE 3811','A'),('Abdullah Al Sakib',11201240,' Artificial Intelligence','CSE 3811','A'),('Umme Aimon Bristy',11201305,' Artificial Intelligence','CSE 3811','B+'),('Shabrina Airen Esha ',11201305,' Artificial Intelligence Laboratory','CSE 3812','A'),('Shahariar Sarkar',11201237,' Artificial Intelligence Laboratory','CSE 3812','A'),('Abdullah Al Sakib',11201240,' Artificial Intelligence Laboratory','CSE 3812','A'),('Umme Aimon Bristy ',11201305,' Artificial Intelligence Laboratory','CSE 3812','A'),('Abdullah Al Sakib',11201240,'Computer Architecture','CSE 3313 ','A');
/*!40000 ALTER TABLE `result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `star` int(200) NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `sid` varchar(255) NOT NULL,
  `sname` varchar(255) NOT NULL,
  `pid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,3,'dhewrhr','011201240','Abdullah Al Sakib',19),(2,4,'nhjyu','011201240','Abdullah Al Sakib',19),(3,4,'nhjyu','011201240','Abdullah Al Sakib',19),(4,2,'its good','011201240','Abdullah Al Sakib',19);
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shortcourse`
--

DROP TABLE IF EXISTS `shortcourse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shortcourse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `cid` varchar(200) NOT NULL,
  `department` varchar(200) NOT NULL,
  `length` varchar(200) NOT NULL,
  `image` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cid` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shortcourse`
--

LOCK TABLES `shortcourse` WRITE;
/*!40000 ALTER TABLE `shortcourse` DISABLE KEYS */;
INSERT INTO `shortcourse` VALUES (2,'C for beginner','cfb01','CSE','4','IMG-6388d9ae297737.92288701.png'),(3,'c++ for every one','cfevo01','CSE','4','IMG-6388da097ed343.13606310.png');
/*!40000 ALTER TABLE `shortcourse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shortcoursefaculty`
--

DROP TABLE IF EXISTS `shortcoursefaculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shortcoursefaculty` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(200) NOT NULL,
  `fid` varchar(200) NOT NULL,
  `cid` int(11) NOT NULL,
  `cname` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shortcoursefaculty`
--

LOCK TABLES `shortcoursefaculty` WRITE;
/*!40000 ALTER TABLE `shortcoursefaculty` DISABLE KEYS */;
INSERT INTO `shortcoursefaculty` VALUES (4,'Sadia Islam','SAI',1,'Web Devlopment'),(7,'Mr. Akib Zaman','AZ',1,'Web Devlopment'),(12,'Abdullah Al Sakib','sakib1122',3,'C++   for every one'),(13,'Abdullah Al Sakib','sakib1122',2,'C for beginner');
/*!40000 ALTER TABLE `shortcoursefaculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shortcoursemetarial`
--

DROP TABLE IF EXISTS `shortcoursemetarial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shortcoursemetarial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `cid` varchar(255) NOT NULL,
  `week` varchar(200) NOT NULL,
  `shorttitle` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shortcoursemetarial`
--

LOCK TABLES `shortcoursemetarial` WRITE;
/*!40000 ALTER TABLE `shortcoursemetarial` DISABLE KEYS */;
INSERT INTO `shortcoursemetarial` VALUES (1,'C for beginner','2','Week1','intro'),(6,'c++ for every one','3','Week 1',''),(16,'C for beginner','2','Week2','Basic');
/*!40000 ALTER TABLE `shortcoursemetarial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `name` varchar(100) NOT NULL,
  `dob` varchar(60) NOT NULL,
  `gender` varchar(60) NOT NULL,
  `id` varchar(15) NOT NULL,
  `email` varchar(255) NOT NULL,
  `number` varchar(50) NOT NULL,
  `department` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(500) NOT NULL,
  `cgpa` varchar(10) NOT NULL,
  `github` varchar(200) NOT NULL,
  `website` varchar(200) NOT NULL,
  `linkedin` varchar(200) NOT NULL,
  `address` varchar(255) NOT NULL,
  `intro` varchar(300) NOT NULL,
  `about` varchar(10000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('Mohammed Jawwadul Islam','51996-02-22T22:00','Male','011181182 ','mohammed181@gmail.com','01700000000','CSE','81dc9bdb52d04dc20036dbd8313ed055','IMG-6323325472fbc8.11162177.jpg','3.79','','','https://bd.linkedin.com/in/jawwadfida','','',''),('Fahim Al Awsaf','1996-10-05T14:52','Male','011181253 ','fahim181@gmail.com','01700000001','CSE','81dc9bdb52d04dc20036dbd8313ed055','IMG-6323340d0dc626.50648656.jpg','3.33','','','','','',''),('Tonmoy Saha','1997-08-09T05:20','Male','011182014','tonmoy182@gmail.com','01700000002','CSE','81dc9bdb52d04dc20036dbd8313ed055','IMG-632335368fafe0.23110005.jpg','3.50','','','','','',''),('Tasmin Sanjida ','1997-01-31T12:59','Female','011182044','tasmin182@gmail.com','01700000004','CSE','81dc9bdb52d04dc20036dbd8313ed055','IMG-632335f1f15ec8.26678925.jpg','3.80','','','','','',''),('Md. Enamul Haque','1998-02-01T18:59','Male','011182055 ','enamul182@gmail.com','01700000005','CSE','81dc9bdb52d04dc20036dbd8313ed055','IMG-63233649dce4f9.92085245.jpg','3.85','','','','','',''),('Shifa Chowdhury Iwase','1998-06-07T20:22','Female','011183003','shafia183@gmail.com','01700000006','CSE','81dc9bdb52d04dc20036dbd8313ed055','IMG-63233704d71136.74838371.jpg','3.90','','','','','',''),('A.S.M Redowan','1998-02-01T00:27','Male','011191004','redowan191@gmail.com','01700000007','CSE','81dc9bdb52d04dc20036dbd8313ed055','IMG-632337cf7dd3f7.24734031.jpg','3.29','','','','','',''),('Md. Naimul Karim Hredoy','1998-05-06T23:38','Male','011191080','naimul191@gmail.com','01700000008','CSE','81dc9bdb52d04dc20036dbd8313ed055','IMG-632338a73f7776.25159104.jpg','3.80','','','','','',''),('Akib Rayhan','1998-12-30T10:41','Male','011191154','a.rayhan191@gmail.com','01700000010','CSE','81dc9bdb52d04dc20036dbd8313ed055','IMG-6323390cc069f3.71666960.jpg','3.50','','','','','',''),('Md.Eram Bin Tanbir','1998-11-25T06:40','Male','011191182','eram191@gmail.com','01700000011','CSE','81dc9bdb52d04dc20036dbd8313ed055','','','','','','','',''),('Md Ferdous Hasan','1998-12-09T06:30','Male','011191225','ferdous191@gmail.com','01700000012','CSE','81dc9bdb52d04dc20036dbd8313ed055','','','','','','','',''),(' Mohaimenul Azam Khan Raiaan','1998-03-01T16:50','Male','011191228','azam191@gmail.com','01700000013','CSE','81dc9bdb52d04dc20036dbd8313ed055','','','','','','','',''),('Jubayer Hossen','1998-11-30T15:50','Male','011191254','jubayer191@gmail.com','01700000015','CSE','81dc9bdb52d04dc20036dbd8313ed055','','','','','','','',''),('Md. Jobayer Rahman','1998-05-02T16:40','Male','011192070','jobayerr192@gmail.com','01700000016','CSE','81dc9bdb52d04dc20036dbd8313ed055','','','','','','','',''),('Swapnil Biswas ','1997-05-22T12:40','Female','011192072 ','swapnil192@gmail.com','01700000017','CSE','81dc9bdb52d04dc20036dbd8313ed055','','','','','','','',''),('Md. Shakil Ahmed','1997-06-11T19:45','Male','011192077','shakil192@gmail.com','01800000000','CSE','81dc9bdb52d04dc20036dbd8313ed055','','','','','','','',''),('Arindam Kundu Amit ','1997-03-06T09:50','Male','011192107','kundu192@gmail.com','01800000001','CSE','81dc9bdb52d04dc20036dbd8313ed055','','','','','','','',''),('Proma Hossain Progga','1998-08-11T20:40','Female','011192126 ','proma192@gmail.com','01800000003','CSE','81dc9bdb52d04dc20036dbd8313ed055','','','','','','','',''),('Ahmed Shabab Noor','1998-08-12T20:48','Male','011193024','shabab193@gmail.com','01800000004','CSE','81dc9bdb52d04dc20036dbd8313ed055','','','','','','','',''),('Hasibul Hasan Rupok','1997-09-10T16:40','Male','011201002','hasan201@gmail.com','01800000005','CSE','81dc9bdb52d04dc20036dbd8313ed055','','','','','','','',''),('Shabrina Airen Esha','2001-05-25','Male','011201005','sesha201005@bscse.uiu.ac.bd','01774536910','CSE','81dc9bdb52d04dc20036dbd8313ed055','','','','','','','',''),('Shahil Yasar Haque ','1998-05-22T20:30','Male','011201021','shahil201@gmail.com','01800000017','CSE','81dc9bdb52d04dc20036dbd8313ed055','','','','','','','',''),('Abu Sayem Md. Siam ','1997-05-10T19:50','Male','011201033 ','sayem201@gmail.com','01800000018','CSE','81dc9bdb52d04dc20036dbd8313ed055','','','','','','','',''),('Yeasir Arafat','1997-02-22T08:40','Male','011201035','yeasir201@gmail.com','01800000019','CSE','81dc9bdb52d04dc20036dbd8313ed055','','','','','','','',''),('Mithun Halder ','1999-11-26T14:30','Male','011201041','halder201@gmail.com','01800000020','CSE','81dc9bdb52d04dc20036dbd8313ed055','','','','','','','',''),('Debopom Sutradhar','1999-08-12T08:10','Male','011201046','debopom201@gmail.com','01600000000','CSE','81dc9bdb52d04dc20036dbd8313ed055','','','','','','','',''),('Nurzihan Fatema Reya','1998-08-22T19:34','Female','011201085','reya201@gmail.com','01600000001','CSE','81dc9bdb52d04dc20036dbd8313ed055','','','','','','','',''),('Suraia Afroz Maria','1999-07-12T10:30','Female','011201089','afroz201@gmail.com','01600000002','CSE','81dc9bdb52d04dc20036dbd8313ed055','','','','','','','',''),('Saif ','2000-02-28T13:06','Male','011201223','saif@gmail.com','01234567','CSE','81dc9bdb52d04dc20036dbd8313ed055','IMG-6326d9bef08cc2.72843972.jpg','3.98','','','','','',''),('Abdullah Al Sakib','2000-03-20','Male','011201240','asakib201240@bscse.uiu.ac.bd','01775332747','CSE','a311d9acabf78ba343f8331fb46051e40561473b0ca99063868053f8b57175b1','IMG-63582d288ddec7.29145910.jpg','3.8','https://github.com/abdullah201240','https://abdullah201240.github.io/personal_website/','https://www.linkedin.com/in/abdullah-al-sakib-8b35461a6/','Dhaka','Software Developer',' Software developer with excellent problem-solving skills and ability to perform well in a team. Passionate about coding and making projects.'),('Mirza hasan','2022-07-13T13:02','Male','011201247','mhasan201247@bscse.uiu.ac.bd','01623398837','CSE','81dc9bdb52d04dc20036dbd8313ed055','IMG-63230ed9548ee8.86393021.jpg','3.78','','','','','',' '),('Arshadul Mokaddis','1999-11-30T05:00','Male','011201260','mokaddis201@gmail.com','01785389594','CSE','81dc9bdb52d04dc20036dbd8313ed055','IMG-632330ea251ff2.88948293.jpg','3.8','','','','','',' '),('Md. Ahashan Habib','2023-02-09','Male','011201261','mhabib201261@bscse.uiu.ac.bd','01703185440','CSE','81dc9bdb52d04dc20036dbd8313ed055','','','','','','','',''),('Umme Aimon Bristy','2000-06-27','Female','011201305','ubristy201305@bscse.uiu.ac.bd','01703185440','CSE','81dc9bdb52d04dc20036dbd8313ed055','','','','','','','',''),('Fahad Rahman','1999-05-12T03:35','Male','011203014','fahad203@gmail.com','01600000003','CSE','81dc9bdb52d04dc20036dbd8313ed055','IMG-632717849294e9.23712725.jpg','','','','','','',''),('Binta Mohammed Adib Zeta','1996-07-20T09:40','Female','021173013','binta173@gmail.com','01600000004','EEE','81dc9bdb52d04dc20036dbd8313ed055','IMG-632339993f02b9.66407231.jpg','3.50','','','','','',''),('Md. Tanjilul Haque','1996-07-22T20:30','Male','021181005','tanjiul181@gmail.com','01600000005','EEE','81dc9bdb52d04dc20036dbd8313ed055','IMG-63233a17aa64d0.27179200.jpg','3.60','','','','','',''),('Jannatul Ferdous Shamma','1996-02-17T16:50','Female','021181008 ','shamma181@gmail.com','01600000006','EEE','81dc9bdb52d04dc20036dbd8313ed055','IMG-63233a9122f5c3.31883244.jpg','3.33','','','','','',''),('Md. Imran Hossain','1996-06-30T17:45','Male','021181012 ','imran181@gmail.com','01600000007','EEE','81dc9bdb52d04dc20036dbd8313ed055','IMG-63233aef838c54.76596866.png','3.90','','','','','',''),('Md. Ridoy Ad. Sumon','1996-09-12T11:40','Male','021181051','ridoy181@gmail.com','01600000008','EEE','81dc9bdb52d04dc20036dbd8313ed055','IMG-63233b4d008716.84346291.jpg','3.17','','','','','',''),('Redwan Ahmmed','1997-02-19T05:50','Male','021181066','redwan181@gmail.com','01600000009','EEE','81dc9bdb52d04dc20036dbd8313ed055','IMG-63233ba6e016b5.98988339.jpg','3.50','','','','','',''),('Masum Rana','1998-08-25T16:40','Male','021212004 ','rana212@gmail.com','01600000010','EEE','81dc9bdb52d04dc20036dbd8313ed055','IMG-63233c07a6c5b3.21562873.jpg','3.54','','','','','',''),('Al Mahmud Hossain','1998-08-18T07:40','Male','021212010','mahmud212@gmail.com','01600000011','EEE','81dc9bdb52d04dc20036dbd8313ed055','IMG-63233c7a39d4b6.49275948.jpg','3.25','','','','','',''),('Nissan Biswas','2002-03-12T21:53','Male','021213001','nbiswas213001@bseee.uiu.ac.bd','01703185440','EEE','81dc9bdb52d04dc20036dbd8313ed055','IMG-63234b27665de7.68412936.jpg','4.00','','','','','',''),('Fatema Nasrin Daana','1999-05-22T06:50','Female','021221003','fatema221@gmail.com','01600000012','EEE','81dc9bdb52d04dc20036dbd8313ed055','IMG-63233cb7be4ef8.19346312.jpg','3.64','','','','','',''),('Md Musfiqur Rashid','1999-06-14T10:40','Male','021221011','rashid221@gmail.com','01600000013','EEE','81dc9bdb52d04dc20036dbd8313ed055','','','','','','','',''),('Habib','2023-02-08','Male','100','habib@bscse.uiu.ac.bd','01703185440','CSE','81dc9bdb52d04dc20036dbd8313ed055','','','','','','','',''),('Amena Akter Mishu','1996-06-30T20:40','Female','111172002 ','mishu172@gmail.com','01900000000','BBA','81dc9bdb52d04dc20036dbd8313ed055','IMG-63233d5b732ca9.87526112.jpg','3.25','','','','','',''),('Jenia Alam Juhe','1996-09-26T16:40','Female','111172055','juhi172@gmail.com','01900000001','BBA','81dc9bdb52d04dc20036dbd8313ed055','IMG-63233e04394211.98694698.jpg','3.80','','','','','',''),('Sabrina Abrar','1997-06-28T18:50','Female','111181002','abrar181@gmail.com','01900000003','BBA','81dc9bdb52d04dc20036dbd8313ed055','IMG-63233e4cb01252.07418160.jpg','3.25','','','','','',''),('Md Rasel Mia','1998-06-22T11:50','Male','111182027','rasel182@gmail.com','01900000004','BBA','81dc9bdb52d04dc20036dbd8313ed055','IMG-63233e94d50f92.45214331.jpg','3.15','','','','','',''),('Sumaiya Murshid ','1998-03-09T04:50','Female','111221068 ','murshid221@gmail.com','01900000005','BBA','81dc9bdb52d04dc20036dbd8313ed055','IMG-63233ed51b9f30.03180725.jpg','3.65','','','','','',''),('Md. Al Emran Talukdar','1998-03-07T19:40','Male','111221092','emran221@gmail.com','01900000006','BBA','81dc9bdb52d04dc20036dbd8313ed055','IMG-63233f174b5a46.69982195.jpg','3.56','','','','','',''),('Tahmid Hossain','1998-08-27T09:50','Male','111221167','tahmid221@gmail.com','01900000007','BBA','81dc9bdb52d04dc20036dbd8313ed055','IMG-63233f49f19059.89405705.jpg','3.25','','','','','',''),('Abdullah Al Sakib','2022-11-12T21:05','Male','111223344','sakibdob@gmail.com','01775332747','CSE','81dc9bdb52d04dc20036dbd8313ed055','','','','','','','',''),('Rayhan Ahmed Abir','1999-09-12T19:40','Male','114221001 ','abir221@gmail.com','01900000008','BBA','81dc9bdb52d04dc20036dbd8313ed055','IMG-63233f862000b8.16866980.jpg','3.80','','','','','',''),('rhwer','2022-11-12T21:07','Male','Sakib','sakibdob@gmail.com','01775332747','CSE','81dc9bdb52d04dc20036dbd8313ed055','','','','','','','','');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ta`
--

DROP TABLE IF EXISTS `ta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(250) NOT NULL,
  `sid` varchar(250) NOT NULL,
  `cname` varchar(250) NOT NULL,
  `cid` varchar(250) NOT NULL,
  `section` varchar(250) NOT NULL,
  `status` varchar(255) NOT NULL,
  `tid` varchar(255) NOT NULL,
  `credit` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ta`
--

LOCK TABLES `ta` WRITE;
/*!40000 ALTER TABLE `ta` DISABLE KEYS */;
INSERT INTO `ta` VALUES (15,'Abdullah Al Sakib','011201240','Structured Programming Language Lab','CSI 122','A','Accept','FTI',1),(18,'Abdullah Al Sakib','011201240','Structured Programming Language',' CSE 1111','A','Pending','FAH',3),(19,'Abdullah Al Sakib','011201240','Data Structure and Algorithms II','CSE 2217','D','Accept','FTI',3),(20,'Abdullah Al Sakib','011201240','Structured Programming Language',' CSE 1111','A','Pending','FAH',3),(21,'Arshadul Mokaddis','011201260','Database Management Systems Laboratory','CSE 3522','C','Reject','MOI',1);
/*!40000 ALTER TABLE `ta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `take_courses`
--

DROP TABLE IF EXISTS `take_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `take_courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` varchar(200) NOT NULL,
  `cid` varchar(255) NOT NULL,
  `sname` varchar(200) NOT NULL,
  `tname` varchar(255) NOT NULL,
  `department` varchar(200) NOT NULL,
  `cname` varchar(200) NOT NULL,
  `section` varchar(200) NOT NULL,
  `Room` varchar(100) NOT NULL,
  `ctimestart` varchar(100) NOT NULL,
  `ctimeend` varchar(100) NOT NULL,
  `image` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `take_courses`
--

LOCK TABLES `take_courses` WRITE;
/*!40000 ALTER TABLE `take_courses` DISABLE KEYS */;
INSERT INTO `take_courses` VALUES (11,'011201247','CSE 1325','Mirza hasan','Mr. Md. Benzir Ahamed','CSE','Digital Logic Design','A','423','13:30','15:00','IMG-63230ed9548ee8.86393021.jpg'),(22,'011201247','CSE 3522','Mirza hasan','Md. Mohaiminul Islam','CSE','Database Management Systems Laboratory','C','425','11:00','13:30','IMG-63230ed9548ee8.86393021.jpg'),(23,'011201260','CSE 3522','Arshadul Mokaddis','Md. Mohaiminul Islam','CSE','Database Management Systems Laboratory','C','425','11:00','13:30','IMG-632330ea251ff2.88948293.jpg'),(26,'021213001',' EEE 1003','Nissan Biswas','Dr. M. Rezwan Khan','EEE','Electrical Circuits II','A','601','13:30','15:00',''),(27,'021213001','PHY 2105 ','Nissan Biswas','Prof. Dr. Md. Abu Saklayen','CSE','Physics','B','412','10:30','12:00',''),(37,'011201260','CSE 2217','Arshadul Mokaddis','MD. TAREK HASAN','CSE','Data Structure and Algorithms II','A','424','08:00','10:30','IMG-632330ea251ff2.88948293.jpg'),(38,'011201260','CSE 3521','Arshadul Mokaddis','Sadia Islam','CSE','Database Management Systems','E','402','15:00','16:30','IMG-632330ea251ff2.88948293.jpg'),(39,'011201260','CSE 4325 ','Arshadul Mokaddis','Mr. Md. Mahbub Hossain Raton','CSE','Microprocessors and Microcontrollers ','A','425','08:30','10:00','IMG-632330ea251ff2.88948293.jpg'),(40,'011181182 ',' EEE 3403','Mohammed Jawwadul Islam','Mr. Salahuddin Ahmed','EEE','Microprocessor and Interfacing','A','606','10:30','12:00',''),(41,'011181182 ','IPE 3401 ','Mohammed Jawwadul Islam','Gourab Kumar Roy','CSE','Industrial and Operational Management','B','429','13:00','14:30',''),(42,'011181182 ','CSE 3811 ','Mohammed Jawwadul Islam','Ms. Rubaiya Rahtin Khan','CSE','Artificial Intelligence','B','409','13:00','14:30',''),(43,'011181253 ','CSE 4325 ','Fahim Al Awsaf','Mr. Md. Mahbub Hossain Raton','CSE','Microprocessors and Microcontrollers ','C','408','11:30','13:00','IMG-6323340d0dc626.50648656.jpg'),(44,'011181253 ','CSE 1325','Fahim Al Awsaf','Minhajul Bashir','CSE','Digital Logic Design','A','406','11:00','12:30','IMG-6323340d0dc626.50648656.jpg'),(45,'011181253 ','CSE 3411 ','Fahim Al Awsaf','Mr. Suman Ahmmed','CSE','System Analysis and Design','A','407','13:00','14:30','IMG-6323340d0dc626.50648656.jpg'),(46,'011181253 ','CSE 3421 ','Fahim Al Awsaf','Md. Rafi-Ur-Rashid','CSE','Software Engineering','B','409','10:30','12:00','IMG-6323340d0dc626.50648656.jpg'),(47,'011182014','CSE 3421 ','Tonmoy Saha','MD. TAREK HASAN','CSE','Software Engineering','A','410','08:30','10:00',''),(48,'011182014','CSE 2217','Tonmoy Saha','Gourab Saha','CSE','Data Structure and Algorithms II','E','405','10:00','11:30',''),(49,'011182014','CSE 4325 ','Tonmoy Saha','Fahim Hafiz','CSE','Microprocessors and Microcontrollers ','D','408','08:30','10:00',''),(50,'011182044','CSE 3521','Tasmin Sanjida ','Sadia Islam','CSE','Database Management Systems','E','402','15:00','16:30',''),(51,'011182044','CSE 2217','Tasmin Sanjida ','MD. TAREK HASAN','CSE','Data Structure and Algorithms II','A','424','08:00','10:30',''),(52,'011182044','CSE 4325 ','Tasmin Sanjida ','Mr. Md. Mahbub Hossain Raton','CSE','Microprocessors and Microcontrollers ','C','408','11:30','13:00',''),(53,'011182055 ','CSE 3811 ','Md. Enamul Haque','Fariha Tabassum Islam','CSE','Artificial Intelligence','A','411','08:30','10:00',''),(54,'011182055 ',' CSE 4165 ','Md. Enamul Haque','Nahid Hossain','CSE','Web Programming','F','410','13:00','14:30',''),(55,'011182055 ','CSE 4521 ','Md. Enamul Haque','Md. Hasan Al Kayem','CSE','Computer Graphics','A','412','13:30','15:00',''),(56,'011183003','CSE 2217','Shifa Chowdhury Iwase','Fariha Tabassum Islam','CSE','Data Structure and Algorithms II','D','433','14:00','15:30',''),(57,'011183003','CSE 3811 ','Shifa Chowdhury Iwase','Fariha Tabassum Islam','CSE','Artificial Intelligence','A','411','08:30','10:00',''),(58,'011183003','CSE 3522','Shifa Chowdhury Iwase','Md. Mohaiminul Islam','CSE','Database Management Systems Laboratory','C','425','11:00','13:30',''),(59,'011191004','CSE 4587 ','A.S.M Redowan','Dr. A.K.M. Muzahidul Islam','CSE','Cloud Computing','B','413','08:30','10:00',''),(60,'011191004','CSE 3521','A.S.M Redowan','Sadia Islam','CSE','Database Management Systems','E','402','15:00','16:30',''),(61,'011191004','CSE 2217','A.S.M Redowan','MD. TAREK HASAN','CSE','Data Structure and Algorithms II','A','424','08:00','10:30',''),(62,'011191080','CSE 3522','Md. Naimul Karim Hredoy','Dr. Salekul Islam','CSE','Database Management Systems Laboratory','A','525','08:30','11:00',''),(63,'011191080','CSE 2217','Md. Naimul Karim Hredoy','MD. TAREK HASAN','CSE','Data Structure and Algorithms II','A','424','08:00','10:30',''),(64,'011191080','CSE 4325 ','Md. Naimul Karim Hredoy','Fahim Hafiz','CSE','Microprocessors and Microcontrollers ','D','408','08:30','10:00',''),(65,'011191154','CSE 2217','Akib Rayhan','Gourab Saha','CSE','Data Structure and Algorithms II','E','405','10:00','11:30',''),(66,'011191154','CSE 3811 ','Akib Rayhan','Fariha Tabassum Islam','CSE','Artificial Intelligence','A','411','08:30','10:00',''),(67,'011191154','CSE 3522','Akib Rayhan','Dr. Salekul Islam','CSE','Database Management Systems Laboratory','A','525','08:30','11:00',''),(68,'021173013','EEE 2101','Binta Mohammed Adib Zeta','Sandid Muneer','EEE','Electronics I','A','601','10:00','11:30',''),(69,'021173013',' EEE 2200','Binta Mohammed Adib Zeta','Mr. Avijit Saha','EEE','Electrical Wiring and Drafting','B','602','15:00','16:30',''),(70,'021173013','EEE 2301','Binta Mohammed Adib Zeta','Dr. Raqibul Mostafa','EEE','Signals and Linear Systems','A','603','08:30','10:00',''),(71,'021173013','EEE 3107','Binta Mohammed Adib Zeta','Dr. Md. Iqbal Bahar Chowdhury','EEE','Electrical Properties of Materials','A','604','08:30','10:00',''),(72,'021181005','EEE 2101','Md. Tanjilul Haque','Sandid Muneer','EEE','Electronics I','A','601','10:00','11:30',''),(73,'021181005',' EEE 2200','Md. Tanjilul Haque','Mr. Avijit Saha','EEE','Electrical Wiring and Drafting','B','602','15:00','16:30',''),(74,'021181005','EEE 2301','Md. Tanjilul Haque','Dr. Raqibul Mostafa','EEE','Signals and Linear Systems','A','603','08:30','10:00',''),(75,'021181008 ','EEE 2101','Jannatul Ferdous Shamma','Sandid Muneer','EEE','Electronics I','A','601','10:00','11:30',''),(76,'021181008 ','EEE 2301','Jannatul Ferdous Shamma','Dr. Raqibul Mostafa','EEE','Signals and Linear Systems','A','603','08:30','10:00',''),(77,'021181008 ',' EEE 3403','Jannatul Ferdous Shamma','Mr. Salahuddin Ahmed','EEE','Microprocessor and Interfacing','A','606','10:30','12:00',''),(78,'021181012 ','EEE 3107','Md. Imran Hossain','Dr. Md. Iqbal Bahar Chowdhury','EEE','Electrical Properties of Materials','A','604','08:30','10:00',''),(79,'021181012 ','EEE 2101','Md. Imran Hossain','Sandid Muneer','EEE','Electronics I','A','601','10:00','11:30',''),(80,'021181012 ',' EEE 2200','Md. Imran Hossain','Mr. Avijit Saha','EEE','Electrical Wiring and Drafting','B','602','15:00','16:30',''),(81,'021181051','EEE 3205','Md. Ridoy Ad. Sumon','Mr. B.K.M. Mizanur Rahman','EEE','Power System','A','605','15:00','16:30',''),(82,'021181051','EEE 2101','Md. Ridoy Ad. Sumon','Sandid Muneer','EEE','Electronics I','A','601','10:00','11:30',''),(83,'021181051',' EEE 3403','Md. Ridoy Ad. Sumon','Mr. Salahuddin Ahmed','EEE','Microprocessor and Interfacing','A','606','10:30','12:00',''),(84,'021181066','EEE 2101','Redwan Ahmmed','Sandid Muneer','EEE','Electronics I','A','601','10:00','11:30',''),(85,'021181066','EEE 3107','Redwan Ahmmed','Dr. Md. Iqbal Bahar Chowdhury','EEE','Electrical Properties of Materials','A','604','08:30','10:00',''),(86,'021181066',' EEE 3403','Redwan Ahmmed','Mr. Salahuddin Ahmed','EEE','Microprocessor and Interfacing','A','606','10:30','12:00',''),(87,'021212004 ','EEE 2101','Masum Rana','Sandid Muneer','EEE','Electronics I','A','601','10:00','11:30',''),(88,'021212004 ',' EEE 3403','Masum Rana','Mr. Salahuddin Ahmed','EEE','Microprocessor and Interfacing','A','606','10:30','12:00',''),(89,'021212004 ','EEE 3205','Masum Rana','Mr. B.K.M. Mizanur Rahman','EEE','Power System','A','605','15:00','16:30',''),(90,'021212010','EEE 2101','Al Mahmud Hossain','Sandid Muneer','EEE','Electronics I','A','601','10:00','11:30',''),(91,'021212010',' EEE 2200','Al Mahmud Hossain','Mr. Avijit Saha','EEE','Electrical Wiring and Drafting','B','602','15:00','16:30',''),(92,'021212010','CSE 3811 ','Al Mahmud Hossain','Fariha Tabassum Islam','CSE','Artificial Intelligence','A','411','08:30','10:00',''),(93,'021221003','EEE 2301','Fatema Nasrin Daana','Dr. Raqibul Mostafa','EEE','Signals and Linear Systems','A','603','08:30','10:00',''),(94,'021221003','EEE 2101','Fatema Nasrin Daana','Sandid Muneer','EEE','Electronics I','A','601','10:00','11:30',''),(95,'021221003','EEE 3205','Fatema Nasrin Daana','Mr. B.K.M. Mizanur Rahman','EEE','Power System','A','605','15:00','16:30',''),(96,'111172002 ','MGT 1307 ','Amena Akter Mishu','Mr. Mohammad Behroz Jalil','BBA','Principles of Management','A','302','10:30','12:00',''),(97,'111172002 ','ACN 4135 ','Amena Akter Mishu','Mr. Mofijul Hoq Masum','BBA','Taxation','C','303','15:00','16:30',''),(98,'111172002 ','MGT 4356','Amena Akter Mishu','Prof. Dr. Abu Saleh Md. Sohel-Uz-Zaman','BBA','Strategic Management','C','303','08:30','10:00',''),(99,'111172055','IBS 3338','Jenia Alam Juhe','Dr. Seyama Sultana','BBA','Export Import Management','B','303','12:30','14:00',''),(100,'111172055','CST 1206','Jenia Alam Juhe','Jerin Haque Chhanda','BBA','Computer Applications','A','303','10:30','12:00',''),(101,'111172055','MGT 1307 ','Jenia Alam Juhe','Mr. Mohammad Behroz Jalil','BBA','Principles of Management','A','302','10:30','12:00',''),(102,'111181002','MGT 1307 ','Sabrina Abrar','Mr. Mohammad Behroz Jalil','BBA','Principles of Management','A','302','10:30','12:00',''),(103,'111181002','MGT 4356','Sabrina Abrar','Prof. Dr. Abu Saleh Md. Sohel-Uz-Zaman','BBA','Strategic Management','C','303','08:30','10:00',''),(104,'111181002','CST 1206','Sabrina Abrar','Jerin Haque Chhanda','BBA','Computer Applications','A','303','10:30','12:00',''),(105,'111182027','CST 1206','Md Rasel Mia','Jerin Haque Chhanda','BBA','Computer Applications','A','303','10:30','12:00',''),(106,'111182027','MGT 1307 ','Md Rasel Mia','Mr. Mohammad Behroz Jalil','BBA','Principles of Management','A','302','10:30','12:00',''),(107,'111182027','MGT 4356','Md Rasel Mia','Prof. Dr. Abu Saleh Md. Sohel-Uz-Zaman','BBA','Strategic Management','C','303','08:30','10:00',''),(108,'111221068 ','MGT 1307 ','Sumaiya Murshid ','Mr. Mohammad Behroz Jalil','BBA','Principles of Management','A','302','10:30','12:00',''),(109,'111221068 ','IBS 3338','Sumaiya Murshid ','Dr. Seyama Sultana','BBA','Export Import Management','B','303','12:30','14:00',''),(110,'111221068 ','ACN 4135 ','Sumaiya Murshid ','Mr. Mofijul Hoq Masum','BBA','Taxation','C','303','15:00','16:30',''),(111,'111221092','ACN 4135 ','Md. Al Emran Talukdar','Mr. Mofijul Hoq Masum','BBA','Taxation','C','303','15:00','16:30',''),(112,'111221092','MGT 1307 ','Md. Al Emran Talukdar','Mr. Mohammad Behroz Jalil','BBA','Principles of Management','A','302','10:30','12:00',''),(113,'111221092','MGT 4356','Md. Al Emran Talukdar','Prof. Dr. Abu Saleh Md. Sohel-Uz-Zaman','BBA','Strategic Management','C','303','08:30','10:00',''),(114,'111221167','MGT 1307 ','Tahmid Hossain','Mr. Mohammad Behroz Jalil','BBA','Principles of Management','A','302','10:30','12:00',''),(115,'111221167','MGT 4356','Tahmid Hossain','Prof. Dr. Abu Saleh Md. Sohel-Uz-Zaman','BBA','Strategic Management','C','303','08:30','10:00',''),(116,'111221167','IBS 3338','Tahmid Hossain','Dr. Seyama Sultana','BBA','Export Import Management','B','303','12:30','14:00',''),(117,'114221001 ','ACN 4135 ','Rayhan Ahmed Abir','Mr. Mofijul Hoq Masum','BBA','Taxation','C','303','15:00','16:30',''),(118,'114221001 ','IBS 3338','Rayhan Ahmed Abir','Dr. Seyama Sultana','BBA','Export Import Management','B','303','12:30','14:00',''),(119,'114221001 ','MGT 1307 ','Rayhan Ahmed Abir','Mr. Mohammad Behroz Jalil','BBA','Principles of Management','A','302','10:30','12:00',''),(121,'011201223','CSE 2217','Saif ','MD. TAREK HASAN','CSE','Data Structure and Algorithms II','A','424','10:30','12:00',''),(122,'011201223','CSE 3313 ','Saif ','Mr. Anik Mazumder','CSE','Computer Architecture','B','404','12:00','14:30',''),(123,'011201223','CSE 3522','Saif ','Sadia Islam','CSE','Database Management Systems Laboratory','B','530','11:00','13:30',''),(124,'011201223','CSE 3811 ','Saif ','Ms. Rubaiya Rahtin Khan','CSE','Artificial Intelligence','B','409','13:00','14:30',''),(125,'011203014','CSE 1115 ','Fahad Rahman','Dr. Dewan Md. Farid','CSE','Object-Oriented Programming','A','401','10:00','12:30',''),(126,'011203014','CSE 2217','Fahad Rahman','MD. TAREK HASAN','CSE','Data Structure and Algorithms II','A','424','10:30','12:00',''),(127,'011203014','CSE 3521','Fahad Rahman','Mr. Farhan Anan Himu','CSE','Database Management Systems','B','401','10:00','11:30',''),(128,'011201247','CSE 3521','Mirza hasan','Sadia Islam','CSE','Database Management Systems','A','404','08:00','09:30','IMG-63230ed9548ee8.86393021.jpg'),(129,'011201247','CSE 2217','Mirza hasan','Gourab Saha','CSE','Data Structure and Algorithms II','E','405','10:00','11:30','IMG-63230ed9548ee8.86393021.jpg'),(130,'011201247','CSE 4325 ','Mirza hasan','Mr. Md. Mahbub Hossain Raton','CSE','Microprocessors and Microcontrollers ','C','408','11:30','13:00','IMG-63230ed9548ee8.86393021.jpg'),(146,'011201260','CSE 1325','Arshadul Mokaddis','Minhajul Bashir','CSE','Digital Logic Design','A','406','11:00','12:30','IMG-632330ea251ff2.88948293.jpg'),(147,'011201240','CSE 3711 ','Abdullah Al Sakib','Dr. Md. Abul Kashem Mia','CSE','Computer Networks','A','412','10:30','12:00','IMG-63582d288ddec7.29145910.jpg'),(148,'011201005','CSE 2233','Shabrina Airen Esha','Ms. Farhanaz Farheen','CSE','Computer Architecture','B','403','10:30','12:00',''),(149,'011201240','CSE 1115 ','Abdullah Al Sakib','Dr. Dewan Md. Farid','CSE','Object-Oriented Programming','A','401','10:00','12:30','IMG-63582d288ddec7.29145910.jpg'),(151,'011201240','CSE 1115 ','Abdullah Al Sakib','Mr. Farhan Anan Himu','CSE','Object-Oriented Programming','B','403','12:00','13:30','IMG-63582d288ddec7.29145910.jpg');
/*!40000 ALTER TABLE `take_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teacher` (
  `id` varchar(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `room` varchar(200) NOT NULL,
  `department` varchar(200) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `number` varchar(29) NOT NULL,
  `dob` varchar(200) NOT NULL,
  `profession` varchar(255) NOT NULL,
  `pid` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES ('A.K.M','Dr. A.K.M. Muzahidul Islam','akm@cse.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','','CSE','Male','01789644322','1980-09-18T15:47','Associate Professor',4,''),('AA','Ajwad Akil','akil@cse.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','','CSE','Male','01879633445','1995-02-14T14:59','Lecturer',6,''),('ABS','Prof. Dr. Md. Abu Saklayen','saklayen@cse.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','','CSE','Male','0165887942','1974-11-15T16:00','Professor',3,''),('AH','Mr. Md. Abir Hassan','ahassan@cse.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','636','CSE','Male','0170000010','1991-07-27T18:24','Lecturer',6,'IMG-63233d91e10c74.11541752.jpg'),('AKM','Dr. Md. Abul Kashem Mia','kashem@uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','','CSE','Male','0170000002','1985-07-27T16:08','Professor & Pro-Vice Chancellor',2,''),('AM','Mr. Anik Mazumder','mazumder@cse.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','418(B)','CSE','Male','0170000014','1996-07-27T21:03','Lecturer',6,'IMG-6326dae26cb105.99136773.jpg'),('ARO','Mr. Abu Zafar Md. Rashed Osman','osman@bba.cse.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','','BBA','Male','01623398874','1988-09-15T19:27','Lecturer',6,''),('AS','Adiba Shaira','adiba@cse.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','','CSE','Female','0156977565','1992-10-15T14:28','Lecturer',6,''),('ASSZ','Prof. Dr. Abu Saleh Md. Sohel-Uz-Zaman','saleh@bba.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','','BBA','Male','01654478231','1981-09-21T18:59','Professor',3,''),('ATR',' Anika Tasnim Rodela','anika@cse.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','636','CSE','Female','0170000030','1995-06-07T07:31','Lecturer',6,'IMG-63233747341e81.46322918.jpg'),('AVS','Mr. Avijit Saha','avijit@eee.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','','EEE','Male','0178956565','1981-07-27T23:55','	Assistant Professor',5,''),('AZ','Mr. Akib Zaman','akib@cse.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','319(b)','CSE','Male','0170000021','1993-07-27T14:29','Lecturer',6,'IMG-64288cbf7daba0.75226934.jpg'),('BA','Mr. Md. Benzir Ahamed','benzir@cse.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','','CSE','Male','0170000009','1990-07-27T17:20','	Assistant Professor',5,''),('BJ','Mr. Mohammad Behroz Jalil','behroz@bba.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','','BBA','Male','0189741236','1986-11-15T18:51','Lecturer',6,''),('BKM','Mr. B.K.M. Mizanur Rahman','bkm@gamil.com','81dc9bdb52d04dc20036dbd8313ed055','','EEE','Male','0159764856','1981-09-14T18:27','	Assistant Professor',5,''),('CMR','Dr. Chowdhury Mofizur Rahman','cmr@uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','','CSE','Male','0170000001','1985-07-27T15:05','Professor&Vice Chancellor',1,'IMG-6326ddd3af9b94.00750651.jpg'),('DF','Dr. Dewan Md. Farid','dewanfarid@cse.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','533(B)','CSE','Male','0170000023','1987-07-28T21:21','Professor',3,'IMG-63233f140f58f2.25139488.png'),('FAH','Mr. Farhan Anan Himu','himu@cse.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','536(A)','CSE','Male','0170000016','1996-07-15T23:13','Lecturer',6,'IMG-632335be168b87.66274070.jpg'),('FF','Ms. Farhanaz Farheen','farheen@cse.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','','CSE','Female','01700000012','1994-07-27T21:01','Lecturer',6,''),('FH','Fahim Hafiz','fahimhafiz@cse.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','636','CSE','Male','015642697','1990-02-06T14:24','Lecturer',6,'IMG-632341a72deba4.98626849.jpg'),('FTI','Fariha Tabassum Islam','fariha@cse.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','336','CSE','Female','0170000013','1992-07-27T18:25','Lecturer',6,'IMG-63233687eb2333.86437016.jpg'),('gh','gh','sakibdob@gmail.com','81dc9bdb52d04dc20036dbd8313ed055','','CSE','Male','01775332747','2022-10-26T13:12','Professor & Vice Chancellor',0,''),('GKR','Gourab Kumar Roy','gourabkumar@cse.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','','CSE','Male','01897565566','1987-05-15T14:55','Lecturer',6,''),('GR','Gourab Kumar Roy','gourab@eee.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','','CSE','Male','0170410014','1990-02-21T18:02','Lecturer',6,''),('GS','Gourab Saha','gourab@cse.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','','CSE','Male','01536698874','1989-03-24T20:52','Lecturer',6,''),('HAA','Hasin Anupama Azhari','azhari@cse.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','','CSE','Male','0178965425','1988-11-17T14:51','Lecturer',6,''),('hab','Habib','mirzahasanlimon619@gmail.com','81dc9bdb52d04dc20036dbd8313ed055','','CSE','Male','01703185440','2023-02-08','Lecturer',6,''),('HAK','Md. Hasan Al Kayem','hasan@cse.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','','CSE','Male','0189654726','1987-10-27T15:40','Lecturer',6,''),('HB','Ms. Helena Bulbul','helena@eee.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','','EEE','Female','0171655965','1987-07-27T13:14','Lecturer',6,''),('HS','Dr. Hasan Sarwar','hsarwar@cse.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','','CSE','Male','0170000003','1990-07-27T17:10','Professor',3,''),('IA','Dr. Intekhab Alam','intekhab@eee.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','','EEE','Male','07954566856','1980-06-29T22:58','Professor',3,''),('IBC','Dr. Md. Iqbal Bahar Chowdhury','ibchy@eee.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','','EEE','Male','017956565955','1985-07-27T20:47','Associate Professor',4,''),('IS','Ms. Ishrat Sultana','israt@bba.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','','BBA','Female','0178993540','1991-01-15T19:31','Lecturer',6,''),('JHC','Jerin Haque Chhanda','chhanda@bba.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','','EEE','Female','01623398874','1995-01-24T19:06','Lecturer',6,''),('JS','Jashodhan Saha','Jashodhan@cse.uiu.bd','81dc9bdb52d04dc20036dbd8313ed055','','CSE','Male','01789654112','1980-10-20T15:27','Lecturer',6,''),('KH','Md. Kazimul Hoque','kazimul@bba.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','','BBA','Male','01623398845','1989-09-20T18:40','Lecturer',6,''),('KIUA','Dr. Khawza Iftekhar Uddin Ahmed','khawza@eee.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','','EEE','Male','0187412356','1981-06-15T18:16','Professor',6,''),('KMR','Dr. Kaled Masukur Rahman','masuk@eee.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','','EEE','Male','0175945495','1991-05-30T19:46','Professor',3,''),('KSM','Mr. Kazi Sajeed Mehrab','sajeed@cse.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','','CSE','Male','0170000021','1995-07-27T22:02','Lecturer',6,''),('MAA','Dr. Mohammad A. Ashraf','mmashraf@bus.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','','BBA','Male','018756565656','1975-02-23T20:32','Professor',3,''),('MAS','Moynuddin Ahmed Shibly','shibly@cse.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','','CSE','Male','0178546324','1988-12-16T15:34','Lecturer',6,''),('MASQ','Mr. Mohammad Mahboob Ali Siddiqi','mahbub@eee.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','','CSE','Male','0178932154','1987-08-19T17:31','Lecturer',6,''),('MB','Minhajul Bashir','bashir@gmail.com','81dc9bdb52d04dc20036dbd8313ed055','','CSE','Male','01896635578','1990-01-24T20:28','Lecturer',6,''),('MHM','Mr. Mofijul Hoq Masum','masum@bba.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','','BBA','Male','01864762356','1990-01-15T18:44','Lecturer',6,''),('MHR','Mr. Md. Mahbub Hossain Raton','mahbub@cse.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','636','CSE','Male','0170000017','1993-07-14T19:09','Lecturer',6,'IMG-63233fbd1010e9.37028794.jpg'),('MHU','Mr. Md. Mumtahin Habib Ullah Mazumder','mumtahin@cse.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','','CSE','Male','0170000019','1995-07-15T11:14','Lecturer',6,''),('MI','Md. Mohaiminul Islam','mohaiminul@cse.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','','CSE','Male','01897774556','1992-01-05T12:57','Lecturer',6,''),('MNH','Dr.Mohammad Nurul Huda','mnh@cse.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','','CSE','Male','0170000004','1985-06-29T14:18','Professor',3,''),('MOI','Md. Mohaiminul Islam','mohaiminul@cse.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','636','CSE','Male','0162558974','1985-01-24T20:17','Lecturer',6,'IMG-63233814cd84e2.16593642.jpg'),('MOR','Dr. Mir Obaidur Rahman','obaidur@eco.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','','BBA','Male','01876256563','1982-07-27T13:32','Professor',3,''),('MQ','Md. Qamruzzaman','qamruzzaman@bba.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','','BBA','Male','01302364589','1984-08-22T19:04','Lecturer',6,''),('MR','Md. Mizanur Rahman','mizan@eee.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','','EEE','Male','0198742365','1988-12-23T17:54','Lecturer',6,''),('MS','Ms. Mimnun Sultana','mimnun@bba.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','','BBA','Female','01788987452','1988-03-23T18:37','Lecturer',6,''),('MSS','Ms. Musharrat Shabnam Shuchi','shabnam@eco.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','','BBA','Female','017956565662','1982-06-16T23:36','Lecturer',6,''),('NC','Mr. Md. Nadeem Chowdhury','nadeem@eee.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','538','EEE','Female','0178995656','1991-07-06T20:18','Lecturer',6,''),('NH','Nahid Hossain','nahid@cse.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','','CSE','Male','01654487796','1984-12-31T15:04','Lecturer',6,''),('NR','Ms.Nipa Roy','nipa@cse.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','','CSE','Female','0178966555','1989-09-18T14:36','Lecturer',6,''),('NSS','Ms. Nabila Sabrin Sworna','nabila@cse.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','','CSE','Female','0170000018','1996-07-27T23:12','Lecturer',6,''),('QFN','Ms. Quazi Farah Nawar','arah@cse.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','','CSE','Female','0170004021','1991-07-08T22:28','Lecturer',6,''),('RA','Md. Rayhan Ahmed','rayhan@cse.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','418(A)','CSE','Male','01716857548','1991-06-04T20:09','Lecturer',6,'IMG-63233b701ef672.89608493.jpeg'),('RK','Dr. M. Rezwan Khan','rezwanm@uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','','EEE','Male','0175865655','1987-06-01T21:41','Professor',3,''),('RM','Dr. Raqibul Mostafa','rmostafa@eee.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','','EEE','Male','01755559989','1981-07-14T12:42','Professor',3,''),('RRK','Ms. Rubaiya Rahtin Khan','rubaiya@cse.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','','CSE','Female','0170000027','1996-07-14T21:23','	Assistant Professor',5,''),('RUR','Md. Rafi-Ur-Rashid','rafiurrashid@cse.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','','CSE','Male','0170000789','1998-05-18T12:36','Lecturer',6,''),('SAE','Shabrina Airen Esha','sesha201005@bscse.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','','CSE','Female','01775332747','2001-05-25','Lecturer',6,''),('SAH','Sufi Aurangzeb Hossain','Aurangzeb@cse.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','','CSE','Male','0198745265','1983-11-16T15:21','Lecturer',6,''),('SAI','Sadia Islam','sadia@cse.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','319','CSE','Female','0170000015','1995-06-16T22:07','Lecturer',6,'IMG-63581c6b917772.58531229.jpg'),('sakib1122','Abdullah Al Sakib','sakibdob@gmail.com','81dc9bdb52d04dc20036dbd8313ed055','','CSE','Male','0111','2022-11-12T21:08','Lecturer',0,'IMG-637347ddbf6af6.05369191.jpg'),('SAMD','Mr. Salahuddin Ahmed','salahuddin@eee.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','','EEE','Male','0198745620','1986-12-17T17:34','Lecturer',6,''),('SAS','Mr. Shoib Ahmed Shourav','shoib@cse.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','536','CSE','Male','0170000011','1992-07-27T08:23','Lecturer',6,'IMG-6323351a896984.78444761.jpg'),('SeyS','Dr. Seyama Sultana','seyama@bba.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','','BBA','Female','0189562152','1989-05-15T19:16','Professor',3,''),('SHA','Mr. Md. Saidul Hoque Anik','anik@cse.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','','CSE','Male','0170000024','1990-06-30T22:22','Lecturer',6,''),('SHM','Dr. Md. Saddam Hossain Mukta','saddam@cse.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','','CSE','Male','0170000007','1989-07-27T18:17','Associate Professor',4,''),('SHS','Shoumik Saha','shoumik@cse.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','','CSE','Male','0170000024','1995-07-14T21:22','Lecturer',6,''),('SI','Dr. Salekul Islam','salekul@cse.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','','CSE','Male','0170000005','1988-07-12T16:13','Professor',3,''),('SKP','Dr. Al-Sakib Khan Pathan','sakib@cse.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','','CSE','Male','01700000026','1998-07-01T17:05','Professor',3,'IMG-6326dd54417289.51717597.jpg'),('SKS','Mr. Subangkar Karmaker Shanto','shanto@cse.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','','CSE','Male','0170000020','1996-07-29T12:14','Lecturer',6,''),('SM','Mr. Suman Ahmmed','suman@cse.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','','CSE','Male','0170000008','1988-07-27T17:22','	Assistant Professor',5,''),('SnM','Sandid Muneer','sadidmuneer@eee.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','','EEE','Male','01795654596','1985-07-27T22:53','	Assistant Professor',5,''),('SS','Dr. Swakkhar Shatabda','swakkhar@cse.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','','CSE','Male','0170000006','1988-07-15T14:19','Professor',3,''),('TA','Ms. Tanzila Amir','tanzila@eco.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','','BBA','Female','0186556551','1991-02-18T23:38','Lecturer',6,''),('TH','MD. TAREK HASAN','tarek@cse.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','319(c)','CSE','Male','0170000029','1996-07-08T22:26','Lecturer',6,'IMG-63233a9d7faac5.74536926.jpg'),('WY','Dr. Wahida Yasmeen','wahida@eco.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','','BBA','Female','0187956865','1981-07-30T12:34','Associate Professor',4,''),('ZA','Mr. Md. Zubair Alam','zubair@eee.uiu.ac.bd','81dc9bdb52d04dc20036dbd8313ed055','','EEE','Male','0171895564','1993-06-30T22:16','Lecturer',6,'');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_schedule`
--

DROP TABLE IF EXISTS `time_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tid` varchar(100) NOT NULL,
  `tname` varchar(200) NOT NULL,
  `day` varchar(255) NOT NULL,
  `start` varchar(200) NOT NULL,
  `end` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_schedule`
--

LOCK TABLES `time_schedule` WRITE;
/*!40000 ALTER TABLE `time_schedule` DISABLE KEYS */;
INSERT INTO `time_schedule` VALUES (9,'CMR','Dr. Chowdhury Mofizur Rahman','Monday','17:07','17:35'),(11,'AZ','Mr. Akib Zaman','Saturday','10:35','11:05'),(22,'FAH','Mr. Farhan Anan Himu','Saturday','13:00','15:00'),(23,'FAH','Mr. Farhan Anan Himu',' Wednesday','14:00','16:30'),(24,'FTI','Fariha Tabassum Islam','Tuesyday','13:00','14:00'),(28,'ATR',' Anika Tasnim Rodela','Sunday','12:00','13:00'),(29,'ATR',' Anika Tasnim Rodela','Sunday','12:00','14:00'),(34,'RA','Md. Rayhan Ahmed','Sunday','11:00','13:00'),(35,'RA','Md. Rayhan Ahmed','Saturday','11:00','14:00'),(41,'DF','Dr. Dewan Md. Farid','Saturday','13:00','15:00'),(42,'DF','Dr. Dewan Md. Farid','Saturday','',''),(43,'DF','Dr. Dewan Md. Farid','Tuesyday','14:00','15:00'),(44,'MHR','Mr. Md. Mahbub Hossain Raton','Saturday','15:00','16:30'),(45,'MHR','Mr. Md. Mahbub Hossain Raton',' Wednesday','13:30','15:30'),(46,'FH','Fahim Hafiz','Sunday','12:00','13:03'),(47,'FH','Fahim Hafiz','Tuesyday','14:00','15:00'),(48,'SAS','Mr. Shoib Ahmed Shourav','Saturday','14:00','14:20'),(49,'SAS','Mr. Shoib Ahmed Shourav','Saturday','14:30','15:00'),(50,'SAS','Mr. Shoib Ahmed Shourav','Tuesyday','15:00','15:30'),(51,'MOI','Md. Mohaiminul Islam','Tuesyday','15:00','15:30'),(52,'MOI','Md. Mohaiminul Islam','Sunday','15:30','16:00'),(56,'TH','MD. TAREK HASAN','Sunday','12:01','12:30'),(57,'TH','MD. TAREK HASAN','Sunday','12:40','13:00'),(58,'AZ','Mr. Akib Zaman',' Wednesday','14:00','14:30'),(60,'AH','Mr. Md. Abir Hassan','Tuesyday','14:00','14:30'),(61,'FTI','Fariha Tabassum Islam','Saturday','14:00','14:30'),(62,'FTI','Fariha Tabassum Islam',' Wednesday','15:30','16:00'),(63,'AM','Mr. Anik Mazumder','Sunday','10:30','11:00'),(64,'AM','Mr. Anik Mazumder','Tuesyday','13:00','13:40'),(65,'NC','Mr. Md. Nadeem Chowdhury','Saturday','22:00','22:30'),(66,'NC','Mr. Md. Nadeem Chowdhury','Saturday','10:30','11:00'),(67,'AZ','Mr. Akib Zaman','Sunday','10:00','10:30'),(69,'SAI','Sadia Islam','Saturday','00:31','00:32'),(70,'SAI','Sadia Islam','Monday','10:30','11:00'),(71,'sakib1122','Abdullah Al Sakib','Saturday','21:13','21:16'),(72,'sakib1122','Abdullah Al Sakib','Saturday','14:13','14:13'),(73,'sakib1122','Abdullah Al Sakib','','14:34','14:40'),(74,'AM','Mr. Anik Mazumder','Wednesday','13:43','15:43'),(75,'AM','Mr. Anik Mazumder','Saturday','17:44','17:44');
/*!40000 ALTER TABLE `time_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uapermission`
--

DROP TABLE IF EXISTS `uapermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uapermission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tid` varchar(200) NOT NULL,
  `tname` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uapermission`
--

LOCK TABLES `uapermission` WRITE;
/*!40000 ALTER TABLE `uapermission` DISABLE KEYS */;
INSERT INTO `uapermission` VALUES (1,'sakib1122','Abdullah Al Sakib'),(2,'AM','Mr. Anik Mazumder');
/*!40000 ALTER TABLE `uapermission` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-16 17:17:05
