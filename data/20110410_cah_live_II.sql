-- phpMyAdmin SQL Dump
-- version 2.8.0.1
-- http://www.phpmyadmin.net
-- 
-- Host: custsqlmoo03
-- Generation Time: Apr 10, 2011 at 01:27 PM
-- Server version: 5.0.91
-- PHP Version: 4.4.9
-- 
-- Database: `cah_live`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `cah_Addresses`
-- 

DROP TABLE IF EXISTS `cah_Addresses`;
CREATE TABLE `cah_Addresses` (
  `address_id` int(100) NOT NULL auto_increment,
  `street_address` varchar(1000) default NULL,
  `city` varchar(1000) default NULL,
  `state` varchar(1000) default NULL,
  `zip` varchar(1000) default NULL,
  `active` tinyint(1) default '1',
  PRIMARY KEY  (`address_id`)
) ENGINE=MyISAM AUTO_INCREMENT=572 DEFAULT CHARSET=latin1 AUTO_INCREMENT=572 ;

-- 
-- Dumping data for table `cah_Addresses`
-- 

INSERT INTO `cah_Addresses` VALUES (0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `cah_Addresses` VALUES (571, '1452 Mill Pond Rd.', 'Ashland', 'OR', '97520', 1);
INSERT INTO `cah_Addresses` VALUES (570, '32265 N Fork Rd.', 'Lyons', 'OR', '97358', 1);
INSERT INTO `cah_Addresses` VALUES (569, 'PO Box 411', 'Sublimity', 'OR', '97385', 1);
INSERT INTO `cah_Addresses` VALUES (568, 'PO Box 121', 'Lyons', 'OR', '97358', 1);
INSERT INTO `cah_Addresses` VALUES (567, 'PO Box 53', 'Lyons', 'OR', '97358', 1);
INSERT INTO `cah_Addresses` VALUES (565, 'One Towers Ln. Box 2118 #A-1', 'Mt. Angel', 'OR', '97362', 1);
INSERT INTO `cah_Addresses` VALUES (566, 'Elliot Residence #217 390 SE Church', 'Sublimity', 'OR', '97385', 1);
INSERT INTO `cah_Addresses` VALUES (564, '1154 Dawn Dr.', 'Stayton', 'OR', '97383', 1);
INSERT INTO `cah_Addresses` VALUES (563, '1307 Heritage Loop', 'Stayton', 'OR', '97383', 1);
INSERT INTO `cah_Addresses` VALUES (562, '1276 82nd SE', 'Salem', 'OR', '97317', 1);
INSERT INTO `cah_Addresses` VALUES (561, 'PO Box 727', 'Mill City', 'OR', '97360', 1);
INSERT INTO `cah_Addresses` VALUES (560, 'PO Box 723', 'Sublimity', 'OR', '97385', 1);
INSERT INTO `cah_Addresses` VALUES (559, '40931 Rodgers Mtn. Loop', 'Scio', 'OR', '97374', 1);
INSERT INTO `cah_Addresses` VALUES (558, '5715 Anderson Rd. SE', 'Aumsville', 'OR', '97325', 1);
INSERT INTO `cah_Addresses` VALUES (557, '4609 Toutle Ct. SE', 'Olympia', 'WA', '98501', 1);
INSERT INTO `cah_Addresses` VALUES (556, '1905 Madison Dr.', 'Lavergne', 'TN', '37086', 1);
INSERT INTO `cah_Addresses` VALUES (555, '225 Walden St. #3F', 'Cambridge', 'MA', '02140', 1);
INSERT INTO `cah_Addresses` VALUES (554, '7732 SE Ramona St.', 'Portland', 'OR', '97206', 1);
INSERT INTO `cah_Addresses` VALUES (553, '12785 Parrish Gap Rd. SE', 'Turner', 'OR', '97392', 1);
INSERT INTO `cah_Addresses` VALUES (552, '2642 NW Ginseng Pl.', 'Corvallis', 'OR', '97330', 1);
INSERT INTO `cah_Addresses` VALUES (551, 'PO Box 698', 'Lyons', 'OR', '97358', 1);
INSERT INTO `cah_Addresses` VALUES (550, '202 Jefferson St. #2', 'Bend', 'OR', '97701', 1);
INSERT INTO `cah_Addresses` VALUES (549, 'PO Box 177', 'Selma', 'OR', '97538', 1);
INSERT INTO `cah_Addresses` VALUES (548, '123 Main St.', 'Stayton', 'OR', '97383', 1);
INSERT INTO `cah_Addresses` VALUES (547, 'PO Box 562', 'Stayton', 'OR', '97383', 1);
INSERT INTO `cah_Addresses` VALUES (546, '378 Church St.', 'Sublimity', 'OR', '97385', 1);
INSERT INTO `cah_Addresses` VALUES (545, '1244 Calypso Ct.', 'Ashland', 'OR', '97520', 1);
INSERT INTO `cah_Addresses` VALUES (544, '19395 E. Evans Creek Rd.', 'White City', 'OR', '97305', 1);
INSERT INTO `cah_Addresses` VALUES (543, '168 W. 300 St.', 'Herber City', 'UT', '84032', 1);
INSERT INTO `cah_Addresses` VALUES (542, '496 Starflower Ln.', 'Ashland', 'OR', '97520', 1);
INSERT INTO `cah_Addresses` VALUES (541, '3611 NW Upas Ave.', 'Redmond', 'OR', '97756', 1);
INSERT INTO `cah_Addresses` VALUES (540, '12744 Brick Rd.', 'Turner', 'OR', '97392', 1);
INSERT INTO `cah_Addresses` VALUES (539, '200 E Grant St.', 'Enterprise', 'OR', '97828', 1);
INSERT INTO `cah_Addresses` VALUES (538, '1102 N. 13th St.', 'Boise', 'ID', '83702', 1);
INSERT INTO `cah_Addresses` VALUES (537, '6810 Jerdon Ct. N', 'Keizer', 'OR', '97303', 1);
INSERT INTO `cah_Addresses` VALUES (536, '108 5th St. #8', 'Ashland', 'OR', '97520', 1);
INSERT INTO `cah_Addresses` VALUES (535, '442 W. Berdine St.', 'Roseburg', 'OR', '97471', 1);
INSERT INTO `cah_Addresses` VALUES (534, '3514 SW Reindeer Ave.', 'Redmond', 'OR', '97756', 1);
INSERT INTO `cah_Addresses` VALUES (533, 'PO Box 1005', 'Aumsville', 'OR', '97325', 1);
INSERT INTO `cah_Addresses` VALUES (532, '1153 Stanford Ave.', 'Palo Alto', 'CA', '94306', 1);
INSERT INTO `cah_Addresses` VALUES (531, '1170 Barnes Ave. #221', 'Salem', 'OR', '97306', 1);
INSERT INTO `cah_Addresses` VALUES (530, '8029 SE 24th', 'Portland', 'OR', '97202', 1);
INSERT INTO `cah_Addresses` VALUES (529, '3403 Marigold Dr.', 'Prescott', 'AZ', '97385', 1);
INSERT INTO `cah_Addresses` VALUES (528, '701 Larkspur Ct.', 'Sublimity', 'OR', '97385', 1);
INSERT INTO `cah_Addresses` VALUES (527, '511.5 S. Meldrum St.', 'Fort Collins', 'CO', '80521', 1);
INSERT INTO `cah_Addresses` VALUES (526, '5405 W. Arlington', 'Yakima', 'WA', '98908', 1);
INSERT INTO `cah_Addresses` VALUES (525, '6590 Griffin Creek Rd', 'Medford', 'OR', '97501', 1);
INSERT INTO `cah_Addresses` VALUES (524, '2863 Camp Baker Rd.', 'Medford', 'OR', '97501', 1);
INSERT INTO `cah_Addresses` VALUES (523, '400 N. Colorado St. #203B', 'Gunnison', 'CO', '81230', 1);
INSERT INTO `cah_Addresses` VALUES (522, '2459 NW 22nd St.', 'Redmond', 'OR', '97756', 1);
INSERT INTO `cah_Addresses` VALUES (521, '1821 Taylor Circle', 'Reedsburg', 'WI', '53959', 1);
INSERT INTO `cah_Addresses` VALUES (520, '175 High St.', 'Lee', 'MA', '01238', 1);
INSERT INTO `cah_Addresses` VALUES (519, '4920 Whisting Acres', 'Las Vegas', 'NV', '89131', 1);
INSERT INTO `cah_Addresses` VALUES (518, '7513 Mardean Ct.', 'Las Vegas', 'NV', '89131', 1);
INSERT INTO `cah_Addresses` VALUES (517, '230 N. McDow St.', 'Susanville', 'CA', '96130', 1);
INSERT INTO `cah_Addresses` VALUES (516, '3570 Lost Hills Dr.', 'Las Vegas', 'NV', '89122', 1);
INSERT INTO `cah_Addresses` VALUES (515, '3688 Cavender Creek Rd.', 'Danlonega', 'GA', '30533', 1);
INSERT INTO `cah_Addresses` VALUES (514, '1365 Burtschell Place', 'Crescent City', 'CA', '95531', 1);
INSERT INTO `cah_Addresses` VALUES (513, '2472 W. Silverstreak Way', 'Queen Creek', 'AZ', '85242', 1);
INSERT INTO `cah_Addresses` VALUES (512, '53507 N. Thomas Rd.', 'Benton City', 'WA', '99320', 1);
INSERT INTO `cah_Addresses` VALUES (511, '4826 Jean St. SE', 'Salem', 'OR', '97305', 1);
INSERT INTO `cah_Addresses` VALUES (510, '4848 North Start Ct.', 'Salem', 'OR', '97305', 1);
INSERT INTO `cah_Addresses` VALUES (509, '3254 Ridgeway Dr.', 'Turner', 'OR', '97392', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `cah_Facts`
-- 

DROP TABLE IF EXISTS `cah_Facts`;
CREATE TABLE `cah_Facts` (
  `fact_id` int(100) NOT NULL auto_increment,
  `user_id` int(100) NOT NULL,
  `fact` varchar(1000) default NULL,
  `active` tinyint(1) default '1',
  PRIMARY KEY  (`fact_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `cah_Facts`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `cah_GuestToGuestType`
-- 

DROP TABLE IF EXISTS `cah_GuestToGuestType`;
CREATE TABLE `cah_GuestToGuestType` (
  `guest_to_guest_type_id` int(100) NOT NULL auto_increment,
  `guest_id` int(100) NOT NULL,
  `guest_type_id` int(100) NOT NULL,
  PRIMARY KEY  (`guest_to_guest_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1447 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1447 ;

-- 
-- Dumping data for table `cah_GuestToGuestType`
-- 

INSERT INTO `cah_GuestToGuestType` VALUES (1263, 1175, 146);
INSERT INTO `cah_GuestToGuestType` VALUES (1264, 1175, 147);
INSERT INTO `cah_GuestToGuestType` VALUES (1265, 1176, 146);
INSERT INTO `cah_GuestToGuestType` VALUES (1266, 1176, 148);
INSERT INTO `cah_GuestToGuestType` VALUES (1267, 1177, 146);
INSERT INTO `cah_GuestToGuestType` VALUES (1268, 1178, 146);
INSERT INTO `cah_GuestToGuestType` VALUES (1269, 1179, 146);
INSERT INTO `cah_GuestToGuestType` VALUES (1270, 1180, 146);
INSERT INTO `cah_GuestToGuestType` VALUES (1271, 1181, 146);
INSERT INTO `cah_GuestToGuestType` VALUES (1272, 1182, 146);
INSERT INTO `cah_GuestToGuestType` VALUES (1273, 1183, 146);
INSERT INTO `cah_GuestToGuestType` VALUES (1274, 1184, 146);
INSERT INTO `cah_GuestToGuestType` VALUES (1275, 1185, 146);
INSERT INTO `cah_GuestToGuestType` VALUES (1276, 1185, 149);
INSERT INTO `cah_GuestToGuestType` VALUES (1277, 1186, 146);
INSERT INTO `cah_GuestToGuestType` VALUES (1278, 1187, 146);
INSERT INTO `cah_GuestToGuestType` VALUES (1279, 1188, 146);
INSERT INTO `cah_GuestToGuestType` VALUES (1280, 1189, 146);
INSERT INTO `cah_GuestToGuestType` VALUES (1281, 1190, 146);
INSERT INTO `cah_GuestToGuestType` VALUES (1282, 1191, 146);
INSERT INTO `cah_GuestToGuestType` VALUES (1283, 1192, 146);
INSERT INTO `cah_GuestToGuestType` VALUES (1284, 1193, 146);
INSERT INTO `cah_GuestToGuestType` VALUES (1285, 1194, 150);
INSERT INTO `cah_GuestToGuestType` VALUES (1286, 1194, 151);
INSERT INTO `cah_GuestToGuestType` VALUES (1287, 1194, 152);
INSERT INTO `cah_GuestToGuestType` VALUES (1288, 1194, 153);
INSERT INTO `cah_GuestToGuestType` VALUES (1289, 1195, 150);
INSERT INTO `cah_GuestToGuestType` VALUES (1290, 1195, 154);
INSERT INTO `cah_GuestToGuestType` VALUES (1291, 1196, 150);
INSERT INTO `cah_GuestToGuestType` VALUES (1292, 1196, 152);
INSERT INTO `cah_GuestToGuestType` VALUES (1293, 1196, 151);
INSERT INTO `cah_GuestToGuestType` VALUES (1294, 1197, 155);
INSERT INTO `cah_GuestToGuestType` VALUES (1295, 1198, 150);
INSERT INTO `cah_GuestToGuestType` VALUES (1296, 1198, 152);
INSERT INTO `cah_GuestToGuestType` VALUES (1297, 1198, 151);
INSERT INTO `cah_GuestToGuestType` VALUES (1298, 1199, 150);
INSERT INTO `cah_GuestToGuestType` VALUES (1299, 1199, 152);
INSERT INTO `cah_GuestToGuestType` VALUES (1300, 1199, 151);
INSERT INTO `cah_GuestToGuestType` VALUES (1301, 1200, 150);
INSERT INTO `cah_GuestToGuestType` VALUES (1302, 1201, 150);
INSERT INTO `cah_GuestToGuestType` VALUES (1303, 1201, 154);
INSERT INTO `cah_GuestToGuestType` VALUES (1304, 1201, 156);
INSERT INTO `cah_GuestToGuestType` VALUES (1305, 1201, 157);
INSERT INTO `cah_GuestToGuestType` VALUES (1306, 1202, 150);
INSERT INTO `cah_GuestToGuestType` VALUES (1307, 1203, 150);
INSERT INTO `cah_GuestToGuestType` VALUES (1308, 1203, 154);
INSERT INTO `cah_GuestToGuestType` VALUES (1309, 1203, 156);
INSERT INTO `cah_GuestToGuestType` VALUES (1310, 1204, 150);
INSERT INTO `cah_GuestToGuestType` VALUES (1311, 1204, 154);
INSERT INTO `cah_GuestToGuestType` VALUES (1312, 1204, 156);
INSERT INTO `cah_GuestToGuestType` VALUES (1313, 1205, 150);
INSERT INTO `cah_GuestToGuestType` VALUES (1314, 1205, 154);
INSERT INTO `cah_GuestToGuestType` VALUES (1316, 1206, 150);
INSERT INTO `cah_GuestToGuestType` VALUES (1317, 1206, 152);
INSERT INTO `cah_GuestToGuestType` VALUES (1318, 1207, 150);
INSERT INTO `cah_GuestToGuestType` VALUES (1319, 1208, 152);
INSERT INTO `cah_GuestToGuestType` VALUES (1320, 1209, 150);
INSERT INTO `cah_GuestToGuestType` VALUES (1321, 1209, 154);
INSERT INTO `cah_GuestToGuestType` VALUES (1322, 1210, 152);
INSERT INTO `cah_GuestToGuestType` VALUES (1323, 1211, 150);
INSERT INTO `cah_GuestToGuestType` VALUES (1324, 1212, 150);
INSERT INTO `cah_GuestToGuestType` VALUES (1325, 1213, 150);
INSERT INTO `cah_GuestToGuestType` VALUES (1326, 1214, 150);
INSERT INTO `cah_GuestToGuestType` VALUES (1327, 1215, 150);
INSERT INTO `cah_GuestToGuestType` VALUES (1328, 1215, 152);
INSERT INTO `cah_GuestToGuestType` VALUES (1329, 1216, 150);
INSERT INTO `cah_GuestToGuestType` VALUES (1330, 1216, 152);
INSERT INTO `cah_GuestToGuestType` VALUES (1331, 1217, 150);
INSERT INTO `cah_GuestToGuestType` VALUES (1332, 1218, 152);
INSERT INTO `cah_GuestToGuestType` VALUES (1333, 1219, 150);
INSERT INTO `cah_GuestToGuestType` VALUES (1334, 1219, 152);
INSERT INTO `cah_GuestToGuestType` VALUES (1335, 1220, 150);
INSERT INTO `cah_GuestToGuestType` VALUES (1336, 1220, 154);
INSERT INTO `cah_GuestToGuestType` VALUES (1337, 1221, 152);
INSERT INTO `cah_GuestToGuestType` VALUES (1338, 1222, 152);
INSERT INTO `cah_GuestToGuestType` VALUES (1339, 1223, 150);
INSERT INTO `cah_GuestToGuestType` VALUES (1340, 1224, 150);
INSERT INTO `cah_GuestToGuestType` VALUES (1341, 1225, 150);
INSERT INTO `cah_GuestToGuestType` VALUES (1342, 1226, 150);
INSERT INTO `cah_GuestToGuestType` VALUES (1343, 1226, 154);
INSERT INTO `cah_GuestToGuestType` VALUES (1344, 1227, 150);
INSERT INTO `cah_GuestToGuestType` VALUES (1345, 1228, 150);
INSERT INTO `cah_GuestToGuestType` VALUES (1346, 1229, 154);
INSERT INTO `cah_GuestToGuestType` VALUES (1347, 1230, 150);
INSERT INTO `cah_GuestToGuestType` VALUES (1348, 1231, 150);
INSERT INTO `cah_GuestToGuestType` VALUES (1349, 1231, 152);
INSERT INTO `cah_GuestToGuestType` VALUES (1350, 1232, 150);
INSERT INTO `cah_GuestToGuestType` VALUES (1351, 1233, 150);
INSERT INTO `cah_GuestToGuestType` VALUES (1352, 1233, 152);
INSERT INTO `cah_GuestToGuestType` VALUES (1353, 1234, 154);
INSERT INTO `cah_GuestToGuestType` VALUES (1354, 1235, 154);
INSERT INTO `cah_GuestToGuestType` VALUES (1355, 1236, 154);
INSERT INTO `cah_GuestToGuestType` VALUES (1356, 1237, 154);
INSERT INTO `cah_GuestToGuestType` VALUES (1357, 1238, 154);
INSERT INTO `cah_GuestToGuestType` VALUES (1358, 1239, 154);
INSERT INTO `cah_GuestToGuestType` VALUES (1359, 1240, 154);
INSERT INTO `cah_GuestToGuestType` VALUES (1360, 1241, 154);
INSERT INTO `cah_GuestToGuestType` VALUES (1361, 1242, 154);
INSERT INTO `cah_GuestToGuestType` VALUES (1362, 1243, 154);
INSERT INTO `cah_GuestToGuestType` VALUES (1363, 1244, 152);
INSERT INTO `cah_GuestToGuestType` VALUES (1364, 1245, 158);
INSERT INTO `cah_GuestToGuestType` VALUES (1365, 1245, 159);
INSERT INTO `cah_GuestToGuestType` VALUES (1366, 1246, 158);
INSERT INTO `cah_GuestToGuestType` VALUES (1367, 1246, 160);
INSERT INTO `cah_GuestToGuestType` VALUES (1368, 1247, 150);
INSERT INTO `cah_GuestToGuestType` VALUES (1369, 1248, 150);
INSERT INTO `cah_GuestToGuestType` VALUES (1370, 1249, 158);
INSERT INTO `cah_GuestToGuestType` VALUES (1371, 1249, 156);
INSERT INTO `cah_GuestToGuestType` VALUES (1372, 1250, 158);
INSERT INTO `cah_GuestToGuestType` VALUES (1373, 1250, 156);
INSERT INTO `cah_GuestToGuestType` VALUES (1374, 1251, 158);
INSERT INTO `cah_GuestToGuestType` VALUES (1375, 1252, 150);
INSERT INTO `cah_GuestToGuestType` VALUES (1376, 1253, 158);
INSERT INTO `cah_GuestToGuestType` VALUES (1377, 1254, 158);
INSERT INTO `cah_GuestToGuestType` VALUES (1378, 1255, 158);
INSERT INTO `cah_GuestToGuestType` VALUES (1379, 1256, 158);
INSERT INTO `cah_GuestToGuestType` VALUES (1380, 1257, 158);
INSERT INTO `cah_GuestToGuestType` VALUES (1381, 1258, 158);
INSERT INTO `cah_GuestToGuestType` VALUES (1382, 1259, 158);
INSERT INTO `cah_GuestToGuestType` VALUES (1383, 1260, 158);
INSERT INTO `cah_GuestToGuestType` VALUES (1384, 1261, 158);
INSERT INTO `cah_GuestToGuestType` VALUES (1385, 1262, 158);
INSERT INTO `cah_GuestToGuestType` VALUES (1386, 1263, 158);
INSERT INTO `cah_GuestToGuestType` VALUES (1387, 1264, 158);
INSERT INTO `cah_GuestToGuestType` VALUES (1388, 1265, 158);
INSERT INTO `cah_GuestToGuestType` VALUES (1389, 1266, 158);
INSERT INTO `cah_GuestToGuestType` VALUES (1390, 1267, 158);
INSERT INTO `cah_GuestToGuestType` VALUES (1391, 1268, 158);
INSERT INTO `cah_GuestToGuestType` VALUES (1392, 1269, 158);
INSERT INTO `cah_GuestToGuestType` VALUES (1393, 1270, 158);
INSERT INTO `cah_GuestToGuestType` VALUES (1394, 1271, 155);
INSERT INTO `cah_GuestToGuestType` VALUES (1395, 1272, 158);
INSERT INTO `cah_GuestToGuestType` VALUES (1396, 1273, 158);
INSERT INTO `cah_GuestToGuestType` VALUES (1397, 1274, 158);
INSERT INTO `cah_GuestToGuestType` VALUES (1398, 1275, 158);
INSERT INTO `cah_GuestToGuestType` VALUES (1399, 1276, 158);
INSERT INTO `cah_GuestToGuestType` VALUES (1400, 1277, 158);
INSERT INTO `cah_GuestToGuestType` VALUES (1401, 1278, 158);
INSERT INTO `cah_GuestToGuestType` VALUES (1402, 1279, 158);
INSERT INTO `cah_GuestToGuestType` VALUES (1403, 1280, 158);
INSERT INTO `cah_GuestToGuestType` VALUES (1404, 1281, 158);
INSERT INTO `cah_GuestToGuestType` VALUES (1405, 1282, 158);
INSERT INTO `cah_GuestToGuestType` VALUES (1406, 1283, 158);
INSERT INTO `cah_GuestToGuestType` VALUES (1407, 1284, 158);
INSERT INTO `cah_GuestToGuestType` VALUES (1408, 1285, 158);
INSERT INTO `cah_GuestToGuestType` VALUES (1409, 1286, 158);
INSERT INTO `cah_GuestToGuestType` VALUES (1410, 1287, 158);
INSERT INTO `cah_GuestToGuestType` VALUES (1411, 1288, 158);
INSERT INTO `cah_GuestToGuestType` VALUES (1412, 1289, 158);
INSERT INTO `cah_GuestToGuestType` VALUES (1413, 1290, 158);
INSERT INTO `cah_GuestToGuestType` VALUES (1414, 1291, 158);
INSERT INTO `cah_GuestToGuestType` VALUES (1415, 1292, 158);
INSERT INTO `cah_GuestToGuestType` VALUES (1416, 1293, 158);
INSERT INTO `cah_GuestToGuestType` VALUES (1417, 1293, 148);
INSERT INTO `cah_GuestToGuestType` VALUES (1418, 1270, 148);
INSERT INTO `cah_GuestToGuestType` VALUES (1419, 1294, 158);
INSERT INTO `cah_GuestToGuestType` VALUES (1420, 1295, 158);
INSERT INTO `cah_GuestToGuestType` VALUES (1421, 1296, 158);
INSERT INTO `cah_GuestToGuestType` VALUES (1422, 1297, 158);
INSERT INTO `cah_GuestToGuestType` VALUES (1423, 1298, 158);
INSERT INTO `cah_GuestToGuestType` VALUES (1424, 1299, 158);
INSERT INTO `cah_GuestToGuestType` VALUES (1425, 1300, 158);
INSERT INTO `cah_GuestToGuestType` VALUES (1426, 1301, 158);
INSERT INTO `cah_GuestToGuestType` VALUES (1427, 1302, 158);
INSERT INTO `cah_GuestToGuestType` VALUES (1428, 1303, 158);
INSERT INTO `cah_GuestToGuestType` VALUES (1429, 1304, 158);
INSERT INTO `cah_GuestToGuestType` VALUES (1430, 1305, 161);
INSERT INTO `cah_GuestToGuestType` VALUES (1431, 1306, 161);
INSERT INTO `cah_GuestToGuestType` VALUES (1432, 1307, 161);
INSERT INTO `cah_GuestToGuestType` VALUES (1433, 1308, 161);
INSERT INTO `cah_GuestToGuestType` VALUES (1434, 1309, 161);
INSERT INTO `cah_GuestToGuestType` VALUES (1435, 1310, 161);
INSERT INTO `cah_GuestToGuestType` VALUES (1436, 1311, 161);
INSERT INTO `cah_GuestToGuestType` VALUES (1437, 1312, 161);
INSERT INTO `cah_GuestToGuestType` VALUES (1438, 1313, 161);
INSERT INTO `cah_GuestToGuestType` VALUES (1439, 1314, 162);
INSERT INTO `cah_GuestToGuestType` VALUES (1440, 1315, 162);
INSERT INTO `cah_GuestToGuestType` VALUES (1441, 1316, 162);
INSERT INTO `cah_GuestToGuestType` VALUES (1442, 1317, 162);
INSERT INTO `cah_GuestToGuestType` VALUES (1443, 1318, 162);
INSERT INTO `cah_GuestToGuestType` VALUES (1444, 1319, 162);
INSERT INTO `cah_GuestToGuestType` VALUES (1445, 1320, 148);
INSERT INTO `cah_GuestToGuestType` VALUES (1446, 1320, 158);

-- --------------------------------------------------------

-- 
-- Table structure for table `cah_GuestTypes`
-- 

DROP TABLE IF EXISTS `cah_GuestTypes`;
CREATE TABLE `cah_GuestTypes` (
  `guest_type_id` int(100) NOT NULL auto_increment,
  `title` varchar(1000) default NULL,
  `is_special` tinyint(1) default NULL,
  `active` tinyint(1) default '1',
  PRIMARY KEY  (`guest_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=163 DEFAULT CHARSET=latin1 AUTO_INCREMENT=163 ;

-- 
-- Dumping data for table `cah_GuestTypes`
-- 

INSERT INTO `cah_GuestTypes` VALUES (0, NULL, NULL, 0);
INSERT INTO `cah_GuestTypes` VALUES (162, 'Bride Coworker', 0, 1);
INSERT INTO `cah_GuestTypes` VALUES (161, 'Groom Coworker', 0, 1);
INSERT INTO `cah_GuestTypes` VALUES (160, 'Mother of the Groom', 1, 1);
INSERT INTO `cah_GuestTypes` VALUES (159, 'Father of the Groom', 1, 1);
INSERT INTO `cah_GuestTypes` VALUES (158, 'Groom Family', 0, 1);
INSERT INTO `cah_GuestTypes` VALUES (157, 'Best Man', 1, 1);
INSERT INTO `cah_GuestTypes` VALUES (156, 'Groomsman', 1, 1);
INSERT INTO `cah_GuestTypes` VALUES (155, 'Friend of Friend', 0, 1);
INSERT INTO `cah_GuestTypes` VALUES (154, 'Groom Friend', 0, 1);
INSERT INTO `cah_GuestTypes` VALUES (153, 'Maid of Honor', 1, 1);
INSERT INTO `cah_GuestTypes` VALUES (152, 'Bride Friend', 0, 1);
INSERT INTO `cah_GuestTypes` VALUES (151, 'Bridesmaid', 1, 1);
INSERT INTO `cah_GuestTypes` VALUES (150, 'Mutual Friend', 0, 1);
INSERT INTO `cah_GuestTypes` VALUES (149, 'Mother of the Bride', 1, 1);
INSERT INTO `cah_GuestTypes` VALUES (148, 'Guest of Honor', 1, 1);
INSERT INTO `cah_GuestTypes` VALUES (147, 'Father of the Bride', 1, 1);
INSERT INTO `cah_GuestTypes` VALUES (146, 'Bride Family', 0, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `cah_Guests`
-- 

DROP TABLE IF EXISTS `cah_Guests`;
CREATE TABLE `cah_Guests` (
  `guest_id` int(100) NOT NULL auto_increment,
  `parent_guest_id` int(100) NOT NULL,
  `address_id` int(100) NOT NULL,
  `first_name` varchar(1000) default NULL,
  `last_name` varchar(1000) default NULL,
  `activation_code` varchar(1000) default NULL,
  `initial_timestamp` varchar(1000) NOT NULL,
  `update_timestamp` varchar(1000) default NULL,
  `expected_count` tinyint(3) default NULL,
  `actual_count` tinyint(3) default NULL,
  `rsvp_through_site` tinyint(1) NOT NULL,
  `is_attending` tinyint(1) NOT NULL,
  `is_new` tinyint(1) NOT NULL default '0',
  `active` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`guest_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1334 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1334 ;

-- 
-- Dumping data for table `cah_Guests`
-- 

INSERT INTO `cah_Guests` VALUES (0, 0, 0, NULL, NULL, NULL, '', '', NULL, NULL, 0, 0, 0, 0);
INSERT INTO `cah_Guests` VALUES (1318, 0, 548, 'Dana', 'Kloefkorn', '467cfcc29f', '1298847686', NULL, 5, 1, 1, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1317, 0, 548, 'Cynthia', 'Fuglsby', '37dbab52a9', '1298847686', NULL, 1, 1, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1316, 0, 548, 'Nancy', 'Williamson', '6ecb1625bd', '1298847686', NULL, 4, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1315, 0, 548, 'Abbie', 'Lasota', 'e7e2ae408b', '1298847686', NULL, 5, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1314, 0, 548, 'Krista', 'Cavanaugh', '7ff6010df4', '1298847686', NULL, 4, 3, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1312, 0, 548, 'Galen', 'Wright', '026f07e73e', '1298847686', NULL, 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1313, 0, 548, 'Chris', 'Ostmo', 'd6d61df2e4', '1298847686', NULL, 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1311, 0, 548, 'Prateek', 'Sharma', '42ffd60277', '1298847686', NULL, 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1310, 1308, 571, 'Emma', 'Robison', '0', '1298847686', NULL, 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1309, 1308, 571, 'Christine', 'Robison', '0', '1298847686', NULL, 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1306, 0, 548, 'Bob', 'Scott', 'bf28ce1fc0', '1298847686', NULL, 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1307, 0, 548, 'Nate', 'Biondi', '646ef341d2', '1298847686', NULL, 5, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1308, 0, 571, 'Tony', 'Robison', '14edad6e22', '1298847686', NULL, 3, 4, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1305, 0, 548, 'Tim', 'Arthur', '91c0ffb87b', '1298847686', NULL, 6, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1304, 1301, 570, 'Andrew', 'Vandehey', '0', '1298847686', '1301789508', 0, 0, 0, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES (1303, 1301, 570, 'Jill', 'Vandehey', '0', '1298847686', '1301789508', 0, 0, 0, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES (1302, 1301, 570, 'Roger', 'Vandehey', '0', '1298847686', '1301789508', 0, 0, 0, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES (1300, 1297, 569, 'Piper', 'Freres', '0', '1298847686', '1301352172', 0, 0, 1, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES (1301, 0, 570, 'Shelly', 'Vandehey', '3ba2d63d02', '1298847686', '1301789508', 4, 4, 0, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES (1299, 1297, 569, 'Sam', 'Freres', '0', '1298847686', '1301352172', 0, 0, 1, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES (1298, 1297, 569, 'Rich', 'Freres', '0', '1298847686', '1301352172', 0, 0, 1, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES (1297, 0, 569, 'Brandi', 'Freres', 'de7f1e3a0b', '1298847686', '1301352172', 4, 4, 1, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES (1295, 0, 568, 'Sue', 'Sutton', '3633c7bddd', '1298847686', '1301255864', 2, 2, 0, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES (1296, 1295, 568, 'Leonard', 'Sutton', '0', '1298847686', '1301255864', 0, 0, 0, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES (1294, 0, 567, 'Dan', 'Hafner', '904b84f282', '1298847686', NULL, 3, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1293, 0, 565, 'Don', 'Bender', 'fc531a43b1', '1298847686', NULL, 1, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1292, 0, 564, 'Steve', 'Bender', '31a547099e', '1298847685', NULL, 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1291, 1288, 563, 'Mikel', 'Becktold', '0', '1298847685', NULL, 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1290, 1288, 563, 'Katelyn', 'Becktold', '0', '1298847685', NULL, 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1286, 1284, 562, 'Donica', 'Bender', '0', '1298847684', NULL, 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1287, 0, 548, 'Brianna', 'Anderson', '86febf0e20', '1298847684', '1302455493', 3, 3, 0, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES (1288, 0, 563, 'Melanie', 'Hafner', 'ec44f39068', '1298847685', NULL, 4, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1289, 1288, 563, 'Gregg', 'Unknown', '0', '1298847685', NULL, 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1285, 1284, 562, 'Pam', 'Bender', '0', '1298847684', NULL, 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1284, 0, 562, 'Bob', 'Bender', '7c6d66a157', '1298847684', NULL, 4, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1282, 1280, 548, 'JC', 'Hafner', '0', '1298847684', '1301190597', 0, 0, 1, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES (1283, 0, 561, 'Angie', 'Connor', 'b5917fe2d1', '1298847684', '1301789935', 4, 5, 0, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES (1280, 0, 548, 'Johnny', 'Hafner', '9ba1e15d40', '1298847684', '1301190597', 4, 3, 1, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES (1281, 1280, 548, 'Tricia', 'Hafner', '0', '1298847684', '1301190597', 0, 0, 1, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES (1279, 1276, 560, 'Jill', 'Hafner', '0', '1298847683', NULL, 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1278, 1276, 560, 'Carrie', 'Hafner', '0', '1298847683', NULL, 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1277, 1276, 560, 'Debbie', 'Hafner', '0', '1298847683', NULL, 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1275, 1272, 559, 'Charlie', 'Siegmund', '0', '1298847682', NULL, 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1276, 0, 560, 'John', 'Hafner', 'da94be2ee4', '1298847683', NULL, 5, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1271, 1270, 548, 'Amanda', 'Newkirk', '0', '1298847682', '1301789680', 0, 0, 0, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES (1272, 0, 559, 'Mandy', 'Siegmund', 'a8131143cf', '1298847682', NULL, 4, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1273, 1272, 559, 'Alan', 'Siegmund', '0', '1298847682', NULL, 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1274, 1272, 559, 'Henry', 'Siegmund', '0', '1298847682', NULL, 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1270, 0, 548, 'Walt', 'Hafner', '4d13c5ca28', '1298847682', '1301789680', 2, 2, 0, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES (1267, 0, 558, 'Ted', 'Hafner', 'd9c89dd486', '1298847681', '1301789619', 3, 3, 0, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES (1268, 1267, 558, 'Margaret', 'Hafner', '0', '1298847681', '1301789619', 0, 0, 0, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES (1269, 1267, 558, 'Gus', 'Hafner', '0', '1298847681', '1301789619', 0, 0, 0, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES (1266, 1263, 557, 'Riley', 'Vanderbeek', '0', '1298847681', '1299953791', 0, 0, 1, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES (1264, 1263, 557, 'Jack', 'Vanderbeek', '0', '1298847681', '1299953791', 0, 0, 1, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES (1265, 1263, 557, 'Ben', 'Vanderbeek', '0', '1298847681', '1299953791', 0, 0, 1, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES (1263, 0, 557, 'Suzy', 'Vanderbeek', '824bd19ccb', '1298847681', '1299953791', 4, 4, 1, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES (1262, 1261, 556, 'Andrea', 'Bender', '0', '1298847681', '1300026410', 0, 0, 1, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES (1260, 0, 555, 'Chris', 'Newkirk', '84e68b5dfe', '1298847680', NULL, 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1261, 0, 556, 'Sara', 'Bender', '2316ee660b', '1298847681', '1300026410', 2, 2, 1, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES (1258, 1253, 553, 'Kimmy', 'Bender', '0', '1298847679', NULL, 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1259, 0, 554, 'Mary Kay', 'Bender', 'bc109559ce', '1298847680', '1301862451', 2, 1, 1, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES (1257, 1253, 553, 'Mandy', 'Bender', '0', '1298847679', NULL, 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1256, 1253, 553, 'Justine', 'Bender', '0', '1298847679', NULL, 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1255, 1253, 553, 'Katie', 'Bender', '0', '1298847679', NULL, 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1254, 1253, 553, 'Patty', 'Bender', '0', '1298847679', NULL, 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1253, 0, 553, 'Vince', 'Bender', 'aebfc746c9', '1298847679', NULL, 6, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1252, 1251, 552, 'Jayme', 'Felice', '0', '1298847679', '1299901542', 0, 0, 1, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES (1250, 1245, 551, 'Jack', 'Hafner', '0', '1298847678', '1300574714', 0, 0, 1, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES (1251, 0, 552, 'TJ', 'Hafner', '874230305b', '1298847679', '1299901542', 2, 2, 1, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES (1246, 1245, 551, 'Christine', 'Hafner', '0', '1298847678', '1300574714', 0, 0, 1, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES (1247, 1245, 551, 'Prescilla', 'Celino', '0', '1298847678', '1300574714', 0, 0, 1, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1248, 1245, 551, 'Amanda', 'Krafcik', '0', '1298847678', '1300574714', 0, 0, 1, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1249, 1245, 551, 'Jed', 'Hafner', '0', '1298847678', '1300574714', 0, 0, 1, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES (1245, 0, 551, 'Jerry', 'Hafner', 'a6d705546d', '1298847678', '1300574714', 2, 4, 1, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES (1244, 0, 550, 'Jenna', 'Jacquard', '587af9c4a3', '1298847678', NULL, 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1241, 0, 549, 'Michelle', 'Sidell', '783571cff3', '1298847678', '1302455789', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1242, 1241, 549, 'Dan', 'Unknown', '0', '1298847678', '1302455789', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1243, 1241, 549, 'Baby', 'Forrest', '0', '1298847678', '1302455789', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1240, 0, 548, 'Caleb', 'Heuburger', '9aac33b3b7', '1298847678', NULL, 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1239, 0, 547, 'Evan', 'Pierce', '76a2116e8d', '1298847678', NULL, 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1238, 1234, 546, 'Ryan', 'Joyce', '0', '1298847678', '1302455760', 0, 0, 0, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES (1237, 1234, 546, 'Jason', 'Joyce', '0', '1298847678', '1302455760', 0, 0, 0, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES (1236, 1234, 546, 'Brandon', 'Joyce', '0', '1298847678', '1302455760', 0, 0, 0, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES (1235, 1234, 546, 'Mary', 'Joyce', '0', '1298847678', '1302455760', 0, 0, 0, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES (1233, 0, 545, 'Hannah', 'Edlefsen', 'e7833270f8', '1298847678', NULL, 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1234, 0, 546, 'Doug', 'Joyce', '6f996f06fa', '1298847678', '1302455760', 5, 7, 0, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES (1232, 1231, 544, 'Jacob', 'Kinsman', '0', '1298847678', '1299968251', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1231, 0, 544, 'Julie', 'Kinsman', '18246da021', '1298847678', '1299968251', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1230, 1229, 543, 'Ingrid', 'Campbell', '0', '1298847678', '1301255905', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1229, 0, 543, 'Eric', 'Campbell', '4917746e38', '1298847678', '1301255905', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1228, 1226, 542, 'Baby', 'Bella', '0', '1298847678', NULL, 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1227, 1226, 542, 'Davie', 'Carranza', '0', '1298847678', NULL, 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1225, 1223, 541, 'Devin', 'Hill', '0', '1298847678', '1300813198', 0, 0, 1, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES (1226, 0, 542, 'Katie', 'Hardeman', '6d755667f3', '1298847678', NULL, 3, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1223, 0, 541, 'Bud', 'Hill', '5a97150d5c', '1298847678', '1300813198', 3, 2, 1, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1224, 1223, 541, 'Mary', 'Hill', '0', '1298847678', '1300813198', 0, 0, 1, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES (1221, 0, 540, 'Heather', 'Hoffman-Abbott', 'd4e5207d66', '1298847678', NULL, 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1222, 1221, 540, 'Jeremy', 'Abbott', '0', '1298847678', NULL, 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1219, 0, 538, 'Torrey', 'McConnell', '00a669ee59', '1298847678', NULL, 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1220, 0, 539, 'Rebecca', 'Voltin', '6a0fca4e0a', '1298847678', NULL, 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1216, 0, 536, 'Crystal', 'Powell', '58d8daef26', '1298847678', NULL, 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1217, 1216, 536, 'Kyle', 'Logsdon', '0', '1298847678', NULL, 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1218, 0, 537, 'Stephanie', 'Powers', '9e4a167ec9', '1298847678', NULL, 3, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1214, 1211, 534, 'Robert', 'Gagermeier', '0', '1298847677', '1301366564', 0, 0, 1, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1215, 0, 535, 'Katie', 'McClure', '52a2eeb5d5', '1298847677', '1301790048', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1213, 1211, 534, 'Lloyd', 'Gagermeier', '0', '1298847677', '1301366564', 0, 0, 1, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES (1210, 0, 533, 'Heather', 'Mauer', '60aeb8820d', '1298847677', NULL, 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1211, 0, 534, 'Bob', 'Gagermeier', 'dfdfe4ca97', '1298847677', '1301366564', 4, 3, 1, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES (1212, 1211, 534, 'Michelle', 'Gagermeier', '0', '1298847677', '1301366564', 0, 0, 1, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES (1208, 0, 531, 'Erin', 'Peeples', '7c01a33a15', '1298847677', '1301255807', 2, 1, 0, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES (1209, 0, 532, 'Matt', 'Grahn', 'ab9900a391', '1298847677', NULL, 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1206, 0, 530, 'Kylan', 'Hoener', '68e173c5db', '1298847677', '1301255756', 2, 2, 0, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES (1207, 1206, 530, 'Johanna', 'Hoener', '0', '1298847677', '1301255756', 0, 0, 0, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES (1205, 0, 529, 'Jay', 'Reynolds', '93bbbc83f2', '1298847677', '1300499344', 2, 1, 1, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES (1204, 0, 528, 'Tim', 'ODonnell', '7e4050b2f7', '1298847677', NULL, 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1203, 0, 527, 'Erik', 'Larsen', '89356f1fd3', '1298847677', '1300033819', 2, 1, 1, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES (1200, 1199, 525, 'Baby', 'Hank', '0', '1298847677', '1301795358', 0, 0, 1, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES (1201, 0, 526, 'Chris', 'Joyce', '582cf9f3ed', '1298847677', '1301789567', 2, 2, 0, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES (1202, 1201, 526, 'Ava', 'Segal', '0', '1298847677', '1301789567', 0, 0, 0, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES (1199, 0, 525, 'Karen', 'Kralik', '9e284be9fb', '1298847677', '1301795358', 2, 2, 1, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES (1198, 0, 524, 'Annie', 'Tyner', 'e055f88d08', '1298847677', NULL, 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1197, 1196, 523, 'Owen', 'King', '0', '1298847677', '1301012920', 0, 0, 1, 0, 0, 0);
INSERT INTO `cah_Guests` VALUES (1195, 1194, 522, 'Nate', 'Albertson', '0', '1298847677', '1300808844', 0, 0, 1, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES (1196, 0, 523, 'Ashley', 'Black', 'b3604edffb', '1298847677', '1301012949', 2, 1, 1, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES (1194, 0, 522, 'Becky', 'Hill', '27477cb5c2', '1298847677', '1300808844', 2, 2, 1, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES (1193, 0, 521, 'Sandy', 'Horstman', '70669c1aa4', '1298847677', NULL, 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1192, 1191, 520, 'Dylan', 'Mechek', '0', '1298847677', NULL, 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1191, 0, 520, 'Troy', 'Mechek', '8ae4f8a020', '1298847677', NULL, 3, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1190, 0, 519, 'Lisa', 'Clarke', '7eff6fd301', '1298847677', NULL, 5, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1189, 1188, 518, 'Toni', 'Ramey', '0', '1298847677', NULL, 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1188, 0, 518, 'Ted', 'Ramey', '5d4fc517cf', '1298847677', NULL, 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1186, 1185, 516, 'Mark', 'Piazza', '0', '1298847676', '1302455843', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1187, 0, 517, 'Lola', 'Ramey', '40a10d90d2', '1298847676', '1299978705', 1, 1, 1, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES (1185, 0, 516, 'Denise', 'Piazaa', 'd73a91c67f', '1298847676', '1302455843', 2, 1, 0, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES (1184, 0, 515, 'Annabelle', 'Justice', 'b175f5bfac', '1298847676', NULL, 1, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1183, 1182, 514, 'Dottie', 'Graves', '0', '1298847676', NULL, 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1182, 0, 514, 'Al', 'Graves', 'fa62e0acac', '1298847676', NULL, 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1181, 1180, 513, 'Marissa', 'Eick', '0', '1298847676', '1301594031', 0, 0, 1, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES (1180, 0, 513, 'Josh', 'Eick', '61c47ded41', '1298847676', '1301594031', 4, 4, 1, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES (1179, 1178, 512, 'Trish', 'Eick', '0', '1298847675', '1302229210', 0, 0, 1, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES (1178, 0, 512, 'Jim', 'Eick', '6aa766dd79', '1298847675', '1302229210', 2, 2, 1, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES (1177, 0, 511, 'Glenn', 'Black', '7ee56c75a3', '1298847675', NULL, 1, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1176, 0, 510, 'Lillian', 'Black', '0c71d5659a', '1298847674', '1299888898', 1, 1, 1, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES (1175, 0, 509, 'Dennis', 'Black', '033a9ee975', '1298847673', '1301789451', 1, 1, 0, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES (1319, 0, 548, 'Alisha', 'Proctor', '257e85b542', '1298847686', NULL, 3, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1320, 0, 548, 'Walter', 'Hafner', '687048ba8c', '1298867123', NULL, 1, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES (1324, 1180, 513, 'Kaitlyn', 'Eick', '0', '1301594006', '1301594031', 0, 0, 1, 1, 1, 1);
INSERT INTO `cah_Guests` VALUES (1325, 1180, 513, 'Colin', 'Eick', '0', '1301594020', '1301594031', 0, 0, 1, 1, 1, 1);
INSERT INTO `cah_Guests` VALUES (1326, 1283, 561, 'Gabe', 'Connor', '0', '1301789843', '1301789935', 0, 0, 0, 1, 1, 1);
INSERT INTO `cah_Guests` VALUES (1327, 1283, 561, 'Hailey', 'Connor', '0', '1301789863', '1301789935', 0, 0, 0, 1, 1, 1);
INSERT INTO `cah_Guests` VALUES (1328, 1283, 561, 'Kayla', 'Connor', '0', '1301789886', '1301789935', 0, 0, 0, 1, 1, 1);
INSERT INTO `cah_Guests` VALUES (1329, 1283, 561, 'Kara', 'Connor', '0', '1301789904', '1301789935', 0, 0, 0, 1, 1, 1);
INSERT INTO `cah_Guests` VALUES (1330, 1287, 548, 'Kevin', 'Anderson', '0', '1302455476', '1302455493', 0, 0, 0, 1, 1, 1);
INSERT INTO `cah_Guests` VALUES (1331, 1287, 548, 'Reece', 'Anderson', '0', '1302455487', '1302455493', 0, 0, 0, 1, 1, 1);
INSERT INTO `cah_Guests` VALUES (1332, 1234, 546, 'Lauren', 'Katich', '0', '1302455603', '1302455760', 0, 0, 0, 1, 1, 1);
INSERT INTO `cah_Guests` VALUES (1333, 1234, 546, 'Sara', 'Davenport', '0', '1302455624', '1302455760', 0, 0, 0, 1, 1, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `common_ArticleToFile`
-- 

DROP TABLE IF EXISTS `common_ArticleToFile`;
CREATE TABLE `common_ArticleToFile` (
  `article_to_file_id` int(100) NOT NULL auto_increment,
  `article_id` int(100) NOT NULL,
  `file_id` int(100) NOT NULL,
  `priority` int(100) default NULL,
  PRIMARY KEY  (`article_to_file_id`),
  KEY `article_id` (`article_id`),
  KEY `file_id` (`file_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `common_ArticleToFile`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `common_Articles`
-- 

DROP TABLE IF EXISTS `common_Articles`;
CREATE TABLE `common_Articles` (
  `article_id` int(100) NOT NULL auto_increment,
  `title` varchar(1000) default NULL,
  `body` varchar(5000) default NULL,
  `post_timestamp` int(100) default NULL,
  `active` tinyint(1) default '1',
  `user_id` int(100) NOT NULL,
  `section_id` int(100) NOT NULL,
  `view_id` int(100) NOT NULL,
  `priority` int(100) default NULL,
  `tag_string` varchar(5000) default NULL,
  PRIMARY KEY  (`article_id`),
  KEY `authentication_id` (`user_id`),
  KEY `section_id` (`section_id`),
  KEY `view_id` (`view_id`)
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=latin1 AUTO_INCREMENT=89 ;

-- 
-- Dumping data for table `common_Articles`
-- 

INSERT INTO `common_Articles` VALUES (0, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `common_Articles` VALUES (88, 'Heather\\''s Story', 'Some say time flies when you\\''re having fun, and they\\''re right. Fun is the first word that comes to mind if I had to describe the last six and a half years of my life. Well that, and luck. Throughout this time I have accomplished a lot. Gone to college, gotten a real job, been the proud owner of a cute dog. But what really makes the past few years of my life fun, is that I have been lucky enough to have someone to share it with. \n\nIt\\''s not everyone that has to travel four hours to meet someone who grew up twenty minutes away from you. But I can\\''t say that if we had met before in another setting, we would have ever started dating. Had we met while still in high school, I may have never talked to Cole (old Cascade High School traditions dictate not ever dating anyone from Regis High School-still haven\\''t heard a reason why or how this status quo got started). As it was, I might never have met him still if it hadn\\''t been for a certain future roommate of his bringing him up to my dorm room one night with a guitar and a penchant for stories. Apparently I had amazed them both with my on-the-fly account of a scuba diver who meets up with a suave talking shark.  \n\nA few days later, I saw Cole in the cafeteria and (I\\''m embarrassed to say) ignored him. I wasn\\''t sure what he thought about a girl who could make up silly fish stories at a moment\\''s notice . . . and I wasn\\''t sure he\\''d recognize me anyway. Of course, no sooner had I dodged in front of the sandwich bar I nearly collide into him. He wouldn\\''t remember this, but right then he said \\"hi\\"Â and complimented me on the scarf I was wearing. I look back on that moment now and laugh. The scarf he complimented I had made, and it was lopsided with a quite a few holes. But that moment really illustrates who Cole was and continues to be. He has always been caring, thoughtful, supportive and above all, kind-hearted. \n\nThe past six years have flown by because Cole and I were having fun. And we still are. Above all, I have had the best time watching Cole evolve into the person he is today. Six years ago, I fell in love with a long-haired, long boarding video gamer, and now, I\\''m even more in love with the person he\\''s grown up to be. Cole is a smart, successful, loving, creative and hard-working person. I am lucky just to have met him. Together, I know our next sixty years are going to be just as fun as the last six.  ', 1297801457, 1, 2, 37, 1, 2, '');
INSERT INTO `common_Articles` VALUES (87, 'Cole\\''s Story', 'I first met Heather in the dorms. My friend Erik and I were going door to door trying to meet new people. Now, we weren\\''t like any other couple of losers, pathetically trying to meet girls, we were different. We had a gimick, we had a guitar. We knocked on the door of Heather\\''s room, and got right in. When I first saw Heather I thought she was very pretty. She went on to tell a story that she made up on the spot about a magical talking shark. Cute and clever?! Too good to be true. Later that week we held hands while watching a Harry Potter movie, and almost seven years later, here we are. \n\nA lot has changed since then. We both have our degrees, we both have \\"grown up\\" jobs, we own a dog together. One thing that hasn\\''t changed though, is Heather. She is still the same beautiful, hard working person that I met in the dorms that fall. I count myself lucky to have kept the affection of such a wonderful person all this time. I can\\''t wait to marry her because I know it\\''s just going to get better.', 1297801420, 1, 2, 36, 1, 2, '');
INSERT INTO `common_Articles` VALUES (85, 'Test', 'This is a new post for testing purposes...', 1297362730, 0, 2, 34, 46, 1, '');

-- --------------------------------------------------------

-- 
-- Table structure for table `common_FileTypes`
-- 

DROP TABLE IF EXISTS `common_FileTypes`;
CREATE TABLE `common_FileTypes` (
  `file_type_id` int(100) NOT NULL auto_increment,
  `title` varchar(1000) default NULL,
  `active` tinyint(1) default '1',
  `directory` varchar(1000) default NULL,
  PRIMARY KEY  (`file_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

-- 
-- Dumping data for table `common_FileTypes`
-- 

INSERT INTO `common_FileTypes` VALUES (0, NULL, 0, NULL);
INSERT INTO `common_FileTypes` VALUES (20, 'Site Image', 1, '/images');
INSERT INTO `common_FileTypes` VALUES (21, 'User Image', 1, '/images/user_images');

-- --------------------------------------------------------

-- 
-- Table structure for table `common_Files`
-- 

DROP TABLE IF EXISTS `common_Files`;
CREATE TABLE `common_Files` (
  `file_id` int(100) NOT NULL auto_increment,
  `file_type_id` int(100) NOT NULL,
  `file_name` varchar(1000) default NULL,
  `upload_timestamp` int(100) default NULL,
  `active` tinyint(1) default '1',
  PRIMARY KEY  (`file_id`),
  KEY `file_type_id` (`file_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=175 DEFAULT CHARSET=latin1 AUTO_INCREMENT=175 ;

-- 
-- Dumping data for table `common_Files`
-- 

INSERT INTO `common_Files` VALUES (174, 21, '28d20032f3.jpg', 1298627586, 1);
INSERT INTO `common_Files` VALUES (173, 21, 'd90d4d8881.jpg', 1298626837, 1);
INSERT INTO `common_Files` VALUES (172, 21, '18a45d164a.jpg', 1297973475, 1);
INSERT INTO `common_Files` VALUES (171, 21, 'ed73774b6d.jpg', 1297447636, 1);
INSERT INTO `common_Files` VALUES (170, 21, 'f7544d929e.jpg', 1297447545, 1);
INSERT INTO `common_Files` VALUES (169, 21, 'a6bec7dc32.jpg', 1297369589, 1);
INSERT INTO `common_Files` VALUES (168, 21, '36c5f7cded.png', 1297369294, 1);
INSERT INTO `common_Files` VALUES (167, 21, 'fd85cf9381.jpeg', 1297368779, 1);
INSERT INTO `common_Files` VALUES (0, 0, NULL, NULL, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `common_Permissions`
-- 

DROP TABLE IF EXISTS `common_Permissions`;
CREATE TABLE `common_Permissions` (
  `permission_id` int(100) NOT NULL auto_increment,
  `alias` varchar(1000) default NULL,
  `title` varchar(1000) default NULL,
  `summary` varchar(1000) default NULL,
  `active` tinyint(1) default '1',
  PRIMARY KEY  (`permission_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

-- 
-- Dumping data for table `common_Permissions`
-- 

INSERT INTO `common_Permissions` VALUES (0, NULL, NULL, NULL, 1);
INSERT INTO `common_Permissions` VALUES (5, 'SPR', 'Super Administrator', 'Super Admin. This permission grants user access to everything.', 1);
INSERT INTO `common_Permissions` VALUES (12, 'REG', 'Regular User', 'This is the permission that a regular user gets...', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `common_Sections`
-- 

DROP TABLE IF EXISTS `common_Sections`;
CREATE TABLE `common_Sections` (
  `section_id` int(100) NOT NULL auto_increment,
  `title` varchar(1000) default NULL,
  `active` tinyint(1) default '1',
  PRIMARY KEY  (`section_id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

-- 
-- Dumping data for table `common_Sections`
-- 

INSERT INTO `common_Sections` VALUES (0, NULL, 0);
INSERT INTO `common_Sections` VALUES (37, 'her-story', 1);
INSERT INTO `common_Sections` VALUES (34, 'main', 1);
INSERT INTO `common_Sections` VALUES (36, 'his-story', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `common_Sessions`
-- 

DROP TABLE IF EXISTS `common_Sessions`;
CREATE TABLE `common_Sessions` (
  `session_id` varchar(32) NOT NULL,
  `start_timestamp` int(100) default NULL,
  `end_timestamp` int(100) default NULL,
  `browser` varchar(1000) default NULL,
  `ip` varchar(1000) default NULL,
  `user_id` int(100) NOT NULL,
  PRIMARY KEY  (`session_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `common_Sessions`
-- 

INSERT INTO `common_Sessions` VALUES ('b1a2187b79eb7b0b48329d9f9753467c', 1299566191, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/534.23 (KHTML, like Gecko) Chrome/11.0.686.3 Safari/534.23', '127.0.0.1', 2);
INSERT INTO `common_Sessions` VALUES ('48a3ab97c10e16873e9dd3e583683562', 1299563308, 1299563796, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/534.23 (KHTML, like Gecko) Chrome/11.0.686.3 Safari/534.23', '127.0.0.1', 2);
INSERT INTO `common_Sessions` VALUES ('e7c357246ccec47985a36f2246615262', 1299562841, 1299563028, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/534.23 (KHTML, like Gecko) Chrome/11.0.686.3 Safari/534.23', '127.0.0.1', 2);
INSERT INTO `common_Sessions` VALUES ('06e5f8e274d886ad7b4645b2158c09ac', 1299562376, 1299562735, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/534.23 (KHTML, like Gecko) Chrome/11.0.686.3 Safari/534.23', '127.0.0.1', 2);
INSERT INTO `common_Sessions` VALUES ('71804de28f6335d5867bcada66bad150', 1299561586, 1299561867, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/534.23 (KHTML, like Gecko) Chrome/11.0.686.3 Safari/534.23', '127.0.0.1', 2);
INSERT INTO `common_Sessions` VALUES ('3c30b86edc61779f2072efd1bcfcaded', 1299549105, 1299558817, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/534.23 (KHTML, like Gecko) Chrome/11.0.686.3 Safari/534.23', '127.0.0.1', 2);
INSERT INTO `common_Sessions` VALUES ('ac59be77b3fa797a2b4c94ccbb04fe4a', 1299530283, NULL, 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.15) Gecko/20110303 Firefox/3.6.15', '127.0.0.1', 2);
INSERT INTO `common_Sessions` VALUES ('c4b605c7d36d671a53e18e771de99bac', 1298670278, NULL, 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.20 (KHTML, like Gecko) Chrome/11.0.672.2 Safari/534.20', '127.0.0.1', 2);
INSERT INTO `common_Sessions` VALUES ('f55117800ffb76b9e86c91c76930ce46', 1298670198, 1298670273, 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.20 (KHTML, like Gecko) Chrome/11.0.672.2 Safari/534.20', '127.0.0.1', 32);
INSERT INTO `common_Sessions` VALUES ('7948ea81603249fa45d14d94978098f4', 1298669625, 1298670189, 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.20 (KHTML, like Gecko) Chrome/11.0.672.2 Safari/534.20', '127.0.0.1', 2);
INSERT INTO `common_Sessions` VALUES ('4f2fb2972728e3ed96df497c1983aedd', 1298614536, NULL, 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.20 (KHTML, like Gecko) Chrome/11.0.672.2 Safari/534.20', '127.0.0.1', 2);
INSERT INTO `common_Sessions` VALUES ('c015685b2aa8bb451dd4c61353ced85d', 1298491269, NULL, 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.20 (KHTML, like Gecko) Chrome/11.0.672.2 Safari/534.20', '127.0.0.1', 2);
INSERT INTO `common_Sessions` VALUES ('3a779a4e63d97b777d4d604f30ecc24c', 1298337781, NULL, 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13', '127.0.0.1', 2);
INSERT INTO `common_Sessions` VALUES ('d11ebf46c75a9cb20ba25754d2a7271a', 1297973363, NULL, 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.16 (KHTML, like Gecko) Chrome/10.0.648.82 Safari/534.16', '127.0.0.1', 2);
INSERT INTO `common_Sessions` VALUES ('7979687da44af9950e285bb423afa463', 1297842802, NULL, 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.16 (KHTML, like Gecko) Chrome/10.0.648.45 Safari/534.16', '127.0.0.1', 2);
INSERT INTO `common_Sessions` VALUES ('1f961f6747f2e6b253244f1d9987a670', 1297758150, NULL, 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.16 (KHTML, like Gecko) Chrome/10.0.648.45 Safari/534.16', '127.0.0.1', 2);
INSERT INTO `common_Sessions` VALUES ('03cca8d97efa540b815da8184ef4be2e', 1297667368, NULL, 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.16 (KHTML, like Gecko) Chrome/10.0.648.45 Safari/534.16', '127.0.0.1', 2);
INSERT INTO `common_Sessions` VALUES ('d6a8b912714744dc74e02394fed23df2', 1297667085, NULL, 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13', '127.0.0.1', 2);
INSERT INTO `common_Sessions` VALUES ('0ec9f0f9eac7891c26629dfeb47dda48', 1297574309, NULL, 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.16 (KHTML, like Gecko) Chrome/10.0.648.45 Safari/534.16', '127.0.0.1', 2);
INSERT INTO `common_Sessions` VALUES ('edeaa8248d5f10f5d776b432749c7bb9', 1297492048, NULL, 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.16 (KHTML, like Gecko) Chrome/10.0.648.45 Safari/534.16', '127.0.0.1', 2);
INSERT INTO `common_Sessions` VALUES ('a9f463638d814fb972d44f45452210dd', 1297447429, NULL, 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.16 (KHTML, like Gecko) Chrome/10.0.648.45 Safari/534.16', '127.0.0.1', 2);
INSERT INTO `common_Sessions` VALUES ('2a796e6561b15cf7d5ba04f7404f668e', 1297395918, NULL, 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.16 (KHTML, like Gecko) Chrome/10.0.648.45 Safari/534.16', '127.0.0.1', 2);
INSERT INTO `common_Sessions` VALUES ('6c2f689efcc31ff732093e55a9ed0c42', 1297325542, NULL, 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.16 (KHTML, like Gecko) Chrome/10.0.648.45 Safari/534.16', '127.0.0.1', 2);
INSERT INTO `common_Sessions` VALUES ('ff58a614b6aedd4e77eab3126ea0f82f', 1297322986, NULL, 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.16 (KHTML, like Gecko) Chrome/10.0.648.45 Safari/534.16', '127.0.0.1', 2);
INSERT INTO `common_Sessions` VALUES ('b219f7535929513c2a9e08a30bcbc92b', 1297322967, 1297322979, 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.16 (KHTML, like Gecko) Chrome/10.0.648.45 Safari/534.16', '127.0.0.1', 2);
INSERT INTO `common_Sessions` VALUES ('6fc3b6b03ad3009302220de729c2c5ce', 1299609156, 1299609747, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/534.23 (KHTML, like Gecko) Chrome/11.0.686.3 Safari/534.23', '66.241.66.199', 2);
INSERT INTO `common_Sessions` VALUES ('a7c5187f2505fe509386775f39d8d67f', 1299726246, 1299729001, 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.15) Gecko/20110303 Firefox/3.6.15', '71.84.168.245', 2);
INSERT INTO `common_Sessions` VALUES ('3d302d87b99fa9f71b08f4cb0b7a542f', 1299727435, 1299729011, 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.15) Gecko/20110303 Firefox/3.6.15', '71.84.168.245', 2);
INSERT INTO `common_Sessions` VALUES ('09e30ae470508820bdbb5d808aa039b3', 1299875466, 1299875477, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.3 Safari/534.24', '66.241.66.199', 2);
INSERT INTO `common_Sessions` VALUES ('96075111ed14bcecd0ee9ecd28d7af06', 1299880948, 1299881311, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.3 Safari/534.24', '66.241.66.199', 2);
INSERT INTO `common_Sessions` VALUES ('05a399d5c7ff24e8c49569cca2cb644a', 1299895545, 1299963277, 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8F190 Safari/6533.18.5', '166.205.141.215', 2);
INSERT INTO `common_Sessions` VALUES ('577c9fe8f444584e77ead93c8840229d', 1299963308, NULL, 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8F190 Safari/6533.18.5', '166.205.141.215', 2);
INSERT INTO `common_Sessions` VALUES ('901be40ed1337453d491e4381fbaab04', 1299963309, NULL, 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8F190 Safari/6533.18.5', '166.205.141.215', 2);
INSERT INTO `common_Sessions` VALUES ('575376dd52a99e5a7cb056f8852fcc05', 1299968134, 1299968141, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3 (.NET CLR 3.5.30729)', '71.84.168.245', 2);
INSERT INTO `common_Sessions` VALUES ('63b43f96ac50711230c1c2d90dbc2500', 1299968148, 1299968280, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3 (.NET CLR 3.5.30729)', '71.84.168.245', 2);
INSERT INTO `common_Sessions` VALUES ('32fd9193f11017faa8b2bf89ec20ecfc', 1299973795, NULL, 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8F190 Safari/6533.18.5', '166.205.141.215', 2);
INSERT INTO `common_Sessions` VALUES ('42021bf48dbb57c8e3c0344a65f831b3', 1300035562, NULL, 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8F190 Safari/6533.18.5', '166.205.141.215', 2);
INSERT INTO `common_Sessions` VALUES ('6789864be3edc2c4211e756f55aa085f', 1300123146, 1300123176, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.3 Safari/534.24', '66.241.66.199', 2);
INSERT INTO `common_Sessions` VALUES ('bfd6780bbb62a4af544239a75d67a9b1', 1300130742, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.3 Safari/534.24', '66.241.66.199', 2);
INSERT INTO `common_Sessions` VALUES ('c86d88973d6a35bafab27d51548f267f', 1300245216, NULL, 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8F190 Safari/6533.18.5', '166.205.141.190', 2);
INSERT INTO `common_Sessions` VALUES ('767622497663091fbc16aee1d0c6c1cd', 1300251605, NULL, 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8F190 Safari/6533.18.5', '166.205.141.190', 2);
INSERT INTO `common_Sessions` VALUES ('ee51661297aa0254cf267dafa4d777b5', 1300295124, 1300295140, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.3 Safari/534.24', '66.241.66.199', 2);
INSERT INTO `common_Sessions` VALUES ('5db30dd297a149939c71776a8c1ed826', 1300310195, NULL, 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8F190 Safari/6533.18.5', '166.205.141.190', 2);
INSERT INTO `common_Sessions` VALUES ('1ba4aedf3732f88fd999067b8e231cca', 1300389731, NULL, 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8F190 Safari/6533.18.5', '166.205.142.149', 2);
INSERT INTO `common_Sessions` VALUES ('2471d83b14060e44069203ab6f2ba301', 1300499483, NULL, 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8F190 Safari/6533.18.5', '166.205.142.95', 2);
INSERT INTO `common_Sessions` VALUES ('04afd7b426c72e46aa025e2507af6006', 1300509461, NULL, 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8F190 Safari/6533.18.5', '166.205.142.95', 2);
INSERT INTO `common_Sessions` VALUES ('517a9969945501e18a35ddc27353f1c6', 1300587573, NULL, 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8F190 Safari/6533.18.5', '166.205.141.2', 2);
INSERT INTO `common_Sessions` VALUES ('ecd85754d6af6ff34f3510b5e5a2ea3e', 1300667083, NULL, 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8F190 Safari/6533.18.5', '71.84.168.245', 2);
INSERT INTO `common_Sessions` VALUES ('4524cfa18e46cff3e4bb0629c9ee7a5e', 1300668512, 1300668646, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.14 Safari/534.24', '71.84.168.245', 2);
INSERT INTO `common_Sessions` VALUES ('71d78720123b5c154f5984a1aea02fb9', 1300668691, NULL, 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '71.84.168.245', 2);
INSERT INTO `common_Sessions` VALUES ('7113e1282a71c93f047692f1b2b5ae39', 1300677855, 1300677874, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.14 Safari/534.24', '71.84.168.245', 2);
INSERT INTO `common_Sessions` VALUES ('c40cf9236a537196674170251172fd60', 1300811792, NULL, 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8F190 Safari/6533.18.5', '66.241.66.199', 2);
INSERT INTO `common_Sessions` VALUES ('89a6e2e40aa707dc2a6edc3d9416d825', 1300827591, NULL, 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.15) Gecko/20110303 Firefox/3.6.15', '66.241.66.199', 2);
INSERT INTO `common_Sessions` VALUES ('97c59aee16652ceb0f36ef603688b97c', 1300847325, NULL, 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8F190 Safari/6533.18.5', '166.205.142.179', 2);
INSERT INTO `common_Sessions` VALUES ('4f471d5dafef1e1a78d63fd4282821f3', 1300931399, NULL, 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8F190 Safari/6533.18.5', '71.84.168.245', 2);
INSERT INTO `common_Sessions` VALUES ('e7a79ff0b7134639ca3eb30c21a60cbf', 1301012680, NULL, 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8F190 Safari/6533.18.5', '71.84.168.245', 2);
INSERT INTO `common_Sessions` VALUES ('950560f05f1d5de824f1e2f613822fb0', 1301040785, 1301040820, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.16 Safari/534.24', '71.84.168.245', 2);
INSERT INTO `common_Sessions` VALUES ('c6b53c8932cd9bc65195f777df4b665e', 1301104570, NULL, 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8F190 Safari/6533.18.5', '166.205.140.30', 2);
INSERT INTO `common_Sessions` VALUES ('b125695a304b7f1c829b1342160be6f7', 1301255502, 1301255979, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/534.27 (KHTML, like Gecko) Chrome/12.0.712.0 Safari/534.27', '71.84.168.245', 2);
INSERT INTO `common_Sessions` VALUES ('15db8f9e25ad328848955c341976e90f', 1301329326, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/534.27 (KHTML, like Gecko) Chrome/12.0.712.0 Safari/534.27', '66.241.66.199', 2);
INSERT INTO `common_Sessions` VALUES ('8ec5732cdeef840f3180891b968a13bb', 1301446544, NULL, 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8F190 Safari/6533.18.5', '166.205.140.50', 2);
INSERT INTO `common_Sessions` VALUES ('26b90f93470b39b6ae3b7f7d84502d54', 1301610333, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/534.27 (KHTML, like Gecko) Chrome/12.0.712.0 Safari/534.27', '66.241.66.199', 2);
INSERT INTO `common_Sessions` VALUES ('82b447712a8de2058c22ecc3efbb92f6', 1301624785, NULL, 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8F190 Safari/6533.18.5', '71.84.168.245', 2);
INSERT INTO `common_Sessions` VALUES ('68b570843318dd314afa3ba5721217bd', 1301627540, NULL, 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '71.84.168.245', 2);
INSERT INTO `common_Sessions` VALUES ('1248771695fd59315a7cbe6806681036', 1301718232, NULL, 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8F190 Safari/6533.18.5', '71.84.168.245', 2);
INSERT INTO `common_Sessions` VALUES ('399b58941e445a24fafd8fa51a2823dd', 1301764213, NULL, 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8F190 Safari/6533.18.5', '166.205.140.28', 2);
INSERT INTO `common_Sessions` VALUES ('3ca8a070242eb3c868c769d0f8b75ea6', 1301784670, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/534.27 (KHTML, like Gecko) Chrome/12.0.712.0 Safari/534.27', '71.84.168.245', 2);
INSERT INTO `common_Sessions` VALUES ('f58775212f1bf9e54caa754d87b0e750', 1301789409, 1301794780, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/534.27 (KHTML, like Gecko) Chrome/12.0.712.0 Safari/534.27', '71.84.168.245', 2);
INSERT INTO `common_Sessions` VALUES ('e079de72c721374b2b9a4a26b4af3a0b', 1301800857, 1301802191, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/534.27 (KHTML, like Gecko) Chrome/12.0.712.0 Safari/534.27', '71.84.168.245', 2);
INSERT INTO `common_Sessions` VALUES ('a0a404084fdfe17f9f884a5edda816ee', 1301807766, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/534.27 (KHTML, like Gecko) Chrome/12.0.712.0 Safari/534.27', '71.84.168.245', 2);
INSERT INTO `common_Sessions` VALUES ('8b468ff486dfe5dec6933f50a510923a', 1301853989, NULL, 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8F190 Safari/6533.18.5', '71.84.168.245', 2);
INSERT INTO `common_Sessions` VALUES ('b580259e36b7a5b2dca99549169e5ece', 1301880755, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/534.27 (KHTML, like Gecko) Chrome/12.0.712.0 Safari/534.27', '71.84.168.245', 2);
INSERT INTO `common_Sessions` VALUES ('ce60c4a99c48db91b4dbccfcfceedfd9', 1301956321, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_6) AppleWebKit/534.27 (KHTML, like Gecko) Chrome/12.0.712.0 Safari/534.27', '66.241.66.199', 2);
INSERT INTO `common_Sessions` VALUES ('1d198ba4ce911d6c62f9a6c848a3b1f8', 1301961440, NULL, 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Mobile/8F190', '66.241.66.199', 2);
INSERT INTO `common_Sessions` VALUES ('4848b1f4a494ce78591bf9cc4e97f939', 1301970307, NULL, 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Mobile/8F190', '71.84.168.245', 2);
INSERT INTO `common_Sessions` VALUES ('fc82f45089d137266e561c742b9e965f', 1301979162, NULL, 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8F190 Safari/6533.18.5', '71.84.168.245', 2);
INSERT INTO `common_Sessions` VALUES ('321ba17ddb4f33c0cd19223917fbfe3f', 1301979899, NULL, 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2 like Mac OS X; en) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C134 Safari/6533.18.5', '71.84.168.245', 2);
INSERT INTO `common_Sessions` VALUES ('f8c72eb59e33ac1401bda9398f95f684', 1301980651, NULL, 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2 like Mac OS X; en) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C134 Safari/6533.18.5', '71.84.168.245', 2);
INSERT INTO `common_Sessions` VALUES ('6a33ee3375521629431654d1c4323329', 1302016998, NULL, 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2 like Mac OS X; en) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C134 Safari/6533.18.5', '166.205.142.92', 2);
INSERT INTO `common_Sessions` VALUES ('dceb1099f8b2415f4168c6b11695dfdc', 1302026163, NULL, 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X Mach-O; en-en; rv:1.9.0.12) Gecko/2009070609 Firefox/3.0.12', '66.241.66.199', 2);
INSERT INTO `common_Sessions` VALUES ('34da2f2f6689b7cc3e7388b7465eed5e', 1302062503, NULL, 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X Mach-O; en-en; rv:1.9.0.12) Gecko/2009070609 Firefox/3.0.12', '71.84.168.245', 2);
INSERT INTO `common_Sessions` VALUES ('00d2241a811867fa032ffdd6e54ab2c2', 1302098748, NULL, 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2 like Mac OS X; en) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C134 Safari/6533.18.5', '166.205.140.40', 2);
INSERT INTO `common_Sessions` VALUES ('fffa040adb535f7c8a662a03720bebb8', 1302107273, NULL, 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2 like Mac OS X; en) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C134 Safari/6533.18.5', '66.241.66.199', 2);
INSERT INTO `common_Sessions` VALUES ('26aa69cf61cc6d321ad87313a7348245', 1302142085, NULL, 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '166.205.143.236', 2);
INSERT INTO `common_Sessions` VALUES ('a328a59f0fc0baf72e7106e4d88f5d19', 1302142332, NULL, 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2 like Mac OS X; en) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C134 Safari/6533.18.5', '166.205.143.112', 2);
INSERT INTO `common_Sessions` VALUES ('3338a63ec44c1efcb8b204ed459bf875', 1302151416, NULL, 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2 like Mac OS X; en) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C134 Safari/6533.18.5', '71.84.168.245', 2);
INSERT INTO `common_Sessions` VALUES ('39b158f4b28b45604dc1a15670016ab7', 1302219631, NULL, 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '71.84.168.245', 2);
INSERT INTO `common_Sessions` VALUES ('36422864e34c36d31f60d0512019699a', 1302221566, NULL, 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2 like Mac OS X; en) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C134 Safari/6533.18.5', '166.205.143.187', 2);
INSERT INTO `common_Sessions` VALUES ('de159a717ef9ed3ffac9c998595fcc14', 1302238205, NULL, 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2 like Mac OS X; en) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C134 Safari/6533.18.5', '71.84.168.245', 2);
INSERT INTO `common_Sessions` VALUES ('fe3065357a887ada504de4861e293013', 1302301920, 1302302114, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.28 (KHTML, like Gecko) Chrome/12.0.725.0 Safari/534.28', '66.241.66.199', 2);
INSERT INTO `common_Sessions` VALUES ('7e2d1531fee2ddd2e1dafe643bb20b9f', 1302302208, NULL, 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '71.84.168.245', 2);
INSERT INTO `common_Sessions` VALUES ('98747a24277b8228ba70c5e5416991d3', 1302321547, NULL, 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2 like Mac OS X; en) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C134 Safari/6533.18.5', '71.84.168.245', 2);
INSERT INTO `common_Sessions` VALUES ('f4d108054975d0be74340696956b994c', 1302368023, NULL, 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2 like Mac OS X; en) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C134 Safari/6533.18.5', '71.84.168.245', 2);
INSERT INTO `common_Sessions` VALUES ('316cd2aa81334ddc681f9c182c9f6ac4', 1302376605, NULL, 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2 like Mac OS X; en) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C134 Safari/6533.18.5', '166.205.141.176', 2);
INSERT INTO `common_Sessions` VALUES ('73b4e0b1bca3fa3078919a197bc656e2', 1302404822, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.28 (KHTML, like Gecko) Chrome/12.0.725.0 Safari/534.28', '71.84.168.245', 2);
INSERT INTO `common_Sessions` VALUES ('385a0bd2a6e7991e6a7a42a4e34c5439', 1302404822, 1302405774, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.28 (KHTML, like Gecko) Chrome/12.0.725.0 Safari/534.28', '71.84.168.245', 2);
INSERT INTO `common_Sessions` VALUES ('001a903a6d8cefd7129563ec5239b46b', 1302455174, 1302455919, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_7) AppleWebKit/534.28 (KHTML, like Gecko) Chrome/12.0.725.0 Safari/534.28', '71.84.168.245', 2);

-- --------------------------------------------------------

-- 
-- Table structure for table `common_Settings`
-- 

DROP TABLE IF EXISTS `common_Settings`;
CREATE TABLE `common_Settings` (
  `setting_id` int(100) NOT NULL auto_increment,
  `title` varchar(1000) default NULL,
  `value` varchar(5000) default NULL,
  `active` tinyint(1) default '1',
  PRIMARY KEY  (`setting_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

-- 
-- Dumping data for table `common_Settings`
-- 

INSERT INTO `common_Settings` VALUES (0, 'test', 'test', 0);
INSERT INTO `common_Settings` VALUES (4, 'test-setting', 'This is a test setting.', 0);
INSERT INTO `common_Settings` VALUES (3, 'mail-to-address', 'colehafner@gmail.com', 1);
INSERT INTO `common_Settings` VALUES (5, 'Test-setting-IV', 'This is a the second test setting.', 0);
INSERT INTO `common_Settings` VALUES (6, 'new-setting', 'test', 0);
INSERT INTO `common_Settings` VALUES (7, 'test-setting-II', 'test value', 0);
INSERT INTO `common_Settings` VALUES (8, 'site-name', 'coleandheather.com', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `common_UserToPermission`
-- 

DROP TABLE IF EXISTS `common_UserToPermission`;
CREATE TABLE `common_UserToPermission` (
  `user_id` int(100) NOT NULL,
  `permission_id` int(100) NOT NULL,
  PRIMARY KEY  (`user_id`,`permission_id`),
  KEY `permission_id` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `common_UserToPermission`
-- 

INSERT INTO `common_UserToPermission` VALUES (2, 5);
INSERT INTO `common_UserToPermission` VALUES (32, 12);
INSERT INTO `common_UserToPermission` VALUES (33, 5);

-- --------------------------------------------------------

-- 
-- Table structure for table `common_UserTypes`
-- 

DROP TABLE IF EXISTS `common_UserTypes`;
CREATE TABLE `common_UserTypes` (
  `user_type_id` int(100) NOT NULL auto_increment,
  `title` varchar(1000) default NULL,
  `active` tinyint(1) default '1',
  PRIMARY KEY  (`user_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

-- 
-- Dumping data for table `common_UserTypes`
-- 

INSERT INTO `common_UserTypes` VALUES (1, NULL, 0);
INSERT INTO `common_UserTypes` VALUES (2, 'Groom', 1);
INSERT INTO `common_UserTypes` VALUES (3, 'Bride', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `common_Users`
-- 

DROP TABLE IF EXISTS `common_Users`;
CREATE TABLE `common_Users` (
  `user_id` int(100) NOT NULL auto_increment,
  `thumb_id` int(100) default '0',
  `user_type_id` int(100) default '0',
  `username` varchar(1000) NOT NULL,
  `email` varchar(1000) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `first_name` varchar(1000) default NULL,
  `last_name` varchar(1000) default NULL,
  `bio` varchar(5000) default NULL,
  `use_gravatar` tinyint(1) default '0',
  `active` tinyint(1) default '1',
  PRIMARY KEY  (`user_id`),
  KEY `thumb_id` (`thumb_id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

-- 
-- Dumping data for table `common_Users`
-- 

INSERT INTO `common_Users` VALUES (0, 0, 0, '', '', '', NULL, NULL, NULL, 0, 0);
INSERT INTO `common_Users` VALUES (2, 172, 3, 'admin', 'colehafner@gmail.com', '915736809103c55faec9a0010bc518fb68e7e3a7a402b984954420cf14f07a57b5437dec1d6d8a91d4b539909d89f695216210fbba445d358860e5b61a3f20868594234a', 'Cole', 'Hafner', 'Cole hafner is the creator of this site and the Groom. ', 1, 1);
INSERT INTO `common_Users` VALUES (32, 173, 3, 'heatherBlack', 'heatherleeblack@gmail.com', '1399223243451d42b917cabc5a8653cd62a3112b089c35d595717434c82fae74490d0467ecb1b4f30b11d29f206c2f82fa8cfa31b4c5d5312a840f202f42fb77a29ec8a1', 'Heather', 'Black', 'Hi, I\\''m the Bride. Lol.', 0, 1);
INSERT INTO `common_Users` VALUES (33, 174, 2, 'coleHafner', 'cole@spawnordie.com', '13881504f4c073e0ef3474bdab0fe551ede2cb64f5c329c653d0c383597e0727f56e74028ed0abd18b29b363cb9470b3e8c1facc45ca07760507df147cae7767a5058b80', 'cole', 'hafner', 'I am the groom.', 0, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `common_Views`
-- 

DROP TABLE IF EXISTS `common_Views`;
CREATE TABLE `common_Views` (
  `view_id` int(100) NOT NULL auto_increment,
  `controller_name` varchar(1000) default NULL,
  `active` tinyint(1) default '1',
  `requires_auth` tinyint(1) default '0',
  `show_in_nav` tinyint(1) default '1',
  `alias` varchar(1000) default NULL,
  `nav_priority` int(11) default NULL,
  `nav_image_id` int(11) default NULL,
  `parent_view_id` int(100) NOT NULL default '0',
  `external_link` varchar(1000) default NULL,
  PRIMARY KEY  (`view_id`),
  KEY `nav_image_id` (`nav_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=latin1 AUTO_INCREMENT=54 ;

-- 
-- Dumping data for table `common_Views`
-- 

INSERT INTO `common_Views` VALUES (47, 'Posts', 1, 1, 0, 'Posts', 0, NULL, 0, NULL);
INSERT INTO `common_Views` VALUES (1, 'Index', 1, 0, 1, 'Our Story', 1, 0, 0, NULL);
INSERT INTO `common_Views` VALUES (11, 'Admin', 1, 1, 0, 'Administration', 0, 0, 0, NULL);
INSERT INTO `common_Views` VALUES (0, NULL, 0, 0, 0, NULL, 0, NULL, 0, NULL);
INSERT INTO `common_Views` VALUES (46, 'Account', 1, 1, 0, 'My Account', 0, NULL, 0, NULL);
INSERT INTO `common_Views` VALUES (44, 'Users', 1, 0, 0, 'Users', 0, NULL, 0, NULL);
INSERT INTO `common_Views` VALUES (52, 'PostWall', 1, 0, 1, 'Write Us', 4, NULL, 0, NULL);
INSERT INTO `common_Views` VALUES (50, 'Rsvp', 1, 0, 1, 'RSVP', 2, NULL, 0, NULL);
INSERT INTO `common_Views` VALUES (51, 'Gallery', 1, 0, 1, 'Pictures', 3, NULL, 0, NULL);
INSERT INTO `common_Views` VALUES (53, 'Info', 1, 0, 1, 'Wedding Info', 5, NULL, 0, NULL);
