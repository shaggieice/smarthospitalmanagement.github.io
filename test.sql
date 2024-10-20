-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2024 at 04:45 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'Test@12345', '08-09-2024 11:42:05 AM');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `consultancyFees` int(11) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `userStatus` int(11) DEFAULT NULL,
  `doctorStatus` int(11) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(8, 'General Physician', 3, 9, 1200, '2024-09-17', '12:15 AM', '2024-08-31 18:38:32', 1, 1, NULL),
(9, 'Homeopath', 4, 10, 700, '2024-09-16', '12:30 PM', '2024-09-01 07:00:50', 1, 1, NULL),
(10, 'General Physician', 1, 11, 500, '2024-09-23', '7:00 PM', '2024-09-08 13:22:28', 1, 1, NULL),
(11, 'Homeopath', 4, 11, 700, '2024-09-26', '7:00 PM', '2024-09-08 13:25:23', 1, 1, NULL),
(12, 'General Physician', 1, 11, 500, '2024-09-20', '7:15 PM', '2024-09-08 13:40:00', 1, 1, NULL),
(13, 'General Physician', 1, 13, 500, '2024-09-26', '7:00 PM', '2024-09-29 13:23:58', 1, 1, NULL),
(14, 'General Physician', 1, 13, 500, '2024-09-26', '7:00 PM', '2024-09-29 13:27:15', 1, 1, NULL),
(15, 'General Physician', 1, 13, 500, '2024-09-26', '7:00 PM', '2024-09-29 13:27:49', 1, 1, NULL),
(16, 'Homeopath', 4, 13, 700, '2024-09-26', '5', '2024-09-29 13:28:11', 1, 1, NULL),
(17, 'General Physician', 1, 13, 500, '2024-09-26', '5', '2024-09-29 13:38:50', 1, 1, NULL),
(18, 'General Physician', 1, 13, 500, '2024-09-26', '5', '2024-09-29 13:39:04', 1, 1, NULL),
(19, 'General Physician', 1, 13, 500, '2024-09-26', '5', '2024-09-29 13:46:54', 1, 1, NULL),
(20, 'Dermatologist', 5, 13, 200, '2024-09-26', '5', '2024-09-29 13:47:08', 1, 1, NULL),
(21, 'Dermatologist', 5, 13, 200, '2024-09-26', '5', '2024-09-29 13:47:19', 1, 1, NULL),
(22, 'Dermatologist', 5, 13, 200, '2024-09-26', '5', '2024-09-29 13:47:39', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `id` int(11) NOT NULL,
  `patient_id` varchar(100) NOT NULL,
  `services` text NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `billing`
--

INSERT INTO `billing` (`id`, `patient_id`, `services`, `total_amount`, `created_at`) VALUES
(1, '123', 'nothing', 100.00, '2024-10-08 18:19:06'),
(2, '1234', 'nursing', 600.00, '2024-10-08 18:23:23');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `docFees` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'General Physician', 'Lyndon Bermoy', 'EAST LONDON', '500', 8285703354, 'doctor1@gmail.com', '123456', '2024-09-08 06:25:37', '2024-09-08 15:42:39'),
(4, 'Homeopath', 'thomas', 'west london', '700', 25668888, 'thomas@gmail.com', '123456', '2024-09-01 07:45:09', '2024-09-08 15:42:53'),
(5, 'Dermatologist', 'Mark Henry', 'SOUTH LONDON', '200', 852888888, 'test@demo.com', '6c44e5cd17f0019c64b042e4a745412a', '2024-09-01 07:47:07', '2024-09-15 12:40:17');

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(31, NULL, 'User1375@gmail.com', 0x3a3a3100000000000000000000000000, '2024-09-01 14:32:46', NULL, 0),
(33, NULL, 'User1375@gmail.com', 0x3a3a3100000000000000000000000000, '2024-09-01 14:32:58', NULL, 0),
(35, NULL, 'User1375@gmail.com', 0x3a3a3100000000000000000000000000, '2024-09-02 16:09:32', NULL, 0),
(43, NULL, 'admin', 0x3a3a3100000000000000000000000000, '2024-09-05 15:57:12', NULL, 0),
(48, NULL, 'admin', 0x3a3a3100000000000000000000000000, '2024-09-08 14:09:22', NULL, 0),
(49, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2024-09-08 14:09:25', NULL, 1),
(50, NULL, 'aaaa2611@gmail.com', 0x3a3a3100000000000000000000000000, '2024-09-08 15:37:37', NULL, 0),
(51, NULL, 'aaaa2611@gmail.com', 0x3a3a3100000000000000000000000000, '2024-09-08 15:37:52', NULL, 0),
(52, NULL, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2024-09-08 15:41:26', NULL, 0),
(53, NULL, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2024-09-08 15:41:40', NULL, 0),
(54, NULL, 'doctor1@gmail.com', 0x3a3a3100000000000000000000000000, '2024-09-08 15:43:40', NULL, 0),
(55, NULL, 'aaaa2611@gmail.com', 0x3a3a3100000000000000000000000000, '2024-09-08 15:43:41', NULL, 0),
(56, NULL, 'doctor1@gmail.com', 0x3a3a3100000000000000000000000000, '2024-09-08 16:19:45', NULL, 0),
(57, NULL, 'doctor1@gmail.com', 0x3a3a3100000000000000000000000000, '2024-09-08 16:21:27', NULL, 0),
(58, NULL, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2024-09-08 16:37:08', NULL, 0),
(59, NULL, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2024-09-08 16:41:21', NULL, 0),
(60, 5, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2024-09-08 16:43:47', NULL, 1),
(61, 5, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2024-09-08 17:28:11', NULL, 1),
(62, 5, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2024-09-08 17:54:19', NULL, 1),
(63, 5, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2024-09-08 18:16:57', NULL, 1),
(64, NULL, 'jack123@gmail.com', 0x3a3a3100000000000000000000000000, '2024-09-12 15:38:44', NULL, 0),
(65, 5, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2024-09-12 15:38:52', NULL, 1),
(66, 5, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2024-09-15 08:31:53', NULL, 1),
(67, 5, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2024-09-15 08:39:26', NULL, 1),
(68, 5, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2024-09-15 08:52:01', NULL, 1),
(69, 5, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2024-09-15 12:51:40', NULL, 1),
(70, 5, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2024-09-15 12:52:33', NULL, 1),
(71, 5, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2024-09-15 16:22:50', '15-09-2024 09:52:57 PM', 1),
(72, 5, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2024-09-15 16:23:06', NULL, 1),
(73, 5, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2024-09-15 16:37:24', '15-09-2024 10:08:05 PM', 1),
(74, 5, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2024-09-15 16:49:11', '15-09-2024 10:19:56 PM', 1),
(75, 5, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2024-09-15 16:50:02', '15-09-2024 10:20:22 PM', 1),
(76, 5, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2024-09-15 17:40:05', '15-09-2024 11:14:02 PM', 1),
(77, 5, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2024-09-16 17:23:38', NULL, 1),
(78, 5, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2024-09-16 17:23:47', NULL, 1),
(79, 5, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2024-09-20 15:40:13', NULL, 1),
(80, 5, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2024-09-22 15:32:23', '22-09-2024 09:02:38 PM', 1),
(81, 5, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2024-10-01 17:32:24', NULL, 1),
(82, 5, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2024-10-02 15:58:03', '02-10-2024 09:28:30 PM', 1),
(83, 5, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2024-10-03 18:18:58', '03-10-2024 11:49:21 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'Gynecologist/Obstetrician', '2024-09-08 06:37:25', '2024-09-08 06:37:26'),
(2, 'General Physician', '2024-09-08 06:37:26', '2024-09-08 06:37:28'),
(3, 'Dermatologist', '2024-09-08 06:37:26', '2024-09-08 06:37:30'),
(4, 'Homeopath', '2024-09-08 06:37:30', '2024-09-08 06:37:32'),
(5, 'Ayurveda', '2024-09-08 06:37:30', '2024-09-08 06:37:33'),
(6, 'Dentist', '2024-09-08 06:37:26', '2024-09-08 06:37:35'),
(7, 'Ear-Nose-Throat (Ent) Specialist', '2024-09-08 06:37:26', '2024-09-08 06:37:38'),
(10, 'Bones Specialist demo', '2024-09-08 06:37:26', '2024-09-08 06:37:40'),
(12, 'Dermatologist', '2024-09-08 06:37:26', '2024-09-08 06:37:45'),
(13, 'Physician', '2024-09-08 06:37:26', '2024-09-08 06:37:35');

-- --------------------------------------------------------

--
-- Table structure for table `patient_feedback`
--

CREATE TABLE `patient_feedback` (
  `id` int(11) NOT NULL,
  `patient_name` varchar(255) NOT NULL,
  `patient_email` varchar(255) NOT NULL,
  `feedback_text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `is_guest` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient_feedback`
--

INSERT INTO `patient_feedback` (`id`, `patient_name`, `patient_email`, `feedback_text`, `rating`, `is_guest`) VALUES
(4, 'Jack', 'jack123@gmail.com', 'good', 4, 1),
(5, 'Jack', 'jack123@gmail.com', 'good', 4, 1),
(6, 'Jack', 'jack123@gmail.com', 'good', 5, 1),
(7, 'Jack', 'jack123@gmail.com', 'good', 5, 1),
(8, 'Jack', 'jack123@gmail.com', 'good', 5, 1),
(9, 'Jack', 'jack123@gmail.com', 'good', 5, 1),
(10, 'Jack', 'jack123@gmail.com', 'bad', 2, 1),
(11, 'user', 'user@demo.com', 'bad', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactus`
--

CREATE TABLE `tblcontactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactus`
--

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `contactno`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(1, 'test user', 'test@gmail.com', 2523523522523523, 'Hello, there is a problem with me', '2024-09-07 19:03:08', 'Test Admin Remark', '2024-09-07 19:03:10', 1),
(2, 'Lyndon Bermoy', 'serbermz2020@gmail.com', 987654321, 'I am feeling unwell', '2024-09-07 19:03:15', 'Answered', '2024-09-07 19:03:20', 1),
(4, 'demo', 'demo@gmail.com', 123456789, ' hi, this is a demo', '2024-09-07 19:03:20', 'answered', '2024-09-07 19:03:23', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicalhistory`
--

CREATE TABLE `tblmedicalhistory` (
  `ID` int(10) NOT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalPres` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblmedicalhistory`
--

INSERT INTO `tblmedicalhistory` (`ID`, `PatientID`, `BloodPressure`, `BloodSugar`, `Weight`, `Temperature`, `MedicalPres`, `CreationDate`) VALUES
(2, 3, '120/185', '80/120', '85 Kg', '101 degree', 'Fever\r\n\r\n', '2024-09-08 16:12:29'),
(3, 2, '90/120', '92/190', '86 kg', '99 deg', 'high sugar\r\n', '2024-09-08 16:12:50'),
(4, 1, '125/200', '86/120', '56 kg', '98 deg', 'blood pressure is high\r\n', '2024-09-08 02:08:09'),
(5, 1, '96/120', '98/120', '57 kg', '102 deg', 'Viral fever\r\n', '2024-09-08 16:13:20'),
(6, 4, '90/120', '120', '56', '98 F', 'Asthma ', '2024-09-08 02:08:09');

-- --------------------------------------------------------

--
-- Table structure for table `tblpatient`
--

CREATE TABLE `tblpatient` (
  `ID` int(10) NOT NULL,
  `Docid` int(10) DEFAULT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext DEFAULT NULL,
  `PatientAge` int(10) DEFAULT NULL,
  `PatientMedhis` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpatient`
--

INSERT INTO `tblpatient` (`ID`, `Docid`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `CreationDate`, `UpdationDate`) VALUES
(1, 1, 'EMILTY HARRIS', 123456, 'emily@gmail.com', 'Female', '23 oakwood Crescent', 26, 'She is diabetic patient', '2024-09-07 21:38:06', '2024-09-08 06:48:05'),
(4, 7, 'Oliver jackson', 321654, 'oliver@gmail.com', 'Male', '14 Maple Avenue, manchester', 45, 'He is long suffered by asthma', '2024-09-08 14:33:54', '2024-09-08 14:34:31'),
(5, 9, 'John williamson', 1234567890, 'john@test.com', 'male', '58 Elm Street, Brimingham', 25, 'Hydrophobia', '2024-09-07 18:49:24', '2024-09-08 16:05:49'),
(6, 0, 'Don Bermoy', 123456789, 'serbermz2020@gmail.com', 'male', '41 willow Road, Leeds', 35, 'Diagnosed of High Blood Pressure', '2024-09-08 02:08:09', '2024-09-08 02:08:10'),
(7, 5, 'aaa', 78943567, 'jack123@gmail.com', 'female', 'UK', 45, 'no', '2024-09-15 12:41:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpharmacy`
--

CREATE TABLE `tblpharmacy` (
  `id` int(11) NOT NULL,
  `MedicineName` varchar(100) NOT NULL,
  `Category` varchar(50) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `SellingPrice` decimal(10,2) NOT NULL,
  `ProfitMargin` varchar(20) DEFAULT NULL,
  `Status` varchar(20) DEFAULT 'Available'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblpharmacy`
--

INSERT INTO `tblpharmacy` (`id`, `MedicineName`, `Category`, `Quantity`, `SellingPrice`, `ProfitMargin`, `Status`) VALUES
(1, 'rantak', 'tablet', 2, 500.00, NULL, 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(37, 10, 'User1375@gmail.com', 0x3a3a3100000000000000000000000000, '2024-09-01 07:00:26', NULL, 1),
(38, 10, 'User1375@gmail.com', 0x3a3a3100000000000000000000000000, '2024-09-01 07:02:18', NULL, 1),
(39, 10, 'User1375@gmail.com', 0x3a3a3100000000000000000000000000, '2024-09-01 09:35:18', NULL, 1),
(40, 10, 'User1375@gmail.com', 0x3a3a3100000000000000000000000000, '2024-09-01 09:37:01', NULL, 1),
(41, 10, 'User1375@gmail.com', 0x3a3a3100000000000000000000000000, '2024-09-01 10:43:37', NULL, 1),
(42, 10, 'User1375@gmail.com', 0x3a3a3100000000000000000000000000, '2024-09-01 10:45:59', NULL, 1),
(43, 10, 'User1375@gmail.com', 0x3a3a3100000000000000000000000000, '2024-09-01 10:48:15', NULL, 1),
(44, 10, 'User1375@gmail.com', 0x3a3a3100000000000000000000000000, '2024-09-01 12:49:09', NULL, 1),
(46, 10, 'User1375@gmail.com', 0x3a3a3100000000000000000000000000, '2024-09-02 16:06:08', NULL, 1),
(47, 10, 'User1375@gmail.com', 0x3a3a3100000000000000000000000000, '2024-09-04 17:34:52', NULL, 1),
(49, 10, 'User1375@gmail.com', 0x3a3a3100000000000000000000000000, '2024-09-04 17:48:42', NULL, 1),
(55, NULL, 'admin', 0x3a3a3100000000000000000000000000, '2024-09-08 13:17:26', NULL, 0),
(56, NULL, 'User1375@gmail.com', 0x3a3a3100000000000000000000000000, '2024-09-08 13:18:32', NULL, 0),
(57, 11, 'aaaa2611@gmail.com', 0x3a3a3100000000000000000000000000, '2024-09-08 13:22:07', NULL, 1),
(58, 11, 'aaaa2611@gmail.com', 0x3a3a3100000000000000000000000000, '2024-09-08 13:39:17', NULL, 1),
(59, 11, 'aaaa2611@gmail.com', 0x3a3a3100000000000000000000000000, '2024-09-08 15:05:38', NULL, 1),
(60, 12, 'ronadlo1@gmail.com', 0x3a3a3100000000000000000000000000, '2024-09-08 15:48:51', NULL, 1),
(61, NULL, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2024-09-08 17:15:38', NULL, 0),
(62, NULL, 'ronadlo@gmail.com', 0x3a3a3100000000000000000000000000, '2024-09-08 17:25:11', NULL, 0),
(63, 13, 'jack123@gmail.com', 0x3a3a3100000000000000000000000000, '2024-09-08 17:26:47', NULL, 1),
(64, NULL, 'ronadlo@gmail.com', 0x3a3a3100000000000000000000000000, '2024-09-08 18:09:34', NULL, 0),
(65, NULL, 'ronadlo@gmail.com', 0x3a3a3100000000000000000000000000, '2024-09-08 18:09:43', NULL, 0),
(66, NULL, 'ronadlo@gmail.com', 0x3a3a3100000000000000000000000000, '2024-09-08 18:12:04', NULL, 0),
(67, NULL, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2024-09-08 18:13:08', NULL, 0),
(68, 13, 'jack123@gmail.com', 0x3a3a3100000000000000000000000000, '2024-09-08 18:13:15', NULL, 1),
(69, 13, 'jack123@gmail.com', 0x3a3a3100000000000000000000000000, '2024-09-08 18:16:22', NULL, 1),
(70, 13, 'jack123@gmail.com', 0x3a3a3100000000000000000000000000, '2024-09-08 18:26:32', NULL, 1),
(71, 13, 'jack123@gmail.com', 0x3a3a3100000000000000000000000000, '2024-09-08 18:27:53', NULL, 1),
(72, 13, 'jack123@gmail.com', 0x3a3a3100000000000000000000000000, '2024-09-15 07:49:29', NULL, 1),
(73, 13, 'jack123@gmail.com', 0x3a3a3100000000000000000000000000, '2024-09-15 12:53:11', NULL, 1),
(74, 13, 'jack123@gmail.com', 0x3a3a3100000000000000000000000000, '2024-09-15 16:24:59', '15-09-2024 09:55:02 PM', 1),
(75, 13, 'jack123@gmail.com', 0x3a3a3100000000000000000000000000, '2024-09-15 16:25:08', NULL, 1),
(76, 13, 'jack123@gmail.com', 0x3a3a3100000000000000000000000000, '2024-09-15 16:38:46', '15-09-2024 10:19:04 PM', 1),
(77, 13, 'jack123@gmail.com', 0x3a3a3100000000000000000000000000, '2024-09-15 17:44:10', '15-09-2024 11:15:43 PM', 1),
(78, 13, 'jack123@gmail.com', 0x3a3a3100000000000000000000000000, '2024-09-16 16:14:06', '16-09-2024 10:17:24 PM', 1),
(79, 13, 'jack123@gmail.com', 0x3a3a3100000000000000000000000000, '2024-09-16 17:23:14', NULL, 1),
(80, 13, 'jack123@gmail.com', 0x3a3a3100000000000000000000000000, '2024-09-16 17:49:23', NULL, 1),
(81, 13, 'jack123@gmail.com', 0x3a3a3100000000000000000000000000, '2024-09-17 17:32:41', NULL, 1),
(82, 13, 'jack123@gmail.com', 0x3a3a3100000000000000000000000000, '2024-09-17 17:32:41', '17-09-2024 11:03:19 PM', 1),
(83, 13, 'jack123@gmail.com', 0x3a3a3100000000000000000000000000, '2024-09-20 14:50:17', '20-09-2024 09:10:04 PM', 1),
(84, 13, 'jack123@gmail.com', 0x3a3a3100000000000000000000000000, '2024-09-20 15:48:01', NULL, 1),
(85, 13, 'jack123@gmail.com', 0x3a3a3100000000000000000000000000, '2024-09-21 16:09:10', NULL, 1),
(86, 13, 'jack123@gmail.com', 0x3a3a3100000000000000000000000000, '2024-09-22 15:28:28', NULL, 1),
(87, 13, 'jack123@gmail.com', 0x3a3a3100000000000000000000000000, '2024-09-22 15:31:42', '22-09-2024 09:02:11 PM', 1),
(88, 13, 'jack123@gmail.com', 0x3a3a3100000000000000000000000000, '2024-09-24 17:19:24', NULL, 1),
(89, 13, 'jack123@gmail.com', 0x3a3a3100000000000000000000000000, '2024-09-29 13:23:38', NULL, 1),
(90, 13, 'jack123@gmail.com', 0x3a3a3100000000000000000000000000, '2024-09-30 17:19:40', NULL, 1),
(91, NULL, 'ronadlo@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-01 17:35:17', NULL, 0),
(92, NULL, 'ronadlo@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-01 17:35:45', NULL, 0),
(93, 14, 'user@demo.com', 0x3a3a3100000000000000000000000000, '2024-10-01 17:43:45', NULL, 1),
(94, 13, 'jack123@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-02 15:36:41', '02-10-2024 09:27:54 PM', 1),
(95, 13, 'jack123@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-02 15:58:36', NULL, 1),
(96, 13, 'jack123@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-03 17:58:24', '03-10-2024 11:44:28 PM', 1),
(97, 13, 'jack123@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-03 18:19:29', NULL, 1),
(98, 13, 'jack123@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-07 17:30:57', NULL, 1),
(99, 13, 'jack123@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-08 17:45:48', NULL, 1),
(100, 15, 'jas3@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-17 15:37:26', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(11, 'ronaldo', 'Uunited kinddom', 'Lonfon', 'male', 'ronadlo@gmail.com', '12345678', '2024-09-08 13:21:59', '2024-09-08 17:24:59'),
(12, 'Poul', 'UK', 'London', 'male', 'ronadlo1@gmail.com', '25f9e794323b453885f5181f1b624d0b', '2024-09-08 15:48:37', NULL),
(13, 'Jack', 'UK', 'London', 'male', 'jack123@gmail.com', '25f9e794323b453885f5181f1b624d0b', '2024-09-08 17:26:39', NULL),
(14, 'User', 'UK', 'London', 'male', 'user@demo.com', '80ec08504af83331911f5882349af59d', '2024-10-01 17:43:36', NULL),
(15, 'Jas', 'UK', 'London', 'male', 'jas3@gmail.com', '91f91d064cac73df0fbdf144a40fa857', '2024-10-17 15:36:24', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_feedback`
--
ALTER TABLE `patient_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpatient`
--
ALTER TABLE `tblpatient`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpharmacy`
--
ALTER TABLE `tblpharmacy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `billing`
--
ALTER TABLE `billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `patient_feedback`
--
ALTER TABLE `patient_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblpharmacy`
--
ALTER TABLE `tblpharmacy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
