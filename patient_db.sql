-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2025 at 05:03 AM
-- Server version: 8.0.34
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `patient_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `forms_data`
--

CREATE TABLE `forms_data` (
  `id` int NOT NULL,
  `patient_id` int DEFAULT NULL,
  `form_json` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `dob` date DEFAULT NULL,
  `pain` int DEFAULT '0',
  `numbness` int DEFAULT '0',
  `tingling` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `name`, `dob`, `pain`, `numbness`, `tingling`) VALUES
(1, 'Unknown', NULL, 0, 0, 0),
(2, 'Unknown', NULL, 0, 0, 0),
(3, 'Unknown', NULL, 0, 0, 0),
(4, 'Unknown', NULL, 0, 0, 0),
(5, 'Unknown', NULL, 0, 0, 0),
(6, 'Unknown', NULL, 0, 0, 0),
(7, 'Unknown', NULL, 0, 0, 0),
(8, 'Unknown', NULL, 0, 0, 0),
(9, 'Unknown', NULL, 0, 0, 0),
(10, 'Unknown', NULL, 0, 0, 0),
(11, 'Unknown', NULL, 0, 0, 0),
(12, 'Unknown', NULL, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `forms_data`
--
ALTER TABLE `forms_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patient_id` (`patient_id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `forms_data`
--
ALTER TABLE `forms_data`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `forms_data`
--
ALTER TABLE `forms_data`
  ADD CONSTRAINT `forms_data_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
