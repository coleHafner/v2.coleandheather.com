-- MySQL dump 10.13  Distrib 5.1.47, for unknown-linux-gnu (x86_64)
--
-- Host: localhost    Database: colehafn_cah
-- ------------------------------------------------------
-- Server version	5.1.47-community-log

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
-- Table structure for table `cah_Addresses`
--

DROP TABLE IF EXISTS `cah_Addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cah_Addresses` (
  `address_id` int(100) NOT NULL AUTO_INCREMENT,
  `street_address` varchar(1000) DEFAULT NULL,
  `city` varchar(1000) DEFAULT NULL,
  `state` varchar(1000) DEFAULT NULL,
  `zip` varchar(1000) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`address_id`)
) ENGINE=MyISAM AUTO_INCREMENT=574 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cah_Addresses`
--

LOCK TABLES `cah_Addresses` WRITE;
/*!40000 ALTER TABLE `cah_Addresses` DISABLE KEYS */;
INSERT INTO `cah_Addresses` (`address_id`, `street_address`, `city`, `state`, `zip`, `active`) VALUES (0,NULL,NULL,NULL,NULL,0),(571,'1452 Mill Pond Rd.','Ashland','OR','97520',1),(570,'32265 N Fork Rd.','Lyons','OR','97358',1),(569,'PO Box 411','Sublimity','OR','97385',1),(568,'PO Box 121','Lyons','OR','97358',1),(567,'PO Box 53','Lyons','OR','97358',1),(565,'One Towers Ln. Box 2118 #A-1','Mt. Angel','OR','97362',1),(566,'Elliot Residence #217 390 SE Church','Sublimity','OR','97385',1),(564,'1154 Dawn Dr.','Stayton','OR','97383',1),(563,'1307 Heritage Loop','Stayton','OR','97383',1),(562,'1276 82nd SE','Salem','OR','97317',1),(561,'PO Box 727','Mill City','OR','97360',1),(560,'PO Box 723','Sublimity','OR','97385',1),(559,'40931 Rodgers Mtn. Loop','Scio','OR','97374',1),(558,'5715 Anderson Rd. SE','Aumsville','OR','97325',1),(557,'4609 Toutle Ct. SE','Olympia','WA','98501',1),(556,'1905 Madison Dr.','Lavergne','TN','37086',1),(555,'225 Walden St. #3F','Cambridge','MA','02140',1),(554,'7732 SE Ramona St.','Portland','OR','97206',1),(553,'12785 Parrish Gap Rd. SE','Turner','OR','97392',1),(552,'2642 NW Ginseng Pl.','Corvallis','OR','97330',1),(551,'PO Box 698','Lyons','OR','97358',1),(550,'202 Jefferson St. #2','Bend','OR','97701',1),(549,'PO Box 177','Selma','OR','97538',1),(548,'123 Main St.','Stayton','OR','97383',1),(547,'PO Box 562','Stayton','OR','97383',1),(546,'378 Church St.','Sublimity','OR','97385',1),(545,'1244 Calypso Ct.','Ashland','OR','97520',1),(544,'19395 E. Evans Creek Rd.','White City','OR','97305',1),(543,'168 W. 300 St.','Herber City','UT','84032',1),(542,'496 Starflower Ln.','Ashland','OR','97520',1),(541,'3611 NW Upas Ave.','Redmond','OR','97756',1),(540,'12744 Brick Rd.','Turner','OR','97392',1),(539,'200 E Grant St.','Enterprise','OR','97828',1),(538,'1102 N. 13th St.','Boise','ID','83702',1),(537,'6810 Jerdon Ct. N','Keizer','OR','97303',1),(536,'108 5th St. #8','Ashland','OR','97520',1),(535,'442 W. Berdine St.','Roseburg','OR','97471',1),(534,'3514 SW Reindeer Ave.','Redmond','OR','97756',1),(533,'PO Box 1005','Aumsville','OR','97325',1),(532,'1153 Stanford Ave.','Palo Alto','CA','94306',1),(531,'1170 Barnes Ave. #221','Salem','OR','97306',1),(530,'8029 SE 24th','Portland','OR','97202',1),(529,'3403 Marigold Dr.','Prescott','AZ','97385',1),(528,'701 Larkspur Ct.','Sublimity','OR','97385',1),(527,'511.5 S. Meldrum St.','Fort Collins','CO','80521',1),(526,'5405 W. Arlington','Yakima','WA','98908',1),(525,'6590 Griffin Creek Rd','Medford','OR','97501',1),(524,'2863 Camp Baker Rd.','Medford','OR','97501',1),(523,'400 N. Colorado St. #203B','Gunnison','CO','81230',1),(522,'2459 NW 22nd St.','Redmond','OR','97756',1),(521,'1821 Taylor Circle','Reedsburg','WI','53959',1),(520,'175 High St.','Lee','MA','01238',1),(519,'4920 Whisting Acres','Las Vegas','NV','89131',1),(518,'7513 Mardean Ct.','Las Vegas','NV','89131',1),(517,'230 N. McDow St.','Susanville','CA','96130',1),(516,'3570 Lost Hills Dr.','Las Vegas','NV','89122',1),(515,'3688 Cavender Creek Rd.','Danlonega','GA','30533',1),(514,'1365 Burtschell Place','Crescent City','CA','95531',1),(513,'2472 W. Silverstreak Way','Queen Creek','AZ','85242',1),(512,'53507 N. Thomas Rd.','Benton City','WA','99320',1),(511,'4826 Jean St. SE','Salem','OR','97305',1),(510,'4848 North Start Ct.','Salem','OR','97305',1),(509,'3254 Ridgeway Dr.','Turner','OR','97392',1),(572,'17874 Old Mehama Rd. SE','Stayton','OR','97383',1);
/*!40000 ALTER TABLE `cah_Addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cah_Facts`
--

DROP TABLE IF EXISTS `cah_Facts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cah_Facts` (
  `fact_id` int(100) NOT NULL AUTO_INCREMENT,
  `user_id` int(100) NOT NULL,
  `fact` varchar(1000) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`fact_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cah_Facts`
--

LOCK TABLES `cah_Facts` WRITE;
/*!40000 ALTER TABLE `cah_Facts` DISABLE KEYS */;
/*!40000 ALTER TABLE `cah_Facts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cah_GuestToGuestType`
--

DROP TABLE IF EXISTS `cah_GuestToGuestType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cah_GuestToGuestType` (
  `guest_to_guest_type_id` int(100) NOT NULL AUTO_INCREMENT,
  `guest_id` int(100) NOT NULL,
  `guest_type_id` int(100) NOT NULL,
  PRIMARY KEY (`guest_to_guest_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1449 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cah_GuestToGuestType`
--

LOCK TABLES `cah_GuestToGuestType` WRITE;
/*!40000 ALTER TABLE `cah_GuestToGuestType` DISABLE KEYS */;
INSERT INTO `cah_GuestToGuestType` (`guest_to_guest_type_id`, `guest_id`, `guest_type_id`) VALUES (1263,1175,146),(1264,1175,147),(1265,1176,146),(1266,1176,148),(1267,1177,146),(1268,1178,146),(1269,1179,146),(1270,1180,146),(1271,1181,146),(1272,1182,146),(1273,1183,146),(1274,1184,146),(1275,1185,146),(1276,1185,149),(1277,1186,146),(1278,1187,146),(1279,1188,146),(1280,1189,146),(1281,1190,146),(1282,1191,146),(1283,1192,146),(1284,1193,146),(1285,1194,150),(1286,1194,151),(1287,1194,152),(1288,1194,153),(1289,1195,150),(1290,1195,154),(1291,1196,150),(1292,1196,152),(1293,1196,151),(1294,1197,155),(1295,1198,150),(1296,1198,152),(1297,1198,151),(1298,1199,150),(1299,1199,152),(1300,1199,151),(1301,1200,150),(1302,1201,150),(1303,1201,154),(1304,1201,156),(1305,1201,157),(1306,1202,150),(1307,1203,150),(1308,1203,154),(1309,1203,156),(1310,1204,150),(1311,1204,154),(1312,1204,156),(1313,1205,150),(1314,1205,154),(1316,1206,150),(1317,1206,152),(1318,1207,150),(1319,1208,152),(1320,1209,150),(1321,1209,154),(1322,1210,152),(1323,1211,150),(1324,1212,150),(1325,1213,150),(1326,1214,150),(1327,1215,150),(1328,1215,152),(1329,1216,150),(1330,1216,152),(1331,1217,150),(1332,1218,152),(1333,1219,150),(1334,1219,152),(1335,1220,150),(1336,1220,154),(1337,1221,152),(1338,1222,152),(1339,1223,150),(1340,1224,150),(1341,1225,150),(1342,1226,150),(1343,1226,154),(1344,1227,150),(1345,1228,150),(1346,1229,154),(1347,1230,150),(1348,1231,150),(1349,1231,152),(1350,1232,150),(1351,1233,150),(1352,1233,152),(1353,1234,154),(1354,1235,154),(1355,1236,154),(1356,1237,154),(1357,1238,154),(1358,1239,154),(1359,1240,154),(1360,1241,154),(1361,1242,154),(1362,1243,154),(1363,1244,152),(1364,1245,158),(1365,1245,159),(1366,1246,158),(1367,1246,160),(1368,1247,150),(1369,1248,150),(1370,1249,158),(1371,1249,156),(1372,1250,158),(1373,1250,156),(1374,1251,158),(1375,1252,150),(1376,1253,158),(1377,1254,158),(1378,1255,158),(1379,1256,158),(1380,1257,158),(1381,1258,158),(1382,1259,158),(1383,1260,158),(1384,1261,158),(1385,1262,158),(1386,1263,158),(1387,1264,158),(1388,1265,158),(1389,1266,158),(1390,1267,158),(1391,1268,158),(1392,1269,158),(1393,1270,158),(1394,1271,155),(1395,1272,158),(1396,1273,158),(1397,1274,158),(1398,1275,158),(1399,1276,158),(1400,1277,158),(1401,1278,158),(1402,1279,158),(1403,1280,158),(1404,1281,158),(1405,1282,158),(1406,1283,158),(1407,1284,158),(1408,1285,158),(1409,1286,158),(1410,1287,158),(1411,1288,158),(1412,1289,158),(1413,1290,158),(1414,1291,158),(1415,1292,158),(1416,1293,158),(1417,1293,148),(1418,1270,148),(1419,1294,158),(1420,1295,158),(1421,1296,158),(1422,1297,158),(1423,1298,158),(1424,1299,158),(1425,1300,158),(1426,1301,158),(1427,1302,158),(1428,1303,158),(1429,1304,158),(1430,1305,161),(1431,1306,161),(1432,1307,161),(1433,1308,161),(1434,1309,161),(1435,1310,161),(1436,1311,161),(1437,1312,161),(1438,1313,161),(1439,1314,162),(1440,1315,162),(1441,1316,162),(1442,1317,162),(1443,1318,162),(1444,1319,162),(1445,1320,148),(1446,1320,158),(1447,1334,158),(1448,1335,158);
/*!40000 ALTER TABLE `cah_GuestToGuestType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cah_GuestTypes`
--

DROP TABLE IF EXISTS `cah_GuestTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cah_GuestTypes` (
  `guest_type_id` int(100) NOT NULL AUTO_INCREMENT,
  `title` varchar(1000) DEFAULT NULL,
  `is_special` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`guest_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=164 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cah_GuestTypes`
--

LOCK TABLES `cah_GuestTypes` WRITE;
/*!40000 ALTER TABLE `cah_GuestTypes` DISABLE KEYS */;
INSERT INTO `cah_GuestTypes` (`guest_type_id`, `title`, `is_special`, `active`) VALUES (0,NULL,NULL,0),(162,'Bride Coworker',0,1),(161,'Groom Coworker',0,1),(160,'Mother of the Groom',1,1),(159,'Father of the Groom',1,1),(158,'Groom Family',0,1),(157,'Best Man',1,1),(156,'Groomsman',1,1),(155,'Friend of Friend',0,1),(154,'Groom Friend',0,1),(153,'Maid of Honor',1,1),(152,'Bride Friend',0,1),(151,'Bridesmaid',1,1),(150,'Mutual Friend',0,1),(149,'Mother of the Bride',1,1),(148,'Guest of Honor',1,1),(147,'Father of the Bride',1,1),(146,'Bride Family',0,1);
/*!40000 ALTER TABLE `cah_GuestTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cah_Guests`
--

DROP TABLE IF EXISTS `cah_Guests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cah_Guests` (
  `guest_id` int(100) NOT NULL AUTO_INCREMENT,
  `parent_guest_id` int(100) NOT NULL,
  `address_id` int(100) NOT NULL,
  `first_name` varchar(1000) DEFAULT NULL,
  `last_name` varchar(1000) DEFAULT NULL,
  `activation_code` varchar(1000) DEFAULT NULL,
  `initial_timestamp` varchar(1000) NOT NULL,
  `update_timestamp` varchar(1000) DEFAULT NULL,
  `expected_count` tinyint(3) DEFAULT NULL,
  `actual_count` tinyint(3) DEFAULT NULL,
  `rsvp_through_site` tinyint(1) NOT NULL,
  `is_attending` tinyint(1) NOT NULL,
  `is_new` tinyint(1) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`guest_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1339 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cah_Guests`
--

LOCK TABLES `cah_Guests` WRITE;
/*!40000 ALTER TABLE `cah_Guests` DISABLE KEYS */;
INSERT INTO `cah_Guests` (`guest_id`, `parent_guest_id`, `address_id`, `first_name`, `last_name`, `activation_code`, `initial_timestamp`, `update_timestamp`, `expected_count`, `actual_count`, `rsvp_through_site`, `is_attending`, `is_new`, `active`) VALUES (0,0,0,NULL,NULL,NULL,'','',NULL,NULL,0,0,0,0),(1318,0,548,'Dana','Kloefkorn','467cfcc29f','1298847686','1303664384',5,1,1,1,0,1),(1317,0,548,'Cynthia','Fuglsby','37dbab52a9','1298847686','1303179867',1,0,1,0,0,1),(1316,0,548,'Nancy','Williamson','6ecb1625bd','1298847686',NULL,4,0,0,0,0,1),(1315,0,548,'Abbie','Lasota','e7e2ae408b','1298847686',NULL,5,0,0,0,0,1),(1314,0,548,'Krista','Cavanaugh','7ff6010df4','1298847686','1303664371',4,1,1,1,0,1),(1312,0,548,'Galen','Wright','026f07e73e','1298847686',NULL,2,0,0,0,0,1),(1313,0,548,'Chris','Ostmo','d6d61df2e4','1298847686',NULL,2,0,0,0,0,1),(1311,0,548,'Prateek','Sharma','42ffd60277','1298847686',NULL,2,0,0,0,0,1),(1310,1308,571,'Emma','Robison','0','1298847686',NULL,0,0,0,0,0,1),(1309,1308,571,'Christine','Robison','0','1298847686',NULL,0,0,0,0,0,1),(1306,0,548,'Bob','Scott','bf28ce1fc0','1298847686',NULL,2,0,0,0,0,1),(1307,0,548,'Nate','Biondi','646ef341d2','1298847686',NULL,5,0,0,0,0,1),(1308,0,571,'Tony','Robison','14edad6e22','1298847686',NULL,3,4,0,0,0,1),(1305,0,548,'Tim','Arthur','91c0ffb87b','1298847686',NULL,6,0,0,0,0,1),(1304,1301,570,'Andrew','Vandehey','0','1298847686','1301789508',0,0,0,1,0,1),(1303,1301,570,'Jill','Vandehey','0','1298847686','1301789508',0,0,0,1,0,1),(1302,1301,570,'Roger','Vandehey','0','1298847686','1301789508',0,0,0,1,0,1),(1300,1297,569,'Piper','Freres','0','1298847686','1301352172',0,0,1,1,0,1),(1301,0,570,'Shelly','Vandehey','3ba2d63d02','1298847686','1301789508',4,4,0,1,0,1),(1299,1297,569,'Sam','Freres','0','1298847686','1301352172',0,0,1,1,0,1),(1298,1297,569,'Rich','Freres','0','1298847686','1301352172',0,0,1,1,0,1),(1297,0,569,'Brandi','Freres','de7f1e3a0b','1298847686','1301352172',4,4,1,1,0,1),(1295,0,568,'Sue','Sutton','3633c7bddd','1298847686','1301255864',2,2,0,1,0,1),(1296,1295,568,'Leonard','Sutton','0','1298847686','1301255864',0,0,0,1,0,1),(1294,0,567,'Dan','Hafner','904b84f282','1298847686',NULL,3,0,0,0,0,1),(1293,0,565,'Don','Bender','fc531a43b1','1298847686',NULL,1,0,0,0,0,1),(1292,0,564,'Steve','Bender','31a547099e','1298847685',NULL,2,0,0,0,0,1),(1291,1288,563,'Mikel','Becktold','0','1298847685','1302651280',0,0,1,0,0,1),(1290,1288,563,'Katelyn','Becktold','0','1298847685','1302651280',0,0,1,0,0,1),(1286,1284,562,'Donica','Bender','0','1298847684',NULL,0,0,0,0,0,1),(1287,0,548,'Brianna','Anderson','86febf0e20','1298847684','1302455493',3,3,0,1,0,1),(1288,0,563,'Melanie','Hafner','ec44f39068','1298847685','1302651280',4,2,1,1,0,1),(1289,1288,563,'Gregg','Unknown','0','1298847685','1302651280',0,0,1,1,0,1),(1285,1284,562,'Pam','Bender','0','1298847684',NULL,0,0,0,0,0,1),(1284,0,562,'Bob','Bender','7c6d66a157','1298847684',NULL,4,0,0,0,0,1),(1282,1280,548,'JC','Hafner','0','1298847684','1301190597',0,0,1,1,0,1),(1283,0,561,'Angie','Connor','b5917fe2d1','1298847684','1301789935',4,5,0,1,0,1),(1280,0,548,'Johnny','Hafner','9ba1e15d40','1298847684','1301190597',4,3,1,1,0,1),(1281,1280,548,'Tricia','Hafner','0','1298847684','1301190597',0,0,1,1,0,1),(1279,1276,560,'Jill','Hafner','0','1298847683',NULL,0,0,0,0,0,1),(1278,1276,560,'Carrie','Hafner','0','1298847683',NULL,0,0,0,0,0,1),(1277,1276,560,'Debbie','Hafner','0','1298847683',NULL,0,0,0,0,0,1),(1275,1272,559,'Charlie','Siegmund','0','1298847682','1303695673',0,0,1,0,0,1),(1276,0,560,'John','Hafner','da94be2ee4','1298847683',NULL,5,0,0,0,0,1),(1271,1270,548,'Amanda','Newkirk','0','1298847682','1301789680',0,0,0,1,0,1),(1272,0,559,'Mandy','Siegmund','a8131143cf','1298847682','1303695673',4,0,1,0,0,1),(1273,1272,559,'Alan','Siegmund','0','1298847682','1303695673',0,0,1,0,0,1),(1274,1272,559,'Henry','Siegmund','0','1298847682','1303695673',0,0,1,0,0,1),(1270,0,548,'Walt','Hafner','4d13c5ca28','1298847682','1301789680',2,2,0,1,0,1),(1267,0,558,'Ted','Hafner','d9c89dd486','1298847681','1301789619',3,3,0,1,0,1),(1268,1267,558,'Margaret','Hafner','0','1298847681','1301789619',0,0,0,1,0,1),(1269,1267,558,'Gus','Hafner','0','1298847681','1301789619',0,0,0,1,0,1),(1266,1263,557,'Riley','Vanderbeek','0','1298847681','1299953791',0,0,1,1,0,1),(1264,1263,557,'Jack','Vanderbeek','0','1298847681','1299953791',0,0,1,1,0,1),(1265,1263,557,'Ben','Vanderbeek','0','1298847681','1299953791',0,0,1,1,0,1),(1263,0,557,'Suzy','Vanderbeek','824bd19ccb','1298847681','1299953791',4,4,1,1,0,1),(1262,1261,556,'Andrea','Bender','0','1298847681','1300026410',0,0,1,1,0,1),(1260,0,555,'Chris','Newkirk','84e68b5dfe','1298847680',NULL,2,0,0,0,0,1),(1261,0,556,'Sara','Bender','2316ee660b','1298847681','1300026410',2,2,1,1,0,1),(1258,1253,553,'Kimmy','Bender','0','1298847679',NULL,0,0,0,0,0,1),(1259,0,554,'Mary Kay','Bender','bc109559ce','1298847680','1301862451',2,1,1,1,0,1),(1257,1253,553,'Mandy','Bender','0','1298847679',NULL,0,0,0,0,0,1),(1256,1253,553,'Justine','Bender','0','1298847679',NULL,0,0,0,0,0,1),(1255,1253,553,'Katie','Bender','0','1298847679',NULL,0,0,0,0,0,1),(1254,1253,553,'Patty','Bender','0','1298847679',NULL,0,0,0,0,0,1),(1253,0,553,'Vince','Bender','aebfc746c9','1298847679',NULL,6,0,0,0,0,1),(1252,1251,552,'Jayme','Felice','0','1298847679','1299901542',0,0,1,1,0,1),(1250,1245,551,'Jack','Hafner','0','1298847678','1300574714',0,0,1,1,0,1),(1251,0,552,'TJ','Hafner','874230305b','1298847679','1299901542',2,2,1,1,0,1),(1246,1245,551,'Christine','Hafner','0','1298847678','1300574714',0,0,1,1,0,1),(1247,1245,551,'Prescilla','Celino','0','1298847678','1300574714',0,0,1,0,0,1),(1248,1245,551,'Amanda','Krafcik','0','1298847678','1300574714',0,0,1,0,0,1),(1249,1245,551,'Jed','Hafner','0','1298847678','1300574714',0,0,1,1,0,1),(1245,0,551,'Jerry','Hafner','a6d705546d','1298847678','1300574714',2,4,1,1,0,1),(1244,0,550,'Jenna','Jacquard','587af9c4a3','1298847678',NULL,2,0,0,0,0,1),(1241,0,549,'Michelle','Sidell','783571cff3','1298847678','1302455789',2,0,0,0,0,1),(1242,1241,549,'Dan','Unknown','0','1298847678','1302455789',0,0,0,0,0,1),(1243,1241,549,'Baby','Forrest','0','1298847678','1302455789',0,0,0,0,0,1),(1240,0,548,'Caleb','Heuburger','9aac33b3b7','1298847678',NULL,2,0,0,0,0,1),(1239,0,547,'Evan','Pierce','76a2116e8d','1298847678',NULL,2,0,0,0,0,1),(1238,1234,546,'Ryan','Joyce','0','1298847678','1302455760',0,0,0,1,0,1),(1237,1234,546,'Jason','Joyce','0','1298847678','1302455760',0,0,0,1,0,1),(1236,1234,546,'Brandon','Joyce','0','1298847678','1302455760',0,0,0,1,0,1),(1235,1234,546,'Mary','Joyce','0','1298847678','1302455760',0,0,0,1,0,1),(1233,0,545,'Hannah','Edlefsen','e7833270f8','1298847678','1303095935',2,1,0,1,0,1),(1234,0,546,'Doug','Joyce','6f996f06fa','1298847678','1302455760',5,7,0,1,0,1),(1232,1231,544,'Jacob','Kinsman','0','1298847678','1299968251',0,0,0,0,0,1),(1231,0,544,'Julie','Kinsman','18246da021','1298847678','1299968251',2,0,0,0,0,1),(1230,1229,543,'Ingrid','Campbell','0','1298847678','1301255905',0,0,0,0,0,1),(1229,0,543,'Eric','Campbell','4917746e38','1298847678','1301255905',2,0,0,0,0,1),(1228,1226,542,'Baby','Bella','0','1298847678',NULL,0,0,0,0,0,1),(1227,1226,542,'Davie','Carranza','0','1298847678',NULL,0,0,0,0,0,1),(1225,1223,541,'Devin','Hill','0','1298847678','1300813198',0,0,1,1,0,1),(1226,0,542,'Katie','Hardeman','6d755667f3','1298847678',NULL,3,0,0,0,0,1),(1223,0,541,'Bud','Hill','5a97150d5c','1298847678','1300813198',3,2,1,0,0,1),(1224,1223,541,'Mary','Hill','0','1298847678','1300813198',0,0,1,1,0,1),(1221,0,540,'Heather','Hoffman-Abbott','d4e5207d66','1298847678',NULL,2,0,0,0,0,1),(1222,1221,540,'Jeremy','Abbott','0','1298847678',NULL,0,0,0,0,0,1),(1219,0,538,'Torrey','McConnell','00a669ee59','1298847678',NULL,2,0,0,0,0,1),(1220,0,539,'Rebecca','Voltin','6a0fca4e0a','1298847678',NULL,2,0,0,0,0,1),(1216,0,536,'Crystal','Powell','58d8daef26','1298847678','1303095996',2,1,0,1,0,1),(1217,1216,536,'Kyle','Logsdon','0','1298847678','1303095996',0,0,0,0,0,1),(1218,0,537,'Stephanie','Powers','9e4a167ec9','1298847678',NULL,3,0,0,0,0,1),(1214,1211,534,'Robert','Gagermeier','0','1298847677','1301366564',0,0,1,0,0,1),(1215,0,535,'Katie','McClure','52a2eeb5d5','1298847677','1301790048',2,0,0,0,0,1),(1213,1211,534,'Lloyd','Gagermeier','0','1298847677','1301366564',0,0,1,1,0,1),(1210,0,533,'Heather','Mauer','60aeb8820d','1298847677','1303665253',2,1,0,1,0,1),(1211,0,534,'Bob','Gagermeier','dfdfe4ca97','1298847677','1301366564',4,3,1,1,0,1),(1212,1211,534,'Michelle','Gagermeier','0','1298847677','1301366564',0,0,1,1,0,1),(1208,0,531,'Erin','Peeples','7c01a33a15','1298847677','1301255807',2,1,0,1,0,1),(1209,0,532,'Matt','Grahn','ab9900a391','1298847677',NULL,2,0,0,0,0,1),(1206,0,530,'Kylan','Hoener','68e173c5db','1298847677','1301255756',2,2,0,1,0,1),(1207,1206,530,'Johanna','Hoener','0','1298847677','1301255756',0,0,0,1,0,1),(1205,0,529,'Jay','Reynolds','93bbbc83f2','1298847677','1300499344',2,1,1,1,0,1),(1204,0,528,'Tim','ODonnell','7e4050b2f7','1298847677',NULL,2,0,0,0,0,1),(1203,0,527,'Erik','Larsen','89356f1fd3','1298847677','1300033819',2,1,1,1,0,1),(1200,1199,525,'Baby','Hank','0','1298847677','1301795358',0,0,1,1,0,1),(1201,0,526,'Chris','Joyce','582cf9f3ed','1298847677','1301789567',2,2,0,1,0,1),(1202,1201,526,'Ava','Segal','0','1298847677','1301789567',0,0,0,1,0,1),(1199,0,525,'Karen','Kralik','9e284be9fb','1298847677','1301795358',2,2,1,1,0,1),(1198,0,524,'Annie','Tyner','e055f88d08','1298847677',NULL,2,0,0,0,0,1),(1197,1196,523,'Owen','King','0','1298847677','1301012920',0,0,1,0,0,0),(1195,1194,522,'Nate','Albertson','0','1298847677','1300808844',0,0,1,1,0,1),(1196,0,523,'Ashley','Black','b3604edffb','1298847677','1301012949',2,1,1,1,0,1),(1194,0,522,'Becky','Hill','27477cb5c2','1298847677','1300808844',2,2,1,1,0,1),(1193,0,521,'Sandy','Horstman','70669c1aa4','1298847677',NULL,2,0,0,0,0,1),(1192,1191,520,'Dylan','Mechek','0','1298847677',NULL,0,0,0,0,0,1),(1191,0,520,'Troy','Mechek','8ae4f8a020','1298847677',NULL,3,0,0,0,0,1),(1190,0,519,'Lisa','Clarke','7eff6fd301','1298847677',NULL,5,0,0,0,0,1),(1189,1188,518,'Toni','Ramey','0','1298847677',NULL,0,0,0,0,0,1),(1188,0,518,'Ted','Ramey','5d4fc517cf','1298847677',NULL,2,0,0,0,0,1),(1186,1185,516,'Mark','Piazza','0','1298847676','1302455843',0,0,0,0,0,1),(1187,0,517,'Lola','Ramey','40a10d90d2','1298847676','1299978705',1,1,1,1,0,1),(1185,0,516,'Denise','Piazaa','d73a91c67f','1298847676','1302455843',2,1,0,1,0,1),(1184,0,515,'Annabelle','Justice','b175f5bfac','1298847676',NULL,1,0,0,0,0,1),(1183,1182,514,'Dottie','Graves','0','1298847676','1303183964',0,0,1,0,0,1),(1182,0,514,'Al','Graves','fa62e0acac','1298847676','1303183964',2,2,1,1,0,1),(1181,1180,513,'Marissa','Eick','0','1298847676','1301594031',0,0,1,1,0,1),(1180,0,513,'Josh','Eick','61c47ded41','1298847676','1301594031',4,4,1,1,0,1),(1179,1178,512,'Trish','Eick','0','1298847675','1302229210',0,0,1,1,0,1),(1178,0,512,'Jim','Eick','6aa766dd79','1298847675','1302229210',2,2,1,1,0,1),(1177,0,511,'Glenn','Black','7ee56c75a3','1298847675','1303664194',1,2,1,1,0,1),(1176,0,510,'Lillian','Black','0c71d5659a','1298847674','1299888898',1,1,1,1,0,1),(1175,0,509,'Dennis','Black','033a9ee975','1298847673','1301789451',1,1,0,1,0,1),(1319,0,548,'Alisha','Proctor','257e85b542','1298847686',NULL,3,0,0,0,0,1),(1320,0,548,'Walter','Hafner','687048ba8c','1298867123',NULL,1,0,0,0,0,1),(1324,1180,513,'Kaitlyn','Eick','0','1301594006','1301594031',0,0,1,1,1,1),(1325,1180,513,'Colin','Eick','0','1301594020','1301594031',0,0,1,1,1,1),(1326,1283,561,'Gabe','Connor','0','1301789843','1301789935',0,0,0,1,1,1),(1327,1283,561,'Hailey','Connor','0','1301789863','1301789935',0,0,0,1,1,1),(1328,1283,561,'Kayla','Connor','0','1301789886','1301789935',0,0,0,1,1,1),(1329,1283,561,'Kara','Connor','0','1301789904','1301789935',0,0,0,1,1,1),(1330,1287,548,'Kevin','Anderson','0','1302455476','1302455493',0,0,0,1,1,1),(1331,1287,548,'Reece','Anderson','0','1302455487','1302455493',0,0,0,1,1,1),(1332,1234,546,'Lauren','Katich','0','1302455603','1302455760',0,0,0,1,1,1),(1333,1234,546,'Sara','Davenport','0','1302455624','1302455760',0,0,0,1,1,1),(1334,0,572,'Chad','Hafner','51ddc47a67','1303100731',NULL,2,2,1,0,0,1),(1335,1334,572,'Kara','Unknown','0','1303100731',NULL,0,0,1,0,0,1),(1336,1182,514,'Shelley ','Fox','0','1303183960','1303183964',0,0,1,1,1,1),(1338,1177,511,'Larry','Iverson','0','1303664192','1303664194',0,0,1,1,1,1);
/*!40000 ALTER TABLE `cah_Guests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `common_ArticleToFile`
--

