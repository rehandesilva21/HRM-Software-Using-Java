-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 01, 2024 at 07:06 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `System_Details`
--

-- --------------------------------------------------------

--
-- Table structure for table `Add_User`
--

CREATE TABLE `Add_User` (
  `Name` varchar(20) NOT NULL,
  `Department` varchar(20) NOT NULL,
  `UID` varchar(10) NOT NULL,
  `Phone_Number` varchar(10) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Password` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Add_User`
--

INSERT INTO `Add_User` (`Name`, `Department`, `UID`, `Phone_Number`, `Email`, `Password`) VALUES
('Mark', 'Design', 'UD001', '079806754', 'mark.wood@gmail.com', 'UDS@498'),
('Jesica', 'Design', 'UD002', '34256298', 'jesi234@gmail.com', 'UD0@#456'),
('utyuwyw', 'wewew', 'UD003', 'eee', 'efefefe', 'efefef'),
('Rehan', 'Human Resource', 'UHR001', '2345789', 'wishwa@gmail.com', 'UHR@123'),
('Steiphen', 'Human Resource', 'UHR002', '67545638', 'steiphen@gmail.com', 'UHR3@89*'),
('Eric', 'Human Resource', 'UHR004', '56308362', 'eric@gmail.com', 'erhr21'),
('Erica', 'Human Resource', 'UHRA001', '090789567', 'erica@gmail.com', 'UHRA@345'),
('John', 'Marketing', 'UM001', '67453097', 'johndoe@gmail.com', 'UMR@67&');

-- --------------------------------------------------------

--
-- Table structure for table `Departments`
--

CREATE TABLE `Departments` (
  `Branch` varchar(20) NOT NULL,
  `Department` varchar(20) NOT NULL,
  `Code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Departments`
--

INSERT INTO `Departments` (`Branch`, `Department`, `Code`) VALUES
('Colombo', 'Design', 'CD0001'),
('Colombo', 'Design', 'CD0002'),
('Colombo', 'Human Resource', 'CHR0001'),
('Colombo', 'Marketing', 'CM0001'),
('Colombo', 'Marketing', 'CM0002'),
('Galle', 'Design', 'GD0001'),
('Galle', 'Design', 'GD0002'),
('Galle', 'Human Resource', 'GHR0001'),
('Galle ', 'Marketing', 'GM0001'),
('Hambanthota', 'Design', 'HD0001'),
('Hambanthota', 'Human Resource', 'HHR0001'),
('Hambanthota', 'Marketing', 'HM0001'),
('Jaffna', 'Design', 'JD0001'),
('Jaffna', 'Human Resource', 'JHR0001'),
('Jaffna', 'Management', 'JM0001'),
('Matara', 'Design', 'MD0001'),
('Matara', 'Human Resource', 'MHR0001');

-- --------------------------------------------------------

--
-- Table structure for table `Employees`
--

CREATE TABLE `Employees` (
  `Name` varchar(20) NOT NULL,
  `Department_Code` varchar(10) NOT NULL,
  `EPF_no` varchar(10) NOT NULL,
  `Phone_No` varchar(10) NOT NULL,
  `Designation` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Employees`
--

INSERT INTO `Employees` (`Name`, `Department_Code`, `EPF_no`, `Phone_No`, `Designation`) VALUES
('Gloria', 'CD0001', 'EPF2345', '2346719', 'Designer'),
('Doe', 'HD0001', 'EPF2346', '8765479', 'Designer'),
('John', 'JM0001', 'EPF235', '983739', 'HR assistant'),
('Watson', 'MD0001', 'EPF5678', '56478399', 'Designer'),
('Erick', 'GM0001', 'EPF6790', '23764678', 'Marketer'),
('Max', 'CHR0001', 'EPF9867', '4566354', 'HR assistant');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Add_User`
--
ALTER TABLE `Add_User`
  ADD PRIMARY KEY (`UID`);

--
-- Indexes for table `Departments`
--
ALTER TABLE `Departments`
  ADD PRIMARY KEY (`Code`);

--
-- Indexes for table `Employees`
--
ALTER TABLE `Employees`
  ADD PRIMARY KEY (`EPF_no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
