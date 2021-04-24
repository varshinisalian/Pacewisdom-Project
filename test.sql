-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2021 at 02:42 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_details`
--

CREATE TABLE `admin_details` (
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `insp_id` int(11) DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `person_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_details`
--

INSERT INTO `admin_details` (`email`, `password`, `insp_id`, `patient_id`, `person_id`) VALUES
('admin1@gmail.com', 'admin1', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `health_inspector`
--

CREATE TABLE `health_inspector` (
  `insp_id` int(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `office_add` varchar(30) NOT NULL,
  `pincode` int(10) NOT NULL,
  `off_phone` int(20) NOT NULL,
  `percontact` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `health_inspector`
--

INSERT INTO `health_inspector` (`insp_id`, `name`, `office_add`, `pincode`, `off_phone`, `percontact`) VALUES
(200, 'Tushar', 'Mangalore', 574142, 2563756, '9742365348'),
(201, 'Praneeth', 'Udupi', 574118, 2543674, '6362456783'),
(202, 'Raksha', 'Udupi', 576101, 2564760, '8946537280'),
(203, 'Nidhi', 'Mangalore', 574173, 2574560, '9148883144'),
(204, 'Chirag', 'Bangalore', 560008, 2574360, '9663803178'),
(205, 'Nishmitha', 'Bangalore', 560004, 2534760, '9663452671'),
(207, 'Nisha', 'Bangalore', 530068, 2647360, '9876234561'),
(208, 'Navya', 'Mangalore', 575008, 2543330, '9741364545'),
(209, 'Rathan', 'Udupi', 576104, 2753490, '9712398790');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `patient_id` int(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `age` int(10) NOT NULL,
  `current_cond` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `pincode` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patient_id`, `name`, `age`, `current_cond`, `address`, `phone`, `pincode`) VALUES
(1000, 'Robert', 34, 'Under Treatment', 'Mangalore', '8723456190', '574144'),
(1001, 'Pearson', 45, 'Cured', 'Mangalore', '7778887676', '575001'),
(1002, 'Carl', 24, 'Cured', 'Bangalore', '9988045648', '560004'),
(1003, 'Steven', 11, 'Under Treatment', 'Udupi', '7345264356', '574118'),
(1004, 'Seifert', 45, 'Under Treatment', 'Mangalore', '6767678943', '574151'),
(1005, 'Mitchell', 65, 'Cured', 'Udupi', '9891755430', '576102'),
(1006, 'Json', 32, 'Under Treatment', 'Bangalore', '9897654301', '560011'),
(1007, 'Sam', 38, 'Under Treatment', 'Bangalore', '7654987601', '560023'),
(1008, 'Curran', 41, 'Under Treatment', 'Udupi', '9741323243', '576102'),
(1009, 'Tom', 25, 'Cured', 'Udupi', '9880884540', '576108');

-- --------------------------------------------------------

--
-- Table structure for table `quarantine`
--

CREATE TABLE `quarantine` (
  `person_id` int(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `age` int(20) NOT NULL,
  `start_date` varchar(20) NOT NULL,
  `end_date` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `pincode` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quarantine`
--

INSERT INTO `quarantine` (`person_id`, `name`, `age`, `start_date`, `end_date`, `address`, `phone`, `pincode`) VALUES
(1, 'Sachin', 48, '4/2/2020', '4/15/2020', 'Mangalore', '9148844080', '574142'),
(2, 'Virat', 32, '4/2/2020', '4/15/2020', 'Bangalore', '9741369870', '530068'),
(3, 'Sharma', 38, '4/3/2020', '4/16/2020', 'Udupi', '9876543210', '576104'),
(4, 'Mahendra', 45, '4/5/2020', '4/18/2020', 'Udupi', '9753186420', '574118'),
(5, 'Pandey', 18, '4/15/2020', '4/28/2020', 'Mangalore', '8765439201', '574173'),
(6, 'Jadhav', 56, '4/15/2020', '4/28/2020', 'Bangalore', '8976323280', '530068'),
(7, 'Suresh', 44, '4/17/2020', '4/30/2020', 'Udupi', '7977786452', '576104'),
(9, 'Jayadev', 46, '4/29/2020', '5/12/2020', 'Mangalore', '9546023415', '574173'),
(10, 'Rishabh', 28, '5/3/2020', '5/16/2020', 'Udupi', '6263666902', '574118');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `name` varchar(20) NOT NULL,
  `password` varchar(8) NOT NULL,
  `email` varchar(30) NOT NULL,
  `insp_id` int(11) DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `person_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`name`, `password`, `email`, `insp_id`, `patient_id`, `person_id`) VALUES
('Admin', 'admin', 'admin', NULL, NULL, NULL),
('sabeel', '123', 'sab13@gmail.com', NULL, NULL, NULL),
('Shahila', '1234', 'sh14@gmail.com', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_details`
--
ALTER TABLE `admin_details`
  ADD PRIMARY KEY (`email`),
  ADD KEY `insp_id` (`insp_id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `person_id` (`person_id`);

--
-- Indexes for table `health_inspector`
--
ALTER TABLE `health_inspector`
  ADD PRIMARY KEY (`insp_id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patient_id`);

--
-- Indexes for table `quarantine`
--
ALTER TABLE `quarantine`
  ADD PRIMARY KEY (`person_id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`email`),
  ADD KEY `insp_id` (`insp_id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `person_id` (`person_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_details`
--
ALTER TABLE `admin_details`
  ADD CONSTRAINT `admin_details_ibfk_1` FOREIGN KEY (`insp_id`) REFERENCES `health_inspector` (`insp_id`),
  ADD CONSTRAINT `admin_details_ibfk_2` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`),
  ADD CONSTRAINT `admin_details_ibfk_3` FOREIGN KEY (`person_id`) REFERENCES `quarantine` (`person_id`);

--
-- Constraints for table `user_details`
--
ALTER TABLE `user_details`
  ADD CONSTRAINT `user_details_ibfk_1` FOREIGN KEY (`insp_id`) REFERENCES `health_inspector` (`insp_id`),
  ADD CONSTRAINT `user_details_ibfk_2` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`),
  ADD CONSTRAINT `user_details_ibfk_3` FOREIGN KEY (`person_id`) REFERENCES `quarantine` (`person_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
