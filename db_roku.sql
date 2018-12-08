-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 08, 2018 at 10:00 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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

CREATE TABLE `tbl_home` (
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kids`
--

CREATE TABLE `tbl_kids` (
  `kids_id` int(5) NOT NULL,
  `kids_gallery` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kids`
--

INSERT INTO `tbl_kids` (`kids_id`, `kids_gallery`) VALUES
(1, 'kids_roku.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_parents`
--

CREATE TABLE `tbl_parents` (
  `parents_id` int(5) NOT NULL,
  `password` varchar(15) NOT NULL,
  `add_channel` varchar(50) NOT NULL,
  `purchase_channel` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_home`
--
ALTER TABLE `tbl_home`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `tbl_kids`
--
ALTER TABLE `tbl_kids`
  ADD PRIMARY KEY (`kids_id`);

--
-- Indexes for table `tbl_parents`
--
ALTER TABLE `tbl_parents`
  ADD PRIMARY KEY (`parents_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_kids`
--
ALTER TABLE `tbl_kids`
  MODIFY `kids_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_parents`
--
ALTER TABLE `tbl_parents`
  MODIFY `parents_id` int(5) NOT NULL AUTO_INCREMENT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
