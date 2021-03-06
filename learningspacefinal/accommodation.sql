-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 30, 2018 at 09:02 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `accommodation`
--
CREATE DATABASE IF NOT EXISTS `accommodation` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `accommodation`;

-- --------------------------------------------------------

--
-- Table structure for table `Accommodation`
--

CREATE TABLE `Accommodation` (
  `accID` int(11) NOT NULL,
  `accResgistratioonNo` varchar(255) COLLATE utf8_bin NOT NULL,
  `accLocation` varchar(255) COLLATE utf8_bin NOT NULL,
  `accNoOfRooms` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminID` int(11) NOT NULL,
  `adminFirstN` varchar(255) COLLATE utf8_bin NOT NULL,
  `adminLastN` varchar(255) COLLATE utf8_bin NOT NULL,
  `adminCategory` int(255) NOT NULL,
  `adminAddress` varchar(255) COLLATE utf8_bin NOT NULL,
  `adminPhone` varchar(255) COLLATE utf8_bin NOT NULL,
  `adminEmail` varchar(255) COLLATE utf8_bin NOT NULL,
  `adminPassword` varchar(255) COLLATE utf8_bin NOT NULL,
  `adminActive` enum('0','1') COLLATE utf8_bin NOT NULL DEFAULT '0',
  `accID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminID`, `adminFirstN`, `adminLastN`, `adminCategory`, `adminAddress`, `adminPhone`, `adminEmail`, `adminPassword`, `adminActive`, `accID`) VALUES
(1, 'Moises', 'Borracha', 1, 'Claremont', '0834866680', 'moisesnt2@gmail.com', 'Wenykeny2', '1', 0),
(2, 'Suquila', 'WenyKeny', 2, 'Ronderborch', '0834777832', 'suquila@gmail.com', 'Suquila', '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `helpticket`
--

CREATE TABLE `helpticket` (
  `helpID` int(11) NOT NULL,
  `helpName` varchar(255) COLLATE utf8_bin NOT NULL,
  `helpEmail` varchar(255) COLLATE utf8_bin NOT NULL,
  `helpText` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `login_test`
--

CREATE TABLE `login_test` (
  `id` int(11) NOT NULL,
  `username` varchar(30) COLLATE utf8_bin NOT NULL,
  `password` varchar(30) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `login_test`
--

INSERT INTO `login_test` (`id`, `username`, `password`) VALUES
(1, 'moises', 'moises'),
(2, 'suquila', 'borracha');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payID` int(11) NOT NULL,
  `payAmount` varchar(255) COLLATE utf8_bin NOT NULL,
  `payMonth` varchar(255) COLLATE utf8_bin NOT NULL,
  `studID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` int(11) NOT NULL,
  `roomName` varchar(255) COLLATE utf8_bin NOT NULL,
  `roomPrice` float NOT NULL,
  `roomType` varchar(255) COLLATE utf8_bin NOT NULL,
  `roomCapacity` int(11) NOT NULL,
  `roomReserved` enum('0','1') COLLATE utf8_bin NOT NULL,
  `roomImage` varchar(255) COLLATE utf8_bin NOT NULL,
  `roomDescription` text COLLATE utf8_bin NOT NULL,
  `roomShortDescription` varchar(60) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `roomName`, `roomPrice`, `roomType`, `roomCapacity`, `roomReserved`, `roomImage`, `roomDescription`, `roomShortDescription`) VALUES
