-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2018 at 08:20 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e_waste`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `city_name` varchar(50) NOT NULL,
  `province_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='names of various cities in each province';

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `city_name`, `province_id`) VALUES
(1, 'Lusaka', 5),
(2, 'Kitwe', 2),
(3, 'Ndola', 2),
(4, 'Kabwe', 1),
(5, 'Chingola', 2),
(6, 'Mufulira', 2),
(7, 'Luanshya', 2),
(8, 'Livingstone', 9),
(9, 'Kasama', 8),
(10, 'Chipata', 3),
(11, 'Kalulushi', 2),
(12, 'Mazabuka', 9),
(13, 'Chililabombwe', 2),
(14, 'Mongu', 10),
(15, 'Kafue', 5),
(16, 'Choma', 9),
(17, 'Mansa', 4),
(18, 'Kansanshi', 7),
(19, 'Kapiri Mposhi', 1),
(20, 'Monze', 9),
(21, 'Mpika', 6),
(22, 'Nchelenge', 4),
(23, 'Kawambwa', 4),
(24, 'Mbala', 8),
(25, 'Samfya', 4),
(26, 'Sesheke', 10),
(27, 'Petauke', 3),
(28, 'Mumbwa', 1),
(29, 'Siavonga', 9),
(30, 'Kaoma', 10),
(31, 'Chinsali', 6),
(32, 'Kataba', 10),
(33, 'Mwinilunga', 7),
(34, 'Isoka', 6),
(35, 'Mkushi', 1),
(36, 'Maamba', 9),
(37, 'Lundazi', 3),
(38, 'Sinazongwe', 9),
(39, 'Chambishi', 2),
(40, 'Nakonde', 6),
(41, 'Nakambala', 9),
(42, 'Senanga', 10),
(43, 'Mpongwe', 2),
(44, 'Serenje', 1),
(45, 'Mpulungu', 8),
(46, 'Kalabo', 10),
(47, 'Kalengwa', 7),
(48, 'Limulunga', 10),
(49, 'Zambezi', 7),
(50, 'Mungwi', 8),
(51, 'Solwezi', 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `provi_FK` (`province_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `provi_FK` FOREIGN KEY (`province_id`) REFERENCES `provinces` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
