-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 18, 2022 at 02:09 AM
-- Server version: 5.7.37-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tSeriesDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `deviceData`
--

CREATE TABLE `deviceData` (
  `cid` varchar(1024) NOT NULL,
  `name` varchar(1024) NOT NULL,
  `type` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `statusInfo` varchar(4096) NOT NULL DEFAULT 'Connected',
  `uid` varchar(1024) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rulesData`
--

CREATE TABLE `rulesData` (
  `id` int(11) NOT NULL,
  `ruleName` varchar(255) NOT NULL,
  `active` binary(1) NOT NULL DEFAULT '',
  `topicPattern` varchar(1024) NOT NULL,
  `payloadPattern` varchar(2048) NOT NULL,
  `method` varchar(7) NOT NULL DEFAULT 'GET',
  `webHook` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rulesData`
--

INSERT INTO `rulesData` (`id`, `ruleName`, `active`, `topicPattern`, `payloadPattern`, `method`, `webHook`) VALUES
(1, 'Error Notification', 0x01, '%error', '%', 'GET', 'https://petificationblue.ddns.net:1880/error/yycid/yypayload'),
(2, 'Device Error', 0x01, '%error', '%', 'PATCH', 'https://petificationblue.ddns.net:1880/device/status/yycid/2/yypayload'),
(3, 'Device Normal', 0x01, '%scale%', '%', 'PATCH', 'https://petificationblue.ddns.net:1880/device/status/yycid/0/Connected'),
(6, 'Device Start', 0x01, '%birth', '%', 'PATCH', 'https://petificationblue.ddns.net:1880/device/status/yycid/0/yypayload'),
(7, 'Device Disconnected', 0x01, '%close', '%', 'PATCH', 'https://petificationblue.ddns.net:1880/device/status/yycid/1/yypayload');

-- --------------------------------------------------------

--
-- Table structure for table `scheduleData`
--

CREATE TABLE `scheduleData` (
  `id` int(11) NOT NULL,
  `time` varchar(15) NOT NULL,
  `activate` tinyint(1) NOT NULL DEFAULT '1',
  `uid` varchar(1024) NOT NULL,
  `topic` varchar(1024) NOT NULL,
  `payload` varchar(2048) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `thingsData`
--

CREATE TABLE `thingsData` (
  `id` int(11) NOT NULL,
  `topic` varchar(1024) NOT NULL,
  `payload` varchar(2048) NOT NULL,
  `timestamp` varchar(15) NOT NULL,
  `deleted` binary(1) NOT NULL DEFAULT '\0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `userData`
--

CREATE TABLE `userData` (
  `token` varchar(1024) NOT NULL,
  `uname` text NOT NULL,
  `notification` tinyint(1) NOT NULL DEFAULT '1',
  `settings` json NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `deviceData`
--
ALTER TABLE `deviceData`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `fk_device_uid` (`uid`);

--
-- Indexes for table `rulesData`
--
ALTER TABLE `rulesData`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scheduleData`
--
ALTER TABLE `scheduleData`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_schedule_uid` (`uid`);

--
-- Indexes for table `thingsData`
--
ALTER TABLE `thingsData`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userData`
--
ALTER TABLE `userData`
  ADD PRIMARY KEY (`token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rulesData`
--
ALTER TABLE `rulesData`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `scheduleData`
--
ALTER TABLE `scheduleData`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `thingsData`
--
ALTER TABLE `thingsData`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191003;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `deviceData`
--
ALTER TABLE `deviceData`
  ADD CONSTRAINT `fk_device_uid` FOREIGN KEY (`uid`) REFERENCES `userData` (`token`) ON DELETE CASCADE;

--
-- Constraints for table `scheduleData`
--
ALTER TABLE `scheduleData`
  ADD CONSTRAINT `fk_schedule_uid` FOREIGN KEY (`uid`) REFERENCES `userData` (`token`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
