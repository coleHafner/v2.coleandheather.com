-- phpMyAdmin SQL Dump
-- version 3.2.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 21, 2011 at 07:23 PM
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=320 ;

--
-- Dumping data for table `cah_Addresses`
--

INSERT INTO `cah_Addresses` VALUES(319, '1452 Mill Pond Rd.', 'Ashland', 'OR', '97520', 1);
INSERT INTO `cah_Addresses` VALUES(0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `cah_Addresses` VALUES(318, '32265 N Fork Rd.', 'Lyons', 'OR', '97358', 1);
INSERT INTO `cah_Addresses` VALUES(317, 'PO Box 411', 'Sublimity', 'OR', '97385', 1);
INSERT INTO `cah_Addresses` VALUES(316, 'PO Box 121', 'Lyons', 'OR', '97358', 1);
INSERT INTO `cah_Addresses` VALUES(314, 'Elliot Residence #217 390 SE Church', 'Sublimity', 'OR', '97385', 1);
INSERT INTO `cah_Addresses` VALUES(315, 'PO Box 53', 'Lyons', 'OR', '97358', 1);
INSERT INTO `cah_Addresses` VALUES(313, 'One Towers Ln. Box 2118 #A-1', 'Mt. Angel', 'OR', '97362', 1);
INSERT INTO `cah_Addresses` VALUES(312, '1154 Dawn Dr.', 'Stayton', 'OR', '97383', 1);
INSERT INTO `cah_Addresses` VALUES(311, '1307 Heritage Loop', 'Stayton', 'OR', '97383', 1);
INSERT INTO `cah_Addresses` VALUES(310, '1276 82nd SE', 'Salem', 'OR', '97317', 1);
INSERT INTO `cah_Addresses` VALUES(309, 'PO Box 727', 'Mill City', 'OR', '97360', 1);
INSERT INTO `cah_Addresses` VALUES(308, 'PO Box 723', 'Sublimity', 'OR', '97385', 1);
INSERT INTO `cah_Addresses` VALUES(306, '5715 Anderson Rd. SE', 'Aumsville', 'OR', '97325', 1);
INSERT INTO `cah_Addresses` VALUES(307, '40931 Rodgers Mtn. Loop', 'Scio', 'OR', '97374', 1);
INSERT INTO `cah_Addresses` VALUES(305, '4609 Toutle Ct. SE', 'Olympia', 'WA', '98501', 1);
INSERT INTO `cah_Addresses` VALUES(304, '1905 Madison Dr.', 'Lavergne', 'TN', '37086', 1);
INSERT INTO `cah_Addresses` VALUES(303, '225 Walden St. #3F', 'Cambridge', 'MA', '02140', 1);
INSERT INTO `cah_Addresses` VALUES(302, '7732 SE Ramona St.', 'Portland', 'OR', '97206', 1);
INSERT INTO `cah_Addresses` VALUES(301, '12785 Parrish Gap Rd. SE', 'Turner', 'OR', '97392', 1);
INSERT INTO `cah_Addresses` VALUES(300, '2642 NW Ginseng Pl.', 'Corvallis', 'OR', '97330', 1);
INSERT INTO `cah_Addresses` VALUES(299, 'PO Box 698', 'Lyons', 'OR', '97358', 1);
INSERT INTO `cah_Addresses` VALUES(298, '202 Jefferson St. #2', 'Bend', 'OR', '97701', 1);
INSERT INTO `cah_Addresses` VALUES(297, 'PO Box 177', 'Selma', 'OR', '97538', 1);
INSERT INTO `cah_Addresses` VALUES(296, '123 Main St.', 'Stayton', 'OR', '97383', 1);
INSERT INTO `cah_Addresses` VALUES(294, '378 Church St.', 'Sublimity', 'OR', '97385', 1);
INSERT INTO `cah_Addresses` VALUES(295, 'PO Box 562', 'Stayton', 'OR', '97383', 1);
INSERT INTO `cah_Addresses` VALUES(293, '1244 Calypso Ct.', 'Ashland', 'OR', '97520', 1);
INSERT INTO `cah_Addresses` VALUES(292, '19395 E. Evans Creek Rd.', 'White City', 'OR', '97305', 1);
INSERT INTO `cah_Addresses` VALUES(291, '168 W. 300 St.', 'Herber City', 'UT', '84032', 1);
INSERT INTO `cah_Addresses` VALUES(290, '496 Starflower Ln.', 'Ashland', 'OR', '97520', 1);
INSERT INTO `cah_Addresses` VALUES(288, '12744 Brick Rd.', 'Turner', 'OR', '97392', 1);
INSERT INTO `cah_Addresses` VALUES(289, '3611 NW Upas Ave.', 'Redmond', 'OR', '97756', 1);
INSERT INTO `cah_Addresses` VALUES(287, '200 E Grant St.', 'Enterprise', 'OR', '97828', 1);
INSERT INTO `cah_Addresses` VALUES(286, '1102 N. 13th St.', 'Boise', 'ID', '83702', 1);
INSERT INTO `cah_Addresses` VALUES(285, '6810 Jerdon Ct. N', 'Keizer', 'OR', '97303', 1);
INSERT INTO `cah_Addresses` VALUES(284, '108 5th St. #8', 'Ashland', 'OR', '97520', 1);
INSERT INTO `cah_Addresses` VALUES(283, '442 W. Berdine St.', 'Roseburg', 'OR', '97471', 1);
INSERT INTO `cah_Addresses` VALUES(281, 'PO Box 1005', 'Aumsville', 'OR', '97325', 1);
INSERT INTO `cah_Addresses` VALUES(282, '3514 SW Reindeer Ave.', 'Redmond', 'OR', '97756', 1);
INSERT INTO `cah_Addresses` VALUES(278, '8029 SE 24th', 'Portland', 'OR', '97202', 1);
INSERT INTO `cah_Addresses` VALUES(279, '1170 Barnes Ave. #221', 'Salem', 'OR', '97306', 1);
INSERT INTO `cah_Addresses` VALUES(280, '1153 Stanford Ave.', 'Palo Alto', 'CA', '94306', 1);
INSERT INTO `cah_Addresses` VALUES(277, '3403 Marigold Dr.', 'Prescott', 'AZ', '97385', 1);
INSERT INTO `cah_Addresses` VALUES(276, '701 Larkspur Ct.', 'Sublimity', 'OR', '97385', 1);
INSERT INTO `cah_Addresses` VALUES(275, '511.5 S. Meldrum St.', 'Fort Collins', 'CO', '80521', 1);
INSERT INTO `cah_Addresses` VALUES(274, '5405 W. Arlington', 'Yakima', 'WA', '98908', 1);
INSERT INTO `cah_Addresses` VALUES(272, '2863 Camp Baker Rd.', 'Medford', 'OR', '97501', 1);
INSERT INTO `cah_Addresses` VALUES(273, '6590 Griffin Creek Rd', 'Medford', 'OR', '97501', 1);
INSERT INTO `cah_Addresses` VALUES(271, '400 N. Colorado St. #203B', 'Gunnison', 'CO', '81230', 1);
INSERT INTO `cah_Addresses` VALUES(270, '2459 NW 22nd St.', 'Redmond', 'OR', '97756', 1);
INSERT INTO `cah_Addresses` VALUES(269, '1821 Taylor Circle', 'Reedsburg', 'WI', '53959', 1);
INSERT INTO `cah_Addresses` VALUES(268, '175 High St.', 'Lee', 'MA', '01238', 1);
INSERT INTO `cah_Addresses` VALUES(266, '7513 Mardean Ct.', 'Las Vegas', 'NV', '89131', 1);
INSERT INTO `cah_Addresses` VALUES(267, '4920 Whisting Acres', 'Las Vegas', 'NV', '89131', 1);
INSERT INTO `cah_Addresses` VALUES(265, '230 N. McDow St.', 'Susanville', 'CA', '96130', 1);
INSERT INTO `cah_Addresses` VALUES(264, '3570 Lost Hills Dr.', 'Las Vegas', 'NV', '89122', 1);
INSERT INTO `cah_Addresses` VALUES(263, '3688 Cavender Creek Rd.', 'Danlonega', 'GA', '30533', 1);
INSERT INTO `cah_Addresses` VALUES(262, '1365 Burtschell Place', 'Crescent City', 'CA', '95531', 1);
INSERT INTO `cah_Addresses` VALUES(261, '2472 W. Silverstreak Way', 'Queen Creek', 'AZ', '85242', 1);
INSERT INTO `cah_Addresses` VALUES(260, '53507 N. Thomas Rd.', 'Benton City', 'WA', '99320', 1);
INSERT INTO `cah_Addresses` VALUES(259, '4826 Jean St. SE', 'Salem', 'OR', '97305', 1);
INSERT INTO `cah_Addresses` VALUES(258, '4848 North Start Ct.', 'Salem', 'OR', '97305', 1);
INSERT INTO `cah_Addresses` VALUES(257, '3254 Ridgeway Dr.', 'Turner', 'OR', '97392', 1);

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=739 ;

--
-- Dumping data for table `cah_Guests`
--

INSERT INTO `cah_Guests` VALUES(0, 0, 0, NULL, NULL, NULL, '', '', NULL, NULL, 0, 0, 0, 0);
INSERT INTO `cah_Guests` VALUES(727, 0, 296, 'Nancy', 'Williamson', '5b9befbc21', '1298244452', '1298244452', 4, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(728, 0, 296, 'Cynthia', 'Fuglsby', 'c83c9875b8', '1298244452', '1298244452', 1, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(729, 0, 296, 'Dana', 'Kloefkorn', 'fa46748187', '1298244452', '1298244452', 5, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(730, 0, 296, 'Alisha', 'Proctor', 'd812cdab79', '1298244452', '1298244452', 3, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(725, 0, 296, 'Krista', 'Cavanaugh', 'a1a94f3f2c', '1298244452', '1298337590', 4, 0, 1, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(726, 0, 296, 'Abbie', 'Lasota', '1e68710c2e', '1298244452', '1298244452', 5, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(724, 0, 296, 'Chris', 'Ostmo', '8f4ae11e32', '1298244452', '1298244452', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(723, 0, 296, 'Galen', 'Wright', 'd40c04a75f', '1298244452', '1298244452', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(722, 0, 296, 'Prateek', 'Sharma', '8385194c83', '1298244452', '1298244452', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(721, 719, 319, 'Emma', 'Robison', '0', '1298244452', '1298244452', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(720, 719, 319, 'Christine', 'Robison', '0', '1298244452', '1298244452', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(719, 0, 319, 'Tony', 'Robison', '892ae50d98', '1298244452', '1298244452', 3, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(718, 0, 296, 'Nate', 'Biondi', 'bd125f5e15', '1298244452', '1298244452', 5, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(717, 0, 296, 'Bob', 'Scott', 'f59a771d26', '1298244452', '1298244452', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(716, 0, 296, 'Tim', 'Arthur', 'fb54e2284a', '1298244452', '1298244452', 6, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(715, 712, 318, 'Andrew', 'Vandehey', '0', '1298244452', '1298244452', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(714, 712, 318, 'Jill', 'Vandehey', '0', '1298244452', '1298244452', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(713, 712, 318, 'Roger', 'Vandehey', '0', '1298244452', '1298244452', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(712, 0, 318, 'Shelly', 'Vandehey', 'dd787f33aa', '1298244452', '1298244452', 4, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(711, 708, 317, 'Piper', 'Freres', '0', '1298244452', '1298244452', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(710, 708, 317, 'Sam', 'Freres', '0', '1298244452', '1298244452', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(709, 708, 317, 'Rich', 'Freres', '0', '1298244452', '1298244452', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(708, 0, 317, 'Brandy', 'Freres', '1638260b06', '1298244452', '1298244452', 4, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(704, 0, 313, 'Don', 'Bender', '342c9893f8', '1298244452', '1298244452', 1, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(705, 0, 315, 'Dan', 'Hafner', '4c2823914c', '1298244452', '1298244452', 3, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(706, 0, 316, 'Sue', 'Sutton', '467671e46a', '1298244452', '1298244452', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(707, 706, 316, 'Leonard', 'Sutton', '0', '1298244452', '1298244452', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(703, 0, 312, 'Steve', 'Bender', 'a81e58286b', '1298244451', '1298244451', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(702, 699, 311, 'Mikel', 'Becktold', '0', '1298244451', '1298244451', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(701, 699, 311, 'Katelyn', 'Becktold', '0', '1298244451', '1298244451', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(700, 699, 311, 'Gregg', 'Unknown', '0', '1298244451', '1298244451', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(697, 695, 310, 'Donica', 'Bender', '0', '1298244450', '1298244450', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(698, 0, 296, 'Brianna', 'Anderson', '7c28fc687d', '1298244450', '1298244450', 3, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(699, 0, 311, 'Melanie', 'Hafner', 'cd7feacef1', '1298244451', '1298244451', 4, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(696, 695, 310, 'Pam', 'Bender', '0', '1298244450', '1298244450', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(695, 0, 310, 'Bob', 'Bender', '89fce43d31', '1298244450', '1298244450', 4, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(694, 0, 309, 'Angie', 'Connor', '9b727d7d25', '1298244450', '1298244450', 4, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(693, 691, 296, 'JC', 'Hafner', '0', '1298244450', '1298244450', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(689, 687, 308, 'Carrie', 'Hafner', '0', '1298244449', '1298244449', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(690, 687, 308, 'Jill', 'Hafner', '0', '1298244449', '1298244449', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(691, 0, 296, 'Johnny', 'Hafner', '94e0da6e87', '1298244450', '1298244450', 4, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(692, 691, 296, 'Tricia', 'Hafner', '0', '1298244450', '1298244450', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(686, 683, 307, 'Charlie', 'Siegmund', '0', '1298244448', '1298244448', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(687, 0, 308, 'John', 'Hafner', '75ade69b6b', '1298244449', '1298244449', 5, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(688, 687, 308, 'Debbie', 'Hafner', '0', '1298244449', '1298244449', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(684, 683, 307, 'Alan', 'Siegmund', '0', '1298244448', '1298244448', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(685, 683, 307, 'Henry', 'Siegmund', '0', '1298244448', '1298244448', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(681, 0, 296, 'Walt', 'Hafner', 'c12bde2b83', '1298244448', '1298244448', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(682, 681, 296, 'Amanda', 'Newkirk', '0', '1298244448', '1298244448', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(683, 0, 307, 'Mandy', 'Siegmund', '308255970c', '1298244448', '1298244448', 4, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(680, 678, 306, 'Gus', 'Hafner', '0', '1298244447', '1298244447', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(678, 0, 306, 'Ted', 'Hafner', '9e11521b55', '1298244447', '1298244447', 3, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(679, 678, 306, 'Margaret', 'Hafner', '0', '1298244447', '1298244447', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(675, 674, 305, 'Jack', 'Vanderbeek', '0', '1298244447', '1298244447', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(676, 674, 305, 'Ben', 'Vanderbeek', '0', '1298244447', '1298244447', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(677, 674, 305, 'Riley', 'Vanderbeek', '0', '1298244447', '1298244447', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(672, 0, 304, 'Sara', 'Bender', '7be68be9c0', '1298244447', '1298244447', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(673, 672, 304, 'Andrea', 'Bender', '0', '1298244447', '1298244447', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(674, 0, 305, 'Suzy', 'Vanderbeek', '36be237d3a', '1298244447', '1298244447', 4, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(671, 0, 303, 'Chris', 'Newkirk', '832a701376', '1298244446', '1298244446', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(667, 664, 301, 'Justine', 'Bender', '0', '1298244445', '1298244445', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(668, 664, 301, 'Mandy', 'Bender', '0', '1298244445', '1298244445', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(669, 664, 301, 'Kimmy', 'Bender', '0', '1298244445', '1298244445', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(670, 0, 302, 'Mary Kay', 'Bender', 'be571b4be5', '1298244446', '1298244446', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(666, 664, 301, 'Katie', 'Bender', '0', '1298244445', '1298244445', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(665, 664, 301, 'Patty', 'Bender', '0', '1298244445', '1298244445', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(664, 0, 301, 'Vince', 'Bender', 'afacd79dd2', '1298244445', '1298244445', 6, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(661, 660, 299, 'Amanda', 'Krafcik', '0', '1298244444', '1298244444', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(662, 0, 300, 'TJ', 'Hafner', 'a124498d5e', '1298244445', '1298244445', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(663, 662, 300, 'Jayme', 'Felice', '0', '1298244445', '1298244445', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(659, 658, 299, 'Prescilla', 'Celino', '0', '1298244443', '1298244443', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(660, 0, 299, 'Jack', 'Hafner', 'e98125e950', '1298244444', '1298244444', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(655, 0, 298, 'Jenna', 'Jacquard', 'bb01db29c7', '1298244442', '1298244442', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(656, 0, 299, 'Jerry', 'Hafner', '2350ae3020', '1298244442', '1298244442', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(657, 656, 299, 'Christine', 'Hafner', '0', '1298244442', '1298244442', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(658, 0, 299, 'Jed', 'Hafner', '036cf20fbc', '1298244443', '1298244443', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(654, 652, 297, 'Baby', 'Forrest', '0', '1298244442', '1298244442', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(653, 652, 297, 'Dan', 'Unknown', '0', '1298244442', '1298244442', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(652, 0, 297, 'Michelle', 'Sidell', '6882a5091f', '1298244442', '1298244442', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(651, 0, 296, 'Caleb', 'Heuburger', 'bd9524344e', '1298244442', '1298244442', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(650, 0, 295, 'Evan', 'Pierce', '9eace7fa3f', '1298244442', '1298244442', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(649, 645, 294, 'Ryan', 'Joyce', '0', '1298244442', '1298244442', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(648, 645, 294, 'Jason', 'Joyce', '0', '1298244442', '1298244442', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(647, 645, 294, 'Brandon', 'Joyce', '0', '1298244442', '1298244442', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(646, 645, 294, 'Mary', 'Joyce', '0', '1298244442', '1298244442', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(644, 0, 293, 'Hannah', 'Edlefsen', '104d7123c2', '1298244442', '1298244442', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(645, 0, 294, 'Doug', 'Joyce', '485408cf35', '1298244442', '1298244442', 5, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(643, 642, 292, 'Jacob', 'Kinsman', '0', '1298244442', '1298244442', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(642, 0, 292, 'Julie', 'Kinsman', '9c40c89e15', '1298244442', '1298244442', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(641, 640, 291, 'Ingrid', 'Campbell', '0', '1298244442', '1298244442', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(640, 0, 291, 'Eric', 'Campbell', '83bcaf7d74', '1298244442', '1298244442', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(639, 637, 290, 'Baby', 'Bella', '0', '1298244442', '1298244442', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(638, 637, 290, 'Davie', 'Carranza', '0', '1298244442', '1298244442', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(637, 0, 290, 'Katie', 'Hardeman', '2bfc738043', '1298244442', '1298244442', 3, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(636, 634, 289, 'Devin', 'Hill', '0', '1298244442', '1298244442', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(635, 634, 289, 'Mary', 'Hill', '0', '1298244442', '1298244442', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(634, 0, 289, 'Bud', 'Hill', 'd0a3e5353c', '1298244442', '1298244442', 3, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(633, 632, 288, 'Jeremy', 'Abbott', '0', '1298244442', '1298244442', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(632, 0, 288, 'Heather', 'Hoffman-Abbott', 'e443c1e23e', '1298244442', '1298244442', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(630, 0, 286, 'Torrey', 'McConnell', '517fbecdc5', '1298244442', '1298244442', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(631, 0, 287, 'Rebecca', 'Voltin', '1a6c374f99', '1298244442', '1298244442', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(628, 627, 284, 'Kyle', 'Logsdon', '0', '1298244442', '1298244442', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(629, 0, 285, 'Stephanie', 'Powers', '6bf47f81f6', '1298244442', '1298244442', 3, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(626, 0, 283, 'Katie', 'McClure', '595d44627e', '1298244441', '1298244441', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(627, 0, 284, 'Crystal', 'Powell', '98b478c969', '1298244442', '1298244442', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(625, 622, 282, 'Robert', 'Gagermeier', '0', '1298244441', '1298244441', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(624, 622, 282, 'Lloyd', 'Gagermeier', '0', '1298244441', '1298244441', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(623, 622, 282, 'Michelle', 'Gagermeier', '0', '1298244441', '1298244441', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(622, 0, 282, 'Bob', 'Gagermeier', '65761b7bea', '1298244441', '1298244441', 4, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(621, 0, 281, 'Heather', 'Mauer', '490378fdc6', '1298244441', '1298244441', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(620, 0, 280, 'Matt', 'Grahn', '32ea923410', '1298244441', '1298244441', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(619, 0, 279, 'Erin', 'Peeples', 'afa9c0e940', '1298244441', '1298244441', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(618, 617, 278, 'Johanna', 'Hoener', '0', '1298244441', '1298244441', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(617, 0, 278, 'Kylan', 'Hoener', 'ff69408986', '1298244441', '1298244441', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(614, 0, 275, 'Erik', 'Larsen', '1ab486ff45', '1298244441', '1298244441', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(615, 0, 276, 'Tim', 'ODonnell', '13b814e5a0', '1298244441', '1298244441', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(616, 0, 277, 'Jay', 'Reynolds', '7974073067', '1298244441', '1298244441', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(613, 612, 274, 'Ava', 'Segal', '0', '1298244441', '1298244441', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(612, 0, 274, 'Chris', 'Joyce', 'ed5c5d6468', '1298244441', '1298244441', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(609, 0, 272, 'Annie', 'Tyner', '7dd2d7a854', '1298244441', '1298244441', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(610, 0, 273, 'Karen', 'Kralik', 'dd108fb809', '1298244441', '1298244441', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(611, 610, 273, 'Baby', 'Hank', '0', '1298244441', '1298244441', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(607, 0, 271, 'Ashley', 'Black', '6dd3099881', '1298244441', '1298244441', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(608, 607, 271, 'Owen', 'King', '0', '1298244441', '1298244441', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(606, 605, 270, 'Nate', 'Albertson', '0', '1298244441', '1298244441', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(605, 0, 270, 'Becky', 'Hill', '3ed62690cf', '1298244441', '1298244441', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(604, 0, 269, 'Sandy', 'Horstman', '1df2e4831e', '1298244441', '1298244441', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(603, 602, 268, 'Dylan', 'Mechek', '0', '1298244441', '1298244441', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(602, 0, 268, 'Larry', 'Mechek', '1c5973c3dc', '1298244441', '1298244441', 3, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(601, 0, 267, 'Lisa', 'Clarke', '5e822d7d94', '1298244441', '1298244441', 5, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(600, 599, 266, 'Toni', 'Ramey', '0', '1298244441', '1298244441', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(599, 0, 266, 'Ted', 'Ramey', '0f066f0272', '1298244441', '1298244441', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(598, 0, 265, 'Lola', 'Ramey', '69f4bbafa1', '1298244440', '1298244440', 1, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(597, 596, 264, 'Mark', 'Piazza', '0', '1298244440', '1298244440', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(596, 0, 264, 'Denise', 'Piazaa', 'c2605e1ab8', '1298244440', '1298244440', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(595, 0, 263, 'Annabelle', 'Justice', '09bf9be236', '1298244440', '1298244440', 1, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(594, 593, 262, 'Dottie', 'Graves', '0', '1298244440', '1298244440', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(593, 0, 262, 'Al', 'Graves', '932f79900f', '1298244440', '1298244440', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(592, 591, 261, 'Marissa', 'Eick', '0', '1298244440', '1298244440', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(591, 0, 261, 'Josh', 'Eick', 'e376e2f6a8', '1298244440', '1298244440', 4, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(590, 589, 260, 'Trish', 'Eick', '0', '1298244439', '1298244439', 0, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(589, 0, 260, 'Jim', 'Eick', 'b79bbf294e', '1298244439', '1298244439', 2, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(588, 0, 259, 'Glenn', 'Black', '0a95f00989', '1298244439', '1298244439', 1, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(587, 0, 258, 'Lillian', 'Black', '790370efbb', '1298244438', '1298244438', 1, 0, 0, 0, 0, 1);
INSERT INTO `cah_Guests` VALUES(586, 0, 257, 'Dennis', 'Black', '17a59743a9', '1298244437', '1298244437', 1, 0, 0, 0, 0, 1);

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=717 ;

--
-- Dumping data for table `cah_GuestToGuestType`
--

INSERT INTO `cah_GuestToGuestType` VALUES(538, 586, 77);
INSERT INTO `cah_GuestToGuestType` VALUES(539, 586, 78);
INSERT INTO `cah_GuestToGuestType` VALUES(540, 587, 77);
INSERT INTO `cah_GuestToGuestType` VALUES(541, 588, 77);
INSERT INTO `cah_GuestToGuestType` VALUES(542, 589, 77);
INSERT INTO `cah_GuestToGuestType` VALUES(543, 590, 77);
INSERT INTO `cah_GuestToGuestType` VALUES(544, 591, 77);
INSERT INTO `cah_GuestToGuestType` VALUES(545, 592, 77);
INSERT INTO `cah_GuestToGuestType` VALUES(546, 593, 77);
INSERT INTO `cah_GuestToGuestType` VALUES(547, 594, 77);
INSERT INTO `cah_GuestToGuestType` VALUES(548, 595, 77);
INSERT INTO `cah_GuestToGuestType` VALUES(549, 596, 77);
INSERT INTO `cah_GuestToGuestType` VALUES(550, 596, 79);
INSERT INTO `cah_GuestToGuestType` VALUES(551, 597, 77);
INSERT INTO `cah_GuestToGuestType` VALUES(552, 598, 77);
INSERT INTO `cah_GuestToGuestType` VALUES(553, 599, 77);
INSERT INTO `cah_GuestToGuestType` VALUES(554, 600, 77);
INSERT INTO `cah_GuestToGuestType` VALUES(555, 601, 77);
INSERT INTO `cah_GuestToGuestType` VALUES(556, 602, 77);
INSERT INTO `cah_GuestToGuestType` VALUES(557, 603, 77);
INSERT INTO `cah_GuestToGuestType` VALUES(558, 604, 77);
INSERT INTO `cah_GuestToGuestType` VALUES(559, 605, 80);
INSERT INTO `cah_GuestToGuestType` VALUES(560, 605, 81);
INSERT INTO `cah_GuestToGuestType` VALUES(561, 605, 82);
INSERT INTO `cah_GuestToGuestType` VALUES(562, 605, 83);
INSERT INTO `cah_GuestToGuestType` VALUES(563, 606, 80);
INSERT INTO `cah_GuestToGuestType` VALUES(564, 606, 84);
INSERT INTO `cah_GuestToGuestType` VALUES(565, 607, 80);
INSERT INTO `cah_GuestToGuestType` VALUES(566, 607, 82);
INSERT INTO `cah_GuestToGuestType` VALUES(567, 607, 81);
INSERT INTO `cah_GuestToGuestType` VALUES(568, 608, 85);
INSERT INTO `cah_GuestToGuestType` VALUES(569, 609, 80);
INSERT INTO `cah_GuestToGuestType` VALUES(570, 609, 82);
INSERT INTO `cah_GuestToGuestType` VALUES(571, 609, 81);
INSERT INTO `cah_GuestToGuestType` VALUES(572, 610, 80);
INSERT INTO `cah_GuestToGuestType` VALUES(573, 610, 82);
INSERT INTO `cah_GuestToGuestType` VALUES(574, 610, 81);
INSERT INTO `cah_GuestToGuestType` VALUES(575, 611, 80);
INSERT INTO `cah_GuestToGuestType` VALUES(576, 612, 80);
INSERT INTO `cah_GuestToGuestType` VALUES(577, 612, 84);
INSERT INTO `cah_GuestToGuestType` VALUES(578, 612, 86);
INSERT INTO `cah_GuestToGuestType` VALUES(579, 612, 87);
INSERT INTO `cah_GuestToGuestType` VALUES(580, 613, 80);
INSERT INTO `cah_GuestToGuestType` VALUES(581, 614, 80);
INSERT INTO `cah_GuestToGuestType` VALUES(582, 614, 84);
INSERT INTO `cah_GuestToGuestType` VALUES(583, 614, 86);
INSERT INTO `cah_GuestToGuestType` VALUES(584, 615, 80);
INSERT INTO `cah_GuestToGuestType` VALUES(585, 615, 84);
INSERT INTO `cah_GuestToGuestType` VALUES(586, 615, 86);
INSERT INTO `cah_GuestToGuestType` VALUES(587, 616, 80);
INSERT INTO `cah_GuestToGuestType` VALUES(588, 616, 84);
INSERT INTO `cah_GuestToGuestType` VALUES(589, 616, 86);
INSERT INTO `cah_GuestToGuestType` VALUES(590, 617, 80);
INSERT INTO `cah_GuestToGuestType` VALUES(591, 617, 82);
INSERT INTO `cah_GuestToGuestType` VALUES(592, 618, 80);
INSERT INTO `cah_GuestToGuestType` VALUES(593, 619, 82);
INSERT INTO `cah_GuestToGuestType` VALUES(594, 620, 80);
INSERT INTO `cah_GuestToGuestType` VALUES(595, 620, 84);
INSERT INTO `cah_GuestToGuestType` VALUES(596, 621, 82);
INSERT INTO `cah_GuestToGuestType` VALUES(597, 622, 80);
INSERT INTO `cah_GuestToGuestType` VALUES(598, 623, 80);
INSERT INTO `cah_GuestToGuestType` VALUES(599, 624, 80);
INSERT INTO `cah_GuestToGuestType` VALUES(600, 625, 80);
INSERT INTO `cah_GuestToGuestType` VALUES(601, 626, 80);
INSERT INTO `cah_GuestToGuestType` VALUES(602, 626, 82);
INSERT INTO `cah_GuestToGuestType` VALUES(603, 627, 80);
INSERT INTO `cah_GuestToGuestType` VALUES(604, 627, 82);
INSERT INTO `cah_GuestToGuestType` VALUES(605, 628, 80);
INSERT INTO `cah_GuestToGuestType` VALUES(606, 629, 82);
INSERT INTO `cah_GuestToGuestType` VALUES(607, 630, 80);
INSERT INTO `cah_GuestToGuestType` VALUES(608, 630, 82);
INSERT INTO `cah_GuestToGuestType` VALUES(609, 631, 80);
INSERT INTO `cah_GuestToGuestType` VALUES(610, 631, 84);
INSERT INTO `cah_GuestToGuestType` VALUES(611, 632, 82);
INSERT INTO `cah_GuestToGuestType` VALUES(612, 633, 82);
INSERT INTO `cah_GuestToGuestType` VALUES(613, 634, 80);
INSERT INTO `cah_GuestToGuestType` VALUES(614, 635, 80);
INSERT INTO `cah_GuestToGuestType` VALUES(615, 636, 80);
INSERT INTO `cah_GuestToGuestType` VALUES(616, 637, 80);
INSERT INTO `cah_GuestToGuestType` VALUES(617, 637, 84);
INSERT INTO `cah_GuestToGuestType` VALUES(618, 638, 80);
INSERT INTO `cah_GuestToGuestType` VALUES(619, 639, 80);
INSERT INTO `cah_GuestToGuestType` VALUES(620, 640, 84);
INSERT INTO `cah_GuestToGuestType` VALUES(621, 641, 80);
INSERT INTO `cah_GuestToGuestType` VALUES(622, 642, 80);
INSERT INTO `cah_GuestToGuestType` VALUES(623, 642, 82);
INSERT INTO `cah_GuestToGuestType` VALUES(624, 643, 80);
INSERT INTO `cah_GuestToGuestType` VALUES(625, 644, 80);
INSERT INTO `cah_GuestToGuestType` VALUES(626, 644, 82);
INSERT INTO `cah_GuestToGuestType` VALUES(627, 645, 84);
INSERT INTO `cah_GuestToGuestType` VALUES(628, 646, 84);
INSERT INTO `cah_GuestToGuestType` VALUES(629, 647, 84);
INSERT INTO `cah_GuestToGuestType` VALUES(630, 648, 84);
INSERT INTO `cah_GuestToGuestType` VALUES(631, 649, 84);
INSERT INTO `cah_GuestToGuestType` VALUES(632, 650, 84);
INSERT INTO `cah_GuestToGuestType` VALUES(633, 651, 84);
INSERT INTO `cah_GuestToGuestType` VALUES(634, 652, 84);
INSERT INTO `cah_GuestToGuestType` VALUES(635, 653, 84);
INSERT INTO `cah_GuestToGuestType` VALUES(636, 654, 84);
INSERT INTO `cah_GuestToGuestType` VALUES(637, 655, 82);
INSERT INTO `cah_GuestToGuestType` VALUES(638, 656, 88);
INSERT INTO `cah_GuestToGuestType` VALUES(639, 656, 89);
INSERT INTO `cah_GuestToGuestType` VALUES(640, 657, 88);
INSERT INTO `cah_GuestToGuestType` VALUES(641, 657, 90);
INSERT INTO `cah_GuestToGuestType` VALUES(642, 658, 88);
INSERT INTO `cah_GuestToGuestType` VALUES(643, 658, 86);
INSERT INTO `cah_GuestToGuestType` VALUES(644, 659, 80);
INSERT INTO `cah_GuestToGuestType` VALUES(645, 660, 88);
INSERT INTO `cah_GuestToGuestType` VALUES(646, 660, 86);
INSERT INTO `cah_GuestToGuestType` VALUES(647, 661, 80);
INSERT INTO `cah_GuestToGuestType` VALUES(648, 662, 88);
INSERT INTO `cah_GuestToGuestType` VALUES(649, 663, 80);
INSERT INTO `cah_GuestToGuestType` VALUES(650, 664, 88);
INSERT INTO `cah_GuestToGuestType` VALUES(651, 665, 88);
INSERT INTO `cah_GuestToGuestType` VALUES(652, 666, 88);
INSERT INTO `cah_GuestToGuestType` VALUES(653, 667, 88);
INSERT INTO `cah_GuestToGuestType` VALUES(654, 668, 88);
INSERT INTO `cah_GuestToGuestType` VALUES(655, 669, 88);
INSERT INTO `cah_GuestToGuestType` VALUES(656, 670, 88);
INSERT INTO `cah_GuestToGuestType` VALUES(657, 671, 88);
INSERT INTO `cah_GuestToGuestType` VALUES(658, 672, 88);
INSERT INTO `cah_GuestToGuestType` VALUES(659, 673, 88);
INSERT INTO `cah_GuestToGuestType` VALUES(660, 674, 88);
INSERT INTO `cah_GuestToGuestType` VALUES(661, 675, 88);
INSERT INTO `cah_GuestToGuestType` VALUES(662, 676, 88);
INSERT INTO `cah_GuestToGuestType` VALUES(663, 677, 88);
INSERT INTO `cah_GuestToGuestType` VALUES(664, 678, 88);
INSERT INTO `cah_GuestToGuestType` VALUES(665, 679, 88);
INSERT INTO `cah_GuestToGuestType` VALUES(666, 680, 88);
INSERT INTO `cah_GuestToGuestType` VALUES(667, 681, 88);
INSERT INTO `cah_GuestToGuestType` VALUES(668, 682, 85);
INSERT INTO `cah_GuestToGuestType` VALUES(669, 683, 88);
INSERT INTO `cah_GuestToGuestType` VALUES(670, 684, 88);
INSERT INTO `cah_GuestToGuestType` VALUES(671, 685, 88);
INSERT INTO `cah_GuestToGuestType` VALUES(672, 686, 88);
INSERT INTO `cah_GuestToGuestType` VALUES(673, 687, 88);
INSERT INTO `cah_GuestToGuestType` VALUES(674, 688, 88);
INSERT INTO `cah_GuestToGuestType` VALUES(675, 689, 88);
INSERT INTO `cah_GuestToGuestType` VALUES(676, 690, 88);
INSERT INTO `cah_GuestToGuestType` VALUES(677, 691, 88);
INSERT INTO `cah_GuestToGuestType` VALUES(678, 692, 88);
INSERT INTO `cah_GuestToGuestType` VALUES(679, 693, 88);
INSERT INTO `cah_GuestToGuestType` VALUES(680, 694, 88);
INSERT INTO `cah_GuestToGuestType` VALUES(681, 695, 88);
INSERT INTO `cah_GuestToGuestType` VALUES(682, 696, 88);
INSERT INTO `cah_GuestToGuestType` VALUES(683, 697, 88);
INSERT INTO `cah_GuestToGuestType` VALUES(684, 698, 88);
INSERT INTO `cah_GuestToGuestType` VALUES(685, 699, 88);
INSERT INTO `cah_GuestToGuestType` VALUES(686, 700, 88);
INSERT INTO `cah_GuestToGuestType` VALUES(687, 701, 88);
INSERT INTO `cah_GuestToGuestType` VALUES(688, 702, 88);
INSERT INTO `cah_GuestToGuestType` VALUES(689, 703, 88);
INSERT INTO `cah_GuestToGuestType` VALUES(690, 704, 88);
INSERT INTO `cah_GuestToGuestType` VALUES(691, 705, 88);
INSERT INTO `cah_GuestToGuestType` VALUES(692, 706, 88);
INSERT INTO `cah_GuestToGuestType` VALUES(693, 707, 88);
INSERT INTO `cah_GuestToGuestType` VALUES(694, 708, 88);
INSERT INTO `cah_GuestToGuestType` VALUES(695, 709, 88);
INSERT INTO `cah_GuestToGuestType` VALUES(696, 710, 88);
INSERT INTO `cah_GuestToGuestType` VALUES(697, 711, 88);
INSERT INTO `cah_GuestToGuestType` VALUES(698, 712, 88);
INSERT INTO `cah_GuestToGuestType` VALUES(699, 713, 88);
INSERT INTO `cah_GuestToGuestType` VALUES(700, 714, 88);
INSERT INTO `cah_GuestToGuestType` VALUES(701, 715, 88);
INSERT INTO `cah_GuestToGuestType` VALUES(702, 716, 91);
INSERT INTO `cah_GuestToGuestType` VALUES(703, 717, 91);
INSERT INTO `cah_GuestToGuestType` VALUES(704, 718, 91);
INSERT INTO `cah_GuestToGuestType` VALUES(705, 719, 91);
INSERT INTO `cah_GuestToGuestType` VALUES(706, 720, 91);
INSERT INTO `cah_GuestToGuestType` VALUES(707, 721, 91);
INSERT INTO `cah_GuestToGuestType` VALUES(708, 722, 91);
INSERT INTO `cah_GuestToGuestType` VALUES(709, 723, 91);
INSERT INTO `cah_GuestToGuestType` VALUES(710, 724, 91);
INSERT INTO `cah_GuestToGuestType` VALUES(711, 725, 92);
INSERT INTO `cah_GuestToGuestType` VALUES(712, 726, 92);
INSERT INTO `cah_GuestToGuestType` VALUES(713, 727, 92);
INSERT INTO `cah_GuestToGuestType` VALUES(714, 728, 92);
INSERT INTO `cah_GuestToGuestType` VALUES(715, 729, 92);
INSERT INTO `cah_GuestToGuestType` VALUES(716, 730, 92);

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=93 ;

--
-- Dumping data for table `cah_GuestTypes`
--

INSERT INTO `cah_GuestTypes` VALUES(0, NULL, NULL, 0);
INSERT INTO `cah_GuestTypes` VALUES(92, 'Bride Coworker', NULL, 1);
INSERT INTO `cah_GuestTypes` VALUES(91, 'Groom Coworker', NULL, 1);
INSERT INTO `cah_GuestTypes` VALUES(90, 'Groom Mother', NULL, 1);
INSERT INTO `cah_GuestTypes` VALUES(89, 'Groom Father', NULL, 1);
INSERT INTO `cah_GuestTypes` VALUES(88, 'Groom Family', NULL, 1);
INSERT INTO `cah_GuestTypes` VALUES(87, 'Best Man', NULL, 1);
INSERT INTO `cah_GuestTypes` VALUES(86, 'Groom Party', NULL, 1);
INSERT INTO `cah_GuestTypes` VALUES(85, 'Friend of Friend', NULL, 1);
INSERT INTO `cah_GuestTypes` VALUES(84, 'Groom Friend', NULL, 1);
INSERT INTO `cah_GuestTypes` VALUES(83, 'Maid of Honor', NULL, 1);
INSERT INTO `cah_GuestTypes` VALUES(82, 'Bride Friend', NULL, 1);
INSERT INTO `cah_GuestTypes` VALUES(81, 'Bridal Party', NULL, 1);
INSERT INTO `cah_GuestTypes` VALUES(80, 'Mutual Friend', NULL, 1);
INSERT INTO `cah_GuestTypes` VALUES(79, 'Bride Mother', NULL, 1);
INSERT INTO `cah_GuestTypes` VALUES(78, 'Bride Father', NULL, 1);
INSERT INTO `cah_GuestTypes` VALUES(77, 'Bride Family', NULL, 1);

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=53 ;

--
-- Dumping data for table `common_Views`
--

INSERT INTO `common_Views` VALUES(47, 'Posts', 1, 1, 0, 'Posts', 0, NULL, 0, NULL);
INSERT INTO `common_Views` VALUES(1, 'Index', 1, 0, 1, 'Our Story', 4, 0, 0, NULL);
INSERT INTO `common_Views` VALUES(11, 'Admin', 1, 1, 0, 'Administration', 0, 0, 0, NULL);
INSERT INTO `common_Views` VALUES(0, NULL, 0, 0, 0, NULL, 0, NULL, 0, NULL);
INSERT INTO `common_Views` VALUES(46, 'Account', 1, 1, 0, 'My Account', 0, NULL, 0, NULL);
INSERT INTO `common_Views` VALUES(44, 'Users', 1, 0, 0, 'Users', 0, NULL, 0, NULL);
INSERT INTO `common_Views` VALUES(52, 'PostWall', 1, 0, 1, 'Write Us', 1, NULL, 0, NULL);
INSERT INTO `common_Views` VALUES(50, 'Rsvp', 1, 0, 1, 'RSVP', 3, NULL, 0, NULL);
INSERT INTO `common_Views` VALUES(51, 'Gallery', 1, 0, 1, 'Gallery', 2, NULL, 0, NULL);