(1, 'Place 1', 203.09, 'standard', 1, '0', 'namePic1.jpg', 'Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.\r\nDonec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.', 'This is a short description'),
(2, 'Diamond', 400, 'deluxe', 2, '0', 'bridge1.jpg', 'Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.\r\nDonec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna', 'This is a short description. Lorem ipsum dolor sit ametdxf. '),
(3, 'Golden 212', 999, 'gold', 2, '1', '1.jpg', 'Navbar navigation links build on our .nav options with their own modifier class and require the use of toggler classes for proper responsive styling. Navigation in navbars will also grow to occupy as much horizontal space as possible to keep your navbar contents securely aligned.', 'This is a short'),
(4, 'Placio', 666, 'low', 2, '0', 'park1.jpg', 'This is a short description. Lorem ipsum dolor sit ametdxf. ', 'This is a short description. Lorem ipsum dolor sit ametdxf. '),
(5, 'Orland', 3445, 'Luxury', 1, '0', '3.jpg', 'Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.\r\nDonec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.', 'Donec sed odio dui. Etiam porta sem '),
(6, 'Los Angeles', 4345, 'Marketing', 1, '0', 'rails1.jpg', 'Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.\r\nDonec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.', 'Morbi leo risus, porta ac consectetur a'),
(7, 'Plaza', 3455, 'New', 1, '0', 'marketing1.jpg', 'Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.\r\n', 'vestibulum at eros. Praesent commodo.');

-- --------------------------------------------------------

--
-- Table structure for table `roomMarket`
--

