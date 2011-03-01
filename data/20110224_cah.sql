-- phpMyAdmin SQL Dump
-- version 3.2.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 24, 2011 at 11:43 AM
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=446 ;

--
-- Dumping data for table `cah_Addresses`
--

INSERT INTO `cah_Addresses` VALUES(0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `cah_Addresses` VALUES(442, 'PO Box 121', 'Lyons', 'OR', '97358', 1);
INSERT INTO `cah_Addresses` VALUES(443, 'PO Box 411', 'Sublimity', 'OR', '97385', 1);
INSERT INTO `cah_Addresses` VALUES(444, '32265 N Fork Rd.', 'Lyons', 'OR', '97358', 1);
INSERT INTO `cah_Addresses` VALUES(445, '1452 Mill Pond Rd.', 'Ashland', 'OR', '97520', 1);
INSERT INTO `cah_Addresses` VALUES(440, 'Elliot Residence #217 390 SE Church', 'Sublimity', 'OR', '97385', 1);
INSERT INTO `cah_Addresses` VALUES(441, 'PO Box 53', 'Lyons', 'OR', '97358', 1);
INSERT INTO `cah_Addresses` VALUES(439, 'One Towers Ln. Box 2118 #A-1', 'Mt. Angel', 'OR', '97362', 1);
INSERT INTO `cah_Addresses` VALUES(438, '1154 Dawn Dr.', 'Stayton', 'OR', '97383', 1);
INSERT INTO `cah_Addresses` VALUES(437, '1307 Heritage Loop', 'Stayton', 'OR', '97383', 1);
INSERT INTO `cah_Addresses` VALUES(436, '1276 82nd SE', 'Salem', 'OR', '97317', 1);
INSERT INTO `cah_Addresses` VALUES(435, 'PO Box 727', 'Mill City', 'OR', '97360', 1);
INSERT INTO `cah_Addresses` VALUES(434, 'PO Box 723', 'Sublimity', 'OR', '97385', 1);
INSERT INTO `cah_Addresses` VALUES(433, '40931 Rodgers Mtn. Loop', 'Scio', 'OR', '97374', 1);
INSERT INTO `cah_Addresses` VALUES(432, '5715 Anderson Rd. SE', 'Aumsville', 'OR', '97325', 1);
INSERT INTO `cah_Addresses` VALUES(430, '1905 Madison Dr.', 'Lavergne', 'TN', '37086', 1);
INSERT INTO `cah_Addresses` VALUES(431, '4609 Toutle Ct. SE', 'Olympia', 'WA', '98501', 1);
INSERT INTO `cah_Addresses` VALUES(429, '225 Walden St. #3F', 'Cambridge', 'MA', '02140', 1);
INSERT INTO `cah_Addresses` VALUES(428, '7732 SE Ramona St.', 'Portland', 'OR', '97206', 1);
INSERT INTO `cah_Addresses` VALUES(427, '12785 Parrish Gap Rd. SE', 'Turner', 'OR', '97392', 1);
INSERT INTO `cah_Addresses` VALUES(426, '2642 NW Ginseng Pl.', 'Corvallis', 'OR', '97330', 1);
INSERT INTO `cah_Addresses` VALUES(425, 'PO Box 698', 'Lyons', 'OR', '97358', 1);
INSERT INTO `cah_Addresses` VALUES(424, '202 Jefferson St. #2', 'Bend', 'OR', '97701', 1);
INSERT INTO `cah_Addresses` VALUES(423, 'PO Box 177', 'Selma', 'OR', '97538', 1);
INSERT INTO `cah_Addresses` VALUES(422, '123 Main St.', 'Stayton', 'OR', '97383', 1);
INSERT INTO `cah_Addresses` VALUES(421, 'PO Box 562', 'Stayton', 'OR', '97383', 1);
INSERT INTO `cah_Addresses` VALUES(420, '378 Church St.', 'Sublimity', 'OR', '97385', 1);
INSERT INTO `cah_Addresses` VALUES(419, '1244 Calypso Ct.', 'Ashland', 'OR', '97520', 1);
INSERT INTO `cah_Addresses` VALUES(418, '19395 E. Evans Creek Rd.', 'White City', 'OR', '97305', 1);
INSERT INTO `cah_Addresses` VALUES(417, '168 W. 300 St.', 'Herber City', 'UT', '84032', 1);
INSERT INTO `cah_Addresses` VALUES(416, '496 Starflower Ln.', 'Ashland', 'OR', '97520', 1);
INSERT INTO `cah_Addresses` VALUES(415, '3611 NW Upas Ave.', 'Redmond', 'OR', '97756', 1);
INSERT INTO `cah_Addresses` VALUES(414, '12744 Brick Rd.', 'Turner', 'OR', '97392', 1);
INSERT INTO `cah_Addresses` VALUES(413, '200 E Grant St.', 'Enterprise', 'OR', '97828', 1);
INSERT INTO `cah_Addresses` VALUES(412, '1102 N. 13th St.', 'Boise', 'ID', '83702', 1);
INSERT INTO `cah_Addresses` VALUES(411, '6810 Jerdon Ct. N', 'Keizer', 'OR', '97303', 1);
INSERT INTO `cah_Addresses` VALUES(410, '108 5th St. #8', 'Ashland', 'OR', '97520', 1);
INSERT INTO `cah_Addresses` VALUES(409, '442 W. Berdine St.', 'Roseburg', 'OR', '97471', 1);
INSERT INTO `cah_Addresses` VALUES(408, '3514 SW Reindeer Ave.', 'Redmond', 'OR', '97756', 1);
INSERT INTO `cah_Addresses` VALUES(407, 'PO Box 1005', 'Aumsville', 'OR', '97325', 1);
INSERT INTO `cah_Addresses` VALUES(406, '1153 Stanford Ave.', 'Palo Alto', 'CA', '94306', 1);
INSERT INTO `cah_Addresses` VALUES(405, '1170 Barnes Ave. #221', 'Salem', 'OR', '97306', 1);
INSERT INTO `cah_Addresses` VALUES(404, '8029 SE 24th', 'Portland', 'OR', '97202', 1);
INSERT INTO `cah_Addresses` VALUES(403, '3403 Marigold Dr.', 'Prescott', 'AZ', '97385', 1);
INSERT INTO `cah_Addresses` VALUES(402, '701 Larkspur Ct.', 'Sublimity', 'OR', '97385', 1);
INSERT INTO `cah_Addresses` VALUES(401, '511.5 S. Meldrum St.', 'Fort Collins', 'CO', '80521', 1);
INSERT INTO `cah_Addresses` VALUES(400, '5405 W. Arlington', 'Yakima', 'WA', '98908', 1);
INSERT INTO `cah_Addresses` VALUES(399, '6590 Griffin Creek Rd', 'Medford', 'OR', '97501', 1);
INSERT INTO `cah_Addresses` VALUES(398, '2863 Camp Baker Rd.', 'Medford', 'OR', '97501', 1);
INSERT INTO `cah_Addresses` VALUES(397, '400 N. Colorado St. #203B', 'Gunnison', 'CO', '81230', 1);
INSERT INTO `cah_Addresses` VALUES(396, '2459 NW 22nd St.', 'Redmond', 'OR', '97756', 1);
INSERT INTO `cah_Addresses` VALUES(395, '1821 Taylor Circle', 'Reedsburg', 'WI', '53959', 1);
INSERT INTO `cah_Addresses` VALUES(394, '175 High St.', 'Lee', 'MA', '01238', 1);
INSERT INTO `cah_Addresses` VALUES(393, '4920 Whisting Acres', 'Las Vegas', 'NV', '89131', 1);
INSERT INTO `cah_Addresses` VALUES(392, '7513 Mardean Ct.', 'Las Vegas', 'NV', '89131', 1);
INSERT INTO `cah_Addresses` VALUES(391, '230 N. McDow St.', 'Susanville', 'CA', '96130', 1);
INSERT INTO `cah_Addresses` VALUES(390, '3570 Lost Hills Dr.', 'Las Vegas', 'NV', '89122', 1);
INSERT INTO `cah_Addresses` VALUES(389, '3688 Cavender Creek Rd.', 'Danlonega', 'GA', '30533', 1);
INSERT INTO `cah_Addresses` VALUES(388, '1365 Burtschell Place', 'Crescent City', 'CA', '95531', 1);
INSERT INTO `cah_Addresses` VALUES(387, '2472 W. Silverstreak Way', 'Queen Creek', 'AZ', '85242', 1);
INSERT INTO `cah_Addresses` VALUES(384, '4848 North Start Ct.', 'Salem', 'OR', '97305', 1);
INSERT INTO `cah_Addresses` VALUES(385, '4826 Jean St. SE', 'Salem', 'OR', '97305', 1);
INSERT INTO `cah_Addresses` VALUES(386, '53507 N. Thomas Rd.', 'Benton City', 'WA', '99320', 1);
INSERT INTO `cah_Addresses` VALUES(383, '3254 Ridgeway Dr.', 'Turner', 'OR', '97392', 1);

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1031 ;

--
-- Dumping data for table `cah_Guests`
--

INSERT INTO `cah_Guests` VALUES(0, 0, 0, NULL, NULL, NULL, '', '', NULL, NULL, 0, 0, 0, 0);
INSERT INTO `cah_Guests` VALUES(1023, 0, 422, 'Chris', 'Ostmo', '7082fa8b72', '1298488548', '1298488548', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1022, 0, 422, 'Galen', 'Wright', '5a9264ddcd', '1298488548', '1298488548', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1021, 0, 422, 'Prateek', 'Sharma', '6aff22051d', '1298488548', '1298541978', 2, 1, 1, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES(1020, 1018, 445, 'Emma', 'Robison', '0', '1298488548', '1298488548', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1019, 1018, 445, 'Christine', 'Robison', '0', '1298488548', '1298488548', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1018, 0, 445, 'Tony', 'Robison', '157116e758', '1298488548', '1298488548', 3, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1017, 0, 422, 'Nate', 'Biondi', '9433af4d54', '1298488548', '1298488548', 5, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1015, 0, 422, 'Tim', 'Arthur', '9a6f7bead1', '1298488548', '1298488548', 6, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1016, 0, 422, 'Bob', 'Scott', '3dffb17ac7', '1298488548', '1298488548', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1014, 1011, 444, 'Andrew', 'Vandehey', '0', '1298488548', '1298488548', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1012, 1011, 444, 'Roger', 'Vandehey', '0', '1298488548', '1298488548', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1013, 1011, 444, 'Jill', 'Vandehey', '0', '1298488548', '1298488548', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1011, 0, 444, 'Shelly', 'Vandehey', '69899f1a1e', '1298488548', '1298488548', 4, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1010, 1007, 443, 'Piper', 'Freres', '0', '1298488548', '1298488548', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1009, 1007, 443, 'Sam', 'Freres', '0', '1298488548', '1298488548', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1008, 1007, 443, 'Rich', 'Freres', '0', '1298488548', '1298488548', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1006, 1005, 442, 'Leonard', 'Sutton', '0', '1298488548', '1298488548', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1007, 0, 443, 'Brandy', 'Freres', '75df54320f', '1298488548', '1298488548', 4, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1005, 0, 442, 'Sue', 'Sutton', 'b7c17d2a44', '1298488548', '1298488548', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1004, 0, 441, 'Dan', 'Hafner', '54f2844e53', '1298488548', '1298488548', 3, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1003, 0, 439, 'Don', 'Bender', '87dc7c2035', '1298488548', '1298488548', 1, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1002, 0, 438, 'Steve', 'Bender', '086e0a19a1', '1298488547', '1298488547', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1001, 998, 437, 'Mikel', 'Becktold', '0', '1298488547', '1298490506', 0, 0, 1, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1000, 998, 437, 'Katelyn', 'Becktold', '0', '1298488547', '1298490506', 0, 0, 1, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(999, 998, 437, 'Gregg', 'Unknown', '0', '1298488547', '1298490506', 0, 0, 1, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(998, 0, 437, 'Melanie', 'Hafner', '684fa54c87', '1298488547', '1298490506', 4, 0, 1, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(996, 994, 436, 'Donica', 'Bender', '0', '1298488546', '1298488546', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(997, 0, 422, 'Brianna', 'Anderson', '83098590a4', '1298488546', '1298488546', 3, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(995, 994, 436, 'Pam', 'Bender', '0', '1298488546', '1298488546', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(994, 0, 436, 'Bob', 'Bender', '7693d38b60', '1298488546', '1298488546', 4, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(992, 990, 422, 'JC', 'Hafner', '0', '1298488546', '1298488546', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(993, 0, 435, 'Angie', 'Connor', 'ce0de758a8', '1298488546', '1298488546', 4, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(991, 990, 422, 'Tricia', 'Hafner', '0', '1298488546', '1298488546', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(989, 986, 434, 'Jill', 'Hafner', '0', '1298488545', '1298488545', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(990, 0, 422, 'Johnny', 'Hafner', '29febcb99e', '1298488546', '1298488546', 4, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(988, 986, 434, 'Carrie', 'Hafner', '0', '1298488545', '1298488545', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(987, 986, 434, 'Debbie', 'Hafner', '0', '1298488545', '1298488545', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(986, 0, 434, 'John', 'Hafner', '9dd8223a3a', '1298488545', '1298488545', 5, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(985, 982, 433, 'Charlie', 'Siegmund', '0', '1298488544', '1298488544', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(984, 982, 433, 'Henry', 'Siegmund', '0', '1298488544', '1298488544', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(983, 982, 433, 'Alan', 'Siegmund', '0', '1298488544', '1298488544', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(982, 0, 433, 'Mandy', 'Siegmund', '55c80d00e7', '1298488544', '1298488544', 4, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(981, 980, 422, 'Amanda', 'Newkirk', '0', '1298488544', '1298488544', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(980, 0, 422, 'Walt', 'Hafner', 'd0c135e131', '1298488544', '1298488544', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(979, 977, 432, 'Gus', 'Hafner', '0', '1298488543', '1298488543', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(978, 977, 432, 'Margaret', 'Hafner', '0', '1298488543', '1298488543', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(977, 0, 432, 'Ted', 'Hafner', '67ce77414e', '1298488543', '1298488543', 3, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(976, 973, 431, 'Riley', 'Vanderbeek', '0', '1298488543', '1298488543', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(974, 973, 431, 'Jack', 'Vanderbeek', '0', '1298488543', '1298488543', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(975, 973, 431, 'Ben', 'Vanderbeek', '0', '1298488543', '1298488543', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(973, 0, 431, 'Suzy', 'Vanderbeek', 'c9ed4b4085', '1298488543', '1298488543', 4, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(972, 971, 430, 'Andrea', 'Bender', '0', '1298488543', '1298488543', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(971, 0, 430, 'Sara', 'Bender', 'f4495c5792', '1298488543', '1298488543', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(970, 0, 429, 'Chris', 'Newkirk', 'da9af4c560', '1298488542', '1298488542', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(969, 0, 428, 'Mary Kay', 'Bender', 'f4cd09625f', '1298488542', '1298488542', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(968, 963, 427, 'Kimmy', 'Bender', '0', '1298488541', '1298488541', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(967, 963, 427, 'Mandy', 'Bender', '0', '1298488541', '1298488541', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(966, 963, 427, 'Justine', 'Bender', '0', '1298488541', '1298488541', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(965, 963, 427, 'Katie', 'Bender', '0', '1298488541', '1298488541', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(964, 963, 427, 'Patty', 'Bender', '0', '1298488541', '1298488541', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(963, 0, 427, 'Vince', 'Bender', 'ba2dde51af', '1298488541', '1298488541', 6, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(962, 961, 426, 'Jayme', 'Felice', '0', '1298488541', '1298488541', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(960, 959, 425, 'Amanda', 'Krafcik', '0', '1298488540', '1298488540', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(961, 0, 426, 'TJ', 'Hafner', '4bbedb1c7a', '1298488541', '1298488541', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(959, 0, 425, 'Jack', 'Hafner', '3ee7515ffc', '1298488540', '1298488540', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(958, 957, 425, 'Prescilla', 'Celino', '0', '1298488539', '1298488539', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(956, 955, 425, 'Christine', 'Hafner', '0', '1298488538', '1298489888', 0, 0, 1, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(957, 0, 425, 'Jed', 'Hafner', 'd579e1fcf9', '1298488539', '1298488539', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(955, 0, 425, 'Jerry', 'Hafner', 'e8e966ad0e', '1298488538', '1298489888', 2, 0, 1, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(953, 951, 423, 'Baby', 'Forrest', '0', '1298488538', '1298488538', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(954, 0, 424, 'Jenna', 'Jacquard', '8f35ca4928', '1298488538', '1298488538', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(951, 0, 423, 'Michelle', 'Sidell', 'ba725a20cf', '1298488538', '1298488538', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(952, 951, 423, 'Dan', 'Unknown', '0', '1298488538', '1298488538', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(950, 0, 422, 'Caleb', 'Heuburger', '894be6029b', '1298488538', '1298488538', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(948, 944, 420, 'Ryan', 'Joyce', '0', '1298488538', '1298488538', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(949, 0, 421, 'Evan', 'Pierce', '86c914d9fa', '1298488538', '1298488538', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(947, 944, 420, 'Jason', 'Joyce', '0', '1298488538', '1298488538', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(946, 944, 420, 'Brandon', 'Joyce', '0', '1298488538', '1298488538', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(945, 944, 420, 'Mary', 'Joyce', '0', '1298488538', '1298488538', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(943, 0, 419, 'Hannah', 'Edlefsen', '26e7405715', '1298488538', '1298488538', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(944, 0, 420, 'Doug', 'Joyce', '3dc2fbfcf5', '1298488538', '1298488538', 5, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(942, 941, 418, 'Jacob', 'Kinsman', '0', '1298488538', '1298488538', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(941, 0, 418, 'Julie', 'Kinsman', 'c43bbcd785', '1298488538', '1298488538', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(940, 939, 417, 'Ingrid', 'Campbell', '0', '1298488538', '1298488538', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(939, 0, 417, 'Eric', 'Campbell', '4556d279b8', '1298488538', '1298488538', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(938, 936, 416, 'Baby', 'Bella', '0', '1298488538', '1298488538', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(937, 936, 416, 'Davie', 'Carranza', '0', '1298488538', '1298488538', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(936, 0, 416, 'Katie', 'Hardeman', 'e26ed32ae4', '1298488538', '1298488538', 3, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(935, 933, 415, 'Devin', 'Hill', '0', '1298488538', '1298519458', 0, 0, 1, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(933, 0, 415, 'Bud', 'Hill', 'e2e071194b', '1298488538', '1298519458', 3, 0, 1, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(934, 933, 415, 'Mary', 'Hill', '0', '1298488538', '1298519458', 0, 0, 1, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(932, 931, 414, 'Jeremy', 'Abbott', '0', '1298488538', '1298488538', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(931, 0, 414, 'Heather', 'Hoffman-Abbott', '253386b0b4', '1298488538', '1298488538', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(930, 0, 413, 'Rebecca', 'Voltin', '938cc8777d', '1298488538', '1298488538', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(929, 0, 412, 'Torrey', 'McConnell', 'fd84cfa958', '1298488538', '1298488538', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(928, 0, 411, 'Stephanie', 'Powers', '2bd44b06ee', '1298488538', '1298488538', 3, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(927, 926, 410, 'Kyle', 'Logsdon', '0', '1298488538', '1298488538', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(926, 0, 410, 'Crystal', 'Powell', '38c44856ea', '1298488538', '1298488538', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(925, 0, 409, 'Katie', 'McClure', '5af119c009', '1298488537', '1298488537', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(924, 921, 408, 'Robert', 'Gagermeier', '0', '1298488537', '1298488537', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(923, 921, 408, 'Lloyd', 'Gagermeier', '0', '1298488537', '1298488537', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(922, 921, 408, 'Michelle', 'Gagermeier', '0', '1298488537', '1298488537', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(921, 0, 408, 'Bob', 'Gagermeier', '9bd9a5267f', '1298488537', '1298488537', 4, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(920, 0, 407, 'Heather', 'Mauer', '79c319e320', '1298488537', '1298488537', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(919, 0, 406, 'Matt', 'Grahn', 'a8ae756cdf', '1298488537', '1298488537', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(918, 0, 405, 'Erin', 'Peeples', '9b02d17c9e', '1298488537', '1298488537', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(917, 916, 404, 'Johanna', 'Hoener', '0', '1298488537', '1298488537', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(916, 0, 404, 'Kylan', 'Hoener', 'c1d06e5475', '1298488537', '1298488537', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(915, 0, 403, 'Jay', 'Reynolds', 'b50eaa3352', '1298488537', '1298488537', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(914, 0, 402, 'Tim', 'ODonnell', '8ca8ff5f2c', '1298488537', '1298488537', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(913, 0, 401, 'Erik', 'Larsen', '976b3ac7b1', '1298488537', '1298488537', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(912, 911, 400, 'Ava', 'Segal', '0', '1298488537', '1298519574', 0, 0, 1, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(911, 0, 400, 'Chris', 'Joyce', 'c579b270e1', '1298488537', '1298519574', 2, 1, 1, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES(910, 909, 399, 'Baby', 'Hank', '0', '1298488537', '1298488537', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(909, 0, 399, 'Karen', 'Kralik', '496b3dff31', '1298488537', '1298488537', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(908, 0, 398, 'Annie', 'Tyner', '46fa3c981d', '1298488537', '1298488537', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(907, 906, 397, 'Owen', 'King', '0', '1298488537', '1298488537', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(906, 0, 397, 'Ashley', 'Black', 'ee4ad27acf', '1298488537', '1298488537', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(905, 904, 396, 'Nate', 'Albertson', '0', '1298488537', '1298519483', 0, 0, 1, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES(904, 0, 396, 'Becky', 'Hill', '3b6e79fe84', '1298488537', '1298519483', 2, 2, 1, 1, 0, 1);
INSERT INTO `cah_Guests` VALUES(903, 0, 395, 'Sandy', 'Horstman', 'ca51ebb790', '1298488537', '1298488537', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(902, 901, 394, 'Dylan', 'Mechek', '0', '1298488537', '1298488537', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(901, 0, 394, 'Larry', 'Mechek', 'ac881d3c71', '1298488537', '1298488537', 3, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(900, 0, 393, 'Lisa', 'Clarke', '899f5da209', '1298488537', '1298488537', 5, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(899, 898, 392, 'Toni', 'Ramey', '0', '1298488537', '1298488537', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(898, 0, 392, 'Ted', 'Ramey', '244a69df2c', '1298488537', '1298488537', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(897, 0, 391, 'Lola', 'Ramey', 'a0b4bb35fc', '1298488536', '1298488536', 1, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(896, 895, 390, 'Mark', 'Piazza', '0', '1298488536', '1298488536', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(895, 0, 390, 'Denise', 'Piazaa', 'c1f0673f49', '1298488536', '1298488536', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(894, 0, 389, 'Annabelle', 'Justice', '25f6423bc1', '1298488536', '1298488536', 1, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(893, 892, 388, 'Dottie', 'Graves', '0', '1298488536', '1298488536', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(892, 0, 388, 'Al', 'Graves', 'b2a6b8af08', '1298488536', '1298488536', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(891, 890, 387, 'Marissa', 'Eick', '0', '1298488536', '1298488536', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(890, 0, 387, 'Josh', 'Eick', '35075cf9e9', '1298488536', '1298488536', 4, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(889, 888, 386, 'Trish', 'Eick', '0', '1298488535', '1298488535', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(888, 0, 386, 'Jim', 'Eick', '72fb901e58', '1298488535', '1298488535', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(887, 0, 385, 'Glenn', 'Black', '3ef7ee1052', '1298488535', '1298488535', 1, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(886, 0, 384, 'Lillian', 'Black', '873717ada0', '1298488534', '1298490463', 1, 0, 1, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(885, 0, 383, 'Dennis', 'Black', 'aa83b18f9e', '1298488533', '1298488533', 1, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1024, 0, 422, 'Krista', 'Cavanaugh', '4133b48734', '1298488548', '1298488548', 4, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1025, 0, 422, 'Abbie', 'Lasota', 'e5f280a8c4', '1298488548', '1298488548', 5, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1026, 0, 422, 'Nancy', 'Williamson', '2ee1ac1ef1', '1298488548', '1298488548', 4, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1027, 0, 422, 'Cynthia', 'Fuglsby', 'da7603a9a8', '1298488548', '1298488548', 1, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1028, 0, 422, 'Dana', 'Kloefkorn', '65f78b18ba', '1298488548', '1298488548', 5, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(1029, 0, 422, 'Alisha', 'Proctor', '591f6bc4a4', '1298488548', '1298488548', 3, 0, 0, 0, 0, 1);

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1081 ;

--
-- Dumping data for table `cah_GuestToGuestType`
--

INSERT INTO `cah_GuestToGuestType` VALUES(899, 885, 110);
INSERT INTO `cah_GuestToGuestType` VALUES(900, 885, 111);
INSERT INTO `cah_GuestToGuestType` VALUES(901, 886, 110);
INSERT INTO `cah_GuestToGuestType` VALUES(902, 886, 112);
INSERT INTO `cah_GuestToGuestType` VALUES(903, 887, 110);
INSERT INTO `cah_GuestToGuestType` VALUES(904, 888, 110);
INSERT INTO `cah_GuestToGuestType` VALUES(905, 889, 110);
INSERT INTO `cah_GuestToGuestType` VALUES(906, 890, 110);
INSERT INTO `cah_GuestToGuestType` VALUES(907, 891, 110);
INSERT INTO `cah_GuestToGuestType` VALUES(908, 892, 110);
INSERT INTO `cah_GuestToGuestType` VALUES(909, 893, 110);
INSERT INTO `cah_GuestToGuestType` VALUES(910, 894, 110);
INSERT INTO `cah_GuestToGuestType` VALUES(911, 895, 110);
INSERT INTO `cah_GuestToGuestType` VALUES(912, 895, 113);
INSERT INTO `cah_GuestToGuestType` VALUES(913, 896, 110);
INSERT INTO `cah_GuestToGuestType` VALUES(914, 897, 110);
INSERT INTO `cah_GuestToGuestType` VALUES(915, 898, 110);
INSERT INTO `cah_GuestToGuestType` VALUES(916, 899, 110);
INSERT INTO `cah_GuestToGuestType` VALUES(917, 900, 110);
INSERT INTO `cah_GuestToGuestType` VALUES(918, 901, 110);
INSERT INTO `cah_GuestToGuestType` VALUES(919, 902, 110);
INSERT INTO `cah_GuestToGuestType` VALUES(920, 903, 110);
INSERT INTO `cah_GuestToGuestType` VALUES(921, 904, 114);
INSERT INTO `cah_GuestToGuestType` VALUES(922, 904, 115);
INSERT INTO `cah_GuestToGuestType` VALUES(923, 904, 116);
INSERT INTO `cah_GuestToGuestType` VALUES(924, 904, 117);
INSERT INTO `cah_GuestToGuestType` VALUES(925, 905, 114);
INSERT INTO `cah_GuestToGuestType` VALUES(926, 905, 118);
INSERT INTO `cah_GuestToGuestType` VALUES(927, 906, 114);
INSERT INTO `cah_GuestToGuestType` VALUES(928, 906, 116);
INSERT INTO `cah_GuestToGuestType` VALUES(929, 906, 115);
INSERT INTO `cah_GuestToGuestType` VALUES(930, 907, 119);
INSERT INTO `cah_GuestToGuestType` VALUES(931, 908, 114);
INSERT INTO `cah_GuestToGuestType` VALUES(932, 908, 116);
INSERT INTO `cah_GuestToGuestType` VALUES(933, 908, 115);
INSERT INTO `cah_GuestToGuestType` VALUES(934, 909, 114);
INSERT INTO `cah_GuestToGuestType` VALUES(935, 909, 116);
INSERT INTO `cah_GuestToGuestType` VALUES(936, 909, 115);
INSERT INTO `cah_GuestToGuestType` VALUES(937, 910, 114);
INSERT INTO `cah_GuestToGuestType` VALUES(938, 911, 114);
INSERT INTO `cah_GuestToGuestType` VALUES(939, 911, 118);
INSERT INTO `cah_GuestToGuestType` VALUES(940, 911, 120);
INSERT INTO `cah_GuestToGuestType` VALUES(941, 911, 121);
INSERT INTO `cah_GuestToGuestType` VALUES(942, 912, 114);
INSERT INTO `cah_GuestToGuestType` VALUES(943, 913, 114);
INSERT INTO `cah_GuestToGuestType` VALUES(944, 913, 118);
INSERT INTO `cah_GuestToGuestType` VALUES(945, 913, 120);
INSERT INTO `cah_GuestToGuestType` VALUES(946, 914, 114);
INSERT INTO `cah_GuestToGuestType` VALUES(947, 914, 118);
INSERT INTO `cah_GuestToGuestType` VALUES(948, 914, 120);
INSERT INTO `cah_GuestToGuestType` VALUES(949, 915, 114);
INSERT INTO `cah_GuestToGuestType` VALUES(950, 915, 118);
INSERT INTO `cah_GuestToGuestType` VALUES(951, 915, 120);
INSERT INTO `cah_GuestToGuestType` VALUES(952, 916, 114);
INSERT INTO `cah_GuestToGuestType` VALUES(953, 916, 116);
INSERT INTO `cah_GuestToGuestType` VALUES(954, 917, 114);
INSERT INTO `cah_GuestToGuestType` VALUES(955, 918, 116);
INSERT INTO `cah_GuestToGuestType` VALUES(956, 919, 114);
INSERT INTO `cah_GuestToGuestType` VALUES(957, 919, 118);
INSERT INTO `cah_GuestToGuestType` VALUES(958, 920, 116);
INSERT INTO `cah_GuestToGuestType` VALUES(959, 921, 114);
INSERT INTO `cah_GuestToGuestType` VALUES(960, 922, 114);
INSERT INTO `cah_GuestToGuestType` VALUES(961, 923, 114);
INSERT INTO `cah_GuestToGuestType` VALUES(962, 924, 114);
INSERT INTO `cah_GuestToGuestType` VALUES(963, 925, 114);
INSERT INTO `cah_GuestToGuestType` VALUES(964, 925, 116);
INSERT INTO `cah_GuestToGuestType` VALUES(965, 926, 114);
INSERT INTO `cah_GuestToGuestType` VALUES(966, 926, 116);
INSERT INTO `cah_GuestToGuestType` VALUES(967, 927, 114);
INSERT INTO `cah_GuestToGuestType` VALUES(968, 928, 116);
INSERT INTO `cah_GuestToGuestType` VALUES(969, 929, 114);
INSERT INTO `cah_GuestToGuestType` VALUES(970, 929, 116);
INSERT INTO `cah_GuestToGuestType` VALUES(971, 930, 114);
INSERT INTO `cah_GuestToGuestType` VALUES(972, 930, 118);
INSERT INTO `cah_GuestToGuestType` VALUES(973, 931, 116);
INSERT INTO `cah_GuestToGuestType` VALUES(974, 932, 116);
INSERT INTO `cah_GuestToGuestType` VALUES(975, 933, 114);
INSERT INTO `cah_GuestToGuestType` VALUES(976, 934, 114);
INSERT INTO `cah_GuestToGuestType` VALUES(977, 935, 114);
INSERT INTO `cah_GuestToGuestType` VALUES(978, 936, 114);
INSERT INTO `cah_GuestToGuestType` VALUES(979, 936, 118);
INSERT INTO `cah_GuestToGuestType` VALUES(980, 937, 114);
INSERT INTO `cah_GuestToGuestType` VALUES(981, 938, 114);
INSERT INTO `cah_GuestToGuestType` VALUES(982, 939, 118);
INSERT INTO `cah_GuestToGuestType` VALUES(983, 940, 114);
INSERT INTO `cah_GuestToGuestType` VALUES(984, 941, 114);
INSERT INTO `cah_GuestToGuestType` VALUES(985, 941, 116);
INSERT INTO `cah_GuestToGuestType` VALUES(986, 942, 114);
INSERT INTO `cah_GuestToGuestType` VALUES(987, 943, 114);
INSERT INTO `cah_GuestToGuestType` VALUES(988, 943, 116);
INSERT INTO `cah_GuestToGuestType` VALUES(989, 944, 118);
INSERT INTO `cah_GuestToGuestType` VALUES(990, 945, 118);
INSERT INTO `cah_GuestToGuestType` VALUES(991, 946, 118);
INSERT INTO `cah_GuestToGuestType` VALUES(992, 947, 118);
INSERT INTO `cah_GuestToGuestType` VALUES(993, 948, 118);
INSERT INTO `cah_GuestToGuestType` VALUES(994, 949, 118);
INSERT INTO `cah_GuestToGuestType` VALUES(995, 950, 118);
INSERT INTO `cah_GuestToGuestType` VALUES(996, 951, 118);
INSERT INTO `cah_GuestToGuestType` VALUES(997, 952, 118);
INSERT INTO `cah_GuestToGuestType` VALUES(998, 953, 118);
INSERT INTO `cah_GuestToGuestType` VALUES(999, 954, 116);
INSERT INTO `cah_GuestToGuestType` VALUES(1000, 955, 122);
INSERT INTO `cah_GuestToGuestType` VALUES(1001, 955, 123);
INSERT INTO `cah_GuestToGuestType` VALUES(1002, 956, 122);
INSERT INTO `cah_GuestToGuestType` VALUES(1003, 956, 124);
INSERT INTO `cah_GuestToGuestType` VALUES(1004, 957, 122);
INSERT INTO `cah_GuestToGuestType` VALUES(1005, 957, 120);
INSERT INTO `cah_GuestToGuestType` VALUES(1006, 958, 114);
INSERT INTO `cah_GuestToGuestType` VALUES(1007, 959, 122);
INSERT INTO `cah_GuestToGuestType` VALUES(1008, 959, 120);
INSERT INTO `cah_GuestToGuestType` VALUES(1009, 960, 114);
INSERT INTO `cah_GuestToGuestType` VALUES(1010, 961, 122);
INSERT INTO `cah_GuestToGuestType` VALUES(1011, 962, 114);
INSERT INTO `cah_GuestToGuestType` VALUES(1012, 963, 122);
INSERT INTO `cah_GuestToGuestType` VALUES(1013, 964, 122);
INSERT INTO `cah_GuestToGuestType` VALUES(1014, 965, 122);
INSERT INTO `cah_GuestToGuestType` VALUES(1015, 966, 122);
INSERT INTO `cah_GuestToGuestType` VALUES(1016, 967, 122);
INSERT INTO `cah_GuestToGuestType` VALUES(1017, 968, 122);
INSERT INTO `cah_GuestToGuestType` VALUES(1018, 969, 122);
INSERT INTO `cah_GuestToGuestType` VALUES(1019, 970, 122);
INSERT INTO `cah_GuestToGuestType` VALUES(1020, 971, 122);
INSERT INTO `cah_GuestToGuestType` VALUES(1021, 972, 122);
INSERT INTO `cah_GuestToGuestType` VALUES(1022, 973, 122);
INSERT INTO `cah_GuestToGuestType` VALUES(1023, 974, 122);
INSERT INTO `cah_GuestToGuestType` VALUES(1024, 975, 122);
INSERT INTO `cah_GuestToGuestType` VALUES(1025, 976, 122);
INSERT INTO `cah_GuestToGuestType` VALUES(1026, 977, 122);
INSERT INTO `cah_GuestToGuestType` VALUES(1027, 978, 122);
INSERT INTO `cah_GuestToGuestType` VALUES(1028, 979, 122);
INSERT INTO `cah_GuestToGuestType` VALUES(1029, 980, 122);
INSERT INTO `cah_GuestToGuestType` VALUES(1030, 981, 119);
INSERT INTO `cah_GuestToGuestType` VALUES(1031, 982, 122);
INSERT INTO `cah_GuestToGuestType` VALUES(1032, 983, 122);
INSERT INTO `cah_GuestToGuestType` VALUES(1033, 984, 122);
INSERT INTO `cah_GuestToGuestType` VALUES(1034, 985, 122);
INSERT INTO `cah_GuestToGuestType` VALUES(1035, 986, 122);
INSERT INTO `cah_GuestToGuestType` VALUES(1036, 987, 122);
INSERT INTO `cah_GuestToGuestType` VALUES(1037, 988, 122);
INSERT INTO `cah_GuestToGuestType` VALUES(1038, 989, 122);
INSERT INTO `cah_GuestToGuestType` VALUES(1039, 990, 122);
INSERT INTO `cah_GuestToGuestType` VALUES(1040, 991, 122);
INSERT INTO `cah_GuestToGuestType` VALUES(1041, 992, 122);
INSERT INTO `cah_GuestToGuestType` VALUES(1042, 993, 122);
INSERT INTO `cah_GuestToGuestType` VALUES(1043, 994, 122);
INSERT INTO `cah_GuestToGuestType` VALUES(1044, 995, 122);
INSERT INTO `cah_GuestToGuestType` VALUES(1045, 996, 122);
INSERT INTO `cah_GuestToGuestType` VALUES(1046, 997, 122);
INSERT INTO `cah_GuestToGuestType` VALUES(1047, 998, 122);
INSERT INTO `cah_GuestToGuestType` VALUES(1048, 999, 122);
INSERT INTO `cah_GuestToGuestType` VALUES(1049, 1000, 122);
INSERT INTO `cah_GuestToGuestType` VALUES(1050, 1001, 122);
INSERT INTO `cah_GuestToGuestType` VALUES(1051, 1002, 122);
INSERT INTO `cah_GuestToGuestType` VALUES(1052, 1003, 122);
INSERT INTO `cah_GuestToGuestType` VALUES(1053, 1003, 112);
INSERT INTO `cah_GuestToGuestType` VALUES(1054, 980, 112);
INSERT INTO `cah_GuestToGuestType` VALUES(1055, 1004, 122);
INSERT INTO `cah_GuestToGuestType` VALUES(1056, 1005, 122);
INSERT INTO `cah_GuestToGuestType` VALUES(1057, 1006, 122);
INSERT INTO `cah_GuestToGuestType` VALUES(1058, 1007, 122);
INSERT INTO `cah_GuestToGuestType` VALUES(1059, 1008, 122);
INSERT INTO `cah_GuestToGuestType` VALUES(1060, 1009, 122);
INSERT INTO `cah_GuestToGuestType` VALUES(1061, 1010, 122);
INSERT INTO `cah_GuestToGuestType` VALUES(1062, 1011, 122);
INSERT INTO `cah_GuestToGuestType` VALUES(1063, 1012, 122);
INSERT INTO `cah_GuestToGuestType` VALUES(1064, 1013, 122);
INSERT INTO `cah_GuestToGuestType` VALUES(1065, 1014, 122);
INSERT INTO `cah_GuestToGuestType` VALUES(1066, 1015, 125);
INSERT INTO `cah_GuestToGuestType` VALUES(1067, 1016, 125);
INSERT INTO `cah_GuestToGuestType` VALUES(1068, 1017, 125);
INSERT INTO `cah_GuestToGuestType` VALUES(1069, 1018, 125);
INSERT INTO `cah_GuestToGuestType` VALUES(1070, 1019, 125);
INSERT INTO `cah_GuestToGuestType` VALUES(1071, 1020, 125);
INSERT INTO `cah_GuestToGuestType` VALUES(1072, 1021, 125);
INSERT INTO `cah_GuestToGuestType` VALUES(1073, 1022, 125);
INSERT INTO `cah_GuestToGuestType` VALUES(1074, 1023, 125);
INSERT INTO `cah_GuestToGuestType` VALUES(1075, 1024, 126);
INSERT INTO `cah_GuestToGuestType` VALUES(1076, 1025, 126);
INSERT INTO `cah_GuestToGuestType` VALUES(1077, 1026, 126);
INSERT INTO `cah_GuestToGuestType` VALUES(1078, 1027, 126);
INSERT INTO `cah_GuestToGuestType` VALUES(1079, 1028, 126);
INSERT INTO `cah_GuestToGuestType` VALUES(1080, 1029, 126);

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=127 ;

--
-- Dumping data for table `cah_GuestTypes`
--

INSERT INTO `cah_GuestTypes` VALUES(0, NULL, NULL, 0);
INSERT INTO `cah_GuestTypes` VALUES(126, 'Bride Coworker', 0, 1);
INSERT INTO `cah_GuestTypes` VALUES(125, 'Groom Coworker', 0, 1);
INSERT INTO `cah_GuestTypes` VALUES(124, 'Mother of the Groom', 1, 1);
INSERT INTO `cah_GuestTypes` VALUES(123, 'Father of the Groom', 1, 1);
INSERT INTO `cah_GuestTypes` VALUES(122, 'Groom Family', 0, 1);
INSERT INTO `cah_GuestTypes` VALUES(121, 'Best Man', 1, 1);
INSERT INTO `cah_GuestTypes` VALUES(120, 'Groomsman', 1, 1);
INSERT INTO `cah_GuestTypes` VALUES(119, 'Friend of Friend', 0, 1);
INSERT INTO `cah_GuestTypes` VALUES(118, 'Groom Friend', 0, 1);
INSERT INTO `cah_GuestTypes` VALUES(117, 'Maid of Honor', 1, 1);
INSERT INTO `cah_GuestTypes` VALUES(116, 'Bride Friend', 0, 1);
INSERT INTO `cah_GuestTypes` VALUES(115, 'Bridesmaid', 1, 1);
INSERT INTO `cah_GuestTypes` VALUES(114, 'Mutual Friend', 0, 1);
INSERT INTO `cah_GuestTypes` VALUES(113, 'Mother of the Bride', 1, 1);
INSERT INTO `cah_GuestTypes` VALUES(112, 'Guest of Honor', 1, 1);
INSERT INTO `cah_GuestTypes` VALUES(111, 'Father of the Bride', 1, 1);
INSERT INTO `cah_GuestTypes` VALUES(110, 'Bride Family', 0, 1);

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=173 ;

--
-- Dumping data for table `common_Files`
--

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `common_Users`
--

INSERT INTO `common_Users` VALUES(0, 0, 0, '', '', '', NULL, NULL, NULL, 0, 0);
INSERT INTO `common_Users` VALUES(2, 172, 3, 'admin', 'colehafner@gmail.com', '915736809103c55faec9a0010bc518fb68e7e3a7a402b984954420cf14f07a57b5437dec1d6d8a91d4b539909d89f695216210fbba445d358860e5b61a3f20868594234a', 'Cole', 'Hafner', 'Cole hafner is the creator of this site. ', 0, 1);
INSERT INTO `common_Users` VALUES(32, 171, 3, 'NewUser', 'newUserTest@test.com', '82483155df226d800bbbf326beafdebb212f01475b8abc19bd1ed0dad76e409e698e53ef4790386e943b4665e1c19b834a80314cdc02179fffe1551abc407623d6205f39', 'New', 'User', NULL, 0, 1);

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
INSERT INTO `common_UserTypes` VALUES(2, 'Super Administrator', 1);
INSERT INTO `common_UserTypes` VALUES(3, 'Wedding Guest', 1);

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
INSERT INTO `common_Views` VALUES(51, 'Gallery', 1, 0, 1, 'Gallery', 3, NULL, 0, NULL);
INSERT INTO `common_Views` VALUES(53, 'Info', 1, 0, 1, 'Wedding Info', 5, NULL, 0, NULL);
