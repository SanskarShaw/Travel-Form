-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2023 at 03:21 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel info`
--

-- --------------------------------------------------------

--
-- Table structure for table `student info`
--

CREATE TABLE `student info` (
  `SL NO.` int(3) NOT NULL,
  `First Name` varchar(20) NOT NULL,
  `Middle Name` varchar(20) DEFAULT NULL,
  `Last Name` varchar(20) NOT NULL,
  `Age` int(3) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Year of Study` varchar(5) NOT NULL,
  `Enrollment No.` bigint(20) NOT NULL,
  `Registration No.` bigint(20) NOT NULL,
  `Email ID` varchar(40) NOT NULL,
  `Contact No.` bigint(10) NOT NULL,
  `Address` text NOT NULL,
  `Date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student info`
--

INSERT INTO `student info` (`SL NO.`, `First Name`, `Middle Name`, `Last Name`, `Age`, `Gender`, `Year of Study`, `Enrollment No.`, `Registration No.`, `Email ID`, `Contact No.`, `Address`, `Date`) VALUES
(1, 'Sanskar', '', 'Shaw', 21, 'Male', '3rd', 12020009001227, 304202000900227, 'sanskarcool29@gmail.com', 6290470170, '20/1/2 Panchanantala Road Athpur,West Bengal', '2023-02-12 13:11:42'),
(2, 'Rohan', '', 'Karmakar', 21, 'Male', '3rd', 12020009001209, 3042020009011213, 'rkkarmakar.19@gmail.com', 9331722036, 'Balurghat', '2023-02-12 14:48:11'),
(3, 'Debanjan', 'Guha', 'Thakurata', 21, 'Male', '3rd', 12020009000001, 304202000900001, 'debanjan.21@gmail.com', 6981957370, 'Sodpur', '2023-02-12 14:50:07'),
(4, 'Vivek', '', 'Rajbhar', 20, 'Male', '2nd', 12913800112345, 3042020009011213, 'vivek.raj@gmail.com', 8710027820, 'Athpur west bengal', '2023-02-12 19:19:48'),
(5, 'Brindew', '', 'Singh', 21, 'Male', '3rd', 12020009001001, 304202000900100, 'brindew.singh01@gmail.com', 6547897860, 'Shyamnagar', '2023-03-05 19:31:01'),
(9, 'Manas', 'Ranjan', 'Gupta', 21, 'Male', '3rd', 12020009001220, 304202000900200, 'manas.gupta12@gmail.com', 9865034590, 'Kankinara', '2023-03-05 19:50:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student info`
--
ALTER TABLE `student info`
  ADD PRIMARY KEY (`SL NO.`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student info`
--
ALTER TABLE `student info`
  MODIFY `SL NO.` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
