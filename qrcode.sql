-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2022 at 12:30 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qrcode`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `admin_id` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `admin_id`, `username`, `password`, `fname`, `lname`, `email`, `photo`, `created_on`) VALUES
(6, 'ZAB715640329', 'rcarta', '$2y$10$hfdKukwW7Xip1X7SsnAC.OrOxMYQOphuI5vh1.c18ChHsqwtHkx8e', 'Reynor', 'Carta', 'cartarenor27@gmail.com', 'user8-128x128.jpg', '2022-03-29');

-- --------------------------------------------------------

--
-- Table structure for table `facility_table`
--

CREATE TABLE `facility_table` (
  `id` int(11) NOT NULL,
  `password` varchar(100) NOT NULL,
  `facility_name` varchar(100) NOT NULL,
  `location` varchar(255) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facility_table`
--

INSERT INTO `facility_table` (`id`, `password`, `facility_name`, `location`, `photo`) VALUES
(6, '$2y$10$A8kmfG2J1nxxQ05P4iKv3./9ISO7ebq4J4T8YYrRgTPOH40NeiCsy', 'Main Gate', 'Main Entrance Building ', 'defaultprofile.png'),
(7, '$2y$10$GDoFSdHB1NfFuZ9eSw7yC.HqbNHxujHwSjwFryCDOl00X23.Yd3mO', 'Comp. Lab', '2nd Building B', 'defaultprofile.png');

-- --------------------------------------------------------

--
-- Table structure for table `person_table`
--

CREATE TABLE `person_table` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(100) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `department` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `qrcode` varchar(100) NOT NULL,
  `course` varchar(100) NOT NULL,
  `yr_level` varchar(100) NOT NULL,
  `tracing_student` tinyint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person_table`
--

INSERT INTO `person_table` (`id`, `employee_id`, `fname`, `lname`, `department`, `address`, `contact`, `photo`, `qrcode`, `course`, `yr_level`, `tracing_student`) VALUES
(16, '200803-01557', 'Renor', 'Carta', 'ICT Department', '9011 Purok 1 Lamot 2 Calauan, Laguna', '0970303562', 'user1-128x128.jpg', 'images/.QR-1217637031.png', '', '', 0),
(38, '0561231', 'Rvbkjnd', 'ykuvbuy', 'ICT Dept.', 'ohuu7guygy', '166446', 'defaultprofile.png', 'images/.ykuvbuy, Rvbkjnd.png', '', '', 0),
(39, '156155545', 'Sample', 'Example', '', 'hbjybjjbuyyg', '45155', 'defaultprofile.png', 'images/.Example, Sample.png', 'BSIS', 'Fourth Year', 1),
(40, '4641', 'nugjklkjl', 'hbyug.kkn', '', 'jhvgbknli', '199265', 'defaultprofile.png', 'images/.hbyug.kkn, nugjklkjl.png', 'BSE', 'First Year', 1);

-- --------------------------------------------------------

--
-- Table structure for table `record_table`
--

CREATE TABLE `record_table` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(100) NOT NULL,
  `facility_name` varchar(100) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `yr_level` varchar(100) NOT NULL,
  `course` varchar(100) NOT NULL,
  `DATELOG` date NOT NULL,
  `TIMEIN` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `record_table`
--

INSERT INTO `record_table` (`id`, `employee_id`, `facility_name`, `fullname`, `department`, `yr_level`, `course`, `DATELOG`, `TIMEIN`) VALUES
(1, '16466', 'Main Gate', 'guyyggy, huuygg', '', 'First Year', 'BSE', '2022-04-06', '11:31:55'),
(2, '200803-01557', 'Library', 'Carta, Renor', 'ICT Department', '', '', '2022-04-06', '11:32:20'),
(3, '0561231', 'Library', 'ykuvbuy, Rvbkjnd', 'ICT Dept.', '', '', '2022-04-08', '11:12:19'),
(4, '156155545', 'Main Gate', 'Example, Sample', '', 'Fourth Year', 'BSIS', '2022-04-08', '11:16:08'),
(5, '156155545', 'Comp. Lab', 'Example, Sample', '', 'Fourth Year', 'BSIS', '2022-04-08', '11:20:47'),
(6, '156155545', 'Comp. Lab', 'Example, Sample', '', 'Fourth Year', 'BSIS', '2022-04-08', '11:23:07'),
(7, '156155545', 'Comp. Lab', 'Example, Sample', '', 'Fourth Year', 'BSIS', '2022-04-08', '11:23:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facility_table`
--
ALTER TABLE `facility_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `person_table`
--
ALTER TABLE `person_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `record_table`
--
ALTER TABLE `record_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `facility_table`
--
ALTER TABLE `facility_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `person_table`
--
ALTER TABLE `person_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `record_table`
--
ALTER TABLE `record_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
