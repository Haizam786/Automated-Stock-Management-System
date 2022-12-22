-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2021 at 06:46 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `storedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `no` int(11) NOT NULL,
  `date` date NOT NULL,
  `totalAmount` int(11) NOT NULL,
  `payment` int(11) NOT NULL,
  `balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`no`, `date`, `totalAmount`, `payment`, `balance`) VALUES
(1, '2021-07-22', 30000, 40000, -10000),
(2, '2021-07-22', 30000, 40000, -10000),
(3, '2021-07-22', 15000, 20000, -5000),
(4, '2021-07-22', 40000, 45000, -5000),
(5, '2021-07-22', 35000, 40000, -5000),
(6, '2021-07-24', 45000, 50000, -5000),
(7, '2021-07-24', 50000, 60000, -10000),
(8, '2021-07-24', 6000, 622, 5378),
(9, '2021-07-24', 15000, 15000, 0),
(10, '2021-07-24', 15000, 20000, -5000);

-- --------------------------------------------------------

--
-- Table structure for table `solditems`
--

CREATE TABLE `solditems` (
  `no` int(11) NOT NULL,
  `salesNo` int(11) NOT NULL,
  `itemId` varchar(11) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `solditems`
--

INSERT INTO `solditems` (`no`, `salesNo`, `itemId`, `price`, `qty`, `total`) VALUES
(1, 5, 'AP01', 5000, 7, 35000),
(2, 6, 'AP01', 5000, 9, 45000),
(3, 7, 'AP01', 5000, 10, 50000),
(4, 8, 'AP01', 5000, 10, 50000),
(5, 8, 'AP02', 1000, 6, 6000),
(6, 9, 'AP01', 5000, 3, 15000),
(7, 10, 'AP01', 5000, 3, 15000);

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `no` int(11) NOT NULL,
  `id` varchar(150) NOT NULL,
  `name` varchar(150) NOT NULL,
  `price` decimal(65,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`no`, `id`, `name`, `price`) VALUES
(1, 'AP01', 'White Coat', '5000'),
(2, 'AP02', 'Putty(new)', '1000'),
(4, 'AP056', 'Green Paint color', '7500'),
(8, 'Ap100', 'Brush', '500'),
(9, 'AP 500', 'Weather protector', '5000');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `role` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `role`) VALUES
('admin', 'admin123', ''),
('cashier', 'cashier123', 'Cashier'),
('man1', 'man1', 'Stock keeper'),
('man2', 'man2', 'Cashier'),
('Haizam', '123', 'Manager'),
('Shane', '1', 'Stock keeper'),
('User ', 'user', 'Stock keeper');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `solditems`
--
ALTER TABLE `solditems`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `solditems`
--
ALTER TABLE `solditems`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
