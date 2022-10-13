-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: hotel
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `clients_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'Prof.','Buster','Bednar','tyrese.rodriguez@example.com','1826 Kellie Parks','1346','New Jerrold','Philippines','2022-04-24 13:32:47','2022-04-24 13:32:47'),(2,'Prof.','Crawford','Conroy','schultz.aisha@example.net','664 Maureen Port','5176','Lake Gino','Timor-Leste','2022-04-24 13:32:47','2022-04-24 13:32:47'),(3,'Miss','Estell','Ondricka','ethel.watsica@example.com','2778 Yadira Ferry Apt. 546','4106','South Ron','Italy','2022-04-24 13:32:47','2022-04-24 13:32:47'),(4,'Dr.','Merritt','Rau','hand.hilbert@example.com','3481 Walsh Gateway','9957','South Anita','Serbia','2022-04-24 13:32:47','2022-04-24 13:32:47'),(5,'Miss','Ladarius','Batz','spencer.audie@example.org','3005 Keenan Islands Apt. 846','6725','Berylview','Belize','2022-04-24 13:32:47','2022-04-24 13:32:47'),(6,'Dr.','Hugh','Johnston','titus.leannon@example.org','194 DuBuque Inlet','3788','Aniyahshire','Latvia','2022-04-24 13:32:47','2022-04-24 13:32:47'),(7,'Prof.','Obie','Marquardt','cyrus36@example.org','2560 Oberbrunner Drive','8770','Swiftchester','South Africa','2022-04-24 13:32:47','2022-04-24 13:32:47'),(8,'Dr.','Wilmer','White','parker93@example.net','119 Hermann Manor','5826','Port Dewayne','Ghana','2022-04-24 13:32:47','2022-04-24 13:32:47'),(9,'Dr.','Katlynn','Batz','jules98@example.net','17841 Blanda Ramp Apt. 752','1951','Hahnmouth','Cambodia','2022-04-24 13:32:47','2022-04-24 13:32:47'),(10,'Mr.','Bridie','Keeling','talia09@example.com','306 Walsh Meadows','3498','Ellashire','Gabon','2022-04-24 13:32:47','2022-04-24 13:32:47'),(11,'Prof.','Reginald','Mayert','abbigail.fritsch@example.org','66132 Polly Fields Suite 490','6550','Boganmouth','Rwanda','2022-04-24 13:32:47','2022-04-24 13:32:47'),(12,'Mr.','Thomas','Wisoky','hfeil@example.net','7058 Graham Run Apt. 071','4460','Darentown','Afghanistan','2022-04-24 13:32:47','2022-04-24 13:32:47'),(13,'Mr.','Kasandra','Barrows','laurel15@example.net','52875 Abshire Loaf','2654','North Irwinville','Iraq','2022-04-24 13:32:47','2022-04-24 13:32:47'),(14,'Miss','Wilhelm','Keebler','kenyatta.bechtelar@example.org','14043 Lebsack Burg Suite 511','1817','Schmittshire','United Kingdom','2022-04-24 13:32:47','2022-04-24 13:32:47'),(15,'Mrs.','Moriah','Block','dameon94@example.com','607 Torphy Highway','2869','Lake Hayley','Bahrain','2022-04-24 13:32:47','2022-04-24 13:32:47'),(16,'Miss','Haskell','Streich','bgoodwin@example.org','55320 Manuel Roads Apt. 036','8625','Goodwinfurt','Saint Lucia','2022-04-24 13:32:47','2022-04-24 13:32:47'),(17,'Prof.','Kasandra','Conn','reichel.magdalen@example.net','522 Collier Street Suite 174','1711','New Santiago','Turks and Caicos Islands','2022-04-24 13:32:47','2022-04-24 13:32:47'),(18,'Prof.','Orlo','Medhurst','karelle.bogan@example.net','511 Franecki Ways Suite 164','5985','New Santino','Sweden','2022-04-24 13:32:47','2022-04-24 13:32:47'),(19,'Mrs.','Ruthe','Barrows','rlangworth@example.com','9175 Kozey Drive Suite 309','6388','Feesttown','Antigua and Barbuda','2022-04-24 13:32:47','2022-04-24 13:32:47'),(20,'Prof.','Jarred','Hermann','sfunk@example.net','805 Reichert Dam Suite 220','8305','West Bertrand','Trinidad and Tobago','2022-04-24 13:32:47','2022-04-24 13:32:47'),(21,'Dr.','Megane','Shields','estella08@example.org','63746 Mueller Vista Suite 891','5744','West Sven','United States Minor Outlying Islands','2022-04-24 13:32:47','2022-04-24 13:32:47'),(22,'Mrs.','Garland','Bogisich','clemmie32@example.com','5471 Paula Knolls','1231','Maximofort','Cambodia','2022-04-24 13:32:47','2022-04-24 13:32:47'),(23,'Mr.','Bennie','Fahey','fboyle@example.com','14554 Rosalyn Stravenue Suite 721','1170','Normaland','Palestinian Territories','2022-04-24 13:32:47','2022-04-24 13:32:47'),(24,'Mrs.','Lavon','Orn','oconner.ida@example.net','7073 Rosalia Square Suite 046','8518','Dallinburgh','Malta','2022-04-24 13:32:47','2022-04-24 13:32:47'),(25,'Prof.','Carmel','Bauch','homenick.john@example.org','4997 Becker Brook','7404','Sherwoodburgh','Botswana','2022-04-24 13:32:47','2022-04-24 13:32:47'),(26,'Mr.','Zachery','Hamill','amanda.collins@example.org','40902 Geovanny Shoal Apt. 555','7383','Gretchenville','Falkland Islands (Malvinas)','2022-04-24 13:32:47','2022-04-24 13:32:47'),(27,'Miss','Aidan','Weimann','joseph48@example.com','499 Joanny Village','6678','Urielside','Marshall Islands','2022-04-24 13:32:47','2022-04-24 13:32:47'),(28,'Dr.','Ellsworth','Pacocha','kristoffer30@example.net','26546 Lera Pike','7413','Baumbachside','Botswana','2022-04-24 13:32:47','2022-04-24 13:32:47'),(29,'Dr.','Elian','Stark','matilde.beier@example.com','2189 Hazel Square Suite 478','8512','North Chanelle','Austria','2022-04-24 13:32:47','2022-04-24 13:32:47'),(30,'Dr.','Andrew','Flatley','cheyenne41@example.org','52626 Kaley Freeway','2440','West Ayden','Croatia','2022-04-24 13:32:47','2022-04-24 13:32:47'),(31,'Ms.','Wellington','Erdman','nannie.bogisich@example.net','31959 Annetta Fields','3875','Orionmouth','Martinique','2022-04-24 13:32:47','2022-04-24 13:32:47'),(32,'Prof.','Kayla','Bruen','maida.kuvalis@example.org','9709 Hodkiewicz Haven Apt. 247','8612','Gibsonchester','Equatorial Guinea','2022-04-24 13:32:47','2022-04-24 13:32:47'),(33,'Miss','Lora','Kovacek','khaley@example.org','36128 Thelma Camp','4227','North Amyaborough','Bosnia and Herzegovina','2022-04-24 13:32:47','2022-04-24 13:32:47'),(34,'Prof.','Jeanette','Koelpin','jacinto33@example.com','931 Donald Expressway','2075','Lake Rosalindamouth','Sierra Leone','2022-04-24 13:32:47','2022-04-24 13:32:47'),(35,'Dr.','Tod','Ziemann','emil.grady@example.org','4846 Cristian Square Apt. 736','7876','Hackettborough','Saint Martin','2022-04-24 13:32:47','2022-04-24 13:32:47'),(36,'Mrs.','Gladyce','Mertz','qmoen@example.net','7279 Caleigh Underpass Suite 836','1995','East Wilford','Falkland Islands (Malvinas)','2022-04-24 13:32:47','2022-04-24 13:32:47'),(37,'Prof.','Quinten','O\'Conner','whyatt@example.org','21623 Kassulke Plain','7433','Jayceeton','Namibia','2022-04-24 13:32:47','2022-04-24 13:32:47'),(38,'Dr.','Bernadette','Koss','marjory.bogisich@example.org','395 Hammes Manors Suite 961','2179','Lake Cruz','Iceland','2022-04-24 13:32:47','2022-04-24 13:32:47'),(39,'Dr.','Otis','Carter','liam00@example.net','924 Becker Mountains','6065','South Halhaven','Mexico','2022-04-24 13:32:47','2022-04-24 13:32:47'),(40,'Mr.','Riley','Metz','bartoletti.pattie@example.com','66429 Ruby Ridges Apt. 670','5591','New Jack','Mozambique','2022-04-24 13:32:47','2022-04-24 13:32:47'),(41,'Mr.','Ernest','Lind','fhickle@example.net','697 Oceane Curve Apt. 450','1400','Kirlinbury','Albania','2022-04-24 13:32:47','2022-04-24 13:32:47'),(42,'Prof.','Taurean','Denesik','zrussel@example.net','7670 Josianne Brooks Suite 993','6703','Woodrowview','Bolivia','2022-04-24 13:32:47','2022-04-24 13:32:47'),(43,'Dr.','Jalyn','Terry','luis.zieme@example.org','54551 O\'Connell Heights Suite 520','2357','Devantestad','United Arab Emirates','2022-04-24 13:32:47','2022-04-24 13:32:47'),(44,'Dr.','Blake','Beatty','arch82@example.net','944 Zboncak Garden','2910','Eleonoremouth','Albania','2022-04-24 13:32:47','2022-04-24 13:32:47'),(45,'Mr.','Anita','Bahringer','bogisich.jamel@example.com','96886 Deckow Loop Apt. 421','8514','East Kathlyn','Uruguay','2022-04-24 13:32:47','2022-04-24 13:32:47'),(46,'Prof.','Ansel','Kautzer','solon.ratke@example.org','368 Harmon Forest Suite 966','1529','Jacksonton','Samoa','2022-04-24 13:32:47','2022-04-24 13:32:47'),(47,'Dr.','Adolfo','Pouros','kklein@example.net','6329 Dillon Falls Suite 039','2333','Port Alton','Guernsey','2022-04-24 13:32:47','2022-04-24 13:32:47'),(48,'Dr.','Hazle','Rippin','wilkinson.roger@example.net','629 Krajcik Radial','3927','Muhammadstad','Timor-Leste','2022-04-24 13:32:47','2022-04-24 13:32:47'),(49,'Prof.','Maxie','Oberbrunner','fisher.lenora@example.org','46931 Little Brooks Suite 135','2239','Pricebury','Togo','2022-04-24 13:32:47','2022-04-24 13:32:47'),(50,'Dr.','Joyce','Waters','kayli02@example.net','3538 Jones Wall Suite 105','8215','Port Nedrashire','Afghanistan','2022-04-24 13:32:47','2022-04-24 13:32:47'),(51,'Miss','Maxwell','Hauck','rory.hoppe@example.net','1806 Wehner Ridges','6952','Herzogville','Montenegro','2022-04-24 13:32:47','2022-04-24 13:32:47'),(52,'Ms.','Demetrius','Haag','van80@example.com','215 Sunny Heights','5216','Uptonborough','Latvia','2022-04-24 13:32:47','2022-04-24 13:32:47'),(53,'Prof.','Mertie','Kilback','donna17@example.com','37657 Jabari Junctions','3479','East Hilda','Malta','2022-04-24 13:32:47','2022-04-24 13:32:47'),(54,'Miss','America','King','reinger.ethel@example.com','5450 Volkman Mall Apt. 404','8214','Heaneyside','Anguilla','2022-04-24 13:32:47','2022-04-24 13:32:47'),(55,'Mrs.','Cali','Fisher','kiera.little@example.net','950 Dorothea Canyon Suite 465','5453','Blockland','Comoros','2022-04-24 13:32:47','2022-04-24 13:32:47'),(56,'Prof.','Shemar','Gutmann','david99@example.com','43484 Nichole Locks','5402','North Jon','Equatorial Guinea','2022-04-24 13:32:47','2022-04-24 13:32:47'),(57,'Mr.','Tyrel','Nikolaus','will.avis@example.org','787 Angelo Port Suite 357','3496','Shanieside','Paraguay','2022-04-24 13:32:47','2022-04-24 13:32:47'),(58,'Dr.','Garrett','Abbott','tjenkins@example.com','617 Stamm Highway Suite 673','5883','North Alexside','Solomon Islands','2022-04-24 13:32:47','2022-04-24 13:32:47'),(59,'Dr.','Adam','Cassin','lubowitz.lowell@example.net','7951 Kunze Rapid','8294','Port Leilafurt','Saint Kitts and Nevis','2022-04-24 13:32:47','2022-04-24 13:32:47'),(60,'Dr.','Dario','Schumm','julien.olson@example.org','453 Kling Ways Apt. 508','7977','East Patricia','Bhutan','2022-04-24 13:32:47','2022-04-24 13:32:47'),(61,'Ms.','Otha','Wyman','winston.huels@example.org','66833 Vanessa Port','9808','South Lindsay','Togo','2022-04-24 13:32:47','2022-04-24 13:32:47'),(62,'Prof.','Doris','Gorczany','myrna.ruecker@example.com','44624 Darrin Shoals','3758','North Gersonshire','Kiribati','2022-04-24 13:32:47','2022-04-24 13:32:47'),(63,'Ms.','Vicky','Kessler','vicenta.block@example.net','233 Smitham Haven Apt. 257','8733','Benport','Libyan Arab Jamahiriya','2022-04-24 13:32:47','2022-04-24 13:32:47'),(64,'Mr.','Ivy','Kohler','vernie94@example.com','13799 Nikolaus Road','4870','Reillybury','Barbados','2022-04-24 13:32:47','2022-04-24 13:32:47'),(65,'Miss','Kaela','Mosciski','jamir66@example.com','81831 Harvey Keys Apt. 686','4059','East Frederic','Suriname','2022-04-24 13:32:47','2022-04-24 13:32:47'),(66,'Prof.','Raphael','Kessler','durgan.courtney@example.org','8076 Ortiz Isle','2070','Wilkinsonmouth','Turkmenistan','2022-04-24 13:32:47','2022-04-24 13:32:47'),(67,'Mr.','Queen','Kiehn','wtillman@example.com','6912 Rau Keys','9323','Lake Madieburgh','Togo','2022-04-24 13:32:47','2022-04-24 13:32:47'),(68,'Ms.','Libby','Homenick','don63@example.com','5765 Rowena Lock Suite 411','4643','East Irving','Moldova','2022-04-24 13:32:47','2022-04-24 13:32:47'),(69,'Ms.','Selmer','Rosenbaum','ykuhlman@example.net','85492 Zack Track Suite 655','7351','Estellebury','Cote d\'Ivoire','2022-04-24 13:32:47','2022-04-24 13:32:47'),(70,'Dr.','Adriel','Collins','jast.conrad@example.com','212 Hodkiewicz Gardens Apt. 408','8785','East Isabelle','Montserrat','2022-04-24 13:32:48','2022-04-24 13:32:48'),(71,'Miss','Onie','Hagenes','west.edgar@example.org','43830 Hermann Ways Apt. 541','6629','Smithfort','Antarctica (the territory South of 60 deg S)','2022-04-24 13:32:48','2022-04-24 13:32:48'),(72,'Dr.','Madelyn','Bayer','peffertz@example.org','463 Jena Summit','4682','Lazarotown','Jordan','2022-04-24 13:32:48','2022-04-24 13:32:48'),(73,'Prof.','Nella','Littel','jfranecki@example.net','726 Mitchell Alley','1486','North Kaleb','Netherlands','2022-04-24 13:32:48','2022-04-24 13:32:48'),(74,'Prof.','Alejandra','Kulas','grimes.elmore@example.com','84917 Toy Mountain','8545','Jamalmouth','Uzbekistan','2022-04-24 13:32:48','2022-04-24 13:32:48'),(75,'Mr.','Moshe','Herman','gulgowski.augustus@example.org','10308 Reginald Well Apt. 935','9956','Virgilberg','Saint Barthelemy','2022-04-24 13:32:48','2022-04-24 13:32:48'),(76,'Mr.','Mireya','Stark','clementine.streich@example.net','10466 Viva Spurs Suite 912','2972','Lindfort','Barbados','2022-04-24 13:32:48','2022-04-24 13:32:48'),(77,'Mr.','Reanna','Schroeder','franco77@example.org','36767 Hilton Vista Suite 989','8903','Tremblayburgh','Ghana','2022-04-24 13:32:48','2022-04-24 13:32:48'),(78,'Prof.','Erling','Fritsch','quinton43@example.net','2313 Jaskolski Drive Apt. 469','5770','Windlerbury','United States Minor Outlying Islands','2022-04-24 13:32:48','2022-04-24 13:32:48'),(79,'Miss','Felton','Lueilwitz','green.daniella@example.org','23793 Mercedes Locks','7803','Jaskolskiton','Sri Lanka','2022-04-24 13:32:48','2022-04-24 13:32:48'),(80,'Ms.','Laisha','Zboncak','gisselle94@example.net','435 Estella Parkway Suite 676','9712','Vonview','Estonia','2022-04-24 13:32:48','2022-04-24 13:32:48'),(81,'Mr.','Danyka','Reichert','hayley.abbott@example.net','43213 Jermey Ford','8309','South Michaleton','Costa Rica','2022-04-24 13:32:48','2022-04-24 13:32:48'),(82,'Ms.','Minerva','Von','gstanton@example.com','1275 Bartoletti Way Suite 528','8494','Lake Dasiaburgh','Australia','2022-04-24 13:32:48','2022-04-24 13:32:48'),(83,'Prof.','Nola','Rau','darrick.stracke@example.net','95279 Trantow Greens','6334','East Aniyah','Botswana','2022-04-24 13:32:48','2022-04-24 13:32:48'),(84,'Mr.','Brock','Gaylord','mclaughlin.maci@example.net','14500 Gerardo Union','9776','Josuehaven','Tunisia','2022-04-24 13:32:48','2022-04-24 13:32:48'),(85,'Ms.','Jalen','Lesch','bulah52@example.com','71046 Shields Hill Apt. 861','5177','South Geovannichester','Bulgaria','2022-04-24 13:32:48','2022-04-24 13:32:48'),(86,'Mr.','Neoma','Bins','raegan.bosco@example.org','382 Mathias Corner','5061','West Leonardo','Oman','2022-04-24 13:32:48','2022-04-24 13:32:48'),(87,'Ms.','Rhett','Smitham','jerod52@example.org','548 Zoe Loaf','6292','Darrellfort','Bosnia and Herzegovina','2022-04-24 13:32:48','2022-04-24 13:32:48'),(88,'Ms.','General','Schimmel','eorn@example.com','931 Baylee Valley Suite 970','2424','Devenland','Iraq','2022-04-24 13:32:48','2022-04-24 13:32:48'),(89,'Mr.','Anderson','Borer','felton.hessel@example.com','531 Ankunding Row','6667','Electaton','Swaziland','2022-04-24 13:32:48','2022-04-24 13:32:48'),(90,'Mr.','Laury','Hermiston','torp.frederique@example.org','98731 Huel Unions Apt. 473','3554','New Kevinview','American Samoa','2022-04-24 13:32:48','2022-04-24 13:32:48'),(91,'Mr.','Dedrick','Lueilwitz','ohirthe@example.com','56875 Kassulke Branch Apt. 348','7571','Denesikborough','Guinea-Bissau','2022-04-24 13:32:48','2022-04-24 13:32:48'),(92,'Dr.','Hans','VonRueden','abdiel63@example.com','2525 Carmela Curve','2147','Hackettberg','Seychelles','2022-04-24 13:32:48','2022-04-24 13:32:48'),(93,'Ms.','Iva','Blick','gia.dickinson@example.net','4216 Coralie Park','2519','Cielobury','American Samoa','2022-04-24 13:32:48','2022-04-24 13:32:48'),(94,'Mr.','Demond','Hilpert','iwalter@example.org','6472 Christ Stream Suite 989','8564','New Laisha','Tanzania','2022-04-24 13:32:48','2022-04-24 13:32:48'),(95,'Prof.','Eddie','McKenzie','gjacobi@example.org','26189 Edwin Common Suite 430','1916','East Mellie','Sao Tome and Principe','2022-04-24 13:32:48','2022-04-24 13:32:48'),(96,'Dr.','Sherwood','Treutel','lind.arnulfo@example.org','7722 Cormier Prairie Suite 693','3235','West Zitamouth','Swaziland','2022-04-24 13:32:48','2022-04-24 13:32:48'),(97,'Dr.','Garfield','Brekke','gilbert87@example.com','824 Mathilde Station Apt. 245','3319','Doyleberg','Ethiopia','2022-04-24 13:32:48','2022-04-24 13:32:48'),(98,'Dr.','Catharine','Carter','bashirian.leonor@example.com','70660 Isabel Terrace','6437','Fayside','San Marino','2022-04-24 13:32:48','2022-04-24 13:32:48'),(99,'Mr.','Jaida','Hessel','shawna.lang@example.net','363 Senger Streets','2545','Jairoview','Cape Verde','2022-04-24 13:32:48','2022-04-24 13:32:48'),(100,'Mrs.','Zetta','Rath','gferry@example.com','30563 Boyle Stream Apt. 386','5207','Lake Elmo','Faroe Islands','2022-04-24 13:32:48','2022-04-24 13:32:48');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2022_04_22_203429_create_rooms_table',1),(6,'2022_04_22_203445_create_clients_table',1),(7,'2022_04_22_210736_create_reservations_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservations`
--

