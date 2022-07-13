-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2022 at 12:31 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jamalgamingfix`
--

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `game_id` int(11) NOT NULL,
  `game_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`game_id`, `game_name`) VALUES
(1, 'Valorant'),
(2, 'PUBG Mobile'),
(3, 'Mobile Legends'),
(4, 'Genshin Impact');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `Product` varchar(20) NOT NULL,
  `game_id` int(10) NOT NULL,
  `price` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`Product`, `game_id`, `price`) VALUES
('100 Valorant Points', 1, 10000),
('1000 Genesis Crystal', 4, 150000),
('1000 UC', 2, 270000),
('1200 Genesis Crystal', 4, 200000),
('1200 UC', 2, 300000),
('1500 Diamond', 3, 250000),
('1500 Genesis Crystal', 4, 250000),
('1500 UC', 2, 370000),
('1500 Valorant Points', 1, 150000),
('2100 Diamond', 3, 300000),
('2100 Genesis Crystal', 4, 300000),
('2100 UC', 2, 400000),
('2100 Valorant Points', 1, 210000),
('250 Diamond', 3, 40000),
('250 Genesis Crystal', 4, 20000),
('250 Valorant Points', 1, 25000),
('2700 Diamond', 3, 370000),
('2700 Genesis Crystal', 4, 350000),
('2700 UC', 2, 450000),
('2700 Valorant Points', 1, 270000),
('3500 Diamond', 3, 400000),
('3500 Genesis Crystal', 4, 400000),
('3500 UC', 2, 500000),
('3500 Valorant Points', 1, 350000),
('400 Diamond', 3, 90000),
('500 Genesis Crystal', 4, 50000),
('500 UC', 2, 100000),
('500 Valorant Points', 1, 50000),
('600 Diamond', 3, 150000),
('750 UC', 2, 200000),
('780 Diamond', 3, 180000),
('780 Valorant Points', 1, 78000);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id_tr` int(10) NOT NULL,
  `nama` varchar(20) DEFAULT NULL,
  `IGN` varchar(20) DEFAULT NULL,
  `UserID` varchar(20) DEFAULT NULL,
  `Product` varchar(20) NOT NULL,
  `Payment` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id_tr`, `nama`, `IGN`, `UserID`, `Product`, `Payment`) VALUES
(1, 'Riyan', 'malih', '12343', '100 Valorant Points', 'bca'),
(2, 'Riyan', 'malih', '6789', '3500 UC', 'gopay'),
(3, 'Riyan', 'malih', '456787', '2100 Diamond', 'gopay'),
(5, 'Zia', 'naonweh', '12345', '250 Valorant Points', 'bca'),
(6, 'Riyan', 'malih', '42453451', '3500 Genesis Crystal', 'bca'),
(9, 'Riyan', 'malih', '12342', '250 Valorant Points', 'bca'),
(10, 'Riyan', 'wkwk', '12345', '250 Valorant Points', 'bca');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `nama` varchar(20) NOT NULL,
  `loginid` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`nama`, `loginid`, `password`) VALUES
('Arya', 'Jett', '456'),
('Riyan', 'riyan', '456'),
('Zia', 'Sage', '789');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`game_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`Product`),
  ADD KEY `game_id` (`game_id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id_tr`),
  ADD KEY `nama` (`nama`),
  ADD KEY `Product` (`Product`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`nama`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id_tr` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`game_id`) REFERENCES `games` (`game_id`);

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`nama`) REFERENCES `users` (`nama`),
  ADD CONSTRAINT `transaction_ibfk_2` FOREIGN KEY (`Product`) REFERENCES `items` (`Product`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
