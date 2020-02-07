-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 28, 2020 at 05:46 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `project`
--
CREATE DATABASE IF NOT EXISTS `project` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `project`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `username` text NOT NULL,
  `pass` varchar(30) CHARACTER SET armscii8 COLLATE armscii8_bin NOT NULL,
  KEY `pass` (`pass`),
  KEY `pass_2` (`pass`),
  KEY `pass_3` (`pass`),
  KEY `pass_4` (`pass`),
  KEY `pass_5` (`pass`),
  KEY `pass_6` (`pass`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `admin`
--

TRUNCATE TABLE `admin`;
--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `pass`) VALUES
('akanksha', '*CC67043C7BCFF5EEA5566BD9B1F3C'),
('amrita', '*CC67043C7BCFF5EEA5566BD9B1F3C');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard`
--

DROP TABLE IF EXISTS `dashboard`;
CREATE TABLE IF NOT EXISTS `dashboard` (
  `slno` int(11) PRIMARY KEY,
  `devicename` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL,
  `tempstatus` varchar(100) NOT NULL,
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `dashboard`
--

TRUNCATE TABLE `dashboard`;
--
-- Dumping data for table `dashboard`
--

INSERT INTO `dashboard` (`serialnum`, `devicename`, `status`, `tempstatus`) VALUES
(100023, 'alert', 'active', 'toocold');

-- --------------------------------------------------------

--
-- Table structure for table `temparaturestudy`
--

DROP TABLE IF EXISTS `temparaturestudy`;
CREATE TABLE IF NOT EXISTS `temparaturestudy` (
  `slno` int(11) FOREIGN KEY,
  `temp` int(11) NOT NULL,
  `time` time FOREIGN KEY,
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `temparaturestudy`
--

TRUNCATE TABLE `temparaturestudy`;
--
-- Dumping data for table `temparaturestudy`
--

INSERT INTO `temparaturestudy` (`slno`, `temp`, `time`) VALUES
(0, 23, '13:54:43'),
(0, 1318, '14:17:12'),
(10023, 1318, '14:19:46'),
(514, 5672, '14:20:16');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`pass`) REFERENCES `admin` (`pass`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;