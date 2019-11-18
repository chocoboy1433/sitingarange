-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2019 at 04:30 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trial`
--

-- --------------------------------------------------------

--
-- Table structure for table `admintable`
--

CREATE TABLE `admintable` (
  `adminid` int(10) NOT NULL,
  `adminname` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `non` int(11) NOT NULL,
  `adminemail` varchar(100) NOT NULL,
  `image` longblob NOT NULL,
  `imgname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admintable`
--

INSERT INTO `admintable` (`adminid`, `adminname`, `password`, `fullname`, `non`, `adminemail`, `image`, `imgname`) VALUES
(1, 'sanjit', 'admin', 'sanjitans', 2, '1', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `arrangetable`
--

CREATE TABLE `arrangetable` (
  `year` varchar(3) NOT NULL,
  `department` varchar(50) NOT NULL,
  `enrollnumber` int(20) NOT NULL,
  `subject` varchar(60) NOT NULL,
  `classroom` varchar(8) NOT NULL,
  `examdate` date NOT NULL,
  `starttime` varchar(6) NOT NULL,
  `endtime` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `astable`
--

CREATE TABLE `astable` (
  `a` int(2) NOT NULL,
  `b` int(2) NOT NULL,
  `c` int(2) NOT NULL,
  `d` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `astable`
--

INSERT INTO `astable` (`a`, `b`, `c`, `d`) VALUES
(1, 10, 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `studenttable`
--

CREATE TABLE `studenttable` (
  `srno` int(3) DEFAULT NULL,
  `program` varchar(6) DEFAULT NULL,
  `department` varchar(22) DEFAULT NULL,
  `year` varchar(3) DEFAULT NULL,
  `rollno` int(8) NOT NULL,
  `stdname` varchar(33) DEFAULT NULL,
  `batch` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `trisub`
--

CREATE TABLE `trisub` (
  `year` varchar(3) NOT NULL,
  `department` varchar(30) NOT NULL,
  `enrollnumber` int(20) NOT NULL,
  `classroom` varchar(10) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `examdate` date DEFAULT NULL,
  `starttime` varchar(11) NOT NULL,
  `endtime` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `viewcount`
--

CREATE TABLE `viewcount` (
  `pagename` varchar(100) NOT NULL,
  `views` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `viewcount`
--

INSERT INTO `viewcount` (`pagename`, `views`) VALUES
('branchwisedata', 44),
('individualdata', 24),
('lecturehalldata', 56);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `studenttable`
--
ALTER TABLE `studenttable`
  ADD PRIMARY KEY (`rollno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
