-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2020 at 07:11 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hd`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin'),
('balu', 'balu');

-- --------------------------------------------------------

--
-- Table structure for table `cancellation`
--

CREATE TABLE `cancellation` (
  `canid` int(11) NOT NULL,
  `canceldate` date NOT NULL DEFAULT current_timestamp(),
  `bookingdate` date NOT NULL,
  `resid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `roomid` varchar(20) NOT NULL,
  `location` varchar(50) NOT NULL,
  `roomtype` varchar(50) NOT NULL,
  `checkin` date NOT NULL,
  `checkout` date NOT NULL,
  `members` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `payment` varchar(20) NOT NULL,
  `balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cancellation`
--

INSERT INTO `cancellation` (`canid`, `canceldate`, `bookingdate`, `resid`, `userid`, `fullname`, `gender`, `roomid`, `location`, `roomtype`, `checkin`, `checkout`, `members`, `amount`, `payment`, `balance`) VALUES
(1, '2020-04-15', '2020-04-15', 13, 1, 'BALAJI APPARI', 'male', '202', 'Hyderabad', 'Normal', '2020-04-16', '2020-04-17', 1, 100, 'ONLINE', 0),
(2, '2020-04-15', '2020-04-15', 34, 1, 'BALAJI APPARI', 'male', '301', 'Bangalore', 'Normal', '2020-04-17', '2020-04-19', 1, 200, 'ONLINE', 0),
(3, '2020-04-15', '2020-04-15', 49, 1, 'BALAJI APPARI', 'male', '', '', '', '0000-00-00', '0000-00-00', 0, 0, '', 0),
(4, '2020-04-15', '2020-04-15', 50, 2, 'sirisha', 'female', '', '', '', '0000-00-00', '0000-00-00', 0, 0, '', 0),
(5, '2020-04-15', '0000-00-00', 0, 0, '', '', '', '', '', '0000-00-00', '0000-00-00', 0, 0, '', 0),
(6, '2020-04-15', '2020-04-15', 51, 1, 'BALAJI APPARI', 'male', '', '', '', '0000-00-00', '0000-00-00', 0, 0, '', 0),
(7, '2020-04-22', '2020-04-22', 54, 1, 'BALAJI APPARI', 'male', '', '', '', '0000-00-00', '0000-00-00', 0, 0, '', 0),
(8, '2020-04-22', '0000-00-00', 0, 0, '', '', '', '', '', '0000-00-00', '0000-00-00', 0, 0, '', 0),
(9, '2020-04-22', '2020-04-21', 53, 1, 'BALAJI APPARI', 'male', '', '', '', '0000-00-00', '0000-00-00', 0, 0, '', 0),
(10, '2020-04-22', '2020-04-21', 52, 1, 'BALAJI APPARI', 'male', '', '', '', '0000-00-00', '0000-00-00', 0, 0, '', 0),
(11, '2020-04-22', '0000-00-00', 0, 0, '', '', '', '', '', '0000-00-00', '0000-00-00', 0, 0, '', 0),
(12, '2020-04-22', '2020-04-15', 37, 1, 'BALAJI APPARI', 'male', '303', 'Bangalore', 'Deluxe', '2020-04-16', '2020-04-18', 1, 300, 'CASH', 300),
(13, '2020-04-22', '2020-04-15', 35, 1, 'BALAJI APPARI', 'male', '101', 'Vizag', 'Normal', '2020-04-17', '2020-04-19', 1, 200, 'CASH', 200),
(14, '2020-04-22', '2020-04-22', 55, 1, 'BALAJI APPARI', 'male', '', '', '', '0000-00-00', '0000-00-00', 0, 0, '', 0),
(15, '2020-04-22', '2020-04-22', 56, 1, 'BALAJI APPARI', 'male', 'Array', 'Bangalore', 'Normal', '2020-04-29', '2020-04-30', 1, 0, 'CASH', 100),
(16, '2020-04-22', '2020-04-22', 57, 1, 'BALAJI APPARI', 'male', 'Array', 'Vizag', 'Normal', '2020-04-24', '2020-04-26', 1, 0, 'CASH', 200),
(17, '2020-04-22', '2020-04-22', 59, 1, 'BALAJI APPARI', 'male', '', '', '', '0000-00-00', '0000-00-00', 0, 0, '', 0),
(18, '2020-04-22', '2020-04-22', 58, 1, 'BALAJI APPARI', 'male', '', '', '', '0000-00-00', '0000-00-00', 0, 0, '', 0),
(19, '2020-05-02', '2020-04-15', 12, 1, 'BALAJI APPARI', 'male', '306', 'Bangalore', 'Super Deluxe', '2020-04-16', '2020-04-18', 1, 400, 'CASH', 400),
(20, '2020-05-02', '2020-05-02', 60, 1, 'BALAJI APPARI', 'male', '301', 'Bangalore', 'Normal', '2020-05-09', '2020-05-16', 1, 700, 'CASH', 700),
(21, '2020-05-03', '2020-05-03', 61, 1, 'BALAJI APPARI', 'male', '101', 'Vizag', 'Normal', '2020-05-14', '2020-05-15', 1, 100, 'CASH', 100),
(22, '2020-05-03', '2020-05-03', 62, 1, 'BALAJI APPARI', 'male', '301', 'Bangalore', 'Normal', '2020-05-20', '2020-05-22', 1, 200, 'CASH', 200);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `sno` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `text` varchar(300) NOT NULL,
  `datesub` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(30) NOT NULL DEFAULT 'UNCHECKED'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`sno`, `name`, `email`, `text`, `datesub`, `status`) VALUES
