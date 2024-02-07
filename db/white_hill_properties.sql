-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2023 at 02:21 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `white_hill_properties`
--

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `eid` int(11) NOT NULL,
  `enquiryBy` varchar(500) DEFAULT NULL,
  `enquiryFor` varchar(1000) DEFAULT NULL,
  `enquiryEmail` varchar(400) DEFAULT NULL,
  `enquiryPhn` varchar(400) DEFAULT NULL,
  `msg` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `pid` int(11) NOT NULL,
  `p_address` varchar(600) DEFAULT NULL,
  `p_price` varchar(100) DEFAULT NULL,
  `p_rooms` int(11) NOT NULL,
  `p_baths` int(11) NOT NULL,
  `sqft` varchar(100) NOT NULL,
  `pimg` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`pid`, `p_address`, `p_price`, `p_rooms`, `p_baths`, `sqft`, `pimg`) VALUES
(1, '3045 Considine Square, Port Ninaport, Yukon, Canada', '1,849,500', 3, 2, '2,240', 'house1.jpg'),
(2, '1425 Ellen Station, North Soledad, Québec, Canada', '1,375,000', 4, 3, '1,730', 'house2.jpg'),
(3, '9308 Jerde Points, Gutkowskiview, Saskatchewan, Canada', '1,700,000', 3, 3, '2,840', 'house3.jpg'),
(4, '05283 Jerome Bypass, Schoenmouth, Alberta, Canada', '2,050,000', 2, 2, '2,900', 'house4.jpg'),
(5, '3537 Beer Park, Lake Christine, Quebec, Canada', '750,000', 4, 1, '1,500', 'house5.jpg'),
(6, '7400 Volkman Expressway, Rickieside, Ontario, Canada', '3,800,000', 4, 3, '5,200', 'house6.jpg'),
(7, '379 Antoinette Courts, Eduardoland, Ontario, Canada', '1,575,000', 3, 2, '3,300', 'house7.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
