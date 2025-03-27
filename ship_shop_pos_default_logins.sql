-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2024 at 05:43 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ship_shop_pos_default_logins`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `superAdmin` varchar(3) NOT NULL DEFAULT 'No',
  `databaseUserId` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `dbName` varchar(100) NOT NULL,
  `dbUser` varchar(100) NOT NULL,
  `dbPassword` varchar(100) NOT NULL,
  `roleId` int(11) NOT NULL DEFAULT 1,
  `loginToken` varchar(255) NOT NULL,
  `storeId` int(11) NOT NULL,
  `dateStopAccessingPos` varchar(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `name`, `superAdmin`, `databaseUserId`, `email`, `mobile`, `password`, `dbName`, `dbUser`, `dbPassword`, `roleId`, `loginToken`, `storeId`, `dateStopAccessingPos`, `status`) VALUES
(1, 'Admin', 'Yes', 1, 'admin@admin.com', '8285187287', 'a346bc80408d9b2a5063fd1bddb20e2d5586ec30', 'ship_shop_pos_default', 'root', '', 1, '419367f77d0940472ce5a712c554ec8d', 0, '2025-05-02', 1),
(2, 'Admin', 'Yes', 1, 'admin@copy.com', '8285187287', 'a346bc80408d9b2a5063fd1bddb20e2d5586ec30', 'ship_shop_pos_default_copy', 'root', '', 1, '419367f77d0940472ce5a712c554ec8d', 0, '2025-05-02', 1),
(3, 'Admin', 'No', 1, 'owner@copy.com', '8285187287', 'a346bc80408d9b2a5063fd1bddb20e2d5586ec30', 'ship_shop_pos_default_copy', 'root', '', 2, '419367f77d0940472ce5a712c554ec8d', 1, '2025-05-02', 1),
(4, 'User Copy', 'No', 1, 'user@copy.com', '8285187287', 'a346bc80408d9b2a5063fd1bddb20e2d5586ec30', 'ship_shop_pos_default_copy', 'root', '', 2, '419367f77d0940472ce5a712c554ec8d', 1, '2025-05-02', 1),
(7, 'Demo', 'Yes', 1, 'admin@demo.com', '8285187287', 'a346bc80408d9b2a5063fd1bddb20e2d5586ec30', 'ship_shop_pos_demo', 'root', '', 1, 'swmS7CNf9pmE6ivkiJpcml3UZUSNpYQhWJV3zurxVmxxnaNyyS', 1, '2025-05-10', 1),
(8, 'Owner Demo', 'No', 2, 'owner@demo.com', '8285187287', 'a346bc80408d9b2a5063fd1bddb20e2d5586ec30', 'ship_shop_pos_demo', 'root', '', 2, 'gze3fNd97s7naBkCbQeicuiIAyqfB8lASj43nvdIuQ64iy4BFC', 1, '2025-05-10', 1),
(9, 'User Demo', 'No', 3, 'user@demo.com', '8285187287', 'a346bc80408d9b2a5063fd1bddb20e2d5586ec30', 'ship_shop_pos_demo', 'root', '', 3, 'uSEkhF52VQVN7q5pTiNrnxFO9MjqfiErTDfj2avNyjHA0EpCjb', 1, '2025-05-10', 1),
(10, 'Jaitaran Admin', 'Yes', 1, 'admin@jaitaran.com', '8285187287', 'a346bc80408d9b2a5063fd1bddb20e2d5586ec30', 'ship_shop_pos_jaitaran', 'root', '', 1, 'khMxDLmEkAN6CjkUdkpUmT8rBvq0pcB8fcoxOkRg0snQ5eQQfF', 1, '2025-05-10', 1),
(11, 'Jaitaran Owner', 'No', 2, 'owner@jaitaran.com', '8285187287', 'a346bc80408d9b2a5063fd1bddb20e2d5586ec30', 'ship_shop_pos_jaitaran', 'root', '', 2, 'TArKDBGifxulsU8hoYBPs4DkFe55v1zLNbX8rONUvVmE4FYZzG', 1, '2025-05-10', 1),
(12, 'Jaitaran User', 'No', 3, 'user@jaitaran.com', '8285187287', 'a346bc80408d9b2a5063fd1bddb20e2d5586ec30', 'ship_shop_pos_jaitaran', 'root', '', 3, 'fHbQk1w5g5KCHGR7ooDvID06IEN8vlj4jltgWNnYYiE9Xc4HZn', 1, '2025-05-10', 1),
(13, 'Sifoz Admin', 'Yes', 1, 'admin@sifoz.com', '8285187287', 'a346bc80408d9b2a5063fd1bddb20e2d5586ec30', 'ship_shop_pos_sifoz', 'root', '', 1, 'PgPj2mJmEqp3OyArCwVM4H4sDCLJcub0dHBqF4cXQZzI9Mq9qF', 1, '2025-05-10', 1),
(14, 'Sifoz Owner', 'No', 2, 'owner@sifoz.com', '8285187287', 'a346bc80408d9b2a5063fd1bddb20e2d5586ec30', 'ship_shop_pos_sifoz', 'root', '', 2, 'ARY59RBR1vmWuzoIgjUlzmKwBf9Tr2kogyuKv526856v9krZSP', 1, '2025-05-10', 1),
(15, 'Sifoz User', 'No', 3, 'user@sifoz.com', '8285187287', 'a346bc80408d9b2a5063fd1bddb20e2d5586ec30', 'ship_shop_pos_sifoz', 'root', '', 3, '3eLXA7AcsUPhqjchhN6gj0je5KOcjazDgEflp9UKmJH4vSyXZn', 1, '2025-05-10', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