(1, 'adi', 'adi@gmail.com', 'nice hotel', '2020-04-15', 'UNCHECKED');

-- --------------------------------------------------------

--
-- Table structure for table `reservationtable`
--

CREATE TABLE `reservationtable` (
  `bookingdate` date NOT NULL DEFAULT current_timestamp(),
  `resid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `roomid` varchar(20) NOT NULL,
  `location` varchar(50) NOT NULL,
  `roomtype` varchar(50) NOT NULL,
  `checkin` date NOT NULL,
  `checkout` date NOT NULL,
  `members` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `payment` varchar(20) NOT NULL,
  `balance` int(11) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'IN'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reservationtable`
--

INSERT INTO `reservationtable` (`bookingdate`, `resid`, `userid`, `fullname`, `gender`, `roomid`, `location`, `roomtype`, `checkin`, `checkout`, `members`, `amount`, `payment`, `balance`, `status`) VALUES
('2020-05-03', 63, 1, 'BALAJI APPARI', 'male', '201', 'Hyderabad', 'Normal', '2020-05-20', '2020-05-03', 3, 200, 'CASH', 200, 'OUT'),
('2020-05-03', 64, 1, 'BALAJI APPARI', 'male', '101', 'Vizag', 'Normal', '2020-05-03', '2020-05-03', 1, 100, 'CASH', 100, 'OUT');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `rid` int(11) NOT NULL,
  `roomid` varchar(20) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `roomtype` varchar(50) DEFAULT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`rid`, `roomid`, `location`, `roomtype`, `price`) VALUES
(35, '101', 'VIZAG', 'NORMAL', 100),
(36, '102', 'VIZAG', 'NORMAL', 100),
(37, '103', 'VIZAG', 'DELUXE', 150),
(38, '104', 'VIZAG', 'DELUXE', 150),
(39, '105', 'VIZAG', 'SUPER DELUXE', 200),
(40, '106', 'VIZAG', 'SUPER DELUXE', 200),
(41, '201', 'HYDERABAD', 'NORMAL', 100),
(42, '202', 'HYDERABAD', 'NORMAL', 100),
(43, '203', 'HYDERABAD', 'DELUXE', 150),
(44, '204', 'HYDERABAD', 'DELUXE', 150),
(45, '205', 'HYDERABAD', 'SUPER DELUXE', 200),
(46, '206', 'HYDERABAD', 'SUPER DELUXE', 200),
(47, '301', 'BANGALORE', 'NORMAL', 100),
(48, '302', 'BANGALORE', 'NORMAL', 100),
(49, '303', 'BANGALORE', 'DELUXE', 150),
(50, '304', 'BANGALORE', 'DELUXE', 150),
(51, '305', 'BANGALORE', 'SUPER DELUXE', 200),
(52, '306', 'BANGALORE', 'SUPER DELUXE', 200);

-- --------------------------------------------------------

--
-- Table structure for table `usertable`
--

CREATE TABLE `usertable` (
  `userid` int(11) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phonenumber` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `idproof` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usertable`
--

INSERT INTO `usertable` (`userid`, `fullname`, `gender`, `email`, `phonenumber`, `address`, `idproof`, `username`, `password`, `img`) VALUES
(1, 'BALAJI APPARI', 'male', 'balaji@gmail.com', '8019660694', '104 AREA', '9705522006', 'balu', 'balu', ''),
(2, 'sirisha', 'female', 'siri@gmail.com', '9703483549', 'marripalem', 'ADCS123', 'sirisha', 'sirisha', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cancellation`
--
ALTER TABLE `cancellation`
  ADD PRIMARY KEY (`canid`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `reservationtable`
--
ALTER TABLE `reservationtable`
  ADD PRIMARY KEY (`resid`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`rid`),
  ADD UNIQUE KEY `roomid` (`roomid`);

--
-- Indexes for table `usertable`
--
ALTER TABLE `usertable`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cancellation`
--
ALTER TABLE `cancellation`
  MODIFY `canid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `reservationtable`
--
ALTER TABLE `reservationtable`
  MODIFY `resid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `usertable`
--
ALTER TABLE `usertable`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
