-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 27, 2018 at 12:05 AM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_roku`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_home`
--

DROP TABLE IF EXISTS `tbl_home`;
CREATE TABLE IF NOT EXISTS `tbl_home` (
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kids`
--

DROP TABLE IF EXISTS `tbl_kids`;
CREATE TABLE IF NOT EXISTS `tbl_kids` (
  `kids_id` int(5) NOT NULL AUTO_INCREMENT,
  `kids_education_channels` varchar(50) NOT NULL,
  `kids_entertainment` varchar(50) NOT NULL,
  `kids_activity_channels` varchar(50) NOT NULL,
  PRIMARY KEY (`kids_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_parents`
--

DROP TABLE IF EXISTS `tbl_parents`;
CREATE TABLE IF NOT EXISTS `tbl_parents` (
  `parents_id` int(5) NOT NULL AUTO_INCREMENT,
  `password` varchar(15) NOT NULL,
  `add_channel` varchar(50) NOT NULL,
  `purchase_channel` varchar(50) NOT NULL,
  PRIMARY KEY (`parents_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
