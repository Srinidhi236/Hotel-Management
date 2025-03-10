-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2024 at 08:59 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `user_name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user_name`, `password`) VALUES
('rachana', '123');

-- --------------------------------------------------------

--
-- Table structure for table `admin_hall`
--

CREATE TABLE `admin_hall` (
  `booking_id` int(50) NOT NULL,
  `occasion` varchar(50) NOT NULL,
  `time` varchar(50) NOT NULL,
  `cost` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_hall`
--

INSERT INTO `admin_hall` (`booking_id`, `occasion`, `time`, `cost`) VALUES
(4, 'birthday', '12 hours', '1200.0'),
(5, 'wedding', '12hours', '2100.0');

-- --------------------------------------------------------

--
-- Table structure for table `admin_restaurant`
--

CREATE TABLE `admin_restaurant` (
  `id` int(11) NOT NULL,
  `persons` int(225) DEFAULT NULL,
  `tables` int(225) DEFAULT NULL,
  `menuList` varchar(255) DEFAULT NULL,
  `quantity` int(225) DEFAULT NULL,
  `cost` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_restaurant`
--

INSERT INTO `admin_restaurant` (`id`, `persons`, `tables`, `menuList`, `quantity`, `cost`) VALUES
(4, 1, 1, 'biryani', 2, 2000),
(5, 2, 1, 'biryani', 2, 2000);

-- --------------------------------------------------------

--
-- Table structure for table `admin_room`
--

CREATE TABLE `admin_room` (
  `u_id` int(11) NOT NULL,
  `time` varchar(225) DEFAULT NULL,
  `roomtype` varchar(255) DEFAULT NULL,
  `adults` int(255) DEFAULT NULL,
  `kids` int(255) DEFAULT NULL,
  `cost` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_room`
--

INSERT INTO `admin_room` (`u_id`, `time`, `roomtype`, `adults`, `kids`, `cost`) VALUES
(3, '12 hours', 'ac', 2, 3, 1000),
(4, '12 hours', 'ac', 2, 3, 1000),
(5, '12 hours', 'non ac', 2, 3, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `banquet_hall`
--

CREATE TABLE `banquet_hall` (
  `booking_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phonenumber` varchar(20) DEFAULT NULL,
  `occasion` varchar(255) DEFAULT NULL,
  `time` varchar(225) DEFAULT NULL,
  `cost` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `banquet_hall`
--

INSERT INTO `banquet_hall` (`booking_id`, `name`, `email`, `phonenumber`, `occasion`, `time`, `cost`) VALUES
(52, 'Rachana', 'rachana@gmail.com', '9014777726', 'birthday', '12', 600),
(53, 'sreya', 'sreya@gmail.com', '7674096394', 'wedding', '24', 2400),
(54, 'roshini', 'roshini@gmail.com', '6281479257', 'wedding', '12', 1200),
(55, 'shiva', 'shiva@gmail.com', '6281479257', 'wedding', '24', 2400),
(56, 'sreya', 'sreya@gmail.com', '07674096394', 'birthday', '12', 600);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `feedback` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `feedback`) VALUES
(1, 'sreya', 'sreya@gmail.com', 'good'),
(2, 'Gourineni Sreya', 'gourinenisreya03@gmail.com', 'good'),
(3, 'Gourineni Sreya', 'gourinenisreya03@gmail.com', 'nice'),
(4, 'Komatipalli Rachana', 'rachanakomatipalli@gmail.com', 'good'),
(5, 'rachana', 'rachanakomatipalli@gmail.com', 'Good experience'),
(6, 'shiva', 'shiva@gmail.com', 'nice '),
(7, 'Roshini', 'roshinikatkuri@gmail.com', 'good'),
(8, 'shiva', 'shiva@gmail.com', 'good');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `cardNumber` varchar(16) DEFAULT NULL,
  `expiry` varchar(7) DEFAULT NULL,
  `cvv` varchar(3) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `amount`, `cardNumber`, `expiry`, `cvv`, `date`) VALUES
(1, '5678', '234567890', '23/23', '234', '2023-12-19'),
(2, '555', '2345567', '23/23', '123', '2023-12-19'),
(3, '555', '2345567', '23/23', '123', '2023-12-19'),
(4, '6789', '2345678', '23/23', '123', '2023-12-19'),
(5, '6789', '2345678', '23/23', '123', '2023-12-19'),
(6, '200', '123456', '07/2001', '123', '2023-12-19'),
(7, NULL, NULL, NULL, NULL, NULL),
(8, NULL, NULL, NULL, NULL, NULL),
(9, NULL, NULL, NULL, NULL, NULL),
(10, NULL, NULL, NULL, NULL, NULL),
(11, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone_no` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`user_id`, `user_name`, `email`, `password`, `phone_no`) VALUES
(1, 'tukku', 'rachanakomatipalli@gmail.com', '123', '+919014777726'),
(2, 'tukku', 'rachanakomatipalli@gmail.com', '123', '+919014777726'),
(3, 'tukku', 'tukku123@gmail.com', '1234', '9014777726'),
(4, 'tukku', 'tukku123@gmail.com', '1234', '9014777726'),
(5, 'tukku', 'tukku123@gmail.com', '123', '9014777725'),
(6, 'tukku', 'chinni123456@gmail.com', '123', '9014777726'),
(7, 'rachana', 'rachanakomatipalli@gmail.com', '123', '07674096394'),
(8, '', '', '', ''),
(9, 'rachana', 'rachanakomatipalli@gmail.com', '123', '07674096394'),
(10, 'rachana', 'rachanakomatipalli@gmail.com', '123', '07674096394'),
(11, '', '', '', ''),
(12, 'tukku', 't@gmail.com', '123', '9014777726'),
(13, 'sreya', 'gourinenisreya03@gmail.com', '123', '07674096394'),
(14, 'rosh', 'roshinikatkuri@gmail.com', '1234', '6281479257'),
(15, '', '', '', ''),
(16, '', '', '', ''),
(17, 'sreya', 'gourinenisreya03@gmail.com', '', ''),
(18, '', '', '', ''),
(19, 'rachana', 'gourinenisreya03@gmail.com', '123', '07674096394'),
(20, 'sreya', 'gourinenisreya03@gmail.com', '123', '07674096394'),
(21, 'sreya', 'gourinenisreya03@gmail.com', '123', '07674096394'),
(22, 'Roshini', 'roshinikatkuri@gmail.com', '12346', '6281479257'),
(23, 'roshini', 'roshinikatkuri@gmail.com', '12345678', '7674096394'),
(24, 'sreya', 'gourinenisreya03@gmail.com', '123', '07674096394');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `persons` int(11) NOT NULL,
  `tables` int(11) NOT NULL,
  `menuList` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `cost` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`id`, `name`, `email`, `persons`, `tables`, `menuList`, `quantity`, `cost`) VALUES
