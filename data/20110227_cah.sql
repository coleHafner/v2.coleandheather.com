-- phpMyAdmin SQL Dump
-- version 3.2.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 27, 2011 at 04:20 PM
-- Server version: 5.1.44
-- PHP Version: 5.3.2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cah`
--

-- --------------------------------------------------------

--
-- Table structure for table `cah_Addresses`
--

DROP TABLE IF EXISTS `cah_Addresses`;
CREATE TABLE `cah_Addresses` (
  `address_id` int(100) NOT NULL AUTO_INCREMENT,
  `street_address` varchar(1000) DEFAULT NULL,
  `city` varchar(1000) DEFAULT NULL,
  `state` varchar(1000) DEFAULT NULL,
  `zip` varchar(1000) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`address_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=572 ;

--
-- Dumping data for table `cah_Addresses`
--

INSERT INTO `cah_Addresses` VALUES(0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `cah_Addresses` VALUES(571, '1452 Mill Pond Rd.', 'Ashland', 'OR', '97520', 1);
INSERT INTO `cah_Addresses` VALUES(570, '32265 N Fork Rd.', 'Lyons', 'OR', '97358', 1);
INSERT INTO `cah_Addresses` VALUES(569, 'PO Box 411', 'Sublimity', 'OR', '97385', 1);
INSERT INTO `cah_Addresses` VALUES(568, 'PO Box 121', 'Lyons', 'OR', '97358', 1);
INSERT INTO `cah_Addresses` VALUES(567, 'PO Box 53', 'Lyons', 'OR', '97358', 1);
INSERT INTO `cah_Addresses` VALUES(565, 'One Towers Ln. Box 2118 #A-1', 'Mt. Angel', 'OR', '97362', 1);
INSERT INTO `cah_Addresses` VALUES(566, 'Elliot Residence #217 390 SE Church', 'Sublimity', 'OR', '97385', 1);
INSERT INTO `cah_Addresses` VALUES(564, '1154 Dawn Dr.', 'Stayton', 'OR', '97383', 1);
INSERT INTO `cah_Addresses` VALUES(563, '1307 Heritage Loop', 'Stayton', 'OR', '97383', 1);
INSERT INTO `cah_Addresses` VALUES(562, '1276 82nd SE', 'Salem', 'OR', '97317', 1);
INSERT INTO `cah_Addresses` VALUES(561, 'PO Box 727', 'Mill City', 'OR', '97360', 1);
INSERT INTO `cah_Addresses` VALUES(560, 'PO Box 723', 'Sublimity', 'OR', '97385', 1);
INSERT INTO `cah_Addresses` VALUES(559, '40931 Rodgers Mtn. Loop', 'Scio', 'OR', '97374', 1);
INSERT INTO `cah_Addresses` VALUES(558, '5715 Anderson Rd. SE', 'Aumsville', 'OR', '97325', 1);
INSERT INTO `cah_Addresses` VALUES(557, '4609 Toutle Ct. SE', 'Olympia', 'WA', '98501', 1);
INSERT INTO `cah_Addresses` VALUES(556, '1905 Madison Dr.', 'Lavergne', 'TN', '37086', 1);
INSERT INTO `cah_Addresses` VALUES(555, '225 Walden St. #3F', 'Cambridge', 'MA', '02140', 1);
INSERT INTO `cah_Addresses` VALUES(554, '7732 SE Ramona St.', 'Portland', 'OR', '97206', 1);
INSERT INTO `cah_Addresses` VALUES(553, '12785 Parrish Gap Rd. SE', 'Turner', 'OR', '97392', 1);
INSERT INTO `cah_Addresses` VALUES(552, '2642 NW Ginseng Pl.', 'Corvallis', 'OR', '97330', 1);
INSERT INTO `cah_Addresses` VALUES(551, 'PO Box 698', 'Lyons', 'OR', '97358', 1);
INSERT INTO `cah_Addresses` VALUES(550, '202 Jefferson St. #2', 'Bend', 'OR', '97701', 1);
INSERT INTO `cah_Addresses` VALUES(549, 'PO Box 177', 'Selma', 'OR', '97538', 1);
INSERT INTO `cah_Addresses` VALUES(548, '123 Main St.', 'Stayton', 'OR', '97383', 1);
INSERT INTO `cah_Addresses` VALUES(547, 'PO Box 562', 'Stayton', 'OR', '97383', 1);
INSERT INTO `cah_Addresses` VALUES(546, '378 Church St.', 'Sublimity', 'OR', '97385', 1);
INSERT INTO `cah_Addresses` VALUES(545, '1244 Calypso Ct.', 'Ashland', 'OR', '97520', 1);
INSERT INTO `cah_Addresses` VALUES(544, '19395 E. Evans Creek Rd.', 'White City', 'OR', '97305', 1);
INSERT INTO `cah_Addresses` VALUES(543, '168 W. 300 St.', 'Herber City', 'UT', '84032', 1);
INSERT INTO `cah_Addresses` VALUES(542, '496 Starflower Ln.', 'Ashland', 'OR', '97520', 1);
INSERT INTO `cah_Addresses` VALUES(541, '3611 NW Upas Ave.', 'Redmond', 'OR', '97756', 1);
INSERT INTO `cah_Addresses` VALUES(540, '12744 Brick Rd.', 'Turner', 'OR', '97392', 1);
INSERT INTO `cah_Addresses` VALUES(539, '200 E Grant St.', 'Enterprise', 'OR', '97828', 1);
INSERT INTO `cah_Addresses` VALUES(538, '1102 N. 13th St.', 'Boise', 'ID', '83702', 1);
INSERT INTO `cah_Addresses` VALUES(537, '6810 Jerdon Ct. N', 'Keizer', 'OR', '97303', 1);
INSERT INTO `cah_Addresses` VALUES(536, '108 5th St. #8', 'Ashland', 'OR', '97520', 1);
INSERT INTO `cah_Addresses` VALUES(535, '442 W. Berdine St.', 'Roseburg', 'OR', '97471', 1);
INSERT INTO `cah_Addresses` VALUES(534, '3514 SW Reindeer Ave.', 'Redmond', 'OR', '97756', 1);
INSERT INTO `cah_Addresses` VALUES(533, 'PO Box 1005', 'Aumsville', 'OR', '97325', 1);
INSERT INTO `cah_Addresses` VALUES(532, '1153 Stanford Ave.', 'Palo Alto', 'CA', '94306', 1);
INSERT INTO `cah_Addresses` VALUES(531, '1170 Barnes Ave. #221', 'Salem', 'OR', '97306', 1);
INSERT INTO `cah_Addresses` VALUES(530, '8029 SE 24th', 'Portland', 'OR', '97202', 1);
INSERT INTO `cah_Addresses` VALUES(529, '3403 Marigold Dr.', 'Prescott', 'AZ', '97385', 1);
INSERT INTO `cah_Addresses` VALUES(528, '701 Larkspur Ct.', 'Sublimity', 'OR', '97385', 1);
INSERT INTO `cah_Addresses` VALUES(527, '511.5 S. Meldrum St.', 'Fort Collins', 'CO', '80521', 1);
INSERT INTO `cah_Addresses` VALUES(526, '5405 W. Arlington', 'Yakima', 'WA', '98908', 1);
INSERT INTO `cah_Addresses` VALUES(525, '6590 Griffin Creek Rd', 'Medford', 'OR', '97501', 1);
INSERT INTO `cah_Addresses` VALUES(524, '2863 Camp Baker Rd.', 'Medford', 'OR', '97501', 1);
INSERT INTO `cah_Addresses` VALUES(523, '400 N. Colorado St. #203B', 'Gunnison', 'CO', '81230', 1);
INSERT INTO `cah_Addresses` VALUES(522, '2459 NW 22nd St.', 'Redmond', 'OR', '97756', 1);
INSERT INTO `cah_Addresses` VALUES(521, '1821 Taylor Circle', 'Reedsburg', 'WI', '53959', 1);
INSERT INTO `cah_Addresses` VALUES(520, '175 High St.', 'Lee', 'MA', '01238', 1);
INSERT INTO `cah_Addresses` VALUES(519, '4920 Whisting Acres', 'Las Vegas', 'NV', '89131', 1);
INSERT INTO `cah_Addresses` VALUES(518, '7513 Mardean Ct.', 'Las Vegas', 'NV', '89131', 1);
INSERT INTO `cah_Addresses` VALUES(517, '230 N. McDow St.', 'Susanville', 'CA', '96130', 1);
INSERT INTO `cah_Addresses` VALUES(516, '3570 Lost Hills Dr.', 'Las Vegas', 'NV', '89122', 1);
INSERT INTO `cah_Addresses` VALUES(515, '3688 Cavender Creek Rd.', 'Danlonega', 'GA', '30533', 1);
INSERT INTO `cah_Addresses` VALUES(514, '1365 Burtschell Place', 'Crescent City', 'CA', '95531', 1);
INSERT INTO `cah_Addresses` VALUES(513, '2472 W. Silverstreak Way', 'Queen Creek', 'AZ', '85242', 1);
INSERT INTO `cah_Addresses` VALUES(512, '53507 N. Thomas Rd.', 'Benton City', 'WA', '99320', 1);
INSERT INTO `cah_Addresses` VALUES(511, '4826 Jean St. SE', 'Salem', 'OR', '97305', 1);
INSERT INTO `cah_Addresses` VALUES(510, '4848 North Start Ct.', 'Salem', 'OR', '97305', 1);
INSERT INTO `cah_Addresses` VALUES(509, '3254 Ridgeway Dr.', 'Turner', 'OR', '97392', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cah_Facts`
--

DROP TABLE IF EXISTS `cah_Facts`;
CREATE TABLE `cah_Facts` (
  `fact_id` int(100) NOT NULL AUTO_INCREMENT,
  `user_id` int(100) NOT NULL,
  `fact` varchar(1000) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`fact_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `cah_Facts`
--


-- --------------------------------------------------------

--
-- Table structure for table `cah_Guests`
--

DROP TABLE IF EXISTS `cah_Guests`;
CREATE TABLE `cah_Guests` (
  `guest_id` int(100) NOT NULL AUTO_INCREMENT,
  `parent_guest_id` int(100) NOT NULL,
  `address_id` int(100) NOT NULL,
  `first_name` varchar(1000) DEFAULT NULL,
  `last_name` varchar(1000) DEFAULT NULL,
  `activation_code` varchar(1000) DEFAULT NULL,
  `initial_timestamp` varchar(1000) NOT NULL,
  `update_timestamp` varchar(1000) NOT NULL,
  `expected_count` tinyint(3) DEFAULT NULL,
  `actual_count` tinyint(3) DEFAULT NULL,
  `rsvp_through_site` tinyint(1) NOT NULL,
  `is_attending` tinyint(1) NOT NULL,
  `is_new` tinyint(1) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`guest_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1320 ;

--
-- Dumping data for table `cah_Guests`
--

INSERT INTO `cah_Guests` VALUES(0, 0, 0, NULL, NULL, NULL, '', '', NULL, NULL, 0, 0, 0, 0);
INSERT INTO `cah_Guests` VALUES(1318, 0, 548, 'Dana', 'Kloefkorn', '467cfcc29f', '1298847686', '1298847686', 5, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1317, 0, 548, 'Cynthia', 'Fuglsby', '37dbab52a9', '1298847686', '1298847686', 1, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1316, 0, 548, 'Nancy', 'Williamson', '6ecb1625bd', '1298847686', '1298847686', 4, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1315, 0, 548, 'Abbie', 'Lasota', 'e7e2ae408b', '1298847686', '1298847686', 5, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1314, 0, 548, 'Krista', 'Cavanaugh', '7ff6010df4', '1298847686', '1298847686', 4, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1312, 0, 548, 'Galen', 'Wright', '026f07e73e', '1298847686', '1298847686', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1313, 0, 548, 'Chris', 'Ostmo', 'd6d61df2e4', '1298847686', '1298847686', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1311, 0, 548, 'Prateek', 'Sharma', '42ffd60277', '1298847686', '1298847686', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1310, 1308, 571, 'Emma', 'Robison', '0', '1298847686', '1298847686', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1309, 1308, 571, 'Christine', 'Robison', '0', '1298847686', '1298847686', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1306, 0, 548, 'Bob', 'Scott', 'bf28ce1fc0', '1298847686', '1298847686', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1307, 0, 548, 'Nate', 'Biondi', '646ef341d2', '1298847686', '1298847686', 5, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1308, 0, 571, 'Tony', 'Robison', '14edad6e22', '1298847686', '1298847686', 3, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1305, 0, 548, 'Tim', 'Arthur', '91c0ffb87b', '1298847686', '1298847686', 6, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1304, 1301, 570, 'Andrew', 'Vandehey', '0', '1298847686', '1298847686', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1303, 1301, 570, 'Jill', 'Vandehey', '0', '1298847686', '1298847686', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1302, 1301, 570, 'Roger', 'Vandehey', '0', '1298847686', '1298847686', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1300, 1297, 569, 'Piper', 'Freres', '0', '1298847686', '1298847686', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1301, 0, 570, 'Shelly', 'Vandehey', '3ba2d63d02', '1298847686', '1298847686', 4, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1299, 1297, 569, 'Sam', 'Freres', '0', '1298847686', '1298847686', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1298, 1297, 569, 'Rich', 'Freres', '0', '1298847686', '1298847686', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1297, 0, 569, 'Brandy', 'Freres', 'de7f1e3a0b', '1298847686', '1298847686', 4, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1295, 0, 568, 'Sue', 'Sutton', '3633c7bddd', '1298847686', '1298847686', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1296, 1295, 568, 'Leonard', 'Sutton', '0', '1298847686', '1298847686', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1294, 0, 567, 'Dan', 'Hafner', '904b84f282', '1298847686', '1298847686', 3, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1293, 0, 565, 'Don', 'Bender', 'fc531a43b1', '1298847686', '1298847686', 1, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1292, 0, 564, 'Steve', 'Bender', '31a547099e', '1298847685', '1298847685', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1291, 1288, 563, 'Mikel', 'Becktold', '0', '1298847685', '1298847685', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1290, 1288, 563, 'Katelyn', 'Becktold', '0', '1298847685', '1298847685', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1286, 1284, 562, 'Donica', 'Bender', '0', '1298847684', '1298847684', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1287, 0, 548, 'Brianna', 'Anderson', '86febf0e20', '1298847684', '1298847684', 3, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1288, 0, 563, 'Melanie', 'Hafner', 'ec44f39068', '1298847685', '1298847685', 4, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1289, 1288, 563, 'Gregg', 'Unknown', '0', '1298847685', '1298847685', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1285, 1284, 562, 'Pam', 'Bender', '0', '1298847684', '1298847684', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1284, 0, 562, 'Bob', 'Bender', '7c6d66a157', '1298847684', '1298847684', 4, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1282, 1280, 548, 'JC', 'Hafner', '0', '1298847684', '1298847684', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1283, 0, 561, 'Angie', 'Connor', 'b5917fe2d1', '1298847684', '1298847684', 4, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1280, 0, 548, 'Johnny', 'Hafner', '9ba1e15d40', '1298847684', '1298847684', 4, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1281, 1280, 548, 'Tricia', 'Hafner', '0', '1298847684', '1298847684', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1279, 1276, 560, 'Jill', 'Hafner', '0', '1298847683', '1298847683', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1278, 1276, 560, 'Carrie', 'Hafner', '0', '1298847683', '1298847683', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1277, 1276, 560, 'Debbie', 'Hafner', '0', '1298847683', '1298847683', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1275, 1272, 559, 'Charlie', 'Siegmund', '0', '1298847682', '1298847682', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1276, 0, 560, 'John', 'Hafner', 'da94be2ee4', '1298847683', '1298847683', 5, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1271, 1270, 548, 'Amanda', 'Newkirk', '0', '1298847682', '1298847682', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1272, 0, 559, 'Mandy', 'Siegmund', 'a8131143cf', '1298847682', '1298847682', 4, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1273, 1272, 559, 'Alan', 'Siegmund', '0', '1298847682', '1298847682', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1274, 1272, 559, 'Henry', 'Siegmund', '0', '1298847682', '1298847682', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1270, 0, 548, 'Walt', 'Hafner', '4d13c5ca28', '1298847682', '1298847682', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1267, 0, 558, 'Ted', 'Hafner', 'd9c89dd486', '1298847681', '1298847681', 3, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1268, 1267, 558, 'Margaret', 'Hafner', '0', '1298847681', '1298847681', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1269, 1267, 558, 'Gus', 'Hafner', '0', '1298847681', '1298847681', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1266, 1263, 557, 'Riley', 'Vanderbeek', '0', '1298847681', '1298847681', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1264, 1263, 557, 'Jack', 'Vanderbeek', '0', '1298847681', '1298847681', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1265, 1263, 557, 'Ben', 'Vanderbeek', '0', '1298847681', '1298847681', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1263, 0, 557, 'Suzy', 'Vanderbeek', '824bd19ccb', '1298847681', '1298847681', 4, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1262, 1261, 556, 'Andrea', 'Bender', '0', '1298847681', '1298847681', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1260, 0, 555, 'Chris', 'Newkirk', '84e68b5dfe', '1298847680', '1298847680', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1261, 0, 556, 'Sara', 'Bender', '2316ee660b', '1298847681', '1298847681', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1258, 1253, 553, 'Kimmy', 'Bender', '0', '1298847679', '1298847679', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1259, 0, 554, 'Mary Kay', 'Bender', 'bc109559ce', '1298847680', '1298847680', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1257, 1253, 553, 'Mandy', 'Bender', '0', '1298847679', '1298847679', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1256, 1253, 553, 'Justine', 'Bender', '0', '1298847679', '1298847679', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1255, 1253, 553, 'Katie', 'Bender', '0', '1298847679', '1298847679', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1254, 1253, 553, 'Patty', 'Bender', '0', '1298847679', '1298847679', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1253, 0, 553, 'Vince', 'Bender', 'aebfc746c9', '1298847679', '1298847679', 6, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1252, 1251, 552, 'Jayme', 'Felice', '0', '1298847679', '1298847679', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1250, 1245, 551, 'Jack', 'Hafner', '0', '1298847678', '1298850821', 0, 0, 1, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1251, 0, 552, 'TJ', 'Hafner', '874230305b', '1298847679', '1298847679', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1246, 1245, 551, 'Christine', 'Hafner', '0', '1298847678', '1298850821', 0, 0, 1, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1247, 1245, 551, 'Prescilla', 'Celino', '0', '1298847678', '1298850821', 0, 0, 1, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1248, 1245, 551, 'Amanda', 'Krafcik', '0', '1298847678', '1298850821', 0, 0, 1, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1249, 1245, 551, 'Jed', 'Hafner', '0', '1298847678', '1298850821', 0, 0, 1, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1245, 0, 551, 'Jerry', 'Hafner', 'a6d705546d', '1298847678', '1298850821', 2, 1, 1, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES(1244, 0, 550, 'Jenna', 'Jacquard', '587af9c4a3', '1298847678', '1298847678', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1241, 0, 549, 'Michelle', 'Sidell', '783571cff3', '1298847678', '1298847678', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1242, 1241, 549, 'Dan', 'Unknown', '0', '1298847678', '1298847678', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1243, 1241, 549, 'Baby', 'Forrest', '0', '1298847678', '1298847678', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1240, 0, 548, 'Caleb', 'Heuburger', '9aac33b3b7', '1298847678', '1298847678', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1239, 0, 547, 'Evan', 'Pierce', '76a2116e8d', '1298847678', '1298847678', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1238, 1234, 546, 'Ryan', 'Joyce', '0', '1298847678', '1298847678', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1237, 1234, 546, 'Jason', 'Joyce', '0', '1298847678', '1298847678', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1236, 1234, 546, 'Brandon', 'Joyce', '0', '1298847678', '1298847678', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1235, 1234, 546, 'Mary', 'Joyce', '0', '1298847678', '1298847678', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1233, 0, 545, 'Hannah', 'Edlefsen', 'e7833270f8', '1298847678', '1298847678', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1234, 0, 546, 'Doug', 'Joyce', '6f996f06fa', '1298847678', '1298847678', 5, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1232, 1231, 544, 'Jacob', 'Kinsman', '0', '1298847678', '1298847678', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1231, 0, 544, 'Julie', 'Kinsman', '18246da021', '1298847678', '1298847678', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1230, 1229, 543, 'Ingrid', 'Campbell', '0', '1298847678', '1298847678', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1229, 0, 543, 'Eric', 'Campbell', '4917746e38', '1298847678', '1298847678', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1228, 1226, 542, 'Baby', 'Bella', '0', '1298847678', '1298847678', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1227, 1226, 542, 'Davie', 'Carranza', '0', '1298847678', '1298847678', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1225, 1223, 541, 'Devin', 'Hill', '0', '1298847678', '1298847678', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1226, 0, 542, 'Katie', 'Hardeman', '6d755667f3', '1298847678', '1298847678', 3, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1223, 0, 541, 'Bud', 'Hill', '5a97150d5c', '1298847678', '1298847678', 3, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1224, 1223, 541, 'Mary', 'Hill', '0', '1298847678', '1298847678', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1221, 0, 540, 'Heather', 'Hoffman-Abbott', 'd4e5207d66', '1298847678', '1298847678', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1222, 1221, 540, 'Jeremy', 'Abbott', '0', '1298847678', '1298847678', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1219, 0, 538, 'Torrey', 'McConnell', '00a669ee59', '1298847678', '1298847678', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1220, 0, 539, 'Rebecca', 'Voltin', '6a0fca4e0a', '1298847678', '1298847678', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1216, 0, 536, 'Crystal', 'Powell', '58d8daef26', '1298847678', '1298847678', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1217, 1216, 536, 'Kyle', 'Logsdon', '0', '1298847678', '1298847678', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1218, 0, 537, 'Stephanie', 'Powers', '9e4a167ec9', '1298847678', '1298847678', 3, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1214, 1211, 534, 'Robert', 'Gagermeier', '0', '1298847677', '1298847677', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1215, 0, 535, 'Katie', 'McClure', '52a2eeb5d5', '1298847677', '1298847677', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1213, 1211, 534, 'Lloyd', 'Gagermeier', '0', '1298847677', '1298847677', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1210, 0, 533, 'Heather', 'Mauer', '60aeb8820d', '1298847677', '1298847677', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1211, 0, 534, 'Bob', 'Gagermeier', 'dfdfe4ca97', '1298847677', '1298847677', 4, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1212, 1211, 534, 'Michelle', 'Gagermeier', '0', '1298847677', '1298847677', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1208, 0, 531, 'Erin', 'Peeples', '7c01a33a15', '1298847677', '1298847677', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1209, 0, 532, 'Matt', 'Grahn', 'ab9900a391', '1298847677', '1298847677', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1206, 0, 530, 'Kylan', 'Hoener', '68e173c5db', '1298847677', '1298847677', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1207, 1206, 530, 'Johanna', 'Hoener', '0', '1298847677', '1298847677', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1205, 0, 529, 'Jay', 'Reynolds', '93bbbc83f2', '1298847677', '1298847677', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1204, 0, 528, 'Tim', 'ODonnell', '7e4050b2f7', '1298847677', '1298847677', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1203, 0, 527, 'Erik', 'Larsen', '89356f1fd3', '1298847677', '1298847677', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1200, 1199, 525, 'Baby', 'Hank', '0', '1298847677', '1298847677', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1201, 0, 526, 'Chris', 'Joyce', '582cf9f3ed', '1298847677', '1298847677', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1202, 1201, 526, 'Ava', 'Segal', '0', '1298847677', '1298847677', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1199, 0, 525, 'Karen', 'Kralik', '9e284be9fb', '1298847677', '1298847677', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1198, 0, 524, 'Annie', 'Tyner', 'e055f88d08', '1298847677', '1298847677', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1197, 1196, 523, 'Owen', 'King', '0', '1298847677', '1298847677', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1195, 1194, 522, 'Nate', 'Albertson', '0', '1298847677', '1298847677', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1196, 0, 523, 'Ashley', 'Black', 'b3604edffb', '1298847677', '1298847677', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1194, 0, 522, 'Becky', 'Hill', '27477cb5c2', '1298847677', '1298847677', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1193, 0, 521, 'Sandy', 'Horstman', '70669c1aa4', '1298847677', '1298847677', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1192, 1191, 520, 'Dylan', 'Mechek', '0', '1298847677', '1298847677', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1191, 0, 520, 'Larry', 'Mechek', '8ae4f8a020', '1298847677', '1298847677', 3, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1190, 0, 519, 'Lisa', 'Clarke', '7eff6fd301', '1298847677', '1298847677', 5, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1189, 1188, 518, 'Toni', 'Ramey', '0', '1298847677', '1298847677', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1188, 0, 518, 'Ted', 'Ramey', '5d4fc517cf', '1298847677', '1298847677', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1186, 1185, 516, 'Mark', 'Piazza', '0', '1298847676', '1298847676', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1187, 0, 517, 'Lola', 'Ramey', '40a10d90d2', '1298847676', '1298847676', 1, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1185, 0, 516, 'Denise', 'Piazaa', 'd73a91c67f', '1298847676', '1298847676', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1184, 0, 515, 'Annabelle', 'Justice', 'b175f5bfac', '1298847676', '1298847676', 1, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1183, 1182, 514, 'Dottie', 'Graves', '0', '1298847676', '1298847676', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1182, 0, 514, 'Al', 'Graves', 'fa62e0acac', '1298847676', '1298847676', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1181, 1180, 513, 'Marissa', 'Eick', '0', '1298847676', '1298847676', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1180, 0, 513, 'Josh', 'Eick', '61c47ded41', '1298847676', '1298847676', 4, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1179, 1178, 512, 'Trish', 'Eick', '0', '1298847675', '1298847675', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1178, 0, 512, 'Jim', 'Eick', '6aa766dd79', '1298847675', '1298847675', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1177, 0, 511, 'Glenn', 'Black', '7ee56c75a3', '1298847675', '1298847675', 1, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1176, 0, 510, 'Lillian', 'Black', '0c71d5659a', '1298847674', '1298847674', 1, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1175, 0, 509, 'Dennis', 'Black', '033a9ee975', '1298847673', '1298847673', 1, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1319, 0, 548, 'Alisha', 'Proctor', '257e85b542', '1298847686', '1298847686', 3, 0, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cah_GuestToGuestType`
--

DROP TABLE IF EXISTS `cah_GuestToGuestType`;
CREATE TABLE `cah_GuestToGuestType` (
  `guest_to_guest_type_id` int(100) NOT NULL AUTO_INCREMENT,
  `guest_id` int(100) NOT NULL,
  `guest_type_id` int(100) NOT NULL,
  PRIMARY KEY (`guest_to_guest_type_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1445 ;

--
-- Dumping data for table `cah_GuestToGuestType`
--

INSERT INTO `cah_GuestToGuestType` VALUES(1263, 1175, 146);
INSERT INTO `cah_GuestToGuestType` VALUES(1264, 1175, 147);
INSERT INTO `cah_GuestToGuestType` VALUES(1265, 1176, 146);
INSERT INTO `cah_GuestToGuestType` VALUES(1266, 1176, 148);
INSERT INTO `cah_GuestToGuestType` VALUES(1267, 1177, 146);
INSERT INTO `cah_GuestToGuestType` VALUES(1268, 1178, 146);
INSERT INTO `cah_GuestToGuestType` VALUES(1269, 1179, 146);
INSERT INTO `cah_GuestToGuestType` VALUES(1270, 1180, 146);
INSERT INTO `cah_GuestToGuestType` VALUES(1271, 1181, 146);
INSERT INTO `cah_GuestToGuestType` VALUES(1272, 1182, 146);
INSERT INTO `cah_GuestToGuestType` VALUES(1273, 1183, 146);
INSERT INTO `cah_GuestToGuestType` VALUES(1274, 1184, 146);
INSERT INTO `cah_GuestToGuestType` VALUES(1275, 1185, 146);
INSERT INTO `cah_GuestToGuestType` VALUES(1276, 1185, 149);
INSERT INTO `cah_GuestToGuestType` VALUES(1277, 1186, 146);
INSERT INTO `cah_GuestToGuestType` VALUES(1278, 1187, 146);
INSERT INTO `cah_GuestToGuestType` VALUES(1279, 1188, 146);
INSERT INTO `cah_GuestToGuestType` VALUES(1280, 1189, 146);
INSERT INTO `cah_GuestToGuestType` VALUES(1281, 1190, 146);
INSERT INTO `cah_GuestToGuestType` VALUES(1282, 1191, 146);
INSERT INTO `cah_GuestToGuestType` VALUES(1283, 1192, 146);
INSERT INTO `cah_GuestToGuestType` VALUES(1284, 1193, 146);
INSERT INTO `cah_GuestToGuestType` VALUES(1285, 1194, 150);
INSERT INTO `cah_GuestToGuestType` VALUES(1286, 1194, 151);
INSERT INTO `cah_GuestToGuestType` VALUES(1287, 1194, 152);
INSERT INTO `cah_GuestToGuestType` VALUES(1288, 1194, 153);
INSERT INTO `cah_GuestToGuestType` VALUES(1289, 1195, 150);
INSERT INTO `cah_GuestToGuestType` VALUES(1290, 1195, 154);
INSERT INTO `cah_GuestToGuestType` VALUES(1291, 1196, 150);
INSERT INTO `cah_GuestToGuestType` VALUES(1292, 1196, 152);
INSERT INTO `cah_GuestToGuestType` VALUES(1293, 1196, 151);
INSERT INTO `cah_GuestToGuestType` VALUES(1294, 1197, 155);
INSERT INTO `cah_GuestToGuestType` VALUES(1295, 1198, 150);
INSERT INTO `cah_GuestToGuestType` VALUES(1296, 1198, 152);
INSERT INTO `cah_GuestToGuestType` VALUES(1297, 1198, 151);
INSERT INTO `cah_GuestToGuestType` VALUES(1298, 1199, 150);
INSERT INTO `cah_GuestToGuestType` VALUES(1299, 1199, 152);
INSERT INTO `cah_GuestToGuestType` VALUES(1300, 1199, 151);
INSERT INTO `cah_GuestToGuestType` VALUES(1301, 1200, 150);
INSERT INTO `cah_GuestToGuestType` VALUES(1302, 1201, 150);
INSERT INTO `cah_GuestToGuestType` VALUES(1303, 1201, 154);
INSERT INTO `cah_GuestToGuestType` VALUES(1304, 1201, 156);
INSERT INTO `cah_GuestToGuestType` VALUES(1305, 1201, 157);
INSERT INTO `cah_GuestToGuestType` VALUES(1306, 1202, 150);
INSERT INTO `cah_GuestToGuestType` VALUES(1307, 1203, 150);
INSERT INTO `cah_GuestToGuestType` VALUES(1308, 1203, 154);
INSERT INTO `cah_GuestToGuestType` VALUES(1309, 1203, 156);
INSERT INTO `cah_GuestToGuestType` VALUES(1310, 1204, 150);
INSERT INTO `cah_GuestToGuestType` VALUES(1311, 1204, 154);
INSERT INTO `cah_GuestToGuestType` VALUES(1312, 1204, 156);
INSERT INTO `cah_GuestToGuestType` VALUES(1313, 1205, 150);
INSERT INTO `cah_GuestToGuestType` VALUES(1314, 1205, 154);
INSERT INTO `cah_GuestToGuestType` VALUES(1315, 1205, 156);
INSERT INTO `cah_GuestToGuestType` VALUES(1316, 1206, 150);
INSERT INTO `cah_GuestToGuestType` VALUES(1317, 1206, 152);
INSERT INTO `cah_GuestToGuestType` VALUES(1318, 1207, 150);
INSERT INTO `cah_GuestToGuestType` VALUES(1319, 1208, 152);
INSERT INTO `cah_GuestToGuestType` VALUES(1320, 1209, 150);
INSERT INTO `cah_GuestToGuestType` VALUES(1321, 1209, 154);
INSERT INTO `cah_GuestToGuestType` VALUES(1322, 1210, 152);
INSERT INTO `cah_GuestToGuestType` VALUES(1323, 1211, 150);
INSERT INTO `cah_GuestToGuestType` VALUES(1324, 1212, 150);
INSERT INTO `cah_GuestToGuestType` VALUES(1325, 1213, 150);
INSERT INTO `cah_GuestToGuestType` VALUES(1326, 1214, 150);
INSERT INTO `cah_GuestToGuestType` VALUES(1327, 1215, 150);
INSERT INTO `cah_GuestToGuestType` VALUES(1328, 1215, 152);
INSERT INTO `cah_GuestToGuestType` VALUES(1329, 1216, 150);
INSERT INTO `cah_GuestToGuestType` VALUES(1330, 1216, 152);
INSERT INTO `cah_GuestToGuestType` VALUES(1331, 1217, 150);
INSERT INTO `cah_GuestToGuestType` VALUES(1332, 1218, 152);
INSERT INTO `cah_GuestToGuestType` VALUES(1333, 1219, 150);
INSERT INTO `cah_GuestToGuestType` VALUES(1334, 1219, 152);
INSERT INTO `cah_GuestToGuestType` VALUES(1335, 1220, 150);
INSERT INTO `cah_GuestToGuestType` VALUES(1336, 1220, 154);
INSERT INTO `cah_GuestToGuestType` VALUES(1337, 1221, 152);
INSERT INTO `cah_GuestToGuestType` VALUES(1338, 1222, 152);
INSERT INTO `cah_GuestToGuestType` VALUES(1339, 1223, 150);
INSERT INTO `cah_GuestToGuestType` VALUES(1340, 1224, 150);
INSERT INTO `cah_GuestToGuestType` VALUES(1341, 1225, 150);
INSERT INTO `cah_GuestToGuestType` VALUES(1342, 1226, 150);
INSERT INTO `cah_GuestToGuestType` VALUES(1343, 1226, 154);
INSERT INTO `cah_GuestToGuestType` VALUES(1344, 1227, 150);
INSERT INTO `cah_GuestToGuestType` VALUES(1345, 1228, 150);
INSERT INTO `cah_GuestToGuestType` VALUES(1346, 1229, 154);
INSERT INTO `cah_GuestToGuestType` VALUES(1347, 1230, 150);
INSERT INTO `cah_GuestToGuestType` VALUES(1348, 1231, 150);
INSERT INTO `cah_GuestToGuestType` VALUES(1349, 1231, 152);
INSERT INTO `cah_GuestToGuestType` VALUES(1350, 1232, 150);
INSERT INTO `cah_GuestToGuestType` VALUES(1351, 1233, 150);
INSERT INTO `cah_GuestToGuestType` VALUES(1352, 1233, 152);
INSERT INTO `cah_GuestToGuestType` VALUES(1353, 1234, 154);
INSERT INTO `cah_GuestToGuestType` VALUES(1354, 1235, 154);
INSERT INTO `cah_GuestToGuestType` VALUES(1355, 1236, 154);
INSERT INTO `cah_GuestToGuestType` VALUES(1356, 1237, 154);
INSERT INTO `cah_GuestToGuestType` VALUES(1357, 1238, 154);
INSERT INTO `cah_GuestToGuestType` VALUES(1358, 1239, 154);
INSERT INTO `cah_GuestToGuestType` VALUES(1359, 1240, 154);
INSERT INTO `cah_GuestToGuestType` VALUES(1360, 1241, 154);
INSERT INTO `cah_GuestToGuestType` VALUES(1361, 1242, 154);
INSERT INTO `cah_GuestToGuestType` VALUES(1362, 1243, 154);
INSERT INTO `cah_GuestToGuestType` VALUES(1363, 1244, 152);
INSERT INTO `cah_GuestToGuestType` VALUES(1364, 1245, 158);
INSERT INTO `cah_GuestToGuestType` VALUES(1365, 1245, 159);
INSERT INTO `cah_GuestToGuestType` VALUES(1366, 1246, 158);
INSERT INTO `cah_GuestToGuestType` VALUES(1367, 1246, 160);
INSERT INTO `cah_GuestToGuestType` VALUES(1368, 1247, 150);
INSERT INTO `cah_GuestToGuestType` VALUES(1369, 1248, 150);
INSERT INTO `cah_GuestToGuestType` VALUES(1370, 1249, 158);
INSERT INTO `cah_GuestToGuestType` VALUES(1371, 1249, 156);
INSERT INTO `cah_GuestToGuestType` VALUES(1372, 1250, 158);
INSERT INTO `cah_GuestToGuestType` VALUES(1373, 1250, 156);
INSERT INTO `cah_GuestToGuestType` VALUES(1374, 1251, 158);
INSERT INTO `cah_GuestToGuestType` VALUES(1375, 1252, 150);
INSERT INTO `cah_GuestToGuestType` VALUES(1376, 1253, 158);
INSERT INTO `cah_GuestToGuestType` VALUES(1377, 1254, 158);
INSERT INTO `cah_GuestToGuestType` VALUES(1378, 1255, 158);
INSERT INTO `cah_GuestToGuestType` VALUES(1379, 1256, 158);
INSERT INTO `cah_GuestToGuestType` VALUES(1380, 1257, 158);
INSERT INTO `cah_GuestToGuestType` VALUES(1381, 1258, 158);
INSERT INTO `cah_GuestToGuestType` VALUES(1382, 1259, 158);
INSERT INTO `cah_GuestToGuestType` VALUES(1383, 1260, 158);
INSERT INTO `cah_GuestToGuestType` VALUES(1384, 1261, 158);
INSERT INTO `cah_GuestToGuestType` VALUES(1385, 1262, 158);
INSERT INTO `cah_GuestToGuestType` VALUES(1386, 1263, 158);
INSERT INTO `cah_GuestToGuestType` VALUES(1387, 1264, 158);
INSERT INTO `cah_GuestToGuestType` VALUES(1388, 1265, 158);
INSERT INTO `cah_GuestToGuestType` VALUES(1389, 1266, 158);
INSERT INTO `cah_GuestToGuestType` VALUES(1390, 1267, 158);
INSERT INTO `cah_GuestToGuestType` VALUES(1391, 1268, 158);
INSERT INTO `cah_GuestToGuestType` VALUES(1392, 1269, 158);
INSERT INTO `cah_GuestToGuestType` VALUES(1393, 1270, 158);
INSERT INTO `cah_GuestToGuestType` VALUES(1394, 1271, 155);
INSERT INTO `cah_GuestToGuestType` VALUES(1395, 1272, 158);
INSERT INTO `cah_GuestToGuestType` VALUES(1396, 1273, 158);
INSERT INTO `cah_GuestToGuestType` VALUES(1397, 1274, 158);
INSERT INTO `cah_GuestToGuestType` VALUES(1398, 1275, 158);
INSERT INTO `cah_GuestToGuestType` VALUES(1399, 1276, 158);
INSERT INTO `cah_GuestToGuestType` VALUES(1400, 1277, 158);
INSERT INTO `cah_GuestToGuestType` VALUES(1401, 1278, 158);
INSERT INTO `cah_GuestToGuestType` VALUES(1402, 1279, 158);
INSERT INTO `cah_GuestToGuestType` VALUES(1403, 1280, 158);
INSERT INTO `cah_GuestToGuestType` VALUES(1404, 1281, 158);
INSERT INTO `cah_GuestToGuestType` VALUES(1405, 1282, 158);
INSERT INTO `cah_GuestToGuestType` VALUES(1406, 1283, 158);
INSERT INTO `cah_GuestToGuestType` VALUES(1407, 1284, 158);
INSERT INTO `cah_GuestToGuestType` VALUES(1408, 1285, 158);
INSERT INTO `cah_GuestToGuestType` VALUES(1409, 1286, 158);
INSERT INTO `cah_GuestToGuestType` VALUES(1410, 1287, 158);
INSERT INTO `cah_GuestToGuestType` VALUES(1411, 1288, 158);
INSERT INTO `cah_GuestToGuestType` VALUES(1412, 1289, 158);
INSERT INTO `cah_GuestToGuestType` VALUES(1413, 1290, 158);
INSERT INTO `cah_GuestToGuestType` VALUES(1414, 1291, 158);
INSERT INTO `cah_GuestToGuestType` VALUES(1415, 1292, 158);
INSERT INTO `cah_GuestToGuestType` VALUES(1416, 1293, 158);
INSERT INTO `cah_GuestToGuestType` VALUES(1417, 1293, 148);
INSERT INTO `cah_GuestToGuestType` VALUES(1418, 1270, 148);
INSERT INTO `cah_GuestToGuestType` VALUES(1419, 1294, 158);
INSERT INTO `cah_GuestToGuestType` VALUES(1420, 1295, 158);
INSERT INTO `cah_GuestToGuestType` VALUES(1421, 1296, 158);
INSERT INTO `cah_GuestToGuestType` VALUES(1422, 1297, 158);
INSERT INTO `cah_GuestToGuestType` VALUES(1423, 1298, 158);
INSERT INTO `cah_GuestToGuestType` VALUES(1424, 1299, 158);
INSERT INTO `cah_GuestToGuestType` VALUES(1425, 1300, 158);
INSERT INTO `cah_GuestToGuestType` VALUES(1426, 1301, 158);
INSERT INTO `cah_GuestToGuestType` VALUES(1427, 1302, 158);
INSERT INTO `cah_GuestToGuestType` VALUES(1428, 1303, 158);
INSERT INTO `cah_GuestToGuestType` VALUES(1429, 1304, 158);
INSERT INTO `cah_GuestToGuestType` VALUES(1430, 1305, 161);
INSERT INTO `cah_GuestToGuestType` VALUES(1431, 1306, 161);
INSERT INTO `cah_GuestToGuestType` VALUES(1432, 1307, 161);
INSERT INTO `cah_GuestToGuestType` VALUES(1433, 1308, 161);
INSERT INTO `cah_GuestToGuestType` VALUES(1434, 1309, 161);
INSERT INTO `cah_GuestToGuestType` VALUES(1435, 1310, 161);
INSERT INTO `cah_GuestToGuestType` VALUES(1436, 1311, 161);
INSERT INTO `cah_GuestToGuestType` VALUES(1437, 1312, 161);
INSERT INTO `cah_GuestToGuestType` VALUES(1438, 1313, 161);
INSERT INTO `cah_GuestToGuestType` VALUES(1439, 1314, 162);
INSERT INTO `cah_GuestToGuestType` VALUES(1440, 1315, 162);
INSERT INTO `cah_GuestToGuestType` VALUES(1441, 1316, 162);
INSERT INTO `cah_GuestToGuestType` VALUES(1442, 1317, 162);
INSERT INTO `cah_GuestToGuestType` VALUES(1443, 1318, 162);
INSERT INTO `cah_GuestToGuestType` VALUES(1444, 1319, 162);

-- --------------------------------------------------------

--
-- Table structure for table `cah_GuestTypes`
--

DROP TABLE IF EXISTS `cah_GuestTypes`;
CREATE TABLE `cah_GuestTypes` (
  `guest_type_id` int(100) NOT NULL AUTO_INCREMENT,
  `title` varchar(1000) DEFAULT NULL,
  `is_special` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`guest_type_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=163 ;

--
-- Dumping data for table `cah_GuestTypes`
--

INSERT INTO `cah_GuestTypes` VALUES(0, NULL, NULL, 0);
INSERT INTO `cah_GuestTypes` VALUES(162, 'Bride Coworker', 0, 1);
INSERT INTO `cah_GuestTypes` VALUES(161, 'Groom Coworker', 0, 1);
INSERT INTO `cah_GuestTypes` VALUES(160, 'Mother of the Groom', 1, 1);
INSERT INTO `cah_GuestTypes` VALUES(159, 'Father of the Groom', 1, 1);
INSERT INTO `cah_GuestTypes` VALUES(158, 'Groom Family', 0, 1);
INSERT INTO `cah_GuestTypes` VALUES(157, 'Best Man', 1, 1);
INSERT INTO `cah_GuestTypes` VALUES(156, 'Groomsman', 1, 1);
INSERT INTO `cah_GuestTypes` VALUES(155, 'Friend of Friend', 0, 1);
INSERT INTO `cah_GuestTypes` VALUES(154, 'Groom Friend', 0, 1);
INSERT INTO `cah_GuestTypes` VALUES(153, 'Maid of Honor', 1, 1);
INSERT INTO `cah_GuestTypes` VALUES(152, 'Bride Friend', 0, 1);
INSERT INTO `cah_GuestTypes` VALUES(151, 'Bridesmaid', 1, 1);
INSERT INTO `cah_GuestTypes` VALUES(150, 'Mutual Friend', 0, 1);
INSERT INTO `cah_GuestTypes` VALUES(149, 'Mother of the Bride', 1, 1);
INSERT INTO `cah_GuestTypes` VALUES(148, 'Guest of Honor', 1, 1);
INSERT INTO `cah_GuestTypes` VALUES(147, 'Father of the Bride', 1, 1);
INSERT INTO `cah_GuestTypes` VALUES(146, 'Bride Family', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `common_Articles`
--

DROP TABLE IF EXISTS `common_Articles`;
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=89 ;

--
-- Dumping data for table `common_Articles`
--

INSERT INTO `common_Articles` VALUES(0, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `common_Articles` VALUES(88, 'Heather\\''s Story', 'Some say time flies when you\\''re having fun, and they\\''re right. Fun is the first word that comes to mind if I had to describe the last six and a half years of my life. Well that, and luck. Throughout this time I have accomplished a lot. Gone to college, gotten a real job, been the proud owner of a cute dog. But what really makes the past few years of my life fun, is that I have been lucky enough to have someone to share it with. \n\\\\n\nIt\\''s not everyone that has to travel four hours to meet someone who grew up twenty minutes away from you. But I can\\''t say that if we had met before in another setting, we would have ever started dating. Had we met while still in high school, I may have never talked to Cole (old Cascade High School traditions dictate not ever dating anyone from Regis High School-still haven\\''t heard a reason why or how this status quo got started). As it was, I might never have met him still if it hadn\\''t been for a certain future roommate of his bringing him up to my dorm room one night with a guitar and a penchant for stories. Apparently I had amazed them both with my on-the-fly account of a scuba diver who meets up with a suave talking shark.  \n\\\\n\nA few days later, I saw Cole in the cafeteria and (I\\''m embarrassed to say) ignored him. I wasnÃ¢â‚¬â„¢t sure what he thought about a girl who could make up silly fish stories at a moment\\''s notice . . . and I wasn\\''t sure he\\''d recognize me anyway. Of course, no sooner had I dodged in front of the sandwich bar I nearly collide into him. He wouldn\\''t remember this, but right then he said that and complimented me on the scarf I was wearing. I look back on that moment now and laugh. The scarf he complimented I had made, and it was lopsided with a quite a few holes. But that moment really illustrates who Cole was and continues to be. He has always been caring, thoughtful, supportive and above all, kind-hearted. \n\\\\n\nThe past six years have flown by because Cole and I were having fun. And we still are. Above all, I have had the best time watching Cole evolve into the person he is today. Six years ago, I fell in love with a long-haired, long boarding video gamer, and now, I\\''m even more in love with the person he\\''s grown up to be. Cole is a smart, successful, loving, creative and hard-working person. I am lucky just to have met him. Together, I know our next sixty years are going to be just as fun as the last six.  ', 1297801457, 1, 2, 37, 1, 2, '');
INSERT INTO `common_Articles` VALUES(87, 'This is Cole\\''s Story...', 'I met Heather one sunny afternoon in June.', 1297801420, 1, 2, 36, 1, 2, '');
INSERT INTO `common_Articles` VALUES(86, 'This is Cole\\''s Story...', 'I met Heather one sunny afternoon in June.', 1297801419, 0, 2, 36, 1, 1, '');
INSERT INTO `common_Articles` VALUES(85, 'Test', 'This is a new post for testing purposes...', 1297362730, 0, 2, 34, 46, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `common_ArticleToFile`
--

DROP TABLE IF EXISTS `common_ArticleToFile`;
CREATE TABLE `common_ArticleToFile` (
  `article_to_file_id` int(100) NOT NULL AUTO_INCREMENT,
  `article_id` int(100) NOT NULL,
  `file_id` int(100) NOT NULL,
  `priority` int(100) DEFAULT NULL,
  PRIMARY KEY (`article_to_file_id`),
  KEY `article_id` (`article_id`),
  KEY `file_id` (`file_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `common_ArticleToFile`
--


-- --------------------------------------------------------

--
-- Table structure for table `common_Files`
--

DROP TABLE IF EXISTS `common_Files`;
CREATE TABLE `common_Files` (
  `file_id` int(100) NOT NULL AUTO_INCREMENT,
  `file_type_id` int(100) NOT NULL,
  `file_name` varchar(1000) DEFAULT NULL,
  `upload_timestamp` int(100) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`file_id`),
  KEY `file_type_id` (`file_type_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=175 ;

--
-- Dumping data for table `common_Files`
--

INSERT INTO `common_Files` VALUES(174, 21, '28d20032f3.jpg', 1298627586, 1);
INSERT INTO `common_Files` VALUES(173, 21, 'd90d4d8881.jpg', 1298626837, 1);
INSERT INTO `common_Files` VALUES(172, 21, '18a45d164a.jpg', 1297973475, 1);
INSERT INTO `common_Files` VALUES(171, 21, 'ed73774b6d.jpg', 1297447636, 1);
INSERT INTO `common_Files` VALUES(170, 21, 'f7544d929e.jpg', 1297447545, 1);
INSERT INTO `common_Files` VALUES(169, 21, 'a6bec7dc32.jpg', 1297369589, 1);
INSERT INTO `common_Files` VALUES(168, 21, '36c5f7cded.png', 1297369294, 1);
INSERT INTO `common_Files` VALUES(167, 21, 'fd85cf9381.jpeg', 1297368779, 1);
INSERT INTO `common_Files` VALUES(0, 0, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `common_FileTypes`
--

DROP TABLE IF EXISTS `common_FileTypes`;
CREATE TABLE `common_FileTypes` (
  `file_type_id` int(100) NOT NULL AUTO_INCREMENT,
  `title` varchar(1000) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `directory` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`file_type_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `common_FileTypes`
--

INSERT INTO `common_FileTypes` VALUES(0, NULL, 0, NULL);
INSERT INTO `common_FileTypes` VALUES(20, 'Site Image', 1, '/images');
INSERT INTO `common_FileTypes` VALUES(21, 'User Image', 1, '/images/user_images');

-- --------------------------------------------------------

--
-- Table structure for table `common_Permissions`
--

DROP TABLE IF EXISTS `common_Permissions`;
CREATE TABLE `common_Permissions` (
  `permission_id` int(100) NOT NULL AUTO_INCREMENT,
  `alias` varchar(1000) DEFAULT NULL,
  `title` varchar(1000) DEFAULT NULL,
  `summary` varchar(1000) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`permission_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `common_Permissions`
--

INSERT INTO `common_Permissions` VALUES(0, NULL, NULL, NULL, 1);
INSERT INTO `common_Permissions` VALUES(5, 'SPR', 'Super Administrator', 'Super Admin. This permission grants user access to everything.', 1);
INSERT INTO `common_Permissions` VALUES(12, 'REG', 'Regular User', 'This is the permission that a regular user gets...', 1);

-- --------------------------------------------------------

--
-- Table structure for table `common_Sections`
--

DROP TABLE IF EXISTS `common_Sections`;
CREATE TABLE `common_Sections` (
  `section_id` int(100) NOT NULL AUTO_INCREMENT,
  `title` varchar(1000) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`section_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `common_Sections`
--

INSERT INTO `common_Sections` VALUES(0, NULL, 0);
INSERT INTO `common_Sections` VALUES(37, 'her-story', 1);
INSERT INTO `common_Sections` VALUES(34, 'main', 1);
INSERT INTO `common_Sections` VALUES(36, 'his-story', 1);

-- --------------------------------------------------------

--
-- Table structure for table `common_Sessions`
--

DROP TABLE IF EXISTS `common_Sessions`;
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

--
-- Dumping data for table `common_Sessions`
--

INSERT INTO `common_Sessions` VALUES('c4b605c7d36d671a53e18e771de99bac', 1298670278, NULL, 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.20 (KHTML, like Gecko) Chrome/11.0.672.2 Safari/534.20', '127.0.0.1', 2);
INSERT INTO `common_Sessions` VALUES('f55117800ffb76b9e86c91c76930ce46', 1298670198, 1298670273, 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.20 (KHTML, like Gecko) Chrome/11.0.672.2 Safari/534.20', '127.0.0.1', 32);
INSERT INTO `common_Sessions` VALUES('7948ea81603249fa45d14d94978098f4', 1298669625, 1298670189, 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.20 (KHTML, like Gecko) Chrome/11.0.672.2 Safari/534.20', '127.0.0.1', 2);
INSERT INTO `common_Sessions` VALUES('4f2fb2972728e3ed96df497c1983aedd', 1298614536, NULL, 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.20 (KHTML, like Gecko) Chrome/11.0.672.2 Safari/534.20', '127.0.0.1', 2);
INSERT INTO `common_Sessions` VALUES('c015685b2aa8bb451dd4c61353ced85d', 1298491269, NULL, 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.20 (KHTML, like Gecko) Chrome/11.0.672.2 Safari/534.20', '127.0.0.1', 2);
INSERT INTO `common_Sessions` VALUES('3a779a4e63d97b777d4d604f30ecc24c', 1298337781, NULL, 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13', '127.0.0.1', 2);
INSERT INTO `common_Sessions` VALUES('d11ebf46c75a9cb20ba25754d2a7271a', 1297973363, NULL, 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.16 (KHTML, like Gecko) Chrome/10.0.648.82 Safari/534.16', '127.0.0.1', 2);
INSERT INTO `common_Sessions` VALUES('7979687da44af9950e285bb423afa463', 1297842802, NULL, 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.16 (KHTML, like Gecko) Chrome/10.0.648.45 Safari/534.16', '127.0.0.1', 2);
INSERT INTO `common_Sessions` VALUES('1f961f6747f2e6b253244f1d9987a670', 1297758150, NULL, 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.16 (KHTML, like Gecko) Chrome/10.0.648.45 Safari/534.16', '127.0.0.1', 2);
INSERT INTO `common_Sessions` VALUES('03cca8d97efa540b815da8184ef4be2e', 1297667368, NULL, 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.16 (KHTML, like Gecko) Chrome/10.0.648.45 Safari/534.16', '127.0.0.1', 2);
INSERT INTO `common_Sessions` VALUES('d6a8b912714744dc74e02394fed23df2', 1297667085, NULL, 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13', '127.0.0.1', 2);
INSERT INTO `common_Sessions` VALUES('0ec9f0f9eac7891c26629dfeb47dda48', 1297574309, NULL, 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.16 (KHTML, like Gecko) Chrome/10.0.648.45 Safari/534.16', '127.0.0.1', 2);
INSERT INTO `common_Sessions` VALUES('edeaa8248d5f10f5d776b432749c7bb9', 1297492048, NULL, 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.16 (KHTML, like Gecko) Chrome/10.0.648.45 Safari/534.16', '127.0.0.1', 2);
INSERT INTO `common_Sessions` VALUES('a9f463638d814fb972d44f45452210dd', 1297447429, NULL, 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.16 (KHTML, like Gecko) Chrome/10.0.648.45 Safari/534.16', '127.0.0.1', 2);
INSERT INTO `common_Sessions` VALUES('2a796e6561b15cf7d5ba04f7404f668e', 1297395918, NULL, 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.16 (KHTML, like Gecko) Chrome/10.0.648.45 Safari/534.16', '127.0.0.1', 2);
INSERT INTO `common_Sessions` VALUES('6c2f689efcc31ff732093e55a9ed0c42', 1297325542, NULL, 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.16 (KHTML, like Gecko) Chrome/10.0.648.45 Safari/534.16', '127.0.0.1', 2);
INSERT INTO `common_Sessions` VALUES('ff58a614b6aedd4e77eab3126ea0f82f', 1297322986, NULL, 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.16 (KHTML, like Gecko) Chrome/10.0.648.45 Safari/534.16', '127.0.0.1', 2);
INSERT INTO `common_Sessions` VALUES('b219f7535929513c2a9e08a30bcbc92b', 1297322967, 1297322979, 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-US) AppleWebKit/534.16 (KHTML, like Gecko) Chrome/10.0.648.45 Safari/534.16', '127.0.0.1', 2);

-- --------------------------------------------------------

--
-- Table structure for table `common_Settings`
--

DROP TABLE IF EXISTS `common_Settings`;
CREATE TABLE `common_Settings` (
  `setting_id` int(100) NOT NULL AUTO_INCREMENT,
  `title` varchar(1000) DEFAULT NULL,
  `value` varchar(5000) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `common_Settings`
--

INSERT INTO `common_Settings` VALUES(0, 'test', 'test', 0);
INSERT INTO `common_Settings` VALUES(4, 'test-setting', 'This is a test setting.', 0);
INSERT INTO `common_Settings` VALUES(3, 'mail-to-address', 'colehafner@gmail.com', 1);
INSERT INTO `common_Settings` VALUES(5, 'Test-setting-IV', 'This is a the second test setting.', 0);
INSERT INTO `common_Settings` VALUES(6, 'new-setting', 'test', 0);
INSERT INTO `common_Settings` VALUES(7, 'test-setting-II', 'test value', 0);
INSERT INTO `common_Settings` VALUES(8, 'site-name', 'coleandheather.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `common_Users`
--

DROP TABLE IF EXISTS `common_Users`;
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `common_Users`
--

INSERT INTO `common_Users` VALUES(0, 0, 0, '', '', '', NULL, NULL, NULL, 0, 0);
INSERT INTO `common_Users` VALUES(2, 172, 3, 'admin', 'colehafner@gmail.com', '915736809103c55faec9a0010bc518fb68e7e3a7a402b984954420cf14f07a57b5437dec1d6d8a91d4b539909d89f695216210fbba445d358860e5b61a3f20868594234a', 'Cole', 'Hafner', 'Cole hafner is the creator of this site and the Groom. ', 1, 1);
INSERT INTO `common_Users` VALUES(32, 173, 3, 'heatherBlack', 'heatherleeblack@gmail.com', '1399223243451d42b917cabc5a8653cd62a3112b089c35d595717434c82fae74490d0467ecb1b4f30b11d29f206c2f82fa8cfa31b4c5d5312a840f202f42fb77a29ec8a1', 'Heather', 'Black', 'Hi, I\\''m the Bride. Lol.', 0, 1);
INSERT INTO `common_Users` VALUES(33, 174, 2, 'coleHafner', 'cole@spawnordie.com', '13881504f4c073e0ef3474bdab0fe551ede2cb64f5c329c653d0c383597e0727f56e74028ed0abd18b29b363cb9470b3e8c1facc45ca07760507df147cae7767a5058b80', 'cole', 'hafner', 'I am the groom.', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `common_UserToPermission`
--

DROP TABLE IF EXISTS `common_UserToPermission`;
CREATE TABLE `common_UserToPermission` (
  `user_id` int(100) NOT NULL,
  `permission_id` int(100) NOT NULL,
  PRIMARY KEY (`user_id`,`permission_id`),
  KEY `permission_id` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `common_UserToPermission`
--

INSERT INTO `common_UserToPermission` VALUES(2, 5);
INSERT INTO `common_UserToPermission` VALUES(32, 12);
INSERT INTO `common_UserToPermission` VALUES(33, 5);

-- --------------------------------------------------------

--
-- Table structure for table `common_UserTypes`
--

DROP TABLE IF EXISTS `common_UserTypes`;
CREATE TABLE `common_UserTypes` (
  `user_type_id` int(100) NOT NULL AUTO_INCREMENT,
  `title` varchar(1000) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`user_type_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `common_UserTypes`
--

INSERT INTO `common_UserTypes` VALUES(1, NULL, 0);
INSERT INTO `common_UserTypes` VALUES(2, 'Groom', 1);
INSERT INTO `common_UserTypes` VALUES(3, 'Bride', 1);

-- --------------------------------------------------------

--
-- Table structure for table `common_Views`
--

DROP TABLE IF EXISTS `common_Views`;
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=54 ;

--
-- Dumping data for table `common_Views`
--

INSERT INTO `common_Views` VALUES(47, 'Posts', 1, 1, 0, 'Posts', 0, NULL, 0, NULL);
INSERT INTO `common_Views` VALUES(1, 'Index', 1, 0, 1, 'Our Story', 1, 0, 0, NULL);
INSERT INTO `common_Views` VALUES(11, 'Admin', 1, 1, 0, 'Administration', 0, 0, 0, NULL);
INSERT INTO `common_Views` VALUES(0, NULL, 0, 0, 0, NULL, 0, NULL, 0, NULL);
INSERT INTO `common_Views` VALUES(46, 'Account', 1, 1, 0, 'My Account', 0, NULL, 0, NULL);
INSERT INTO `common_Views` VALUES(44, 'Users', 1, 0, 0, 'Users', 0, NULL, 0, NULL);
INSERT INTO `common_Views` VALUES(52, 'PostWall', 1, 0, 1, 'Write Us', 4, NULL, 0, NULL);
INSERT INTO `common_Views` VALUES(50, 'Rsvp', 1, 0, 1, 'RSVP', 2, NULL, 0, NULL);
INSERT INTO `common_Views` VALUES(51, 'Gallery', 1, 0, 1, 'Pictures', 3, NULL, 0, NULL);
INSERT INTO `common_Views` VALUES(53, 'Info', 1, 0, 1, 'Wedding Info', 5, NULL, 0, NULL);