DROP TABLE IF EXISTS `common_ArticleToFile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `common_ArticleToFile` (
  `article_to_file_id` int(100) NOT NULL AUTO_INCREMENT,
  `article_id` int(100) NOT NULL,
  `file_id` int(100) NOT NULL,
  `priority` int(100) DEFAULT NULL,
  PRIMARY KEY (`article_to_file_id`),
  KEY `article_id` (`article_id`),
  KEY `file_id` (`file_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `common_ArticleToFile`
--

LOCK TABLES `common_ArticleToFile` WRITE;
/*!40000 ALTER TABLE `common_ArticleToFile` DISABLE KEYS */;
/*!40000 ALTER TABLE `common_ArticleToFile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `common_Articles`
--

DROP TABLE IF EXISTS `common_Articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `common_Articles` (
  `article_id` int(100) NOT NULL AUTO_INCREMENT,
  `title` varchar(1000) DEFAULT NULL,
  `body` varchar(5000) DEFAULT NULL,
  `post_timestamp` int(100) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `user_id` int(100) NOT NULL,
  `section_id` int(100) NOT NULL,
  `view_id` int(100) NOT NULL,
  `priority` int(100) DEFAULT NULL,
  `tag_string` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`article_id`),
  KEY `authentication_id` (`user_id`),
  KEY `section_id` (`section_id`),
  KEY `view_id` (`view_id`)
) ENGINE=MyISAM AUTO_INCREMENT=90 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `common_Articles`
--

LOCK TABLES `common_Articles` WRITE;
/*!40000 ALTER TABLE `common_Articles` DISABLE KEYS */;
INSERT INTO `common_Articles` (`article_id`, `title`, `body`, `post_timestamp`, `active`, `user_id`, `section_id`, `view_id`, `priority`, `tag_string`) VALUES (0,NULL,NULL,NULL,0,0,0,0,NULL,NULL),(88,'Heather\\\'s Story','Some say time flies when you\\\'re having fun, and they\\\'re right. Fun is the first word that comes to mind if I had to describe the last six and a half years of my life. Well that, and luck. Throughout this time I have accomplished a lot. Gone to college, gotten a real job, been the proud owner of a cute dog. But what really makes the past few years of my life fun, is that I have been lucky enough to have someone to share it with. \n\nIt\\\'s not everyone that has to travel four hours to meet someone who grew up twenty minutes away from you. But I can\\\'t say that if we had met before in another setting, we would have ever started dating. Had we met while still in high school, I may have never talked to Cole (old Cascade High School traditions dictate not ever dating anyone from Regis High School-still haven\\\'t heard a reason why or how this status quo got started). As it was, I might never have met him still if it hadn\\\'t been for a certain future roommate of his bringing him up to my dorm room one night with a guitar and a penchant for stories. Apparently I had amazed them both with my on-the-fly account of a scuba diver who meets up with a suave talking shark.  \n\nA few days later, I saw Cole in the cafeteria and (I\\\'m embarrassed to say) ignored him. I wasn\\\'t sure what he thought about a girl who could make up silly fish stories at a moment\\\'s notice . . . and I wasn\\\'t sure he\\\'d recognize me anyway. Of course, no sooner had I dodged in front of the sandwich bar I nearly collide into him. He wouldn\\\'t remember this, but right then he said \\\"hi\\\"Ã‚Â and complimented me on the scarf I was wearing. I look back on that moment now and laugh. The scarf he complimented I had made, and it was lopsided with a quite a few holes. But that moment really illustrates who Cole was and continues to be. He has always been caring, thoughtful, supportive and above all, kind-hearted. \n\nThe past six years have flown by because Cole and I were having fun. And we still are. Above all, I have had the best time watching Cole evolve into the person he is today. Six years ago, I fell in love with a long-haired, long boarding video gamer, and now, I\\\'m even more in love with the person he\\\'s grown up to be. Cole is a smart, successful, loving, creative and hard-working person. I am lucky just to have met him. Together, I know our next sixty years are going to be just as fun as the last six.  ',1297801457,1,2,37,1,2,''),(87,'Cole\\\'s Story','I first met Heather in the dorms. My friend Erik and I were going door to door trying to meet new people. Now, we weren\\\'t like any other couple of losers, pathetically trying to meet girls, we were different. We had a gimick, we had a guitar. We knocked on the door of Heather\\\'s room, and got right in. When I first saw Heather I thought she was very pretty. She went on to tell a story that she made up on the spot about a magical talking shark. Cute and clever?! Too good to be true. Later that week we held hands while watching a Harry Potter movie, and almost seven years later, here we are. \n\nA lot has changed since then. We both have our degrees, we both have \\\"grown up\\\" jobs, we own a dog together. One thing that hasn\\\'t changed though, is Heather. She is still the same beautiful, hard working person that I met in the dorms that fall. I count myself lucky to have kept the affection of such a wonderful person all this time. I can\\\'t wait to marry her because I know it\\\'s just going to get better.',1297801420,1,2,36,1,2,''),(85,'Test','This is a new post for testing purposes...',1297362730,0,2,34,46,1,'');
/*!40000 ALTER TABLE `common_Articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `common_FileTypes`
--

DROP TABLE IF EXISTS `common_FileTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `common_FileTypes` (
  `file_type_id` int(100) NOT NULL AUTO_INCREMENT,
  `title` varchar(1000) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `directory` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`file_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `common_FileTypes`
--

LOCK TABLES `common_FileTypes` WRITE;
/*!40000 ALTER TABLE `common_FileTypes` DISABLE KEYS */;
INSERT INTO `common_FileTypes` (`file_type_id`, `title`, `active`, `directory`) VALUES (0,NULL,0,NULL),(20,'Site Image',1,'/images'),(21,'User Image',1,'/images/user_images');
/*!40000 ALTER TABLE `common_FileTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `common_Files`
--

DROP TABLE IF EXISTS `common_Files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `common_Files` (
  `file_id` int(100) NOT NULL AUTO_INCREMENT,
  `file_type_id` int(100) NOT NULL,
  `file_name` varchar(1000) DEFAULT NULL,
  `upload_timestamp` int(100) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`file_id`),
  KEY `file_type_id` (`file_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=178 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `common_Files`
--

LOCK TABLES `common_Files` WRITE;
/*!40000 ALTER TABLE `common_Files` DISABLE KEYS */;
INSERT INTO `common_Files` (`file_id`, `file_type_id`, `file_name`, `upload_timestamp`, `active`) VALUES (174,21,'28d20032f3.jpg',1298627586,1),(173,21,'d90d4d8881.jpg',1298626837,1),(172,21,'18a45d164a.jpg',1297973475,1),(171,21,'ed73774b6d.jpg',1297447636,1),(170,21,'f7544d929e.jpg',1297447545,1),(169,21,'a6bec7dc32.jpg',1297369589,1),(168,21,'36c5f7cded.png',1297369294,1),(167,21,'fd85cf9381.jpeg',1297368779,1),(0,0,NULL,NULL,0),(175,21,'604f6bfced.jpg',1302932771,1),(177,21,'d4eb09aa7f.jpg',1303297189,1);
/*!40000 ALTER TABLE `common_Files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `common_Permissions`
--

DROP TABLE IF EXISTS `common_Permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `common_Permissions` (
  `permission_id` int(100) NOT NULL AUTO_INCREMENT,
  `alias` varchar(1000) DEFAULT NULL,
  `title` varchar(1000) DEFAULT NULL,
  `summary` varchar(1000) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`permission_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `common_Permissions`
--

LOCK TABLES `common_Permissions` WRITE;
/*!40000 ALTER TABLE `common_Permissions` DISABLE KEYS */;
INSERT INTO `common_Permissions` (`permission_id`, `alias`, `title`, `summary`, `active`) VALUES (0,NULL,NULL,NULL,1),(5,'SPR','Super Administrator','Super Admin. This permission grants user access to everything.',1),(12,'REG','Regular User','This is the permission that a regular user gets...',1);
/*!40000 ALTER TABLE `common_Permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `common_Sections`
--

DROP TABLE IF EXISTS `common_Sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `common_Sections` (
  `section_id` int(100) NOT NULL AUTO_INCREMENT,
  `title` varchar(1000) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`section_id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `common_Sections`
--

LOCK TABLES `common_Sections` WRITE;
/*!40000 ALTER TABLE `common_Sections` DISABLE KEYS */;
INSERT INTO `common_Sections` (`section_id`, `title`, `active`) VALUES (0,NULL,0),(37,'her-story',1),(34,'main',1),(36,'his-story',1);
/*!40000 ALTER TABLE `common_Sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `common_Sessions`
--

DROP TABLE IF EXISTS `common_Sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `common_Sessions` (
  `session_id` varchar(32) NOT NULL,
  `start_timestamp` int(100) DEFAULT NULL,
  `end_timestamp` int(100) DEFAULT NULL,
  `browser` varchar(1000) DEFAULT NULL,
  `ip` varchar(1000) DEFAULT NULL,
  `user_id` int(100) NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `common_Sessions`
--

LOCK TABLES `common_Sessions` WRITE;
/*!40000 ALTER TABLE `common_Sessions` DISABLE KEYS */;
INSERT INTO `common_Sessions` (`session_id`, `start_timestamp`, `end_timestamp`, `browser`, `ip`, `user_id`) VALUES ('b1a2187b79eb7b0b48329d9f9753467c',1299566191,NULL,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/534.23 (KHTML, like Gecko) Chrome/11.0.686.3 Safari/534.23','127.0.0.1',2),('48a3ab97c10e16873e9dd3e583683562',1299563308,1299563796,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/534.23 (KHTML, like Gecko) Chrome/11.0.686.3 Safari/534.23','127.0.0.1',2),('e7c357246ccec47985a36f2246615262',1299562841,1299563028,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/534.23 (KHTML, like Gecko) Chrome/11.0.686.3 Safari/534.23','127.0.0.1',2),('06e5f8e274d886ad7b4645b2158c09ac',1299562376,1299562735,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/534.23 (KHTML, like Gecko) Chrome/11.0.686.3 Safari/534.23','127.0.0.1',2),('71804de28f6335d5867bcada66bad150',1299561586,1299561867,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/534.23 (KHTML, like Gecko) Chrome/11.0.686.3 Safari/534.23','127.0.0.1',2),('3c30b86edc61779f2072efd1bcfcaded',1299549105,1299558817,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/534.23 (KHTML, like Gecko) Chrome/11.0.686.3 Safari/534.23','127.0.0.1',2),('ac59be77b3fa797a2b4c94ccbb04fe4a',1299530283,NULL,'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.15) Gecko/20110303 Firefox/3.6.15','127.0.0.1',2),('c4b605c7d36d671a53e18e771de99bac',1298670278,NULL,'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.20 (KHTML, like Gecko) Chrome/11.0.672.2 Safari/534.20','127.0.0.1',2),('f55117800ffb76b9e86c91c76930ce46',1298670198,1298670273,'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.20 (KHTML, like Gecko) Chrome/11.0.672.2 Safari/534.20','127.0.0.1',32),('7948ea81603249fa45d14d94978098f4',1298669625,1298670189,'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.20 (KHTML, like Gecko) Chrome/11.0.672.2 Safari/534.20','127.0.0.1',2),('4f2fb2972728e3ed96df497c1983aedd',1298614536,NULL,'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.20 (KHTML, like Gecko) Chrome/11.0.672.2 Safari/534.20','127.0.0.1',2),('c015685b2aa8bb451dd4c61353ced85d',1298491269,NULL,'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.20 (KHTML, like Gecko) Chrome/11.0.672.2 Safari/534.20','127.0.0.1',2),('3a779a4e63d97b777d4d604f30ecc24c',1298337781,NULL,'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13','127.0.0.1',2),('d11ebf46c75a9cb20ba25754d2a7271a',1297973363,NULL,'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.16 (KHTML, like Gecko) Chrome/10.0.648.82 Safari/534.16','127.0.0.1',2),('7979687da44af9950e285bb423afa463',1297842802,NULL,'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.16 (KHTML, like Gecko) Chrome/10.0.648.45 Safari/534.16','127.0.0.1',2),('1f961f6747f2e6b253244f1d9987a670',1297758150,NULL,'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.16 (KHTML, like Gecko) Chrome/10.0.648.45 Safari/534.16','127.0.0.1',2),('03cca8d97efa540b815da8184ef4be2e',1297667368,NULL,'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.16 (KHTML, like Gecko) Chrome/10.0.648.45 Safari/534.16','127.0.0.1',2),('d6a8b912714744dc74e02394fed23df2',1297667085,NULL,'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13','127.0.0.1',2),('0ec9f0f9eac7891c26629dfeb47dda48',1297574309,NULL,'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.16 (KHTML, like Gecko) Chrome/10.0.648.45 Safari/534.16','127.0.0.1',2),('edeaa8248d5f10f5d776b432749c7bb9',1297492048,NULL,'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.16 (KHTML, like Gecko) Chrome/10.0.648.45 Safari/534.16','127.0.0.1',2),('a9f463638d814fb972d44f45452210dd',1297447429,NULL,'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.16 (KHTML, like Gecko) Chrome/10.0.648.45 Safari/534.16','127.0.0.1',2),('2a796e6561b15cf7d5ba04f7404f668e',1297395918,NULL,'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.16 (KHTML, like Gecko) Chrome/10.0.648.45 Safari/534.16','127.0.0.1',2),('6c2f689efcc31ff732093e55a9ed0c42',1297325542,NULL,'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.16 (KHTML, like Gecko) Chrome/10.0.648.45 Safari/534.16','127.0.0.1',2),('ff58a614b6aedd4e77eab3126ea0f82f',1297322986,NULL,'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.16 (KHTML, like Gecko) Chrome/10.0.648.45 Safari/534.16','127.0.0.1',2),('b219f7535929513c2a9e08a30bcbc92b',1297322967,1297322979,'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.16 (KHTML, like Gecko) Chrome/10.0.648.45 Safari/534.16','127.0.0.1',2),('6fc3b6b03ad3009302220de729c2c5ce',1299609156,1299609747,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/534.23 (KHTML, like Gecko) Chrome/11.0.686.3 Safari/534.23','66.241.66.199',2),('a7c5187f2505fe509386775f39d8d67f',1299726246,1299729001,'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.15) Gecko/20110303 Firefox/3.6.15','71.84.168.245',2),('3d302d87b99fa9f71b08f4cb0b7a542f',1299727435,1299729011,'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.15) Gecko/20110303 Firefox/3.6.15','71.84.168.245',2),('09e30ae470508820bdbb5d808aa039b3',1299875466,1299875477,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.3 Safari/534.24','66.241.66.199',2),('96075111ed14bcecd0ee9ecd28d7af06',1299880948,1299881311,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.3 Safari/534.24','66.241.66.199',2),('05a399d5c7ff24e8c49569cca2cb644a',1299895545,1299963277,'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8F190 Safari/6533.18.5','166.205.141.215',2),('577c9fe8f444584e77ead93c8840229d',1299963308,NULL,'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8F190 Safari/6533.18.5','166.205.141.215',2),('901be40ed1337453d491e4381fbaab04',1299963309,NULL,'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8F190 Safari/6533.18.5','166.205.141.215',2),('575376dd52a99e5a7cb056f8852fcc05',1299968134,1299968141,'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3 (.NET CLR 3.5.30729)','71.84.168.245',2),('63b43f96ac50711230c1c2d90dbc2500',1299968148,1299968280,'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3 (.NET CLR 3.5.30729)','71.84.168.245',2),('32fd9193f11017faa8b2bf89ec20ecfc',1299973795,NULL,'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8F190 Safari/6533.18.5','166.205.141.215',2),('42021bf48dbb57c8e3c0344a65f831b3',1300035562,NULL,'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8F190 Safari/6533.18.5','166.205.141.215',2),('6789864be3edc2c4211e756f55aa085f',1300123146,1300123176,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.3 Safari/534.24','66.241.66.199',2),('bfd6780bbb62a4af544239a75d67a9b1',1300130742,NULL,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.3 Safari/534.24','66.241.66.199',2),('c86d88973d6a35bafab27d51548f267f',1300245216,NULL,'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8F190 Safari/6533.18.5','166.205.141.190',2),('767622497663091fbc16aee1d0c6c1cd',1300251605,NULL,'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8F190 Safari/6533.18.5','166.205.141.190',2),('ee51661297aa0254cf267dafa4d777b5',1300295124,1300295140,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.3 Safari/534.24','66.241.66.199',2),('5db30dd297a149939c71776a8c1ed826',1300310195,NULL,'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8F190 Safari/6533.18.5','166.205.141.190',2),('1ba4aedf3732f88fd999067b8e231cca',1300389731,NULL,'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8F190 Safari/6533.18.5','166.205.142.149',2),('2471d83b14060e44069203ab6f2ba301',1300499483,NULL,'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8F190 Safari/6533.18.5','166.205.142.95',2),('04afd7b426c72e46aa025e2507af6006',1300509461,NULL,'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8F190 Safari/6533.18.5','166.205.142.95',2),('517a9969945501e18a35ddc27353f1c6',1300587573,NULL,'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8F190 Safari/6533.18.5','166.205.141.2',2),('ecd85754d6af6ff34f3510b5e5a2ea3e',1300667083,NULL,'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8F190 Safari/6533.18.5','71.84.168.245',2),('4524cfa18e46cff3e4bb0629c9ee7a5e',1300668512,1300668646,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.14 Safari/534.24','71.84.168.245',2),('71d78720123b5c154f5984a1aea02fb9',1300668691,NULL,'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5','71.84.168.245',2),('7113e1282a71c93f047692f1b2b5ae39',1300677855,1300677874,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.14 Safari/534.24','71.84.168.245',2),('c40cf9236a537196674170251172fd60',1300811792,NULL,'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8F190 Safari/6533.18.5','66.241.66.199',2),('89a6e2e40aa707dc2a6edc3d9416d825',1300827591,NULL,'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.15) Gecko/20110303 Firefox/3.6.15','66.241.66.199',2),('97c59aee16652ceb0f36ef603688b97c',1300847325,NULL,'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8F190 Safari/6533.18.5','166.205.142.179',2),('4f471d5dafef1e1a78d63fd4282821f3',1300931399,NULL,'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8F190 Safari/6533.18.5','71.84.168.245',2),('e7a79ff0b7134639ca3eb30c21a60cbf',1301012680,NULL,'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8F190 Safari/6533.18.5','71.84.168.245',2),('950560f05f1d5de824f1e2f613822fb0',1301040785,1301040820,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.16 Safari/534.24','71.84.168.245',2),('c6b53c8932cd9bc65195f777df4b665e',1301104570,NULL,'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8F190 Safari/6533.18.5','166.205.140.30',2),('b125695a304b7f1c829b1342160be6f7',1301255502,1301255979,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/534.27 (KHTML, like Gecko) Chrome/12.0.712.0 Safari/534.27','71.84.168.245',2),('15db8f9e25ad328848955c341976e90f',1301329326,NULL,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/534.27 (KHTML, like Gecko) Chrome/12.0.712.0 Safari/534.27','66.241.66.199',2),('8ec5732cdeef840f3180891b968a13bb',1301446544,NULL,'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8F190 Safari/6533.18.5','166.205.140.50',2),('26b90f93470b39b6ae3b7f7d84502d54',1301610333,NULL,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/534.27 (KHTML, like Gecko) Chrome/12.0.712.0 Safari/534.27','66.241.66.199',2),('82b447712a8de2058c22ecc3efbb92f6',1301624785,NULL,'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8F190 Safari/6533.18.5','71.84.168.245',2),('68b570843318dd314afa3ba5721217bd',1301627540,NULL,'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5','71.84.168.245',2),('1248771695fd59315a7cbe6806681036',1301718232,NULL,'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8F190 Safari/6533.18.5','71.84.168.245',2),('399b58941e445a24fafd8fa51a2823dd',1301764213,NULL,'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8F190 Safari/6533.18.5','166.205.140.28',2),('3ca8a070242eb3c868c769d0f8b75ea6',1301784670,NULL,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/534.27 (KHTML, like Gecko) Chrome/12.0.712.0 Safari/534.27','71.84.168.245',2),('f58775212f1bf9e54caa754d87b0e750',1301789409,1301794780,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/534.27 (KHTML, like Gecko) Chrome/12.0.712.0 Safari/534.27','71.84.168.245',2),('e079de72c721374b2b9a4a26b4af3a0b',1301800857,1301802191,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/534.27 (KHTML, like Gecko) Chrome/12.0.712.0 Safari/534.27','71.84.168.245',2),('a0a404084fdfe17f9f884a5edda816ee',1301807766,NULL,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/534.27 (KHTML, like Gecko) Chrome/12.0.712.0 Safari/534.27','71.84.168.245',2),('8b468ff486dfe5dec6933f50a510923a',1301853989,NULL,'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8F190 Safari/6533.18.5','71.84.168.245',2),('b580259e36b7a5b2dca99549169e5ece',1301880755,NULL,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/534.27 (KHTML, like Gecko) Chrome/12.0.712.0 Safari/534.27','71.84.168.245',2),('ce60c4a99c48db91b4dbccfcfceedfd9',1301956321,NULL,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/534.27 (KHTML, like Gecko) Chrome/12.0.712.0 Safari/534.27','66.241.66.199',2),('1d198ba4ce911d6c62f9a6c848a3b1f8',1301961440,NULL,'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Mobile/8F190','66.241.66.199',2),('4848b1f4a494ce78591bf9cc4e97f939',1301970307,NULL,'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Mobile/8F190','71.84.168.245',2),('fc82f45089d137266e561c742b9e965f',1301979162,NULL,'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8F190 Safari/6533.18.5','71.84.168.245',2),('321ba17ddb4f33c0cd19223917fbfe3f',1301979899,NULL,'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2 like Mac OS X; en) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C134 Safari/6533.18.5','71.84.168.245',2),('f8c72eb59e33ac1401bda9398f95f684',1301980651,NULL,'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2 like Mac OS X; en) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C134 Safari/6533.18.5','71.84.168.245',2),('6a33ee3375521629431654d1c4323329',1302016998,NULL,'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2 like Mac OS X; en) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C134 Safari/6533.18.5','166.205.142.92',2),('dceb1099f8b2415f4168c6b11695dfdc',1302026163,NULL,'Mozilla/5.0 (Macintosh; U; Intel Mac OS X Mach-O; en-en; rv:1.9.0.12) Gecko/2009070609 Firefox/3.0.12','66.241.66.199',2),('34da2f2f6689b7cc3e7388b7465eed5e',1302062503,NULL,'Mozilla/5.0 (Macintosh; U; Intel Mac OS X Mach-O; en-en; rv:1.9.0.12) Gecko/2009070609 Firefox/3.0.12','71.84.168.245',2),('00d2241a811867fa032ffdd6e54ab2c2',1302098748,NULL,'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2 like Mac OS X; en) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C134 Safari/6533.18.5','166.205.140.40',2),('fffa040adb535f7c8a662a03720bebb8',1302107273,NULL,'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2 like Mac OS X; en) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C134 Safari/6533.18.5','66.241.66.199',2),('26aa69cf61cc6d321ad87313a7348245',1302142085,NULL,'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5','166.205.143.236',2),('a328a59f0fc0baf72e7106e4d88f5d19',1302142332,NULL,'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2 like Mac OS X; en) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C134 Safari/6533.18.5','166.205.143.112',2),('3338a63ec44c1efcb8b204ed459bf875',1302151416,NULL,'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2 like Mac OS X; en) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C134 Safari/6533.18.5','71.84.168.245',2),('39b158f4b28b45604dc1a15670016ab7',1302219631,NULL,'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5','71.84.168.245',2),('36422864e34c36d31f60d0512019699a',1302221566,NULL,'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2 like Mac OS X; en) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C134 Safari/6533.18.5','166.205.143.187',2),('de159a717ef9ed3ffac9c998595fcc14',1302238205,NULL,'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2 like Mac OS X; en) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C134 Safari/6533.18.5','71.84.168.245',2),('fe3065357a887ada504de4861e293013',1302301920,1302302114,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.28 (KHTML, like Gecko) Chrome/12.0.725.0 Safari/534.28','66.241.66.199',2),('7e2d1531fee2ddd2e1dafe643bb20b9f',1302302208,NULL,'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5','71.84.168.245',2),('98747a24277b8228ba70c5e5416991d3',1302321547,NULL,'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2 like Mac OS X; en) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C134 Safari/6533.18.5','71.84.168.245',2),('f4d108054975d0be74340696956b994c',1302368023,NULL,'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2 like Mac OS X; en) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C134 Safari/6533.18.5','71.84.168.245',2),('316cd2aa81334ddc681f9c182c9f6ac4',1302376605,NULL,'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2 like Mac OS X; en) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C134 Safari/6533.18.5','166.205.141.176',2),('73b4e0b1bca3fa3078919a197bc656e2',1302404822,NULL,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.28 (KHTML, like Gecko) Chrome/12.0.725.0 Safari/534.28','71.84.168.245',2),('385a0bd2a6e7991e6a7a42a4e34c5439',1302404822,1302405774,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.28 (KHTML, like Gecko) Chrome/12.0.725.0 Safari/534.28','71.84.168.245',2),('001a903a6d8cefd7129563ec5239b46b',1302455174,1302455919,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.28 (KHTML, like Gecko) Chrome/12.0.725.0 Safari/534.28','71.84.168.245',2),('58d28c1dbc053b806b5f43e310940e5e',1302486674,NULL,'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5','71.84.168.245',2),('26849a25bee8f6f6fc5abeab21ed363e',1302540704,NULL,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.28 (KHTML, like Gecko) Chrome/12.0.725.0 Safari/534.28','66.241.66.199',2),('6d29964b9f5b422915ddc553a8495dca',1302558612,NULL,'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2 like Mac OS X; en) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C134 Safari/6533.18.5','66.241.66.199',2),('27e7ea1b9da239c7d77e37877c7132cc',1302559152,NULL,'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5','166.205.142.24',2),('9e266b313a5a29ea6fef26a8f22cb979',1302574719,NULL,'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2 like Mac OS X; en) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C134 Safari/6533.18.5','71.84.168.245',2),('b278207640cd6cd1fe796bdf5621b919',1302705938,NULL,'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2 like Mac OS X; en) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C134 Safari/6533.18.5','71.84.168.245',2),('68849def587de9a5836156f0bd7ff9cd',1302728773,1302728811,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.29 (KHTML, like Gecko) Chrome/12.0.733.0 Safari/534.29','66.241.66.199',2),('d8d9ed6e5d56424350c70510dcf3c9f5',1302753222,NULL,'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2 like Mac OS X; en) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C134 Safari/6533.18.5','71.84.168.245',2),('7d55cf7740e09db798ac8095ce344550',1302799278,NULL,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.29 (KHTML, like Gecko) Chrome/12.0.733.0 Safari/534.29','66.241.66.199',2),('fe5ec1e89b21c20f336bc6677a67de67',1302841980,NULL,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.29 (KHTML, like Gecko) Chrome/12.0.733.0 Safari/534.29','71.84.168.245',2),('d4d565b43b001e61a578c6e229513dda',1302898253,NULL,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.29 (KHTML, like Gecko) Chrome/12.0.733.0 Safari/534.29','66.241.66.199',2),('58fee5fde667752b5f5608d9921f8528',1302918615,NULL,'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2 like Mac OS X; en) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C134 Safari/6533.18.5','166.205.143.184',2),('8c395a61f23265c8b187adbc89d8e656',1302942475,NULL,'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_8; en-us) AppleWebKit/533.20.25 (KHTML, like Gecko) Version/5.0.4 Safari/533.20.27','67.43.73.67',2),('1aafe4e695185c64d96f9b598d6be040',1302975339,1302975992,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:2.0) Gecko/20100101 Firefox/4.0','67.43.73.67',2),('c7ac2fff5ace57081b49867960088f81',1302976009,1302976023,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:2.0) Gecko/20100101 Firefox/4.0','67.43.73.67',34),('f6acfff40e2b473d95c2f101ecc17fd8',1302976357,1302976377,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:2.0) Gecko/20100101 Firefox/4.0','67.43.73.67',34),('96fc9ba3154d71a38b8ab7faee1cd556',1303000067,1303000087,'Mozilla/5.0 (Linux; U; Android 3.0.1; en-us; Xoom Build/HRI66) AppleWebKit/534.13 (KHTML, like Gecko) Version/4.0 Safari/534.13','166.252.98.8',2),('684044a1d56fbcf6e27efc0a7eef2898',1303011955,NULL,'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2 like Mac OS X; en) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C134 Safari/6533.18.5','166.205.140.119',2),('18fa991033ad35fcc9d2f2d068b9a2e6',1303017092,1303018888,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.5; rv:2.0) Gecko/20100101 Firefox/4.0','67.43.73.67',2),('7e74a3b903e1a5c9e5db8c2b80113636',1303095886,1303097686,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.29 (KHTML, like Gecko) Chrome/12.0.733.0 Safari/534.29','71.84.174.95',2),('45d1c3302e687711c020d6784cc33350',1303100783,NULL,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.29 (KHTML, like Gecko) Chrome/12.0.733.0 Safari/534.29','71.84.174.95',2),('dd8f97c954a8f8ec8fddc83f1c8b4851',1303102571,NULL,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.29 (KHTML, like Gecko) Chrome/12.0.733.0 Safari/534.29','71.84.174.95',2),('86af04a7db287a270d4c47ba4ca43a3e',1303102572,1303102584,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.29 (KHTML, like Gecko) Chrome/12.0.733.0 Safari/534.29','71.84.174.95',2),('92cf1deb5e4ea811cd53cdef09305e13',1303146007,1303146060,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.29 (KHTML, like Gecko) Chrome/12.0.733.0 Safari/534.29','66.241.66.199',2),('05adcd97e93e001ad3f1e9832a47fe37',1303178906,NULL,'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2 like Mac OS X; en) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C134 Safari/6533.18.5','166.205.141.246',2),('a8bb2990b9fa660a7cd7befea811f0df',1303195037,NULL,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.29 (KHTML, like Gecko) Chrome/12.0.733.0 Safari/534.29','71.84.174.95',2),('9ec68a08c41db4d9820cde6f53f07894',1303195056,1303195621,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.29 (KHTML, like Gecko) Chrome/12.0.733.0 Safari/534.29','71.84.174.95',2),('2b24fb3249a2a7c3568aa7f8f842f793',1303225993,NULL,'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2 like Mac OS X; en) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C134 Safari/6533.18.5','166.205.141.246',2),('3813d77e592bc8221b8d3caa97dce954',1303264436,NULL,'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5','71.84.174.95',2),('1bfb4acbf489cc0b8188afe43ee307ff',1303277725,NULL,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.29 (KHTML, like Gecko) Chrome/12.0.733.0 Safari/534.29','71.84.174.95',2),('7492b763fa824adef0781c1cff37adbc',1303322561,NULL,'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8F190 Safari/6533.18.5','166.205.141.246',2),('f406b3af1b246429c2231ab20d1591c3',1303323287,1303323302,'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.16) Gecko/20110319 Firefox/3.6.16','66.241.66.199',2),('a9ff6d1421a07701de7ad96c8f55fc09',1303340317,NULL,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.29 (KHTML, like Gecko) Chrome/12.0.733.0 Safari/534.29','66.241.66.199',2),('369e4124ec8598c28c5239a99db0eac1',1303452409,1303453737,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.0 Safari/534.30','71.84.174.95',2),('7db02730819df3b5351d2bd167753bcb',1303488455,NULL,'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8F190 Safari/6533.18.5','166.205.140.215',2),('2082ad68d37b3eb859b64bc6db059297',1303514552,NULL,'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8F190 Safari/6533.18.5','166.205.140.215',2),('8c5c272196992427a606e44309234a3a',1303514722,NULL,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.0 Safari/534.30','71.84.174.95',2),('077c75be2ce1d7882f6b579534cfd948',1303664398,1303664889,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.5 Safari/534.30','71.84.168.65',2),('dabd21b9c886ec9f014960a078c1a126',1303665119,1303666612,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.5 Safari/534.30','71.84.168.65',2),('f64f923b3665c0e68cdcd382b785951e',1303669755,NULL,'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_8; en-us) AppleWebKit/533.21.1 (KHTML, like Gecko) Version/5.0.5 Safari/533.21.1','67.43.73.67',34),('8c9fc1297d1a2e5b875fd6dc3679bf2c',1303680954,1303681342,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.5 Safari/534.30','71.84.168.65',2),('529052cace9e1f0f2d4cce4edba8729f',1303681486,1303682487,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.5 Safari/534.30','71.84.168.65',2),('475d5104ae102c5cfca57208fa3b3526',1303691281,1303691489,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.5 Safari/534.30','71.84.168.65',2),('5cadce82322c13e4009ddf72e2b9b074',1303695410,NULL,'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8F190 Safari/6533.18.5','166.205.140.215',2),('f4f11b77ffa2ea9e56eceaef5a53548a',1303695689,1303695723,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.5 Safari/534.30','71.84.168.65',2),('36fe72e42a31b6978e0ef3ced4136ec6',1303695829,NULL,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.5 Safari/534.30','71.84.168.65',2);
/*!40000 ALTER TABLE `common_Sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `common_Settings`
--

DROP TABLE IF EXISTS `common_Settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `common_Settings` (
  `setting_id` int(100) NOT NULL AUTO_INCREMENT,
  `title` varchar(1000) DEFAULT NULL,
  `value` varchar(5000) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `common_Settings`
--

LOCK TABLES `common_Settings` WRITE;
/*!40000 ALTER TABLE `common_Settings` DISABLE KEYS */;
INSERT INTO `common_Settings` (`setting_id`, `title`, `value`, `active`) VALUES (0,'test','test',0),(4,'test-setting','This is a test setting.',0),(3,'mail-to-address','colehafner@gmail.com',1),(5,'Test-setting-IV','This is a the second test setting.',0),(6,'new-setting','test',0),(7,'test-setting-II','test value',0),(8,'site-name','coleandheather.com',1);
/*!40000 ALTER TABLE `common_Settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `common_UserToPermission`
--

DROP TABLE IF EXISTS `common_UserToPermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `common_UserToPermission` (
  `user_id` int(100) NOT NULL,
  `permission_id` int(100) NOT NULL,
  PRIMARY KEY (`user_id`,`permission_id`),
  KEY `permission_id` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `common_UserToPermission`
--

LOCK TABLES `common_UserToPermission` WRITE;
/*!40000 ALTER TABLE `common_UserToPermission` DISABLE KEYS */;
INSERT INTO `common_UserToPermission` (`user_id`, `permission_id`) VALUES (2,5),(32,12),(33,5),(34,12);
/*!40000 ALTER TABLE `common_UserToPermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `common_UserTypes`
--

DROP TABLE IF EXISTS `common_UserTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `common_UserTypes` (
  `user_type_id` int(100) NOT NULL AUTO_INCREMENT,
  `title` varchar(1000) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`user_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `common_UserTypes`
--

LOCK TABLES `common_UserTypes` WRITE;
/*!40000 ALTER TABLE `common_UserTypes` DISABLE KEYS */;
INSERT INTO `common_UserTypes` (`user_type_id`, `title`, `active`) VALUES (1,NULL,0),(2,'Groom',1),(3,'Bride',1),(0,'Mother of the groom',1);
/*!40000 ALTER TABLE `common_UserTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `common_Users`
--

DROP TABLE IF EXISTS `common_Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `common_Users` (
  `user_id` int(100) NOT NULL AUTO_INCREMENT,
  `thumb_id` int(100) DEFAULT '0',
  `user_type_id` int(100) DEFAULT '0',
  `username` varchar(1000) NOT NULL,
  `email` varchar(1000) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `first_name` varchar(1000) DEFAULT NULL,
  `last_name` varchar(1000) DEFAULT NULL,
  `bio` varchar(5000) DEFAULT NULL,
  `use_gravatar` tinyint(1) DEFAULT '0',
  `active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`user_id`),
  KEY `thumb_id` (`thumb_id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `common_Users`
--

LOCK TABLES `common_Users` WRITE;
/*!40000 ALTER TABLE `common_Users` DISABLE KEYS */;
INSERT INTO `common_Users` (`user_id`, `thumb_id`, `user_type_id`, `username`, `email`, `password`, `first_name`, `last_name`, `bio`, `use_gravatar`, `active`) VALUES (0,0,0,'','','',NULL,NULL,NULL,0,0),(2,172,3,'admin','colehafner@gmail.com','915736809103c55faec9a0010bc518fb68e7e3a7a402b984954420cf14f07a57b5437dec1d6d8a91d4b539909d89f695216210fbba445d358860e5b61a3f20868594234a','Cole','Hafner','Cole hafner is the creator of this site and the Groom. ',1,1),(32,173,3,'heatherBlack','heatherleeblack@gmail.com','1399223243451d42b917cabc5a8653cd62a3112b089c35d595717434c82fae74490d0467ecb1b4f30b11d29f206c2f82fa8cfa31b4c5d5312a840f202f42fb77a29ec8a1','Heather','Black','Hi, I\\\'m the Bride. Lol.',0,1),(33,174,2,'coleHafner','cole@spawnordie.com','13881504f4c073e0ef3474bdab0fe551ede2cb64f5c329c653d0c383597e0727f56e74028ed0abd18b29b363cb9470b3e8c1facc45ca07760507df147cae7767a5058b80','cole','hafner','I am the groom.',0,0),(34,177,16,'crispy822@gmail.com','crispy822@gmail.com','69148549ad323bb43446673ba99a5d557c28e7b1110f4aee9a73ca98519de46097cc37ff443a95912696c6b59be21f2596702cf33d946adb6e08dc42ef0342a42e185bca','Christine','Bender Hafner','Mother of the groom.',0,1);
/*!40000 ALTER TABLE `common_Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `common_Views`
--

DROP TABLE IF EXISTS `common_Views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `common_Views` (
  `view_id` int(100) NOT NULL AUTO_INCREMENT,
  `controller_name` varchar(1000) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `requires_auth` tinyint(1) DEFAULT '0',
  `show_in_nav` tinyint(1) DEFAULT '1',
  `alias` varchar(1000) DEFAULT NULL,
  `nav_priority` int(11) DEFAULT NULL,
  `nav_image_id` int(11) DEFAULT NULL,
  `parent_view_id` int(100) NOT NULL DEFAULT '0',
  `external_link` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`view_id`),
  KEY `nav_image_id` (`nav_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `common_Views`
--

LOCK TABLES `common_Views` WRITE;
/*!40000 ALTER TABLE `common_Views` DISABLE KEYS */;
INSERT INTO `common_Views` (`view_id`, `controller_name`, `active`, `requires_auth`, `show_in_nav`, `alias`, `nav_priority`, `nav_image_id`, `parent_view_id`, `external_link`) VALUES (47,'Posts',1,1,0,'Posts',0,NULL,0,NULL),(1,'Index',1,0,1,'Our Story',1,0,0,NULL),(11,'Admin',1,1,0,'Administration',0,0,0,NULL),(0,NULL,0,0,0,NULL,0,NULL,0,NULL),(46,'Account',1,1,0,'My Account',0,NULL,0,NULL),(44,'Users',1,0,0,'Users',0,NULL,0,NULL),(52,'PostWall',1,0,1,'Write Us',4,NULL,0,NULL),(50,'Rsvp',1,0,1,'RSVP',2,NULL,0,NULL),(51,'Gallery',1,0,1,'Pictures',3,NULL,0,NULL),(53,'Info',1,0,1,'Wedding Info',5,NULL,0,NULL);
/*!40000 ALTER TABLE `common_Views` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-04-24 20:19:23