CREATE TABLE `roomMarket` (
  `roomMarketID` int(11) NOT NULL,
  `firstText` varchar(255) COLLATE utf8_bin NOT NULL,
  `secondText` varchar(255) COLLATE utf8_bin NOT NULL,
  `roomID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `roomMarket`
--

INSERT INTO `roomMarket` (`roomMarketID`, `firstText`, `secondText`, `roomID`) VALUES
(1, 'First featurette heading.', 'It\'ll blow your mind.', 5),
(2, 'Oh yeah, it\'s that good.', 'See for yourself.', 1),
(3, 'What are you waiting for?', 'Book today.', 7),
(4, 'Oh yeah, it\'s that good.', 'See for yourself.', 6);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `studID` int(11) NOT NULL,
  `studFirstName` varchar(255) COLLATE utf8_bin NOT NULL,
  `studMiddleName` varchar(255) COLLATE utf8_bin NOT NULL,
  `studLastName` varchar(255) COLLATE utf8_bin NOT NULL,
  `studEmail` varchar(255) COLLATE utf8_bin NOT NULL,
  `studPassword` varchar(255) COLLATE utf8_bin NOT NULL,
  `studGender` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '''M'',''F''',
  `studDOB` varchar(255) COLLATE utf8_bin NOT NULL,
  `studSchool` varchar(255) COLLATE utf8_bin NOT NULL,
  `studSchoolAddress` varchar(255) COLLATE utf8_bin NOT NULL,
  `studCountry` varchar(255) COLLATE utf8_bin NOT NULL,
  `studCity` varchar(255) COLLATE utf8_bin NOT NULL,
  `studStreet` varchar(255) COLLATE utf8_bin NOT NULL,
  `id_passport` varchar(255) COLLATE utf8_bin NOT NULL,
  `studPhone` varchar(255) COLLATE utf8_bin NOT NULL,
  `activationKey` varchar(255) COLLATE utf8_bin NOT NULL,
  `isActive` enum('0','1') COLLATE utf8_bin NOT NULL,
  `data` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`studID`, `studFirstName`, `studMiddleName`, `studLastName`, `studEmail`, `studPassword`, `studGender`, `studDOB`, `studSchool`, `studSchoolAddress`, `studCountry`, `studCity`, `studStreet`, `id_passport`, `studPhone`, `activationKey`, `isActive`, `data`) VALUES
(1, 'Moises', 'mooo', 'Suquila', 'moisesnt446@gmail.com', '8ee2197f8c482f9cdb157f126e255bc3', 'Male', '2018-08-04', 'hb', 'hb', '', '', '', 'hjghfgdf', '0834866680', 'd50dffefc052e05251ea91eb3a711f9d', '1', '2018-08-10 21:07:09'),
(2, 'Moises', 'mooo', 'Suquila', 'moisesnt4426@gmail.com', '8ee2197f8c482f9cdb157f126e255bc3', 'Male', '2018-08-04', 'hb', 'hb', '', '', '', 'hjghfgdf', '0834866680', 'd50dffefc052e05251ea91eb3a711f9d', '1', '2018-08-10 21:08:45'),
(3, 'ee', 'mooo', 'Suquila', 'moi@dd.c', 'f5213dacaee168fffb80807b1cc0e269', 'Female', '2018-08-10', 'hb', 'trdf', '', '', '', 'hjghfgdf', '0834866680', 'd50dffefc052e05251ea91eb3a711f9d', '1', '2018-08-10 21:09:32'),
(4, 'ee', 'mooo', 'Suquila', 'moid@dd.c', 'f5213dacaee168fffb80807b1cc0e269', 'Male', '2018-08-10', 'hb', 'trdf', '', '', '', 'hjghfgdf', '0834866680', 'd50dffefc052e05251ea91eb3a711f9d', '1', '2018-08-10 21:10:49'),
(5, 'ee', 'mooo', 'Suquila', 'moid@dd.com', 'f5213dacaee168fffb80807b1cc0e269', 'Male', '2018-08-10', 'hb', 'trdf', '', '', '', 'hjghfgdf', '0834866680', 'aef1733fd326b6023c4126ed088af2db', '1', '2018-08-10 21:11:58'),
(6, 'ee', 'mooo', 'Suquila', 'moidd@dd.com', 'f5213dacaee168fffb80807b1cc0e269', 'Male', '2018-08-10', 'hb', 'trdf', '', '', '', 'hjghfgdf', '0834866680', '4c760841c402abea779ff5c857b35afa', '1', '2018-08-10 21:13:02'),
(7, 'Ee', 'Mooo', 'Suquila', 'moisddd@dd.com', 'f5213dacaee168fffb80807b1cc0e269', 'Male', '2018-08-10', 'Hb', 'Trdf', '', '', '', 'hjghfgdf', '0834866680', '92ae56d3c81e8dd53aae2bf77c267ce5', '1', '2018-08-10 21:19:15'),
(8, 'Kdfhbvh', 'KJSDFJN', 'DKJFNF', 'mois@fdj.cisjd', 'efdd30ebc81423fe7e5f016a10c67570', 'Male', '0000-00-00', 'Kjdnjnc', 'Jnxckjn', '', '', '', 'jdnfjncjn', '9387444363', 'bef2e86c5dbc9587fee929d4c84fb08a', '0', '2018-08-14 21:17:02'),
(9, 'OKKKKK', 'Kjxncjn', 'Kdjfnjvnjk', 'moise@gma.com', '6e37469971a8bb23117f0085370dda2d', 'Male', '0000-00-00', 'Cjndjc', 'Kdjncjn', '', '', '', 'kjfnvjfnj', '2345456662211', '27ef5cf82630dd9d694f6843ef5a518c', '1', '2018-08-14 21:21:12'),
(17, 'Moises', 'Wenikeni', 'Borracha', 'moisesnt2@gmail.com', '8ee2197f8c482f9cdb157f126e255bc3', 'Male', '1993-08-20', 'CTI', '21 Claremont', 'Angola', 'Talatona', 'Rua 12', 'N1353299Â§', '23763783772', '8c9c87290a8bb9de1d3e123fe13602a2', '1', '2018-08-22 16:33:34'),
(18, 'Ze', 'Assunca', 'Luia', 'zenaideluis22@gmail.com', '2b0eb3f6a700f8cb1f3148b6b08aab2e', 'Male', '0000-00-00', 'Cti', 'Iamb Road', '', '', '', 'n27382nw34', '9987739279293', '2f444438b0b2cc7a64fe8107107157f8', '1', '2018-08-16 11:11:40'),
(19, 'Robert', 'Fritz', 'Berge', 'zenith3za@gmail.com', 'd106b29303767527fc11214f1b325fb6', 'Male', '0000-00-00', 'Bergvliet High', '1 Firgrove Avenue', '', '', '', '9861525587', '7124375326', '8308afecf642e8f9cb2ccb7c302fcedc', '1', '2018-08-16 14:32:15');

-- --------------------------------------------------------

--
-- Table structure for table `studentprofile`
--

CREATE TABLE `studentprofile` (
  `profileID` int(11) NOT NULL,
  `studID` int(11) NOT NULL,
  `studDescription` varchar(255) COLLATE utf8_bin NOT NULL,
  `studPicture` varchar(255) COLLATE utf8_bin NOT NULL,
  `profileRestriction` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `studentprofile`
--

INSERT INTO `studentprofile` (`profileID`, `studID`, `studDescription`, `studPicture`, `profileRestriction`, `date`) VALUES
(5, 18, 'iam here', 'Deluxe', 0, '2018-08-22 11:01:25'),
(7, 17, 'Im There', '17Deluxe.jpg', 0, '2018-08-22 16:33:34');

-- --------------------------------------------------------

--
-- Table structure for table `viewing`
--

CREATE TABLE `viewing` (
  `viewBookingID` int(11) NOT NULL,
  `viewerName` varchar(255) COLLATE utf8_bin NOT NULL,
  `viewerEmail` varchar(255) COLLATE utf8_bin NOT NULL,
  `viewerPhone` varchar(255) COLLATE utf8_bin NOT NULL,
  `viewDate` datetime NOT NULL,
  `viewStatus` int(11) NOT NULL,
  `scheduledDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `viewing`
--

INSERT INTO `viewing` (`viewBookingID`, `viewerName`, `viewerEmail`, `viewerPhone`, `viewDate`, `viewStatus`, `scheduledDate`) VALUES
(1, 'Moises', 'moisesnt2@gmail.com', '8348666889', '2018-08-31 00:00:00', 1, '2018-08-30 01:35:11'),
(2, 'Moises', 'moisesnt2@gmail.com', '8348666889', '2018-08-31 12:00:00', 1, '2018-08-30 01:37:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Accommodation`
--
ALTER TABLE `Accommodation`
  ADD PRIMARY KEY (`accID`),
  ADD UNIQUE KEY `Unique` (`accResgistratioonNo`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminID`),
  ADD UNIQUE KEY `unique` (`adminEmail`),
  ADD KEY `accID` (`accID`);

--
-- Indexes for table `helpticket`
--
ALTER TABLE `helpticket`
  ADD PRIMARY KEY (`helpID`);

--
-- Indexes for table `login_test`
--
ALTER TABLE `login_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payID`),
  ADD KEY `stupid` (`studID`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`),
  ADD UNIQUE KEY `roomName` (`roomName`);

--
-- Indexes for table `roomMarket`
--
ALTER TABLE `roomMarket`
  ADD PRIMARY KEY (`roomMarketID`),
  ADD KEY `Foreign` (`roomID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`studID`),
  ADD UNIQUE KEY `studEmail` (`studEmail`);

--
-- Indexes for table `studentprofile`
--
ALTER TABLE `studentprofile`
  ADD PRIMARY KEY (`profileID`),
  ADD UNIQUE KEY `Unique` (`studID`);

--
-- Indexes for table `viewing`
--
ALTER TABLE `viewing`
  ADD PRIMARY KEY (`viewBookingID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Accommodation`
--
ALTER TABLE `Accommodation`
  MODIFY `accID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `helpticket`
--
ALTER TABLE `helpticket`
  MODIFY `helpID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login_test`
--
ALTER TABLE `login_test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `roomMarket`
--
ALTER TABLE `roomMarket`
  MODIFY `roomMarketID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `studID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `studentprofile`
--
ALTER TABLE `studentprofile`
  MODIFY `profileID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `viewing`
--
ALTER TABLE `viewing`
  MODIFY `viewBookingID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `studentprofile`
--
ALTER TABLE `studentprofile`
  ADD CONSTRAINT `studentprofile_ibfk_1` FOREIGN KEY (`studID`) REFERENCES `student` (`studID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
