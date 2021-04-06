-- MySQL dump 10.13  Distrib 8.0.21, for macos10.15 (x86_64)
--
-- Host: localhost    Database: VDB
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `donation`
--

DROP TABLE IF EXISTS `donation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donation` (
  `donorID` char(8) NOT NULL,
  `projectID` char(8) NOT NULL,
  `amount` int DEFAULT NULL,
  `donateDate` datetime DEFAULT NULL,
  PRIMARY KEY (`donorID`,`projectID`),
  KEY `projectID` (`projectID`),
  CONSTRAINT `donation_ibfk_1` FOREIGN KEY (`donorID`) REFERENCES `donor` (`donorID`),
  CONSTRAINT `donation_ibfk_2` FOREIGN KEY (`projectID`) REFERENCES `project` (`projectID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donation`
--

LOCK TABLES `donation` WRITE;
/*!40000 ALTER TABLE `donation` DISABLE KEYS */;
INSERT INTO `donation` VALUES ('D1781751','P1582330',5500,'2013-06-02 00:00:00'),('D1781751','P3915335',550,'2017-08-12 00:00:00'),('D1781751','P4854831',450,'2012-02-11 00:00:00'),('D1781751','P6350465',800,'2015-03-29 00:00:00'),('D1781751','P7230251',4500,'2017-09-29 00:00:00'),('D1781751','P7620633',5000,'2013-03-27 00:00:00'),('D1781751','P8336607',700,'2016-01-25 00:00:00'),('D2214719','P1582330',650,'2016-09-29 00:00:00'),('D2214719','P4854831',100000,'2015-06-19 00:00:00'),('D3668950','P3915335',200,'2016-01-16 00:00:00'),('D3668950','P7230251',2000,'2012-01-11 00:00:00'),('D4137269','P1582330',2500,'2018-06-17 00:00:00'),('D4137269','P3915335',800,'2014-02-11 00:00:00'),('D4137269','P4854831',950,'2018-07-02 00:00:00'),('D4137269','P7230251',200,'2018-02-01 00:00:00'),('D4137269','P8336607',1500,'2016-06-26 00:00:00'),('D6865286','P1582330',650,'2020-11-06 00:00:00'),('D6865286','P3915335',650,'2016-12-14 00:00:00'),('D6865286','P4854831',750,'2016-08-29 00:00:00'),('D6865286','P7620633',250,'2013-03-20 00:00:00'),('D7717343','P1582330',750,'2016-11-14 00:00:00'),('D7717343','P3915335',700,'2020-10-07 00:00:00'),('D7717343','P4854831',4000,'2019-11-07 00:00:00'),('D7717343','P6350465',550,'2012-03-03 00:00:00'),('D7717343','P7230251',1500,'2020-09-12 00:00:00'),('D7717343','P7620633',5000,'2015-10-25 00:00:00');
/*!40000 ALTER TABLE `donation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donor`
--

DROP TABLE IF EXISTS `donor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donor` (
  `donorID` char(8) NOT NULL,
  `fName` varchar(255) DEFAULT NULL,
  `lName` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `zipcode` char(5) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `affiliation` varchar(255) DEFAULT NULL,
  `telephone` char(12) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `donorTier` enum('1','2','3') DEFAULT NULL,
  PRIMARY KEY (`donorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donor`
--

LOCK TABLES `donor` WRITE;
/*!40000 ALTER TABLE `donor` DISABLE KEYS */;
INSERT INTO `donor` VALUES ('D1781751','Jannah','Knight','95 Little Ln.','Woodbank','PA','38548','Donates separately from partner Ashwin Knight','Knight Corp.','541-997-4412','jannah@knight.org','2'),('D2214719','Ashwin','Knight','17 Hereford Rd.','Stonanne','IA','36110','Donates separately from partner Jannah Knight','Knight Corp.','329-689-4719','ashwin@knight.org','2'),('D3668950','Mateo','Ventura','24 Byron Commmons','Rome','NY','11206','Mark donations as anonymous','MSR Industries','265-867-4674','mventura@msr.com','3'),('D4137269','Juliette','Wu','23 Edinburgh Rd.','Hell','TX','75202','Usually will donate with enough outreach.','Enco Oil Refinery','929-260-1922','jwu@enco.com','1'),('D6865286','Mazie','Jung','4 Lime St.','Skokie','IL','24391','Mark donations as anonymous','Self Employed','942-893-5682','maziejung@gmail.com','3'),('D7717343','Jayson','North','69 Byron Ave.','Belwall','SC','51150','Very involved on social media','Self Employed','629-726-5775','jayson.north@protonmail.com','3');
/*!40000 ALTER TABLE `donor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `projectID` char(8) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  KEY `projectID` (`projectID`),
  CONSTRAINT `location_ibfk_1` FOREIGN KEY (`projectID`) REFERENCES `project` (`projectID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES ('P7620633','Florida'),('P4854831','District of Columbia'),('P1582330','Louisiana'),('P8336607','Louisiana'),('P7230251','Iowa'),('P3915335','New York'),('P6350465','Iowa'),('P4854831','New Hampshire'),('P1582330','Texas'),('P8336607','Illinois');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position`
--

DROP TABLE IF EXISTS `position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `position` (
  `empID` char(8) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  KEY `empID` (`empID`),
  CONSTRAINT `position_ibfk_1` FOREIGN KEY (`empID`) REFERENCES `volunteer` (`empID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position`
--

LOCK TABLES `position` WRITE;
/*!40000 ALTER TABLE `position` DISABLE KEYS */;
INSERT INTO `position` VALUES ('V6951540','Technical'),('V2757419','Office'),('V1181055','Office'),('V2033306','Field'),('V9698362','Treasury'),('V6329265','Managerial'),('V7621299','Treasury'),('V9698362','Managerial'),('V3304869','Office'),('V1181055','Treasury'),('V6951540','Office');
/*!40000 ALTER TABLE `position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project` (
  `projectID` char(8) NOT NULL,
  `projName` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `status` enum('Ongoing','Complete','Inactive') DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `supervisor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`projectID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES ('P1582330','Tiny Tots Hackaton','Early STEM program for qualifying K12 students.','Ongoing','Development','Barry Leech'),('P3915335','The Summer Library','Early childhood development project via 3-month reading program.','Ongoing','Development','Arian Novak'),('P4854831','Elementary Book Fair','2016 Fundraiser for local school libraries.','Complete','Development','Amara Lord'),('P6350465','Lifetime Teachers','Pairing mentors and K12 students in need of tutoring.','Inactive','Development','Eathan Cunningham'),('P7230251','\'1,000 Pages Project\'','Early childhood development project via 2-month reading program.','Ongoing','Development','Freyja Deacon'),('P7620633','Neighborhood Meals','Provides meals for underserved K-12 students and families.','Ongoing','Outreach','Jun Fukuyama'),('P8336607','Supplying Our Schools','Summer fundraiser for school supplies.','Ongoing','Outreach','Antony Ridley');
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projPreference`
--

DROP TABLE IF EXISTS `projPreference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projPreference` (
  `empID` char(8) DEFAULT NULL,
  `project` varchar(255) DEFAULT NULL,
  KEY `empID` (`empID`),
  CONSTRAINT `projpreference_ibfk_1` FOREIGN KEY (`empID`) REFERENCES `volunteer` (`empID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projPreference`
--

LOCK TABLES `projPreference` WRITE;
/*!40000 ALTER TABLE `projPreference` DISABLE KEYS */;
INSERT INTO `projPreference` VALUES ('V6951540','Fundraiser'),('V2757419','Communications'),('V1181055','Fundraiser'),('V3304869','Communications'),('V2033306','Scheduling'),('V5917585','IT & Infrastructure'),('V9698362','Event Planning'),('V6329265','Outreach'),('V7621299','Scheduling'),('V2033306','IT & Infrastructure'),('V3304869','Fundraiser'),('V5917585','Event Planning'),('V7621299','Outreach'),('V3304869','Scheduling'),('V2033306','Event Planning'),('V2033306','Scheduling'),('V7621299','Outreach'),('V9698362','Event Planning'),('V5917585','Scheduling'),('V2757419','IT & Infrastructure'),('V3304869','Event Planning'),('V6329265','Field Work'),('V2033306','Communications'),('V5917585','IT & Infrastructure'),('V2033306','IT & Infrastructure'),('V5917585','Fundraiser');
/*!40000 ALTER TABLE `projPreference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shift`
--

DROP TABLE IF EXISTS `shift`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shift` (
  `slotID` char(10) NOT NULL,
  `empID` char(8) NOT NULL,
  PRIMARY KEY (`slotID`,`empID`),
  KEY `empID` (`empID`),
  CONSTRAINT `shift_ibfk_1` FOREIGN KEY (`slotID`) REFERENCES `timeslot` (`slotID`),
  CONSTRAINT `shift_ibfk_2` FOREIGN KEY (`empID`) REFERENCES `volunteer` (`empID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shift`
--

LOCK TABLES `shift` WRITE;
/*!40000 ALTER TABLE `shift` DISABLE KEYS */;
INSERT INTO `shift` VALUES ('T1489970','V1181055'),('T6827393','V1181055'),('T4941888','V2033306'),('T1489970','V2757419'),('T2184931','V3304869'),('T1489970','V5917585'),('T7695867','V6329265'),('T2878876','V6951540'),('T2184931','V7621299'),('T1489970','V9698362'),('T6827392','V9698362'),('T7695867','V9698362');
/*!40000 ALTER TABLE `shift` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timeslot`
--

DROP TABLE IF EXISTS `timeslot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `timeslot` (
  `slotID` char(10) NOT NULL,
  `startTime` time DEFAULT NULL,
  `endTime` time DEFAULT NULL,
  `shiftType` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`slotID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timeslot`
--

LOCK TABLES `timeslot` WRITE;
/*!40000 ALTER TABLE `timeslot` DISABLE KEYS */;
INSERT INTO `timeslot` VALUES ('T1489970','14:00:00','19:00:00','afternoon'),('T2184931','14:00:00','20:00:00','afternoon'),('T2878876','08:30:00','13:00:00','morning'),('T4941888','19:00:00','23:00:00','evening'),('T5051556','15:00:00','19:00:00','afternoon'),('T5158626','08:30:00','13:30:00','morning'),('T6827392','00:00:00','00:00:00','none'),('T6827393','00:00:00','00:00:00','none'),('T7252424','09:00:00','13:30:00','morning'),('T7264551','18:30:00','23:30:00','evening'),('T7695867','18:00:00','23:00:00','evening');
/*!40000 ALTER TABLE `timeslot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `volunteer`
--

DROP TABLE IF EXISTS `volunteer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `volunteer` (
  `empID` char(8) NOT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `zipcode` char(5) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `training` enum('Yes','No') DEFAULT NULL,
  `hoursWorked` int DEFAULT NULL,
  `telephone` char(12) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `emerName` varchar(255) DEFAULT NULL,
  `emerContact` char(12) DEFAULT NULL,
  PRIMARY KEY (`empID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `volunteer`
--

LOCK TABLES `volunteer` WRITE;
/*!40000 ALTER TABLE `volunteer` DISABLE KEYS */;
INSERT INTO `volunteer` VALUES ('V1181055','Khadeejah','Bass','93 Trinity Ave.','Fullerton','IA','42721','1987-02-13','2018-07-20','Yes',113,'946-238-6119','kha.bass@protonmail.com','Bella Okabe','812-152-5479'),('V2033306','Lacy','Bell','3 Hawker St.','Shelby','NH','74098','1970-08-28','2018-09-01','Yes',2884,'245-119-6609','lbell@shell.org','Brian Bell','350-105-1707'),('V2757419','Mahima','Farley','50 Southview St.','Tonawanda','IL','29158','1965-08-14','2018-02-16','Yes',193,'417-752-3072','mahima@farley.com','Bryson McDaniel','200-846-4249'),('V3304869','Eben','McGowan','55 Kingston Hill','Hope','LA','33971','1984-11-11','2017-09-13','No',72,'287-228-5974','info@mcgowanllc.com','Stella Gardner','631-103-9072'),('V5917585','Madeline','Perry','94 Clarendon Grove','Great Barrington','TX','77379','1983-04-22','2019-06-16','No',1122,'771-585-8724','madeline@perry.com','Perry Perry','586-696-7684'),('V6329265','Leonard','Harmon','49 Goodwood Blvd.','Sandbach','DC','64089','1967-11-04','2015-08-11','No',110,'745-529-8660','l_harmon@protonmail.com','Sam Harmon','839-392-1989'),('V6951540','Sally','Heton','58 Trinity Ave.','Attle','NY','44812','1993-06-23','2017-10-26','Yes',1504,'911-492-8207','sheton@protonmail.com','Mark Heton','443-825-6797'),('V7621299','Karan','Lee','38 Baker Hill','Skokie','IL','38716','1967-09-09','2016-10-24','Yes',158,'382-454-6958','leeK@gmail.com','Elizabeth Stimms','777-626-5436'),('V9698362','Susannah','Hines','90 Pedley Ln.','Scunthorpe','FL','66506','1997-01-20','2014-11-25','No',179,'218-552-6226','shines@protonmail.com','Mike Hines','322-470-5610');
/*!40000 ALTER TABLE `volunteer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `worksOn`
--

DROP TABLE IF EXISTS `worksOn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `worksOn` (
  `empID` char(8) NOT NULL,
  `projectID` char(8) NOT NULL,
  `signup` date DEFAULT NULL,
  PRIMARY KEY (`empID`,`projectID`),
  KEY `projectID` (`projectID`),
  CONSTRAINT `workson_ibfk_1` FOREIGN KEY (`empID`) REFERENCES `volunteer` (`empID`),
  CONSTRAINT `workson_ibfk_2` FOREIGN KEY (`projectID`) REFERENCES `project` (`projectID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worksOn`
--

LOCK TABLES `worksOn` WRITE;
/*!40000 ALTER TABLE `worksOn` DISABLE KEYS */;
INSERT INTO `worksOn` VALUES ('V1181055','P7230251','2019-04-28'),('V2033306','P6350465','2019-12-20'),('V2033306','P7620633','2019-01-16'),('V2757419','P4854831','2019-08-23'),('V2757419','P6350465','2019-06-14'),('V2757419','P8336607','2019-03-02'),('V3304869','P1582330','2019-07-07'),('V5917585','P4854831','2019-10-12'),('V5917585','P6350465','2019-12-17'),('V5917585','P7230251','2019-05-20'),('V6329265','P7230251','2019-03-09'),('V7621299','P1582330','2019-09-20'),('V9698362','P3915335','2019-06-28');
/*!40000 ALTER TABLE `worksOn` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-02  5:25:53
