-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2024 at 02:24 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasir`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `nofaktur` varchar(30) NOT NULL,
  `tanggal` varchar(20) DEFAULT NULL,
  `id_customer` varchar(10) DEFAULT NULL,
  `total_beli` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`nofaktur`, `tanggal`, `id_customer`, `total_beli`) VALUES
('001', '10-01-2024', '123', '5000'),
('002', '10-01-2024', '112', '400000'),
('TR0003', '10-01-2024', '113', '500000'),
('TR0004', '10-01-2024', '121', '8000'),
('TR0005', '10-01-2024', '133', '24000'),
('TR0006', '11-01-2024', 'A011', '28000');

-- --------------------------------------------------------

--
-- Table structure for table `penjualanrinci`
--

CREATE TABLE `penjualanrinci` (
  `nofaktur` varchar(20) DEFAULT NULL,
  `id_barang` varchar(10) DEFAULT NULL,
  `nama_barang` varchar(50) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `harga` decimal(10,0) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penjualanrinci`
--

INSERT INTO `penjualanrinci` (`nofaktur`, `id_barang`, `nama_barang`, `jumlah`, `harga`, `total`) VALUES
('TR0004', '09', 'botol', 4, '2000', '8000'),
('TR0005', '06', 'Notecard', 2, '12000', '24000'),
('TR0006', '001', 'pensil', 7, '4000', '28000');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` int(200) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `username`, `email`, `phone`, `password`) VALUES
(1, 'bubu', 'bubu12', 'bubu123@gmail.com', 843213451, 'bubu234'),
(2, 'hg', 'gg', 'gg', 0, 'hh'),
(3, 'dwi', 'dwicantik', 'dwi@', 9, 'dwicantik'),
(4, 'dw', 'dw', 'dw', 98, 'dw1'),
(5, 'yh', 'YUha', 'y@gmail.com', 12, 'S3'),
(6, 'gagagag', 'gagaggag', 'gagagag', 87654, '123'),
(7, 'nabilaasurianto', 'bill', 'bill@mail.com', 8123414, 'bill123'),
(9, 'nabilasofiani', 'bill234', 'bila@gmail.com', 8526974, 'bill1234'),
(10, 'tiara', 'tiara1', 'tara@gmail.com', 812345678, 'tiara12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD KEY `username` (`username`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`nofaktur`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