(6, 'Gourineni Sreya', 'gourinenisreya03@gmail.com', 2, 1, 'burger', 2, 1680),
(7, 'tukku', 'g@gmail.com', 2, 1, 'pizza', 1, 1680),
(8, 'ammu', 'g@gmail.com', 2, 1, 'pizza', 1, 2100),
(9, 'shiva', 's@gmail.com', 2, 1, 'biryani', 2, 2000),
(15, 'roshini', 'roshinikatkuri@gmail.com', 2, 1, '12', 2, 48),
(16, 'roshini', 'roshinikatkuri@gmail.com', 2, 1, '12', 2, 48);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `u_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `time` time DEFAULT NULL,
  `roomtype` varchar(100) DEFAULT NULL,
  `adults` int(11) DEFAULT NULL,
  `kids` int(11) DEFAULT NULL,
  `cost` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`u_id`, `name`, `email`, `time`, `roomtype`, `adults`, `kids`, `cost`) VALUES
(16, 'Rachana', 'r@gmail.com', '00:00:12', 'standard_ac', 2, 1, 1500),
(17, 'sreya', 's@gmail.com', '00:00:24', 'deluxe_ac', 2, 6, 8400),
(18, 'Roshini', 'roshinikatkuri@gmail.com', '00:00:12', 'standard_ac', 2, 2, 1800),
(19, 'shiva', 'shiva@gmail.com', '00:00:24', 'standard_ac', 2, 2, 3600),
(20, 'shiva', 'shiva@gmail.com', '00:00:12', 'standard_ac', 2, 2, 1800),
(21, 'Gourineni Sreya', 'gourinenisreya03@gmail.com', '00:00:12', 'standard_ac', 2, 3, 2100),
(22, 'Rachana', 'rachanakomatipalli@gmail.com', '00:00:12', 'standard_ac', 1, 1, 900);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_hall`
--
ALTER TABLE `admin_hall`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `admin_restaurant`
--
ALTER TABLE `admin_restaurant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_room`
--
ALTER TABLE `admin_room`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `banquet_hall`
--
ALTER TABLE `banquet_hall`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_hall`
--
ALTER TABLE `admin_hall`
  MODIFY `booking_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `admin_restaurant`
--
ALTER TABLE `admin_restaurant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `admin_room`
--
ALTER TABLE `admin_room`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `banquet_hall`
--
ALTER TABLE `banquet_hall`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
