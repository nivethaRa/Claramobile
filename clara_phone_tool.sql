-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 12, 2017 at 03:26 PM
-- Server version: 5.5.52-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `clara_phone_tool`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE IF NOT EXISTS `admin_login` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` enum('1','0') DEFAULT '0',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`admin_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`admin_id`, `username`, `password`, `status`, `created_on`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '1', '2017-07-07 12:40:45');

-- --------------------------------------------------------

--
-- Table structure for table `client_details`
--

CREATE TABLE IF NOT EXISTS `client_details` (
  `client_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(111) DEFAULT NULL,
  `phone` varchar(111) DEFAULT NULL,
  `address` varchar(111) DEFAULT NULL,
  `address_line_2` varchar(111) DEFAULT NULL,
  `city` varchar(111) DEFAULT NULL,
  `state` varchar(111) DEFAULT NULL,
  `zipcode` varchar(111) DEFAULT NULL,
  `notes` varchar(2000) DEFAULT NULL,
  `client_enabled` enum('0','1') DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `client_details`
--

INSERT INTO `client_details` (`client_id`, `name`, `phone`, `address`, `address_line_2`, `city`, `state`, `zipcode`, `notes`, `client_enabled`, `created_at`, `updated_at`) VALUES
(1, 'client1', '111111111', 'cccccccc', 'aaaaaaa', 'ccccc', 'ssssss', '34343434', 'example text21', '1', '2017-07-09 08:00:00', '2017-07-10 05:13:05'),
(2, 'client2', '222222222', 'dddddddd', 'bbbbb', 'cccccc', 'ssssssss', '56454545', 'example test4', '1', '2017-07-09 13:12:00', '2017-07-10 05:13:11');

-- --------------------------------------------------------

--
-- Table structure for table `site_details`
--

CREATE TABLE IF NOT EXISTS `site_details` (
  `site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(111) DEFAULT NULL,
  `phone` varchar(111) DEFAULT NULL,
  `address` varchar(111) DEFAULT NULL,
  `address_line_2` varchar(111) DEFAULT NULL,
  `city` varchar(111) DEFAULT NULL,
  `state` varchar(111) DEFAULT NULL,
  `zipcode` varchar(111) DEFAULT NULL,
  `notes` varchar(2000) DEFAULT NULL,
  `site_enabled` enum('0','1') DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `technician_details`
--

CREATE TABLE IF NOT EXISTS `technician_details` (
  `technician_id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(111) DEFAULT NULL,
  `username` varchar(111) DEFAULT NULL,
  `password` varchar(111) DEFAULT NULL,
  `roles` varchar(3000) DEFAULT NULL,
  `login_access` enum('0','1') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`technician_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `technician_details`
--

INSERT INTO `technician_details` (`technician_id`, `fullname`, `username`, `password`, `roles`, `login_access`, `created_at`, `updated_at`) VALUES
(1, 'aaaaa', 'tech', 'e10adc3949ba59abbe56e057f20f883e', 'sdsds,sdsd,sdsd', '1', '2017-07-09 07:00:00', '2017-07-10 09:54:05'),
(2, 'bbbbbbbbb', 'admin1', 'e10adc3949ba59abbe56e057f20f883e', 'aaa,bbb,cccc', '1', '2017-07-09 07:24:00', '2017-07-10 05:14:04');

-- --------------------------------------------------------

--
-- Table structure for table `test_cases`
--

CREATE TABLE IF NOT EXISTS `test_cases` (
  `test_case_id` int(11) NOT NULL AUTO_INCREMENT,
  `test_case_name` varchar(111) NOT NULL,
  PRIMARY KEY (`test_case_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=50 ;

--
-- Dumping data for table `test_cases`
--

INSERT INTO `test_cases` (`test_case_id`, `test_case_name`) VALUES
(1, 'Wifi'),
(2, 'Cellular'),
(3, 'Bluetooth'),
(4, 'GPS'),
(5, 'Device is not a jailbroken'),
(6, 'Battery Charge'),
(7, 'Vibration + Accelerometer'),
(8, 'Camera (back) + Flashlight'),
(9, 'Camera (front) + Read QR'),
(10, 'Camera (back) + Read QR'),
(11, 'Microphone + Speaker'),
(12, 'USB Data'),
(13, 'USB Power'),
(14, 'IMEI Blacklist'),
(15, 'SIM Card'),
(16, 'Activation Lock'),
(17, 'Carrier Lock'),
(18, 'Warranty'),
(19, 'Touchscreen (Single touch)'),
(20, 'Touchscreen (Multi touch)'),
(21, 'Screen Brightness'),
(22, 'Dead Pixels'),
(23, 'Fingerprint Reader'),
(24, 'Home Buttons'),
(25, 'Volume Buttons'),
(26, 'Silent Mode Switch'),
(27, 'Vibration '),
(28, 'Accelerometer'),
(29, 'Compass'),
(30, 'Flashlight'),
(31, 'Camera(front)'),
(32, 'Camera(back)'),
(33, 'Microphone'),
(34, 'Speaker'),
(35, 'Headphone jack'),
(36, 'USB port'),
(37, 'USB power'),
(38, 'Proximity Sensor'),
(39, 'Phone Call'),
(40, 'Cosmetic Damage'),
(41, 'Heavy Damage'),
(42, 'Water Damage'),
(43, 'Sim Card'),
(44, 'Wifi'),
(45, 'Bluetooth'),
(46, 'Cellular'),
(47, 'GPS'),
(48, 'Carrier Lock'),
(49, 'Activation Lock');

-- --------------------------------------------------------

--
-- Table structure for table `test_devices`
--

CREATE TABLE IF NOT EXISTS `test_devices` (
  `test_device_id` int(11) NOT NULL AUTO_INCREMENT,
  `device_id` int(11) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `technician_id` int(11) DEFAULT NULL,
  `all_tests` int(11) DEFAULT NULL,
  `manual_tests` int(11) DEFAULT NULL,
  `test_names` varchar(5000) DEFAULT NULL,
  `suite_enabled` int(11) DEFAULT NULL,
  PRIMARY KEY (`test_device_id`),
  KEY `device_id` (`device_id`,`client_id`,`technician_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `test_reports`
--

CREATE TABLE IF NOT EXISTS `test_reports` (
  `report_id` int(11) NOT NULL AUTO_INCREMENT,
  `report_client_id` int(11) NOT NULL,
  `report_technician_id` int(11) NOT NULL,
  `report_device_id` int(11) NOT NULL,
  `report_date` date NOT NULL,
  `report_time` time NOT NULL,
  `status` enum('0','1','2') NOT NULL,
  PRIMARY KEY (`report_id`),
  KEY `report_client_id` (`report_client_id`,`report_technician_id`,`report_device_id`),
  KEY `report_technician_id` (`report_technician_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `test_reports`
--

INSERT INTO `test_reports` (`report_id`, `report_client_id`, `report_technician_id`, `report_device_id`, `report_date`, `report_time`, `status`) VALUES
(1, 1, 2, 1, '2017-07-08', '11:00:00', '1'),
(2, 1, 1, 2, '2017-07-08', '12:00:00', '1'),
(3, 1, 1, 3, '2017-07-08', '12:00:00', '1'),
(4, 1, 1, 4, '2017-07-07', '12:00:00', '1'),
(5, 2, 1, 5, '2017-07-09', '12:00:00', '1'),
(6, 2, 1, 6, '2017-07-09', '12:00:00', '1'),
(7, 2, 1, 7, '2017-07-09', '12:00:00', '1'),
(8, 2, 1, 8, '2017-07-09', '12:00:00', '1');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `test_reports`
--
ALTER TABLE `test_reports`
  ADD CONSTRAINT `test_reports_ibfk_1` FOREIGN KEY (`report_client_id`) REFERENCES `client_details` (`client_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `test_reports_ibfk_2` FOREIGN KEY (`report_technician_id`) REFERENCES `technician_details` (`technician_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