DROP TABLE IF EXISTS `reservations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint unsigned NOT NULL,
  `room_id` bigint unsigned NOT NULL,
  `from` timestamp NOT NULL,
  `until` timestamp NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservations`
--

LOCK TABLES `reservations` WRITE;
/*!40000 ALTER TABLE `reservations` DISABLE KEYS */;
/*!40000 ALTER TABLE `reservations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rooms` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `availability` tinyint NOT NULL DEFAULT '1',
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (1,'7',1,'Katlyn','2022-04-24 13:32:48','2022-04-24 13:32:48'),(2,'20',1,'Ephraim','2022-04-24 13:32:48','2022-04-24 13:32:48'),(3,'1',1,'Nathaniel','2022-04-24 13:32:48','2022-04-24 13:32:48'),(4,'6',1,'Madaline','2022-04-24 13:32:48','2022-04-24 13:32:48'),(5,'13',1,'Linnie','2022-04-24 13:32:48','2022-04-24 13:32:48'),(6,'16',1,'Kali','2022-04-24 13:32:48','2022-04-24 13:32:48'),(7,'9',1,'Nicolas','2022-04-24 13:32:48','2022-04-24 13:32:48'),(8,'15',1,'Darrion','2022-04-24 13:32:48','2022-04-24 13:32:48'),(9,'18',1,'Kelton','2022-04-24 13:32:48','2022-04-24 13:32:48'),(10,'3',1,'Leon','2022-04-24 13:32:48','2022-04-24 13:32:48'),(11,'11',1,'Jasmin','2022-04-24 13:32:48','2022-04-24 13:32:48'),(12,'10',1,'Abigail','2022-04-24 13:32:48','2022-04-24 13:32:48'),(13,'4',1,'Rickey','2022-04-24 13:32:48','2022-04-24 13:32:48'),(14,'5',1,'Franz','2022-04-24 13:32:48','2022-04-24 13:32:48'),(15,'17',1,'Lillie','2022-04-24 13:32:48','2022-04-24 13:32:48'),(16,'2',1,'Evalyn','2022-04-24 13:32:48','2022-04-24 13:32:48'),(17,'12',1,'Jaycee','2022-04-24 13:32:48','2022-04-24 13:32:48'),(18,'14',1,'Fabian','2022-04-24 13:32:48','2022-04-24 13:32:48'),(19,'19',1,'Willa','2022-04-24 13:32:48','2022-04-24 13:32:48'),(20,'8',1,'Godfrey','2022-04-24 13:32:48','2022-04-24 13:32:48');
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Niels Minne','nielsminne@gmail.com',NULL,'$2y$10$V4Tfud1SzP4zaP3upT3hTuOKfbmDX3aJIm34dZzAsp3VGRSJgy3a2',NULL,'2022-04-24 13:33:14','2022-04-24 13:33:14');
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

-- Dump completed on 2022-04-24 17:36:23
