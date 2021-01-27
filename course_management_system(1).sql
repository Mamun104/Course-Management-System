-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2019 at 08:05 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `course_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `c_code` varchar(30) NOT NULL,
  `c_title` varchar(50) NOT NULL,
  `credit_hour` double(4,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`c_code`, `c_title`, `credit_hour`) VALUES
('CSE2015', 'Programming Language II (Java)', 3.000),
('CSE2016', 'Programming Language II (Java) Lab', 1.000),
('CSE2021', 'Algorithm', 3.000),
('CSE2026', 'Algorithm Lab', 1.000),
('CSE3011', 'Database Design', 3.000),
('CSE3012', 'Database Design Lab', 1.000),
('CSE4011', 'Computer Networking', 3.000),
('CSE4012', 'Computer Networking Lab', 1.000),
('ENG1002', 'Intermediate Compostion', 3.000),
('Math1024', 'Co-ordinate Geometry and Vector Analysis', 3.000),
('Math1034', 'Differential & Integral Calculus', 3.000);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept_ini` varchar(20) NOT NULL,
  `dept_name` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_ini`, `dept_name`) VALUES
('Archi', 'Architecture'),
('BNG', 'Bnagla'),
('CSE', 'Computer Science and Engineering '),
('EEE', 'Electrical & Electronic Engineering'),
('ENG', 'English'),
('ICE', 'Information & Communication Engineering');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `f_ini` varchar(20) NOT NULL,
  `f_name` varchar(20) NOT NULL,
  `dept_ini` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`f_ini`, `f_name`, `dept_ini`) VALUES
('AK', 'Abdul Karim', 'ENG'),
('JB', 'Jahanara Begum', 'ENG'),
('KIA', 'Kimia Aksir', 'CSE'),
('KMH', 'Monirul Hasan', 'CSE'),
('SM', 'Shahriar Manzoor', 'CSE');

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE `grade` (
  `l_grade` varchar(20) NOT NULL,
  `n_grade` double(9,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grade`
--

INSERT INTO `grade` (`l_grade`, `n_grade`) VALUES
('A', 3.75),
('A+', 4.00),
('A-', 3.50),
('B', 3.00),
('B+', 3.25),
('B-', 2.75),
('C', 2.25),
('C+', 2.50),
('D', 2.00),
('F', 0.00),
('I', 0.00),
('W', 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `registation`
--

CREATE TABLE `registation` (
  `semester_no` int(30) DEFAULT NULL,
  `s_id` int(20) DEFAULT NULL,
  `c_code` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registation`
--

INSERT INTO `registation` (`semester_no`, `s_id`, `c_code`) VALUES
(51, 9002, 'CSE2015'),
(51, 9002, 'CSE2016'),
(51, 9002, 'ENG1002'),
(51, 9008, 'CSE2015'),
(51, 9008, 'CSE2016'),
(51, 9008, 'CSE3012'),
(51, 9010, 'CSE3011'),
(51, 9010, 'CSE3012'),
(51, 9001, 'CSE2015'),
(51, 9001, 'CSE2016'),
(51, 9001, 'CSE3011'),
(51, 9001, 'CSE3012');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `s_id` int(20) DEFAULT NULL,
  `c_code` varchar(20) DEFAULT NULL,
  `l_grade` varchar(20) DEFAULT NULL,
  `f_ini` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`s_id`, `c_code`, `l_grade`, `f_ini`) VALUES
(9001, 'CSE2015', 'A+', 'KMH'),
(9001, 'CSE2016', 'A', 'KMH'),
(9001, 'CSE3011', 'A+', 'KIA'),
(9001, 'CSE3012', 'A-', 'KIA'),
(9002, 'CSE2015', 'A-', 'KMH'),
(9002, 'CSE2016', 'A+', 'KMH'),
(9002, 'ENG1002', 'A', 'JB');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `s_id` int(30) NOT NULL,
  `s_name` varchar(70) NOT NULL,
  `dept_ini` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`s_id`, `s_name`, `dept_ini`) VALUES
(9001, 'Mamun', 'CSE'),
(9002, 'Jamal', 'CSE'),
(9003, 'Rana', 'CSE'),
(9004, 'Masum', 'CSE'),
(9005, 'Raihan', 'EEE'),
(9006, 'Poly', 'Archi'),
(9007, 'Koly', 'Archi'),
(9008, 'Jolly', 'EEE'),
(9010, 'Kamrul', 'ENG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`c_code`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_ini`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`f_ini`),
  ADD KEY `dept_ini` (`dept_ini`);

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`l_grade`);

--
-- Indexes for table `registation`
--
ALTER TABLE `registation`
  ADD KEY `s_id` (`s_id`),
  ADD KEY `c_code` (`c_code`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD KEY `s_id` (`s_id`),
  ADD KEY `c_code` (`c_code`),
  ADD KEY `l_grade` (`l_grade`),
  ADD KEY `f_ini` (`f_ini`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`s_id`),
  ADD KEY `dept_ini` (`dept_ini`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `faculty`
--
ALTER TABLE `faculty`
  ADD CONSTRAINT `faculty_ibfk_1` FOREIGN KEY (`dept_ini`) REFERENCES `department` (`dept_ini`);

--
-- Constraints for table `registation`
--
ALTER TABLE `registation`
  ADD CONSTRAINT `registation_ibfk_1` FOREIGN KEY (`s_id`) REFERENCES `student` (`s_id`),
  ADD CONSTRAINT `registation_ibfk_2` FOREIGN KEY (`c_code`) REFERENCES `course` (`c_code`);

--
-- Constraints for table `result`
--
ALTER TABLE `result`
  ADD CONSTRAINT `result_ibfk_1` FOREIGN KEY (`s_id`) REFERENCES `student` (`s_id`),
  ADD CONSTRAINT `result_ibfk_2` FOREIGN KEY (`c_code`) REFERENCES `course` (`c_code`),
  ADD CONSTRAINT `result_ibfk_3` FOREIGN KEY (`l_grade`) REFERENCES `grade` (`l_grade`),
  ADD CONSTRAINT `result_ibfk_4` FOREIGN KEY (`f_ini`) REFERENCES `faculty` (`f_ini`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`dept_ini`) REFERENCES `department` (`dept_ini`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
