-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 16, 2022 at 02:18 AM
-- Server version: 8.0.30
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
CREATE TABLE IF NOT EXISTS `patient` (
  `patientID` varchar(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `contactNumber` varchar(10) DEFAULT NULL,
  `age` varchar(3) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `bloodGroup` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `anyMajorDisease` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`patientID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patientID`, `name`, `contactNumber`, `age`, `gender`, `bloodGroup`, `address`, `anyMajorDisease`) VALUES
('1', 'L.kumara', '0715426896', '34', 'Male', 'A+', 'gampaha', 'no'),
('2', 'nimali perera', '0754824548', '26', 'Female', 'O+', 'matara', 'no'),
('3', 'aruna', '15184848', '25', 'Male', 'AB+', 'ampara', 'mo'),
('4', 'chamal', '0714556854', '35', 'Male', 'O+', 'thangalle', 'no'),
('5', 'kamal', '0711154856', '36', 'Male', 'B-', 'colombu', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `patientreport`
--

DROP TABLE IF EXISTS `patientreport`;
CREATE TABLE IF NOT EXISTS `patientreport` (
  `patientID` varchar(10) NOT NULL,
  `symptom` varchar(200) DEFAULT NULL,
  `diagnosis` varchar(200) DEFAULT NULL,
  `medicines` varchar(200) DEFAULT NULL,
  `wardReq` varchar(5) DEFAULT NULL,
  `typeward` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`patientID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `patientreport`
--

INSERT INTO `patientreport` (`patientID`, `symptom`, `diagnosis`, `medicines`, `wardReq`, `typeward`) VALUES
('1', 'headache', '', 'penadol', 'NO', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
