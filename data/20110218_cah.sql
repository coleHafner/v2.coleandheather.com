-- phpMyAdmin SQL Dump
-- version 3.2.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 18, 2011 at 12:05 PM
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
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `cah_Addresses`
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
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`guest_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `cah_Guests`
--

INSERT INTO `cah_Guests` VALUES(0, 0, 0, NULL, NULL, NULL, '', '', NULL, NULL, 0, 0, 0);

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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `cah_GuestToGuestType`
--


-- --------------------------------------------------------

--
-- Table structure for table `cah_GuestTypes`
--

DROP TABLE IF EXISTS `cah_GuestTypes`;
CREATE TABLE `cah_GuestTypes` (
  `guest_type_id` int(100) NOT NULL AUTO_INCREMENT,
  `title` varchar(1000) DEFAULT NULL,
  `is_special` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`guest_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `cah_GuestTypes`
--


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
INSERT INTO `common_Articles` VALUES(88, 'This is Heather\\''s Story...', 'Cole met Heather at the sushi bar downtown.', 1297801457, 1, 2, 37, 1, 1, '');
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
