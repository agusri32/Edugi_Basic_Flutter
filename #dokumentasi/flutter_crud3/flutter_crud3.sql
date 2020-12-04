-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2020 at 10:50 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud_tigadb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_item`
--

CREATE TABLE `tb_item` (
  `id` int(11) NOT NULL,
  `item_code` varchar(30) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `price` varchar(20) NOT NULL,
  `stock` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_item`
--

INSERT INTO `tb_item` (`id`, `item_code`, `item_name`, `price`, `stock`) VALUES
(1, 'S4DD', 'Keyboard Rexus123', '200000', '30'),
(2, 'R123', 'Mouse Logitec G10', '250000', '20'),
(3, 'L009', 'Headset Logitec GG123', '550000', '25'),
(4, 'R008', 'Asus ROG 2345', '15000000', '5'),
(5, 'MT15', 'Mousepad PUBG Mobile', '50000', '50'),
(6, 'PRO456', 'Pensil Warna', '1000', '3'),
(9, 'PRO123	', 'Buku Catatan	', '5000	', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_item`
--
ALTER TABLE `tb_item`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_item`
--
ALTER TABLE `tb_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
