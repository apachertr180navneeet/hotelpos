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
-- Database: `ship_shop_pos_default`
--

-- --------------------------------------------------------

--
-- Table structure for table `additional_charges`
--

CREATE TABLE `additional_charges` (
  `additionalChargeId` int(11) NOT NULL,
  `heading` varchar(100) NOT NULL,
  `sortOrder` int(11) NOT NULL,
  `storeId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `updatedBy` int(11) NOT NULL,
  `insertedBy` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `additional_charges`
--

INSERT INTO `additional_charges` (`additionalChargeId`, `heading`, `sortOrder`, `storeId`, `userId`, `updatedBy`, `insertedBy`, `status`) VALUES
(1, 'Shipping Charges', 0, 1, 2, 0, 2, 1),
(2, 'Transport Charges', 0, 1, 2, 0, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin_login_history`
--

CREATE TABLE `admin_login_history` (
  `adminLoginHistoryId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_login_history`
--

INSERT INTO `admin_login_history` (`adminLoginHistoryId`, `userId`, `status`, `dateAdded`) VALUES
(1, 1, 1, '2024-04-03 09:39:49'),
(2, 1, 1, '2024-04-03 11:00:05'),
(3, 1, 1, '2024-04-03 11:10:26'),
(4, 1, 1, '2024-04-03 11:10:57'),
(5, 1, 1, '2024-04-03 11:11:33'),
(6, 1, 1, '2024-04-03 11:29:19'),
(7, 1, 1, '2024-04-03 16:12:26'),
(8, 1, 1, '2024-04-04 08:52:42'),
(9, 1, 1, '2024-04-04 09:07:31'),
(10, 1, 1, '2024-04-04 09:08:21'),
(11, 2, 1, '2024-04-04 09:09:38'),
(12, 2, 1, '2024-04-04 09:14:06'),
(13, 1, 1, '2024-04-04 14:49:19'),
(14, 2, 1, '2024-04-04 14:50:45'),
(15, 1, 1, '2024-04-04 23:18:08'),
(16, 2, 1, '2024-04-04 23:18:58'),
(17, 1, 1, '2024-04-06 10:58:58'),
(18, 2, 1, '2024-04-06 11:09:53'),
(19, 2, 1, '2024-04-06 11:33:04'),
(20, 1, 1, '2024-04-06 11:36:43'),
(21, 2, 1, '2024-04-06 11:37:22'),
(22, 2, 1, '2024-04-06 13:58:34'),
(23, 2, 1, '2024-04-06 14:00:27'),
(24, 2, 1, '2024-04-06 14:00:39'),
(25, 2, 1, '2024-04-06 14:01:14'),
(26, 1, 1, '2024-04-06 14:17:17'),
(27, 2, 1, '2024-04-06 14:17:31'),
(28, 1, 1, '2024-04-07 09:55:17'),
(29, 2, 1, '2024-04-07 09:55:36'),
(30, 1, 1, '2024-04-07 10:06:33'),
(31, 1, 1, '2024-04-07 10:06:59'),
(32, 2, 1, '2024-04-07 10:07:21'),
(33, 1, 1, '2024-04-07 12:16:45'),
(34, 2, 1, '2024-04-07 13:05:20'),
(35, 1, 1, '2024-04-07 13:05:32'),
(36, 1, 1, '2024-04-07 14:32:59'),
(37, 2, 1, '2024-04-07 14:34:00'),
(38, 1, 1, '2024-04-07 16:00:46'),
(39, 1, 1, '2024-04-07 16:09:14'),
(40, 1, 1, '2024-04-08 08:29:54'),
(41, 1, 1, '2024-04-08 08:32:11'),
(42, 1, 1, '2024-04-08 08:34:07'),
(43, 1, 1, '2024-04-08 09:09:04'),
(44, 1, 1, '2024-04-09 13:55:58'),
(45, 1, 1, '2024-04-09 14:10:18'),
(46, 1, 1, '2024-04-10 09:34:00'),
(47, 1, 1, '2024-04-10 11:00:29'),
(48, 1, 1, '2024-04-10 11:13:58'),
(49, 1, 1, '2024-04-10 11:33:55'),
(50, 1, 1, '2024-04-11 08:45:57'),
(51, 1, 1, '2024-04-11 09:24:40'),
(52, 1, 1, '2024-04-11 10:12:56'),
(53, 1, 1, '2024-04-11 10:16:47'),
(54, 1, 1, '2024-04-11 14:39:08'),
(55, 1, 1, '2024-04-11 17:05:04'),
(56, 1, 1, '2024-04-12 10:08:17'),
(57, 1, 1, '2024-04-12 14:46:40'),
(58, 1, 1, '2024-04-13 09:08:26'),
(59, 3, 1, '2024-04-13 14:07:55'),
(60, 5, 1, '2024-04-13 14:13:15'),
(61, 5, 1, '2024-04-13 14:27:52'),
(62, 5, 1, '2024-04-13 14:28:00'),
(63, 5, 1, '2024-04-13 14:28:54'),
(64, 5, 1, '2024-04-13 14:35:25'),
(65, 5, 1, '2024-04-13 14:51:10'),
(66, 1, 1, '2024-04-13 15:03:17'),
(67, 5, 1, '2024-04-13 15:09:33'),
(68, 5, 1, '2024-04-13 15:10:47'),
(69, 1, 1, '2024-04-16 10:55:51'),
(70, 1, 1, '2024-04-16 11:34:59'),
(71, 1, 1, '2024-04-16 11:36:08'),
(72, 1, 1, '2024-04-16 12:13:15'),
(73, 1, 1, '2024-04-18 09:10:27'),
(74, 1, 1, '2024-04-18 14:30:17'),
(75, 1, 1, '2024-04-18 15:52:09'),
(76, 1, 1, '2024-04-18 18:41:46'),
(77, 1, 1, '2024-04-19 08:12:27'),
(78, 1, 1, '2024-04-19 16:05:54'),
(79, 1, 1, '2024-04-21 10:40:45'),
(80, 1, 1, '2024-04-21 16:42:54'),
(81, 1, 1, '2024-04-21 21:31:53'),
(82, 1, 1, '2024-04-22 17:16:45'),
(83, 1, 1, '2024-04-23 09:33:30'),
(84, 1, 1, '2024-04-23 13:13:37'),
(85, 1, 1, '2024-04-29 10:01:12'),
(86, 1, 1, '2024-04-29 19:27:35'),
(87, 1, 1, '2024-04-30 08:54:16'),
(88, 1, 1, '2024-05-01 08:39:36'),
(89, 1, 1, '2024-05-01 16:26:44'),
(90, 1, 1, '2024-05-02 08:54:32'),
(91, 1, 1, '2024-05-03 10:19:32'),
(92, 1, 1, '2024-05-04 10:14:20'),
(93, 1, 1, '2024-05-04 15:44:11'),
(94, 1, 1, '2024-05-07 09:24:55'),
(95, 1, 1, '2024-05-07 10:42:29'),
(96, 1, 1, '2024-05-07 11:12:55'),
(97, 1, 1, '2024-05-10 10:12:20'),
(98, 1, 1, '2024-05-10 12:13:38'),
(99, 1, 1, '2024-05-10 12:29:26'),
(100, 1, 1, '2024-05-10 13:44:32'),
(101, 1, 1, '2024-05-10 14:19:30'),
(102, 1, 1, '2024-05-10 14:21:29'),
(103, 1, 1, '2024-05-10 14:59:24'),
(104, 1, 1, '2024-05-10 15:05:43'),
(105, 1, 1, '2024-05-11 13:30:59'),
(106, 1, 1, '2024-05-11 13:55:05'),
(107, 1, 1, '2024-05-11 13:57:20'),
(108, 1, 1, '2024-05-11 14:04:27'),
(109, 1, 1, '2024-05-11 14:05:08'),
(110, 1, 1, '2024-05-15 15:29:06'),
(111, 1, 1, '2024-05-18 09:19:24'),
(112, 1, 1, '2024-05-18 11:26:28'),
(113, 1, 1, '2024-05-18 14:48:23'),
(114, 1, 1, '2024-05-18 14:50:47'),
(115, 1, 1, '2024-05-23 10:30:52'),
(116, 1, 1, '2024-05-23 11:07:42'),
(117, 1, 1, '2024-05-24 14:37:44'),
(118, 1, 1, '2024-06-05 10:04:16'),
(119, 1, 1, '2024-06-06 09:48:02'),
(120, 1, 1, '2024-06-06 16:52:55'),
(121, 1, 1, '2024-06-08 10:17:27'),
(122, 1, 1, '2024-06-17 11:39:48'),
(123, 1, 1, '2024-06-17 14:02:29'),
(124, 1, 1, '2024-06-20 10:00:59'),
(125, 1, 1, '2024-06-21 09:45:20'),
(126, 1, 1, '2024-06-22 09:14:43'),
(127, 1, 1, '2024-06-22 09:14:46'),
(128, 1, 1, '2024-06-24 08:39:45'),
(129, 1, 1, '2024-06-25 11:58:26'),
(130, 1, 1, '2024-06-26 09:36:35'),
(131, 1, 1, '2024-06-28 11:07:25'),
(132, 1, 1, '2024-06-28 13:37:16'),
(133, 1, 1, '2024-06-29 09:51:48'),
(134, 1, 1, '2024-07-01 14:47:49'),
(135, 1, 1, '2024-07-02 11:33:08'),
(136, 1, 1, '2024-07-03 12:49:59'),
(137, 1, 1, '2024-07-03 12:49:59'),
(138, 1, 1, '2024-07-04 09:51:55'),
(139, 1, 1, '2024-07-04 14:56:23'),
(140, 1, 1, '2024-07-05 09:24:43'),
(141, 1, 1, '2024-07-05 14:03:52'),
(142, 1, 1, '2024-07-08 09:26:36'),
(143, 1, 1, '2024-07-09 13:40:34'),
(144, 1, 1, '2024-07-11 10:30:35'),
(145, 1, 1, '2024-07-12 10:35:15'),
(146, 1, 1, '2024-07-17 13:31:46'),
(147, 1, 1, '2024-07-18 09:58:36'),
(148, 1, 1, '2024-07-19 10:50:22'),
(149, 1, 1, '2024-07-20 12:04:24'),
(150, 1, 1, '2024-07-22 10:34:42'),
(151, 1, 1, '2024-07-22 14:12:13'),
(152, 1, 1, '2024-07-22 16:22:54'),
(153, 1, 1, '2024-07-23 11:44:58'),
(154, 1, 1, '2024-07-24 08:49:06'),
(155, 1, 1, '2024-07-24 14:00:29'),
(156, 1, 1, '2024-07-25 09:30:20'),
(157, 1, 1, '2024-07-25 14:29:51'),
(158, 1, 1, '2024-07-27 10:53:05'),
(159, 1, 1, '2024-07-29 15:45:10'),
(160, 1, 1, '2024-08-06 11:11:49'),
(161, 1, 1, '2024-08-06 15:58:28'),
(162, 1, 1, '2024-08-07 09:09:56'),
(163, 1, 1, '2024-08-07 15:42:25'),
(164, 1, 1, '2024-08-08 10:03:17'),
(165, 1, 1, '2024-08-09 10:35:11'),
(166, 1, 1, '2024-08-09 12:38:38'),
(167, 1, 1, '2024-08-12 10:51:16'),
(168, 1, 1, '2024-08-13 11:16:24'),
(169, 1, 1, '2024-08-14 11:23:13'),
(170, 1, 1, '2024-08-16 12:02:57'),
(171, 1, 1, '2024-08-17 10:48:25'),
(172, 1, 1, '2024-08-19 10:36:34'),
(173, 1, 1, '2024-08-20 10:49:31'),
(174, 1, 1, '2024-08-20 18:33:23'),
(175, 1, 1, '2024-08-21 09:29:08'),
(176, 1, 1, '2024-08-22 10:00:15'),
(177, 1, 1, '2024-08-22 14:22:05'),
(178, 1, 1, '2024-08-22 21:04:38'),
(179, 1, 1, '2024-08-23 10:24:17'),
(180, 1, 1, '2024-08-23 13:55:35'),
(181, 1, 1, '2024-08-23 16:41:00'),
(182, 1, 1, '2024-08-24 10:29:45'),
(183, 1, 1, '2024-08-24 14:20:06'),
(184, 1, 1, '2024-08-26 10:32:13'),
(185, 1, 1, '2024-08-26 14:37:12'),
(186, 1, 1, '2024-09-10 21:55:16'),
(187, 1, 1, '2024-10-02 09:30:06'),
(188, 1, 1, '2024-10-06 13:30:13'),
(189, 1, 1, '2024-10-06 16:34:14'),
(190, 1, 1, '2024-10-06 19:05:24'),
(191, 1, 1, '2024-10-13 17:03:08'),
(192, 1, 1, '2024-10-20 15:18:34'),
(193, 1, 1, '2024-12-08 18:47:36'),
(194, 1, 1, '2024-12-22 16:01:20'),
(195, 1, 1, '2024-12-22 20:01:36'),
(196, 1, 1, '2024-12-23 09:41:48');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categoryId` int(11) NOT NULL,
  `heading` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `parentId` int(11) NOT NULL,
  `storeId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `updatedBy` int(11) NOT NULL,
  `insertedBy` int(11) NOT NULL,
  `dateUpdated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp(),
  `softDelete` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categoryId`, `heading`, `image`, `parentId`, `storeId`, `userId`, `updatedBy`, `insertedBy`, `dateUpdated`, `dateAdded`, `softDelete`, `status`) VALUES
(1, 'Laptops', '', 0, 1, 2, 0, 2, '2024-02-28 03:03:00', '2024-02-28 08:33:00', 0, 1),
(2, 'Mobile', '', 0, 1, 2, 0, 2, '2024-02-28 03:18:33', '2024-02-28 08:48:33', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `cityId` int(11) NOT NULL,
  `heading` varchar(50) NOT NULL,
  `stateId` int(11) NOT NULL,
  `countryId` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`cityId`, `heading`, `stateId`, `countryId`, `status`) VALUES
(1, 'Gurgaon', 17, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `codes`
--

CREATE TABLE `codes` (
  `codeId` int(11) NOT NULL,
  `alphabat` varchar(10) NOT NULL,
  `number` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `codes`
--

INSERT INTO `codes` (`codeId`, `alphabat`, `number`, `status`) VALUES
(1, 'A', 1, 1),
(2, 'L', 2, 1),
(3, 'N', 3, 1),
(4, 'D', 4, 1),
(5, 'E', 5, 1),
(6, 'F', 6, 1),
(7, 'G', 7, 1),
(8, 'H', 8, 1),
(9, 'I', 9, 1),
(10, 'J', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `comment_master`
--

CREATE TABLE `comment_master` (
  `commentMasterId` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `storeId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comment_master`
--

INSERT INTO `comment_master` (`commentMasterId`, `comment`, `storeId`, `userId`, `status`) VALUES
(1, 'Testing Comment One', 1, 1, 1),
(2, 'Testting Comment Two', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `contactId` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` mediumtext NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `countryId` int(11) NOT NULL,
  `heading` varchar(100) NOT NULL,
  `sortOrder` int(11) NOT NULL,
  `softDelete` int(11) NOT NULL DEFAULT 0,
  `updatedBy` int(11) NOT NULL,
  `insertedBy` int(11) NOT NULL DEFAULT 0,
  `dateUpdated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`countryId`, `heading`, `sortOrder`, `softDelete`, `updatedBy`, `insertedBy`, `dateUpdated`, `dateAdded`, `status`) VALUES
(1, 'India', 0, 0, 0, 2, '2024-02-24 07:42:09', '2024-02-24 13:12:09', 1),
(2, 'USA', 0, 0, 0, 2, '2024-07-25 10:37:01', '2024-02-25 13:12:09', 1),
(3, 'Canada', 0, 0, 0, 2, '2024-02-24 07:42:09', '2024-02-24 13:12:09', 1);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `currencyId` int(11) NOT NULL,
  `heading` varchar(50) NOT NULL,
  `code` varchar(11) NOT NULL,
  `symbol` varchar(11) NOT NULL,
  `storeId` int(11) NOT NULL DEFAULT 0,
  `userId` int(11) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`currencyId`, `heading`, `code`, `symbol`, `storeId`, `userId`, `status`) VALUES
(1, 'Indian Rupees', 'INR', '₹', 1, 1, 1),
(2, 'United States Dollar', 'USD', '$', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customerId` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `openingBalance` int(11) DEFAULT 0,
  `walletBalance` int(11) DEFAULT 0,
  `rewardPoints` int(11) DEFAULT 0,
  `customerGroupId` int(11) DEFAULT NULL,
  `cityId` varchar(50) DEFAULT NULL,
  `stateId` int(11) DEFAULT NULL,
  `countryId` int(11) DEFAULT NULL,
  `gstNo` varchar(50) NOT NULL,
  `firmName` varchar(255) NOT NULL,
  `firmAddress` varchar(255) NOT NULL,
  `storeId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `insertedBy` int(11) NOT NULL,
  `updatedBy` int(11) NOT NULL,
  `dateUpdated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `softDelete` int(11) NOT NULL DEFAULT 0,
  `status` int(11) DEFAULT 1,
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerId`, `name`, `mobile`, `email`, `openingBalance`, `walletBalance`, `rewardPoints`, `customerGroupId`, `cityId`, `stateId`, `countryId`, `gstNo`, `firmName`, `firmAddress`, `storeId`, `userId`, `insertedBy`, `updatedBy`, `dateUpdated`, `softDelete`, `status`, `dateAdded`) VALUES
(1, 'Walk In Customer', '0000000000', '', 0, 0, 17405, 1, '1', 17, 1, 'KUJGHDKJF6758987', '', '', 1, 1, 2, 1, '2024-10-02 10:24:03', 0, 1, '2024-02-24 14:35:37'),
(102, 'Priyavrat Sehrawat', '8285187287', 'pkv172019@gmail.com', 0, 0, 57802, 1, '1', 17, 1, '', '', '', 1, 1, 2, 1, '2024-10-20 17:13:12', 0, 1, '2024-02-24 14:35:37');

-- --------------------------------------------------------

--
-- Table structure for table `customer_amount_paid`
--

CREATE TABLE `customer_amount_paid` (
  `customerAmountPaidId` int(11) NOT NULL,
  `orderId` int(11) NOT NULL,
  `customerId` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `paymentId` int(11) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `storeId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_amount_paid`
--

INSERT INTO `customer_amount_paid` (`customerAmountPaidId`, `orderId`, `customerId`, `amount`, `paymentId`, `remark`, `storeId`, `userId`, `status`, `dateAdded`) VALUES
(1, 9, 1, 1000, 8, '', 1, 1, 1, '2024-06-29 12:44:50'),
(2, 9, 1, 1000, 8, 'Given', 1, 1, 1, '2024-06-29 12:46:00'),
(3, 9, 1, 1000, 8, 'ghjghj', 1, 1, 1, '2024-06-29 12:46:54'),
(4, 9, 1, 1000, 8, 'fghdfgh', 1, 1, 1, '2024-06-29 12:47:41'),
(5, 9, 1, 1000, 8, 'kl;', 1, 1, 1, '2024-06-29 12:50:20'),
(6, 9, 0, 10000, 8, 'fghfhgf', 1, 1, 1, '2024-06-29 12:52:41'),
(7, 9, 0, 100, 8, 'jkhlkl', 1, 1, 1, '2024-06-29 12:57:20'),
(8, 9, 0, 500, 8, 'jkhl', 1, 1, 1, '2024-06-29 13:01:16'),
(9, 9, 0, 123, 8, 'asd', 1, 1, 1, '2024-06-29 13:05:03'),
(10, 9, 0, 100, 8, 'jhlk', 1, 1, 1, '2024-06-29 13:07:33'),
(11, 9, 0, 500, 8, 'asdasd', 1, 1, 1, '2024-06-29 13:09:50'),
(12, 9, 0, 342, 8, 'fdgd', 1, 1, 1, '2024-06-29 13:10:26'),
(13, 10, 1, 50000, 8, 'Bahot dino se  maang rha tha', 1, 1, 1, '2024-06-29 13:59:55');

-- --------------------------------------------------------

--
-- Table structure for table `customer_group`
--

CREATE TABLE `customer_group` (
  `customerGroupId` int(11) NOT NULL,
  `heading` varchar(20) NOT NULL,
  `defaultDiscountPercent` varchar(10) NOT NULL,
  `sortOrder` int(11) NOT NULL DEFAULT 0,
  `default` varchar(10) NOT NULL,
  `softDelete` int(11) NOT NULL DEFAULT 0,
  `storeId` int(11) NOT NULL DEFAULT 0,
  `userId` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `updatedBy` int(11) NOT NULL,
  `insertedBy` int(11) NOT NULL DEFAULT 0,
  `dateUpdated` datetime NOT NULL,
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_group`
--

INSERT INTO `customer_group` (`customerGroupId`, `heading`, `defaultDiscountPercent`, `sortOrder`, `default`, `softDelete`, `storeId`, `userId`, `status`, `updatedBy`, `insertedBy`, `dateUpdated`, `dateAdded`) VALUES
(1, 'Default', '0', 0, 'Yes', 0, 1, 2, 1, 2, 1, '2024-02-24 05:38:10', '2024-02-23 18:51:31'),
(2, 'VIP', '0', 0, 'No', 0, 1, 2, 1, 2, 1, '2024-02-24 05:37:50', '2024-02-23 18:51:52'),
(3, 'Super Vip', '0', 0, 'No', 0, 1, 2, 1, 0, 2, '2024-02-24 04:26:27', '2024-02-24 09:56:28'),
(4, 'Default', '0', 0, 'No', 0, 2, 2, 1, 0, 2, '2024-02-24 05:29:11', '2024-02-24 10:59:11'),
(5, 'Vip', '0', 0, 'Yes', 0, 2, 2, 1, 2, 2, '2024-02-24 05:37:21', '2024-02-24 10:59:47');

-- --------------------------------------------------------

--
-- Table structure for table `customer_ledger_reward`
--

CREATE TABLE `customer_ledger_reward` (
  `customerLedgerRewardId` int(11) NOT NULL,
  `orderId` int(11) DEFAULT 0,
  `customerId` int(11) NOT NULL,
  `reward` int(11) NOT NULL,
  `type` varchar(10) DEFAULT NULL,
  `paymentId` int(11) NOT NULL,
  `remark` varchar(500) NOT NULL,
  `payInOut` varchar(10) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `storeId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `softDelete` int(11) NOT NULL,
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `customer_ledger_reward`
--

INSERT INTO `customer_ledger_reward` (`customerLedgerRewardId`, `orderId`, `customerId`, `reward`, `type`, `paymentId`, `remark`, `payInOut`, `status`, `storeId`, `userId`, `softDelete`, `dateAdded`) VALUES
(1, 46, 1, 5785, 'Credit', 9, 'Credit Added', '', 1, 1, 1, 0, '2024-08-24 16:07:46'),
(2, 47, 1, 5785, 'Credit', 9, 'Credit Added', '', 1, 1, 1, 0, '2024-08-24 16:10:37'),
(3, 51, 1, 5835, 'Credit', 8, 'Credit Added', '', 1, 1, 1, 0, '2024-10-02 10:24:03'),
(4, 55, 102, 57802, 'Credit', 8, 'Credit Added', '', 1, 1, 1, 0, '2024-10-20 17:13:12');

-- --------------------------------------------------------

--
-- Table structure for table `customer_ledger_wallet`
--

CREATE TABLE `customer_ledger_wallet` (
  `customerLedgerId` int(11) NOT NULL,
  `orderId` int(11) DEFAULT 0,
  `customerId` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `type` varchar(10) DEFAULT NULL,
  `paymentId` int(11) NOT NULL,
  `remark` varchar(500) NOT NULL,
  `payInOut` varchar(10) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `storeId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `softDelete` int(11) NOT NULL,
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `customer_ledger_wallet`
--

INSERT INTO `customer_ledger_wallet` (`customerLedgerId`, `orderId`, `customerId`, `amount`, `type`, `paymentId`, `remark`, `payInOut`, `status`, `storeId`, `userId`, `softDelete`, `dateAdded`) VALUES
(1, 46, 1, 74045, 'Credit', 9, 'Wallet Amount Used', '', 1, 1, 1, 0, '2024-08-24 16:07:47'),
(2, 47, 1, 74045, 'Debit', 9, 'Wallet Amount Used', '', 1, 1, 1, 0, '2024-08-24 16:10:38');

-- --------------------------------------------------------

--
-- Table structure for table `customer_pay_in_out`
--

CREATE TABLE `customer_pay_in_out` (
  `customerPayInOutId` int(11) NOT NULL,
  `customerId` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `type` varchar(10) NOT NULL,
  `storeId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `insertedBy` int(11) NOT NULL,
  `dateUpdated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `databasebackup`
--

CREATE TABLE `databasebackup` (
  `databaseBackupId` int(11) NOT NULL,
  `backUpName` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `databasebackup`
--

INSERT INTO `databasebackup` (`databaseBackupId`, `backUpName`, `type`, `status`, `dateAdded`) VALUES
(1, 'public/backup/databaseBackup_on_24-04-08_03_46_33.sql', 'Take backup', 1, '2024-04-08 09:16:33');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employeeId` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `sallery` int(11) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `storeId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `softDelete` int(11) NOT NULL DEFAULT 0,
  `updatedBy` int(11) NOT NULL,
  `insertedBy` int(11) NOT NULL,
  `dateUpdated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employeeId`, `name`, `mobile`, `email`, `sallery`, `dob`, `storeId`, `userId`, `softDelete`, `updatedBy`, `insertedBy`, `dateUpdated`, `dateAdded`, `status`) VALUES
(1, 'Ramesh', '8595899103', '', 0, '', 1, 1, 0, 0, 1, '2024-02-27 10:08:50', '2024-02-27 15:38:50', 1),
(2, 'Suresh', '8285187287', '', 0, '', 1, 1, 0, 0, 1, '2024-02-27 10:09:19', '2024-02-27 15:39:19', 1);

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `expenseId` int(11) NOT NULL,
  `heading` varchar(100) NOT NULL,
  `amount` int(11) NOT NULL,
  `vendorId` int(11) NOT NULL,
  `expenseCategoryId` int(11) NOT NULL,
  `relatedImage` varchar(1000) NOT NULL,
  `storeId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`expenseId`, `heading`, `amount`, `vendorId`, `expenseCategoryId`, `relatedImage`, `storeId`, `userId`, `status`, `dateAdded`) VALUES
(1, 'CNG', 900, 0, 1, '[\"public\\/assets\\/uploads\\/ship_shop_default\\/893854759.png\",\"public\\/assets\\/uploads\\/ship_shop_default\\/905743940.jpg\"]', 1, 1, 1, '2024-04-30 10:28:43'),
(2, 'Dosa', 100, 0, 2, '', 1, 1, 1, '2024-04-30 11:03:42');

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `expenseCategoryId` int(11) NOT NULL,
  `heading` varchar(50) NOT NULL,
  `storeId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `expense_categories`
--

INSERT INTO `expense_categories` (`expenseCategoryId`, `heading`, `storeId`, `userId`, `status`) VALUES
(1, 'Petrol/Diesel/Cng', 1, 1, 1),
(2, 'Food', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `filters`
--

CREATE TABLE `filters` (
  `filterId` int(11) NOT NULL,
  `filterModuleId` int(11) NOT NULL,
  `filtertableName` varchar(20) NOT NULL,
  `fieldNameReadonly` varchar(255) DEFAULT NULL,
  `tableName` varchar(255) DEFAULT NULL,
  `tableFirstColumn` varchar(255) DEFAULT NULL,
  `tableColumn` varchar(255) DEFAULT NULL,
  `fieldHeading` varchar(255) DEFAULT NULL,
  `fieldType` varchar(255) DEFAULT NULL,
  `fieldName` varchar(255) DEFAULT NULL,
  `fieldClass` varchar(255) DEFAULT NULL,
  `fieldId` varchar(255) DEFAULT NULL,
  `fieldPlaceholder` varchar(255) DEFAULT NULL,
  `selectBoxValue` varchar(255) DEFAULT NULL,
  `selectBoxHtml` varchar(255) DEFAULT NULL,
  `orderBy` varchar(255) DEFAULT NULL,
  `whereColumn` varchar(100) NOT NULL,
  `sortOrder` int(11) DEFAULT NULL,
  `lineNo` int(11) DEFAULT NULL,
  `additionalAttributes` varchar(255) NOT NULL,
  `rowColumnSize` varchar(20) NOT NULL,
  `dateBetweenFilter` varchar(20) NOT NULL,
  `filterWorkingCondition` varchar(3) NOT NULL DEFAULT 'OR',
  `status` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `filters`
--

INSERT INTO `filters` (`filterId`, `filterModuleId`, `filtertableName`, `fieldNameReadonly`, `tableName`, `tableFirstColumn`, `tableColumn`, `fieldHeading`, `fieldType`, `fieldName`, `fieldClass`, `fieldId`, `fieldPlaceholder`, `selectBoxValue`, `selectBoxHtml`, `orderBy`, `whereColumn`, `sortOrder`, `lineNo`, `additionalAttributes`, `rowColumnSize`, `dateBetweenFilter`, `filterWorkingCondition`, `status`) VALUES
(9, 5, 'menus', 'parentId,menus', 'menus', 'menuId', 'menuHeading', 'Parent Id', 'autosuggestive', 'parentId', 'parentId select2', 'parentId', 'Parent Id', '0,>0', 'Parent,Child', '', '', 0, 1, '', '12', '', 'OR', 1),
(10, 5, 'menus', 'menuHeading,menus', 'menus', 'menuId', 'menuHeading', 'Menu Heading', 'text', 'menuheading', 'menuheading', 'menuheading', 'Menu Heading', '', '', '', '', 0, 1, '', '3', '', 'OR', 1),
(13, 14, 'states', 'dateAdded,states', 'states', 'stateId', 'heading', 'Date Added', 'date', 'dateAdded', 'dateAdded', 'dateAdded', 'Date Added', '', '', '', '', 0, 1, '', '3', 'Yes', 'OR', 1);

-- --------------------------------------------------------

--
-- Table structure for table `filter_types`
--

CREATE TABLE `filter_types` (
  `fiterTypeId` int(11) NOT NULL,
  `heading` varchar(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `filter_types`
--

INSERT INTO `filter_types` (`fiterTypeId`, `heading`, `status`) VALUES
(1, 'Top Filter', 1),
(2, 'Customer', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_rooms`
--

CREATE TABLE `hotel_rooms` (
  `hotelRoomId` int(11) NOT NULL,
  `roomNo` int(11) NOT NULL,
  `capacity` int(11) NOT NULL,
  `roomCharges` int(11) NOT NULL,
  `roomStatus` varchar(3) NOT NULL DEFAULT 'No',
  `image` varchar(255) NOT NULL,
  `relatedImages` varchar(500) NOT NULL,
  `storeId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotel_rooms`
--

INSERT INTO `hotel_rooms` (`hotelRoomId`, `roomNo`, `capacity`, `roomCharges`, `roomStatus`, `image`, `relatedImages`, `storeId`, `userId`, `status`) VALUES
(1, 101, 2, 100, 'No', '', '', 1, 1, 1),
(2, 102, 4, 200, 'No', '', '', 1, 1, 1),
(3, 103, 2, 300, 'No', '', '', 1, 1, 1),
(4, 104, 4, 400, 'No', '', '', 1, 1, 1),
(5, 105, 2, 500, 'No', '', '', 1, 1, 1),
(6, 106, 4, 600, 'No', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `image_manager`
--

CREATE TABLE `image_manager` (
  `imageManagerId` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `image_manager`
--

INSERT INTO `image_manager` (`imageManagerId`, `image`, `status`) VALUES
(1, 'public/assets/uploads/970564488.png', 1),
(2, 'public/assets/uploads/ship_shop_pos_default/242791464.gif', 1),
(3, 'public/assets/uploads/ship_shop_pos_default/198310047.gif', 1);

-- --------------------------------------------------------

--
-- Table structure for table `inner_banner`
--

CREATE TABLE `inner_banner` (
  `innerBannerId` int(11) NOT NULL,
  `page` varchar(20) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_template`
--

CREATE TABLE `invoice_template` (
  `invoiceTemplateId` int(11) NOT NULL,
  `heading` varchar(100) NOT NULL,
  `template` mediumtext NOT NULL,
  `tableCode` text NOT NULL,
  `loopTrCode` text NOT NULL,
  `customCss` text NOT NULL,
  `subTotalTrLoop` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `invoice_template`
--

INSERT INTO `invoice_template` (`invoiceTemplateId`, `heading`, `template`, `tableCode`, `loopTrCode`, `customCss`, `subTotalTrLoop`, `status`) VALUES
(1, 'A4 Template 1', 'PHRpdGxlPnt7V0VCU0lURV9OQU1FfX08L3RpdGxlPjxtZXRhIG5hbWU9InZpZXdwb3J0IiBjb250ZW50PSJ3aWR0aD1kZXZpY2Utd2lkdGgsIGluaXRpYWwtc2NhbGU9MS4wIj48bWV0YSBjaGFyc2V0PSJVVEYtOCI+DQo8bGluayBocmVmPSJ7e1VSTH19L2JhY2tlbmQvaW52b2ljZS9hc3NldHMvY3NzL2Jvb3RzdHJhcC5taW4uY3NzIiByZWw9InN0eWxlc2hlZXQiIHR5cGU9InRleHQvY3NzIiAvPg0KPGxpbmsgaHJlZj0ie3tVUkx9fS9iYWNrZW5kL2ludm9pY2UvYXNzZXRzL2ZvbnRzL2ZvbnQtYXdlc29tZS9jc3MvZm9udC1hd2Vzb21lLm1pbi5jc3MiIHJlbD0ic3R5bGVzaGVldCIgdHlwZT0idGV4dC9jc3MiIC8+DQo8bGluayBocmVmPSJ7e1VSTH19L2JhY2tlbmQvaW52b2ljZS9hc3NldHMvaW1nL2Zhdmljb24uaWNvIiByZWw9InNob3J0Y3V0IGljb24iIHR5cGU9ImltYWdlL3gtaWNvbiIgLz4NCjxsaW5rIGNyb3Nzb3JpZ2luPSIiIGhyZWY9Imh0dHBzOi8vZm9udHMuZ3N0YXRpYy5jb20iIHJlbD0icHJlY29ubmVjdCIgLz4NCjxsaW5rIGhyZWY9Imh0dHBzOi8vZm9udHMuZ29vZ2xlYXBpcy5jb20vY3NzP2ZhbWlseT1Qb3BwaW5zOjEwMCwyMDAsMzAwLDQwMCw1MDAsNjAwLDcwMCw4MDAsOTAwIiByZWw9InN0eWxlc2hlZXQiIHR5cGU9InRleHQvY3NzIiAvPg0KPGxpbmsgaHJlZj0ie3tVUkx9fS9iYWNrZW5kL2ludm9pY2UvYXNzZXRzL2Nzcy9zdHlsZS5jc3MiIHJlbD0ic3R5bGVzaGVldCIgdHlwZT0idGV4dC9jc3MiIC8+DQo8ZGl2IGNsYXNzPSJpbnZvaWNlLTEgaW52b2ljZS1jb250ZW50Ij4NCjxkaXYgY2xhc3M9ImNvbnRhaW5lciI+DQo8ZGl2IGNsYXNzPSJyb3ciPg0KPGRpdiBjbGFzcz0iY29sLWxnLTEyIj4NCjxkaXYgY2xhc3M9Imludm9pY2UtaW5uZXIgY2xlYXJmaXgiPg0KPGRpdiBjbGFzcz0iaW52b2ljZS1pbmZvIGNsZWFyZml4IiBpZD0iaW52b2ljZV93cmFwcGVyIj4NCjxkaXYgY2xhc3M9Imludm9pY2UtaGVhZGFyIj4NCjxkaXYgY2xhc3M9InJvdyBnLTAiPg0KPGRpdiBjbGFzcz0iY29sLXNtLTYiPg0KPGRpdiBjbGFzcz0iaW52b2ljZS1sb2dvIj4NCjxkaXYgY2xhc3M9ImxvZ28iPjxpbWcgYWx0PSJsb2dvIiBzcmM9Int7VVJMfX0ve3tXRUJTSVRFX0xPR099fSIgLz48L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQoNCjxkaXYgY2xhc3M9ImNvbC1zbS02IGludm9pY2UtaWQiPg0KPGRpdiBjbGFzcz0iaW5mbyI+DQo8aDEgY2xhc3M9ImNvbG9yLXdoaXRlIGludi1oZWFkZXItMSI+SW52b2ljZTwvaDE+DQoNCjxwIGNsYXNzPSJjb2xvci13aGl0ZSBtYi0xIj5JbnZvaWNlIE51bWJlciA8c3Bhbj57e0lOVk9JQ0VfTlVNQkVSfX08L3NwYW4+PC9wPg0KDQo8cCBjbGFzcz0iY29sb3Itd2hpdGUgbWItMCI+SW52b2ljZSBEYXRlIDxzcGFuPnt7SU5WT0lDRV9EQVRFfX08L3NwYW4+PC9wPg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQoNCjxkaXYgY2xhc3M9Imludm9pY2UtdG9wIj4NCjxkaXYgY2xhc3M9InJvdyI+DQo8ZGl2IGNsYXNzPSJjb2wtc20tNiI+DQo8ZGl2IGNsYXNzPSJpbnZvaWNlLW51bWJlciBtYi0zMCI+DQo8aDQgY2xhc3M9Imludi10aXRsZS0xIj5JbnZvaWNlIFRvPC9oND4NCg0KPGgyIGNsYXNzPSJuYW1lIG1iLTEwIj57e0NVU1RPTUVSX05BTUV9fTwvaDI+DQp7e0NVU1RPTUVSX01PQklMRX19PGJyIC8+DQp7e0NVU1RPTUVSX0VNQUlMfX08YnIgLz4NCnt7Uk9PTV9OT319DQp7e0JBTEFOQ0VfUkVXQVJEX1BPSU5UfX0NCjxkaXYgY2xhc3M9ImxseXB2anB2bG8iPg0KPGg0IGNsYXNzPSJpbnYtdGl0bGUtMSI+RW1wbG95ZWU8L2g0Pg0KDQo8cD57e0VNUExPWUVFTkFNRX19PC9wPg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KDQo8ZGl2IGNsYXNzPSJjb2wtc20tNiI+DQo8ZGl2IGNsYXNzPSJpbnZvaWNlLW51bWJlciBtYi0zMCI+DQo8ZGl2IGNsYXNzPSJpbnZvaWNlLW51bWJlci1pbm5lciI+DQo8aDQgY2xhc3M9Imludi10aXRsZS0xIj5JbnZvaWNlIEZyb208L2g0Pg0KDQo8aDIgY2xhc3M9Im5hbWUgbWItMTAiPnt7U1RPUkVfTkFNRX19PC9oMj4NCg0KPHAgY2xhc3M9Imludm8tYWRkci0xIj57e1NUT1JFX0FERFJFU1N9fTxiciAvPg0Ke3tTVE9SRV9NT0JJTEV9fTxiciAvPg0Ke3tTVE9SRV9FTUFJTH19PC9wPg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCg0KPGRpdiBjbGFzcz0iaW52b2ljZS1jZW50ZXIiPg0KPGRpdiBjbGFzcz0idGFibGUtcmVzcG9uc2l2ZSI+e3tUQUJMRV9DT0RFfX08L2Rpdj4NCjwvZGl2Pg0KDQo8ZGl2IGNsYXNzPSJpbnZvaWNlLWNlbnRlciBld2h5aGp2emhiIj4NCjxoMyBjbGFzcz0iaW52LXRpdGxlLTEiPkNvbW1lbnQ8L2gzPg0Ke3tDT01NRU5UfX08L2Rpdj4NCg0KPGRpdiBjbGFzcz0iaW52b2ljZS1ib3R0b20iPg0KPGRpdiBjbGFzcz0icm93Ij4NCjxkaXYgY2xhc3M9ImNvbC1sZy02IGNvbC1tZC04IGNvbC1zbS03Ij4NCjxkaXYgY2xhc3M9Im1iLTMwIGRlYXItY2xpZW50Ij4NCjxoMyBjbGFzcz0iaW52LXRpdGxlLTEiPlRlcm1zICZhbXA7IENvbmRpdGlvbnM8L2gzPg0KDQo8cD57e1NUT1JFX1RFUk1TfX08L3A+DQo8L2Rpdj4NCjwvZGl2Pg0KDQo8ZGl2IGNsYXNzPSJjb2wtbGctNiBjb2wtbWQtNCBjb2wtc20tNSI+DQo8ZGl2IGNsYXNzPSJtYi0zMCBwYXltZW50LW1ldGhvZCI+DQo8aDMgY2xhc3M9Imludi10aXRsZS0xIiBzdHlsZT0idGV4dC1hbGlnbjpyaWdodCI+UGF5bWVudCBNZXRob2Q8L2gzPg0KDQo8dWwgY2xhc3M9InBheW1lbnQtbWV0aG9kLWxpc3QtMSB0ZXh0LTE0Ij4NCgk8bGkgc3R5bGU9InRleHQtYWxpZ246cmlnaHQ7Zm9udC13ZWlnaHQ6Ym9sZCI+e3tPUkRFUl9QQVlNRU5UX01FVEhPRH19PC9saT4NCgk8bGk+PHN0cm9uZz5BbW91bnQgSW4gV29yZHMgOiA8L3N0cm9uZz57e1BBWU1FTlRfSU5fV09SRFN9fTwvbGk+DQo8L3VsPg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQoNCjxkaXYgY2xhc3M9Imludm9pY2UtY29udGFjdCBjbGVhcmZpeCI+DQo8ZGl2IGNsYXNzPSJyb3cgZy0wIj4NCjxkaXYgY2xhc3M9ImNvbC1sZy05IGNvbC1tZC0xMSBjb2wtc20tMTIiPg0KPGRpdiBjbGFzcz0iY29udGFjdC1pbmZvIj48YSBocmVmPSJ0ZWw6KzU1LTRYWC02MzQtNzA3MSI+e3tTVE9SRV9NT0JJTEV9fTwvYT4gPGEgaHJlZj0idGVsOnt7U1RPUkVfRU1BSUx9fSI+e3tTVE9SRV9FTUFJTH19PC9hPiA8YSBjbGFzcz0ibXItMCBkLW5vbmUtNTgwIiBocmVmPSJ0ZWw6aW5mb0B0aGVtZXZlc3NlbC5jb20iPnt7U1RPUkVfQUREUkVTU319PC9hPjwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQoNCjxkaXYgY2xhc3M9Imludm9pY2UtYnRuLXNlY3Rpb24gY2xlYXJmaXggZC1wcmludC1ub25lIj48YSBjbGFzcz0iYnRuIGJ0bi1sZyBidG4tcHJpbnQiIGhyZWY9ImphdmFzY3JpcHQ6d2luZG93LnByaW50KCkiPlByaW50IEludm9pY2UgPC9hPiA8YSBjbGFzcz0iYnRuIGJ0bi1sZyBidG4tZG93bmxvYWQgYnRuLXRoZW1lIiBpZD0iaW52b2ljZV9kb3dubG9hZF9idG4iPiBEb3dubG9hZCBJbnZvaWNlIDwvYT48L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8c2NyaXB0IHNyYz0ie3tVUkx9fS9iYWNrZW5kL2ludm9pY2UvYXNzZXRzL2pzL2pxdWVyeS5taW4uanMiPjwvc2NyaXB0PjxzY3JpcHQgc3JjPSJ7e1VSTH19L2JhY2tlbmQvaW52b2ljZS9hc3NldHMvanMvanNwZGYubWluLmpzIj48L3NjcmlwdD48c2NyaXB0IHNyYz0ie3tVUkx9fS9iYWNrZW5kL2ludm9pY2UvYXNzZXRzL2pzL2h0bWwyY2FudmFzLmpzIj48L3NjcmlwdD48c2NyaXB0IHNyYz0ie3tVUkx9fS9iYWNrZW5kL2ludm9pY2UvYXNzZXRzL2pzL2FwcC5qcyI+PC9zY3JpcHQ+', 'PHRhYmxlIGNsYXNzPSJ0YWJsZSBtYi0wIHRhYmxlLXN0cmlwZWQgaW52b2ljZS10YWJsZSI+DQogICA8dGhlYWQgY2xhc3M9ImJnLWFjdGl2ZSI+DQogICAgICA8dHIgY2xhc3M9InRyIj4NCiAgICAgICAgIDx0aD5Oby48L3RoPg0KICAgICAgICAgPHRoIGNsYXNzPSJwbDAgdGV4dC1zdGFydCIgd2lkdGg9IjQwJSI+SXRlbSBEZXNjcmlwdGlvbjwvdGg+DQogICAgICAgICA8dGggY2xhc3M9InRleHQtY2VudGVyIj5QcmljZTwvdGg+DQogICAgICAgICA8dGggY2xhc3M9InRleHQtY2VudGVyIj5RdWFudGl0eTwvdGg+DQogICAgICAgICA8dGggY2xhc3M9InRleHQtY2VudGVyIj5EaXNjb3VudDwvdGg+DQogICAgICAgICA8dGggY2xhc3M9InRleHQtY2VudGVyIj5UYXg8L3RoPg0KICAgICAgICAgPHRoIGNsYXNzPSJ0ZXh0LWVuZCI+VG90YWw8L3RoPg0KICAgICAgPC90cj4NCiAgIDwvdGhlYWQ+DQogICA8dGJvZHk+DQogICAgICB7e0xPT1BfVFJfQ09ERX19DQogICAgICB7e1NVQl9UT1RBTF9UUl9MT09QfX0NCiAgIDwvdGJvZHk+DQo8L3RhYmxlPg==', 'PHRyIGNsYXNzPSJ0ciI+DQogICA8dGQ+DQogICAgICA8ZGl2IGNsYXNzPSJpdGVtLWRlc2MtMSI+PHNwYW4+e3tTTk99fTwvc3Bhbj48L2Rpdj4NCiAgIDwvdGQ+DQogICA8dGQgY2xhc3M9InBsMCIgd2lkdGg9IjQwJSI+e3tQUk9EVUNUX05BTUV9fTxkaXYgY2xhc3M9ImR4cXpremFlZnogZHhxemt6YWVment7SVZBTFVFfX0iPk1vZGVsIDoge3tQUk9EVUNUX01PREVMfX08L2Rpdj48ZGl2IGNsYXNzPSJtZm9wZnloa2ZiIG1mb3BmeWhrZmJ7e0lWQUxVRX19Ij5CYXJjb2RlIDoge3tQUk9EVUNUX0JBUkNPREV9fTwvZGl2PjxkaXYgY2xhc3M9InBpdGxmYmRucmkgcGl0bGZiZG5yaXt7SVZBTFVFfX0iPkhTTiBDb2RlOiB7e0hTTl9DT0RFfX08L2Rpdj48ZGl2IGNsYXNzPSJqZGlvY3lnbGVyIGpkaW9jeWdsZXJ7e0lWQUxVRX19Ij5FeHRyYSBJbmZvcm1hdGlvbjoge3tQUk9EVUNUX0VYVFJBX0lORk9STUFUSU9OfX08L2Rpdj48L3RkPg0KICAgPHRkIGNsYXNzPSJ0ZXh0LWNlbnRlciI+e3tQUk9EVUNUX1BSSUNFfX08L3RkPg0KICAgPHRkIGNsYXNzPSJ0ZXh0LWNlbnRlciAiPnt7UFJPRFVDVF9RVUFOVElUWX19PC90ZD4NCiAgIDx0ZCBjbGFzcz0idGV4dC1jZW50ZXIiPnt7UFJPRFVDVF9ESVNDT1VOVH19PGJyPjxzcGFuPnt7UFJPRFVDVF9ESVNDT1VOVF9WQUxVRX19PC9zcGFuPjwvdGQ+DQogICA8dGQgY2xhc3M9InRleHQtY2VudGVyIj57e1BST0RVQ1RfVEFYX0hFQURJTkd9fTxicj48c3Bhbj57e1BST0RVQ1RfVEFYfX08L3NwYW4+PGJyPjxzcGFuPnt7UFJPRFVDVF9UQVhfVFlQRX19PC9zcGFuPjwvdGQ+DQogICA8dGQgY2xhc3M9InRleHQtZW5kIj48c3Ryb25nPnt7UFJPRFVDVF9UT1RBTH19PC9zdHJvbmc+PC90ZD4NCjwvdHI+', 'LmR4cXpremFlZnosLm1mb3BmeWhrZmIsLmpkaW9jeWdsZXJ7DQogZm9udC1zaXplOjEycHg7DQpjb2xvcjojOTE5MTkxOw0KfQ0KIC5zeW1ib2w6OmJlZm9yZSB7DQogICAgICAgICBjb250ZW50OiAi4oK5IjsNCiAgICAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jazsNCiAgICAgICAgIG1hcmdpbi1yaWdodDogMnB4Ow0KICAgICAgICAgfQ0KLmNjZ2pkcnF6cmJfdG90YWwgdGR7DQpmb250LXNpemU6MTdweCAhaW1wb3J0YW50Ow0KfQ0KLmludm9pY2UtMSAuaW52b2ljZS1pZCAuaW5mbyB7DQogICAgbWF4LXdpZHRoOiAzNTBweCAhaW1wb3J0YW50Ow0KICAgIG1hcmdpbjogMCA1MHB4IDAgYXV0bzsNCiAgICBwYWRkaW5nOiAzNHB4IDA7DQp9DQoucGF5bWVudC1tZXRob2QgbGl7DQp0ZXh0LWFsaWduOnJpZ2h0Ow0KfQ==', 'PHRyIGNsYXNzPSJ0cjIgY2NnamRycXpyYl97e0tFWUNMQVNTfX0iPg0KPHRkPjwvdGQ+DQo8dGQ+PC90ZD4NCiAgIDx0ZCBjbGFzcz0idGV4dC1yaWdodCIgY29sc3Bhbj0iMiI+PHN0cm9uZz57e0tFWX19PC9zdHJvbmc+PC90ZD4NCiAgIDx0ZCBjbGFzcz0idGV4dC1lbmQiIGNvbHNwYW49IjMiPjxzdHJvbmc+e3tWQUxVRX19PC9zdHJvbmc+PC90ZD4NCjwvdHI+', 1),
(2, 'Thermal Invoice 1', 'PG1ldGEgaHR0cC1lcXVpdj0iQ29udGVudC1UeXBlIiBjb250ZW50PSJ0ZXh0L2h0bWw7IGNoYXJzZXQ9VVRGLTgiPjx0aXRsZT57e1dFQlNJVEVfTkFNRX19PC90aXRsZT4NCjxsaW5rIGhyZWY9Int7VVJMfX0vYmFja2VuZC9pbnZvaWNlL3RoZXJtYWwvYm9vdHN0cmFwLm1pbi5jc3MiIHJlbD0ic3R5bGVzaGVldCIgdHlwZT0idGV4dC9jc3MiIC8+DQo8bGluayBocmVmPSJ7e1VSTH19L2JhY2tlbmQvaW52b2ljZS90aGVybWFsL3NpemVfNTZtbS5jc3MiIG1lZGlhPSJhbGwiIHJlbD0ic3R5bGVzaGVldCIgLz4NCjxsaW5rIGhyZWY9Int7VVJMfX0vYmFja2VuZC9pbnZvaWNlL3RoZXJtYWwvcHJpbnRfYmlsbC5jc3MiIG1lZGlhPSJhbGwiIHJlbD0ic3R5bGVzaGVldCIgLz4NCjxkaXYgaWQ9IndyYXBwZXIiIHN0eWxlPSJwYWRkaW5nLXRvcDoycHgiPg0KPGRpdiBpZD0icmVjZWlwdERhdGEiPg0KPGRpdiBpZD0icmVjZWlwdC1kYXRhIj4NCjxkaXYgY2xhc3M9InRleHQtY2VudGVyIj48aW1nIHNyYz0ie3tVUkx9fS97e1dFQlNJVEVfTE9HT319IiBzdHlsZT0iaGVpZ2h0OiAyMHB4O21hcmdpbjphdXRvO2Rpc3BsYXk6YmxvY2siIC8+PC9kaXY+DQoNCjxociAvPg0KPHRhYmxlIGNsYXNzPSJ0YWJsZSB0YWJsZS1jb25kZW5zZWQiPg0KCTx0Ym9keT4NCgkJPHRyPg0KCQkJPHRkPkNsaWVudCA6IHt7Q1VTVE9NRVJfTkFNRX19PC90ZD4NCgkJCTx0ZCBhbGlnbj0icmlnaHQiPkRhdGUgOiB7e0lOVk9JQ0VfREFURX19PC90ZD4NCgkJPC90cj4NCgkJPHRyPg0KCQkJPHRkIGNvbHNwYW49IjIiPk1vYmlsZSA6IHt7Q1VTVE9NRVJfTU9CSUxFfX08L3RkPg0KCQk8L3RyPg0KCQk8dHI+DQoJCQk8dGQgY29sc3Bhbj0iMiI+UGF5bWVudCBNb2RlIDoge3tPUkRFUl9QQVlNRU5UX01FVEhPRH19PC90ZD4NCgkJPC90cj4NCgkJPHRyPg0KCQkJPHRkIGNvbHNwYW49IjIiPk9yZGVyIElkIDoge3tJTlZPSUNFX05VTUJFUn19PC90ZD4NCgkJPC90cj4NCgk8L3Rib2R5Pg0KPC90YWJsZT4NCg0KPGRpdiBjbGFzcz0iaXJfY2xlYXIiPiZuYnNwOzwvZGl2Pg0Ke3tUQUJMRV9DT0RFfX08L2Rpdj4NCg0KPGRpdiBjbGFzcz0iaXJfY2xlYXIiPiZuYnNwOzwvZGl2Pg0KPC9kaXY+DQo8aW5wdXQgb25jbGljaz0icHJpbnREaXYoJ3JlY2VpcHREYXRhJykiIHN0eWxlPSJkaXNwbGF5OmJsb2NrO21hcmdpbjphdXRvO3BhZGRpbmc6MTBweDtiYWNrZ3JvdW5kOiMzNGI0ZWI7bWFyZ2luLXRvcDoxMHB4O2JvcmRlcjowcHg7Y29sb3I6d2hpdGU7d2lkdGg6MTUwcHg7IiB0eXBlPSJidXR0b24iIHZhbHVlPSJQUklOVCIgLz48L2Rpdj4NCg==', 'PHRhYmxlIGNsYXNzPSJ0YWJsZSB0YWJsZS1jb25kZW5zZWQiIHN0eWxlPSJtYXJnaW4tdG9wOjVweCI+DQogICA8dGhlYWQ+DQogICAgICA8dHI+DQogICAgICAgICA8dGg+Tm8uPC90aD4NCiAgICAgICAgIDx0aCBjbGFzcz0icGwwIHRleHQtc3RhcnQiIHdpZHRoPSI0MCUiPkl0ZW08L3RoPg0KICAgICAgICAgPHRoIGNsYXNzPSJ0ZXh0LWNlbnRlciI+UHJpY2U8L3RoPg0KICAgICAgICAgPHRoIGNsYXNzPSJ0ZXh0LWNlbnRlciI+UXVhbnRpdHk8L3RoPg0KICAgICAgICAgPHRoIGNsYXNzPSJ0ZXh0LWNlbnRlciI+RGlzY291bnQ8L3RoPg0KICAgICAgICAgPHRoIGNsYXNzPSJ0ZXh0LWNlbnRlciI+VGF4PC90aD4NCiAgICAgICAgIDx0aCBjbGFzcz0idGV4dC1lbmQiPlRvdGFsPC90aD4NCiAgICAgIDwvdHI+DQogICA8L3RoZWFkPg0KICAgPHRib2R5Pg0KICAgICAge3tMT09QX1RSX0NPREV9fQ0KICAgICAge3tTVUJfVE9UQUxfVFJfTE9PUH19DQogICA8L3Rib2R5Pg0KPC90YWJsZT4=', 'PHRyIGNsYXNzPSJib3JkZXJVcERvd24iPg0KICAgPHRkIGNsYXNzPSJuby1ib3JkZXIgYm9yZGVyLWJvdHRvbSI+e3tTTk99fTwvdGQ+DQogICA8dGQgY2xhc3M9Im5vLWJvcmRlciBib3JkZXItYm90dG9tIj4NCiAgICAgIHt7UFJPRFVDVF9OQU1FfX0NCiAgICAgIDxkaXYgY2xhc3M9ImR4cXpremFlZnogZHhxemt6YWVment7SVZBTFVFfX0iPk1vZGVsIDoge3tQUk9EVUNUX01PREVMfX08L2Rpdj4NCiAgICAgIDxkaXYgY2xhc3M9Im1mb3BmeWhrZmIgbWZvcGZ5aGtmYnt7SVZBTFVFfX0iPkJhcmNvZGUgOiB7e1BST0RVQ1RfQkFSQ09ERX19PC9kaXY+DQogICAgICA8ZGl2IGNsYXNzPSJqZGlvY3lnbGVyIGpkaW9jeWdsZXJ7e0lWQUxVRX19Ij5FeHRyYSBJbmZvcm1hdGlvbjoge3tQUk9EVUNUX0VYVFJBX0lORk9STUFUSU9OfX08L2Rpdj4NCiAgIDwvdGQ+DQogICA8dGQgYWxpZ249InJpZ2h0IiBjbGFzcz0ibm8tYm9yZGVyIGJvcmRlci1ib3R0b20iPnt7UFJPRFVDVF9QUklDRX19PC90ZD4NCiAgIDx0ZCBhbGlnbj0icmlnaHQiIGNsYXNzPSJuby1ib3JkZXIgYm9yZGVyLWJvdHRvbSI+e3tQUk9EVUNUX1FVQU5USVRZfX08L3RkPg0KICAgPHRkIGFsaWduPSJyaWdodCIgY2xhc3M9Im5vLWJvcmRlciBib3JkZXItYm90dG9tIj57e1BST0RVQ1RfRElTQ09VTlR9fTxicj48c3Bhbj57e1BST0RVQ1RfRElTQ09VTlRfVkFMVUV9fTwvc3Bhbj48L3RkPg0KICAgPHRkIGFsaWduPSJyaWdodCIgY2xhc3M9Im5vLWJvcmRlciBib3JkZXItYm90dG9tIHRleHQtcmlnaHQiPnt7UFJPRFVDVF9UQVhfSEVBRElOR319PGJyPjxzcGFuPnt7UFJPRFVDVF9UQVh9fTwvc3Bhbj48L3RkPg0KICAgPHRkIGFsaWduPSJyaWdodCIgY2xhc3M9Im5vLWJvcmRlciBib3JkZXItYm90dG9tIHRleHQtcmlnaHQiPnt7UFJPRFVDVF9UT1RBTH19PC90ZD4NCjwvdHI+', 'LmxtcXljb2djbm0gew0KICAgZm9udC1mYW1pbHk6ICdSb2JvdG8nLCBzYW5zLXNlcmlmOw0KfQ0KDQpib2R5IHsNCiAgIGZvbnQtd2VpZ2h0OiBib2xkOw0KICAgZm9udC1zaXplOiAxMnB4Ow0KICAgZm9udC1mYW1pbHk6ICdSb2JvdG8nLCBzYW5zLXNlcmlmOw0KfQ0KDQoudGFibGUgew0KICAgd2lkdGg6IDEwMCU7DQogICBtYXgtd2lkdGg6IDEwMCU7DQogICBtYXJnaW4tYm90dG9tOiAwcHg7DQp9DQoNCmgzIHsNCiAgIG1hcmdpbjogNXB4IDA7DQp9DQoNCi5oMywNCmgzIHsNCiAgIGZvbnQtc2l6ZTogMjRweDsNCn0NCg0KYiwNCnN0cm9uZyB7DQogICBmb250LXdlaWdodDogNzAwOw0KfQ0KDQp0YWJsZSB7DQogICBiYWNrZ3JvdW5kLWNvbG9yOiB0cmFuc3BhcmVudDsNCn0NCg0KdGFibGUgew0KICAgYm9yZGVyLXNwYWNpbmc6IDA7DQogICBib3JkZXItY29sbGFwc2U6IGNvbGxhcHNlOw0KfQ0KDQoudGFibGU+Y2FwdGlvbit0aGVhZD50cjpmaXJzdC1jaGlsZD50ZCwNCi50YWJsZT5jYXB0aW9uK3RoZWFkPnRyOmZpcnN0LWNoaWxkPnRoLA0KLnRhYmxlPmNvbGdyb3VwK3RoZWFkPnRyOmZpcnN0LWNoaWxkPnRkLA0KLnRhYmxlPmNvbGdyb3VwK3RoZWFkPnRyOmZpcnN0LWNoaWxkPnRoLA0KLnRhYmxlPnRoZWFkOmZpcnN0LWNoaWxkPnRyOmZpcnN0LWNoaWxkPnRkLA0KLnRhYmxlPnRoZWFkOmZpcnN0LWNoaWxkPnRyOmZpcnN0LWNoaWxkPnRoIHsNCiAgIGJvcmRlci10b3A6IDA7DQp9DQoNCi50YWJsZS1jb25kZW5zZWQ+dGJvZHk+dHI+dGQsDQoudGFibGUtY29uZGVuc2VkPnRib2R5PnRyPnRoLA0KLnRhYmxlLWNvbmRlbnNlZD50Zm9vdD50cj50ZCwNCi50YWJsZS1jb25kZW5zZWQ+dGZvb3Q+dHI+dGgsDQoudGFibGUtY29uZGVuc2VkPnRoZWFkPnRyPnRkLA0KLnRhYmxlLWNvbmRlbnNlZD50aGVhZD50cj50aCB7DQogICBwYWRkaW5nOiA1cHg7DQp9DQoNCi50YWJsZT50Ym9keT50cj50ZCwNCi50YWJsZT50Ym9keT50cj50aCwNCi50YWJsZT50Zm9vdD50cj50ZCwNCi50YWJsZT50Zm9vdD50cj50aCwNCi50YWJsZT50aGVhZD50cj50ZCwNCi50YWJsZT50aGVhZD50cj50aCB7DQogICBwYWRkaW5nOiAwcHg7DQogICBsaW5lLWhlaWdodDogMS40Mjg1NzE0MzsNCiAgIHZlcnRpY2FsLWFsaWduOiB0b3A7DQp9DQoNCnRkLA0KdGggew0KICAgcGFkZGluZzogMDsNCn0NCg0KLnRhYmxlIHRkLA0KLnRhYmxlIHRoIHsNCiAgIGJvcmRlci10b3A6IG5vbmU7DQp9DQoNCmhyIHsNCiAgIG1hcmdpbi10b3A6IDEwcHg7DQogICBtYXJnaW4tYm90dG9tOiAxMHB4Ow0KfQ0KDQouYm9yZGVyVXBEb3duIHsNCiAgIGJvcmRlci10b3A6IDFweCBzb2xpZCAjZTVlNWU1Ow0KICAgYm9yZGVyLWJvdHRvbTogMXB4IHNvbGlkICNlNWU1ZTU7DQp9DQoNCi5zeW1ib2w6OmJlZm9yZSB7DQogICBjb250ZW50OiAi4oK5IjsNCiAgIGRpc3BsYXk6IGlubGluZS1ibG9jazsNCn0=', 'PHRyIGNsYXNzPSJ0cjIgY2NnamRycXpyYl97e0tFWUNMQVNTfX0iPg0KICAgPHRkPjwvdGQ+DQogICA8dGQ+PC90ZD4NCiAgIDx0ZD48L3RkPg0KICAgPHRkIGNvbHNwYW49IjIiPjxzdHJvbmc+e3tLRVl9fTwvc3Ryb25nPjwvdGQ+DQogICA8dGQgY29sc3Bhbj0iMiIgY2xhc3M9InRleHQtcmlnaHQiIGFsaWduPSJyaWdodCI+PHN0cm9uZz57e1ZBTFVFfX08L3N0cm9uZz48L3RkPg0KPC90cj4=', 1),
(3, 'KOT Template 1', 'PG1ldGEgaHR0cC1lcXVpdj0iQ29udGVudC1UeXBlIiBjb250ZW50PSJ0ZXh0L2h0bWw7IGNoYXJzZXQ9VVRGLTgiPjx0aXRsZT57e1dFQlNJVEVfTkFNRX19PC90aXRsZT4NCjxsaW5rIGhyZWY9Int7VVJMfX0vYmFja2VuZC9pbnZvaWNlL3RoZXJtYWwvYm9vdHN0cmFwLm1pbi5jc3MiIHJlbD0ic3R5bGVzaGVldCIgdHlwZT0idGV4dC9jc3MiIC8+DQo8bGluayBocmVmPSJ7e1VSTH19L2JhY2tlbmQvaW52b2ljZS90aGVybWFsL3NpemVfNTZtbS5jc3MiIG1lZGlhPSJhbGwiIHJlbD0ic3R5bGVzaGVldCIgLz4NCjxsaW5rIGhyZWY9Int7VVJMfX0vYmFja2VuZC9pbnZvaWNlL3RoZXJtYWwvcHJpbnRfYmlsbC5jc3MiIG1lZGlhPSJhbGwiIHJlbD0ic3R5bGVzaGVldCIgLz4NCjxkaXYgaWQ9IndyYXBwZXIiIHN0eWxlPSJwYWRkaW5nLXRvcDoycHgiPg0KPGRpdiBpZD0icmVjZWlwdERhdGEiPg0KPGRpdiBpZD0icmVjZWlwdC1kYXRhIj4NCjxkaXYgY2xhc3M9InRleHQtY2VudGVyIj48aW1nIHNyYz0ie3tVUkx9fS97e1dFQlNJVEVfTE9HT319IiBzdHlsZT0iaGVpZ2h0OiAyMHB4O21hcmdpbjphdXRvO2Rpc3BsYXk6YmxvY2siIC8+PC9kaXY+DQoNCjxociAvPg0KPHRhYmxlIGNsYXNzPSJ0YWJsZSB0YWJsZS1jb25kZW5zZWQiPg0KCTx0Ym9keT4NCgkJPHRyPg0KCQkJPHRkPkNsaWVudCA6IHt7Q1VTVE9NRVJfTkFNRX19PC90ZD4NCgkJCTx0ZCBhbGlnbj0icmlnaHQiPlRhYmxlOiB7e1RBQkxFTk99fTwvdGQ+DQoJCTwvdHI+DQoJCTx0cj4NCgkJCTx0ZCBjb2xzcGFuPSIyIj5PcmRlciBJZCA6IHt7SU5WT0lDRV9OVU1CRVJ9fTwvdGQ+DQoJCTwvdHI+DQoJPC90Ym9keT4NCjwvdGFibGU+DQoNCjxkaXYgY2xhc3M9ImlyX2NsZWFyIj4mbmJzcDs8L2Rpdj4NCnt7VEFCTEVfQ09ERX19PC9kaXY+DQoNCjxkaXYgY2xhc3M9ImlyX2NsZWFyIj4mbmJzcDs8L2Rpdj4NCjwvZGl2Pg0KPGlucHV0IG9uY2xpY2sgPSAid2luZG93LnByaW50KCkiICBzdHlsZT0iZGlzcGxheTpibG9jazttYXJnaW46YXV0bztwYWRkaW5nOjEwcHg7YmFja2dyb3VuZDojMzRiNGViO21hcmdpbi10b3A6MTBweDtib3JkZXI6MHB4O2NvbG9yOndoaXRlO3dpZHRoOjE1MHB4OyIgdHlwZT0iYnV0dG9uIiB2YWx1ZT0iUFJJTlQiIC8+PC9kaXY+DQo=', 'PHRhYmxlIGNsYXNzPSJ0YWJsZSB0YWJsZS1jb25kZW5zZWQiIHN0eWxlPSJtYXJnaW4tdG9wOjVweCI+DQogICA8dGhlYWQ+DQogICAgICA8dHI+DQogICAgICAgICA8dGggY2xhc3M9InRleHQtc3RhcnQiPk5vLjwvdGg+DQogICAgICAgICA8dGggY2xhc3M9InRleHQtc3RhcnQiIHdpZHRoPSI0MCUiPkl0ZW08L3RoPg0KICAgICAgICAgPHRoIGNsYXNzPSJ0ZXh0LXJpZ2h0Ij5RdWFudGl0eTwvdGg+DQogICAgICA8L3RyPg0KICAgPC90aGVhZD4NCiAgIDx0Ym9keT4NCiAgICAgIHt7TE9PUF9UUl9DT0RFfX0NCiAgICAgIHt7U1VCX1RPVEFMX1RSX0xPT1B9fQ0KICAgPC90Ym9keT4NCjwvdGFibGU+', 'PHRyIGNsYXNzPSJib3JkZXJVcERvd24iPg0KICAgPHRkIGNsYXNzPSJuby1ib3JkZXIgYm9yZGVyLWJvdHRvbSI+e3tTTk99fTwvdGQ+DQogICA8dGQgY2xhc3M9Im5vLWJvcmRlciBib3JkZXItYm90dG9tIj4NCiAgICAgIHt7UFJPRFVDVF9OQU1FfX0NCiAgICAgIDxkaXYgY2xhc3M9ImpkaW9jeWdsZXIgamRpb2N5Z2xlcnt7SVZBTFVFfX0iPkV4dHJhIEluZm9ybWF0aW9uOiB7e1BST0RVQ1RfRVhUUkFfSU5GT1JNQVRJT059fTwvZGl2Pg0KICAgPC90ZD4NCiAgIDx0ZCBhbGlnbj0icmlnaHQiIGNsYXNzPSJuby1ib3JkZXIgYm9yZGVyLWJvdHRvbSI+e3tQUk9EVUNUX1FVQU5USVRZfX08L3RkPg0KPC90cj4=', 'LmxtcXljb2djbm0gew0KICAgZm9udC1mYW1pbHk6ICdSb2JvdG8nLCBzYW5zLXNlcmlmOw0KfQ0KDQpib2R5IHsNCiAgIGZvbnQtd2VpZ2h0OiBib2xkOw0KICAgZm9udC1zaXplOiAxMnB4Ow0KICAgZm9udC1mYW1pbHk6ICdSb2JvdG8nLCBzYW5zLXNlcmlmOw0KfQ0KDQoudGFibGUgew0KICAgd2lkdGg6IDEwMCU7DQogICBtYXgtd2lkdGg6IDEwMCU7DQogICBtYXJnaW4tYm90dG9tOiAwcHg7DQp9DQoNCmgzIHsNCiAgIG1hcmdpbjogNXB4IDA7DQp9DQoNCi5oMywNCmgzIHsNCiAgIGZvbnQtc2l6ZTogMjRweDsNCn0NCg0KYiwNCnN0cm9uZyB7DQogICBmb250LXdlaWdodDogNzAwOw0KfQ0KDQp0YWJsZSB7DQogICBiYWNrZ3JvdW5kLWNvbG9yOiB0cmFuc3BhcmVudDsNCn0NCg0KdGFibGUgew0KICAgYm9yZGVyLXNwYWNpbmc6IDA7DQogICBib3JkZXItY29sbGFwc2U6IGNvbGxhcHNlOw0KfQ0KDQoudGFibGU+Y2FwdGlvbit0aGVhZD50cjpmaXJzdC1jaGlsZD50ZCwNCi50YWJsZT5jYXB0aW9uK3RoZWFkPnRyOmZpcnN0LWNoaWxkPnRoLA0KLnRhYmxlPmNvbGdyb3VwK3RoZWFkPnRyOmZpcnN0LWNoaWxkPnRkLA0KLnRhYmxlPmNvbGdyb3VwK3RoZWFkPnRyOmZpcnN0LWNoaWxkPnRoLA0KLnRhYmxlPnRoZWFkOmZpcnN0LWNoaWxkPnRyOmZpcnN0LWNoaWxkPnRkLA0KLnRhYmxlPnRoZWFkOmZpcnN0LWNoaWxkPnRyOmZpcnN0LWNoaWxkPnRoIHsNCiAgIGJvcmRlci10b3A6IDA7DQp9DQoNCi50YWJsZS1jb25kZW5zZWQ+dGJvZHk+dHI+dGQsDQoudGFibGUtY29uZGVuc2VkPnRib2R5PnRyPnRoLA0KLnRhYmxlLWNvbmRlbnNlZD50Zm9vdD50cj50ZCwNCi50YWJsZS1jb25kZW5zZWQ+dGZvb3Q+dHI+dGgsDQoudGFibGUtY29uZGVuc2VkPnRoZWFkPnRyPnRkLA0KLnRhYmxlLWNvbmRlbnNlZD50aGVhZD50cj50aCB7DQogICBwYWRkaW5nOiA1cHg7DQp9DQoNCi50YWJsZT50Ym9keT50cj50ZCwNCi50YWJsZT50Ym9keT50cj50aCwNCi50YWJsZT50Zm9vdD50cj50ZCwNCi50YWJsZT50Zm9vdD50cj50aCwNCi50YWJsZT50aGVhZD50cj50ZCwNCi50YWJsZT50aGVhZD50cj50aCB7DQogICBwYWRkaW5nOiAwcHg7DQogICBsaW5lLWhlaWdodDogMS40Mjg1NzE0MzsNCiAgIHZlcnRpY2FsLWFsaWduOiB0b3A7DQp9DQoNCnRkLA0KdGggew0KICAgcGFkZGluZzogMDsNCn0NCg0KLnRhYmxlIHRkLA0KLnRhYmxlIHRoIHsNCiAgIGJvcmRlci10b3A6IG5vbmU7DQp9DQoNCmhyIHsNCiAgIG1hcmdpbi10b3A6IDEwcHg7DQogICBtYXJnaW4tYm90dG9tOiAxMHB4Ow0KfQ0KDQouYm9yZGVyVXBEb3duIHsNCiAgIGJvcmRlci10b3A6IDFweCBzb2xpZCAjZTVlNWU1Ow0KICAgYm9yZGVyLWJvdHRvbTogMXB4IHNvbGlkICNlNWU1ZTU7DQp9DQoNCi5zeW1ib2w6OmJlZm9yZSB7DQogICBjb250ZW50OiAi4oK5IjsNCiAgIGRpc3BsYXk6IGlubGluZS1ibG9jazsNCn0=', '', 1),
(4, 'PO Invoice Template 1', 'PHRpdGxlPnt7V0VCU0lURV9OQU1FfX08L3RpdGxlPjxtZXRhIG5hbWU9InZpZXdwb3J0IiBjb250ZW50PSJ3aWR0aD1kZXZpY2Utd2lkdGgsIGluaXRpYWwtc2NhbGU9MS4wIj48bWV0YSBjaGFyc2V0PSJVVEYtOCI+DQo8bGluayBocmVmPSJ7e1VSTH19L2JhY2tlbmQvaW52b2ljZS9hc3NldHMvY3NzL2Jvb3RzdHJhcC5taW4uY3NzIiByZWw9InN0eWxlc2hlZXQiIHR5cGU9InRleHQvY3NzIiAvPg0KPGxpbmsgaHJlZj0ie3tVUkx9fS9iYWNrZW5kL2ludm9pY2UvYXNzZXRzL2ZvbnRzL2ZvbnQtYXdlc29tZS9jc3MvZm9udC1hd2Vzb21lLm1pbi5jc3MiIHJlbD0ic3R5bGVzaGVldCIgdHlwZT0idGV4dC9jc3MiIC8+DQo8bGluayBocmVmPSJ7e1VSTH19L2JhY2tlbmQvaW52b2ljZS9hc3NldHMvaW1nL2Zhdmljb24uaWNvIiByZWw9InNob3J0Y3V0IGljb24iIHR5cGU9ImltYWdlL3gtaWNvbiIgLz4NCjxsaW5rIGNyb3Nzb3JpZ2luPSIiIGhyZWY9Imh0dHBzOi8vZm9udHMuZ3N0YXRpYy5jb20iIHJlbD0icHJlY29ubmVjdCIgLz4NCjxsaW5rIGhyZWY9Imh0dHBzOi8vZm9udHMuZ29vZ2xlYXBpcy5jb20vY3NzP2ZhbWlseT1Qb3BwaW5zOjEwMCwyMDAsMzAwLDQwMCw1MDAsNjAwLDcwMCw4MDAsOTAwIiByZWw9InN0eWxlc2hlZXQiIHR5cGU9InRleHQvY3NzIiAvPg0KPGxpbmsgaHJlZj0ie3tVUkx9fS9iYWNrZW5kL2ludm9pY2UvYXNzZXRzL2Nzcy9zdHlsZS5jc3MiIHJlbD0ic3R5bGVzaGVldCIgdHlwZT0idGV4dC9jc3MiIC8+DQo8ZGl2IGNsYXNzPSJpbnZvaWNlLTEgaW52b2ljZS1jb250ZW50Ij4NCjxkaXYgY2xhc3M9ImNvbnRhaW5lciI+DQo8ZGl2IGNsYXNzPSJyb3ciPg0KPGRpdiBjbGFzcz0iY29sLWxnLTEyIj4NCjxkaXYgY2xhc3M9Imludm9pY2UtaW5uZXIgY2xlYXJmaXgiPg0KPGRpdiBjbGFzcz0iaW52b2ljZS1pbmZvIGNsZWFyZml4IiBpZD0iaW52b2ljZV93cmFwcGVyIj4NCjxkaXYgY2xhc3M9Imludm9pY2UtaGVhZGFyIj4NCjxkaXYgY2xhc3M9InJvdyBnLTAiPg0KPGRpdiBjbGFzcz0iY29sLXNtLTYiPg0KPGRpdiBjbGFzcz0iaW52b2ljZS1sb2dvIj4NCjxkaXYgY2xhc3M9ImxvZ28iPjxpbWcgYWx0PSJsb2dvIiBzcmM9Int7VVJMfX0ve3tXRUJTSVRFX0xPR099fSIgLz48L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQoNCjxkaXYgY2xhc3M9ImNvbC1zbS02IGludm9pY2UtaWQiPg0KPGRpdiBjbGFzcz0iaW5mbyI+DQo8aDEgY2xhc3M9ImNvbG9yLXdoaXRlIGludi1oZWFkZXItMSI+UHVyY2hhc2UgT3JkZXI8L2gxPg0KDQo8cCBjbGFzcz0iY29sb3Itd2hpdGUgbWItMSI+UE8gTnVtYmVyIDxzcGFuPnt7UE9fTlVNQkVSfX08L3NwYW4+PC9wPg0KDQo8cCBjbGFzcz0iY29sb3Itd2hpdGUgbWItMCI+UE8gRGF0ZSA8c3Bhbj57e1BPX0RBVEV9fTwvc3Bhbj48L3A+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCg0KPGRpdiBjbGFzcz0iaW52b2ljZS10b3AiPg0KPGRpdiBjbGFzcz0icm93Ij4NCjxkaXYgY2xhc3M9ImNvbC1zbS02Ij4NCjxkaXYgY2xhc3M9Imludm9pY2UtbnVtYmVyIG1iLTMwIj4NCjxoNCBjbGFzcz0iaW52LXRpdGxlLTEiPlRvPC9oND4NCg0KPGgyIGNsYXNzPSJuYW1lIG1iLTEwIj57e1ZFTkRPUl9OQU1FfX08L2gyPg0Ke3tWRU5ET1JfTU9CSUxFfX08YnIgLz4NCnt7VkVORE9SX0VNQUlMfX0NCjxwPiZuYnNwOzwvcD4NCjwvZGl2Pg0KPC9kaXY+DQoNCjxkaXYgY2xhc3M9ImNvbC1zbS02Ij4NCjxkaXYgY2xhc3M9Imludm9pY2UtbnVtYmVyIG1iLTMwIj4NCjxkaXYgY2xhc3M9Imludm9pY2UtbnVtYmVyLWlubmVyIj4NCjxoNCBjbGFzcz0iaW52LXRpdGxlLTEiPlBPIEZyb208L2g0Pg0KDQo8aDIgY2xhc3M9Im5hbWUgbWItMTAiPnt7U1RPUkVfTkFNRX19PC9oMj4NCg0KPHAgY2xhc3M9Imludm8tYWRkci0xIj57e1NUT1JFX0FERFJFU1N9fTxiciAvPg0Ke3tTVE9SRV9NT0JJTEV9fTxiciAvPg0Ke3tTVE9SRV9FTUFJTH19PC9wPg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCg0KPGRpdiBjbGFzcz0iaW52b2ljZS1jZW50ZXIiPg0KPGRpdiBjbGFzcz0idGFibGUtcmVzcG9uc2l2ZSI+e3tUQUJMRV9DT0RFfX08L2Rpdj4NCjwvZGl2Pg0KDQo8ZGl2IGNsYXNzPSJpbnZvaWNlLWJvdHRvbSI+DQo8ZGl2IGNsYXNzPSJyb3ciPg0KPGRpdiBjbGFzcz0iY29sLWxnLTYgY29sLW1kLTggY29sLXNtLTciPg0KPGRpdiBjbGFzcz0ibWItMzAgZGVhci1jbGllbnQiPg0KPGgzIGNsYXNzPSJpbnYtdGl0bGUtMSI+VGVybXMgJmFtcDsgQ29uZGl0aW9uczwvaDM+DQoNCjxwPnt7U1RPUkVfVEVSTVN9fTwvcD4NCjwvZGl2Pg0KPC9kaXY+DQoNCjxkaXYgY2xhc3M9ImNvbC1sZy02IGNvbC1tZC00IGNvbC1zbS01Ij4NCjxkaXYgY2xhc3M9Im1iLTMwIHBheW1lbnQtbWV0aG9kIj4NCjx1bCBjbGFzcz0icGF5bWVudC1tZXRob2QtbGlzdC0xIHRleHQtMTQiPg0KCTxsaT48c3Ryb25nPkFtb3VudCBJbiBXb3JkcyA6IDwvc3Ryb25nPnt7UEFZTUVOVF9JTl9XT1JEU319PC9saT4NCjwvdWw+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCg0KPGRpdiBjbGFzcz0iaW52b2ljZS1jb250YWN0IGNsZWFyZml4Ij4NCjxkaXYgY2xhc3M9InJvdyBnLTAiPg0KPGRpdiBjbGFzcz0iY29sLWxnLTkgY29sLW1kLTExIGNvbC1zbS0xMiI+DQo8ZGl2IGNsYXNzPSJjb250YWN0LWluZm8iPjxhIGhyZWY9InRlbDorNTUtNFhYLTYzNC03MDcxIj57e1NUT1JFX01PQklMRX19PC9hPiA8YSBocmVmPSJ0ZWw6e3tTVE9SRV9FTUFJTH19Ij57e1NUT1JFX0VNQUlMfX08L2E+IDxhIGNsYXNzPSJtci0wIGQtbm9uZS01ODAiIGhyZWY9InRlbDppbmZvQHRoZW1ldmVzc2VsLmNvbSI+e3tTVE9SRV9BRERSRVNTfX08L2E+PC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCg0KPGRpdiBjbGFzcz0iaW52b2ljZS1idG4tc2VjdGlvbiBjbGVhcmZpeCBkLXByaW50LW5vbmUiPjxhIGNsYXNzPSJidG4gYnRuLWxnIGJ0bi1wcmludCIgaHJlZj0iamF2YXNjcmlwdDp3aW5kb3cucHJpbnQoKSI+UHJpbnQgUE8gPC9hPiA8YSBjbGFzcz0iYnRuIGJ0bi1sZyBidG4tZG93bmxvYWQgYnRuLXRoZW1lIiBpZD0iaW52b2ljZV9kb3dubG9hZF9idG4iPiBEb3dubG9hZCBQTyA8L2E+PC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPHNjcmlwdCBzcmM9Int7VVJMfX0vYmFja2VuZC9pbnZvaWNlL2Fzc2V0cy9qcy9qcXVlcnkubWluLmpzIj48L3NjcmlwdD48c2NyaXB0IHNyYz0ie3tVUkx9fS9iYWNrZW5kL2ludm9pY2UvYXNzZXRzL2pzL2pzcGRmLm1pbi5qcyI+PC9zY3JpcHQ+PHNjcmlwdCBzcmM9Int7VVJMfX0vYmFja2VuZC9pbnZvaWNlL2Fzc2V0cy9qcy9odG1sMmNhbnZhcy5qcyI+PC9zY3JpcHQ+PHNjcmlwdCBzcmM9Int7VVJMfX0vYmFja2VuZC9pbnZvaWNlL2Fzc2V0cy9qcy9hcHAuanMiPjwvc2NyaXB0Pg==', 'PHRhYmxlIGNsYXNzPSJ0YWJsZSBtYi0wIHRhYmxlLXN0cmlwZWQgaW52b2ljZS10YWJsZSI+DQogICA8dGhlYWQgY2xhc3M9ImJnLWFjdGl2ZSI+DQogICAgICA8dHIgY2xhc3M9InRyIj4NCiAgICAgICAgIDx0aD5Oby48L3RoPg0KICAgICAgICAgPHRoIGNsYXNzPSJwbDAgdGV4dC1zdGFydCIgd2lkdGg9IjQwJSI+SXRlbSBEZXNjcmlwdGlvbjwvdGg+DQogICAgICAgICA8dGggY2xhc3M9InRleHQtY2VudGVyIj5QcmljZTwvdGg+DQogICAgICAgICA8dGggY2xhc3M9InRleHQtY2VudGVyIj5RdWFudGl0eTwvdGg+DQogICAgICAgICA8dGggY2xhc3M9InRleHQtY2VudGVyIj5EaXNjb3VudDwvdGg+DQogICAgICAgICA8dGggY2xhc3M9InRleHQtY2VudGVyIj5UYXg8L3RoPg0KICAgICAgICAgPHRoIGNsYXNzPSJ0ZXh0LWVuZCI+VG90YWw8L3RoPg0KICAgICAgPC90cj4NCiAgIDwvdGhlYWQ+DQogICA8dGJvZHk+DQogICAgICB7e0xPT1BfVFJfQ09ERX19DQogICAgICB7e1NVQl9UT1RBTF9UUl9MT09QfX0NCiAgIDwvdGJvZHk+DQo8L3RhYmxlPg==', 'PHRyIGNsYXNzPSJ0ciI+DQogICA8dGQ+DQogICAgICA8ZGl2IGNsYXNzPSJpdGVtLWRlc2MtMSI+PHNwYW4+e3tTTk99fTwvc3Bhbj48L2Rpdj4NCiAgIDwvdGQ+DQogICA8dGQgY2xhc3M9InBsMCIgd2lkdGg9IjQwJSI+e3tQUk9EVUNUX05BTUV9fTxkaXYgY2xhc3M9ImR4cXpremFlZnogZHhxemt6YWVment7SVZBTFVFfX0iPk1vZGVsIDoge3tQUk9EVUNUX01PREVMfX08L2Rpdj48ZGl2IGNsYXNzPSJtZm9wZnloa2ZiIG1mb3BmeWhrZmJ7e0lWQUxVRX19Ij5CYXJjb2RlIDoge3tQUk9EVUNUX0JBUkNPREV9fTwvZGl2PjxkaXYgY2xhc3M9InBpdGxmYmRucmkgcGl0bGZiZG5yaXt7SVZBTFVFfX0iPkhTTiBDb2RlOiB7e0hTTl9DT0RFfX08L2Rpdj48ZGl2IGNsYXNzPSJqZGlvY3lnbGVyIGpkaW9jeWdsZXJ7e0lWQUxVRX19Ij5FeHRyYSBJbmZvcm1hdGlvbjoge3tQUk9EVUNUX0VYVFJBX0lORk9STUFUSU9OfX08L2Rpdj48L3RkPg0KICAgPHRkIGNsYXNzPSJ0ZXh0LWNlbnRlciBzeW1ib2wiPnt7UFJPRFVDVF9QUklDRX19PC90ZD4NCiAgIDx0ZCBjbGFzcz0idGV4dC1jZW50ZXIgIj57e1BST0RVQ1RfUVVBTlRJVFl9fTwvdGQ+DQogICA8dGQgY2xhc3M9InRleHQtY2VudGVyIj57e1BST0RVQ1RfRElTQ09VTlR9fTxicj48c3BhbiBjbGFzcz0ic3ltYm9sIj57e1BST0RVQ1RfRElTQ09VTlRfVkFMVUV9fTwvc3Bhbj48L3RkPg0KICAgPHRkIGNsYXNzPSJ0ZXh0LWNlbnRlciI+e3tQUk9EVUNUX1RBWF9IRUFESU5HfX08YnI+PHNwYW4gY2xhc3M9InN5bWJvbCI+e3tQUk9EVUNUX1RBWH19PC9zcGFuPjxicj48c3Bhbj57e1BST0RVQ1RfVEFYX1RZUEV9fTwvc3Bhbj48L3RkPg0KICAgPHRkIGNsYXNzPSJ0ZXh0LWVuZCBzeW1ib2wiPjxzdHJvbmc+e3tQUk9EVUNUX1RPVEFMfX08L3N0cm9uZz48L3RkPg0KPC90cj4=', 'LmR4cXpremFlZnosLm1mb3BmeWhrZmIsLmpkaW9jeWdsZXJ7DQogZm9udC1zaXplOjEycHg7DQpjb2xvcjojOTE5MTkxOw0KfQ0KIC5zeW1ib2w6OmJlZm9yZSB7DQogICAgICAgICBjb250ZW50OiAi4oK5IjsNCiAgICAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jazsNCiAgICAgICAgIG1hcmdpbi1yaWdodDogMnB4Ow0KICAgICAgICAgfQ0KLmNjZ2pkcnF6cmJfdG90YWwgdGR7DQpmb250LXNpemU6MTdweCAhaW1wb3J0YW50Ow0KfQ==', 'PHRyIGNsYXNzPSJ0cjIgY2NnamRycXpyYl97e0tFWUNMQVNTfX0iPg0KPHRkPjwvdGQ+DQo8dGQ+PC90ZD4NCiAgIDx0ZCBjbGFzcz0idGV4dC1yaWdodCIgY29sc3Bhbj0iMiI+PHN0cm9uZz57e0tFWX19PC9zdHJvbmc+PC90ZD4NCiAgIDx0ZCBjbGFzcz0idGV4dC1lbmQiIGNvbHNwYW49IjMiPjxzdHJvbmc+e3tWQUxVRX19PC9zdHJvbmc+PC90ZD4NCjwvdHI+', 1);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `languageId` int(11) NOT NULL,
  `heading` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`languageId`, `heading`, `status`) VALUES
(1, 'English', 1),
(2, 'Hindi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `manufacturerId` int(11) NOT NULL,
  `heading` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `storeId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `softDelete` int(11) NOT NULL DEFAULT 0,
  `dateUpdated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`manufacturerId`, `heading`, `image`, `storeId`, `userId`, `softDelete`, `dateUpdated`, `dateAdded`, `status`) VALUES
(1, 'HP', '', 1, 2, 0, '2024-02-24 09:34:11', '0000-00-00 00:00:00', 1),
(2, 'ASUS', '', 1, 2, 0, '2024-02-24 09:34:21', '0000-00-00 00:00:00', 1),
(3, 'DELL', '', 4, 9, 0, '2024-03-23 11:04:50', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `menuId` int(11) NOT NULL,
  `menuHeading` varchar(100) NOT NULL,
  `link` varchar(100) DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `moduleId` int(11) NOT NULL,
  `parentId` int(11) NOT NULL DEFAULT 0,
  `sortOrder` int(11) DEFAULT 0,
  `roleId` varchar(30) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp(),
  `dateUpdated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `insertedBy` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`menuId`, `menuHeading`, `link`, `icon`, `moduleId`, `parentId`, `sortOrder`, `roleId`, `status`, `dateAdded`, `dateUpdated`, `insertedBy`) VALUES
(1, 'Dashboard', '/', '', 0, 0, 0, '[\"1\",\"2\",\"3\"]', 1, '2024-02-07 15:58:02', '2024-05-04 12:10:37', 0),
(2, 'Settings', '', '', 0, 0, 100, '[\"1\",\"2\"]', 1, '2024-02-08 15:58:02', '2024-05-04 12:11:32', 0),
(3, 'Modules', 'modules', '', 0, 13, 100, '[\"1\"]', 0, '2024-02-08 15:58:02', '2024-05-04 12:39:18', 0),
(4, 'Global Setting', '', '', 2, 2, 100, '[\"1\"]', 1, '2024-02-08 15:58:02', '2024-05-04 12:35:35', 1),
(5, 'Users', '', '', 0, 0, 9, '[\"1\"]', 1, '2024-02-08 15:58:02', '2024-05-04 12:31:39', 0),
(6, 'Users', '', '', 1, 5, 100, '[\"1\",\"2\"]', 1, '2024-02-08 15:58:02', '2024-05-04 12:38:01', 1),
(8, 'Manage', '', '', 0, 0, 5, '[\"1\",\"2\"]', 1, '2024-02-08 15:58:02', '2024-05-04 12:32:31', 0),
(9, 'Templates', '', '', 3, 2, 100, '[\"1\"]', 1, '2024-02-08 15:58:02', '2024-05-04 12:35:44', 1),
(11, 'Menus', '', '', 5, 13, 100, '[\"1\"]', 1, '2024-02-08 15:58:02', '2024-05-04 12:39:24', 1),
(12, 'Database Backups', '', '', 6, 2, 100, '[\"1\"]', 1, '2024-02-08 15:58:02', '2024-05-04 12:35:46', 1),
(13, 'Admin', '', '', 0, 0, 100, '[\"1\"]', 1, '2024-02-08 15:58:02', '2024-05-04 12:32:42', 0),
(18, 'Filters', '', '', 10, 13, 100, '[\"1\"]', 0, '2024-02-08 15:58:02', '2024-05-04 12:39:28', 1),
(19, 'Image Manager', '', '', 11, 8, 100, '[\"1\",\"2\",\"3\"]', 1, '2024-02-09 11:09:25', '2024-07-20 12:32:33', 1),
(20, 'Admin Login History', NULL, '', 12, 13, 100, '[\"1\"]', 1, '2024-02-09 13:02:57', '2024-05-04 12:39:31', 1),
(21, 'User Roles', 'userroles', '', 0, 5, 100, '[\"1\"]', 1, '2024-02-08 15:58:02', '2024-05-04 12:38:10', 0),
(22, 'Countries', NULL, '', 13, 2, 100, '[\"1\"]', 1, '2024-02-09 16:03:01', '2024-05-04 12:35:51', 1),
(23, 'States', NULL, '', 14, 2, 100, '[\"1\"]', 1, '2024-02-09 16:26:43', '2024-05-04 12:35:53', 1),
(24, 'Import/Export', '', '', 0, 0, 7, '[\"1\",\"2\"]', 1, '2024-02-08 15:58:02', '2024-05-04 12:32:55', 1),
(25, 'Import Excel', 'import', '', 0, 24, 100, '[\"1\",\"2\"]', 1, '2024-02-08 15:58:02', '2024-05-04 12:39:39', 1),
(26, 'Export To Excel', 'import-export', '', 0, 24, 100, '[\"1\",\"2\"]', 1, '2024-02-08 15:58:02', '2024-05-04 12:39:41', 1),
(27, 'Upload Images', 'upload-images', '', 0, 24, 100, '[\"1\",\"2\"]', 1, '2024-02-08 15:58:02', '2024-05-04 12:39:44', 1),
(28, 'Customers', '', NULL, 0, 0, 2, '[\"1\",\"2\",\"3\"]', 1, '2024-02-15 09:14:58', '2024-05-04 12:00:50', 1),
(29, 'Customer Group', '', '', 15, 28, 100, '[\"1\",\"2\"]', 1, '2024-02-15 09:15:12', '2024-05-04 12:39:54', 1),
(30, 'Manage Stores', '', NULL, 0, 0, 6, '[\"1\",\"2\",\"3\"]', 1, '2024-02-15 14:02:45', '2024-05-04 12:10:37', 1),
(31, 'Stores', '', '', 16, 8, 100, '[\"1\",\"2\"]', 1, '2024-02-15 14:11:33', '2024-05-04 12:38:40', 1),
(32, 'Cities', NULL, '', 17, 2, 100, '[\"1\"]', 1, '2024-02-15 14:17:35', '2024-05-04 12:35:55', 1),
(33, 'Taxes', '', '', 18, 2, 100, '[\"1\"]', 1, '2024-02-24 11:41:00', '2024-05-04 12:35:58', 1),
(34, 'Units', '', '', 19, 2, 100, '[\"1\"]', 1, '2024-02-24 11:53:43', '2024-05-04 12:36:00', 1),
(35, 'Vendors', '', '', 20, 73, 100, '[\"1\",\"2\",\"3\"]', 1, '2024-02-24 12:00:04', '2024-05-04 05:03:37', 1),
(36, 'Customers', '', '', 21, 28, 100, '[\"1\",\"2\",\"3\"]', 1, '2024-02-24 14:01:44', '2024-05-04 10:21:01', 1),
(37, 'Manufacturers', '', '', 22, 74, 100, '[\"1\",\"2\"]', 1, '2024-02-24 15:00:45', '2024-05-04 14:50:36', 1),
(38, 'Categories', '', '', 23, 74, 100, '[\"1\",\"2\"]', 1, '2024-02-24 15:12:21', '2024-05-04 14:50:39', 2),
(39, 'Products', NULL, '', 24, 30, 0, '[\"1\",\"2\",\"3\"]', 1, '2024-02-24 15:17:24', '2024-10-02 09:31:31', 2),
(40, 'Sale Pos', '', NULL, 0, 0, 1, '[\"1\",\"2\",\"3\"]', 1, '2024-02-24 15:35:22', '2024-05-18 09:20:23', 1),
(41, 'Pos', 'pos', NULL, 0, 40, 100, '[\"1\",\"2\",\"3\"]', 1, '2024-02-24 15:36:18', '2024-05-04 10:21:01', 1),
(42, 'Store Settings', '', '', 25, 8, 100, '[\"1\",\"2\"]', 1, '2024-02-24 15:44:55', '2024-05-04 12:38:42', 1),
(43, 'Seating Tables', '', '', 26, 30, 100, '[\"1\",\"2\"]', 1, '2024-02-26 20:13:32', '2024-05-04 12:40:02', 2),
(44, 'Languages', '', '', 27, 2, 100, '[\"1\"]', 1, '2024-02-27 09:34:31', '2024-05-04 12:36:03', 2),
(45, 'Employees', '', '', 28, 30, 100, '[\"1\",\"2\",\"3\"]', 1, '2024-02-27 15:34:21', '2024-05-04 12:10:37', 2),
(46, 'Payments', '', '', 29, 2, 100, '[\"1\"]', 1, '2024-03-01 10:17:44', '2024-05-04 12:36:07', 2),
(47, 'Store Payments', '', '', 30, 8, 100, '[\"1\",\"2\"]', 1, '2024-03-01 10:50:42', '2024-05-04 12:38:45', 1),
(48, 'Additional Charges', '', '', 31, 8, 100, '[\"1\",\"2\"]', 1, '2024-03-06 16:21:00', '2024-05-04 12:38:49', 2),
(49, 'Invoice Template', '', '', 32, 2, 100, '[\"1\"]', 1, '2024-03-08 17:09:41', '2024-05-04 12:36:13', 2),
(50, 'Order Status', '', '', 33, 2, 100, '[\"1\"]', 1, '2024-03-17 14:33:59', '2024-05-04 12:36:17', 2),
(51, 'Purchase', 'purchases', NULL, 0, 73, 100, '[\"1\",\"2\",\"3\"]', 1, '2024-03-20 15:50:14', '2024-05-04 10:21:01', 1),
(52, 'Customer Pay In Out', NULL, '', 34, 30, 100, '[\"1\",\"2\",\"3\"]', 1, '2024-03-28 13:38:29', '2024-05-04 12:00:24', 2),
(53, 'Customer Ledger Wallet', '', '', 35, 60, 100, '[\"1\",\"2\"]', 1, '2024-03-28 13:54:30', '2024-05-04 14:50:09', 2),
(54, 'Codes', NULL, '', 36, 2, 100, '[\"1\",\"2\"]', 1, '2024-03-28 14:27:40', '2024-05-04 12:36:28', 2),
(55, 'Customer Ledger Reward', '', '', 37, 60, 100, '[\"1\",\"2\"]', 1, '2024-03-28 15:31:42', '2024-05-04 14:50:12', 2),
(56, 'Order', 'order', '', 0, 57, 100, '[\"1\",\"2\",\"3\"]', 1, '2024-03-28 13:54:30', '2024-05-04 10:21:01', 2),
(57, 'Orders', '', NULL, 0, 0, 6, '[\"1\",\"2\",\"3\"]', 1, '2024-03-29 11:57:12', '2024-05-04 10:31:29', 1),
(58, 'Order History', '', '', 38, 57, 100, '[\"1\",\"2\",\"3\"]', 1, '2024-03-29 12:01:35', '2024-05-04 10:21:01', 1),
(59, 'Kot', 'kot', NULL, 0, 57, 100, '[\"1\",\"2\",\"3\"]', 1, '2024-03-29 13:37:15', '2024-05-04 10:21:01', 1),
(60, 'Reports', '', NULL, 0, 0, 8, '[\"1\",\"2\"]', 1, '2024-03-30 11:21:34', '2024-05-04 12:33:30', 1),
(61, 'Profit Report', 'profit-report', NULL, 0, 60, 100, '[\"1\",\"2\"]', 1, '2024-03-30 11:22:22', '2024-05-04 14:50:16', 1),
(62, 'Pos New Users', 'pos-users', NULL, 0, 5, 100, '[\"1\"]', 1, '2024-04-08 09:24:51', '2024-05-18 09:21:36', 1),
(63, 'Comment Master', '', '', 39, 8, 100, '[\"1\",\"2\"]', 1, '2024-04-13 12:38:26', '2024-05-04 12:38:51', 1),
(64, 'Popup Message', 'popup-message', NULL, 0, 2, 100, '[\"1\",\"2\"]', 1, '2024-04-16 13:22:27', '2024-05-04 12:37:41', 1),
(65, 'Reward Otp Skip Reason', '', '', 40, 30, 100, '[\"1\",\"2\"]', 1, '2024-04-19 09:41:25', '2024-05-04 12:40:13', 1),
(66, 'Reward Otp', '', '', 41, 30, 100, '[\"1\",\"2\"]', 1, '2024-04-19 09:59:56', '2024-05-04 12:40:21', 1),
(67, 'Daily Sale Report', 'report/daily-sale-report', NULL, 0, 60, 100, '[\"1\",\"2\"]', 1, '2024-04-19 11:10:21', '2024-05-04 14:50:19', 1),
(68, 'Daily Payment Report', 'report/daily-payment-report', NULL, 0, 60, 100, '[\"1\",\"2\"]', 1, '2024-04-22 04:30:00', '2024-05-04 14:50:21', 1),
(69, 'Expense Categories', '', '', 42, 8, 100, '[\"1\",\"2\"]', 1, '2024-04-30 10:03:58', '2024-05-04 12:38:57', 1),
(70, 'Expenses', '', '', 43, 8, 100, '[\"1\",\"2\",\"3\"]', 1, '2024-04-30 10:08:16', '2024-05-04 10:21:01', 1),
(71, 'Daily Expense Report', 'report/daily-expense-report', NULL, 0, 60, 100, '[\"1\",\"2\"]', 1, '2024-04-30 10:48:00', '2024-05-04 14:50:23', 1),
(72, 'Daily Order Report', 'report/daily-order-report', NULL, 0, 60, 100, '[\"1\",\"2\"]', 1, '2024-04-30 14:33:11', '2024-05-04 14:50:27', 1),
(73, 'Purchases', '', NULL, 0, 0, 4, '[\"1\",\"2\",\"3\"]', 1, '2024-05-04 10:15:21', '2024-05-04 10:23:18', 1),
(74, 'Products', '', NULL, 0, 0, 3, '[\"1\",\"2\",\"3\"]', 1, '2024-05-04 10:15:35', '2024-05-04 10:23:17', 1),
(75, 'Language Words', 'language-message', NULL, 0, 2, 0, '[\"1\",\"2\"]', 1, '2024-05-10 16:38:53', '2024-05-10 11:08:53', 1),
(76, 'Hotel Rooms', '', '', 44, 30, 0, '[\"1\",\"2\"]', 1, '2024-06-04 14:24:26', '2024-06-04 09:01:33', 1),
(77, 'Product Return', '', '', 45, 74, 0, '[\"1\",\"2\",\"3\"]', 1, '2024-06-29 11:40:36', '2024-06-29 11:42:57', 1),
(78, 'Customer Amount Paid', '', '', 46, 28, 0, '[\"1\",\"2\",\"3\"]', 1, '2024-06-29 12:01:32', '2024-06-29 13:12:08', 1),
(79, 'Purchase Order', 'purchase-order', NULL, 0, 73, 3, '[\"1\",\"2\",\"3\"]', 1, '2024-07-20 13:51:58', '2024-07-20 13:51:58', 1),
(80, 'Pos Simple', 'pos-simple', NULL, 0, 40, 0, '[\"1\",\"2\",\"3\"]', 1, '2024-08-22 10:42:06', '2024-08-22 10:42:06', 1),
(81, 'Currencies', '', '', 47, 2, 0, '[\"1\"]', 1, '2024-08-24 17:13:25', '2024-08-24 17:15:00', 1),
(82, 'Product Category Wise', 'report/product-category-wise', NULL, 0, 60, 0, '[\"1\",\"2\",\"3\"]', 1, '2024-08-26 10:58:10', '2024-08-26 11:09:19', 1),
(83, 'Product Manufacturer Wise', 'report/product-manufacturer-wise', NULL, 0, 60, 0, '[\"1\",\"2\",\"3\"]', 1, '2024-08-26 10:58:10', '2024-08-26 11:09:19', 1),
(84, 'Testimonials', '', '', 48, 28, 0, '[\"1\"]', 1, '2024-09-10 21:59:41', '2024-09-10 22:02:23', 1);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `messageId` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `hindi` varchar(255) DEFAULT NULL,
  `english` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`messageId`, `message`, `hindi`, `english`, `status`) VALUES
(1, 'Thank you for your enquiry. We will contact you as soon as possible.', 'पड़ताल के लिए आपका शुक्रिया। हम जितनी जल्दी हो सके आपसे संपर्क करेंगे।', 'this is a test message', 1),
(2, 'Thank you for your comment.', '', '', 1),
(3, 'Your profile has been updated successfully.', '', NULL, 1),
(4, 'Please wait while we are redirecting you to the my account.', NULL, NULL, 1),
(5, 'Your account has been disabled by the administrator.', NULL, NULL, 1),
(6, 'Login details are not correct please check your email and password.', NULL, NULL, 1),
(7, 'There is some error.', NULL, NULL, 1),
(8, 'A mail has been sent on your email id with new password.', NULL, NULL, 1),
(9, 'This email address not found in our database.', NULL, NULL, 1),
(10, 'Thank you for submitting your report.', NULL, NULL, 1),
(11, 'Thank you for your consultation request. We will contact you as soon as possible.', NULL, NULL, 1),
(12, 'Report has been successfully deleted.', NULL, NULL, 1),
(338, 'Add Purchase', NULL, NULL, 1),
(339, 'Back', NULL, NULL, 1),
(340, 'Add Product', NULL, NULL, 1),
(341, 'Heading', NULL, NULL, 1),
(342, 'Refrence', NULL, NULL, 1),
(343, 'Vendor', NULL, NULL, 1),
(344, 'Please Select', NULL, NULL, 1),
(345, 'Date', NULL, NULL, 1),
(346, 'Purchase Bill Type', NULL, NULL, 1),
(347, 'Bill Type One', NULL, NULL, 1),
(348, 'Bill Type Two', NULL, NULL, 1),
(349, 'Auto Suggestive Search', NULL, NULL, 1),
(350, 'Save', NULL, NULL, 1),
(351, 'Admin Panel', NULL, NULL, 1),
(352, 'Language', NULL, NULL, 1),
(353, 'Take Backup', NULL, NULL, 1),
(354, 'Selected Store', NULL, NULL, 1),
(355, 'Selected User', NULL, NULL, 1),
(356, 'Logged In As', NULL, NULL, 1),
(357, 'Role', NULL, NULL, 1),
(358, 'Dashboard', NULL, NULL, 1),
(359, 'Pos', NULL, NULL, 1),
(360, 'Customers', NULL, NULL, 1),
(361, 'Customer Group', NULL, NULL, 1),
(362, 'Manage', NULL, NULL, 1),
(363, 'Pages', NULL, NULL, 1),
(364, 'Image Manager', NULL, NULL, 1),
(365, 'Import/Export', NULL, NULL, 1),
(366, 'Import Excel', NULL, NULL, 1),
(367, 'Export To Excel', NULL, NULL, 1),
(368, 'Upload Images', NULL, NULL, 1),
(369, 'Manage Stores', NULL, NULL, 1),
(370, 'Stores', NULL, NULL, 1),
(371, 'Vendors', NULL, NULL, 1),
(372, 'Manufacturers', NULL, NULL, 1),
(373, 'Categories', NULL, NULL, 1),
(374, 'Products', NULL, NULL, 1),
(375, 'Store Settings', NULL, NULL, 1),
(376, 'Seating Tables', NULL, NULL, 1),
(377, 'Employees', NULL, NULL, 1),
(378, 'Store Payments', NULL, NULL, 1),
(379, 'Additional Charges', NULL, NULL, 1),
(380, 'Purchase', NULL, NULL, 1),
(381, 'Requests', NULL, NULL, 1),
(382, 'Contacts', NULL, NULL, 1),
(383, 'Users', NULL, NULL, 1),
(384, 'User Roles', NULL, NULL, 1),
(385, 'Settings', NULL, NULL, 1),
(386, 'Global Setting', NULL, NULL, 1),
(387, 'Templates', NULL, NULL, 1),
(388, 'Database Backups', NULL, NULL, 1),
(389, 'Countries', NULL, NULL, 1),
(390, 'States', NULL, NULL, 1),
(391, 'Taxes', NULL, NULL, 1),
(392, 'Units', NULL, NULL, 1),
(393, 'Languages', NULL, NULL, 1),
(394, 'Payments', NULL, NULL, 1),
(395, 'Invoice Template', NULL, NULL, 1),
(396, 'Order Status', NULL, NULL, 1),
(397, 'Admin', NULL, NULL, 1),
(398, 'Modules', NULL, NULL, 1),
(399, 'Menus', NULL, NULL, 1),
(400, 'Admin Login History', NULL, NULL, 1),
(401, 'Logout', NULL, NULL, 1),
(402, 'Select Store', NULL, NULL, 1),
(403, 'All', NULL, NULL, 1),
(404, 'Close', NULL, NULL, 1),
(405, 'Select User', NULL, NULL, 1),
(406, 'Logged In As Admin', NULL, NULL, 1),
(407, 'Select Language', NULL, NULL, 1),
(408, 'Order Type', NULL, NULL, 1),
(409, 'Tables', NULL, NULL, 1),
(410, 'No Table', NULL, NULL, 1),
(411, 'All Categories', NULL, NULL, 1),
(412, 'All Brands', NULL, NULL, 1),
(413, 'Qty', NULL, NULL, 1),
(414, 'Barcode', NULL, NULL, 1),
(415, 'Model', NULL, NULL, 1),
(416, 'Quick Add Customer', NULL, NULL, 1),
(417, 'Add', NULL, NULL, 1),
(418, 'Sales Person', NULL, NULL, 1),
(419, 'Customer', NULL, NULL, 1),
(420, 'Mobile', NULL, NULL, 1),
(421, 'Wallet Balance', NULL, NULL, 1),
(422, 'Reward Balance', NULL, NULL, 1),
(423, 'Product', NULL, NULL, 1),
(424, 'Quantity', NULL, NULL, 1),
(425, 'Discount', NULL, NULL, 1),
(426, 'Price', NULL, NULL, 1),
(427, 'Total', NULL, NULL, 1),
(428, 'Add Customer', NULL, NULL, 1),
(429, 'Add Extra Info', NULL, NULL, 1),
(430, 'Checkout', NULL, NULL, 1),
(431, 'Payment Mode', NULL, NULL, 1),
(432, 'Multiple Payments', NULL, NULL, 1),
(433, 'Amount', NULL, NULL, 1),
(434, 'Additional Costs', NULL, NULL, 1),
(435, 'Label', NULL, NULL, 1),
(436, 'Global Discount', NULL, NULL, 1),
(437, 'Apply', NULL, NULL, 1),
(438, 'Orders Dasboard', NULL, NULL, 1),
(439, 'Total Customers', NULL, NULL, 1),
(440, 'Total Completed Order', NULL, NULL, 1),
(441, 'Total Sales', NULL, NULL, 1),
(442, 'Total Running Orders', NULL, NULL, 1),
(443, 'Tax', NULL, NULL, 1),
(444, 'Add Extra Information', NULL, NULL, 1),
(445, 'Info', NULL, NULL, 1),
(446, 'Total Items In Cart', NULL, NULL, 1),
(447, 'Total Quantity In Cart', NULL, NULL, 1),
(448, 'Sub Total', NULL, NULL, 1),
(449, 'Product Discount', NULL, NULL, 1),
(450, 'Reward Point Earned', NULL, NULL, 1),
(451, 'Reward Point Used', NULL, NULL, 1),
(452, 'KOT', NULL, NULL, 1),
(453, 'OPTIONS', NULL, NULL, 1),
(454, 'No Store Selected', NULL, NULL, 1),
(455, 'ID', NULL, NULL, 1),
(456, 'Status', NULL, NULL, 1),
(457, 'Action', NULL, NULL, 1),
(458, 'Store 1 Shop', NULL, NULL, 1),
(459, 'Manufacturer Id', NULL, NULL, 1),
(460, 'Category Id', NULL, NULL, 1),
(461, 'Vendor Id', NULL, NULL, 1),
(462, 'Unit Id', NULL, NULL, 1),
(463, 'Tax Id', NULL, NULL, 1),
(464, 'Tax Type', NULL, NULL, 1),
(465, 'Subtract From Quantity', NULL, NULL, 1),
(466, 'Show In Pos', NULL, NULL, 1),
(467, 'Image', NULL, NULL, 1),
(468, 'Related Image', NULL, NULL, 1),
(469, 'Cost', NULL, NULL, 1),
(470, 'Quick Add Product', NULL, NULL, 1),
(471, 'Basic Purchase InFormation', NULL, NULL, 1),
(472, 'Select Tax', NULL, NULL, 1),
(473, 'Exclusive', NULL, NULL, 1),
(474, 'Inclusive', NULL, NULL, 1),
(475, 'Sno', NULL, NULL, 1),
(476, '}Heading/Barcode/Model', NULL, NULL, 1),
(477, 'Heading/Barcode/Model', NULL, NULL, 1),
(478, 'Update Tax', NULL, NULL, 1),
(479, 'Purchase Heading', NULL, NULL, 1),
(480, 'Purchase Status', NULL, NULL, 1),
(481, 'User Name', NULL, NULL, 1),
(482, 'User Email', NULL, NULL, 1),
(483, 'User Password', NULL, NULL, 1),
(484, 'User Mobile', NULL, NULL, 1),
(485, 'Role Id', NULL, NULL, 1),
(486, 'Name', NULL, NULL, 1),
(487, 'Tagline', NULL, NULL, 1),
(488, 'Email', NULL, NULL, 1),
(489, 'Address', NULL, NULL, 1),
(490, 'City Id', NULL, NULL, 1),
(491, 'State Id', NULL, NULL, 1),
(492, 'Sort Order', NULL, NULL, 1),
(493, 'Default New Shop', NULL, NULL, 1),
(494, 'Payment In/Out', NULL, NULL, 1),
(495, 'Payment In-Out', NULL, NULL, 1),
(496, 'Menu Heading', NULL, NULL, 1),
(497, 'Link', NULL, NULL, 1),
(498, 'Module Id', NULL, NULL, 1),
(499, 'Parent Id', NULL, NULL, 1),
(500, 'Role Id (Show Menu) (Multiple)', NULL, NULL, 1),
(501, 'Customer Ledger Wallet', NULL, NULL, 1),
(502, 'Order Id', NULL, NULL, 1),
(503, 'Customer Id', NULL, NULL, 1),
(504, 'Type', NULL, NULL, 1),
(505, 'Payment Id', NULL, NULL, 1),
(506, 'Remark', NULL, NULL, 1),
(507, 'Customer Ledger Reward', NULL, NULL, 1),
(508, 'Reward', NULL, NULL, 1),
(509, 'Orders', NULL, NULL, 1),
(510, 'Order', NULL, NULL, 1),
(511, 'Order History', NULL, NULL, 1),
(512, 'Order Status Id', NULL, NULL, 1),
(513, 'Comment', NULL, NULL, 1),
(514, 'Template', NULL, NULL, 1),
(515, 'Table Code', NULL, NULL, 1),
(516, 'Loop Tr Code', NULL, NULL, 1),
(517, 'Sub Total Tr Loop', NULL, NULL, 1),
(518, 'Custom Css', NULL, NULL, 1),
(519, 'Website Name', NULL, NULL, 1),
(520, 'Admin Email', NULL, NULL, 1),
(521, 'Contact Mobile', NULL, NULL, 1),
(522, 'Contact Email', NULL, NULL, 1),
(523, 'Mail Jet Username', NULL, NULL, 1),
(524, 'Mail Jet Password', NULL, NULL, 1),
(525, 'Mailjet Email', NULL, NULL, 1),
(526, 'Mailjet Name', NULL, NULL, 1),
(527, 'Database Backup', NULL, NULL, 1),
(528, 'Enable Reward Points', NULL, NULL, 1),
(529, 'Reward On Discounted Product', NULL, NULL, 1),
(530, 'Minimum Reward Points To Reedem', NULL, NULL, 1),
(531, 'Reward Percent On Product', NULL, NULL, 1),
(532, 'Walk In Customer Id', NULL, NULL, 1),
(533, 'Invoice Prefix', NULL, NULL, 1),
(534, 'Cart Append Style', NULL, NULL, 1),
(535, 'Order Type Required', NULL, NULL, 1),
(536, 'Enable Order Type', NULL, NULL, 1),
(537, 'Enable Taxes', NULL, NULL, 1),
(538, 'Show Store Infomation', NULL, NULL, 1),
(539, 'Show Extra Informtion Popup', NULL, NULL, 1),
(540, 'Show Wallet Balance', NULL, NULL, 1),
(541, 'Show Reward Balance', NULL, NULL, 1),
(542, 'Show Add Customer Bottom', NULL, NULL, 1),
(543, 'Sales Person Required', NULL, NULL, 1),
(544, 'Show Sales Person', NULL, NULL, 1),
(545, 'Show Quick Add', NULL, NULL, 1),
(546, 'Restaurant', NULL, NULL, 1),
(547, 'Show Modal', NULL, NULL, 1),
(548, 'Show Barcode', NULL, NULL, 1),
(549, 'Show Image', NULL, NULL, 1),
(550, 'Show Manufacturers', NULL, NULL, 1),
(551, 'Show Categories', NULL, NULL, 1),
(552, 'Store Terms', NULL, NULL, 1),
(553, 'Invoice Header Text', NULL, NULL, 1),
(554, 'Invoice Footer Text', NULL, NULL, 1),
(555, 'Default Invoice Template', NULL, NULL, 1),
(556, 'Default Kot Template', NULL, NULL, 1),
(557, 'Default Order Status', NULL, NULL, 1),
(558, 'Cancelled Order Status', NULL, NULL, 1),
(559, 'Running Order Status', NULL, NULL, 1),
(560, 'Deduct From Stock', NULL, NULL, 1),
(561, 'Website Logo', NULL, NULL, 1),
(562, 'Start Barcode From', NULL, NULL, 1),
(563, 'Reports', NULL, NULL, 1),
(564, 'Profit Report', NULL, NULL, 1),
(565, 'Search Product', NULL, NULL, 1),
(566, 'Date Start', NULL, NULL, 1),
(567, 'Date End', NULL, NULL, 1),
(568, 'Filter', NULL, NULL, 1),
(569, 'Cost/Price', NULL, NULL, 1),
(570, 'Order ID/Purchase ID', NULL, NULL, 1),
(571, 'Profit', NULL, NULL, 1),
(572, 'Percent', NULL, NULL, 1),
(573, 'FinalAmount', NULL, NULL, 1),
(574, 'Allowed Image Size', NULL, NULL, 1),
(575, 'Allowed File Size', NULL, NULL, 1),
(576, 'Meta Tags', NULL, NULL, 1),
(577, 'Meta Description', NULL, NULL, 1),
(578, 'Meta Keywords', NULL, NULL, 1),
(579, 'Facebook', NULL, NULL, 1),
(580, 'Twitter', NULL, NULL, 1),
(581, 'Linkedin', NULL, NULL, 1),
(582, 'Instagram', NULL, NULL, 1),
(583, 'Merge Login', NULL, NULL, 1),
(584, 'Data Base Name', NULL, NULL, 1),
(585, 'Pos New Users', NULL, NULL, 1),
(586, 'Pos Users', NULL, NULL, 1),
(587, 'Opening Balance', NULL, NULL, 1),
(588, 'Country Id', NULL, NULL, 1),
(589, 'Product Profit Report/Ledger', NULL, NULL, 1),
(590, 'Clear', NULL, NULL, 1),
(591, 'HSN Code', NULL, NULL, 1),
(592, 'Change Price During Billing', NULL, NULL, 1),
(593, 'Change Price', NULL, NULL, 1),
(594, 'Change', NULL, NULL, 1),
(595, 'Comment Master', NULL, NULL, 1),
(596, 'Store Closing Date', NULL, NULL, 1),
(597, 'Store Closing Date (Comma Seprated)', NULL, NULL, 1),
(598, '2024-04-13,2024-04-20,2024-04-27', NULL, NULL, 1),
(599, 'Store Id', NULL, NULL, 1),
(600, 'Popup Message', NULL, NULL, 1),
(601, 'Subject', NULL, NULL, 1),
(602, 'For What', NULL, NULL, 1),
(603, 'For Whom', NULL, NULL, 1),
(604, 'Send OTP/Skip OTP', NULL, NULL, 1),
(605, 'Skip OTP', NULL, NULL, 1),
(606, 'Send OTP', NULL, NULL, 1),
(607, 'Enter OTP', NULL, NULL, 1),
(608, 'Submit OTP', NULL, NULL, 1),
(609, 'Reward Otp Skip Reason', NULL, NULL, 1),
(610, 'Reward Otp', NULL, NULL, 1),
(611, 'Total Sale Price', NULL, NULL, 1),
(612, 'Total Buying Cost', NULL, NULL, 1),
(613, 'Total Tax', NULL, NULL, 1),
(614, 'Total Discount', NULL, NULL, 1),
(615, 'Total Profit', NULL, NULL, 1),
(616, 'Total Buying Quantity', NULL, NULL, 1),
(617, 'Total Sale Quanitity', NULL, NULL, 1),
(618, 'Total Cost', NULL, NULL, 1),
(619, 'Total Sale', NULL, NULL, 1),
(620, 'Total Sale Quantity', NULL, NULL, 1),
(621, 'Daily Sale Report', NULL, NULL, 1),
(622, 'Daily Payment Report', NULL, NULL, 1),
(623, 'Payment Method', NULL, NULL, 1),
(624, 'Send Reminder To Customer', NULL, NULL, 1),
(625, 'Expense Categories', NULL, NULL, 1),
(626, 'Expenses', NULL, NULL, 1),
(627, 'Expense Category Id', NULL, NULL, 1),
(628, 'GST Number', NULL, NULL, 1),
(629, 'Daily Expense Report', NULL, NULL, 1),
(630, 'Category', NULL, NULL, 1),
(631, 'Daily Order Report', NULL, NULL, 1),
(632, 'Product Order Report', NULL, NULL, 1),
(633, 'Total Quantity Sold', NULL, NULL, 1),
(634, 'Order Total', NULL, NULL, 1),
(635, 'Product Detail', NULL, NULL, 1),
(636, 'Total Reward Used (In Rs)', NULL, NULL, 1),
(637, 'Total Sale Without Reward', NULL, NULL, 1),
(638, 'Purchases', NULL, NULL, 1),
(639, 'Customer Pay In Out', NULL, NULL, 1),
(640, 'Cities', NULL, NULL, 1),
(641, 'Codes', NULL, NULL, 1),
(642, 'Language Words', NULL, NULL, 1),
(643, '2024-04-13,2024-04-20,2024-04-27', NULL, NULL, 1),
(644, 'Max Bills', NULL, NULL, 1),
(645, 'Required Otp For Reward Reedem', NULL, NULL, 1),
(646, 'Min Reward Points To Send Otp', NULL, NULL, 1),
(647, 'On Product Cllick Increase Pos Quantity', NULL, NULL, 1),
(648, 'Enable Light Box', NULL, NULL, 1),
(649, 'Fetch Cost In Purchase', NULL, NULL, 1),
(650, 'Orders Dashboard', NULL, NULL, 1),
(651, 'Order Hold', NULL, NULL, 1),
(652, 'HOLD', NULL, NULL, 1),
(653, '2024-04-13,2024-04-20,2024-04-27', NULL, NULL, 1),
(654, 'Sale Pos', NULL, NULL, 1),
(655, 'Multiple Payment Method', NULL, NULL, 1),
(656, 'Credit Payment Method', NULL, NULL, 1),
(657, 'Return Payment Method', NULL, NULL, 1),
(658, 'Wallet Payment Method', NULL, NULL, 1),
(659, 'Gst API Key', NULL, NULL, 1),
(660, 'Gst Api', NULL, NULL, 1),
(661, 'Reward Points', NULL, NULL, 1),
(662, 'Customer Group Id', NULL, NULL, 1),
(663, 'Gst No', NULL, NULL, 1),
(664, 'Firm Name', NULL, NULL, 1),
(665, 'Firm Address', NULL, NULL, 1),
(666, '2024-04-13,2024-04-20,2024-04-27', NULL, NULL, 1),
(667, 'Hotel Rooms', NULL, NULL, 1),
(668, 'Room No', NULL, NULL, 1),
(669, 'Capacity', NULL, NULL, 1),
(670, 'Room Booked Status', NULL, NULL, 1),
(671, '2024-04-13,2024-04-20,2024-04-27', NULL, NULL, 1),
(672, 'Seating Tables Show', NULL, NULL, 1),
(673, 'Enable Customer Reminder ', NULL, NULL, 1),
(674, 'Print Kot And Bill Both', NULL, NULL, 1),
(675, '2024-04-13,2024-04-20,2024-04-27', NULL, NULL, 1),
(676, 'Enable Hotel Room Mode', NULL, NULL, 1),
(677, '2024-04-13,2024-04-20,2024-04-27', NULL, NULL, 1),
(678, '2024-04-13,2024-04-20,2024-04-27', NULL, NULL, 1),
(679, '2024-04-13,2024-04-20,2024-04-27', NULL, NULL, 1),
(680, 'No Room', NULL, NULL, 1),
(681, 'Hotel Room', NULL, NULL, 1),
(682, 'Attach Details', NULL, NULL, 1),
(683, 'Booked Hotels', NULL, NULL, 1),
(684, 'ID Proof', NULL, NULL, 1),
(685, 'Running', NULL, NULL, 1),
(686, 'Occupied', NULL, NULL, 1),
(687, 'Change Room', NULL, NULL, 1),
(688, 'Select Room', NULL, NULL, 1),
(689, 'Room Rent', NULL, NULL, 1),
(690, 'Order Hold/Running Status', NULL, NULL, 1),
(691, 'Return Product', NULL, NULL, 1),
(692, 'Select Customer', NULL, NULL, 1),
(693, 'Select Customer (Autosuggestive)', NULL, NULL, 1),
(694, 'Select Order ID', NULL, NULL, 1),
(695, 'Product Return', NULL, NULL, 1),
(696, 'Amount Paid To The Customer', NULL, NULL, 1),
(697, 'Customer Amount Paid', NULL, NULL, 1),
(698, 'Main Image', NULL, NULL, 1),
(699, 'Related Images', NULL, NULL, 1),
(700, 'Product Type', NULL, NULL, 1),
(701, 'Show Cancelled Orders', NULL, NULL, 1),
(702, 'Purchase Order', NULL, NULL, 1),
(703, 'Add Purchase Order', NULL, NULL, 1),
(704, 'Purchase Order Heading', NULL, NULL, 1),
(705, 'Purchase Order Status', NULL, NULL, 1),
(706, 'Send Purchase Order', NULL, NULL, 1),
(707, 'Vendor Email', NULL, NULL, 1),
(708, 'Send Mail', NULL, NULL, 1),
(709, 'Vendor Name', NULL, NULL, 1),
(710, 'Store Email', NULL, NULL, 1),
(711, '2024-04-13,2024-04-20,2024-04-27', NULL, NULL, 1),
(712, '2024-04-13,2024-04-20,2024-04-27', NULL, NULL, 1),
(713, '2024-04-13,2024-04-20,2024-04-27', NULL, NULL, 1),
(714, 'Message', NULL, NULL, 1),
(715, '2024-04-13,2024-04-20,2024-04-27', NULL, NULL, 1),
(716, '2024-04-13,2024-04-20,2024-04-27', NULL, NULL, 1),
(717, '2024-04-13,2024-04-20,2024-04-27', NULL, NULL, 1),
(718, '2024-04-13,2024-04-20,2024-04-27', NULL, NULL, 1),
(719, '2024-04-13,2024-04-20,2024-04-27', NULL, NULL, 1),
(720, '2024-04-13,2024-04-20,2024-04-27', NULL, NULL, 1),
(721, 'Customer Name', NULL, NULL, 1),
(722, 'Customer Mobile', NULL, NULL, 1),
(723, 'Customer Wallet', NULL, NULL, 1),
(724, 'Customer Reward', NULL, NULL, 1),
(725, 'Sales Man', NULL, NULL, 1),
(726, 'Global Dicount', NULL, NULL, 1),
(727, 'Pos Simple', NULL, NULL, 1),
(728, 'Total Return Product', NULL, NULL, 1),
(729, 'Currencies', NULL, NULL, 1),
(730, 'Code', NULL, NULL, 1),
(731, 'Symbol', NULL, NULL, 1),
(732, 'Product Category Wise', NULL, NULL, 1),
(733, 'Total Stock Sale Price', NULL, NULL, 1),
(734, 'Total Quantity', NULL, NULL, 1),
(735, 'Product ID', NULL, NULL, 1),
(736, 'Product Manufacturer Wise', NULL, NULL, 1),
(737, 'Testimonials', NULL, NULL, 1),
(738, 'Start Date', NULL, NULL, 1),
(739, 'End Date', NULL, NULL, 1),
(740, 'Completed', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `moduleId` int(11) NOT NULL,
  `moduleName` varchar(100) NOT NULL,
  `moduleTable` varchar(100) NOT NULL,
  `moduleFirstColumn` varchar(100) NOT NULL,
  `pageHeading` varchar(100) NOT NULL,
  `moduleData` mediumtext DEFAULT NULL,
  `parentMenu` varchar(30) NOT NULL,
  `sortOrder` int(11) DEFAULT 0,
  `hideAdd` int(11) NOT NULL DEFAULT 0,
  `hideEdit` int(11) NOT NULL DEFAULT 0,
  `hideDelete` int(11) NOT NULL DEFAULT 0,
  `hideAction` int(11) NOT NULL DEFAULT 0,
  `addButtonText` varchar(30) NOT NULL,
  `copyButtonText` varchar(30) NOT NULL,
  `extraButtons` text NOT NULL,
  `submitCodeBefore` text NOT NULL,
  `submitCodeAfter` text NOT NULL,
  `extraActionOnDeleteButton` text NOT NULL,
  `additionalText` varchar(255) NOT NULL,
  `shortCode` varchar(100) NOT NULL,
  `frontendRedirectPage` varchar(255) NOT NULL,
  `sendMailToAdmin` varchar(3) NOT NULL DEFAULT 'No',
  `filedsToReplaceOnMail` varchar(500) NOT NULL,
  `filters` text NOT NULL,
  `copyTable` varchar(3) NOT NULL DEFAULT 'No',
  `dataOfColumnToSkip` varchar(255) NOT NULL,
  `autoIncreamentColumn` varchar(100) NOT NULL,
  `status` int(11) DEFAULT 1,
  `insertedBy` int(11) DEFAULT 1,
  `dateAdded` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`moduleId`, `moduleName`, `moduleTable`, `moduleFirstColumn`, `pageHeading`, `moduleData`, `parentMenu`, `sortOrder`, `hideAdd`, `hideEdit`, `hideDelete`, `hideAction`, `addButtonText`, `copyButtonText`, `extraButtons`, `submitCodeBefore`, `submitCodeAfter`, `extraActionOnDeleteButton`, `additionalText`, `shortCode`, `frontendRedirectPage`, `sendMailToAdmin`, `filedsToReplaceOnMail`, `filters`, `copyTable`, `dataOfColumnToSkip`, `autoIncreamentColumn`, `status`, `insertedBy`, `dateAdded`) VALUES
(1, 'Users', 'users', 'userId', 'Users', '{\"moduleId\":\"1\",\"tableName\":\"users\",\"columnName\":[\"userId\",\"userName\",\"userEmail\",\"userPassword\",\"userMobile\",\"roleId\",\"superAdmin\",\"dataBaseName\",\"dbUser\",\"dbPass\",\"loginToken\",\"storeUserId\",\"storeId\",\"insertedBy\",\"status\"],\"columnCustomName\":[\"User Id\",\"User Name\",\"User Email\",\"User Password\",\"User Mobile\",\"Role Id\",\"Super Admin\",\"Data Base Name\",\"Db User\",\"Db Pass\",\"Login Token\",\"Store User Id\",\"Store Id\",\"Inserted By\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"\",\"4\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"5\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"password\",\"text\",\"select\",\"select\",\"select\"],\"fieldHeading\":[\"User Name\",\"User Email\",\"User Password\",\"User Mobile\",\"Status\",\"Role Id\",\"Store Id\"],\"fieldSortOrder\":[\"2\",\"3\",\"4\",\"5\",\"8\",\"6\",\"7\"],\"fieldColumn\":[\"6\",\"6\",\"6\",\"6\",\"12\",\"6\",\"6\"],\"fieldColumnName\":[\"userName\",\"userEmail\",\"userPassword\",\"userMobile\",\"status\",\"roleId\",\"storeId\"],\"fieldName\":[\"userName\",\"userEmail\",\"userPassword\",\"userMobile\",\"status\",\"roleId\",\"storeId\"],\"fieldId\":[\"userName\",\"userEmail\",\"userPassword\",\"userMobile\",\"status\",\"roleId\",\"storeId\"],\"fieldClass\":[\"userName\",\"userEmail\",\"userPassword\",\"userMobile\",\"status\",\"roleId\",\"storeId\"],\"fieldPlaceHolder\":[\"User Name\",\"User Email\",\"User Password\",\"User Mobile\",\"Status\",\"Role Id\",\"Store Id\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"1\",\"0\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"required\",\"required\",\"required\",\"\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"notRequiredInEdit\",\"\",\"\",\"removePleaseSelect\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\",\"Enable,Disable\",\"\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\",\"1,0\",\"\",\"\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\",\"\",\"roles\",\"stores\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\",\"\",\"roleId\",\"storeId\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\",\"\",\"heading\",\"name,tagline\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"\",\"null\",\"\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"userName\",\"userEmail\",\"userPassword\",\"userMobile\",\"status\",\"roleId\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"]}', '5', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '{{$controller::moduleShortCode(1)}}', '', 'No', '', '', 'No', '', '', 1, 1, '2022-03-25 05:19:04'),
(2, 'Settings', 'settings', 'settingId', 'Settings', '{\"moduleId\":\"2\",\"tableName\":\"settings\",\"columnName\":[\"settingId\",\"websiteName\",\"websiteLogo\",\"allowedImageSize\",\"allowedFileSize\",\"metaTitle\",\"metaKeyword\",\"metaDescription\",\"adminEmail\",\"contactMobile\",\"contactEmail\",\"address\",\"mailJetUsername\",\"mailJetPassword\",\"mailjetEmail\",\"mailjetName\",\"facebook\",\"twitter\",\"linkedin\",\"instagram\",\"mergeLogin\",\"databaseBackup\",\"fieldsToSendValueOnMail\",\"filedsToReplaceOnMail\",\"filedsToUnsetOnMails\",\"hideAddEditDeleteIfNoStoreSelected\",\"multiplePaymentMethod\",\"creditPaymentMethod\",\"returnPaymentMethod\",\"walletPaymentMethod\",\"gstApi\",\"status\"],\"columnCustomName\":[\"Setting Id\",\"Website Name\",\"Website Logo\",\"Allowed Image Size\",\"Allowed File Size\",\"Meta Tags\",\"Meta Description\",\"Meta Keywords\",\"Admin Email\",\"Contact Mobile\",\"Contact Email\",\"Address\",\"Mail Jet Username\",\"Mail Jet Password\",\"Mailjet Email\",\"Mailjet Name\",\"Facebook\",\"Twitter\",\"Linkedin\",\"Instagram\",\"Merge Login\",\"Database Backup\",\"Fields To Send Value On Mail\",\"Fileds To Replace On Mail\",\"Fileds To Unset On Mails\",\"Hide Add Edit Delete If No Store Selected\",\"Multiple Payment Method\",\"Credit Payment Method\",\"Return Payment Method\",\"Wallet Payment Method\",\"Gst Api\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"type\":[\"\",\"\",\"image\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"3\",\"2\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"file\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"select\",\"select\",\"text\",\"text\",\"select\",\"select\",\"select\",\"select\",\"text\"],\"fieldHeading\":[\"Website Name\",\"Website Logo\",\"Allowed Image Size\",\"Allowed File Size\",\"Meta Tags\",\"Meta Description\",\"Meta Keywords\",\"Admin Email\",\"Contact Mobile\",\"Contact Email\",\"Address\",\"Mail Jet Username\",\"Mail Jet Password\",\"Facebook\",\"Twitter\",\"Linkedin\",\"Instagram\",\"Status\",\"Merge Login\",\"Mailjet Email\",\"Mailjet Name\",\"Multiple Payment Method\",\"Credit Payment Method\",\"Return Payment Method\",\"Wallet Payment Method\",\"Gst API Key\"],\"fieldSortOrder\":[\"1\",\"50\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"15\",\"16\",\"17\",\"18\",\"19\",\"20\",\"13\",\"14\",\"21\",\"22\",\"23\",\"24\",\"25\"],\"fieldColumn\":[\"4\",\"12\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"12\",\"3\",\"3\",\"3\",\"3\",\"3\",\"3\",\"6\",\"6\",\"3\",\"3\",\"3\",\"3\",\"3\",\"3\",\"12\"],\"fieldColumnName\":[\"websiteName\",\"websiteLogo\",\"allowedImageSize\",\"allowedFileSize\",\"metaTitle\",\"metaKeyword\",\"metaDescription\",\"adminEmail\",\"contactMobile\",\"contactEmail\",\"address\",\"mailJetUsername\",\"mailJetPassword\",\"facebook\",\"twitter\",\"linkedin\",\"instagram\",\"status\",\"mergeLogin\",\"mailjetEmail\",\"mailjetName\",\"multiplePaymentMethod\",\"creditPaymentMethod\",\"returnPaymentMethod\",\"walletPaymentMethod\",\"gstApi\"],\"fieldName\":[\"websiteName\",\"websiteLogo\",\"allowedImageSize\",\"allowedFileSize\",\"metaTitle\",\"metaKeyword\",\"metaDescription\",\"adminEmail\",\"contactMobile\",\"contactEmail\",\"address\",\"mailJetUsername\",\"mailJetPassword\",\"facebook\",\"twitter\",\"linkedin\",\"instagram\",\"status\",\"mergeLogin\",\"mailjetEmail\",\"mailjetName\",\"multiplePaymentMethod\",\"creditPaymentMethod\",\"returnPaymentMethod\",\"walletPaymentMethod\",\"gstApi\"],\"fieldId\":[\"websiteName\",\"websiteLogo\",\"allowedImageSize\",\"allowedFileSize\",\"metaTitle\",\"metaKeyword\",\"metaDescription\",\"adminEmail\",\"contactMobile\",\"contactEmail\",\"address\",\"mailJetUsername\",\"mailJetPassword\",\"facebook\",\"twitter\",\"linkedin\",\"instagram\",\"status\",\"mergeLogin\",\"mailjetEmail\",\"mailjetName\",\"multiplePaymentMethod\",\"creditPaymentMethod\",\"returnPaymentMethod\",\"walletPaymentMethod\",\"gstApi\"],\"fieldClass\":[\"websiteName\",\"websiteLogo\",\"allowedImageSize\",\"allowedFileSize\",\"metaTitle\",\"metaKeyword\",\"metaDescription\",\"adminEmail\",\"contactMobile\",\"contactEmail\",\"address\",\"mailJetUsername\",\"mailJetPassword\",\"facebook\",\"twitter\",\"linkedin\",\"instagram\",\"status\",\"mergeLogin\",\"mailjetEmail\",\"mailjetName\",\"multiplePaymentMethod\",\"creditPaymentMethod\",\"returnPaymentMethod\",\"walletPaymentMethod\",\"gstApi\"],\"fieldPlaceHolder\":[\"Website Name\",\"Website Logo\",\"Allowed Image Size\",\"Allowed File Size\",\"Meta Tags\",\"Meta Description\",\"Meta Keywords\",\"Admin Email\",\"Contact Mobile\",\"Contact Email\",\"Address\",\"Mail Jet Username\",\"Mail Jet Password\",\"Facebook\",\"Twitter\",\"Linkedin\",\"Instagram\",\"Status\",\"Merge Login\",\"Mailjet Email\",\"Mailjet Name\",\"Multiple Payment Method\",\"Credit Payment Method\",\"Return Payment Method\",\"Wallet Payment Method\",\"Gst Api\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"removePleaseSelect\",\"removePleaseSelect\",\"removePleaseSelect\",\"removePleaseSelect\",\"\"],\"fieldAdditionalAttribute2\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"showOnlyToSuperAdmin\",\"showOnlyToSuperAdmin\",\"showOnlyToSuperAdmin\",\"showOnlyToSuperAdmin\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"Enable,Disable\",\"No,Yes\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"1,0\",\"0,1\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"payments\",\"payments\",\"payments\",\"payments\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"paymentId\",\"paymentId\",\"paymentId\",\"paymentId\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"name\",\"name\",\"name\",\"name\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"websiteName\",\"websiteLogo\",\"allowedImageSize\",\"allowedFileSize\",\"metaTitle\",\"metaKeyword\",\"metaDescription\",\"adminEmail\",\"contactMobile\",\"contactEmail\",\"address\",\"mailJetUsername\",\"mailJetPassword\",\"facebook\",\"twitter\",\"linkedin\",\"instagram\",\"status\",\"mergeLogin\",\"mailjetEmail\",\"mailjetName\",\"gstApi\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"]}', '2', 0, 1, 0, 1, 0, '', '', '', '', '', '', '', '', '', 'No', '', '', 'No', '', '', 1, 1, '2022-03-25 07:52:07'),
(3, 'Templates', 'templates', 'templateId', 'Templates', '{\"moduleId\":\"3\",\"tableName\":\"templates\",\"columnName\":[\"templateId\",\"subject\",\"template\",\"forWhat\",\"forWhom\",\"status\",\"dateAdded\"],\"columnCustomName\":[\"Template Id\",\"Subject\",\"Template\",\"For What\",\"For Whom\",\"Status\",\"Date Added\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"No\",\"Yes\",\"Yes\",\"Yes\",\"No\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"status\",\"\"],\"columnSortOrder\":[\"1\",\"2\",\"\",\"3\",\"4\",\"5\",\"\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"wysiwyg\",\"text\",\"select\",\"select\"],\"fieldHeading\":[\"Subject\",\"Template\",\"For What\",\"For Whom\",\"Status\"],\"fieldSortOrder\":[\"2\",\"3\",\"4\",\"5\",\"6\"],\"fieldColumn\":[\"3\",\"3\",\"3\",\"3\",\"3\"],\"fieldColumnName\":[\"subject\",\"template\",\"forWhat\",\"forWhom\",\"status\"],\"fieldName\":[\"subject\",\"template\",\"forWhat\",\"forWhom\",\"status\"],\"fieldId\":[\"subject\",\"template\",\"forWhat\",\"forWhom\",\"status\"],\"fieldClass\":[\"subject\",\"template\",\"forWhat\",\"forWhom\",\"status\"],\"fieldPlaceHolder\":[\"Subject\",\"Template\",\"For What\",\"For Whom\",\"Status\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"0\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"required\",\"\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"readonlyInEdit\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"Admin,User\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"Admin,User\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"\",\"\",\"\",\"\",\"\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"subject\",\"template\",\"forWhat\",\"forWhom\",\"status\"]}', '10', 0, 1, 0, 1, 0, '', '', '', '', '', '', '', '', '', 'No', '', '', 'No', '', '', 1, 1, '2022-05-01 11:30:12'),
(4, 'Contacts', 'contacts', 'contactId', 'Contacts', '{\"moduleId\":\"4\",\"tableName\":\"contacts\",\"columnName\":[\"contactId\",\"name\",\"email\",\"mobile\",\"subject\",\"message\",\"status\",\"dateAdded\"],\"columnCustomName\":[\"Contact Id\",\"Name\",\"Email\",\"Mobile\",\"Subject\",\"Message\",\"Status\",\"Date Added\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"Yes\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"status\",\"\"],\"columnSortOrder\":[\"1\",\"2\",\"\",\"\",\"\",\"5\",\"\",\"4\"],\"tableColumnMerge\":[\"\",\"\",\"name\",\"name\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"text\",\"text\"],\"fieldHeading\":[\"Name\",\"Email\",\"Mobile\",\"Message\"],\"fieldSortOrder\":[\"2\",\"3\",\"4\",\"6\"],\"fieldColumn\":[\"4\",\"4\",\"4\",\"12\"],\"fieldColumnName\":[\"name\",\"email\",\"mobile\",\"message\"],\"fieldName\":[\"name\",\"email\",\"mobile\",\"message\"],\"fieldId\":[\"name\",\"email\",\"mobile\",\"message\"],\"fieldClass\":[\"name\",\"email\",\"mobile\",\"message\"],\"fieldPlaceHolder\":[\"Name\",\"Email\",\"Mobile\",\"Message\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"0\",\"1\"],\"fieldValidation\":[\"required\",\"required\",\"\",\"required\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"\",\"\",\"\",\"\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"name\",\"email\",\"mobile\",\"message\"]}', '7', 0, 1, 1, 0, 0, '', '', '', '', '', '', '', '', '', 'No', '', '', 'No', '', '', 1, 1, '2022-05-01 11:39:42'),
(5, 'Menus', 'menus', 'menuId', 'Menus', '{\"moduleId\":\"5\",\"tableName\":\"menus\",\"columnName\":[\"menuId\",\"menuHeading\",\"link\",\"icon\",\"moduleId\",\"parentId\",\"sortOrder\",\"roleId\",\"status\",\"dateAdded\",\"dateUpdated\",\"insertedBy\"],\"columnCustomName\":[\"Menu Id\",\"Menu Heading\",\"Link\",\"Icon\",\"Module Id\",\"Parent Id\",\"Sort Order\",\"Role Id\",\"Status\",\"Date Added\",\"Date Updated\",\"Inserted By\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"menus\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"menuHeading\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\",\"menuId\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"No\",\"Yes\",\"Yes\",\"Yes\",\"No\",\"Yes\",\"No\",\"No\",\"No\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"sortOrderUpdateFromOutSide\",\"\",\"status\",\"\",\"\",\"\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"\",\"4\",\"5\",\"6\",\"\",\"7\",\"\",\"\",\"\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"OR\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"text\",\"select\",\"text\",\"select\",\"select\"],\"fieldHeading\":[\"Menu Heading\",\"Link\",\"Module Id\",\"Parent Id\",\"Sort Order\",\"Status\",\"Role Id (Show Menu) (Multiple)\"],\"fieldSortOrder\":[\"2\",\"3\",\"5\",\"6\",\"7\",\"8\",\"9\"],\"fieldColumn\":[\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"12\"],\"fieldColumnName\":[\"menuHeading\",\"link\",\"moduleId\",\"parentId\",\"sortOrder\",\"status\",\"roleId\"],\"fieldName\":[\"menuHeading\",\"link\",\"moduleId\",\"parentId\",\"sortOrder\",\"status\",\"roleId\"],\"fieldId\":[\"menuHeading\",\"link\",\"moduleId\",\"parentId\",\"sortOrder\",\"status\",\"roleId\"],\"fieldClass\":[\"menuHeading\",\"link\",\"moduleId\",\"parentId\",\"sortOrder\",\"status\",\"roleId\"],\"fieldPlaceHolder\":[\"Menu Heading\",\"Link\",\"Module Id\",\"Parent Id\",\"Sort Order\",\"Status\",\"Role Id\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\",\"0\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"multiple\"],\"fieldRequired\":[\"1\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"required\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\",\"\",\"Enable,Disable\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\",\"\",\"1,0\",\"\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"menus\",\"\",\"\",\"roles\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"menuId\",\"null\",\"\",\"roleId\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"menuHeading\",\"null\",\"\",\"heading\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"parentId\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"\",\"\",\"\",\"\",\"\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"0\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"menuHeading\",\"link\",\"moduleId\",\"parentId\",\"sortOrder\",\"status\",\"roleId\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"=\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"]}', '2', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 'No', '', '', 'No', '', '', 1, 1, '2022-05-01 11:39:42'),
(6, 'DatabaseBackups', 'databaseBackup', 'databaseBackupId', 'Database Backups', '{\"moduleId\":\"6\",\"tableName\":\"databaseBackup\",\"columnName\":[\"databaseBackupId\",\"backUpName\",\"type\",\"status\",\"dateAdded\"],\"columnCustomName\":[\"Database Backup Id\",\"Back Up Name\",\"Type\",\"Status\",\"Date Added\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\"],\"linkType\":[\"\",\"\",\"\",\"\",\"\"],\"status\":[\"No\",\"No\",\"No\",\"No\",\"No\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"\",\"4\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\"],\"fieldType\":[\"text\",\"text\"],\"fieldHeading\":[\"Back Up Name\",\"Type\"],\"fieldSortOrder\":[\"2\",\"3\"],\"fieldColumn\":[\"3\",\"3\"],\"fieldColumnName\":[\"backUpName\",\"type\"],\"fieldName\":[\"backUpName\",\"type\"],\"fieldId\":[\"backUpName\",\"type\"],\"fieldClass\":[\"backUpName\",\"type\"],\"fieldPlaceHolder\":[\"Back Up Name\",\"Type\"],\"fieldDefaultValue\":[\"\",\"\"],\"fieldAttribute\":[\"\",\"\"],\"fieldRequired\":[\"1\",\"0\"],\"fieldValidation\":[\"required\",\"\"],\"fieldHeadingBefore\":[\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\"],\"fieldSelectTable\":[\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\"],\"fieldOrderBy\":[\"\",\"\"],\"fieldOrderByValue\":[\"\",\"\"],\"fieldSelectValue\":[\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\"],\"fieldTableColumn\":[\"backUpName\",\"type\"]}', '2', 0, 1, 1, 0, 0, '', '', 'PGEgY2xhc3M9ImJ0biBidG4tc3VjY2VzcyIgaHJlZj0iPD9waHAgZWNobyB1cmwoJy8nKTs/Pi88P3BocCBlY2hvICRyb3dbJ2JhY2tVcE5hbWUnXTs/PiIgc3R5bGU9Im1hcmdpbi1yaWdodDoxMHB4OyIgZGF0YS12YWx1ZT0iPD9waHAgZWNobyAkcm93WydiYWNrVXBOYW1lJ107Pz4iPkRvd25sb2FkPC9hPg0KPGRpdiBjbGFzcz0iYnRuIGJ0bi1pbmZvIGFqb3V2dmNvZmYiIHN0eWxlPSJtYXJnaW4tcmlnaHQ6MTBweDsiIGRhdGEtdmFsdWU9Ijw/cGhwIGVjaG8gJHJvd1snYmFja1VwTmFtZSddOz8+Ij5SZXN0b3JlPC9kaXY+', '', '', 'PD9waHANCmlmICgkX1BPU1RbJ3RhYmxlJ109PSJkYXRhYmFzZV9iYWNrdXAiKSB7DQogICAgJGZpbGUgPSAkdGhpcy0+Z2V0RGF0YVdoZXJlKCJkYXRhYmFzZV9iYWNrdXAiLCJkYXRhYmFzZUJhY2t1cElkIiwkX1BPU1RbJ2lkJ10pOw0KICAgIHVubGluaygkZmlsZVswXVsnYmFja1VwTmFtZSddKTsNCn0NCj8+', '', '', '', 'No', '', '', 'No', '', '', 1, 1, '2022-07-13 09:30:34'),
(9, 'Pages', 'pages', 'pageId', 'Pages', '{\"moduleId\":\"9\",\"tableName\":\"pages\",\"columnName\":[\"pageId\",\"heading\",\"seo\",\"metaTitle\",\"metaKeyword\",\"metaDescription\",\"shortDescription\",\"description\",\"image\",\"status\"],\"columnCustomName\":[\"Page Id\",\"Heading\",\"Seo\",\"Meta Title\",\"Meta Keyword\",\"Meta Description\",\"Short Description\",\"Description\",\"Image\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"No\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"image\",\"status\"],\"columnSortOrder\":[\"1\",\"3\",\"\",\"\",\"\",\"\",\"\",\"\",\"2\",\"\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"fieldType\":[\"text\",\"text\",\"textarea\",\"textarea\",\"textarea\",\"wysiwyg\",\"wysiwyg\",\"file\",\"select\"],\"fieldHeading\":[\"Heading\",\"Seo\",\"Meta Title\",\"Meta Keyword\",\"Meta Description\",\"Short Description\",\"Description\",\"Image\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"9\",\"8\"],\"fieldColumn\":[\"6\",\"6\",\"4\",\"4\",\"4\",\"12\",\"12\",\"12\",\"12\"],\"fieldColumnName\":[\"heading\",\"seo\",\"metaTitle\",\"metaKeyword\",\"metaDescription\",\"shortDescription\",\"description\",\"image\",\"status\"],\"fieldName\":[\"heading\",\"seo\",\"metaTitle\",\"metaKeyword\",\"metaDescription\",\"shortDescription\",\"description\",\"image\",\"status\"],\"fieldId\":[\"heading\",\"seo\",\"metaTitle\",\"metaKeyword\",\"metaDescription\",\"shortDescription\",\"description\",\"image\",\"status\"],\"fieldClass\":[\"heading\",\"seo\",\"metaTitle\",\"metaKeyword\",\"metaDescription\",\"shortDescription\",\"description\",\"image\",\"status\"],\"fieldPlaceHolder\":[\"Heading\",\"Seo\",\"Meta Title\",\"Meta Keyword\",\"Meta Description\",\"Short Description\",\"Description\",\"Image\",\"Status\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"required\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"]}', '8', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 'No', '', '{\"filterHeading\":[\"Contacts\",\"Hello\"],\"filterTable\":[\"contacts\",\"filter_types\"],\"filterGetColumnPrimaryId\":[\"contactId\",\"fiterTypeId\"],\"filterGetColumnFetchName\":[\"name\",\"email\",\"mobile\",\"heading\",\"status\"],\"filterFieldType\":[\"text\",\"text\"],\"filterSortOrder\":[\"0\",\"0\"],\"filterOrderBy\":[\"ColumnName_DESC \",\"ColumnName_DESC \"],\"filterSelectBoxCustomValue\":[\"1,2\",\"1,2\"],\"filterFieldAttributes\":[\"contacts,contacts,contacts\",\"filter types,filter types,filter types\"],\"filterFieldAdditionalAttributes\":[\"none\",\"none\",\"remove_please_select\",\"readonly\",\"multiple\"],\"filterLineNumber\":[\"2\",\"2\"],\"filterSelectBoxCustomHtml\":[\"3,4\",\"3,4\"]}', 'No', '', '', 1, 1, '2023-05-06 02:50:49'),
(10, 'Filters', 'filters', 'filterId', 'Filters', '{\"moduleId\":\"10\",\"tableName\":\"filters\",\"columnName\":[\"filterId\",\"heading\",\"getDataFrom\",\"primaryColumn\",\"columnToFetch\",\"fieldType\",\"sortOrder\",\"orderBy\",\"selectBoxValue\",\"selectBoxHtml\",\"fieldName\",\"fieldClass\",\"fieldId\",\"fieldIplaceHolder\",\"additionalAttribute\",\"lineNumber\",\"moduleId\",\"extra\",\"status\"],\"columnCustomName\":[\"Filter Id\",\"Heading\",\"Get Data From\",\"Primary Column\",\"Column To Fetch\",\"Field Type\",\"Sort Order\",\"Order By\",\"Select Box Value\",\"Select Box Html\",\"Field Name\",\"Field Class\",\"Field Id\",\"Field Iplace Holder\",\"Additional Attribute\",\"Line Number\",\"Show On Page\",\"Extra\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"modules\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"moduleName\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"moduleId\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"sortOrderUpdateFromOutSide\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"3\",\"\",\"4\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldType\":[\"text\",\"select\",\"select\",\"select\",\"select\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"select\",\"text\",\"select\",\"select\"],\"fieldHeading\":[\"Heading\",\"Get Data From (Table Name)\",\"Primary Column (First AutoInc Column)\",\"Column To Fetch (Multiple)\",\"Field Type\",\"Sort Order\",\"Order By (ColumnName_DESC || ColumnName_ASC)\",\"Select Box Value (Custom (Comma Seprated))\",\"Select Box Html (Custom (Comma Seprated))\",\"Field Name\",\"Field Class\",\"Field Id\",\"Field Place Holder\",\"Additional Attribute (Multiple)\",\"Line Number\",\"Show On Page\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"18\"],\"fieldColumn\":[\"12\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"6\",\"6\",\"3\",\"3\",\"3\",\"3\",\"4\",\"4\",\"4\",\"12\"],\"fieldColumnName\":[\"heading\",\"getDataFrom\",\"primaryColumn\",\"columnToFetch\",\"fieldType\",\"sortOrder\",\"orderBy\",\"selectBoxValue\",\"selectBoxHtml\",\"fieldName\",\"fieldClass\",\"fieldId\",\"fieldIplaceHolder\",\"additionalAttribute\",\"lineNumber\",\"moduleId\",\"status\"],\"fieldName\":[\"heading\",\"getDataFrom\",\"primaryColumn\",\"columnToFetch\",\"fieldType\",\"sortOrder\",\"orderBy\",\"selectBoxValue\",\"selectBoxHtml\",\"fieldName\",\"fieldClass\",\"fieldId\",\"fieldIplaceHolder\",\"additionalAttribute\",\"lineNumber\",\"moduleId\",\"status\"],\"fieldId\":[\"heading\",\"getDataFrom\",\"primaryColumn\",\"columnToFetch\",\"fieldType\",\"sortOrder\",\"orderBy\",\"selectBoxValue\",\"selectBoxHtml\",\"fieldName\",\"fieldClass\",\"fieldId\",\"fieldIplaceHolder\",\"additionalAttribute\",\"lineNumber\",\"moduleId\",\"status\"],\"fieldClass\":[\"heading tbngmkyqrt\",\"getDataFrom pmivrsdqty\",\"primaryColumn pxjqttrubu\",\"columnToFetch xkwhjswscp\",\"fieldType\",\"sortOrder\",\"orderBy\",\"selectBoxValue\",\"selectBoxHtml\",\"fieldName ubliuypnsy\",\"fieldClass jonnvaijjm\",\"fieldId nippwjswoi\",\"fieldIplaceHolder whaowmndwo\",\"additionalAttribute\",\"lineNumber\",\"moduleId\",\"status\"],\"fieldPlaceHolder\":[\"Heading\",\"Get Data From\",\"Primary Column\",\"Column To Fetch\",\"Field Type\",\"Sort Order\",\"Order By\",\"Select Box Value\",\"Select Box Html\",\"Field Name\",\"Field Class\",\"Field Id\",\"Field place Holder\",\"Additional Attribute\",\"Line Number\",\"Show On Page\",\"Status\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\",\"\",\"0\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"1\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"multiple\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"multiple\",\"\",\"\",\"\"],\"fieldRequired\":[\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"removePleaseSelect\",\"removePleaseSelect\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\",\"text,select,autosuggestive,date,datetime,tel,time\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"None,Remove Please Select,Readonly,Multiple,Disabled,Autosuggestive\",\"\",\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\",\"text,select,autosuggestive,date,datetime,tel,time\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"none,please_select,readonly,multiple,disabled,autosuggestive\",\"\",\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"tables\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"modules\",\"\"],\"fieldSelectIdColumn\":[\"\",\"tableName\",\"null\",\"null\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"moduleId\",\"null\"],\"fieldSelectMainColumn\":[\"\",\"tableName\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"moduleName\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"heading\",\"getDataFrom\",\"primaryColumn\",\"columnToFetch\",\"fieldType\",\"sortOrder\",\"orderBy\",\"selectBoxValue\",\"selectBoxHtml\",\"fieldName\",\"fieldClass\",\"fieldId\",\"fieldIplaceHolder\",\"additionalAttribute\",\"lineNumber\",\"status\"]}', '13', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 'No', '', '', 'No', '', '', 1, 1, '2024-01-25 06:09:05'),
(11, 'ImageManager', 'image_manager', 'imageManagerId', 'Image Manager', '{\"moduleId\":\"11\",\"tableName\":\"image_manager\",\"columnName\":[\"imageManagerId\",\"image\",\"status\"],\"columnCustomName\":[\"Image Manager Id\",\"Image\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"No\"],\"type\":[\"\",\"image\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"\"],\"tableColumnMerge\":[\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"fieldType\":[\"file\"],\"fieldHeading\":[\"Image\"],\"fieldSortOrder\":[\"1\"],\"fieldColumn\":[\"12\"],\"fieldColumnName\":[\"image\"],\"fieldName\":[\"image\"],\"fieldId\":[\"image\"],\"fieldClass\":[\"image\"],\"fieldPlaceHolder\":[\"Image\"],\"fieldDefaultValue\":[\"\"],\"fieldAttribute\":[\"\"],\"fieldRequired\":[\"0\"],\"fieldValidation\":[\"\"],\"fieldHeadingBefore\":[\"\"],\"fieldAdditionalAttribute\":[\"\"],\"fieldSelectBoxText\":[\"\"],\"fieldSelectBoxValue\":[\"\"],\"fieldSelectTable\":[\"\"],\"fieldSelectIdColumn\":[\"\"],\"fieldSelectMainColumn\":[\"\"],\"fieldSelectWhere\":[\"\"],\"fieldOrderBy\":[\"\"],\"fieldOrderByValue\":[\"null\"],\"fieldSelectValue\":[\"\"],\"fieldSelectOperator\":[\"\"]}', '8', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 'No', '', '', 'No', '', '', 1, 1, '2024-02-09 05:39:25'),
(12, 'AdminLoginHistory', 'admin_login_history', 'adminLoginHistoryId', 'Admin Login History', '{\"moduleId\":\"12\",\"tableName\":\"admin_login_history\",\"columnName\":[\"adminLoginHistoryId\",\"userId\",\"status\",\"dateAdded\"],\"columnCustomName\":[\"Admin Login History Id\",\"User Id\",\"Status\",\"Date Added\"],\"foreignColumnShow\":[\"No\",\"Yes\",\"No\",\"No\"],\"foreignTable\":[\"\",\"users\",\"\",\"\"],\"foreignColumn\":[\"\",\"userName\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"userId\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"status\",\"\"],\"columnSortOrder\":[\"1\",\"2\",\"\",\"3\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"fieldType\":[\"select\",\"select\",\"select\",\"text\"],\"fieldHeading\":[\"Admin Login History Id\",\"User Id\",\"Status\",\"Date Added\"],\"fieldSortOrder\":[\"0\",\"1\",\"2\",\"3\"],\"fieldColumn\":[\"4\",\"4\",\"4\",\"4\"],\"fieldColumnName\":[\"adminLoginHistoryId\",\"userId\",\"status\",\"dateAdded\"],\"fieldName\":[\"adminLoginHistoryId\",\"userId\",\"status\",\"dateAdded\"],\"fieldId\":[\"adminLoginHistoryId\",\"userId\",\"status\",\"dateAdded\"],\"fieldClass\":[\"adminLoginHistoryId\",\"userId\",\"status\",\"dateAdded\"],\"fieldPlaceHolder\":[\"Admin Login History Id\",\"User Id\",\"Status\",\"Date Added\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"0\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"adminLoginHistoryId\",\"userId\",\"status\",\"dateAdded\"]}', '13', 0, 1, 0, 0, 1, '', '', '', '', '', '', '', '', '', 'No', '', '', 'No', '', '', 1, 1, '2024-02-09 07:32:57'),
(13, 'Countries', 'countries', 'countryId', 'Countries', '{\"moduleId\":\"13\",\"tableName\":\"countries\",\"columnName\":[\"countryId\",\"heading\",\"sortOrder\",\"softDelete\",\"dateAdded\",\"dateUpdated\",\"insertedBy\",\"updatedBy\",\"status\"],\"columnCustomName\":[\"Country Id\",\"Heading\",\"Sort Order\",\"Soft Delete\",\"Date Added\",\"Date Updated\",\"Inserted By\",\"Updated By\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"sortOrderUpdateFromOutSide\",\"\",\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"\",\"5\",\"\",\"\",\"\",\"4\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"select\"],\"fieldHeading\":[\"Heading\",\"Sort Order\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\",\"8\"],\"fieldColumn\":[\"12\",\"6\",\"6\"],\"fieldColumnName\":[\"heading\",\"sortOrder\",\"status\"],\"fieldName\":[\"heading\",\"sortOrder\",\"status\"],\"fieldId\":[\"heading\",\"sortOrder\",\"status\"],\"fieldClass\":[\"heading\",\"sortOrder\",\"status\"],\"fieldPlaceHolder\":[\"Heading\",\"Sort Order\",\"Status\"],\"fieldDefaultValue\":[\"\",\"0\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"0\"],\"fieldValidation\":[\"required\",\"numeric|required\",\"\"],\"fieldHeadingBefore\":[\"This is a module 13 heading\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\"],\"fieldTableColumn\":[\"heading\",\"sortOrder\",\"status\"],\"fieldSelectOperator\":[\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\"]}', '2', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 'No', '', '', 'No', '', '', 1, 1, '2024-02-09 10:33:01'),
(14, 'States', 'states', 'stateId', 'States', '{\"moduleId\":\"14\",\"tableName\":\"states\",\"columnName\":[\"stateId\",\"heading\",\"countryId\",\"sortOrder\",\"image\",\"description\",\"softDelete\",\"updatedBy\",\"dateUpdated\",\"insertedBy\",\"dateAdded\",\"status\"],\"columnCustomName\":[\"State Id\",\"Heading\",\"Country Id\",\"Sort Order\",\"Image\",\"Description\",\"Soft Delete\",\"Updated By\",\"Date Updated\",\"Inserted By\",\"Date Added\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"countries\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"heading\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"countryId\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"sortOrderUpdateFromOutSide\",\"image\",\"\",\"\",\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"1\",\"\",\"\",\"\",\"\",\"\",\"6\",\"5\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"OR\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"select\",\"text\",\"select\",\"file\",\"wysiwyg\"],\"fieldHeading\":[\"Heading\",\"Country Id\",\"Sort Order\",\"Status\",\"Image\",\"Description\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"9\",\"10\",\"11\"],\"fieldColumn\":[\"12\",\"4\",\"4\",\"4\",\"12\",\"12\"],\"fieldColumnName\":[\"heading\",\"countryId\",\"sortOrder\",\"status\",\"image\",\"description\"],\"fieldName\":[\"heading\",\"countryId\",\"sortOrder\",\"status\",\"image\",\"description\"],\"fieldId\":[\"heading\",\"countryId\",\"sortOrder\",\"status\",\"image\",\"description\"],\"fieldClass\":[\"heading\",\"countryId\",\"sortOrder\",\"status\",\"image\",\"description\"],\"fieldPlaceHolder\":[\"Heading\",\"Country Id\",\"Sort Order\",\"Status\",\"Image\",\"Description\"],\"fieldDefaultValue\":[\"\",\"\",\"0\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"0\",\"1\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"required\",\"\",\"numeric|required\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"This is a module 14 heading\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"Enable,Disable\",\"\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"1,0\",\"\",\"\"],\"fieldSelectTable\":[\"\",\"countries\",\"\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"countryId\",\"null\",\"null\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"heading\",\"\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"heading\",\"countryId\",\"sortOrder\",\"status\",\"image\",\"description\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\",\"\"]}', '2', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '{{$controller::moduleShortCode(14)}}', 'thank-you', 'Yes', 'countryId-heading-countries', '', 'No', '', '', 1, 1, '2024-02-09 10:56:43');
INSERT INTO `modules` (`moduleId`, `moduleName`, `moduleTable`, `moduleFirstColumn`, `pageHeading`, `moduleData`, `parentMenu`, `sortOrder`, `hideAdd`, `hideEdit`, `hideDelete`, `hideAction`, `addButtonText`, `copyButtonText`, `extraButtons`, `submitCodeBefore`, `submitCodeAfter`, `extraActionOnDeleteButton`, `additionalText`, `shortCode`, `frontendRedirectPage`, `sendMailToAdmin`, `filedsToReplaceOnMail`, `filters`, `copyTable`, `dataOfColumnToSkip`, `autoIncreamentColumn`, `status`, `insertedBy`, `dateAdded`) VALUES
(15, 'CustomerGroup', 'customer_group', 'customerGroupId', 'Customer Group', '{\"moduleId\":\"15\",\"tableName\":\"customer_group\",\"columnName\":[\"customerGroupId\",\"heading\",\"defaultDiscountPercent\",\"sortOrder\",\"default\",\"updatedBy\",\"insertedBy\",\"dateUpdated\",\"dateAdded\",\"softDelete\",\"storeId\",\"userId\",\"status\"],\"columnCustomName\":[\"Customer Group Id\",\"Heading\",\"Default Discount Percent\",\"Sort Order\",\"Default\",\"Updated By\",\"Inserted By\",\"Date Updated\",\"Date Added\",\"Soft Delete\",\"Store Id\",\"User Id\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"stores\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"name\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"storeId\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"Yes\",\"Yes\",\"No\",\"Yes\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"sortOrderUpdateFromOutSide\",\"makeDefault\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"7\",\"\",\"\",\"6\",\"7\",\"\",\"5\",\"\",\"8\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"text\",\"select\",\"select\"],\"fieldHeading\":[\"Heading\",\"Default Discount Percent\",\"Sort Order\",\"Status\",\"Make Default\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"12\",\"11\"],\"fieldColumn\":[\"4\",\"4\",\"4\",\"6\",\"6\"],\"fieldColumnName\":[\"heading\",\"defaultDiscountPercent\",\"sortOrder\",\"status\",\"default\"],\"fieldName\":[\"heading\",\"defaultDiscountPercent\",\"sortOrder\",\"status\",\"default\"],\"fieldId\":[\"heading\",\"defaultDiscountPercent\",\"sortOrder\",\"status\",\"default\"],\"fieldClass\":[\"heading\",\"defaultDiscountPercent\",\"sortOrder\",\"status\",\"default\"],\"fieldPlaceHolder\":[\"Heading\",\"Default Discount Percent\",\"Sort Order\",\"Status\",\"Default\"],\"fieldDefaultValue\":[\"\",\"0\",\"0\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"0\",\"1\",\"0\",\"0\"],\"fieldValidation\":[\"required\",\"\",\"required|numeric\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"Enable,Disable\",\"No,Yes\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"1,0\",\"No,Yes\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"heading\",\"defaultDiscountPercent\",\"sortOrder\",\"status\",\"default\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\"]}', '28', 0, 0, 0, 0, 0, '', '', '', '', 'PD9waHANCiRjaGVja0RlZmF1bHQgPSBEQjo6c2VsZWN0KCJTRUxFQ1QgKiBGUk9NIGN1c3RvbWVyX2dyb3VwIFdIRVJFIHN0b3JlSWQ9JyIuU2Vzc2lvbjo6Z2V0KCJzdG9yZUlkIikuIicgQU5EIHVzZXJJZD0nIi5TZXNzaW9uOjpnZXQoInVzZXJJZCIpLiInIik7DQokY2hlY2tEZWZhdWx0ID0gJHRoaXMtPmFycmF5Q29udmVydCgkY2hlY2tEZWZhdWx0KTsNCmlmKGNvdW50KCRjaGVja0RlZmF1bHQpPT0xKXsNCglEQjo6c2VsZWN0KCJVUERBVEUgY3VzdG9tZXJfZ3JvdXAgU0VUIGBkZWZhdWx0YCA9ICdZZXMnIFdIRVJFIGN1c3RvbWVyR3JvdXBJZD0nIi4kY2hlY2tEZWZhdWx0WzBdWydjdXN0b21lckdyb3VwSWQnXS4iJyIpOw0KfWVsc2V7DQoJREI6OnNlbGVjdCgiVVBEQVRFIGN1c3RvbWVyX2dyb3VwIFNFVCBgZGVmYXVsdGAgPSAnTm8nIFdIRVJFIHN0b3JlSWQ9JyIuU2Vzc2lvbjo6Z2V0KCJzdG9yZUlkIikuIiciKTsNCglpZihpc3NldCgkYXJyYXlbJ3VwZGF0ZV9pZCddKSBBTkQgJGFycmF5Wyd1cGRhdGVfaWQnXSA+IDApew0KCQlEQjo6c2VsZWN0KCJVUERBVEUgY3VzdG9tZXJfZ3JvdXAgU0VUIGBkZWZhdWx0YCA9ICdZZXMnIFdIRVJFIGN1c3RvbWVyR3JvdXBJZD0nIi4kYXJyYXlbJ3VwZGF0ZV9pZCddLiInIik7DQoJfWVsc2V7DQoJCURCOjpzZWxlY3QoIlVQREFURSBjdXN0b21lcl9ncm91cCBTRVQgYGRlZmF1bHRgID0gJ1llcycgV0hFUkUgY3VzdG9tZXJHcm91cElkPSciLiRyZXBseVsnaW5zZXJ0X2lkJ10uIiciKTsNCgl9DQp9DQo/Pg==', '', '', '{{$controller::moduleShortCode(15)}}', '', 'No', '', '', 'No', '', '', 1, 1, '2024-02-15 03:45:11'),
(16, 'Stores', 'stores', 'storeId', 'Stores', '{\"moduleId\":\"16\",\"tableName\":\"stores\",\"columnName\":[\"storeId\",\"name\",\"tagline\",\"email\",\"mobile\",\"address\",\"cityId\",\"stateId\",\"sortOrder\",\"userId\",\"softDelete\",\"updatedBy\",\"insertedBy\",\"dateUpdated\",\"dateAdded\",\"status\"],\"columnCustomName\":[\"Store Id\",\"Name\",\"Tagline\",\"Email\",\"Mobile\",\"Address\",\"City Id\",\"State Id\",\"Sort Order\",\"User Id\",\"Soft Delete\",\"Updated By\",\"Inserted By\",\"Date Updated\",\"Date Added\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"No\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"sortOrderUpdateFromOutSide\",\"\",\"\",\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"\",\"\",\"3\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"4\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"email\",\"text\",\"textarea\",\"select\",\"select\",\"text\",\"select\"],\"fieldHeading\":[\"Name\",\"Tagline\",\"Email\",\"Mobile\",\"Address\",\"City Id\",\"State Id\",\"Sort Order\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"15\"],\"fieldColumn\":[\"6\",\"6\",\"6\",\"6\",\"12\",\"4\",\"4\",\"4\",\"12\"],\"fieldColumnName\":[\"name\",\"tagline\",\"email\",\"mobile\",\"address\",\"cityId\",\"stateId\",\"sortOrder\",\"status\"],\"fieldName\":[\"name\",\"tagline\",\"email\",\"mobile\",\"address\",\"cityId\",\"stateId\",\"sortOrder\",\"status\"],\"fieldId\":[\"name\",\"tagline\",\"email\",\"mobile\",\"address\",\"cityId\",\"stateId\",\"sortOrder\",\"status\"],\"fieldClass\":[\"name\",\"tagline\",\"email\",\"mobile\",\"address\",\"cityId\",\"stateId\",\"sortOrder\",\"status\"],\"fieldPlaceHolder\":[\"Name\",\"Tagline\",\"Email\",\"Mobile\",\"Address\",\"City Id\",\"State Id\",\"Sort Order\",\"Status\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"0\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"0\",\"0\",\"1\",\"0\",\"1\",\"1\",\"1\",\"0\"],\"fieldValidation\":[\"required\",\"\",\"\",\"required|numeric|digits:10\",\"\",\"required\",\"required\",\"required|numeric\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\",\"\",\"cities\",\"states\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\",\"\",\"cityId\",\"stateId\",\"null\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\",\"\",\"heading\",\"heading\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"name\",\"tagline\",\"email\",\"mobile\",\"address\",\"cityId\",\"stateId\",\"sortOrder\",\"status\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"]}', '30', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '{{$controller::moduleShortCode(0)}}', '', 'No', '', '', 'No', '', '', 1, 1, '2024-02-15 08:41:32'),
(17, 'Cities', 'cities', 'cityId', 'Cities', '{\"moduleId\":\"17\",\"tableName\":\"cities\",\"columnName\":[\"cityId\",\"heading\",\"stateId\",\"countryId\",\"status\"],\"columnCustomName\":[\"City Id\",\"Heading\",\"State Id\",\"Country Id\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"Yes\",\"Yes\",\"No\"],\"foreignTable\":[\"\",\"\",\"states\",\"countries\",\"\"],\"foreignColumn\":[\"\",\"\",\"heading\",\"heading\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"stateId\",\"countryId\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"5\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"select\",\"select\",\"select\"],\"fieldHeading\":[\"Heading\",\"State Id\",\"Country Id\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"4\"],\"fieldColumn\":[\"6\",\"6\",\"6\",\"6\"],\"fieldColumnName\":[\"heading\",\"stateId\",\"countryId\",\"status\"],\"fieldName\":[\"heading\",\"stateId\",\"countryId\",\"status\"],\"fieldId\":[\"heading\",\"stateId\",\"countryId\",\"status\"],\"fieldClass\":[\"heading\",\"stateId\",\"countryId\",\"status\"],\"fieldPlaceHolder\":[\"Heading\",\"State Id\",\"Country Id\",\"Status\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"1\",\"0\"],\"fieldValidation\":[\"required\",\"required\",\"required\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"states\",\"countries\",\"\"],\"fieldSelectIdColumn\":[\"\",\"stateId\",\"countryId\",\"null\"],\"fieldSelectMainColumn\":[\"\",\"heading\",\"heading\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"heading\",\"stateId\",\"countryId\",\"status\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\"]}', '2', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '{{$controller::moduleShortCode(0)}}', '', 'No', '', '', 'No', '', '', 1, 1, '2024-02-15 08:47:35'),
(18, 'Taxes', 'taxes', 'taxId', 'Taxes', '{\"moduleId\":\"18\",\"tableName\":\"taxes\",\"columnName\":[\"taxId\",\"heading\",\"percent\",\"sortOrder\",\"status\"],\"columnCustomName\":[\"Tax Id\",\"Heading\",\"Percent\",\"Sort Order\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"sortOrderUpdateFromOutSide\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"5\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"text\",\"select\"],\"fieldHeading\":[\"Heading\",\"Percent\",\"Sort Order\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"4\"],\"fieldColumn\":[\"6\",\"6\",\"6\",\"6\"],\"fieldColumnName\":[\"heading\",\"percent\",\"sortOrder\",\"status\"],\"fieldName\":[\"heading\",\"percent\",\"sortOrder\",\"status\"],\"fieldId\":[\"heading\",\"percent\",\"sortOrder\",\"status\"],\"fieldClass\":[\"heading\",\"percent\",\"sortOrder\",\"status\"],\"fieldPlaceHolder\":[\"Heading\",\"Percent\",\"Sort Order\",\"Status\"],\"fieldDefaultValue\":[\"\",\"0\",\"0\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"1\",\"0\"],\"fieldValidation\":[\"required\",\"required\",\"required\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\"]}', '2', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '{{$controller::moduleShortCode(0)}}', '', 'No', '', '', 'No', '', '', 1, 1, '2024-02-24 06:10:59'),
(19, 'Units', 'units', 'unitId', 'Units', '{\"moduleId\":\"19\",\"tableName\":\"units\",\"columnName\":[\"unitId\",\"heading\",\"unit\",\"sortOrder\",\"status\"],\"columnCustomName\":[\"Unit Id\",\"Heading\",\"Unit\",\"Sort Order\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"sortOrderUpdateFromOutSide\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"5\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"text\",\"select\"],\"fieldHeading\":[\"Heading\",\"Unit\",\"Sort Order\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"4\"],\"fieldColumn\":[\"6\",\"6\",\"6\",\"6\"],\"fieldColumnName\":[\"heading\",\"unit\",\"sortOrder\",\"status\"],\"fieldName\":[\"heading\",\"unit\",\"sortOrder\",\"status\"],\"fieldId\":[\"heading\",\"unit\",\"sortOrder\",\"status\"],\"fieldClass\":[\"heading\",\"unit\",\"sortOrder\",\"status\"],\"fieldPlaceHolder\":[\"Heading\",\"Unit\",\"Sort Order\",\"Status\"],\"fieldDefaultValue\":[\"\",\"\",\"0\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"1\",\"0\"],\"fieldValidation\":[\"required\",\"required\",\"required|numeric\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\"]}', '2', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '{{$controller::moduleShortCode(0)}}', '', 'No', '', '', 'No', '', '', 1, 1, '2024-02-24 06:23:43'),
(20, 'Vendors', 'vendors', 'vendorId', 'Vendors', '{\"moduleId\":\"20\",\"tableName\":\"vendors\",\"columnName\":[\"vendorId\",\"heading\",\"mobile\",\"email\",\"gstNumber\",\"openingBalance\",\"cityId\",\"stateId\",\"countryId\",\"image\",\"storeId\",\"userId\",\"sorftDelete\",\"updatedBy\",\"insertedBy\",\"dateUpdated\",\"dateAdded\",\"status\"],\"columnCustomName\":[\"Vendor Id\",\"Heading\",\"Mobile\",\"Email\",\"Gst Number\",\"Opening Balance\",\"City Id\",\"State Id\",\"Country Id\",\"Image\",\"Store Id\",\"User Id\",\"Sorft Delete\",\"Updated By\",\"Inserted By\",\"Date Updated\",\"Date Added\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"cities\",\"\",\"\",\"\",\"stores\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"heading\",\"\",\"\",\"\",\"name\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"cityId\",\"\",\"\",\"\",\"storeId\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"No\",\"No\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"image\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"3\",\"\",\"\",\"\",\"\",\"4\",\"\",\"\",\"2\",\"5\",\"\",\"\",\"\",\"\",\"\",\"6\",\"7\"],\"tableColumnMerge\":[\"\",\"\",\"heading\",\"\",\"heading\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"email\",\"text\",\"select\",\"select\",\"select\",\"file\",\"select\",\"text\"],\"fieldHeading\":[\"Heading\",\"Mobile\",\"Email\",\"Opening Balance\",\"City Id\",\"State Id\",\"Country Id\",\"Image\",\"Status\",\"GST Number\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"8\",\"10\",\"9\",\"7\"],\"fieldColumn\":[\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"12\",\"4\",\"4\"],\"fieldColumnName\":[\"heading\",\"mobile\",\"email\",\"openingBalance\",\"cityId\",\"stateId\",\"countryId\",\"image\",\"status\",\"gstNumber\"],\"fieldName\":[\"heading\",\"mobile\",\"email\",\"openingBalance\",\"cityId\",\"stateId\",\"countryId\",\"image\",\"status\",\"gstNumber\"],\"fieldId\":[\"heading\",\"mobile\",\"email\",\"openingBalance\",\"cityId\",\"stateId\",\"countryId\",\"image\",\"status\",\"gstNumber\"],\"fieldClass\":[\"heading\",\"mobile\",\"email\",\"openingBalance\",\"cityId\",\"stateId\",\"countryId\",\"image\",\"status\",\"gstNumber\"],\"fieldPlaceHolder\":[\"Heading\",\"Mobile\",\"Email\",\"Opening Balance\",\"City Id\",\"State Id\",\"Country Id\",\"Image\",\"Status\",\"Gst Number\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"0\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"0\",\"1\",\"1\",\"1\",\"0\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"required\",\"required|numeric|digits:10\",\"\",\"required|numeric\",\"required\",\"required\",\"\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"Enable,Disable\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"1,0\",\"\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\",\"cities\",\"states\",\"countries\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\",\"cityId\",\"stateId\",\"countryId\",\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\",\"heading\",\"heading\",\"heading\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"heading\",\"mobile\",\"email\",\"openingBalance\",\"cityId\",\"stateId\",\"countryId\",\"image\",\"status\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"]}', '30', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '{{$controller::moduleShortCode(0)}}', '', 'No', '', '', 'No', '', '', 1, 1, '2024-02-24 06:30:04'),
(21, 'Customers', 'customers', 'customerId', 'Customers', '{\"moduleId\":\"21\",\"tableName\":\"customers\",\"columnName\":[\"customerId\",\"name\",\"mobile\",\"email\",\"openingBalance\",\"walletBalance\",\"rewardPoints\",\"customerGroupId\",\"cityId\",\"stateId\",\"countryId\",\"gstNo\",\"firmName\",\"firmAddress\",\"storeId\",\"userId\",\"insertedBy\",\"updatedBy\",\"dateUpdated\",\"softDelete\",\"status\",\"dateAdded\"],\"columnCustomName\":[\"Customer Id\",\"Name\",\"Mobile\",\"Email\",\"Opening Balance\",\"Wallet Balance\",\"Reward Points\",\"Customer Group Id\",\"City Id\",\"State Id\",\"Country Id\",\"Gst No\",\"Firm Name\",\"Firm Address\",\"Store Id\",\"User Id\",\"Inserted By\",\"Updated By\",\"Date Updated\",\"Soft Delete\",\"Status\",\"Date Added\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"cities\",\"\",\"\",\"\",\"\",\"\",\"stores\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"heading\",\"\",\"\",\"\",\"\",\"\",\"name\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"cityId\",\"\",\"\",\"\",\"\",\"\",\"storeId\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"status\",\"\"],\"columnSortOrder\":[\"1\",\"2\",\"\",\"\",\"\",\"\",\"\",\"\",\"3\",\"\",\"\",\"\",\"\",\"\",\"4\",\"\",\"\",\"\",\"\",\"\",\"5\",\"6\"],\"tableColumnMerge\":[\"\",\"\",\"name\",\"name\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"email\",\"text\",\"text\",\"text\",\"select\",\"select\",\"select\",\"select\",\"select\",\"text\",\"text\",\"text\"],\"fieldHeading\":[\"Name\",\"Mobile\",\"Email\",\"Opening Balance\",\"Wallet Balance\",\"Reward Points\",\"Customer Group Id\",\"City Id\",\"State Id\",\"Country Id\",\"Status\",\"Gst Number\",\"Firm Address\",\"Firm Name\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"17\",\"11\",\"13\",\"12\"],\"fieldColumn\":[\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"3\",\"3\",\"3\",\"3\",\"12\",\"6\",\"12\",\"6\"],\"fieldColumnName\":[\"name\",\"mobile\",\"email\",\"openingBalance\",\"walletBalance\",\"rewardPoints\",\"customerGroupId\",\"cityId\",\"stateId\",\"countryId\",\"status\",\"gstNo\",\"firmAddress\",\"firmName\"],\"fieldName\":[\"name\",\"mobile\",\"email\",\"openingBalance\",\"walletBalance\",\"rewardPoints\",\"customerGroupId\",\"cityId\",\"stateId\",\"countryId\",\"status\",\"gstNo\",\"firmAddress\",\"firmName\"],\"fieldId\":[\"name\",\"mobile\",\"email\",\"openingBalance\",\"walletBalance\",\"rewardPoints\",\"customerGroupId\",\"cityId\",\"stateId\",\"countryId\",\"status\",\"gstNo\",\"firmAddress\",\"firmName\"],\"fieldClass\":[\"name\",\"mobile\",\"email\",\"openingBalance uoycoontir\",\"walletBalance\",\"rewardPoints\",\"customerGroupId\",\"cityId\",\"stateId\",\"countryId\",\"status\",\"gstNo ldqspskkad\",\"firmAddress\",\"firmName\"],\"fieldPlaceHolder\":[\"Name\",\"Mobile\",\"Email\",\"Opening Balance\",\"Wallet Balance\",\"Reward Points\",\"Customer Group Id\",\"City Id\",\"State Id\",\"Country Id\",\"Status\",\"Gst No\",\"Firm Address\",\"Firm Name\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"0\",\"0\",\"0\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"readonly\",\"readonly\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"0\",\"1\",\"1\",\"1\",\"0\",\"1\",\"1\",\"1\",\"0\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"required\",\"required|digits:10|numeric|unique:customers,mobile\",\"unique:customers,email\",\"required|numeric\",\"required|numeric\",\"numeric|required\",\"\",\"required\",\"required\",\"required\",\"\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"removePleaseSelect\",\"\",\"\",\"removePleaseSelect\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute2\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"Enable,Disable\",\"\",\"\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"1,0\",\"\",\"\",\"\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"customer_group\",\"cities\",\"states\",\"countries\",\"\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"customerGroupId\",\"cityId\",\"stateId\",\"countryId\",\"null\",\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"heading\",\"heading\",\"heading\",\"heading\",\"\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"name\",\"mobile\",\"email\",\"walletBalance\",\"rewardPoints\",\"customerGroupId\",\"cityId\",\"stateId\",\"countryId\",\"status\",\"gstNo\",\"firmAddress\",\"firmName\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"]}', '28', 0, 0, 0, 0, 0, '', '', '', '', 'PD9waHANCmlmKGlzc2V0KCRyZXBseVsnaW5zZXJ0X2lkJ10pIEFORCAkcmVwbHlbJ2luc2VydF9pZCddID4gMCl7DQoJREI6Omluc2VydCgiSU5TRVJUIElOVE8gY3VzdG9tZXJfbGVkZ2VyX3dhbGxldCBTRVQgDQoJCWN1c3RvbWVySWQ9JyIuJHJlcGx5WydpbnNlcnRfaWQnXS4iJywNCgkJYW1vdW50PSciLiRhcnJheVsnb3BlbmluZ0JhbGFuY2UnXS4iJywNCgkJYHR5cGVgPSdvcGVuaW5nJywNCgkJc3RvcmVJZD0nIi5TZXNzaW9uOjpnZXQoInN0b3JlSWQiKS4iJywNCgkJdXNlcklkPSciLlNlc3Npb246OmdldCgidXNlcklkIikuIiciKTsNCn0NCj8+', '', '', '{{$controller::moduleShortCode(21)}}', '', 'No', '', '', 'No', '', '', 1, 1, '2024-02-24 08:31:44'),
(22, 'Manufacturers', 'manufacturers', 'manufacturerId', 'Manufacturers', '{\"moduleId\":\"22\",\"tableName\":\"manufacturers\",\"columnName\":[\"manufacturerId\",\"heading\",\"image\",\"storeId\",\"userId\",\"softDelete\",\"dateUpdated\",\"dateAdded\",\"status\"],\"columnCustomName\":[\"Manufacturer Id\",\"Heading\",\"Image\",\"Store Id\",\"User Id\",\"Soft Delete\",\"Date Updated\",\"Date Added\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"stores\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"name\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"storeId\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"Yes\",\"Yes\"],\"type\":[\"\",\"\",\"image\",\"\",\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"3\",\"2\",\"4\",\"\",\"\",\"\",\"6\",\"5\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"file\",\"select\"],\"fieldHeading\":[\"Heading\",\"Image\",\"Status\"],\"fieldSortOrder\":[\"1\",\"3\",\"2\"],\"fieldColumn\":[\"12\",\"12\",\"12\"],\"fieldColumnName\":[\"heading\",\"image\",\"status\"],\"fieldName\":[\"heading\",\"image\",\"status\"],\"fieldId\":[\"heading\",\"image\",\"status\"],\"fieldClass\":[\"heading\",\"image\",\"status\"],\"fieldPlaceHolder\":[\"Heading\",\"Image\",\"Status\"],\"fieldDefaultValue\":[\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"0\",\"0\"],\"fieldValidation\":[\"required\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\"],\"fieldTableColumn\":[\"heading\",\"image\",\"status\"],\"fieldSelectOperator\":[\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\"]}', '30', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '{{$controller::moduleShortCode(0)}}', '', 'No', '', '', 'No', '', '', 1, 1, '2024-02-24 09:30:45'),
(23, 'Categories', 'categories', 'categoryId', 'Categories', '{\"moduleId\":\"23\",\"tableName\":\"categories\",\"columnName\":[\"categoryId\",\"heading\",\"image\",\"parentId\",\"storeId\",\"userId\",\"updatedBy\",\"insertedBy\",\"dateUpdated\",\"dateAdded\",\"softDelete\",\"status\"],\"columnCustomName\":[\"Category Id\",\"Heading\",\"Image\",\"Parent Id\",\"Store Id\",\"User Id\",\"Updated By\",\"Inserted By\",\"Date Updated\",\"Date Added\",\"Soft Delete\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"categories\",\"stores\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"heading\",\"name\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"categoryId\",\"storeId\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"image\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"3\",\"2\",\"4\",\"5\",\"\",\"\",\"\",\"\",\"\",\"\",\"6\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"file\",\"select\",\"select\"],\"fieldHeading\":[\"Heading\",\"Image\",\"Parent Id\",\"Status\"],\"fieldSortOrder\":[\"1\",\"4\",\"2\",\"3\"],\"fieldColumn\":[\"4\",\"12\",\"4\",\"4\"],\"fieldColumnName\":[\"heading\",\"image\",\"parentId\",\"status\"],\"fieldName\":[\"heading\",\"image\",\"parentId\",\"status\"],\"fieldId\":[\"heading\",\"image\",\"parentId\",\"status\"],\"fieldClass\":[\"heading\",\"image\",\"parentId\",\"status\"],\"fieldPlaceHolder\":[\"Heading\",\"Image\",\"Parent Id\",\"Status\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"required\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\",\"categories\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"categoryId\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"heading\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"heading\",\"image\",\"parentId\",\"status\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\"]}', '30', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '{{$controller::moduleShortCode(0)}}', '', 'No', '', '', 'No', '', '', 1, 2, '2024-02-24 09:42:21'),
(24, 'Products', 'products', 'productId', 'Products', '{\"moduleId\":\"24\",\"tableName\":\"products\",\"columnName\":[\"productId\",\"heading\",\"model\",\"barcode\",\"cost\",\"price\",\"percent\",\"manufacturerId\",\"categoryId\",\"vendorId\",\"unitId\",\"taxId\",\"taxType\",\"hsnCode\",\"quantity\",\"subtract\",\"changePriceDuringBilling\",\"image\",\"relatedImage\",\"showInPos\",\"productType\",\"softDelete\",\"storeId\",\"userId\",\"updatedBy\",\"insertedBy\",\"dateUpdated\",\"status\",\"dateAdded\"],\"columnCustomName\":[\"Product Id\",\"Heading\",\"Model\",\"Barcode\",\"Cost\",\"Price\",\"Percent\",\"Manufacturer Id\",\"Category Id\",\"Vendor Id\",\"Unit Id\",\"Tax Id\",\"Tax Type\",\"Hsn Code\",\"Quantity\",\"Subtract\",\"Change Price During Billing\",\"Image\",\"Related Image\",\"Show In Pos\",\"Product Type\",\"Soft Delete\",\"Store Id\",\"User Id\",\"Updated By\",\"Inserted By\",\"Date Updated\",\"Status\",\"Date Added\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"stores\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"name\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"storeId\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"No\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"image\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"status\",\"\"],\"columnSortOrder\":[\"1\",\"3\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"4\",\"\",\"\",\"2\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"6\",\"7\"],\"tableColumnMerge\":[\"\",\"\",\"heading\",\"heading\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"text\",\"select\",\"select\",\"select\",\"select\",\"select\",\"select\",\"text\",\"select\",\"file\",\"select\",\"select\",\"file\",\"text\",\"text\",\"text\",\"select\",\"select\"],\"fieldHeading\":[\"Heading\",\"Model\",\"Barcode\",\"Manufacturer Id\",\"Category Id\",\"Vendor Id\",\"Unit Id\",\"Tax Id\",\"Tax Type\",\"Quantity\",\"Subtract From Quantity\",\"Image\",\"Show In Pos\",\"Status\",\"Related Image\",\"Cost\",\"Price\",\"HSN Code\",\"Change Price During Billing\",\"Product Type\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"20\",\"14\",\"16\",\"21\",\"4\",\"5\",\"12\",\"15\",\"17\"],\"fieldColumn\":[\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"3\",\"3\",\"3\",\"3\",\"3\",\"6\",\"3\",\"6\",\"6\",\"6\",\"6\",\"3\",\"3\",\"6\"],\"fieldColumnName\":[\"heading\",\"model\",\"barcode\",\"manufacturerId\",\"categoryId\",\"vendorId\",\"unitId\",\"taxId\",\"taxType\",\"quantity\",\"subtract\",\"image\",\"showInPos\",\"status\",\"relatedImage\",\"cost\",\"price\",\"hsnCode\",\"changePriceDuringBilling\",\"\"],\"fieldName\":[\"heading\",\"model\",\"barcode\",\"manufacturerId\",\"categoryId\",\"vendorId\",\"unitId\",\"taxId\",\"taxType\",\"quantity\",\"subtract\",\"image\",\"showInPos\",\"status\",\"relatedImage\",\"cost\",\"price\",\"hsnCode\",\"changePriceDuringBilling\",\"\"],\"fieldId\":[\"heading\",\"model\",\"barcode\",\"manufacturerId\",\"categoryId\",\"vendorId\",\"unitId\",\"taxId\",\"taxType\",\"quantity\",\"subtract\",\"image\",\"showInPos\",\"status\",\"relatedImage\",\"cost\",\"price\",\"hsnCode\",\"changePriceDuringBilling\",\"productType\"],\"fieldClass\":[\"heading\",\"model\",\"barcode\",\"manufacturerId\",\"categoryId\",\"vendorId\",\"unitId\",\"taxId\",\"taxType\",\"quantity\",\"subtract\",\"image\",\"showInPos\",\"status\",\"relatedImage\",\"cost\",\"price\",\"hsnCode\",\"changePriceDuringBilling\",\"productType\"],\"fieldPlaceHolder\":[\"Heading\",\"Model\",\"Barcode\",\"Manufacturer Id\",\"Category Id\",\"Vendor Id\",\"Unit Id\",\"Tax Id\",\"Tax Type\",\"Quantity\",\"Subtract\",\"Image\",\"Show In Pos\",\"Status\",\"Related Image\",\"Cost\",\"Price\",\"Hsn Code\",\"Change Price During Billing\",\"Product Type\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"0\",\"\",\"\",\"\",\"\",\"\",\"0\",\"0\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"multiple\",\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"1\",\"0\",\"0\",\"0\",\"0\",\"0\",\"1\",\"1\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"required\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"required|numeric\",\"\",\"\",\"\",\"\",\"\",\"required|numeric\",\"required|numeric\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"hideThisFieldFrontend\",\"\",\"\",\"hideThisFieldFrontend\",\"\",\"\",\"\",\"\",\"removePleaseSelect\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"Exclusive,Inclusive\",\"\",\"Yes,No\",\"\",\"Yes,No\",\"Enable,Disable\",\"\",\"\",\"\",\"\",\"No,Yes\",\"Product,Hotel\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"Exclusive,Inclusive\",\"\",\"Yes,No\",\"\",\"1,0\",\"1,0\",\"\",\"\",\"\",\"\",\"0,1\",\"Product,Hotel\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"manufacturers\",\"categories\",\"vendors\",\"units\",\"taxes\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"manufacturerId\",\"categoryId\",\"vendorId\",\"unitId\",\"taxId\",\"null\",\"null\",\"null\",\"\",\"null\",\"null\",\"\",\"null\",\"\",\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"heading\",\"heading\",\"heading\",\"heading,unit\",\"heading,percent\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"heading\",\"model\",\"barcode\",\"manufacturerId\",\"categoryId\",\"vendorId\",\"unitId\",\"taxId\",\"taxType\",\"quantity\",\"subtract\",\"image\",\"showInPos\",\"status\",\"relatedImage\",\"cost\",\"price\",\"hsnCode\",\"changePriceDuringBilling\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"]}', '30', 0, 0, 0, 0, 0, 'Add Product', 'Copy Products', '', 'PD9waHANCmlmKCRhcnJheVsnYmFyY29kZSddIT0nJyl7DQokYXJyYXlbJ2JhcmNvZGVUeXBlJ10gPSAndXNlckdlbmVyYXRlZCc7DQovKiRnZXRNYXggPSBEQjo6c2VsZWN0KCJTRUxFQ1QgTUFYKGJhcmNvZGUpIGFzIG1heCBGUk9NIGBwcm9kdWN0c2AgV0hFUkUgYmFyY29kZVR5cGU9J3VzZXJHZW5lcmF0ZWQnIEFORCBzdG9yZUlkPSciLlNlc3Npb246OmdldCgnc3RvcmVJZCcpLiInIik7DQppZihlbXB0eSgkZ2V0TWF4WzBdKSl7DQokYXJyYXlbJ2JhcmNvZGUnXSA9ICRhcnJheVsnYmFyY29kZSddOw0KfWVsc2V7DQokZ2V0TWF4ID0gJHRoaXMtPmFycmF5Q29udmVydCgkZ2V0TWF4KTsNCiRhcnJheVsnYmFyY29kZSddID0gJGdldE1heFswXVsnbWF4J10rMTsNCn0qLw0KfWVsc2V7DQokYXJyYXlbJ2JhcmNvZGVUeXBlJ10gPSAnc3lzdGVtR2VuZXJhdGVkJzsNCiRnZXRNYXggPSBEQjo6c2VsZWN0KCJTRUxFQ1QgTUFYKGJhcmNvZGUpIGFzIG1heCBGUk9NIGBwcm9kdWN0c2AgV0hFUkUgYmFyY29kZVR5cGU9J3N5c3RlbUdlbmVyYXRlZCcgQU5EIHN0b3JlSWQ9JyIuU2Vzc2lvbjo6Z2V0KCdzdG9yZUlkJykuIiciKTsNCmlmKGVtcHR5KCRnZXRNYXhbMF0pKXsNCiRhcnJheVsnYmFyY29kZSddID0gJHNldHRpbmdzWydzdGFydEJhcmNvZGVGcm9tJ107DQp9ZWxzZXsNCiRnZXRNYXggPSAkdGhpcy0+YXJyYXlDb252ZXJ0KCRnZXRNYXgpOw0KJGFycmF5WydiYXJjb2RlJ10gPSAkZ2V0TWF4WzBdWydtYXgnXSsxOw0KfQ0KfQ0KPz4=', '', '', '', '{{$controller::moduleShortCode(24)}}', '', 'No', '', '', 'Yes', 'model,quantity,updatedBy,insertedBy,dateUpdated,dateAdded', 'barcode', 1, 2, '2024-02-24 09:47:23');
INSERT INTO `modules` (`moduleId`, `moduleName`, `moduleTable`, `moduleFirstColumn`, `pageHeading`, `moduleData`, `parentMenu`, `sortOrder`, `hideAdd`, `hideEdit`, `hideDelete`, `hideAction`, `addButtonText`, `copyButtonText`, `extraButtons`, `submitCodeBefore`, `submitCodeAfter`, `extraActionOnDeleteButton`, `additionalText`, `shortCode`, `frontendRedirectPage`, `sendMailToAdmin`, `filedsToReplaceOnMail`, `filters`, `copyTable`, `dataOfColumnToSkip`, `autoIncreamentColumn`, `status`, `insertedBy`, `dateAdded`) VALUES
(25, 'StoreSettings', 'store_settings', 'storeSettingId', 'Store Settings', '{\"moduleId\":\"25\",\"tableName\":\"store_settings\",\"columnName\":[\"storeSettingId\",\"websiteName\",\"websiteLogo\",\"adminEmail\",\"contactMobile\",\"contactEmail\",\"address\",\"mailJetUsername\",\"mailJetPassword\",\"mailJetEmail\",\"mailJetName\",\"mergeLogin\",\"databaseBackup\",\"fieldsToSendValueOnMail\",\"filedsToReplaceOnMail\",\"filedsToUnsetOnMails\",\"hideAddEditDeleteIfNoStoreSelected\",\"enableRewardPoints\",\"rewardOnDiscountedProduct\",\"minimumRewardPointsToReedem\",\"rewardPercentOnProduct\",\"walkInCustomerId\",\"invoicePrefix\",\"storeId\",\"userId\",\"updatedBy\",\"insertedBy\",\"status\",\"cartAppendStyle\",\"orderTypeRequired\",\"enableOrderType\",\"enableTaxes\",\"showStoreInfomation\",\"showExtraInformtionPopup\",\"showWalletBalance\",\"showRewardBalance\",\"showAddCustomerBottom\",\"salesPersonRequired\",\"showSalesPerson\",\"showQuickAdd\",\"restaurant\",\"showModal\",\"showBarcode\",\"showImage\",\"showManufacturers\",\"showCategories\",\"storeTerms\",\"invoiceHeaderText\",\"invoiceFooterText\",\"defaultInvoiceTemplate\",\"defaultPOTemplate\",\"defaultKotTemplate\",\"defaultOrderStatus\",\"cancelledOrderStatus\",\"runningOrderStatus\",\"deductFromStock\",\"startBarcodeFrom\",\"storeClosingDate\",\"maxBills\",\"requiredOtpForRewardReedem\",\"minRewardPointsToSendOtp\",\"onProductCllickIncreasePosQuantity\",\"enableLightBox\",\"fetchCostInPurchase\",\"enableSeatingTable\",\"enableCustomerReminder\",\"enableHotelRoomMode\",\"checkInTime\",\"printKotAndBillBoth\",\"showGstBreakups\",\"defaultTaxId\",\"defaultTaxType\"],\"columnCustomName\":[\"Store Setting Id\",\"Website Name\",\"Website Logo\",\"Admin Email\",\"Contact Mobile\",\"Contact Email\",\"Address\",\"Mail Jet Username\",\"Mail Jet Password\",\"Mail Jet Email\",\"Mail Jet Name\",\"Merge Login\",\"Database Backup\",\"Fields To Send Value On Mail\",\"Fileds To Replace On Mail\",\"Fileds To Unset On Mails\",\"Hide Add Edit Delete If No Store Selected\",\"Enable Reward Points\",\"Reward On Discounted Product\",\"Minimum Reward Points To Reedem\",\"Reward Percent On Product\",\"Walk In Customer Id\",\"Invoice Prefix\",\"Store Id\",\"User Id\",\"Updated By\",\"Inserted By\",\"Status\",\"Cart Append Style\",\"Order Type Required\",\"Enable Order Type\",\"Enable Taxes\",\"Show Store Infomation\",\"Show Extra Informtion Popup\",\"Show Wallet Balance\",\"Show Reward Balance\",\"Show Add Customer Bottom\",\"Sales Person Required\",\"Show Sales Person\",\"Show Quick Add\",\"Restaurant\",\"Show Modal\",\"Show Barcode\",\"Show Image\",\"Show Manufacturers\",\"Show Categories\",\"Store Terms\",\"Invoice Header Text\",\"Invoice Footer Text\",\"Default Invoice Template\",\"Default P O Template\",\"Default Kot Template\",\"Default Order Status\",\"Cancelled Order Status\",\"Running Order Status\",\"Deduct From Stock\",\"Start Barcode From\",\"Store Closing Date\",\"Max Bills\",\"Required Otp For Reward Reedem\",\"Min Reward Points To Send Otp\",\"On Product Cllick Increase Pos Quantity\",\"Enable Light Box\",\"Fetch Cost In Purchase\",\"Enable Seating Table\",\"Enable Customer Reminder\",\"Enable Hotel Room Mode\",\"Check In Time\",\"Print Kot And Bill Both\",\"Show Gst Breakups\",\"Default Tax Id\",\"Default Tax Type\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"type\":[\"\",\"\",\"image\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"status\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"columnSortOrder\":[\"1\",\"3\",\"2\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"file\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"select\",\"select\",\"select\",\"text\",\"text\",\"select\",\"text\",\"select\",\"select\",\"select\",\"select\",\"select\",\"select\",\"select\",\"select\",\"select\",\"select\",\"select\",\"select\",\"select\",\"select\",\"select\",\"select\",\"select\",\"select\",\"wysiwyg\",\"wysiwyg\",\"wysiwyg\",\"select\",\"select\",\"select\",\"select\",\"select\",\"select\",\"text\",\"text\",\"text\",\"select\",\"text\",\"select\",\"select\",\"select\",\"select\",\"select\",\"select\",\"select\"],\"fieldHeading\":[\"Website Name\",\"Website Logo\",\"Admin Email\",\"Contact Mobile\",\"Contact Email\",\"Address\",\"Mail Jet Username\",\"Mail Jet Password\",\"Mailjet Email\",\"Mailjet Name\",\"Database Backup\",\"Enable Reward Points\",\"Reward On Discounted Product\",\"Minimum Reward Points To Reedem\",\"Reward Percent On Product\",\"Walk In Customer Id\",\"Invoice Prefix\",\"Cart Append Style\",\"Order Type Required\",\"Enable Order Type\",\"Enable Taxes\",\"Show Store Infomation\",\"Show Extra Informtion Popup\",\"Show Wallet Balance\",\"Show Reward Balance\",\"Show Add Customer Bottom\",\"Sales Person Required\",\"Show Sales Person\",\"Show Quick Add\",\"Restaurant\",\"Show Modal\",\"Show Barcode\",\"Show Image\",\"Show Manufacturers\",\"Show Categories\",\"Store Terms\",\"Invoice Header Text\",\"Invoice Footer Text\",\"Default Invoice Template\",\"Default Kot Template\",\"Default Order Status\",\"Cancelled Order Status\",\"Running Order Status\",\"Deduct From Stock\",\"Start Barcode From\",\"Store Closing Date (Comma Seprated)\",\"Max Bills\",\"Required Otp For Reward Reedem\",\"Min Reward Points To Send Otp\",\"On Product Cllick Increase Pos Quantity\",\"Enable Light Box\",\"Fetch Cost In Purchase\",\"Seating Tables Show\",\"Enable Customer Reminder \",\"Print Kot And Bill Both\",\"Enable Hotel Room Mode\"],\"fieldSortOrder\":[\"1\",\"100\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"12\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"28\",\"29\",\"30\",\"31\",\"32\",\"33\",\"34\",\"35\",\"36\",\"37\",\"38\",\"39\",\"40\",\"41\",\"42\",\"43\",\"44\",\"45\",\"95\",\"96\",\"97\",\"49\",\"50\",\"51\",\"52\",\"53\",\"54\",\"55\",\"56\",\"57\",\"58\",\"59\",\"60\",\"61\",\"62\",\"63\",\"64\",\"65\",\"66\"],\"fieldColumn\":[\"4\",\"12\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"12\",\"12\",\"12\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"3\",\"3\",\"3\",\"3\",\"4\",\"4\",\"4\"],\"fieldColumnName\":[\"websiteName\",\"websiteLogo\",\"adminEmail\",\"contactMobile\",\"contactEmail\",\"address\",\"mailJetUsername\",\"mailJetPassword\",\"mailjetEmail\",\"mailjetName\",\"databaseBackup\",\"enableRewardPoints\",\"rewardOnDiscountedProduct\",\"minimumRewardPointsToReedem\",\"rewardPercentOnProduct\",\"walkInCustomerId\",\"invoicePrefix\",\"cartAppendStyle\",\"orderTypeRequired\",\"enableOrderType\",\"enableTaxes\",\"showStoreInfomation\",\"showExtraInformtionPopup\",\"showWalletBalance\",\"showRewardBalance\",\"showAddCustomerBottom\",\"salesPersonRequired\",\"showSalesPerson\",\"showQuickAdd\",\"restaurant\",\"showModal\",\"showBarcode\",\"showImage\",\"showManufacturers\",\"showCategories\",\"storeTerms\",\"invoiceHeaderText\",\"invoiceFooterText\",\"defaultInvoiceTemplate\",\"defaultKotTemplate\",\"defaultOrderStatus\",\"cancelledOrderStatus\",\"runningOrderStatus\",\"deductFromStock\",\"startBarcodeFrom\",\"storeClosingDate\",\"maxBills\",\"requiredOtpForRewardReedem\",\"minRewardPointsToSendOtp\",\"onProductCllickIncreasePosQuantity\",\"enableLightBox\",\"fetchCostInPurchase\",\"enableSeatingTable\",\"enableCustomerReminder\",\"printKotAndBillBoth\",\"enableHotelRoomMode\"],\"fieldName\":[\"websiteName\",\"websiteLogo\",\"adminEmail\",\"contactMobile\",\"contactEmail\",\"address\",\"mailJetUsername\",\"mailJetPassword\",\"mailjetEmail\",\"mailjetName\",\"databaseBackup\",\"enableRewardPoints\",\"rewardOnDiscountedProduct\",\"minimumRewardPointsToReedem\",\"rewardPercentOnProduct\",\"walkInCustomerId\",\"invoicePrefix\",\"cartAppendStyle\",\"orderTypeRequired\",\"enableOrderType\",\"enableTaxes\",\"showStoreInfomation\",\"showExtraInformtionPopup\",\"showWalletBalance\",\"showRewardBalance\",\"showAddCustomerBottom\",\"salesPersonRequired\",\"showSalesPerson\",\"showQuickAdd\",\"restaurant\",\"showModal\",\"showBarcode\",\"showImage\",\"showManufacturers\",\"showCategories\",\"storeTerms\",\"invoiceHeaderText\",\"invoiceFooterText\",\"defaultInvoiceTemplate\",\"defaultKotTemplate\",\"defaultOrderStatus\",\"cancelledOrderStatus\",\"runningOrderStatus\",\"deductFromStock\",\"startBarcodeFrom\",\"storeClosingDate\",\"maxBills\",\"requiredOtpForRewardReedem\",\"minRewardPointsToSendOtp\",\"onProductCllickIncreasePosQuantity\",\"enableLightBox\",\"fetchCostInPurchase\",\"enableSeatingTable\",\"enableCustomerReminder\",\"printKotAndBillBoth\",\"enableHotelRoomMode\"],\"fieldId\":[\"websiteName\",\"websiteLogo\",\"adminEmail\",\"contactMobile\",\"contactEmail\",\"address\",\"mailJetUsername\",\"mailJetPassword\",\"mailjetEmail\",\"mailjetName\",\"databaseBackup\",\"enableRewardPoints\",\"rewardOnDiscountedProduct\",\"minimumRewardPointsToReedem\",\"rewardPercentOnProduct\",\"walkInCustomerId\",\"invoicePrefix\",\"cartAppendStyle\",\"orderTypeRequired\",\"enableOrderType\",\"enableTaxes\",\"showStoreInfomation\",\"showExtraInformtionPopup\",\"showWalletBalance\",\"showRewardBalance\",\"showAddCustomerBottom\",\"salesPersonRequired\",\"showSalesPerson\",\"showQuickAdd\",\"restaurant\",\"showModal\",\"showBarcode\",\"showImage\",\"showManufacturers\",\"showCategories\",\"storeTerms\",\"invoiceHeaderText\",\"invoiceFooterText\",\"defaultInvoiceTemplate\",\"defaultKotTemplate\",\"defaultOrderStatus\",\"cancelledOrderStatus\",\"runningOrderStatus\",\"deductFromStock\",\"startBarcodeFrom\",\"storeClosingDate\",\"maxBills\",\"requiredOtpForRewardReedem\",\"minRewardPointsToSendOtp\",\"onProductCllickIncreasePosQuantity\",\"enableLightBox\",\"fetchCostInPurchase\",\"enableSeatingTable\",\"enableCustomerReminder\",\"printKotAndBillBoth\",\"enableHotelRoomMode\"],\"fieldClass\":[\"websiteName\",\"websiteLogo\",\"adminEmail\",\"contactMobile\",\"contactEmail\",\"address\",\"mailJetUsername\",\"mailJetPassword\",\"mailjetEmail\",\"mailjetName\",\"databaseBackup\",\"enableRewardPoints\",\"rewardOnDiscountedProduct\",\"minimumRewardPointsToReedem\",\"rewardPercentOnProduct\",\"walkInCustomerId\",\"invoicePrefix\",\"cartAppendStyle\",\"orderTypeRequired\",\"enableOrderType\",\"enableTaxes\",\"showStoreInfomation\",\"showExtraInformtionPopup\",\"showWalletBalance\",\"showRewardBalance\",\"showAddCustomerBottom\",\"salesPersonRequired\",\"showSalesPerson\",\"showQuickAdd\",\"restaurant\",\"showModal\",\"showBarcode\",\"showImage\",\"showManufacturers\",\"showCategories\",\"storeTerms\",\"invoiceHeaderText\",\"invoiceFooterText\",\"defaultInvoiceTemplate\",\"defaultKotTemplate\",\"defaultOrderStatus\",\"cancelledOrderStatus\",\"runningOrderStatus\",\"deductFromStock\",\"startBarcodeFrom\",\"storeClosingDate\",\"maxBills\",\"requiredOtpForRewardReedem\",\"minRewardPointsToSendOtp\",\"onProductCllickIncreasePosQuantity\",\"enableLightBox\",\"fetchCostInPurchase\",\"enableSeatingTable\",\"enableCustomerReminder\",\"printKotAndBillBoth\",\"enableHotelRoomMode\"],\"fieldPlaceHolder\":[\"Website Name\",\"Website Logo\",\"Admin Email\",\"Contact Mobile\",\"Contact Email\",\"Address\",\"Mail Jet Username\",\"Mail Jet Password\",\"Mailjet Email\",\"Mailjet Name\",\"Database Backup\",\"Enable Reward Points\",\"Reward On Discounted Product\",\"Minimum Reward Points To Reedem\",\"Reward Percent On Product\",\"Walk In Customer Id\",\"Invoice Prefix\",\"Cart Append Style\",\"Order Type Required\",\"Enable Order Type\",\"Enable Taxes\",\"Show Store Infomation\",\"Show Extra Informtion Popup\",\"Show Wallet Balance\",\"Show Reward Balance\",\"Show Add Customer Bottom\",\"Sales Person Required\",\"Show Sales Person\",\"Show Quick Add\",\"Restaurant\",\"Show Modal\",\"Show Barcode\",\"Show Image\",\"Show Manufacturers\",\"Show Categories\",\"Store Terms\",\"Invoice Header Text\",\"Invoice Footer Text\",\"Default Invoice Template\",\"Default Kot Template\",\"Default Order Status\",\"Cancelled Order Status\",\"Running Order Status\",\"Deduct From Stock\",\"Start Barcode From\",\"2024-04-13,2024-04-20,2024-04-27\",\"Max Bills\",\"Required Otp For Reward Reedem\",\"Min Reward Points To Send Otp\",\"On Product Cllick Increase Pos Quantity\",\"Enable Light Box\",\"Fetch Cost In Purchase\",\"Enable Seating Table\",\"Enable Customer Reminder\",\"Print Kot And Bill Both\",\"Enable Hotel Room Mode\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"0\",\"\",\"0\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute2\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"showOnlyToSuperAdmin\",\"showOnlyToSuperAdmin\",\"showOnlyToSuperAdmin\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"Yes,No\",\"Yes,No\",\"No,Yes\",\"\",\"\",\"\",\"\",\"Append,Prepend\",\"Yes,No\",\"Yes,No\",\"Yes,No\",\"Yes,No\",\"Yes,No\",\"Yes,No\",\"Yes,No\",\"Yes,No\",\"Yes,No\",\"Yes,No\",\"Yes,No\",\"Yes,No\",\"Yes,No\",\"Yes,No\",\"Yes,No\",\"Yes,No\",\"Yes,No\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"Yes,No\",\"\",\"\",\"\",\"No,Yes\",\"\",\"No,Yes\",\"No,Yes\",\"No,Yes\",\"No,Yes\",\"No,Yes\",\"No,Yes\",\"No,Yes\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"1,0\",\"1,0\",\"No,Yes\",\"\",\"\",\"\",\"\",\"append,prepend\",\"1,0\",\"1,0\",\"1,0\",\"1,0\",\"1,0\",\"1,0\",\"1,0\",\"1,0\",\"1,0\",\"1,0\",\"1,0\",\"1,0\",\"1,0\",\"1,0\",\"1,0\",\"1,0\",\"1,0\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"1,0\",\"\",\"\",\"\",\"0,1\",\"\",\"0,1\",\"0,1\",\"0,1\",\"0,1\",\"0,1\",\"0,1\",\"0,1\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"customers\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"invoice_template\",\"invoice_template\",\"order_status\",\"order_status\",\"order_status\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"null\",\"null\",\"\",\"\",\"\",\"customerId\",\"\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"\",\"null\",\"invoiceTemplateId\",\"invoiceTemplateId\",\"orderStatusId\",\"orderStatusId\",\"orderStatusId\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"name,mobile,email\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"heading\",\"heading\",\"heading\",\"heading\",\"heading\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"contactMobile\",\"contactEmail\",\"address\",\"mailJetUsername\",\"mailJetPassword\",\"mailjetEmail\",\"mailjetName\",\"databaseBackup\",\"enableRewardPoints\",\"rewardOnDiscountedProduct\",\"minimumRewardPointsToReedem\",\"rewardPercentOnProduct\",\"walkInCustomerId\",\"invoicePrefix\",\"cartAppendStyle\",\"orderTypeRequired\",\"enableOrderType\",\"enableTaxes\",\"showStoreInfomation\",\"showExtraInformtionPopup\",\"showWalletBalance\",\"showRewardBalance\",\"showAddCustomerBottom\",\"salesPersonRequired\",\"showSalesPerson\",\"showQuickAdd\",\"restaurant\",\"showModal\",\"showBarcode\",\"showImage\",\"showManufacturers\",\"showCategories\",\"storeTerms\",\"invoiceHeaderText\",\"invoiceFooterText\",\"defaultInvoiceTemplate\",\"defaultKotTemplate\",\"defaultOrderStatus\",\"cancelledOrderStatus\",\"runningOrderStatus\",\"deductFromStock\",\"startBarcodeFrom\",\"storeClosingDate\",\"maxBills\",\"requiredOtpForRewardReedem\",\"minRewardPointsToSendOtp\",\"onProductCllickIncreasePosQuantity\",\"enableLightBox\",\"fetchCostInPurchase\",\"enableSeatingTable\",\"enableCustomerReminder\",\"printKotAndBillBoth\",\"enableHotelRoomMode\"]}', '30', 0, 0, 0, 1, 0, '', '', '', '', '', '', '', '{{$controller::moduleShortCode(25)}}', '', 'No', '', '', 'No', '', '', 1, 1, '2024-02-24 10:14:54'),
(26, 'SeatingTables', 'seating_tables', 'seatingTableId', 'Seating Tables', '{\"moduleId\":\"26\",\"tableName\":\"seating_tables\",\"columnName\":[\"seatingTableId\",\"heading\",\"capacity\",\"storeId\",\"userId\",\"status\",\"dateUpdated\",\"dateAdded\"],\"columnCustomName\":[\"Seating Table Id\",\"Heading\",\"Capacity\",\"Store Id\",\"User Id\",\"Status\",\"Date Updated\",\"Date Added\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"Yes\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"status\",\"\",\"\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"\",\"\",\"4\",\"\",\"5\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"select\"],\"fieldHeading\":[\"Heading\",\"Capacity\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\",\"5\"],\"fieldColumn\":[\"4\",\"4\",\"4\"],\"fieldColumnName\":[\"heading\",\"capacity\",\"status\"],\"fieldName\":[\"heading\",\"capacity\",\"status\"],\"fieldId\":[\"heading\",\"capacity\",\"status\"],\"fieldClass\":[\"heading\",\"capacity\",\"status\"],\"fieldPlaceHolder\":[\"Heading\",\"Capacity\",\"Status\"],\"fieldDefaultValue\":[\"\",\"2\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"0\"],\"fieldValidation\":[\"required\",\"required|numeric\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\"]}', '30', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '{{$controller::moduleShortCode(0)}}', '', 'No', '', '', 'No', '', '', 1, 2, '2024-02-26 14:43:32'),
(27, 'Languages', 'languages', 'languageId', 'Languages', '{\"moduleId\":\"27\",\"tableName\":\"languages\",\"columnName\":[\"languageId\",\"heading\",\"status\"],\"columnCustomName\":[\"Language Id\",\"Heading\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\"],\"type\":[\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"3\"],\"tableColumnMerge\":[\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"select\"],\"fieldHeading\":[\"Heading\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\"],\"fieldColumn\":[\"6\",\"6\"],\"fieldColumnName\":[\"heading\",\"status\"],\"fieldName\":[\"heading\",\"status\"],\"fieldId\":[\"heading\",\"status\"],\"fieldClass\":[\"heading\",\"status\"],\"fieldPlaceHolder\":[\"Heading\",\"Status\"],\"fieldDefaultValue\":[\"\",\"\"],\"fieldAttribute\":[\"\",\"\"],\"fieldRequired\":[\"1\",\"0\"],\"fieldValidation\":[\"required|unique:languages,heading\",\"\"],\"fieldHeadingBefore\":[\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\"],\"fieldOrderBy\":[\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\"],\"fieldCustomFields\":[\"\",\"\"],\"fieldTableColumn\":[\"status\"]}', '2', 0, 0, 0, 0, 0, '', '', '', '', 'PD9waHANCiAgICBEQjo6aW5zZXJ0KCJBTFRFUiBUQUJMRSBtZXNzYWdlcyBBREQgQ09MVU1OIGAiLnN0cnRvbG93ZXIoJGFycmF5WydoZWFkaW5nJ10pLiJgIFZBUkNIQVIoMjU1KSBOVUxMIEFGVEVSIG1lc3NhZ2UiKTsNCj8+', '', '', '{{$controller::moduleShortCode(27)}}', '', 'No', '', '', 'No', '', '', 1, 2, '2024-02-27 04:04:30'),
(28, 'Employees', 'employees', 'employeeId', 'Employees', '{\"moduleId\":\"28\",\"tableName\":\"employees\",\"columnName\":[\"employeeId\",\"name\",\"mobile\",\"email\",\"sallery\",\"dob\",\"storeId\",\"userId\",\"softDelete\",\"updatedBy\",\"insertedBy\",\"dateUpdated\",\"dateAdded\",\"status\"],\"columnCustomName\":[\"Employee Id\",\"Name\",\"Mobile\",\"Email\",\"Sallery\",\"Dob\",\"Store Id\",\"User Id\",\"Soft Delete\",\"Updated By\",\"Inserted By\",\"Date Updated\",\"Date Added\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"7\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"email\",\"text\",\"date\",\"select\"],\"fieldHeading\":[\"Name\",\"Mobile\",\"Email\",\"Sallery\",\"Dob\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"13\"],\"fieldColumn\":[\"4\",\"4\",\"4\",\"4\",\"4\",\"4\"],\"fieldColumnName\":[\"name\",\"mobile\",\"email\",\"sallery\",\"dob\",\"status\"],\"fieldName\":[\"name\",\"mobile\",\"email\",\"sallery\",\"dob\",\"status\"],\"fieldId\":[\"name\",\"mobile\",\"email\",\"sallery\",\"dob\",\"status\"],\"fieldClass\":[\"name\",\"mobile\",\"email\",\"sallery\",\"dob\",\"status\"],\"fieldPlaceHolder\":[\"Name\",\"Mobile\",\"Email\",\"Sallery\",\"Dob\",\"Status\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"0\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"0\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"required\",\"required|unique:employees,mobile|digits:10|numeric\",\"unique:employees,email\",\"numeric\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\",\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\",\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\",\"\"]}', '30', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '{{$controller::moduleShortCode(0)}}', '', 'No', '', '', 'No', '', '', 1, 2, '2024-02-27 10:04:21'),
(29, 'Payments', 'payments', 'paymentId', 'Payments', '{\"moduleId\":\"29\",\"tableName\":\"payments\",\"columnName\":[\"paymentId\",\"name\",\"sortOrder\",\"softDelete\",\"status\"],\"columnCustomName\":[\"Payment Id\",\"Name\",\"Sort Order\",\"Soft Delete\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"sortOrderUpdateFromOutSide\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"\",\"4\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"select\"],\"fieldHeading\":[\"Name\",\"Sort Order\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\",\"4\"],\"fieldColumn\":[\"6\",\"6\",\"12\"],\"fieldColumnName\":[\"name\",\"sortOrder\",\"status\"],\"fieldName\":[\"name\",\"sortOrder\",\"status\"],\"fieldId\":[\"name\",\"sortOrder\",\"status\"],\"fieldClass\":[\"name\",\"sortOrder\",\"status\"],\"fieldPlaceHolder\":[\"Name\",\"Sort Order\",\"Status\"],\"fieldDefaultValue\":[\"\",\"0\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"0\"],\"fieldValidation\":[\"required\",\"required|numeric\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\"]}', '2', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '{{$controller::moduleShortCode(0)}}', '', 'No', '', '', 'No', '', '', 1, 2, '2024-03-01 04:47:44'),
(30, 'StorePayments', 'store_payments', 'storePaymentId', 'Store Payments', '{\"moduleId\":\"30\",\"tableName\":\"store_payments\",\"columnName\":[\"storePaymentId\",\"payments\",\"default\",\"storeId\",\"userId\",\"status\"],\"columnCustomName\":[\"Store Payment Id\",\"Payments\",\"Default\",\"Store Id\",\"User Id\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"\",\"\",\"\",\"\",\"\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"select\",\"select\"],\"fieldHeading\":[\"Payments\",\"Default Payment Method\"],\"fieldSortOrder\":[\"1\",\"2\"],\"fieldColumn\":[\"12\",\"12\"],\"fieldColumnName\":[\"payments\",\"default\"],\"fieldName\":[\"payments\",\"default\"],\"fieldId\":[\"payments\",\"default\"],\"fieldClass\":[\"payments\",\"default\"],\"fieldPlaceHolder\":[\"Payments\",\"Default\"],\"fieldDefaultValue\":[\"\",\"\"],\"fieldAttribute\":[\"multiple\",\"\"],\"fieldRequired\":[\"1\",\"1\"],\"fieldValidation\":[\"required\",\"required\"],\"fieldHeadingBefore\":[\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\"],\"fieldSelectTable\":[\"payments\",\"payments\"],\"fieldSelectIdColumn\":[\"paymentId\",\"paymentId\"],\"fieldSelectMainColumn\":[\"name\",\"name\"],\"fieldSelectWhere\":[\"\",\"\"],\"fieldOrderBy\":[\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\"],\"fieldTableColumn\":[\"payments\"],\"fieldSelectOperator\":[\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\"],\"fieldCustomFields\":[\"\",\"\"]}', '30', 0, 1, 0, 1, 0, '', '', '', '', '', '', '', '{{$controller::moduleShortCode(30)}}', '', 'No', '', '', 'No', '', '', 1, 1, '2024-03-01 05:20:41'),
(31, 'AdditionalCharges', 'additional_charges', 'additionalChargeId', 'Additional Charges', '{\"moduleId\":\"31\",\"tableName\":\"additional_charges\",\"columnName\":[\"additionalChargeId\",\"heading\",\"sortOrder\",\"storeId\",\"userId\",\"updatedBy\",\"insertedBy\",\"status\"],\"columnCustomName\":[\"Additional Charge Id\",\"Heading\",\"Sort Order\",\"Store Id\",\"User Id\",\"Updated By\",\"Inserted By\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"sortOrderUpdateFromOutSide\",\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"\",\"\",\"\",\"\",\"4\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"select\"],\"fieldHeading\":[\"Heading\",\"Sort Order\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\",\"7\"],\"fieldColumn\":[\"6\",\"6\",\"12\"],\"fieldColumnName\":[\"heading\",\"sortOrder\",\"status\"],\"fieldName\":[\"heading\",\"sortOrder\",\"status\"],\"fieldId\":[\"heading\",\"sortOrder\",\"status\"],\"fieldClass\":[\"heading\",\"sortOrder\",\"status\"],\"fieldPlaceHolder\":[\"Heading\",\"Sort Order\",\"Status\"],\"fieldDefaultValue\":[\"\",\"0\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"0\"],\"fieldValidation\":[\"required\",\"numeric|required\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\"]}', '30', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '{{$controller::moduleShortCode(0)}}', '', 'No', '', '', 'No', '', '', 1, 2, '2024-03-06 10:50:59'),
(32, 'InvoiceTemplate', 'invoice_template', 'invoiceTemplateId', 'Invoice Template', '{\"moduleId\":\"32\",\"tableName\":\"invoice_template\",\"columnName\":[\"invoiceTemplateId\",\"heading\",\"template\",\"tableCode\",\"loopTrCode\",\"customCss\",\"subTotalTrLoop\",\"status\"],\"columnCustomName\":[\"Invoice Template Id\",\"Heading\",\"Template\",\"Table Code\",\"Loop Tr Code\",\"Custom Css\",\"Sub Total Tr Loop\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"\",\"\",\"\",\"\",\"\",\"3\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"wysiwyg\",\"select\",\"textarea\",\"textarea\",\"textarea\",\"textarea\"],\"fieldHeading\":[\"Heading\",\"Template\",\"Status\",\"Loop Tr Code\",\"Sub Total Tr Loop\",\"Custom Css\",\"Table Code\"],\"fieldSortOrder\":[\"1\",\"2\",\"7\",\"4\",\"5\",\"6\",\"3\"],\"fieldColumn\":[\"12\",\"12\",\"12\",\"12\",\"12\",\"12\",\"12\"],\"fieldColumnName\":[\"heading\",\"template\",\"status\",\"loopTrCode\",\"subTotalTrLoop\",\"customCss\",\"tableCode\"],\"fieldName\":[\"heading\",\"template\",\"status\",\"loopTrCode\",\"subTotalTrLoop\",\"customCss\",\"tableCode\"],\"fieldId\":[\"heading\",\"template\",\"status\",\"loopTrCode\",\"subTotalTrLoop\",\"customCss\",\"tableCode\"],\"fieldClass\":[\"heading\",\"template\",\"status\",\"loopTrCode tdetqzuqqe\",\"subTotalTrLoop tdetqzuqqe\",\"customCss tdetqzuqqe\",\"tableCode tdetqzuqqe\"],\"fieldPlaceHolder\":[\"Heading\",\"Template\",\"Status\",\"Loop Tr Code\",\"Sub Total Tr Loop\",\"Custom Css\",\"Table Code\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"0\",\"0\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"required\",\"required\",\"\",\"\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"Enable,Disable\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\",\"1,0\",\"\",\"\",\"\",\"\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"heading\",\"template\",\"status\",\"loopTrCode\",\"subTotalTrLoop\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"]}', '2', 0, 0, 0, 0, 0, '', '', '', 'PD9waHANCiRhcnJheVsndGVtcGxhdGUnXSA9ICR0aGlzLT5lbmNyeXB0KCRhcnJheVsndGVtcGxhdGUnXSk7DQokYXJyYXlbJ2xvb3BUckNvZGUnXSA9ICR0aGlzLT5lbmNyeXB0KCRhcnJheVsnbG9vcFRyQ29kZSddKTsNCiRhcnJheVsnc3ViVG90YWxUckxvb3AnXSA9ICR0aGlzLT5lbmNyeXB0KCRhcnJheVsnc3ViVG90YWxUckxvb3AnXSk7DQokYXJyYXlbJ2N1c3RvbUNzcyddID0gJHRoaXMtPmVuY3J5cHQoJGFycmF5WydjdXN0b21Dc3MnXSk7DQokYXJyYXlbJ3RhYmxlQ29kZSddID0gJHRoaXMtPmVuY3J5cHQoJGFycmF5Wyd0YWJsZUNvZGUnXSk7DQo/Pg==', '', '', '', '{{$controller::moduleShortCode(32)}}', '', 'No', '', '', 'No', '', '', 1, 2, '2024-03-08 11:39:41'),
(33, 'OrderStatus', 'order_status', 'orderStatusId', 'Order Status', '{\"moduleId\":\"33\",\"tableName\":\"order_status\",\"columnName\":[\"orderStatusId\",\"heading\",\"status\"],\"columnCustomName\":[\"Order Status Id\",\"Heading\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\"],\"type\":[\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"3\"],\"tableColumnMerge\":[\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"select\"],\"fieldHeading\":[\"Heading\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\"],\"fieldColumn\":[\"6\",\"6\"],\"fieldColumnName\":[\"heading\",\"status\"],\"fieldName\":[\"heading\",\"status\"],\"fieldId\":[\"heading\",\"status\"],\"fieldClass\":[\"heading\",\"status\"],\"fieldPlaceHolder\":[\"Heading\",\"Status\"],\"fieldDefaultValue\":[\"\",\"\"],\"fieldAttribute\":[\"\",\"\"],\"fieldRequired\":[\"1\",\"0\"],\"fieldValidation\":[\"required\",\"\"],\"fieldHeadingBefore\":[\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\"],\"fieldOrderBy\":[\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\"],\"fieldCustomFields\":[\"\",\"\"]}', '2', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '{{$controller::moduleShortCode(0)}}', '', 'No', '', '', 'No', '', '', 1, 2, '2024-03-17 09:03:59'),
(34, 'CustomerPayInOut', 'customer_pay_in_out', 'customerPayInOutId', 'Customer Pay In Out', '{\"moduleId\":\"34\",\"tableName\":\"customer_pay_in_out\",\"columnName\":[\"customerPayInOutId\",\"customerId\",\"amount\",\"type\",\"storeId\",\"userId\",\"insertedBy\",\"dateUpdated\",\"dateAdded\"],\"columnCustomName\":[\"Customer Pay In Out Id\",\"Customer Id\",\"Amount\",\"Type\",\"Store Id\",\"User Id\",\"Inserted By\",\"Date Updated\",\"Date Added\"],\"foreignColumnShow\":[\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"customers\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"name\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"customerId\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"\",\"\",\"\",\"\",\"\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"select\",\"text\",\"select\"],\"fieldHeading\":[\"Customer Id\",\"Amount\",\"Type\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\"],\"fieldColumn\":[\"6\",\"6\",\"12\"],\"fieldColumnName\":[\"customerId\",\"amount\",\"type\"],\"fieldName\":[\"customerId\",\"amount\",\"type\"],\"fieldId\":[\"customerId\",\"amount\",\"type\"],\"fieldClass\":[\"customerId select2\",\"amount\",\"type\"],\"fieldPlaceHolder\":[\"Customer Id\",\"Amount\",\"Type\"],\"fieldDefaultValue\":[\"\",\"0\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"0\"],\"fieldValidation\":[\"required\",\"numeric|required\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"Credit (Payment IN),Debit (Payment OUT)\"],\"fieldSelectBoxValue\":[\"\",\"\",\"Credit,Debit\"],\"fieldSelectTable\":[\"customers\",\"\",\"\"],\"fieldSelectIdColumn\":[\"customerId\",\"null\",\"null\"],\"fieldSelectMainColumn\":[\"name,mobile,email\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\"],\"fieldTableColumn\":[\"customerId\",\"amount\"],\"fieldSelectOperator\":[\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\"]}', '30', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '{{$controller::moduleShortCode(0)}}', '', 'No', '', '', 'No', '', '', 1, 2, '2024-03-28 08:08:29');
INSERT INTO `modules` (`moduleId`, `moduleName`, `moduleTable`, `moduleFirstColumn`, `pageHeading`, `moduleData`, `parentMenu`, `sortOrder`, `hideAdd`, `hideEdit`, `hideDelete`, `hideAction`, `addButtonText`, `copyButtonText`, `extraButtons`, `submitCodeBefore`, `submitCodeAfter`, `extraActionOnDeleteButton`, `additionalText`, `shortCode`, `frontendRedirectPage`, `sendMailToAdmin`, `filedsToReplaceOnMail`, `filters`, `copyTable`, `dataOfColumnToSkip`, `autoIncreamentColumn`, `status`, `insertedBy`, `dateAdded`) VALUES
(35, 'CustomerLedgerWallet', 'customer_ledger_wallet', 'customerLedgerId', 'Customer Ledger Wallet', '{\"moduleId\":\"35\",\"tableName\":\"customer_ledger_wallet\",\"columnName\":[\"customerLedgerId\",\"orderId\",\"customerId\",\"amount\",\"type\",\"paymentId\",\"remark\",\"payInOut\",\"status\",\"storeId\",\"userId\",\"softDelete\",\"dateAdded\"],\"columnCustomName\":[\"Customer Ledger Id\",\"Order Id\",\"Customer Id\",\"Amount\",\"Type\",\"Payment Id\",\"Remark\",\"Pay In Out\",\"Status\",\"Store Id\",\"User Id\",\"Soft Delete\",\"Date Added\"],\"foreignColumnShow\":[\"No\",\"No\",\"Yes\",\"No\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"customers\",\"\",\"\",\"payments\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"name\",\"\",\"\",\"name\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"customerId\",\"\",\"\",\"paymentId\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"No\",\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"status\",\"\",\"\",\"\",\"\"],\"columnSortOrder\":[\"1\",\"\",\"2\",\"3\",\"4\",\"5\",\"6\",\"\",\"\",\"\",\"\",\"\",\"7\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"select\",\"select\",\"text\",\"select\",\"select\",\"textarea\"],\"fieldHeading\":[\"Order Id\",\"Customer Id\",\"Amount\",\"Type\",\"Payment Id\",\"Remark\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\"],\"fieldColumn\":[\"6\",\"6\",\"4\",\"4\",\"4\",\"12\"],\"fieldColumnName\":[\"orderId\",\"customerId\",\"amount\",\"type\",\"paymentId\",\"remark\"],\"fieldName\":[\"orderId\",\"customerId\",\"amount\",\"type\",\"paymentId\",\"remark\"],\"fieldId\":[\"orderId\",\"customerId\",\"amount\",\"type\",\"paymentId\",\"remark\"],\"fieldClass\":[\"orderId jjkzafeiov\",\"customerId jjkzafeiov\",\"amount\",\"type\",\"paymentId jjkzafeiov\",\"remark\"],\"fieldPlaceHolder\":[\"Order Id\",\"Customer Id\",\"Amount\",\"Type\",\"Payment Id\",\"Remark\"],\"fieldDefaultValue\":[\"\",\"\",\"0\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"0\",\"1\",\"1\",\"0\",\"1\",\"0\"],\"fieldValidation\":[\"\",\"required\",\"required|numeric\",\"\",\"required\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"hideThisFieldFrontend\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute2\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"Credit (Payment IN),Debit (Payment OUT)\",\"\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"Credit,Debit\",\"\",\"\"],\"fieldSelectTable\":[\"order\",\"customers\",\"\",\"\",\"payments\",\"\"],\"fieldSelectIdColumn\":[\"orderId\",\"customerId\",\"null\",\"null\",\"paymentId\",\"null\"],\"fieldSelectMainColumn\":[\"orderId,name,email,mobile\",\"name,mobile,email\",\"\",\"\",\"name\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"amount\",\"type\",\"remark\"]}', '30', 0, 0, 1, 0, 0, '', '', '', 'PD9waHANCmlmKCRhcnJheVsndHlwZSddID09ICdDcmVkaXQnKXsNCiAgICRhcnJheVsncGF5SW5PdXQnXSA9ICdQYXlJbic7DQp9ZWxzZXsNCiAgICRhcnJheVsncGF5SW5PdXQnXSA9ICdQYXlPdXQnOw0KfQ0KPz4=', 'PD9waHANCiR0aGlzLT51cGRhdGVDdXN0b21lcldhbGxldCgkYXJyYXlbJ2N1c3RvbWVySWQnXSk7DQo/Pg==', '', '', '{{$controller::moduleShortCode(35)}}', '', 'No', '', '', 'No', '', '', 1, 2, '2024-03-28 08:24:30'),
(36, 'Codes', 'codes', 'codeId', 'Codes', '{\"moduleId\":\"36\",\"tableName\":\"codes\",\"columnName\":[\"codeId\",\"alphabat\",\"number\",\"status\"],\"columnCustomName\":[\"Code Id\",\"Alphabat\",\"Number\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"4\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"select\"],\"fieldHeading\":[\"Alphabat\",\"Number\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\"],\"fieldColumn\":[\"4\",\"4\",\"4\"],\"fieldColumnName\":[\"alphabat\",\"number\",\"status\"],\"fieldName\":[\"alphabat\",\"number\",\"status\"],\"fieldId\":[\"alphabat\",\"number\",\"status\"],\"fieldClass\":[\"alphabat\",\"number\",\"status\"],\"fieldPlaceHolder\":[\"Alphabat\",\"Number\",\"Status\"],\"fieldDefaultValue\":[\"\",\"0\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"0\"],\"fieldValidation\":[\"required\",\"required|numeric\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\"]}', '2', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '{{$controller::moduleShortCode(0)}}', '', 'No', '', '', 'No', '', '', 1, 2, '2024-03-28 08:57:40'),
(37, 'CustomerLedgerReward', 'customer_ledger_reward', 'customerLedgerRewardId', 'Customer Ledger Reward', '{\"moduleId\":\"37\",\"tableName\":\"customer_ledger_reward\",\"columnName\":[\"customerLedgerRewardId\",\"orderId\",\"customerId\",\"reward\",\"type\",\"paymentId\",\"remark\",\"status\",\"storeId\",\"userId\",\"softDelete\",\"dateAdded\"],\"columnCustomName\":[\"Customer Ledger Reward Id\",\"Order Id\",\"Customer Id\",\"Reward\",\"Type\",\"Payment Id\",\"Remark\",\"Status\",\"Store Id\",\"User Id\",\"Soft Delete\",\"Date Added\"],\"foreignColumnShow\":[\"No\",\"No\",\"Yes\",\"No\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"order\",\"customers\",\"\",\"\",\"payments\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"orderId\",\"name\",\"\",\"\",\"name\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"orderId\",\"customerId\",\"\",\"\",\"paymentId\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"status\",\"\",\"\",\"\",\"\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"\",\"\",\"\",\"\",\"8\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"select\",\"select\",\"text\",\"select\",\"select\",\"textarea\"],\"fieldHeading\":[\"Order Id\",\"Customer Id\",\"Reward\",\"Type\",\"Payment Id\",\"Remark\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\"],\"fieldColumn\":[\"6\",\"6\",\"4\",\"4\",\"4\",\"12\"],\"fieldColumnName\":[\"orderId\",\"customerId\",\"reward\",\"type\",\"paymentId\",\"remark\"],\"fieldName\":[\"orderId\",\"customerId\",\"reward\",\"type\",\"paymentId\",\"remark\"],\"fieldId\":[\"orderId\",\"customerId\",\"reward\",\"type\",\"paymentId\",\"remark\"],\"fieldClass\":[\"orderId\",\"customerId\",\"reward\",\"type\",\"paymentId\",\"remark\"],\"fieldPlaceHolder\":[\"Order Id\",\"Customer Id\",\"Reward\",\"Type\",\"Payment Id\",\"Remark\"],\"fieldDefaultValue\":[\"\",\"\",\"0\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"0\",\"1\",\"1\",\"0\",\"1\",\"0\"],\"fieldValidation\":[\"\",\"required\",\"numeric|required\",\"\",\"required\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"hideThisFieldFrontend\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"Credit,Debit\",\"\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"Credit,Debit\",\"\",\"\"],\"fieldSelectTable\":[\"order\",\"customers\",\"\",\"\",\"payments\",\"\"],\"fieldSelectIdColumn\":[\"orderId\",\"customerId\",\"null\",\"null\",\"paymentId\",\"\"],\"fieldSelectMainColumn\":[\"orderId,name,email,mobile\",\"name,mobile,email\",\"\",\"\",\"name\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"orderId\",\"customerId\",\"reward\",\"type\",\"paymentId\",\"remark\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\",\"\"]}', '30', 0, 0, 1, 0, 0, '', '', '', 'PD9waHANCmlmKCRhcnJheVsndHlwZSddID09ICdDcmVkaXQnKXsNCiAgICRhcnJheVsncGF5SW5PdXQnXSA9ICdQYXlJbic7DQp9ZWxzZXsNCiAgICRhcnJheVsncGF5SW5PdXQnXSA9ICdQYXlPdXQnOw0KfQ0KPz4=', 'PD9waHANCiR0aGlzLT51cGRhdGVDdXN0b21lclJld2FyZCgkYXJyYXlbJ2N1c3RvbWVySWQnXSk7DQo/Pg==', '', '', '{{$controller::moduleShortCode(37)}}', '', 'No', '', '', 'No', '', '', 1, 2, '2024-03-28 10:01:41'),
(38, 'OrderHistory', 'order_history', 'orderHistoryId', 'Order History', '{\"moduleId\":\"38\",\"tableName\":\"order_history\",\"columnName\":[\"orderHistoryId\",\"orderId\",\"orderStatusId\",\"comment\",\"status\",\"storeId\",\"userId\",\"dateAdded\"],\"columnCustomName\":[\"Order History Id\",\"Order Id\",\"Order Status Id\",\"Comment\",\"Status\",\"Store Id\",\"User Id\",\"Date Added\"],\"foreignColumnShow\":[\"No\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"order_status\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"heading\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"orderStatusId\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"status\",\"\",\"\",\"\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"\",\"\",\"\",\"5\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"select\",\"select\",\"wysiwyg\"],\"fieldHeading\":[\"Order Id\",\"Order Status Id\",\"Comment\"],\"fieldSortOrder\":[\"1\",\"2\",\"5\"],\"fieldColumn\":[\"6\",\"6\",\"12\"],\"fieldColumnName\":[\"orderId\",\"orderStatusId\",\"comment\"],\"fieldName\":[\"orderId\",\"orderStatusId\",\"comment\"],\"fieldId\":[\"orderId\",\"orderStatusId\",\"comment\"],\"fieldClass\":[\"orderId\",\"orderStatusId\",\"comment\"],\"fieldPlaceHolder\":[\"Order Id\",\"Order Status Id\",\"Comment\"],\"fieldDefaultValue\":[\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"0\"],\"fieldValidation\":[\"required\",\"required\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"removePleaseSelect\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\"],\"fieldSelectTable\":[\"order\",\"order_status\",\"\"],\"fieldSelectIdColumn\":[\"orderId\",\"orderStatusId\",\"null\"],\"fieldSelectMainColumn\":[\"orderId,name,email,mobile\",\"heading\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\"],\"fieldTableColumn\":[\"orderId\",\"orderStatusId\",\"comment\"],\"fieldSelectOperator\":[\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\"]}', '57', 0, 0, 0, 0, 0, '', '', '', '', 'PD9waHANCmlmKCRzZXR0aW5nc1sncnVubmluZ09yZGVyU3RhdHVzJ10hPSRhcnJheVsnb3JkZXJTdGF0dXNJZCddKXsNCgkkb3JkZXJTdGF0dXNIZWFkaW5nID0gJHRoaXMtPmdldERhdGFXaGVyZSgnb3JkZXJfc3RhdHVzJywib3JkZXJTdGF0dXNJZCIsJGFycmF5WydvcmRlclN0YXR1c0lkJ10pWzBdWydoZWFkaW5nJ107DQoJREI6OnNlbGVjdCgiVVBEQVRFIGBvcmRlcmAgU0VUIG9yZGVyU3RhdHVzSWQ9JyIuJGFycmF5WydvcmRlclN0YXR1c0lkJ10uIicscnVubmluZ09yZGVyPTAsaG9sZD0wLG9yZGVyU3RhdHVzSGVhZGluZz0nIi4kb3JkZXJTdGF0dXNIZWFkaW5nLiInLGNoZWNrb3V0VHlwZT0nZmluYWxDaGVja291dCcscnVubmluZ09yZGVyPScwJyBXSEVSRSBvcmRlcklkPSciLiRhcnJheVsnb3JkZXJJZCddLiInIik7DQp9ZWxzZXsNCgkkb3JkZXJTdGF0dXNIZWFkaW5nID0gJHRoaXMtPmdldERhdGFXaGVyZSgnb3JkZXJfc3RhdHVzJywib3JkZXJTdGF0dXNJZCIsJGFycmF5WydvcmRlclN0YXR1c0lkJ10pWzBdWydoZWFkaW5nJ107DQoJREI6OnNlbGVjdCgiVVBEQVRFIGBvcmRlcmAgU0VUIG9yZGVyU3RhdHVzSWQ9JyIuJGFycmF5WydvcmRlclN0YXR1c0lkJ10uIicscnVubmluZ09yZGVyPTEsaG9sZD0xLG9yZGVyU3RhdHVzSGVhZGluZz0nIi4kb3JkZXJTdGF0dXNIZWFkaW5nLiInLGNoZWNrb3V0VHlwZT0nc2VuZFRvS290JyxydW5uaW5nT3JkZXI9JzEnIFdIRVJFIG9yZGVySWQ9JyIuJGFycmF5WydvcmRlcklkJ10uIiciKTsNCn0NCj8+', '', '', '{{$controller::moduleShortCode(38)}}', '', 'No', '', '', 'No', '', '', 1, 1, '2024-03-29 06:31:34'),
(39, 'CommentMaster', 'comment_master', 'commentMasterId', 'Comment Master', '{\"moduleId\":\"39\",\"tableName\":\"comment_master\",\"columnName\":[\"commentMasterId\",\"comment\",\"storeId\",\"userId\",\"status\"],\"columnCustomName\":[\"Comment Master Id\",\"Comment\",\"Store Id\",\"User Id\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"No\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"\",\"\",\"3\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"textarea\",\"select\"],\"fieldHeading\":[\"Comment\",\"Status\"],\"fieldSortOrder\":[\"1\",\"4\"],\"fieldColumn\":[\"12\",\"12\"],\"fieldColumnName\":[\"comment\",\"status\"],\"fieldName\":[\"comment\",\"status\"],\"fieldId\":[\"comment\",\"status\"],\"fieldClass\":[\"comment\",\"status\"],\"fieldPlaceHolder\":[\"Comment\",\"Status\"],\"fieldDefaultValue\":[\"\",\"\"],\"fieldAttribute\":[\"\",\"\"],\"fieldRequired\":[\"1\",\"0\"],\"fieldValidation\":[\"required\",\"\"],\"fieldHeadingBefore\":[\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\"],\"fieldOrderBy\":[\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\"],\"fieldCustomFields\":[\"\",\"\"]}', '2', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '{{$controller::moduleShortCode(0)}}', '', 'No', '', '', 'No', '', '', 1, 1, '2024-04-13 07:08:25'),
(40, 'RewardOtpSkipReason', 'reward_otp_skip_reason', 'rewardOtpSkipReasonId', 'Reward Otp Skip Reason', '{\"moduleId\":\"40\",\"tableName\":\"reward_otp_skip_reason\",\"columnName\":[\"rewardOtpSkipReasonId\",\"customerId\",\"orderId\",\"reason\",\"storeId\",\"skipOtpToken\",\"status\",\"dateAdded\"],\"columnCustomName\":[\"Reward Otp Skip Reason Id\",\"Customer Id\",\"Order Id\",\"Reason\",\"Store Id\",\"Skip Otp Token\",\"Status\",\"Date Added\"],\"foreignColumnShow\":[\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"customers\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"name\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"customerId\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"status\",\"\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"\",\"\",\"\",\"5\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"select\",\"text\",\"select\",\"select\",\"text\"],\"fieldHeading\":[\"Customer Id\",\"Reason\",\"Store Id\",\"Status\",\"Date Added\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"5\"],\"fieldColumn\":[\"4\",\"4\",\"4\",\"4\",\"4\"],\"fieldColumnName\":[\"customerId\",\"reason\",\"storeId\",\"status\",\"dateAdded\"],\"fieldName\":[\"customerId\",\"reason\",\"storeId\",\"status\",\"dateAdded\"],\"fieldId\":[\"customerId\",\"reason\",\"storeId\",\"status\",\"dateAdded\"],\"fieldClass\":[\"customerId\",\"reason\",\"storeId\",\"status\",\"dateAdded\"],\"fieldPlaceHolder\":[\"Customer Id\",\"Reason\",\"Store Id\",\"Status\",\"Date Added\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"0\",\"0\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"\",\"\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\",\"\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"customerId\",\"reason\",\"storeId\",\"status\",\"dateAdded\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\"]}', '30', 0, 1, 1, 0, 0, '', '', '', '', '', '', '', '{{$controller::moduleShortCode(40)}}', '', 'No', '', '', 'No', '', '', 1, 1, '2024-04-19 04:11:25'),
(41, 'RewardOtp', 'reward_otp', 'rewardOtpId', 'Reward Otp', '{\"moduleId\":\"41\",\"tableName\":\"reward_otp\",\"columnName\":[\"rewardOtpId\",\"customerId\",\"orderId\",\"otp\",\"storeId\",\"otpToken\",\"status\",\"dateAdded\"],\"columnCustomName\":[\"Reward Otp Id\",\"Customer Id\",\"Order Id\",\"Otp\",\"Store Id\",\"Otp Token\",\"Status\",\"Date Added\"],\"foreignColumnShow\":[\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"customers\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"name\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"customerId\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"status\",\"\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"\",\"\",\"\",\"5\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"select\",\"text\",\"select\",\"text\"],\"fieldHeading\":[\"Store Id\",\"Otp Token\",\"Status\",\"Date Added\"],\"fieldSortOrder\":[\"4\",\"5\",\"6\",\"7\"],\"fieldColumn\":[\"4\",\"4\",\"4\",\"4\"],\"fieldColumnName\":[\"storeId\",\"otpToken\",\"status\",\"dateAdded\"],\"fieldName\":[\"storeId\",\"otpToken\",\"status\",\"dateAdded\"],\"fieldId\":[\"storeId\",\"otpToken\",\"status\",\"dateAdded\"],\"fieldClass\":[\"storeId\",\"otpToken\",\"status\",\"dateAdded\"],\"fieldPlaceHolder\":[\"Store Id\",\"Otp Token\",\"Status\",\"Date Added\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"0\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"storeId\",\"otpToken\",\"status\",\"dateAdded\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\"]}', '30', 0, 1, 1, 0, 0, '', '', '', '', '', '', '', '{{$controller::moduleShortCode(0)}}', '', 'No', '', '', 'No', '', '', 1, 1, '2024-04-19 04:29:55'),
(42, 'ExpenseCategories', 'expense_categories', 'expenseCategoryId', 'Expense Categories', '{\"moduleId\":\"42\",\"tableName\":\"expense_categories\",\"columnName\":[\"expenseCategoryId\",\"heading\",\"storeId\",\"userId\",\"status\"],\"columnCustomName\":[\"Expense Category Id\",\"Heading\",\"Store Id\",\"User Id\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"No\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"\",\"\",\"3\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"select\"],\"fieldHeading\":[\"Heading\",\"Status\"],\"fieldSortOrder\":[\"1\",\"4\"],\"fieldColumn\":[\"6\",\"6\"],\"fieldColumnName\":[\"heading\",\"status\"],\"fieldName\":[\"heading\",\"status\"],\"fieldId\":[\"heading\",\"status\"],\"fieldClass\":[\"heading\",\"status\"],\"fieldPlaceHolder\":[\"Heading\",\"Status\"],\"fieldDefaultValue\":[\"\",\"\"],\"fieldAttribute\":[\"\",\"\"],\"fieldRequired\":[\"1\",\"0\"],\"fieldValidation\":[\"required\",\"\"],\"fieldHeadingBefore\":[\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\"],\"fieldOrderBy\":[\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\"],\"fieldCustomFields\":[\"\",\"\"]}', '8', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '{{$controller::moduleShortCode(0)}}', '', 'No', '', '', 'No', '', '', 1, 1, '2024-04-30 04:33:58'),
(43, 'Expenses', 'expenses', 'expenseId', 'Expenses', '{\"moduleId\":\"43\",\"tableName\":\"expenses\",\"columnName\":[\"expenseId\",\"heading\",\"amount\",\"vendorId\",\"expenseCategoryId\",\"relatedImage\",\"storeId\",\"userId\",\"status\",\"dateAdded\"],\"columnCustomName\":[\"Expense Id\",\"Heading\",\"Amount\",\"Vendor Id\",\"Expense Category Id\",\"Related Image\",\"Store Id\",\"User Id\",\"Status\",\"Date Added\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"vendors\",\"expense_categories\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"heading\",\"heading\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"vendorId\",\"expenseCategoryId\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"Yes\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"image\",\"\",\"\",\"status\",\"\"],\"columnSortOrder\":[\"1\",\"3\",\"4\",\"5\",\"6\",\"2\",\"\",\"\",\"7\",\"8\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"select\",\"select\",\"file\",\"select\"],\"fieldHeading\":[\"Heading\",\"Amount\",\"Vendor Id\",\"Expense Category Id\",\"Image\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"8\",\"5\"],\"fieldColumn\":[\"4\",\"4\",\"4\",\"6\",\"12\",\"6\"],\"fieldColumnName\":[\"heading\",\"amount\",\"vendorId\",\"expenseCategoryId\",\"relatedImage\",\"status\"],\"fieldName\":[\"heading\",\"amount\",\"vendorId\",\"expenseCategoryId\",\"relatedImage\",\"status\"],\"fieldId\":[\"heading\",\"amount\",\"vendorId\",\"expenseCategoryId\",\"relatedImage\",\"status\"],\"fieldClass\":[\"heading\",\"amount\",\"vendorId\",\"expenseCategoryId\",\"relatedImage\",\"status\"],\"fieldPlaceHolder\":[\"Heading\",\"Amount\",\"Vendor Id\",\"Expense Category Id\",\"Related Image\",\"Status\"],\"fieldDefaultValue\":[\"\",\"0\",\"\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"multiple\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"0\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"required\",\"required|numeric\",\"\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"removePleaseSelect\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\",\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\",\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\",\"vendors\",\"expense_categories\",\"\",\"\"],\"fieldSelectIdColumn\":[\"null\",\"null\",\"vendorId\",\"expenseCategoryId\",\"\",\"null\"],\"fieldSelectMainColumn\":[\"\",\"\",\"heading,mobile,email\",\"heading\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"heading\",\"amount\",\"vendorId\",\"expenseCategoryId\",\"relatedImage\",\"status\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\",\"\"]}', '8', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '{{$controller::moduleShortCode(0)}}', '', 'No', '', '', 'No', '', '', 1, 1, '2024-04-30 04:38:15'),
(44, 'HotelRooms', 'hotel_rooms', 'hotelRoomId', 'Hotel Rooms', '{\"moduleId\":\"44\",\"tableName\":\"hotel_rooms\",\"columnName\":[\"hotelRoomId\",\"roomNo\",\"capacity\",\"roomStatus\",\"image\",\"relatedImages\",\"storeId\",\"userId\",\"status\"],\"columnCustomName\":[\"Hotel Room Id\",\"Room No\",\"Capacity\",\"Room Booked Status\",\"Image\",\"Related Images\",\"Store Id\",\"User Id\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"image\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"3\",\"4\",\"5\",\"2\",\"\",\"\",\"\",\"6\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"select\",\"select\",\"file\",\"file\"],\"fieldHeading\":[\"Room No\",\"Capacity\",\"Room Booked Status\",\"Status\",\"Main Image\",\"Related Image\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"6\",\"7\",\"8\"],\"fieldColumn\":[\"6\",\"6\",\"6\",\"6\",\"6\",\"6\"],\"fieldColumnName\":[\"roomNo\",\"capacity\",\"roomStatus\",\"status\",\"image\",\"relatedImages\"],\"fieldName\":[\"roomNo\",\"capacity\",\"roomStatus\",\"status\",\"image\",\"relatedImages\"],\"fieldId\":[\"roomNo\",\"capacity\",\"roomStatus\",\"status\",\"image\",\"relatedImages\"],\"fieldClass\":[\"roomNo\",\"capacity\",\"roomStatus\",\"status\",\"image\",\"relatedImages\"],\"fieldPlaceHolder\":[\"Room No\",\"Capacity\",\"Room Status\",\"Status\",\"Image\",\"Related Images\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"0\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"required|numeric\",\"required|numeric\",\"\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"No,Yes\",\"Enable,Disable\",\"\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\",\"No,Yes\",\"1,0\",\"\",\"\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"roomNo\",\"capacity\",\"roomStatus\",\"status\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\",\"\"]}', '30', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '{{$controller::moduleShortCode(0)}}', '', 'No', '', '', 'No', '', '', 1, 1, '2024-06-04 08:54:26'),
(45, 'ProductReturn', 'product_return', 'productReturnId', 'Product Return', '{\"moduleId\":\"45\",\"tableName\":\"product_return\",\"columnName\":[\"productReturnId\",\"customerId\",\"orderId\",\"productId\",\"quantity\",\"total\",\"storeId\",\"userId\",\"status\",\"dateAdded\"],\"columnCustomName\":[\"Product Return Id\",\"Customer Id\",\"Order Id\",\"Product Id\",\"Quantity\",\"Total\",\"Store Id\",\"User Id\",\"Status\",\"Date Added\"],\"foreignColumnShow\":[\"No\",\"Yes\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"customers\",\"\",\"products\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"name\",\"\",\"heading\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"customerId\",\"\",\"productId\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"status\",\"\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"\",\"\",\"\",\"7\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"select\",\"select\",\"select\",\"text\",\"text\",\"select\",\"select\",\"select\",\"text\"],\"fieldHeading\":[\"Customer Id\",\"Order Id\",\"Product Id\",\"Quantity\",\"Total\",\"Store Id\",\"User Id\",\"Status\",\"Date Added\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\"],\"fieldColumn\":[\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\"],\"fieldColumnName\":[\"customerId\",\"orderId\",\"productId\",\"quantity\",\"total\",\"storeId\",\"userId\",\"status\",\"dateAdded\"],\"fieldName\":[\"customerId\",\"orderId\",\"productId\",\"quantity\",\"total\",\"storeId\",\"userId\",\"status\",\"dateAdded\"],\"fieldId\":[\"customerId\",\"orderId\",\"productId\",\"quantity\",\"total\",\"storeId\",\"userId\",\"status\",\"dateAdded\"],\"fieldClass\":[\"customerId\",\"orderId\",\"productId\",\"quantity\",\"total\",\"storeId\",\"userId\",\"status\",\"dateAdded\"],\"fieldPlaceHolder\":[\"Customer Id\",\"Order Id\",\"Product Id\",\"Quantity\",\"Total\",\"Store Id\",\"User Id\",\"Status\",\"Date Added\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"customerId\",\"orderId\",\"productId\",\"quantity\",\"total\",\"storeId\",\"userId\",\"status\",\"dateAdded\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"]}', '74', 0, 1, 1, 1, 1, '', '', '', '', '', '', '', '{{$controller::moduleShortCode(0)}}', '', 'No', '', '', 'No', '', '', 1, 1, '2024-06-29 06:10:36'),
(46, 'CustomerAmountPaid', 'customer_amount_paid', 'customerAmountPaidId', 'Customer Amount Paid', '{\"moduleId\":\"46\",\"tableName\":\"customer_amount_paid\",\"columnName\":[\"customerAmountPaidId\",\"orderId\",\"customerId\",\"amount\",\"paymentId\",\"remark\",\"storeId\",\"userId\",\"status\",\"dateAdded\"],\"columnCustomName\":[\"Customer Amount Paid Id\",\"Order Id\",\"Customer Id\",\"Amount\",\"Payment Id\",\"Remark\",\"Store Id\",\"User Id\",\"Status\",\"Date Added\"],\"foreignColumnShow\":[\"No\",\"No\",\"Yes\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"customers\",\"\",\"payments\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"name\",\"\",\"name\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"customerId\",\"\",\"paymentId\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"status\",\"\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"\",\"\",\"\",\"7\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"select\",\"text\",\"select\",\"text\",\"select\"],\"fieldHeading\":[\"Order Id\",\"Amount\",\"Payment Id\",\"Remark\",\"Customer Id\"],\"fieldSortOrder\":[\"1\",\"3\",\"4\",\"5\",\"2\"],\"fieldColumn\":[\"6\",\"6\",\"6\",\"12\",\"6\"],\"fieldColumnName\":[\"orderId\",\"amount\",\"paymentId\",\"remark\",\"customerId\"],\"fieldName\":[\"orderId\",\"amount\",\"paymentId\",\"remark\",\"customerId\"],\"fieldId\":[\"orderId\",\"amount\",\"paymentId\",\"remark\",\"customerId\"],\"fieldClass\":[\"orderId oaidkbieqj\",\"amount\",\"paymentId oaidkbieqj\",\"remark\",\"customerId oaidkbieqj\"],\"fieldPlaceHolder\":[\"Order Id\",\"Amount\",\"Payment Id\",\"Remark\",\"Customer Id\"],\"fieldDefaultValue\":[\"\",\"0\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"0\",\"1\",\"1\",\"0\",\"0\"],\"fieldValidation\":[\"\",\"required\",\"required\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute2\":[\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\",\"\"],\"fieldSelectTable\":[\"order\",\"\",\"payments\",\"\",\"customers\"],\"fieldSelectIdColumn\":[\"orderId\",\"null\",\"paymentId\",\"\",\"customerId\"],\"fieldSelectMainColumn\":[\"orderId\",\"\",\"name\",\"\",\"name,mobile,email\"],\"fieldSelectWhere\":[\"\",\"\",\"name,name,name,name\",\"\",\"\"],\"fieldOrderBy\":[\"orderId\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"DESC\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"Credit,Multiple,Return,Wallet\",\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\",\"!=\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"amount\",\"paymentId\",\"remark\",\"customerId\"]}', '28', 0, 0, 0, 0, 0, '', '', '', '', 'PD9waHANCiRuZXdEYXRhWydvcmRlcklkJ10gPSAkYXJyYXlbJ29yZGVySWQnXTsNCiRuZXdEYXRhWydjdXN0b21lcklkJ10gPSAkYXJyYXlbJ2N1c3RvbWVySWQnXTsNCiRuZXdEYXRhWydhbW91bnQnXSA9ICRhcnJheVsnYW1vdW50J107DQokbmV3RGF0YVsndHlwZSddID0gJ0RlYml0JzsNCiRuZXdEYXRhWydyZW1hcmsnXSA9ICAkYXJyYXlbJ3JlbWFyayddOw0KJG5ld0RhdGFbJ3BheW1lbnRJZCddID0gICRhcnJheVsncGF5bWVudElkJ107DQokbmV3RGF0YVsnc3RvcmVJZCddID0gU2Vzc2lvbjo6Z2V0KCdzdG9yZUlkJyk7DQokbmV3RGF0YVsndXNlcklkJ10gPSBTZXNzaW9uOjpnZXQoJ3VzZXJJZCcpOw0KJHRoaXMtPnNldERhdGEoImN1c3RvbWVyX2xlZGdlcl93YWxsZXQiLCRuZXdEYXRhKTsNCiR0aGlzLT51cGRhdGVDdXN0b21lcldhbGxldCgkYXJyYXlbJ2N1c3RvbWVySWQnXSk7DQo/Pg==', '', '', '{{$controller::moduleShortCode(46)}}', '', 'No', '', '', 'No', '', '', 1, 1, '2024-06-29 06:31:32'),
(47, 'Currencies', 'currencies', 'currencyId', 'Currencies', '{\"moduleId\":\"47\",\"tableName\":\"currencies\",\"columnName\":[\"currencyId\",\"heading\",\"code\",\"symbol\",\"storeId\",\"userId\",\"status\"],\"columnCustomName\":[\"Currency Id\",\"Heading\",\"Code\",\"Symbol\",\"Store Id\",\"User Id\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"\",\"\",\"5\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"text\",\"select\"],\"fieldHeading\":[\"Heading\",\"Code\",\"Symbol\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"6\"],\"fieldColumn\":[\"4\",\"4\",\"4\",\"12\"],\"fieldColumnName\":[\"heading\",\"code\",\"symbol\",\"status\"],\"fieldName\":[\"heading\",\"code\",\"symbol\",\"status\"],\"fieldId\":[\"heading\",\"code\",\"symbol\",\"status\"],\"fieldClass\":[\"heading\",\"code\",\"symbol\",\"status\"],\"fieldPlaceHolder\":[\"Heading\",\"Code\",\"Symbol\",\"Status\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"1\",\"0\"],\"fieldValidation\":[\"required\",\"required\",\"required\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute2\":[\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\"]}', '2', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '{{$controller::moduleShortCode(0)}}', '', 'No', '', '', 'No', '', '', 1, 1, '2024-08-24 11:43:25'),
(48, 'Testimonials', 'testimonials', 'testimonialId', 'Testimonials', '{\"moduleId\":\"48\",\"tableName\":\"testimonials\",\"columnName\":[\"testimonialId\",\"heading\",\"userId\",\"status\"],\"columnCustomName\":[\"Testimonial Id\",\"Heading\",\"User Id\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"Yes\",\"No\"],\"foreignTable\":[\"\",\"\",\"users\",\"\"],\"foreignColumn\":[\"\",\"\",\"userName\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"userId\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"4\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"select\"],\"fieldHeading\":[\"Heading\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\"],\"fieldColumn\":[\"12\",\"12\"],\"fieldColumnName\":[\"heading\",\"status\"],\"fieldName\":[\"heading\",\"status\"],\"fieldId\":[\"heading\",\"status\"],\"fieldClass\":[\"heading\",\"status\"],\"fieldPlaceHolder\":[\"Heading\",\"Status\"],\"fieldDefaultValue\":[\"\",\"\"],\"fieldAttribute\":[\"\",\"\"],\"fieldRequired\":[\"0\",\"0\"],\"fieldValidation\":[\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\"],\"fieldAdditionalAttribute2\":[\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\"],\"fieldOrderBy\":[\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\"],\"fieldTableColumn\":[\"heading\",\"status\"],\"fieldSelectOperator\":[\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\"],\"fieldCustomFields\":[\"\",\"\"]}', '28', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '{{$controller::moduleShortCode(0)}}', '', 'No', '', '', 'No', '', '', 1, 1, '2024-09-10 16:29:41');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `orderId` int(11) NOT NULL,
  `sno` int(11) NOT NULL,
  `customerId` int(11) NOT NULL,
  `invoicePrefix` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `mobile` varchar(20) NOT NULL,
  `subTotal` float(11,2) NOT NULL,
  `tax` float(11,2) NOT NULL,
  `productDiscount` float(11,2) NOT NULL,
  `additionalCharges` text DEFAULT NULL,
  `globalDiscount` varchar(255) DEFAULT NULL,
  `paymentId` int(11) NOT NULL,
  `paymentMethod` varchar(20) NOT NULL,
  `multiplePaymentData` text DEFAULT NULL,
  `total` float(11,2) NOT NULL,
  `rewardEarned` int(11) NOT NULL,
  `rewardUsed` varchar(11) NOT NULL,
  `orderType` varchar(20) NOT NULL,
  `checkoutType` varchar(20) NOT NULL,
  `runningOrder` int(11) NOT NULL DEFAULT 0,
  `kotToken` varchar(255) NOT NULL,
  `seatingTableId` int(11) NOT NULL,
  `seatingTableHeading` varchar(20) NOT NULL,
  `hold` int(11) NOT NULL DEFAULT 0,
  `orderStatusId` int(11) NOT NULL,
  `orderStatusHeading` varchar(20) NOT NULL,
  `orderProduct` text NOT NULL,
  `orderTotal` text NOT NULL,
  `employeeId` int(11) NOT NULL DEFAULT 0,
  `posComment` varchar(500) NOT NULL,
  `posImage` varchar(255) NOT NULL,
  `deliveryDate` varchar(30) NOT NULL,
  `salesUserId` int(11) NOT NULL,
  `totalItemsInCart` int(11) NOT NULL,
  `totalQuantityInCart` int(11) NOT NULL,
  `hotel` int(1) NOT NULL DEFAULT 0,
  `hotelToken` varchar(255) NOT NULL,
  `storeId` int(11) NOT NULL DEFAULT 0,
  `userId` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `softDelete` int(11) NOT NULL DEFAULT 0,
  `insertedBy` int(11) NOT NULL,
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`orderId`, `sno`, `customerId`, `invoicePrefix`, `name`, `email`, `mobile`, `subTotal`, `tax`, `productDiscount`, `additionalCharges`, `globalDiscount`, `paymentId`, `paymentMethod`, `multiplePaymentData`, `total`, `rewardEarned`, `rewardUsed`, `orderType`, `checkoutType`, `runningOrder`, `kotToken`, `seatingTableId`, `seatingTableHeading`, `hold`, `orderStatusId`, `orderStatusHeading`, `orderProduct`, `orderTotal`, `employeeId`, `posComment`, `posImage`, `deliveryDate`, `salesUserId`, `totalItemsInCart`, `totalQuantityInCart`, `hotel`, `hotelToken`, `storeId`, `userId`, `status`, `softDelete`, `insertedBy`, `dateAdded`) VALUES
(1, 1, 1, 'INV-2024-', 'Walk In Customer', '', '0000000000', 100.00, 0.00, 0.00, NULL, 'null', 8, 'Cash', '', 100.00, 0, '0', 'undefined', 'hold', 0, '', 0, '', 1, 1, 'Completed', '', '', 0, '', '', '', 1, 0, 0, 1, '0EhSo5ROAU5msKmkEb4lhzOS5VBT5OrDov9EDtS808WaRlIBwC', 1, 1, 1, 0, 1, '2024-06-22 13:05:08'),
(2, 2, 1, 'INV-2024-', 'Walk In Customer', '', '0000000000', 200.00, 0.00, 0.00, NULL, 'null', 8, 'Cash', '', 200.00, 0, '0', 'undefined', 'hold', 0, '', 0, '', 1, 1, 'Completed', '', '', 0, '', '', '', 1, 0, 0, 1, '2nRAXwVVWPOaadNXf2nkr4xUkjWtVpGSJ8mLvlgIJJ2D6hpuOg', 1, 1, 1, 0, 1, '2024-06-22 13:06:54'),
(3, 3, 1, 'INV-2024-', 'Walk In Customer', '', '0000000000', 400.00, 0.00, 0.00, NULL, 'null', 8, 'Cash', '', 400.00, 0, '0', 'undefined', 'hold', 0, '', 0, '', 1, 1, 'Completed', '', '', 0, '', '', '', 1, 0, 0, 1, 'ZWaKYX3X6njEJptL1c9muRrfc6qh9Go3pMY4beqfIVZ1cP88MB', 1, 1, 1, 0, 1, '2024-06-22 13:07:50'),
(4, 4, 102, 'INV-2024-', 'Priyavrat Sehrawat', 'pkv172019@gmail.com', '8285187287', 57848.00, 12654.25, 0.00, '[]', 'null', 8, 'Cash', '', 70502.00, 5785, '0', 'undefined', 'finalCheckout', 0, '', 0, '', 0, 1, 'Completed', '[{\"productId\":100,\"heading\":\"Eldora Hackett III\",\"model\":\"EtfkfhSgZJ\",\"barcode\":98321009,\"cost\":1000,\"price\":57848,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":5,\"taxType\":\"Inclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":0,\"changePriceDuringBilling\":1,\"image\":null,\"relatedImage\":\"\\\"\\\"\",\"showInPos\":1,\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":2,\"dateUpdated\":\"2024-05-03 10:28:03\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:30\",\"taxHeading\":\"GST 28%\",\"taxPercent\":28,\"taxExclusiveValue\":0,\"taxInclusiveValue\":12654.25,\"tax\":12654.25,\"basePriceCost\":45193.75,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":57848,\"profit\":44193.75,\"rewardPoints\":5784.8}]', '', 0, '', '', '', 1, 1, 1, 0, '', 1, 1, 1, 0, 1, '2024-06-22 13:19:03'),
(5, 5, 1, 'INV-2024-', 'Walk In Customer', '', '0000000000', 64562.00, 3228.10, 0.00, '[]', 'null', 8, 'Cash', '', 67790.00, 6456, '0', 'undefined', 'hold', 0, '', 1, 'Table No 1', 1, 2, 'Running/Hold', '[{\"productId\":98,\"heading\":\"Jaida Grimes\",\"model\":\"lUnUIsoJZX\",\"barcode\":88180650,\"cost\":32281,\"price\":64562,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":2,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"softDelete\":0,\"storeId\":1,\"userId\":2,\"updatedBy\":0,\"insertedBy\":2,\"dateUpdated\":\"2024-03-31 10:56:29\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:29\",\"taxHeading\":\"GST 5%\",\"taxPercent\":5,\"taxExclusiveValue\":3228.1000000000004,\"taxInclusiveValue\":0,\"tax\":3228.1000000000004,\"basePriceCost\":64562,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":64562,\"profit\":32281,\"rewardPoints\":6456.200000000001}]', '', 0, '', '', '', 1, 1, 1, 0, '', 1, 1, 1, 0, 1, '2024-06-22 13:19:44'),
(6, 6, 1, 'INV-2024-', 'Walk In Customer', '', '0000000000', 184372.00, 33186.96, 0.00, '[]', 'null', 8, 'Cash', '', 217559.00, 18437, '0', 'undefined', 'finalCheckout', 0, '', 1, 'Table No 1', 0, 1, 'Completed', '[{\"productId\":99,\"heading\":\"Angel Hills\",\"model\":\"q8qHbH3aUV\",\"barcode\":19919785,\"cost\":92186,\"price\":184372,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":4,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"softDelete\":0,\"storeId\":1,\"userId\":2,\"updatedBy\":0,\"insertedBy\":2,\"dateUpdated\":\"2024-04-30 13:42:53\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:29\",\"taxHeading\":\"GST 18%\",\"taxPercent\":18,\"taxExclusiveValue\":33186.96,\"taxInclusiveValue\":0,\"tax\":33186.96,\"basePriceCost\":184372,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":184372,\"profit\":92186,\"rewardPoints\":18437.2}]', '', 0, '', '', '', 1, 1, 1, 0, '', 1, 1, 1, 0, 1, '2024-06-22 13:20:09'),
(7, 7, 1, 'INV-2024-', 'Walk In Customer', '', '0000000000', 333982.00, 37675.26, 0.00, '[]', 'null', 8, 'Cash', '', 371657.00, 33398, '0', 'undefined', 'sendToKot', 1, 'NJXgbYQBJzmMIIdjUVA2ly2NkJ0pDipkiHqc3gfw778vLjf6Y7CANWI5iS99u3DlhTCgvp75fGZ5Jy288CySe5qZumZz6Mmu0jbCmXVwZKiFeli2GhiHQUDYuUClno6CgXkQz80MnNIpXH6lNRAwC94dw9BLDYT3qkzjIbvD6AZf1fM84vBlkukfbZQzQhzvDZ1G73Ckytbx9SQsHvh7bjrH8pxi8RNRFEdvd6t8qr8cjpXS9hAqpVnPmaWsW3S', 1, 'Table No 1', 1, 1, 'Completed', '[{\"productId\":99,\"heading\":\"Angel Hills\",\"model\":\"q8qHbH3aUV\",\"barcode\":19919785,\"cost\":92186,\"price\":184372,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":4,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"softDelete\":0,\"storeId\":1,\"userId\":2,\"updatedBy\":0,\"insertedBy\":2,\"dateUpdated\":\"2024-04-30 13:42:53\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:29\",\"taxHeading\":\"GST 18%\",\"taxPercent\":18,\"taxExclusiveValue\":33186.96,\"taxInclusiveValue\":0,\"tax\":33186.96,\"basePriceCost\":184372,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":184372,\"profit\":92186,\"rewardPoints\":18437.2,\"sentToKot\":1,\"kotViewed\":0},{\"productId\":96,\"heading\":\"Tressa Wisozk\",\"model\":\"YDJ5ntBuK1\",\"barcode\":78676059,\"cost\":74805,\"price\":149610,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":6,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"softDelete\":0,\"storeId\":1,\"userId\":2,\"updatedBy\":0,\"insertedBy\":2,\"dateUpdated\":\"2024-03-31 10:56:29\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:29\",\"taxHeading\":\"GST 3 %\",\"taxPercent\":3,\"taxExclusiveValue\":4488.3,\"taxInclusiveValue\":0,\"tax\":4488.3,\"basePriceCost\":149610,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":149610,\"profit\":74805,\"rewardPoints\":14961,\"sentToKot\":1,\"kotViewed\":0}]', '', 0, '', '', '', 1, 2, 2, 0, '', 1, 1, 1, 0, 1, '2024-06-22 13:21:20'),
(8, 8, 1, 'INV-2024-', 'Walk In Customer', '', '0000000000', 150210.00, 4488.30, 0.00, '[]', 'null', 8, 'Cash', '', 154698.00, 14961, '0', 'undefined', 'hold', 0, 'aS6sDgJtCEU8qtUnJpG52hW6P0rEcF7JNQgxJmDjfKFqVujGbVREfIyRCJQhmVGOdfOF0GE2iIMMQ2e2hbP2RpBwiK5E9WZfEXod2K0oyljtmP3hyrKFDvAhcS5y5MgSHGN0et8yXz0nOD2WN8zY4Xav3Y0FQYO0PY9VkrnPcR991eG4RPo0W41HDaQN0qbaZO8nELoUAc1Zwx3AN0N1Hgq7TUdg38wei5Cx9vnuDUmMYpoP4YAvxBKSb1gQvmZ', 0, '', 1, 1, 'Completed', '[{\"productId\":96,\"heading\":\"Tressa Wisozk\",\"model\":\"YDJ5ntBuK1\",\"barcode\":78676059,\"cost\":74805,\"price\":149610,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":6,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"softDelete\":0,\"storeId\":1,\"userId\":2,\"updatedBy\":0,\"insertedBy\":2,\"dateUpdated\":\"2024-03-31 10:56:29\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:29\",\"taxHeading\":\"GST 3 %\",\"taxPercent\":3,\"taxExclusiveValue\":4488.3,\"taxInclusiveValue\":0,\"tax\":4488.3,\"basePriceCost\":149610,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":149610,\"profit\":74805,\"rewardPoints\":14961}]', '', 0, '', '', '', 1, 1, 1, 1, 'pdGOpOwfBCt9MukPpUPxOlfGT70dIOmTpF2ILWfaL7AvFFygtn', 1, 1, 1, 0, 1, '2024-06-22 13:22:56'),
(9, 9, 1, 'INV-2024-', 'Walk In Customer', '', '0000000000', 879716.00, 85938.12, 0.00, '[]', 'null', 8, 'Cash', '', 965654.00, 87971, '0', 'undefined', 'finalCheckout', 0, 'NcIg3Nkego5MfGsdWsPXJCps9g1O0GJIZXSVgdweHOaKSah5TkHwu7qJZuzY2cF8dO7queZfPwok041BfG2ymQ59AvTlMYI5Ud98iDDf37fgYM9vgLbZFGFYQ5qsHX558mJccWivmYsCsXEkc34B7xHHIEDFfGDLwzD5FBSlZ1fRvRT5ICE3MK77NhZaIU6CR7j42ZqApcAFdSifFK6Cx5QUAX2oMGeXXIQwqRlyH5PBA9lN9H24tdc7RoC9L8i', 0, '', 0, 1, 'Completed', '[{\"productId\":99,\"heading\":\"Angel Hills\",\"model\":\"q8qHbH3aUV\",\"barcode\":19919785,\"cost\":92186,\"price\":184372,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":4,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":\"2\",\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"softDelete\":0,\"storeId\":1,\"userId\":2,\"updatedBy\":0,\"insertedBy\":2,\"dateUpdated\":\"2024-04-30 13:42:53\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:29\",\"taxHeading\":\"GST 18%\",\"taxPercent\":18,\"taxExclusiveValue\":33186.96,\"taxInclusiveValue\":0,\"tax\":66373.92,\"basePriceCost\":368744,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":368744,\"profit\":184372,\"rewardPoints\":36874.4},{\"productId\":96,\"heading\":\"Tressa Wisozk\",\"model\":\"YDJ5ntBuK1\",\"barcode\":78676059,\"cost\":74805,\"price\":149610,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":6,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":\"2\",\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"softDelete\":0,\"storeId\":1,\"userId\":2,\"updatedBy\":0,\"insertedBy\":2,\"dateUpdated\":\"2024-03-31 10:56:29\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:29\",\"taxHeading\":\"GST 3 %\",\"taxPercent\":3,\"taxExclusiveValue\":4488.3,\"taxInclusiveValue\":0,\"tax\":8976.6,\"basePriceCost\":299220,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":299220,\"profit\":149610,\"rewardPoints\":29922},{\"productId\":97,\"heading\":\"Dr. Estell Cummings IV\",\"model\":\"Fwh6tO8IA6\",\"barcode\":94433959,\"cost\":73595,\"price\":147190,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":2,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"softDelete\":0,\"storeId\":1,\"userId\":2,\"updatedBy\":0,\"insertedBy\":2,\"dateUpdated\":\"2024-03-31 10:56:29\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:29\",\"taxHeading\":\"GST 5%\",\"taxPercent\":5,\"taxExclusiveValue\":7359.5,\"taxInclusiveValue\":0,\"tax\":7359.5,\"basePriceCost\":147190,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":147190,\"profit\":73595,\"rewardPoints\":14719},{\"productId\":98,\"heading\":\"Jaida Grimes\",\"model\":\"lUnUIsoJZX\",\"barcode\":88180650,\"cost\":32281,\"price\":64562,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":2,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"softDelete\":0,\"storeId\":1,\"userId\":2,\"updatedBy\":0,\"insertedBy\":2,\"dateUpdated\":\"2024-03-31 10:56:29\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:29\",\"taxHeading\":\"GST 5%\",\"taxPercent\":5,\"taxExclusiveValue\":3228.1000000000004,\"taxInclusiveValue\":0,\"tax\":3228.1000000000004,\"basePriceCost\":64562,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":64562,\"profit\":32281,\"rewardPoints\":6456.200000000001}]', '', 0, '', '', '', 1, 4, 6, 0, '', 1, 1, 1, 0, 1, '2024-06-25 12:41:53'),
(10, 10, 1, 'INV-2024-', 'Walk In Customer', '', '0000000000', 426592.00, 79028.17, 0.00, '[]', 'null', 8, 'Cash', '', 505620.00, 42659, '0', 'undefined', 'finalCheckout', 0, '5khnQMs59Yxwf1t0NqsKTKRyejoHKeGS0rXOS0b5iYneEkAFU45ekjEsH9MfJaJ5u8ZNfTTkdfj9rTDpvGBsQ8hWlOXmTPEsuUmH3C43GWvnlMDxqjtpsPj3rJx6t1JbvUgmpbsFnLoAjtccBpYdR6YzEROCazxE9AgZ9AyHoDcBj6aTwSDXimZYGgLt6x6wHOpEMn6IGgsH2yfVhadjEf8q8JlBKVGxOaCmP9OJYdnPzt3068liAQAGLzKnhqT', 0, '', 0, 1, 'Completed', '[{\"productId\":100,\"heading\":\"Eldora Hackett III\",\"model\":\"EtfkfhSgZJ\",\"barcode\":98321009,\"cost\":1000,\"price\":57848,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":5,\"taxType\":\"Inclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":0,\"changePriceDuringBilling\":1,\"image\":null,\"relatedImage\":\"\\\"\\\"\",\"showInPos\":1,\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":2,\"dateUpdated\":\"2024-05-03 10:28:03\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:30\",\"taxHeading\":\"GST 28%\",\"taxPercent\":28,\"taxExclusiveValue\":0,\"taxInclusiveValue\":12654.25,\"tax\":12654.25,\"basePriceCost\":45193.75,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":57848,\"profit\":44193.75,\"rewardPoints\":5784.8},{\"productId\":99,\"heading\":\"Angel Hills\",\"model\":\"q8qHbH3aUV\",\"barcode\":19919785,\"cost\":92186,\"price\":184372,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":4,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":\"2\",\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"softDelete\":0,\"storeId\":1,\"userId\":2,\"updatedBy\":0,\"insertedBy\":2,\"dateUpdated\":\"2024-06-29 12:24:50\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:29\",\"taxHeading\":\"GST 18%\",\"taxPercent\":18,\"taxExclusiveValue\":33186.96,\"taxInclusiveValue\":0,\"tax\":66373.92,\"basePriceCost\":368744,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":368744,\"profit\":184372,\"rewardPoints\":36874.4}]', '', 0, '', '', '', 1, 2, 3, 0, '', 1, 1, 1, 0, 1, '2024-06-29 13:56:17'),
(11, 11, 1, 'INV-2024-', 'Walk In Customer', '', '0000000000', 207958.00, 17142.55, 0.00, '[]', 'null', 8, 'Cash', '', 225101.00, 20746, '0', 'undefined', 'finalCheckout', 0, 'Nz4BOixw1KaGZffG17HIZJpyEZvU78gO7eKoEptZZYZzqGSX7N28oEj8Yra87pSNqGis3oQ9qVyZObU8swGh3qOEKgStrPfVnAnYUc6WCGmKMPhG16ZKRgovypXa9Ex1dmAjjqRZQRLsF6OO5CFS7WBvPcHHDmY70hgnayR7EJwci0mktzSRNyws588v4pswg5L9YimYTjzu2l4LYl7BdecZJYR7vCIKBwtGRxOCw4ZAo4kCIPoK35FXFq5yaii', 0, '', 0, 1, 'Completed', '[{\"productId\":100,\"heading\":\"Eldora Hackett III\",\"model\":\"EtfkfhSgZJ\",\"barcode\":98321009,\"cost\":1000,\"price\":57848,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":5,\"taxType\":\"Inclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":0,\"changePriceDuringBilling\":1,\"image\":null,\"relatedImage\":\"\\\"\\\"\",\"showInPos\":1,\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":2,\"dateUpdated\":\"2024-06-29 13:58:47\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:30\",\"taxHeading\":\"GST 28%\",\"taxPercent\":28,\"taxExclusiveValue\":0,\"taxInclusiveValue\":12654.25,\"tax\":12654.25,\"basePriceCost\":45193.75,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":57848,\"profit\":44193.75,\"rewardPoints\":5784.8},{\"productId\":96,\"heading\":\"Tressa Wisozk\",\"model\":\"YDJ5ntBuK1\",\"barcode\":78676059,\"cost\":74805,\"price\":149610,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":6,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"softDelete\":0,\"storeId\":1,\"userId\":2,\"updatedBy\":0,\"insertedBy\":2,\"dateUpdated\":\"2024-06-29 12:30:13\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:29\",\"taxHeading\":\"GST 3 %\",\"taxPercent\":3,\"taxExclusiveValue\":4488.3,\"taxInclusiveValue\":0,\"tax\":4488.3,\"basePriceCost\":149610,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":149610,\"profit\":74805,\"rewardPoints\":14961}]', '', 0, '', '', '', 1, 2, 2, 1, 'Sq1c58uPlQWuAPUS3CJwJAmZJDe9VqbFM3HnROcUNwxDeGUb2t', 1, 1, 1, 0, 1, '2024-06-29 14:09:47'),
(12, 12, 1, 'INV-2024-', 'Walk In Customer', '', '0000000000', 500.00, 0.00, 0.00, '[]', 'null', 8, 'Cash', '', 500.00, 50, '0', 'undefined', 'hold', 0, 'afZY9zykEPwFnaqlfQnR15E72VZv6r6FkZNLWha5e2yQHbPWTBEawLcIkr1HSvYvWW92c31wKsyYVqC62hBWVq11MqHs65e2QMy8m6flaq2udvZrHsUssMjmkzIR0klUAdhmVSBsN0kIvDrPny9ue9J6YzZpKumhluZaFfX7drs7asHznu7AjpDKYjVj9xhbsOxJfRXYj88Kofg6frz44mPkUlYNaGXMcurlrSqD8gagxwIs5FQv6oBa5rJW7Ki', 0, '', 1, 1, 'Completed', '', '', 0, '', '', '', 1, 1, 1, 1, 'VPMEwkMajBJPvDgTBdHBFz0YwUuhDAQXwmgrEdxaReTdGlqe4v', 1, 1, 1, 0, 1, '2024-07-05 10:18:50'),
(13, 13, 1, 'INV-2024-', 'Walk In Customer', '', '0000000000', 500.00, 0.00, 0.00, '[]', 'null', 8, 'Cash', '', 500.00, 50, '0', 'undefined', 'hold', 0, 'ZvBpvBop1HTy5UjCzJKd9khRmgJKk9yyDoDsbJmphj1s2VBJxFzZqa1OY96BL02eYdpKK44YA2pQyCGEGxReDALbjKmYXKJtvX95t4IBqyvlEZ5G377CFZMksabPCBRd3olBC4nwezDe4lk5xqGwT9WabCzVicM1FcvC7Pp4SzKIS4RvMwT1nCJ4SzjnmPN56D36XIsQnN4GsgEEs36PYtP63d1ael9XADIBHyEXk0XuMZNJqX94N1xPOGBH5MP', 0, '', 1, 1, 'Completed', '', '', 0, '', '', '', 1, 1, 1, 1, 'VPMEwkMajBJPvDgTBdHBFz0YwUuhDAQXwmgrEdxaReTdGlqe4v', 1, 1, 1, 0, 1, '2024-07-05 10:19:05'),
(14, 14, 1, 'INV-2024-', 'Walk In Customer', '', '0000000000', 211958.00, 17142.55, 0.00, '[]', 'null', 8, 'Cash', '', 229101.00, 21196, '0', 'undefined', 'hold', 0, 'DTIYPQDyWQEgHP44SKjEpL4hkZjDnZeibKvbPjcg8pf5nthLROZIvPGGuQIQCW1bng3NLL19rrDmLbaOp7ew9E4rCZCVEbjRrAzOVSpnG64qlZRWQUzGd6Or1VMqWD5KEvig64bQso5mO9mASrrHDscocGCBOoLkSnylFd6iliYOAx1brUcbZhWTcuV8fNojw5xnZXMo1CV4wKcehILUTb4sYcisAvl0gN6kNBOBMle1flM4ESCke6rIApiUeeR', 0, '', 1, 1, 'Completed', '[{\"productId\":102,\"heading\":\"Hotel Room 1\",\"model\":\"Hotel\",\"barcode\":98321014,\"cost\":500,\"price\":4500,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":0,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":0,\"changePriceDuringBilling\":0,\"image\":\"public\\/assets\\/uploads\\/ship_shop_pos_default\\/693478300.jpeg\",\"relatedImage\":\"[\\\"public\\\\\\/assets\\\\\\/uploads\\\\\\/ship_shop_pos_default\\\\\\/419239602.jpeg\\\"]\",\"showInPos\":1,\"productType\":\"Hotel\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":1,\"dateUpdated\":\"2024-07-02 13:28:07\",\"status\":1,\"dateAdded\":\"2024-07-02 11:43:02\",\"taxHeading\":\"\",\"taxPercent\":0,\"taxExclusiveValue\":0,\"taxInclusiveValue\":0,\"tax\":0,\"basePriceCost\":0,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":4500,\"profit\":-500,\"rewardPoints\":450},{\"productId\":100,\"heading\":\"Eldora Hackett III\",\"model\":\"EtfkfhSgZJ\",\"barcode\":98321009,\"cost\":1000,\"price\":57848,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":5,\"taxType\":\"Inclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":0,\"changePriceDuringBilling\":1,\"image\":null,\"relatedImage\":\"\\\"\\\"\",\"showInPos\":1,\"productType\":\"Product\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":2,\"dateUpdated\":\"2024-07-02 11:41:08\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:30\",\"taxHeading\":\"GST 28%\",\"taxPercent\":28,\"taxExclusiveValue\":0,\"taxInclusiveValue\":12654.25,\"tax\":12654.25,\"basePriceCost\":45193.75,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":57848,\"profit\":44193.75,\"rewardPoints\":5784.8},{\"productId\":96,\"heading\":\"Tressa Wisozk\",\"model\":\"YDJ5ntBuK1\",\"barcode\":78676059,\"cost\":74805,\"price\":149610,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":6,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"productType\":\"Product\",\"softDelete\":0,\"storeId\":1,\"userId\":2,\"updatedBy\":0,\"insertedBy\":2,\"dateUpdated\":\"2024-07-02 11:41:08\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:29\",\"taxHeading\":\"GST 3 %\",\"taxPercent\":3,\"taxExclusiveValue\":4488.3,\"taxInclusiveValue\":0,\"tax\":4488.3,\"basePriceCost\":149610,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":149610,\"profit\":74805,\"rewardPoints\":14961}]', '', 0, '', '', '', 1, 3, 3, 1, 'VPMEwkMajBJPvDgTBdHBFz0YwUuhDAQXwmgrEdxaReTdGlqe4v', 1, 1, 1, 0, 1, '2024-07-05 10:28:36'),
(15, 15, 1, 'INV-2024-', 'Walk In Customer', '', '0000000000', 184372.00, 33186.96, 0.00, '[]', 'null', 8, 'Cash', '', 217559.00, 18437, '0', 'undefined', 'finalCheckout', 0, 'wsjdBYnrJbF4KyKrCgsbH5NlytMJHTcKgEO0XYUhF6yGntsGMIzO27WMz9zLF1jAKyT7KFbnCm4BXult1ZfeEMGjfNbfrLonAorAI6UZ1OZArTJJ3mRlhUbQo95FxCakgizDqZCrPMES9gqCimCDnyhhgt4hFTL2b4yVwms5eJcie27GNRTWqRuIYB71dGLrCTQcbYOTnIqJGneoVAYXWkfcsUjniXG9VT4mxXRox5PWA81f1UeR3yavNdhHu7o', 0, '', 0, 1, 'Completed', '[{\"productId\":99,\"heading\":\"Angel Hills\",\"model\":\"q8qHbH3aUV\",\"barcode\":19919785,\"cost\":92186,\"price\":184372,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":4,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"productType\":\"Product\",\"softDelete\":0,\"storeId\":1,\"userId\":2,\"updatedBy\":0,\"insertedBy\":2,\"dateUpdated\":\"2024-07-02 11:41:08\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:29\",\"taxHeading\":\"GST 18%\",\"taxPercent\":18,\"taxExclusiveValue\":33186.96,\"taxInclusiveValue\":0,\"tax\":33186.96,\"basePriceCost\":184372,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":184372,\"profit\":92186,\"rewardPoints\":18437.2}]', '', 0, '', '', '', 1, 1, 1, 0, '', 1, 1, 1, 0, 1, '2024-07-17 13:33:13'),
(16, 16, 1, 'INV-2024-', 'Walk In Customer', '', '0000000000', 880388.00, 119135.25, 0.00, '[]', 'null', 8, 'Cash', '', 999523.00, 88039, '0', 'undefined', 'finalCheckout', 0, 'cuouauyddWvwNwNXYPwWWhS89TZtXprMtAAnfs0Mne3sas8SueDmmuGejDP3mn92FyRBeUxNbFp1FKWd0ZLD4Eimb2YxLUVq2N9KafQvTrdkEuX0AOUqH2yWLBYIixr6Y3Fk3cjoYdC5Bpq3qvKXmWkf3D3Pv6pwrfNzesoF5riaiWGCAMGoMpMdQaKmK0ANW8xSaW9iLoyGjtBHrsusKhW7gkPvKZikjLO6XhXi7pNaIsw4iipBLAvvLUi6760', 0, '', 0, 1, 'Completed', '[{\"productId\":99,\"heading\":\"Angel Hills\",\"model\":\"q8qHbH3aUV\",\"barcode\":19919785,\"cost\":92186,\"price\":184372,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":4,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":\"2\",\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"productType\":\"Product\",\"softDelete\":0,\"storeId\":1,\"userId\":2,\"updatedBy\":0,\"insertedBy\":2,\"dateUpdated\":\"2024-07-02 11:41:08\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:29\",\"taxHeading\":\"GST 18%\",\"taxPercent\":18,\"taxExclusiveValue\":33186.96,\"taxInclusiveValue\":0,\"tax\":66373.92,\"basePriceCost\":368744,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":368744,\"profit\":184372,\"rewardPoints\":36874.4,\"sentToKot\":1,\"kotViewed\":0},{\"productId\":100,\"heading\":\"Eldora Hackett III\",\"model\":\"EtfkfhSgZJ\",\"barcode\":98321009,\"cost\":1000,\"price\":57848,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":5,\"taxType\":\"Inclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":0,\"changePriceDuringBilling\":1,\"image\":null,\"relatedImage\":\"\\\"\\\"\",\"showInPos\":1,\"productType\":\"Product\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":2,\"dateUpdated\":\"2024-07-02 11:41:08\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:30\",\"taxHeading\":\"GST 28%\",\"taxPercent\":28,\"taxExclusiveValue\":0,\"taxInclusiveValue\":12654.25,\"tax\":12654.25,\"basePriceCost\":45193.75,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":57848,\"profit\":44193.75,\"rewardPoints\":5784.8},{\"productId\":97,\"heading\":\"Dr. Estell Cummings IV\",\"model\":\"Fwh6tO8IA6\",\"barcode\":94433959,\"cost\":73595,\"price\":147190,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":2,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"productType\":\"Product\",\"softDelete\":0,\"storeId\":1,\"userId\":2,\"updatedBy\":0,\"insertedBy\":2,\"dateUpdated\":\"2024-07-02 11:41:08\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:29\",\"taxHeading\":\"GST 5%\",\"taxPercent\":5,\"taxExclusiveValue\":7359.5,\"taxInclusiveValue\":0,\"tax\":7359.5,\"basePriceCost\":147190,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":147190,\"profit\":73595,\"rewardPoints\":14719},{\"productId\":96,\"heading\":\"Tressa Wisozk\",\"model\":\"YDJ5ntBuK1\",\"barcode\":78676059,\"cost\":74805,\"price\":149610,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":6,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"productType\":\"Product\",\"softDelete\":0,\"storeId\":1,\"userId\":2,\"updatedBy\":0,\"insertedBy\":2,\"dateUpdated\":\"2024-07-02 11:41:08\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:29\",\"taxHeading\":\"GST 3 %\",\"taxPercent\":3,\"taxExclusiveValue\":4488.3,\"taxInclusiveValue\":0,\"tax\":4488.3,\"basePriceCost\":149610,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":149610,\"profit\":74805,\"rewardPoints\":14961},{\"productId\":95,\"heading\":\"Milford Herman\",\"model\":\"5K1IvC7bgF\",\"barcode\":84439094,\"cost\":78498,\"price\":156996,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":4,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"productType\":\"Product\",\"softDelete\":0,\"storeId\":1,\"userId\":2,\"updatedBy\":0,\"insertedBy\":2,\"dateUpdated\":\"2024-07-02 11:41:08\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:29\",\"taxHeading\":\"GST 18%\",\"taxPercent\":18,\"taxExclusiveValue\":28259.28,\"taxInclusiveValue\":0,\"tax\":28259.28,\"basePriceCost\":156996,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":156996,\"profit\":78498,\"rewardPoints\":15699.6}]', '', 0, '', '', '', 1, 5, 6, 0, '', 1, 1, 1, 0, 1, '2024-07-17 13:36:05'),
(17, 17, 1, 'INV-2024-', 'Walk In Customer', '', '0000000000', 1142664.00, 137904.16, 0.00, '[]', 'null', 8, 'Cash', '', 1280568.00, 114267, '0', 'undefined', 'finalCheckout', 0, 'Y0BiCrZROgxSPKIIVbypEgnPLc6PoNG4SdZvplN4RQxssCN2B5bZoNWA86uaDtCjEaAbeXByO5WRS4DqzAi3rG1YMDQ4hKtS7Vo8FTeszPRvGZI49xoXvl9sWOPpniOFvoCl27plrORYujrPnvybw94mifQC17QyRMtlErajbUGjCFMO7WgqmtGATnCz0SIfnqkVxrGPQTzvZCKlGuYK4AjPVzQZ9S13zro8fXBTuWAgMr5I5HVA86MkzFSYD9i', 0, '', 0, 1, 'Completed', '[{\"productId\":100,\"heading\":\"Eldora Hackett III\",\"model\":\"EtfkfhSgZJ\",\"barcode\":98321009,\"cost\":1000,\"price\":57848,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":5,\"taxType\":\"Inclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":0,\"changePriceDuringBilling\":1,\"image\":null,\"relatedImage\":\"\\\"\\\"\",\"showInPos\":1,\"productType\":\"Product\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":2,\"dateUpdated\":\"2024-07-02 11:41:08\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:30\",\"taxHeading\":\"GST 28%\",\"taxPercent\":28,\"taxExclusiveValue\":0,\"taxInclusiveValue\":12654.25,\"tax\":12654.25,\"basePriceCost\":45193.75,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":57848,\"profit\":44193.75,\"rewardPoints\":5784.8},{\"productId\":99,\"heading\":\"Angel Hills\",\"model\":\"q8qHbH3aUV\",\"barcode\":19919785,\"cost\":92186,\"price\":184372,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":4,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"productType\":\"Product\",\"softDelete\":0,\"storeId\":1,\"userId\":2,\"updatedBy\":0,\"insertedBy\":2,\"dateUpdated\":\"2024-07-02 11:41:08\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:29\",\"taxHeading\":\"GST 18%\",\"taxPercent\":18,\"taxExclusiveValue\":33186.96,\"taxInclusiveValue\":0,\"tax\":33186.96,\"basePriceCost\":184372,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":184372,\"profit\":92186,\"rewardPoints\":18437.2},{\"productId\":97,\"heading\":\"Dr. Estell Cummings IV\",\"model\":\"Fwh6tO8IA6\",\"barcode\":94433959,\"cost\":73595,\"price\":147190,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":2,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"productType\":\"Product\",\"softDelete\":0,\"storeId\":1,\"userId\":2,\"updatedBy\":0,\"insertedBy\":2,\"dateUpdated\":\"2024-07-02 11:41:08\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:29\",\"taxHeading\":\"GST 5%\",\"taxPercent\":5,\"taxExclusiveValue\":7359.5,\"taxInclusiveValue\":0,\"tax\":7359.5,\"basePriceCost\":147190,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":147190,\"profit\":73595,\"rewardPoints\":14719},{\"productId\":95,\"heading\":\"Milford Herman\",\"model\":\"5K1IvC7bgF\",\"barcode\":84439094,\"cost\":78498,\"price\":156996,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":4,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"productType\":\"Product\",\"softDelete\":0,\"storeId\":1,\"userId\":2,\"updatedBy\":0,\"insertedBy\":2,\"dateUpdated\":\"2024-07-02 11:41:08\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:29\",\"taxHeading\":\"GST 18%\",\"taxPercent\":18,\"taxExclusiveValue\":28259.28,\"taxInclusiveValue\":0,\"tax\":28259.28,\"basePriceCost\":156996,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":156996,\"profit\":78498,\"rewardPoints\":15699.6},{\"productId\":94,\"heading\":\"Dina Bogan\",\"model\":\"iUuzL6troJ\",\"barcode\":97953843,\"cost\":66236,\"price\":132472,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":5,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"productType\":\"Product\",\"softDelete\":0,\"storeId\":1,\"userId\":2,\"updatedBy\":0,\"insertedBy\":2,\"dateUpdated\":\"2024-07-02 11:41:08\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:28\",\"taxHeading\":\"GST 28%\",\"taxPercent\":28,\"taxExclusiveValue\":37092.16,\"taxInclusiveValue\":0,\"tax\":37092.16,\"basePriceCost\":132472,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":132472,\"profit\":66236,\"rewardPoints\":13247.2},{\"productId\":92,\"heading\":\"Jordi Gottlieb\",\"model\":\"4SEmGmB2V0\",\"barcode\":91524823,\"cost\":68479,\"price\":136958,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":2,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"productType\":\"Product\",\"softDelete\":0,\"storeId\":1,\"userId\":2,\"updatedBy\":0,\"insertedBy\":2,\"dateUpdated\":\"2024-07-02 11:41:08\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:28\",\"taxHeading\":\"GST 5%\",\"taxPercent\":5,\"taxExclusiveValue\":6847.900000000001,\"taxInclusiveValue\":0,\"tax\":6847.900000000001,\"basePriceCost\":136958,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":136958,\"profit\":68479,\"rewardPoints\":13695.800000000001},{\"productId\":91,\"heading\":\"Destini Dach III\",\"model\":\"aMGhdlOf5x\",\"barcode\":13338465,\"cost\":41190,\"price\":82380,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":1,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"productType\":\"Product\",\"softDelete\":0,\"storeId\":1,\"userId\":2,\"updatedBy\":0,\"insertedBy\":2,\"dateUpdated\":\"2024-07-02 11:41:08\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:28\",\"taxHeading\":\"CGST 2.5%\",\"taxPercent\":2.5,\"taxExclusiveValue\":2059.5,\"taxInclusiveValue\":0,\"tax\":2059.5,\"basePriceCost\":82380,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":82380,\"profit\":41190,\"rewardPoints\":8238},{\"productId\":87,\"heading\":\"Dr. Leanna O\'Conner\",\"model\":\"glHBtmrjm1\",\"barcode\":80244841,\"cost\":86668,\"price\":173336,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":2,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"productType\":\"Product\",\"softDelete\":0,\"storeId\":1,\"userId\":2,\"updatedBy\":0,\"insertedBy\":2,\"dateUpdated\":\"2024-07-02 11:41:08\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:27\",\"taxHeading\":\"GST 5%\",\"taxPercent\":5,\"taxExclusiveValue\":8666.800000000001,\"taxInclusiveValue\":0,\"tax\":8666.800000000001,\"basePriceCost\":173336,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":173336,\"profit\":86668,\"rewardPoints\":17333.600000000002},{\"productId\":88,\"heading\":\"Lily Friesen\",\"model\":\"EblwIOsmA0\",\"barcode\":78163971,\"cost\":35556,\"price\":71112,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":1,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"productType\":\"Product\",\"softDelete\":0,\"storeId\":1,\"userId\":2,\"updatedBy\":0,\"insertedBy\":2,\"dateUpdated\":\"2024-07-02 11:41:08\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:27\",\"taxHeading\":\"CGST 2.5%\",\"taxPercent\":2.5,\"taxExclusiveValue\":1777.8000000000002,\"taxInclusiveValue\":0,\"tax\":1777.8000000000002,\"basePriceCost\":71112,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":71112,\"profit\":35556,\"rewardPoints\":7111.200000000001}]', '', 0, '', '', '', 1, 9, 9, 0, '', 1, 1, 1, 0, 1, '2024-07-17 15:49:49'),
(18, 18, 1, 'INV-2024-', 'Walk In Customer', '', '0000000000', 242220.00, 45841.21, 0.00, '[]', 'null', 8, 'Cash', '', 288061.00, 24222, '0', 'undefined', 'finalCheckout', 0, '04BOkaTx6VNsY478DVstReAcOS9tw0kmj6UFgv050KPzgywgr3Dw5kaZiPUFJumRWhXY4TjEKkTNakBrpnwDJU2ueDYyRptJW4qJxj17fQP0ZEHaNnntVP5K97QOOfJNitOAQXw3fDYIJNxmmtpeaNKSliGdQGkX7WGBnzWtdFU0SQt3wXLbVzVcm0oEyWBjPcg50JYlPgu25QV6VGOkQNCtZ39r90Um458mtVFdRLnKDSixnxxeCjIXTi8XVBs', 0, '', 0, 1, 'Completed', '[{\"productId\":100,\"heading\":\"Eldora Hackett III\",\"model\":\"EtfkfhSgZJ\",\"barcode\":98321009,\"cost\":1000,\"price\":57848,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":5,\"taxType\":\"Inclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":0,\"changePriceDuringBilling\":1,\"image\":null,\"relatedImage\":\"\\\"\\\"\",\"showInPos\":1,\"productType\":\"Product\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":2,\"dateUpdated\":\"2024-07-02 11:41:08\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:30\",\"taxHeading\":\"GST 28%\",\"taxPercent\":28,\"taxExclusiveValue\":0,\"taxInclusiveValue\":12654.25,\"tax\":12654.25,\"basePriceCost\":45193.75,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":57848,\"profit\":44193.75,\"rewardPoints\":5784.8},{\"productId\":99,\"heading\":\"Angel Hills\",\"model\":\"q8qHbH3aUV\",\"barcode\":19919785,\"cost\":92186,\"price\":184372,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":4,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"productType\":\"Product\",\"softDelete\":0,\"storeId\":1,\"userId\":2,\"updatedBy\":0,\"insertedBy\":2,\"dateUpdated\":\"2024-07-02 11:41:08\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:29\",\"taxHeading\":\"GST 18%\",\"taxPercent\":18,\"taxExclusiveValue\":33186.96,\"taxInclusiveValue\":0,\"tax\":33186.96,\"basePriceCost\":184372,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":184372,\"profit\":92186,\"rewardPoints\":18437.2}]', '', 0, '', '', '', 1, 2, 2, 0, '', 1, 1, 1, 0, 1, '2024-07-18 11:34:41'),
(19, 19, 1, 'INV-2024-', 'Walk In Customer', '', '0000000000', 242220.00, 45841.21, 0.00, '[]', 'null', 8, 'Cash', '', 288061.00, 24222, '0', 'undefined', 'finalCheckout', 0, 'wa7td4Q99qZWq2FTTk4UPXpSQ2lDpAX41qSM3k1c3H8VfJhg0i2xq6ExBasN2Z8a5K75bVADPI7NjFU7CFAeDRODTZTEson85hCJkBjmw7oTixnR3VQXbk99t0o4CPiL5lAgS9lmnEDPzrJkyfKEvlup0WCizJPeNX3ysOU5pSIf8rhFeo5hHMJc2tq2min2qz9sL3IKpYkFnnrXOAIQGbnh3rgbPfZxkF1jB8aAAsUqtIN2iW9qzqIfxuIWE4L', 0, '', 0, 1, 'Completed', '[{\"productId\":100,\"heading\":\"Eldora Hackett III\",\"model\":\"EtfkfhSgZJ\",\"barcode\":98321009,\"cost\":1000,\"price\":57848,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":5,\"taxType\":\"Inclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":0,\"changePriceDuringBilling\":1,\"image\":null,\"relatedImage\":\"\\\"\\\"\",\"showInPos\":1,\"productType\":\"Product\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":2,\"dateUpdated\":\"2024-07-02 11:41:08\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:30\",\"taxHeading\":\"GST 28%\",\"taxPercent\":28,\"taxExclusiveValue\":0,\"taxInclusiveValue\":12654.25,\"tax\":12654.25,\"basePriceCost\":45193.75,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":57848,\"profit\":44193.75,\"rewardPoints\":5784.8},{\"productId\":99,\"heading\":\"Angel Hills\",\"model\":\"q8qHbH3aUV\",\"barcode\":19919785,\"cost\":92186,\"price\":184372,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":4,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"productType\":\"Product\",\"softDelete\":0,\"storeId\":1,\"userId\":2,\"updatedBy\":0,\"insertedBy\":2,\"dateUpdated\":\"2024-07-02 11:41:08\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:29\",\"taxHeading\":\"GST 18%\",\"taxPercent\":18,\"taxExclusiveValue\":33186.96,\"taxInclusiveValue\":0,\"tax\":33186.96,\"basePriceCost\":184372,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":184372,\"profit\":92186,\"rewardPoints\":18437.2}]', '', 0, '', '', '', 1, 2, 2, 0, '', 1, 1, 1, 0, 1, '2024-07-18 11:35:14'),
(20, 20, 1, 'INV-2024-', 'Walk In Customer', '', '0000000000', 57848.00, 12654.25, 0.00, '[]', 'null', 8, 'Cash', '', 70502.00, 5785, '0', 'undefined', 'finalCheckout', 0, '31EXoeBZc34uIqEbvMFfTTHFzn2NYZHwvWPni6kFocPnmcjmAOCqWRWnVMkqqnZO2yXXP87FZycp5evCxzTibeo6GZt8kxQHSEONwR9MKNYiBCD41tU3l21Tlfgq5j7Pib7tGI9mdfezVfu3zg3mjQts6V4m4F2Yzdp7FvqCjQ6rAdY7MM5BmtotXnpXLTDHtqSywu3MLVUFWm5lrbSp1cKIEmwNZLVREYE1KBrm7xqffkEFEjHZJaXChZivCtv', 0, '', 0, 1, 'Completed', '[{\"productId\":100,\"heading\":\"Eldora Hackett III\",\"model\":\"EtfkfhSgZJ\",\"barcode\":98321009,\"cost\":1000,\"price\":57848,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":5,\"taxType\":\"Inclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":0,\"changePriceDuringBilling\":1,\"image\":null,\"relatedImage\":\"\\\"\\\"\",\"showInPos\":1,\"productType\":\"Product\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":2,\"dateUpdated\":\"2024-07-02 11:41:08\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:30\",\"taxHeading\":\"GST 28%\",\"taxPercent\":28,\"taxExclusiveValue\":0,\"taxInclusiveValue\":12654.25,\"tax\":12654.25,\"basePriceCost\":45193.75,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":57848,\"profit\":44193.75,\"rewardPoints\":5784.8}]', '', 0, '', '', '', 1, 1, 1, 0, '', 1, 1, 1, 0, 1, '2024-07-18 11:40:30'),
(21, 21, 1, 'INV-2024-', 'Walk In Customer', '', '0000000000', 306782.00, 49069.31, 0.00, '[]', 'null', 8, 'Cash', '', 355851.00, 30678, '0', 'undefined', 'finalCheckout', 0, 'Qb6GVLFyR8XZheRN0KawM1ynSwJmkQE4loW03atCRFHVgMzCXiSCc4SNO7qOUrujcNn5Lu2ZscdzHP5SkEjKN3StKOR61tYvP7QSRRjPtgLVf5H1Wo7NIROtumfvHUIoJf4jmuCMzlUhK7TL3w9aaVfuGcbzl31tHkGa9Icq2TW4qi6MxW0kMPOn4iDu9vbvwPjCOff327MVxPu1GOJrIks0WBe6nnd9E2EBXkzNnTaUuAzfw9V9WP4XaWTTqEJ', 0, '', 0, 3, 'Cancelled', '[{\"productId\":100,\"heading\":\"Eldora Hackett III\",\"model\":\"EtfkfhSgZJ\",\"barcode\":98321009,\"cost\":1000,\"price\":57848,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":5,\"taxType\":\"Inclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":0,\"changePriceDuringBilling\":1,\"image\":null,\"relatedImage\":\"\\\"\\\"\",\"showInPos\":1,\"productType\":\"Product\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":2,\"dateUpdated\":\"2024-07-18 11:40:31\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:30\",\"taxHeading\":\"GST 28%\",\"taxPercent\":28,\"taxExclusiveValue\":0,\"taxInclusiveValue\":12654.25,\"tax\":12654.25,\"basePriceCost\":45193.75,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":57848,\"profit\":44193.75,\"rewardPoints\":5784.8},{\"productId\":99,\"heading\":\"Angel Hills\",\"model\":\"q8qHbH3aUV\",\"barcode\":19919785,\"cost\":92186,\"price\":184372,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":4,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"productType\":\"Product\",\"softDelete\":0,\"storeId\":1,\"userId\":2,\"updatedBy\":0,\"insertedBy\":2,\"dateUpdated\":\"2024-07-02 11:41:08\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:29\",\"taxHeading\":\"GST 18%\",\"taxPercent\":18,\"taxExclusiveValue\":33186.96,\"taxInclusiveValue\":0,\"tax\":33186.96,\"basePriceCost\":184372,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":184372,\"profit\":92186,\"rewardPoints\":18437.2},{\"productId\":98,\"heading\":\"Jaida Grimes\",\"model\":\"lUnUIsoJZX\",\"barcode\":88180650,\"cost\":32281,\"price\":64562,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":2,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"productType\":\"Product\",\"softDelete\":0,\"storeId\":1,\"userId\":2,\"updatedBy\":0,\"insertedBy\":2,\"dateUpdated\":\"2024-07-02 11:41:08\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:29\",\"taxHeading\":\"GST 5%\",\"taxPercent\":5,\"taxExclusiveValue\":3228.1000000000004,\"taxInclusiveValue\":0,\"tax\":3228.1000000000004,\"basePriceCost\":64562,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":64562,\"profit\":32281,\"rewardPoints\":6456.200000000001}]', '', 0, '', '', '', 1, 3, 3, 0, '', 1, 1, 1, 0, 1, '2024-07-18 11:40:49'),
(22, 22, 1, 'INV-2024-', 'Walk In Customer', '', '0000000000', 57848.00, 12654.25, 0.00, '[]', 'null', 8, 'Cash', '', 70502.00, 5785, '0', 'undefined', 'finalCheckout', 0, '2ImHq9aqZA5xWe9EyaovLIrPO0ru80zEVNgcscW5cvm7I4LU23zZokA7HqyduXNUsyY5suWRljE5V8HyXo0w1uIxppzVeSoVxWIFpL3r2hrgRGoutHtDWQ8etQe7dHQTb9l32KEmiqXV529yL2bbXkc7rEr8yZueHQGLDqBygnzD3ImTl2iGXFrA6IentCl6IBu75zDRfxA1dvsYkyOqPlTOcEUKIZqHIuLNYnGfLgq0I0DfvfbzNqIBKoY8btQ', 0, '', 0, 3, 'Cancelled', '[{\"productId\":100,\"heading\":\"Eldora Hackett III\",\"model\":\"EtfkfhSgZJ\",\"barcode\":98321009,\"cost\":1000,\"price\":57848,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":5,\"taxType\":\"Inclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":0,\"changePriceDuringBilling\":1,\"image\":null,\"relatedImage\":\"\\\"\\\"\",\"showInPos\":1,\"productType\":\"Product\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":2,\"dateUpdated\":\"2024-07-18 11:40:50\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:30\",\"taxHeading\":\"GST 28%\",\"taxPercent\":28,\"taxExclusiveValue\":0,\"taxInclusiveValue\":12654.25,\"tax\":12654.25,\"basePriceCost\":45193.75,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":57848,\"profit\":44193.75,\"rewardPoints\":5784.8}]', '', 0, '', '', '', 1, 1, 1, 0, '', 1, 1, 1, 0, 1, '2024-07-18 11:49:17'),
(23, 23, 1, 'INV-2024-', 'Walk In Customer', '', '0000000000', 484440.00, 91682.42, 0.00, '[]', 'null', 8, 'Cash', '', 576122.00, 48444, '0', 'undefined', 'finalCheckout', 0, 'dnZfAUTniZ1nV0ydV1fiv07x8dfIVewKmc7Y19miqiEG1h1izjdoe0ooYx2IYPSER7KILONV3ftGhn9U8z8clv4OjrFkR90SVoCbO3XEzQoEVMOjo2d63ReP969BhS7AFrdjOWNHoRvLoAGyo3tSfNbdy5OuY449GJwKqKAAx1IH2NFkeri8yPXd5qnfx4Q8q1IwN1VJkDX8F6KkhsNQx5pd0bHFTtvemBpjBcbgSIczjXzoqmqG5JuUPCu119R', 0, '', 0, 1, 'Completed', '[{\"productId\":100,\"heading\":\"Eldora Hackett III\",\"model\":\"EtfkfhSgZJ\",\"barcode\":98321009,\"cost\":1000,\"price\":57848,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":5,\"taxType\":\"Inclusive\",\"hsnCode\":\"\",\"quantity\":\"2\",\"subtract\":0,\"changePriceDuringBilling\":1,\"image\":null,\"relatedImage\":\"\\\"\\\"\",\"showInPos\":1,\"productType\":\"Product\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":2,\"dateUpdated\":\"2024-07-18 12:57:20\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:30\",\"taxHeading\":\"GST 28%\",\"taxPercent\":28,\"taxExclusiveValue\":0,\"taxInclusiveValue\":12654.25,\"tax\":25308.5,\"basePriceCost\":90387.5,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":115696,\"profit\":88387.5,\"rewardPoints\":11569.6},{\"productId\":99,\"heading\":\"Angel Hills\",\"model\":\"q8qHbH3aUV\",\"barcode\":19919785,\"cost\":92186,\"price\":184372,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":4,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":\"2\",\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"productType\":\"Product\",\"softDelete\":0,\"storeId\":1,\"userId\":2,\"updatedBy\":0,\"insertedBy\":2,\"dateUpdated\":\"2024-07-18 12:57:20\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:29\",\"taxHeading\":\"GST 18%\",\"taxPercent\":18,\"taxExclusiveValue\":33186.96,\"taxInclusiveValue\":0,\"tax\":66373.92,\"basePriceCost\":368744,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":368744,\"profit\":184372,\"rewardPoints\":36874.4}]', '', 0, '', '', '', 1, 2, 4, 0, '', 1, 1, 1, 0, 1, '2024-07-19 13:42:32'),
(24, 24, 1, 'INV-2024-', 'Walk In Customer', '', '0000000000', 242220.00, 45841.21, 0.00, '[]', 'null', 8, 'Cash', '', 288061.00, 24222, '0', 'undefined', 'finalCheckout', 0, 'SNVvhgDiUhTHITrx48ZmwCU3ciuwzQDTf6NhtidDJt5b8gkL2jLJH9jkMeeEF6FQxK6O3QPfh7a8hnUeGvhPP7HOEm6cWWpXfoE51ubGWmLCPfmTKb95Ujnhu2t8L92XwS2TMkqrBMNKeFMGxP4UHFLjZmgFsiAwNRlBEuxRI6bIUWeDNq9EXGKHzvd8Ywu5RCLN15Qd3Hex3eeUgNvZYYaDQdLi3Dv96SSY83IRPq5Zl9f3osW4dDb7UjUJW83', 0, '', 0, 3, 'Cancelled', '[{\"productId\":100,\"heading\":\"Eldora Hackett III\",\"model\":\"EtfkfhSgZJ\",\"barcode\":98321009,\"cost\":1000,\"price\":57848,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":5,\"taxType\":\"Inclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":0,\"changePriceDuringBilling\":1,\"image\":null,\"relatedImage\":\"\\\"\\\"\",\"showInPos\":1,\"productType\":\"Product\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":2,\"dateUpdated\":\"2024-07-19 14:02:50\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:30\",\"taxHeading\":\"GST 28%\",\"taxPercent\":28,\"taxExclusiveValue\":0,\"taxInclusiveValue\":12654.25,\"tax\":12654.25,\"basePriceCost\":45193.75,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":57848,\"profit\":44193.75,\"rewardPoints\":5784.8},{\"productId\":99,\"heading\":\"Angel Hills\",\"model\":\"q8qHbH3aUV\",\"barcode\":19919785,\"cost\":92186,\"price\":184372,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":4,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"productType\":\"Product\",\"softDelete\":0,\"storeId\":1,\"userId\":2,\"updatedBy\":0,\"insertedBy\":2,\"dateUpdated\":\"2024-07-19 14:02:50\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:29\",\"taxHeading\":\"GST 18%\",\"taxPercent\":18,\"taxExclusiveValue\":33186.96,\"taxInclusiveValue\":0,\"tax\":33186.96,\"basePriceCost\":184372,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":184372,\"profit\":92186,\"rewardPoints\":18437.2}]', '', 0, '', '', '', 1, 2, 2, 0, '', 1, 1, 1, 0, 1, '2024-07-19 14:03:10');
INSERT INTO `order` (`orderId`, `sno`, `customerId`, `invoicePrefix`, `name`, `email`, `mobile`, `subTotal`, `tax`, `productDiscount`, `additionalCharges`, `globalDiscount`, `paymentId`, `paymentMethod`, `multiplePaymentData`, `total`, `rewardEarned`, `rewardUsed`, `orderType`, `checkoutType`, `runningOrder`, `kotToken`, `seatingTableId`, `seatingTableHeading`, `hold`, `orderStatusId`, `orderStatusHeading`, `orderProduct`, `orderTotal`, `employeeId`, `posComment`, `posImage`, `deliveryDate`, `salesUserId`, `totalItemsInCart`, `totalQuantityInCart`, `hotel`, `hotelToken`, `storeId`, `userId`, `status`, `softDelete`, `insertedBy`, `dateAdded`) VALUES
(25, 25, 1, 'INV-2024-', 'Walk In Customer', '', '0000000000', 242220.00, 45841.21, 0.00, '[]', 'null', 8, 'Cash', '', 288061.00, 24222, '0', 'undefined', 'finalCheckout', 0, '7zlX7xfkrzgtnCEscp5ETK1skWsfzmv2oXHyBwvuHAi7mPzWaPgIxcq48zspOkjHnAhcHecSAMKY8PZJw6QmoUq0mlOdK49i4Y5fy6lXt8NWSjmR4fNf0eABkNHDBG2UoubA0feAJyVtisL4nO7jghrqZvceVgggD2nfYgv6q1FSGnPGAwvFBXlcdxz5D2wYiZLizdFb5SpocEKTg1jovT0oMn2uDCogyuCdNcVkVNBN3OhEISDbmiEJ1iwzftx', 0, '', 0, 1, 'Completed', '[{\"productId\":100,\"heading\":\"Eldora Hackett III\",\"model\":\"EtfkfhSgZJ\",\"barcode\":98321009,\"cost\":1000,\"price\":57848,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":5,\"taxType\":\"Inclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":0,\"changePriceDuringBilling\":1,\"image\":null,\"relatedImage\":\"\\\"\\\"\",\"showInPos\":1,\"productType\":\"Product\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":2,\"dateUpdated\":\"2024-07-19 14:03:29\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:30\",\"taxHeading\":\"GST 28%\",\"taxPercent\":28,\"taxExclusiveValue\":0,\"taxInclusiveValue\":12654.25,\"tax\":12654.25,\"basePriceCost\":45193.75,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":57848,\"profit\":44193.75,\"rewardPoints\":5784.8},{\"productId\":99,\"heading\":\"Angel Hills\",\"model\":\"q8qHbH3aUV\",\"barcode\":19919785,\"cost\":92186,\"price\":184372,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":4,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"productType\":\"Product\",\"softDelete\":0,\"storeId\":1,\"userId\":2,\"updatedBy\":0,\"insertedBy\":2,\"dateUpdated\":\"2024-07-19 14:03:29\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:29\",\"taxHeading\":\"GST 18%\",\"taxPercent\":18,\"taxExclusiveValue\":33186.96,\"taxInclusiveValue\":0,\"tax\":33186.96,\"basePriceCost\":184372,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":184372,\"profit\":92186,\"rewardPoints\":18437.2}]', '', 0, '', '', '', 1, 2, 2, 0, '', 1, 1, 1, 0, 1, '2024-07-19 14:22:18'),
(26, 26, 1, 'INV-2024-', 'Walk In Customer', '', '0000000000', 242220.00, 45841.21, 0.00, '[]', 'null', 8, 'Cash', '', 288061.00, 24222, '0', 'undefined', 'finalCheckout', 0, '72GzQL3aAyaucG42CyFSZgztx6UvLkSa1QAvYfZzRSaxjMWGueflcAf5muhZsbiYt1GlTnoObAgpW19a3OnloqUvygWkT93Y77cMEgHoz1PcBuUeEoFvTns8ikrW6eOXmhsRta5qG28xZ1YdQvZXqOAnpLzApmj4l4TQ81XUxSbpqKOQDylkDLGR9pMR32aZ5gm47wgVfk9VHOWzmXppuIRyyGHRgBZQNNpp21q6UEi4ewdJedagtBdOJNscSza', 0, '', 0, 3, 'Cancelled', '[{\"productId\":100,\"heading\":\"Eldora Hackett III\",\"model\":\"EtfkfhSgZJ\",\"barcode\":98321009,\"cost\":1000,\"price\":57848,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":5,\"taxType\":\"Inclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":0,\"changePriceDuringBilling\":1,\"image\":null,\"relatedImage\":\"\\\"\\\"\",\"showInPos\":1,\"productType\":\"Product\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":2,\"dateUpdated\":\"2024-07-19 14:22:18\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:30\",\"taxHeading\":\"GST 28%\",\"taxPercent\":28,\"taxExclusiveValue\":0,\"taxInclusiveValue\":12654.25,\"tax\":12654.25,\"basePriceCost\":45193.75,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":57848,\"profit\":44193.75,\"rewardPoints\":5784.8},{\"productId\":99,\"heading\":\"Angel Hills\",\"model\":\"q8qHbH3aUV\",\"barcode\":19919785,\"cost\":92186,\"price\":184372,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":4,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"productType\":\"Product\",\"softDelete\":0,\"storeId\":1,\"userId\":2,\"updatedBy\":0,\"insertedBy\":2,\"dateUpdated\":\"2024-07-19 14:22:18\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:29\",\"taxHeading\":\"GST 18%\",\"taxPercent\":18,\"taxExclusiveValue\":33186.96,\"taxInclusiveValue\":0,\"tax\":33186.96,\"basePriceCost\":184372,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":184372,\"profit\":92186,\"rewardPoints\":18437.2}]', '', 0, '', '', '', 1, 2, 2, 0, '', 1, 1, 1, 0, 1, '2024-07-19 14:30:44'),
(27, 27, 1, 'INV-2024-', 'Walk In Customer', '', '0000000000', 58348.00, 16197.44, 0.00, '[]', 'null', 8, 'Cash', '', 74545.00, 5835, '0', 'undefined', 'finalCheckout', 0, 'ynmhuOP4T0b0P0YMHy4QdQd4YdQiCoSvuxhc9ZzxtotZfgXYmDqs0mWJJLK9QfdRXYqWRXaQviVt39XXEOfAnHbdInf0HSmhNnczN6Uh0COqaZxPfMHgOiiIavGgiHzIcCQJ5YZsiyVa0wk9e6cTvJLBAYwQ3KpmnA33V2dDd3E95IVXB2OMfTfhLen52PlTnFratRZTqRjuyKpllIoTeFSYXtxbsAdISARNuYYLjFEmdnfk7sCiOZal5WYruLV', 0, '', 0, 1, 'Completed', '[{\"productId\":100,\"heading\":\"Eldora Hackett III\",\"model\":\"EtfkfhSgZJ\",\"barcode\":98321009,\"cost\":1000,\"price\":57848,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":5,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":0,\"changePriceDuringBilling\":1,\"image\":null,\"relatedImage\":\"\\\"\\\"\",\"showInPos\":1,\"productType\":\"Product\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":2,\"dateUpdated\":\"2024-07-20 14:25:37\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:30\",\"taxHeading\":\"GST 28%\",\"taxPercent\":28,\"taxExclusiveValue\":16197.440000000002,\"taxInclusiveValue\":0,\"tax\":16197.440000000002,\"basePriceCost\":57848,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":57848,\"profit\":56848,\"rewardPoints\":5784.8},{\"productId\":103,\"heading\":\"Hotel Room 2\",\"model\":\"Hotel\",\"barcode\":98321014,\"cost\":500,\"price\":500,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":0,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":0,\"changePriceDuringBilling\":0,\"image\":\"public\\/assets\\/uploads\\/ship_shop_pos_default\\/693478300.jpeg\",\"relatedImage\":\"[\\\"public\\\\\\/assets\\\\\\/uploads\\\\\\/ship_shop_pos_default\\\\\\/419239602.jpeg\\\"]\",\"showInPos\":1,\"productType\":\"Hotel\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":1,\"dateUpdated\":\"2024-07-02 13:28:07\",\"status\":1,\"dateAdded\":\"2024-07-02 11:43:02\",\"taxHeading\":\"\",\"taxPercent\":0,\"taxExclusiveValue\":0,\"taxInclusiveValue\":0,\"tax\":0,\"basePriceCost\":0,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":500,\"profit\":-500,\"rewardPoints\":50}]', '', 0, '', '', '', 1, 2, 2, 0, '', 1, 1, 1, 0, 1, '2024-08-17 13:14:17'),
(28, 28, 1, 'INV-2024-', 'Walk In Customer', '', '0000000000', 1000.00, 0.00, 100.00, '[]', 'null', 8, 'Cash', '', 900.00, 0, '0', 'undefined', 'finalCheckout', 0, 'TZ4rKqn3IwknKK7ULnFK6qJ7N2lUejow7AfgJUopgbbKm8aMK6Xbcrh499H7NckduKT6Q7j14xlelogw8by9IaUmAk7Lt2NHqn77fxyZ5bDrau4RgznQAJ8DIp89JkdXyAvROJ6aA3aCERiGJmcYG3bdmWFbtGCYYP6I7EcbVwJiUCQcFHGTUcUgFh9HuLmV8ZVzDMwDkvMbl8cwzsyfBhhfHF9fdtWCGyQqc4onYZ8gq0rnPDSYV7dMkAwkcav', 0, '', 0, 1, 'Completed', '[{\"productId\":102,\"heading\":\"Hotel Room 1\",\"model\":\"Hotel\",\"barcode\":98321014,\"cost\":500,\"price\":500,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":0,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":\"2\",\"subtract\":0,\"changePriceDuringBilling\":0,\"image\":\"public\\/assets\\/uploads\\/ship_shop_pos_default\\/693478300.jpeg\",\"relatedImage\":\"[\\\"public\\\\\\/assets\\\\\\/uploads\\\\\\/ship_shop_pos_default\\\\\\/419239602.jpeg\\\"]\",\"showInPos\":1,\"productType\":\"Hotel\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":1,\"dateUpdated\":\"2024-07-02 13:28:07\",\"status\":1,\"dateAdded\":\"2024-07-02 11:43:02\",\"taxHeading\":\"\",\"taxPercent\":0,\"taxExclusiveValue\":0,\"taxInclusiveValue\":0,\"tax\":0,\"basePriceCost\":0,\"discount\":\"10%\",\"discountValue\":100,\"extraInformation\":\"\",\"total\":1000,\"profit\":-1100,\"rewardPoints\":0}]', '', 0, '', '', '', 1, 1, 2, 0, '', 1, 1, 1, 0, 1, '2024-08-17 13:15:07'),
(29, 29, 1, 'INV-2024-', 'Walk In Customer', '', '0000000000', 57848.00, 16197.44, 0.00, '[]', '{\"discount\":\"10%\",\"discountValue\":5784.8}', 8, 'Cash', '', 68261.00, 0, '0', 'undefined', 'finalCheckout', 0, 'nbb77BsA7ZpMfQAIIcmzhu2aKBrZnbaRp6X5c7kYk6yU6aU0NaUAQxtaaaeHbjiHyP5JJHDn0AVVRlB0TJxfvsARdNLUG9FdQijKBj6uumm8lWuRi4USR2fdBpfDbrA8DGHjzJyG4h6y2t6AXQxIzLG3fCHVxplQI8O8dmKU2UGlEW7WXuNLzIQg6StDJ2xeFrLfwb0xsjXmRkkZ0rlZbPmm1uSPvBFjRb7j4VglflBKHZccWjP1YficpjJAw5b', 0, '', 0, 1, 'Completed', '[{\"productId\":100,\"heading\":\"Eldora Hackett III\",\"model\":\"EtfkfhSgZJ\",\"barcode\":98321009,\"cost\":1000,\"price\":57848,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":5,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":0,\"changePriceDuringBilling\":1,\"image\":null,\"relatedImage\":\"\\\"\\\"\",\"showInPos\":1,\"productType\":\"Product\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":2,\"dateUpdated\":\"2024-08-17 13:14:17\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:30\",\"taxHeading\":\"GST 28%\",\"taxPercent\":28,\"taxExclusiveValue\":16197.440000000002,\"taxInclusiveValue\":0,\"tax\":16197.440000000002,\"basePriceCost\":57848,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":57848,\"profit\":56848,\"rewardPoints\":0}]', '', 0, '', '', '', 1, 1, 1, 0, '', 1, 1, 1, 0, 1, '2024-08-17 13:15:35'),
(30, 30, 1, 'INV-2024-', 'Walk In Customer', '', '0000000000', 7.00, 0.00, 0.00, '[]', 'null', 8, 'Cash', '', 7.00, 0, '0', 'undefined', 'finalCheckout', 0, 'Yox4DWTy6AB5JrJfm2vuCZDVZtkEIgQdxeJtIbe7suMd59EsJfAQAQju1LdK7qjrKb6uCxn7mKaAlPZcS4WRo1ZuMUxYniYznAaZRl2FtOh4Hy1hK2KO3Lh1tYBLXC95MTWb1Fkh8a91PSEFW4nK6ZP4RyvyABDO94daOlUxHRuEYJMakyJaodzmm9JJvzMzBqHUMb8VnUg0AOuPnmJSd3Nb34pCj7NebkBC14DAnYhlIoYgMsRsiq5zbcoteZd', 0, '', 0, 1, 'Completed', '[{\"productId\":118,\"heading\":\"sfdfg\",\"model\":\"1\",\"barcode\":98321028,\"cost\":1,\"price\":1,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":1,\"unitId\":0,\"taxId\":0,\"taxType\":\"Exclusive\",\"hsnCode\":\"1\",\"quantity\":\"1\",\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"productType\":\"\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":0,\"insertedBy\":1,\"dateUpdated\":\"2024-08-20 11:31:26\",\"status\":1,\"dateAdded\":\"2024-08-20 11:31:26\",\"taxHeading\":\"\",\"taxPercent\":0,\"taxExclusiveValue\":0,\"taxInclusiveValue\":0,\"tax\":0,\"basePriceCost\":0,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":1,\"profit\":-1,\"rewardPoints\":0.1},{\"productId\":119,\"heading\":\"sdgdfshgf\",\"model\":\"2\",\"barcode\":98321029,\"cost\":2,\"price\":2,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":1,\"unitId\":0,\"taxId\":0,\"taxType\":\"Exclusive\",\"hsnCode\":\"2\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"productType\":\"\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":0,\"insertedBy\":1,\"dateUpdated\":\"2024-08-20 11:33:53\",\"status\":1,\"dateAdded\":\"2024-08-20 11:33:53\",\"taxHeading\":\"\",\"taxPercent\":0,\"taxExclusiveValue\":0,\"taxInclusiveValue\":0,\"tax\":0,\"basePriceCost\":0,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":2,\"profit\":-2,\"rewardPoints\":0.2},{\"productId\":112,\"heading\":\"asdas\",\"model\":\"df\",\"barcode\":98321022,\"cost\":1,\"price\":1,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":1,\"unitId\":0,\"taxId\":0,\"taxType\":\"Exclusive\",\"hsnCode\":\"1\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"productType\":\"\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":0,\"insertedBy\":1,\"dateUpdated\":\"2024-08-20 11:22:50\",\"status\":1,\"dateAdded\":\"2024-08-20 11:22:50\",\"taxHeading\":\"\",\"taxPercent\":0,\"taxExclusiveValue\":0,\"taxInclusiveValue\":0,\"tax\":0,\"basePriceCost\":0,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":1,\"profit\":-1,\"rewardPoints\":0.1},{\"productId\":120,\"heading\":\"sadgfg\",\"model\":\"3\",\"barcode\":98321030,\"cost\":3,\"price\":3,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":1,\"unitId\":0,\"taxId\":0,\"taxType\":\"Exclusive\",\"hsnCode\":\"3\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"productType\":\"\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":0,\"insertedBy\":1,\"dateUpdated\":\"2024-08-20 11:35:00\",\"status\":1,\"dateAdded\":\"2024-08-20 11:35:00\",\"taxHeading\":\"\",\"taxPercent\":0,\"taxExclusiveValue\":0,\"taxInclusiveValue\":0,\"tax\":0,\"basePriceCost\":0,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":3,\"profit\":-3,\"rewardPoints\":0.30000000000000004}]', '', 0, '', '', '', 1, 4, 4, 0, '', 1, 1, 1, 0, 1, '2024-08-20 11:35:21'),
(31, 31, 1, 'INV-2024-', 'Walk In Customer', '', '0000000000', 57851.00, 16197.44, 0.00, '[]', 'null', 8, 'Cash', '', 74048.00, 5785, '0', 'undefined', 'finalCheckout', 0, '0Pd5CKh8BYhyEAGOn3vvj9DwYd0AASO687JxWQNmStoFZCn1JJv4FF3WM9XwPvoKcUHiB7YZgI0Cnes6CazRrhOgy2cOkgDY7EvWS2OTm4K2ZzwE0QmgugEC38E57wjvFUPgHHcpHHZaYE4fjNkePEzxO8Yr0yEfRm9v1GTnR1vcJcT2xQLha7NEiRFk23lNXCQevDjX7If20kU1Ajov36v8wT1vFKswedYXx5rjxRf35rzx7chfiNRJefOaFsA', 0, '', 0, 1, 'Completed', '[{\"productId\":120,\"heading\":\"sadgfg\",\"model\":\"3\",\"barcode\":98321030,\"cost\":3,\"price\":3,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":1,\"unitId\":0,\"taxId\":0,\"taxType\":\"Exclusive\",\"hsnCode\":\"3\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"productType\":\"\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":0,\"insertedBy\":1,\"dateUpdated\":\"2024-08-20 11:35:22\",\"status\":1,\"dateAdded\":\"2024-08-20 11:35:00\",\"taxHeading\":\"\",\"taxPercent\":0,\"taxExclusiveValue\":0,\"taxInclusiveValue\":0,\"tax\":0,\"basePriceCost\":0,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":3,\"profit\":-3,\"rewardPoints\":0.30000000000000004},{\"productId\":100,\"heading\":\"Eldora Hackett III\",\"model\":\"EtfkfhSgZJ\",\"barcode\":98321009,\"cost\":1000,\"price\":57848,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":5,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":0,\"changePriceDuringBilling\":1,\"image\":null,\"relatedImage\":\"\\\"\\\"\",\"showInPos\":1,\"productType\":\"Product\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":2,\"dateUpdated\":\"2024-08-17 13:15:35\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:30\",\"taxHeading\":\"GST 28%\",\"taxPercent\":28,\"taxExclusiveValue\":16197.440000000002,\"taxInclusiveValue\":0,\"tax\":16197.440000000002,\"basePriceCost\":57848,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":57848,\"profit\":56848,\"rewardPoints\":5784.8}]', '', 1, 'this is a test', '', '', 1, 2, 2, 0, '', 1, 1, 1, 0, 1, '2024-08-20 19:27:46'),
(32, 32, 1, 'INV-2024-', 'Walk In Customer', '', '0000000000', 3.00, 0.00, 0.00, '[]', 'null', 7, 'UPI', '', 3.00, 0, '0', 'undefined', 'finalCheckout', 0, 'HgfDjNRt6tgHpoJQFMp9EcbtXiCt11wDj0drw9PjI4H8j03njiljTSZ4cgXu96Ff19gFSNTOER7V9rzq249qgktTRNz4PO51AeJRxDDZUwicCwivAGKfW0SImUXCiJpjyGdVbH7LoVh0v3UFfZXcToRW9y4e0ycCJZiQi2cny7DUGfqYkTdP6avENAw2MKz2IGWqPbpHm8ExsuCqhFzjuT4ObRmfv096e8oi8hQnMN44lQSiXSYy8zbpzs5fEBg', 0, '', 0, 1, 'Completed', '[{\"productId\":120,\"heading\":\"sadgfg\",\"model\":\"3\",\"barcode\":98321030,\"cost\":3,\"price\":3,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":1,\"unitId\":0,\"taxId\":0,\"taxType\":\"Exclusive\",\"hsnCode\":\"3\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"productType\":\"\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":0,\"insertedBy\":1,\"dateUpdated\":\"2024-08-20 19:27:47\",\"status\":1,\"dateAdded\":\"2024-08-20 11:35:00\",\"taxHeading\":\"\",\"taxPercent\":0,\"taxExclusiveValue\":0,\"taxInclusiveValue\":0,\"tax\":0,\"basePriceCost\":0,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":3,\"profit\":-3,\"rewardPoints\":0.30000000000000004}]', '', 0, '', '', '', 1, 1, 1, 0, '', 1, 1, 1, 0, 1, '2024-08-20 19:34:52'),
(33, 33, 102, 'INV-2024-', 'Priyavrat Sehrawat', 'pkv172019@gmail.com', '8285187287', 57848.00, 16197.44, 0.00, '[]', 'null', 8, 'Cash', '', 74045.00, 5785, '0', '', 'finalCheckout', 0, 'uVAJX0kVVlRwpRK0KY5mAxsacBsRArIyIyWzDo9hEB5CULOZrqoMEEgw9kkAJobC7GpnL7JLN2vjvfsgR7BVHnKtYuEDShDfGYh3oGni76ClwjOf3dtagAhGmO2AwIK5O0GBaqg4tjI306XOJ3AuJ89duyQIC5gqeYquHRpMdQdQLEaavqT6Jc1UpTUvDF8U7qwGeTPUDjCfzuNbW2znQ7E2NjSoCNImhBEsgQXbgUY6CByeVpkWB6IejRGkmck', 0, '', 0, 1, 'Completed', '[{\"productId\":100,\"heading\":\"Eldora Hackett III\",\"model\":\"EtfkfhSgZJ\",\"barcode\":98321009,\"cost\":1000,\"price\":57848,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":5,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":0,\"changePriceDuringBilling\":1,\"image\":null,\"relatedImage\":\"\\\"\\\"\",\"showInPos\":1,\"productType\":\"Product\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":2,\"dateUpdated\":\"2024-08-20 19:27:47\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:30\",\"taxHeading\":\"GST 28%\",\"taxPercent\":28,\"taxExclusiveValue\":16197.440000000002,\"taxInclusiveValue\":0,\"tax\":16197.440000000002,\"basePriceCost\":57848,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":57848,\"profit\":56848,\"rewardPoints\":5784.8}]', '', 0, '', '', '', 1, 1, 1, 0, '', 1, 1, 1, 0, 1, '2024-08-20 21:15:35'),
(34, 34, 1, 'INV-2024-', 'Walk In Customer', '', '0000000000', 4.00, 0.00, 0.00, '[]', 'null', 8, 'Cash', '', 4.00, 0, '0', '', 'finalCheckout', 0, 'IJj6gMBndTjc0DCcm4eLzLhvWJAhXk5ZJU4tsSvOqMoglfvnp7AiSawEQN8c1mWdeOvfwCGJVjEOEO6eE2geJhqnOwnBKyixGc2Csmwu9VZ64Xp7UuoSGFRPzGFU1gvmcQ4XCYWSn16iKKB3xnMJwaF6DEyOOTepjGV79zcfZRkySC1GuB5uL10Px9KzpZRB3zavwGcfBg5teBR2paqmleqtqvDnlf3eD6jfDnP14yHCPVgzezEl3YrHmvjPDAB', 0, '', 0, 1, 'Completed', '[{\"productId\":119,\"heading\":\"sdgdfshgf\",\"model\":\"2\",\"barcode\":98321029,\"cost\":2,\"price\":2,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":1,\"unitId\":0,\"taxId\":0,\"taxType\":\"Exclusive\",\"hsnCode\":\"2\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"productType\":\"\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":0,\"insertedBy\":1,\"dateUpdated\":\"2024-08-20 11:35:22\",\"status\":1,\"dateAdded\":\"2024-08-20 11:33:53\",\"taxHeading\":\"\",\"taxPercent\":0,\"taxExclusiveValue\":0,\"taxInclusiveValue\":0,\"tax\":0,\"basePriceCost\":0,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":2,\"profit\":-2,\"rewardPoints\":0.2},{\"productId\":116,\"heading\":\"dfs\",\"model\":\"1\",\"barcode\":98321026,\"cost\":1,\"price\":1,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":1,\"unitId\":0,\"taxId\":0,\"taxType\":\"Exclusive\",\"hsnCode\":\"1\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"productType\":\"\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":0,\"insertedBy\":1,\"dateUpdated\":\"2024-08-20 11:29:33\",\"status\":1,\"dateAdded\":\"2024-08-20 11:29:33\",\"taxHeading\":\"\",\"taxPercent\":0,\"taxExclusiveValue\":0,\"taxInclusiveValue\":0,\"tax\":0,\"basePriceCost\":0,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":1,\"profit\":-1,\"rewardPoints\":0.1},{\"productId\":117,\"heading\":\"dfs\",\"model\":\"1\",\"barcode\":98321027,\"cost\":1,\"price\":1,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":1,\"unitId\":0,\"taxId\":0,\"taxType\":\"Exclusive\",\"hsnCode\":\"1\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"productType\":\"\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":0,\"insertedBy\":1,\"dateUpdated\":\"2024-08-20 11:29:43\",\"status\":1,\"dateAdded\":\"2024-08-20 11:29:43\",\"taxHeading\":\"\",\"taxPercent\":0,\"taxExclusiveValue\":0,\"taxInclusiveValue\":0,\"tax\":0,\"basePriceCost\":0,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":1,\"profit\":-1,\"rewardPoints\":0.1}]', '', 0, '', '', '', 1, 3, 3, 0, '', 1, 1, 1, 0, 1, '2024-08-22 10:42:59'),
(35, 35, 1, 'INV-2024-', 'Walk In Customer', '', '0000000000', 57848.00, 16197.44, 0.00, '[]', 'null', 8, 'Cash', '', 74045.00, 5785, '0', '', 'finalCheckout', 0, '9Lz7Z55AriVEvpCu8zL1bRlcOvjKDYJ8PMWRJyh6Y15z3PQzGo3OBdSHNJfOhw5LJZQ6vD6L0d2ZJkhd5gS2g4B5uokvTKNPWrokkaZVYJLFwDvaIkO0RBpPdhe9VcYSfYwoyiBmuHvqHqqoBz8kBJfCiieNpzCpVq5oY68U9pKSgAjlijl5WzUE9mg67YoJi47JTqF74ckGXuHYGyDAWnvr6qisc5ql0OtDb9Up5G8gHwP9WmyCo1AGi7jz8LL', 0, '', 0, 1, 'Completed', '[{\"productId\":100,\"heading\":\"Eldora Hackett III\",\"model\":\"EtfkfhSgZJ\",\"barcode\":98321009,\"cost\":1000,\"price\":57848,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":5,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":0,\"changePriceDuringBilling\":1,\"image\":null,\"relatedImage\":\"\\\"\\\"\",\"showInPos\":1,\"productType\":\"Product\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":2,\"dateUpdated\":\"2024-08-22 15:08:49\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:30\",\"taxHeading\":\"GST 28%\",\"taxPercent\":28,\"taxExclusiveValue\":16197.440000000002,\"taxInclusiveValue\":0,\"tax\":16197.440000000002,\"basePriceCost\":57848,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":57848,\"profit\":56848,\"rewardPoints\":5784.8}]', '', 0, '', '', '', 1, 1, 1, 0, '', 1, 1, 1, 0, 1, '2024-08-22 17:28:40'),
(36, 36, 1, 'INV-2024-', 'Walk In Customer', '', '0000000000', 57848.00, 16197.44, 0.00, '[]', 'null', 1, 'Credit', '', 74045.00, 5785, '0', '', 'finalCheckout', 0, '2NASHi9fuobSfmjm6SkyXqcq3X4UjwMAXlIJ6RLghOUaHSCubssKWeB61N5ANrIgHWPn2LEW05O3Nivi9aUYPkIklwUhh7exJGV8vSSFJVqXV5A08Wzkeof7htmgsPo6vGDo2kpHxapAuQPCYoAezSHKmZFyXphPCiiDLQjaWVRFiUg8RQXoo95IKsbM7UkN9zYNSGC7LfkTkzIIUWZT1c3czLsWO2JXjynGrTkb0yo3ODoqTBiwcBSs6oYfb5q', 0, '', 0, 1, 'Completed', '[{\"productId\":100,\"heading\":\"Eldora Hackett III\",\"model\":\"EtfkfhSgZJ\",\"barcode\":98321009,\"cost\":1000,\"price\":57848,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":5,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":\"1\",\"subtract\":0,\"changePriceDuringBilling\":1,\"image\":null,\"relatedImage\":\"\\\"\\\"\",\"showInPos\":1,\"productType\":\"Product\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":2,\"dateUpdated\":\"2024-08-22 17:28:40\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:30\",\"taxHeading\":\"GST 28%\",\"taxPercent\":28,\"taxExclusiveValue\":16197.440000000002,\"taxInclusiveValue\":0,\"tax\":16197.440000000002,\"basePriceCost\":57848,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":57848,\"profit\":56848,\"rewardPoints\":5784.8}]', '', 0, '', '', '', 1, 1, 1, 0, '', 1, 1, 1, 0, 1, '2024-08-22 17:50:03'),
(37, 37, 1, 'INV-2024-', 'Walk In Customer', '', '0000000000', 57848.00, 16197.44, 0.00, '[]', 'null', 1, 'Credit', '', 74045.00, 5785, '0', '', 'finalCheckout', 0, 'MFColSYELAYCAAC7NyAeywz8wyVsUzOGSF2i9slcB4Gm673CW29vwfezGtloQnotzH7UvLY5SZq7NVygw7tELDkf4sZHuCeBgaTXPm48eDQUBdrEAyHvMMm6IWa7sYVEwivwBOQUZh1kFDOal4vMPklLga8LPujdeKbdBJdcscfK8CZkmOjlzUh7K1up2OAQpENker2gFNegxJfB7dS0JPeP7amLtp35TvseRtbIqm58shxWNW8xO8jXm6DHKzR', 0, '', 0, 1, 'Completed', '[{\"productId\":100,\"heading\":\"Eldora Hackett III\",\"model\":\"EtfkfhSgZJ\",\"barcode\":98321009,\"cost\":1000,\"price\":57848,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":5,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":0,\"changePriceDuringBilling\":1,\"image\":null,\"relatedImage\":\"\\\"\\\"\",\"showInPos\":1,\"productType\":\"Product\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":2,\"dateUpdated\":\"2024-08-22 17:50:03\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:30\",\"taxHeading\":\"GST 28%\",\"taxPercent\":28,\"taxExclusiveValue\":16197.440000000002,\"taxInclusiveValue\":0,\"tax\":16197.440000000002,\"basePriceCost\":57848,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":57848,\"profit\":56848,\"rewardPoints\":5784.8}]', '', 0, '', '', '', 1, 1, 1, 0, '', 1, 1, 1, 0, 1, '2024-08-24 10:42:44'),
(38, 38, 1, 'INV-2024-', 'Walk In Customer', '', '0000000000', 57848.00, 16197.44, 0.00, '[]', 'null', 1, 'Credit', '', 74045.00, 0, '0', '', 'finalCheckout', 0, 'DxWLKi1Z9YDP9kaW1mOLkUe19Ik6MtbNW11yFfFABCrZ1nRHAw7UASzFtSmzhfvDqZHL13HtD4nQvahpD496mwUKMsGuQEimIrUSY5gdA77rNymWiaBqNG7BVlY7nFDA9Ro0Zd6dOZ23c5KTmUwkWUH6oNRLvl7Zff2jV9SRwsLc21dDxWRUYvoImIV87weOTOhIjhTdFlvcQ7tOUzvQAEFeUcGBkkWUq0dPdCsCMj9WiSmnwkiJXyE0YVywL5S', 0, '', 0, 1, 'Completed', '[{\"productId\":100,\"heading\":\"Eldora Hackett III\",\"model\":\"EtfkfhSgZJ\",\"barcode\":98321009,\"cost\":1000,\"price\":57848,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":5,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":0,\"changePriceDuringBilling\":1,\"image\":null,\"relatedImage\":\"\\\"\\\"\",\"showInPos\":1,\"productType\":\"Product\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":2,\"dateUpdated\":\"2024-08-24 10:42:44\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:30\",\"taxHeading\":\"GST 28%\",\"taxPercent\":28,\"taxExclusiveValue\":16197.440000000002,\"taxInclusiveValue\":0,\"tax\":16197.440000000002,\"basePriceCost\":57848,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":57848,\"profit\":56848,\"rewardPoints\":5784.8}]', '', 0, '', '', '', 1, 1, 1, 0, '', 1, 1, 1, 0, 1, '2024-08-24 14:26:53'),
(39, 39, 1, 'INV-2024-', 'Walk In Customer', '', '0000000000', 57848.00, 16197.44, 0.00, '[]', 'null', 1, 'Credit', '', 74045.00, 0, '0', '', 'finalCheckout', 0, 'KfF81VhJ3yIp6NAj9OuFsE6uqDQO051l4DexwfQE8Ps8PnvlsrmlCFA3mkUTwplzsabVsa6AirDiWRgMIhjKFKAj3MUlWoBWZPZzhQ5JkXpphQaDSnYAk50orNnxzxmyHgRsodVwL9rY0LOZLoid1wScEVvkEDfLrtEAoBD6wtndFwSys5wGMcrFiCLCSwWiD0AU0OkwPmK8uJCXJfNW4Y4DUZX5ElGgfu0PyF0FDD9j2aCU47xcmDUHaFl0WM9', 0, '', 0, 1, 'Completed', '[{\"productId\":100,\"heading\":\"Eldora Hackett III\",\"model\":\"EtfkfhSgZJ\",\"barcode\":98321009,\"cost\":1000,\"price\":57848,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":5,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":0,\"changePriceDuringBilling\":1,\"image\":null,\"relatedImage\":\"\\\"\\\"\",\"showInPos\":1,\"productType\":\"Product\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":2,\"dateUpdated\":\"2024-08-24 14:26:54\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:30\",\"taxHeading\":\"GST 28%\",\"taxPercent\":28,\"taxExclusiveValue\":16197.440000000002,\"taxInclusiveValue\":0,\"tax\":16197.440000000002,\"basePriceCost\":57848,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":57848,\"profit\":56848,\"rewardPoints\":5784.8}]', '', 0, '', '', '', 1, 1, 1, 0, '', 1, 1, 1, 0, 1, '2024-08-24 14:27:16'),
(40, 40, 1, 'INV-2024-', 'Walk In Customer', '', '0000000000', 57848.00, 16197.44, 0.00, '[]', 'null', 8, 'Cash', '', 74045.00, 5785, '0', '', 'finalCheckout', 0, '2auBxTmcqXfuayoVbS0G9fB63EnyxQr7ddbVlEdfBQVyF4ovp2INAm3doIhSK1Fb8BD1YBhecZIlxm2g7uRLkNB3CJisqfrnWfg8HPcgfNLtryOYjT5IqSAyqZDkyuBFtonvxzC8x4NqfKKE1HdaI7IquK7MgJYaNPfxnRGAwEBQbjOCGAt8TpAcCkWWCGjIp9xuoZRBVw4RbnomRuEUKtepQWAdND79tSIZ8wE4nrfnx0fmonj5qzUQt0hsjzd', 0, '', 0, 1, 'Completed', '[{\"productId\":100,\"heading\":\"Eldora Hackett III\",\"model\":\"EtfkfhSgZJ\",\"barcode\":98321009,\"cost\":1000,\"price\":57848,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":5,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":0,\"changePriceDuringBilling\":1,\"image\":null,\"relatedImage\":\"\\\"\\\"\",\"showInPos\":1,\"productType\":\"Product\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":2,\"dateUpdated\":\"2024-08-24 14:27:16\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:30\",\"taxHeading\":\"GST 28%\",\"taxPercent\":28,\"taxExclusiveValue\":16197.440000000002,\"taxInclusiveValue\":0,\"tax\":16197.440000000002,\"basePriceCost\":57848,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":57848,\"profit\":56848,\"rewardPoints\":5784.8}]', '', 0, '', '', '', 1, 1, 1, 0, '', 1, 1, 1, 0, 1, '2024-08-24 14:28:44'),
(41, 41, 1, 'INV-2024-', 'Walk In Customer', '', '0000000000', 57848.00, 16197.44, 0.00, '[]', 'null', 8, 'Cash', '', 74045.00, 5785, '0', '', 'finalCheckout', 0, 'IuWUevJ4aDukurzT3iha6gWAF3gMTSu52fBWes1Hbux00nOwxH6FjVZNwnABm15FTYXcy4rG80m6kLUsTtoA7J54pJ9yyRRTuYZ0gfvYHZNHOwhBuzT4q5prFPRlgD9fsPw0xGwcPIXctO8ZLDeR2rI5DnPMk5ZYgYjkbnnYxQDkTzaXvqR8K6CcBhS4XCSKmalYAq22STnCKRu8ig5Msi6ka0FCibJOWWjNp0KZYqXL27W2TMgeaMdzhDY8na0', 0, '', 0, 1, 'Completed', '[{\"productId\":100,\"heading\":\"Eldora Hackett III\",\"model\":\"EtfkfhSgZJ\",\"barcode\":98321009,\"cost\":1000,\"price\":57848,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":5,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":0,\"changePriceDuringBilling\":1,\"image\":null,\"relatedImage\":\"\\\"\\\"\",\"showInPos\":1,\"productType\":\"Product\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":2,\"dateUpdated\":\"2024-08-24 14:28:44\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:30\",\"taxHeading\":\"GST 28%\",\"taxPercent\":28,\"taxExclusiveValue\":16197.440000000002,\"taxInclusiveValue\":0,\"tax\":16197.440000000002,\"basePriceCost\":57848,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":57848,\"profit\":56848,\"rewardPoints\":5784.8}]', '', 0, '', '', '', 1, 1, 1, 0, '', 1, 1, 1, 0, 1, '2024-08-24 14:58:57'),
(42, 42, 1, 'INV-2024-', 'Walk In Customer', '', '0000000000', 115696.00, 32394.88, 0.00, '[]', 'null', 8, 'Cash', '', 148091.00, 11570, '0', '', 'finalCheckout', 0, 'xRvaN4IJzkHpO6kWeiuDqqKwW4P7l2vfF4Nc259dq9hVQD6p1W0MdyB6gmfDYpEmB1L54AxtvwbQ0n5erPAmizG2ndL3rktFxy7tghrXQa2yB8IRYS0sTOBdHOKPpxbXbrhB2gh5anuOM0Gu3IIvXXP4tXXyS3MlVReITzcWruNbYrOnp7KAA56FgsvGhB7Vp0382o4txKcWKQyG2MWZEci87kHzCZEr8xLfqbGEyPW9UER87IMhy4AszAJL7pO', 0, '', 0, 1, 'Completed', '[{\"productId\":100,\"heading\":\"Eldora Hackett III\",\"model\":\"EtfkfhSgZJ\",\"barcode\":98321009,\"cost\":1000,\"price\":57848,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":5,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":\"2\",\"subtract\":0,\"changePriceDuringBilling\":1,\"image\":null,\"relatedImage\":\"\\\"\\\"\",\"showInPos\":1,\"productType\":\"Product\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":2,\"dateUpdated\":\"2024-08-24 14:59:20\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:30\",\"taxHeading\":\"GST 28%\",\"taxPercent\":28,\"taxExclusiveValue\":16197.440000000002,\"taxInclusiveValue\":0,\"tax\":32394.880000000005,\"basePriceCost\":115696,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":115696,\"profit\":113696,\"rewardPoints\":11569.6}]', '', 0, '', '', '', 1, 1, 2, 0, '', 1, 1, 1, 0, 1, '2024-08-24 14:59:42'),
(43, 43, 1, 'INV-2024-', 'Walk In Customer', '', '0000000000', 115696.00, 32394.88, 0.00, '[]', 'null', 8, 'Cash', '', 148091.00, 11570, '0', '', 'finalCheckout', 0, '8HsDHqsTDlGMaZtYiC7ICjzPsIyjmgmepEr6sNLg60eLknIf3EAxLJscPQe8VsJ6AYh5hDGRmFCzrrWCOtOys0kXsetoRkPOa89gdlPjwwmMaU3nT6ZZx0LhKI5VaiIN9HCHVCridgkwCvFKJTUWCWW3uoCP58kiKD5mQGSTV6SJET6vT9MuxkpuhORJg365ETwba4ZbWT5nV2SWAsZFVKP0GRMqy8awATxF9UnwdFxZElzJdFw1ZU8YDRDyPNW', 0, '', 0, 1, 'Completed', '[{\"productId\":100,\"heading\":\"Eldora Hackett III\",\"model\":\"EtfkfhSgZJ\",\"barcode\":98321009,\"cost\":1000,\"price\":57848,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":5,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":\"2\",\"subtract\":0,\"changePriceDuringBilling\":1,\"image\":null,\"relatedImage\":\"\\\"\\\"\",\"showInPos\":1,\"productType\":\"Product\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":2,\"dateUpdated\":\"2024-08-24 15:00:19\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:30\",\"taxHeading\":\"GST 28%\",\"taxPercent\":28,\"taxExclusiveValue\":16197.440000000002,\"taxInclusiveValue\":0,\"tax\":32394.880000000005,\"basePriceCost\":115696,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":115696,\"profit\":113696,\"rewardPoints\":11569.6}]', '', 0, '', '', '', 1, 1, 2, 0, '', 1, 1, 1, 0, 1, '2024-08-24 15:43:16'),
(44, 44, 1, 'INV-2024-', 'Walk In Customer', '', '0000000000', 173544.00, 48592.32, 0.00, '[]', 'null', 8, 'Cash', '', 222136.00, 17354, '0', '', 'finalCheckout', 0, 'XNjAV8j1PVCpYAFRHclCEnCUe669KtbMW9AaIuzHNuS7MU25EaLN3tXj1X1u536cyyykzVyFzVVYKLsCPGOBPP8Yr3QCdOnHvsTSfYY3HckSzV9AM0AhWMqdXuOcXTPQZzRJocIKAlqGhubt2dWvYDCHJyLbyzJrrKJJbtpxtEDxThYSVbWPDOahKKrWQ1uayNwPY6nRlx8ABGJ5fudJAWbBQSZVTNV8nCBhZbp70WYtdCFz4ikUF6XgCiHn2ub', 0, '', 0, 1, 'Completed', '[{\"productId\":100,\"heading\":\"Eldora Hackett III\",\"model\":\"EtfkfhSgZJ\",\"barcode\":98321009,\"cost\":1000,\"price\":57848,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":5,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":\"3\",\"subtract\":0,\"changePriceDuringBilling\":1,\"image\":null,\"relatedImage\":\"\\\"\\\"\",\"showInPos\":1,\"productType\":\"Product\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":2,\"dateUpdated\":\"2024-08-24 15:44:45\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:30\",\"taxHeading\":\"GST 28%\",\"taxPercent\":28,\"taxExclusiveValue\":16197.440000000002,\"taxInclusiveValue\":0,\"tax\":48592.32000000001,\"basePriceCost\":173544,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":173544,\"profit\":170544,\"rewardPoints\":17354.4}]', '', 0, '', '', '', 1, 1, 3, 0, '', 1, 1, 1, 0, 1, '2024-08-24 15:47:48'),
(45, 45, 1, 'INV-2024-', 'Walk In Customer', '', '0000000000', 115696.00, 32394.88, 0.00, '[]', 'null', 8, 'Cash', '', 148091.00, 11570, '0', '', 'finalCheckout', 0, 'xfRP22CU9riV7R707yleEhhMkq82cyMYyIgxciKLLTlQ0zqT0BOtkFbyMBr3OltftWNTQCfY2BvP29tvx7L8WU5BaVymSwB5M039BoBJ6nzOsjtNDaOvqQhXt8tv0KW0x1z6Tkt8OZOmhTLGrMmTvEJthKcSIi7WK8FLjAt1EAKslnrg6gCXewYArWNaSTGJtZr6LE6IQA6QiPCExDQ4EFmMpKSpMc2cdscSAxpnSNIHN7eInqbSoPMgxFqPovQ', 0, '', 0, 1, 'Completed', '[{\"productId\":100,\"heading\":\"Eldora Hackett III\",\"model\":\"EtfkfhSgZJ\",\"barcode\":98321009,\"cost\":1000,\"price\":57848,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":5,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":\"2\",\"subtract\":0,\"changePriceDuringBilling\":1,\"image\":null,\"relatedImage\":\"\\\"\\\"\",\"showInPos\":1,\"productType\":\"Product\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":2,\"dateUpdated\":\"2024-08-24 16:00:18\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:30\",\"taxHeading\":\"GST 28%\",\"taxPercent\":28,\"taxExclusiveValue\":16197.440000000002,\"taxInclusiveValue\":0,\"tax\":32394.880000000005,\"basePriceCost\":115696,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":115696,\"profit\":113696,\"rewardPoints\":11569.6}]', '', 0, '', '', '', 1, 1, 2, 0, '', 1, 1, 1, 0, 1, '2024-08-24 16:01:15'),
(46, 46, 1, 'INV-2024-', 'Walk In Customer', '', '0000000000', 57848.00, 16197.44, 0.00, '[]', 'null', 9, 'Wallet', '', 74045.00, 5785, '0', '', 'finalCheckout', 0, 'D4pZwvMw1AUImQ7Ki0B8EYSun2liezw58MU4oiqwt90RRyKT9eTyaQocE6IpkX4M4MsENnQSCK78qbAz50TbY2xcUKAzc7y4qVuB27U042VkEnJt0LuO3lFTVXlQQ2yddS9g9ZmdQFIY78RCqMX9wa1ZqQA6tM9rcRzJuatNDNY8HVuwixhpqB3CAnUlXN6u0DJQychEEDVqVeYZPMRkeVq9hSka5ZXmJwf33h2T4I3nDJ4IHawa7187OQ7sVSI', 0, '', 0, 1, 'Completed', '[{\"productId\":100,\"heading\":\"Eldora Hackett III\",\"model\":\"EtfkfhSgZJ\",\"barcode\":98321009,\"cost\":1000,\"price\":57848,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":5,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":0,\"changePriceDuringBilling\":1,\"image\":null,\"relatedImage\":\"\\\"\\\"\",\"showInPos\":1,\"productType\":\"Product\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":2,\"dateUpdated\":\"2024-08-24 16:01:34\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:30\",\"taxHeading\":\"GST 28%\",\"taxPercent\":28,\"taxExclusiveValue\":16197.440000000002,\"taxInclusiveValue\":0,\"tax\":16197.440000000002,\"basePriceCost\":57848,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":57848,\"profit\":56848,\"rewardPoints\":5784.8}]', '', 0, '', '', '', 1, 1, 1, 0, '', 1, 1, 1, 0, 1, '2024-08-24 16:07:45'),
(47, 47, 1, 'INV-2024-', 'Walk In Customer', '', '0000000000', 57848.00, 16197.44, 0.00, '[]', 'null', 9, 'Wallet', '', 74045.00, 5785, '0', '', 'finalCheckout', 0, 'jfppX1ZyLg7pobOrv3miuCX6rjAakE16hJbRA3fGxGofyIPQS03ERLPCdJfzKYpZnmF8r13etqS76K4PqET31PsMod3VIdoQ5RcegGng832S7Wk0ZOnvDUHpz9a0I7AI8aGAlicEwPAsVwISkUBh26FiKx2XrYpVb5V9lhk772mO2oiEOmBcMN0tKHRZAB36eCvtTrMBRJMZC2KKDHKdYxyVR58hKWCUK8LYJY8I8bX8VK7f4RpA4ucL3nqIl2w', 0, '', 0, 1, 'Completed', '[{\"productId\":100,\"heading\":\"Eldora Hackett III\",\"model\":\"EtfkfhSgZJ\",\"barcode\":98321009,\"cost\":1000,\"price\":57848,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":5,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":0,\"changePriceDuringBilling\":1,\"image\":null,\"relatedImage\":\"\\\"\\\"\",\"showInPos\":1,\"productType\":\"Product\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":2,\"dateUpdated\":\"2024-08-24 16:07:45\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:30\",\"taxHeading\":\"GST 28%\",\"taxPercent\":28,\"taxExclusiveValue\":16197.440000000002,\"taxInclusiveValue\":0,\"tax\":16197.440000000002,\"basePriceCost\":57848,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":57848,\"profit\":56848,\"rewardPoints\":5784.8}]', '', 0, '', '', '', 1, 1, 1, 0, '', 1, 1, 1, 0, 1, '2024-08-24 16:10:36'),
(48, 48, 1, 'INV-2024-', 'Walk In Customer', '', '0000000000', 58356.00, 16197.44, 0.00, '[]', 'null', 8, 'Cash', '', 74553.00, 5835, '0', '', 'finalCheckout', 0, 'gghH8LbzcaJqOc6JVQTpmJOsFKw1pOYvnbhGnItmptpQQSJ3yXid0RIy2E6ux7JTr3XOaX8S6Gd52ftKzEWn8fy1pYEoJKgzoXXlVVvHDip5PDnmOlw30mG5JEV6YaJOESW60V7H6P7axLE1TMCewJ9lxT13CmkwUu6OX8LMou7nwHoKuqfOlbMKydF040XoxIYnxDbt8vinHdadpZ5UY6LZog2NKYoyPxp7EjhA3PcO13LbL4xhrmma9M7rYpz', 1, 'Table No 1', 0, 1, 'Completed', '', '', 0, '', '', '', 1, 7, 7, 0, '', 1, 1, 1, 0, 1, '2024-10-02 10:08:19'),
(49, 49, 1, 'INV-2024-', 'Walk In Customer', '', '0000000000', 58356.00, 16197.44, 0.00, '[]', 'null', 8, 'Cash', '', 74553.00, 5835, '0', '', 'finalCheckout', 0, 'eeUk4RUimItO6dzUhl0OGVcm7wm8Pmk7YA600DAtrgVQbZ0nNPaQNRjLqwxmLpeWUYXRSIQRz1jEVZdPosBcTX0cdxf9w1h5ZE3D1WdHyxYkfmgPUSAkvcqijXCQs5U5qRUIBkkELpzn5rVz4os2OKZ1ovcrfiDRfcv8C3r7IdB3zUSIKO8vXdiNhItHum2VdwzkgZTh29x9hwj8hiBdvx2YrpfmgiUVA7vAM6QsH5iTUB2yb9Gbs4NOTenLb9K', 1, 'Table No 1', 0, 1, 'Completed', '', '', 0, '', '', '', 1, 7, 7, 0, '', 1, 1, 1, 0, 1, '2024-10-02 10:10:33'),
(50, 50, 1, 'INV-2024-', 'Walk In Customer', '', '0000000000', 58356.00, 16197.44, 0.00, '[]', 'null', 8, 'Cash', '', 74553.00, 5835, '0', '', 'finalCheckout', 0, 'sh6lYB7k8LFRoaEusnOBZoe99WEMtg7I9Mn3a3nSQwBnaiaD4gj1nIuqnTtAL2zt6DK3DbN19oirEG1pKspivSBBvSr24rFRrKhzWLmUgzwplXCvg66ftSFmf6dzQRrIKBOM9OaYZrqqtEFt8sHqkuv3lQ4KIryqcr2i3xXmL5tm0K3OUpqqo6fuCGvZ8ehGQ1EQe92J2MjXbKbxXwz60Q9fziYEZ8rojMQYodrCGqGCMBiUXw6LMbkZZcvS3IC', 1, 'Table No 1', 0, 1, 'Completed', '', '', 0, '', '', '', 1, 7, 7, 0, '', 1, 1, 1, 0, 1, '2024-10-02 10:13:48'),
(51, 51, 1, 'INV-2024-', 'Walk In Customer', '', '0000000000', 58356.00, 16197.44, 0.00, '[]', 'null', 8, 'Cash', '', 74553.00, 5835, '0', '', 'finalCheckout', 0, 'mKkimiC0m1TUiNiQ6q5uiL6v3tTCFo82q0RL5h2G7s6zeMRGv0KPy8H2SKvFDOQ6Cf3oCgtrYvguUInJB8sjddssWrBw8Dp6kIJ9NnI99Rp02LYBrH0r3VTTFJfcRgcO71IMfUIvF08iJ4TAKUmzmTREQDrKSFXSgPQECaXjIfRjgblHjvgRFXAP0IP5ZAlo0erO0Zfp92CgFXQRW5QZ4NHYV52f6SGEr7l1VlBcMlwklCAtSaVYXOA7BG0VTbp', 1, 'Table No 1', 0, 1, 'Completed', '[{\"productId\":120,\"heading\":\"sadgfg\",\"model\":\"3\",\"barcode\":98321030,\"barcodeType\":\"\",\"cost\":3,\"price\":3,\"percent\":0,\"manufacturerId\":2,\"categoryId\":2,\"vendorId\":1,\"unitId\":0,\"taxId\":0,\"taxType\":\"Exclusive\",\"hsnCode\":\"3\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"productType\":\"\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":0,\"insertedBy\":1,\"dateUpdated\":\"2024-08-26 12:29:00\",\"status\":1,\"dateAdded\":\"2024-08-20 11:35:00\",\"taxHeading\":\"\",\"taxPercent\":0,\"taxExclusiveValue\":0,\"taxInclusiveValue\":0,\"tax\":0,\"basePriceCost\":0,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":3,\"profit\":-3,\"rewardPoints\":0.30000000000000004},{\"productId\":119,\"heading\":\"sdgdfshgf\",\"model\":\"2\",\"barcode\":98321029,\"barcodeType\":\"\",\"cost\":2,\"price\":2,\"percent\":0,\"manufacturerId\":2,\"categoryId\":2,\"vendorId\":1,\"unitId\":0,\"taxId\":0,\"taxType\":\"Exclusive\",\"hsnCode\":\"2\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"productType\":\"\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":0,\"insertedBy\":1,\"dateUpdated\":\"2024-08-26 12:29:00\",\"status\":1,\"dateAdded\":\"2024-08-20 11:33:53\",\"taxHeading\":\"\",\"taxPercent\":0,\"taxExclusiveValue\":0,\"taxInclusiveValue\":0,\"tax\":0,\"basePriceCost\":0,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":2,\"profit\":-2,\"rewardPoints\":0.2},{\"productId\":118,\"heading\":\"sfdfg\",\"model\":\"1\",\"barcode\":98321028,\"barcodeType\":\"\",\"cost\":1,\"price\":1,\"percent\":0,\"manufacturerId\":2,\"categoryId\":2,\"vendorId\":1,\"unitId\":0,\"taxId\":0,\"taxType\":\"Exclusive\",\"hsnCode\":\"1\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"productType\":\"\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":0,\"insertedBy\":1,\"dateUpdated\":\"2024-08-26 12:29:00\",\"status\":1,\"dateAdded\":\"2024-08-20 11:31:26\",\"taxHeading\":\"\",\"taxPercent\":0,\"taxExclusiveValue\":0,\"taxInclusiveValue\":0,\"tax\":0,\"basePriceCost\":0,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":1,\"profit\":-1,\"rewardPoints\":0.1},{\"productId\":117,\"heading\":\"dfs\",\"model\":\"1\",\"barcode\":98321027,\"barcodeType\":\"\",\"cost\":1,\"price\":1,\"percent\":0,\"manufacturerId\":2,\"categoryId\":2,\"vendorId\":1,\"unitId\":0,\"taxId\":0,\"taxType\":\"Exclusive\",\"hsnCode\":\"1\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"productType\":\"\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":0,\"insertedBy\":1,\"dateUpdated\":\"2024-08-26 12:29:00\",\"status\":1,\"dateAdded\":\"2024-08-20 11:29:43\",\"taxHeading\":\"\",\"taxPercent\":0,\"taxExclusiveValue\":0,\"taxInclusiveValue\":0,\"tax\":0,\"basePriceCost\":0,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":1,\"profit\":-1,\"rewardPoints\":0.1},{\"productId\":116,\"heading\":\"dfs\",\"model\":\"1\",\"barcode\":98321026,\"barcodeType\":\"\",\"cost\":1,\"price\":1,\"percent\":0,\"manufacturerId\":2,\"categoryId\":2,\"vendorId\":1,\"unitId\":0,\"taxId\":0,\"taxType\":\"Exclusive\",\"hsnCode\":\"1\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"productType\":\"\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":0,\"insertedBy\":1,\"dateUpdated\":\"2024-08-26 12:29:00\",\"status\":1,\"dateAdded\":\"2024-08-20 11:29:33\",\"taxHeading\":\"\",\"taxPercent\":0,\"taxExclusiveValue\":0,\"taxInclusiveValue\":0,\"tax\":0,\"basePriceCost\":0,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":1,\"profit\":-1,\"rewardPoints\":0.1},{\"productId\":100,\"heading\":\"Eldora Hackett III\",\"model\":\"EtfkfhSgZJ\",\"barcode\":98321009,\"barcodeType\":\"\",\"cost\":1000,\"price\":57848,\"percent\":0,\"manufacturerId\":2,\"categoryId\":2,\"vendorId\":0,\"unitId\":0,\"taxId\":5,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":0,\"changePriceDuringBilling\":1,\"image\":null,\"relatedImage\":\"\\\"\\\"\",\"showInPos\":1,\"productType\":\"Product\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":2,\"dateUpdated\":\"2024-08-26 12:29:00\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:30\",\"taxHeading\":\"GST 28%\",\"taxPercent\":28,\"taxExclusiveValue\":16197.440000000002,\"taxInclusiveValue\":0,\"tax\":16197.440000000002,\"basePriceCost\":57848,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":57848,\"profit\":56848,\"rewardPoints\":5784.8},{\"productId\":103,\"heading\":\"Hotel Room 2\",\"model\":\"Hotel\",\"barcode\":98321014,\"barcodeType\":\"\",\"cost\":500,\"price\":500,\"percent\":0,\"manufacturerId\":2,\"categoryId\":2,\"vendorId\":0,\"unitId\":0,\"taxId\":0,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":0,\"changePriceDuringBilling\":0,\"image\":\"public\\/assets\\/uploads\\/ship_shop_pos_default\\/693478300.jpeg\",\"relatedImage\":\"[\\\"public\\\\\\/assets\\\\\\/uploads\\\\\\/ship_shop_pos_default\\\\\\/419239602.jpeg\\\"]\",\"showInPos\":1,\"productType\":\"Hotel\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":1,\"dateUpdated\":\"2024-08-26 12:29:00\",\"status\":1,\"dateAdded\":\"2024-07-02 11:43:02\",\"taxHeading\":\"\",\"taxPercent\":0,\"taxExclusiveValue\":0,\"taxInclusiveValue\":0,\"tax\":0,\"basePriceCost\":0,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":500,\"profit\":-500,\"rewardPoints\":50}]', '', 0, '', '', '', 1, 7, 7, 0, '', 1, 1, 1, 0, 1, '2024-10-02 10:24:00'),
(52, 52, 1, 'INV-2024-', 'Walk In Customer', '', '0000000000', 57848.00, 16197.44, 0.00, '[]', '{\"discount\":\"10%\",\"discountValue\":5784.8}', 8, 'Cash', '', 68261.00, 0, '0', '', 'finalCheckout', 0, 'NJxg7TXsR9NtzYBJlpPM3cQHSyaolfOHjMBjLfjewBKPwQ3Z3rgi0rNmKMfAJ2JI6wZwSniPvMgZ9uT5smKOu4SLgi0IFYUpVJB1Q34aIOeoGtidyN6YXMpHTJOOLUPtxSyiPu7jRaB61EqMUMkL7eZVMSY6AkkestPm9C6xoZc5tB0Kdt45skAo7FBFJt0ZptmgvbShDgRC6aXqUVTOCBnJ2J8RLRDofnQnvgSSilmSOoN4L7NcXIzRhc85xWO', 0, '', 0, 1, 'Completed', '[{\"productId\":100,\"heading\":\"Eldora Hackett III\",\"model\":\"EtfkfhSgZJ\",\"barcode\":98321009,\"barcodeType\":\"\",\"cost\":1000,\"price\":57848,\"percent\":0,\"manufacturerId\":2,\"categoryId\":2,\"vendorId\":0,\"unitId\":0,\"taxId\":5,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":0,\"changePriceDuringBilling\":1,\"image\":null,\"relatedImage\":\"\\\"\\\"\",\"showInPos\":1,\"productType\":\"Product\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":2,\"dateUpdated\":\"2024-10-02 10:24:01\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:30\",\"taxHeading\":\"GST 28%\",\"taxPercent\":28,\"taxExclusiveValue\":16197.440000000002,\"taxInclusiveValue\":0,\"tax\":16197.440000000002,\"basePriceCost\":57848,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":57848,\"profit\":56848,\"rewardPoints\":0}]', '', 0, '', '', '', 1, 1, 1, 0, '', 1, 1, 1, 0, 1, '2024-10-02 10:24:49');
INSERT INTO `order` (`orderId`, `sno`, `customerId`, `invoicePrefix`, `name`, `email`, `mobile`, `subTotal`, `tax`, `productDiscount`, `additionalCharges`, `globalDiscount`, `paymentId`, `paymentMethod`, `multiplePaymentData`, `total`, `rewardEarned`, `rewardUsed`, `orderType`, `checkoutType`, `runningOrder`, `kotToken`, `seatingTableId`, `seatingTableHeading`, `hold`, `orderStatusId`, `orderStatusHeading`, `orderProduct`, `orderTotal`, `employeeId`, `posComment`, `posImage`, `deliveryDate`, `salesUserId`, `totalItemsInCart`, `totalQuantityInCart`, `hotel`, `hotelToken`, `storeId`, `userId`, `status`, `softDelete`, `insertedBy`, `dateAdded`) VALUES
(53, 53, 1, 'INV-2024-', 'Walk In Customer', '', '0000000000', 57848.00, 16197.44, 11569.60, '[]', 'null', 8, 'Cash', '', 62476.00, 0, '0', '', 'finalCheckout', 0, 'QVdCVnTDFmGKGHzVNgj3floWdTVFL4m9V3zZSjVH2C4tMBj5dS0qxb1JlAR9GV8WTOR0wFU5cXSN6vVuIJQvswRzz130e3lYIk7x5JN2LFeYlD7z4FhyYUZEj4htxvuv1E1tqtKal8T8plTfuqPbXehu7GC9sAqRmjqlAFvL1jqE8aAF8MdBL8Z0HWaCoBEhT1FUafO8pUuCKw9yWjKJ7dke7XXaDgt33d9CLatP3m7oxO1lZjt1NdewwAohXr1', 0, '', 0, 3, 'Cancelled', '[{\"productId\":100,\"heading\":\"Eldora Hackett III\",\"model\":\"EtfkfhSgZJ\",\"barcode\":98321009,\"barcodeType\":\"\",\"cost\":1000,\"price\":57848,\"percent\":0,\"manufacturerId\":2,\"categoryId\":2,\"vendorId\":0,\"unitId\":0,\"taxId\":5,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":\"1\",\"subtract\":0,\"changePriceDuringBilling\":1,\"image\":null,\"relatedImage\":\"\\\"\\\"\",\"showInPos\":1,\"productType\":\"Product\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":2,\"dateUpdated\":\"2024-10-02 10:24:49\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:30\",\"taxHeading\":\"GST 28%\",\"taxPercent\":28,\"taxExclusiveValue\":16197.440000000002,\"taxInclusiveValue\":0,\"tax\":16197.440000000002,\"basePriceCost\":57848,\"discount\":\"20%\",\"discountValue\":11569.6,\"extraInformation\":\"\",\"total\":57848,\"profit\":45278.4,\"rewardPoints\":0}]', '', 0, '', '', '', 1, 1, 1, 0, '', 1, 1, 1, 0, 1, '2024-10-02 10:45:14'),
(54, 54, 1, 'INV-2024-', 'Walk In Customer', '', '0000000000', 1.00, 0.05, 0.00, '[]', 'null', 8, 'Cash', '', 1.00, 0, '0', 'undefined', 'sendToKot', 0, 'haIEOdQQTW3hjninrGFvRPbEJl3DmB3P7ljSEtLdWToSUAfdMpYNUs3zEAY3QfG2tB0Mbsv59RvhD0JiKjg8Zcw7m1THfpn6i2MaLWsxmtNyUpfjXRhbDb4eQM1kxfdNKGgNnXBpkGmeFgkcLmlVr60qjFKp1xsEQiMJeqX3vz9iOEKl6Dk5kl4zjoTJCXpp97le2eH9I0SqHyhIIKjxe8uF7UoBKT64xjRLokn1n0lbwptWGbxwJoKET1medBt', 0, '', 0, 1, 'Completed', '[{\"productId\":106,\"heading\":\"asdasd\",\"model\":\"asdasda\",\"barcode\":98321016,\"barcodeType\":\"\",\"cost\":1,\"price\":1,\"percent\":0,\"manufacturerId\":2,\"categoryId\":2,\"vendorId\":1,\"unitId\":0,\"taxId\":0,\"taxType\":\"Exclusive\",\"hsnCode\":\"sdf\",\"quantity\":\"1\",\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"productType\":\"\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":0,\"insertedBy\":1,\"dateUpdated\":\"2024-08-26 12:29:00\",\"status\":1,\"dateAdded\":\"2024-08-20 11:15:25\",\"taxHeading\":\"\",\"taxPercent\":0,\"taxExclusiveValue\":0,\"taxInclusiveValue\":0,\"tax\":0,\"basePriceCost\":0,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":1,\"profit\":-1,\"rewardPoints\":0.1,\"sentToKot\":1,\"kotViewed\":0}]', '', 0, '', '', '', 1, 1, 1, 0, '', 1, 1, 1, 0, 1, '2024-10-20 15:55:50'),
(55, 55, 102, 'INV-2024-', 'Priyavrat Sehrawat', 'pkv172019@gmail.com', '8285187287', 578029.00, 27525.19, 0.00, '[]', 'null', 8, 'Cash', '', 578029.00, 57802, '0', 'undefined', 'finalCheckout', 0, '7gHXba0yWuNdkyEy7yR0CQGxXlE9CPIRKZu2fIejePJWMiqLBy8bCcjzOjb8TvpIINcTsxRgmw3iH40BJL7TqnjuQ7ltB82sshZZjKNM9hxSVB9yVfxQprEbq7Qh6Q1oUZDGpJortRKdXEL1HNAQQWwkMIruJjx6gei4a2FDS2NQVIBghpfT8ttU1zHDr4iAuM9LlQgkCYmHxbt7vXSB7ZjcwtHRI1qdQXPqjRsRnDBDYKkC49xCt8QOtUQycC3', 0, '', 0, 1, 'Completed', '[{\"productId\":119,\"heading\":\"sdgdfshgf\",\"model\":\"2\",\"barcode\":98321029,\"barcodeType\":\"\",\"cost\":2,\"price\":2,\"percent\":0,\"manufacturerId\":2,\"categoryId\":2,\"vendorId\":1,\"unitId\":0,\"taxId\":0,\"taxType\":\"Exclusive\",\"hsnCode\":\"2\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"productType\":\"\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":0,\"insertedBy\":1,\"dateUpdated\":\"2024-10-02 10:24:01\",\"status\":1,\"dateAdded\":\"2024-08-20 11:33:53\",\"taxHeading\":\"\",\"taxPercent\":0,\"taxExclusiveValue\":0,\"taxInclusiveValue\":0,\"tax\":0,\"basePriceCost\":0,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":2,\"profit\":-2,\"rewardPoints\":0.2},{\"productId\":120,\"heading\":\"sadgfg\",\"model\":\"3\",\"barcode\":98321030,\"barcodeType\":\"\",\"cost\":3,\"price\":3,\"percent\":0,\"manufacturerId\":2,\"categoryId\":2,\"vendorId\":1,\"unitId\":0,\"taxId\":0,\"taxType\":\"Exclusive\",\"hsnCode\":\"3\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"productType\":\"\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":0,\"insertedBy\":1,\"dateUpdated\":\"2024-10-02 10:24:01\",\"status\":1,\"dateAdded\":\"2024-08-20 11:35:00\",\"taxHeading\":\"\",\"taxPercent\":0,\"taxExclusiveValue\":0,\"taxInclusiveValue\":0,\"tax\":0,\"basePriceCost\":0,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":3,\"profit\":-3,\"rewardPoints\":0.30000000000000004},{\"productId\":95,\"heading\":\"Milford Herman\",\"model\":\"5K1IvC7bgF\",\"barcode\":84439094,\"barcodeType\":\"\",\"cost\":78498,\"price\":156996,\"percent\":0,\"manufacturerId\":2,\"categoryId\":2,\"vendorId\":0,\"unitId\":0,\"taxId\":4,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"productType\":\"Product\",\"softDelete\":0,\"storeId\":1,\"userId\":2,\"updatedBy\":0,\"insertedBy\":2,\"dateUpdated\":\"2024-08-26 12:29:00\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:29\",\"taxHeading\":\"GST 18%\",\"taxPercent\":18,\"taxExclusiveValue\":28259.28,\"taxInclusiveValue\":0,\"tax\":28259.28,\"basePriceCost\":156996,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":156996,\"profit\":78498,\"rewardPoints\":15699.6},{\"productId\":91,\"heading\":\"Destini Dach III\",\"model\":\"aMGhdlOf5x\",\"barcode\":13338465,\"barcodeType\":\"\",\"cost\":41190,\"price\":82380,\"percent\":0,\"manufacturerId\":2,\"categoryId\":2,\"vendorId\":0,\"unitId\":0,\"taxId\":1,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"productType\":\"Product\",\"softDelete\":0,\"storeId\":1,\"userId\":2,\"updatedBy\":0,\"insertedBy\":2,\"dateUpdated\":\"2024-08-26 12:29:00\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:28\",\"taxHeading\":\"CGST 2.5%\",\"taxPercent\":2.5,\"taxExclusiveValue\":2059.5,\"taxInclusiveValue\":0,\"tax\":2059.5,\"basePriceCost\":82380,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":82380,\"profit\":41190,\"rewardPoints\":8238},{\"productId\":76,\"heading\":\"Bobby Jast\",\"model\":\"ie40ESV2zg\",\"barcode\":30378500,\"barcodeType\":\"\",\"cost\":94767,\"price\":189534,\"percent\":0,\"manufacturerId\":2,\"categoryId\":2,\"vendorId\":0,\"unitId\":0,\"taxId\":4,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"productType\":\"Product\",\"softDelete\":0,\"storeId\":1,\"userId\":2,\"updatedBy\":0,\"insertedBy\":2,\"dateUpdated\":\"2024-08-26 12:29:00\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:25\",\"taxHeading\":\"GST 18%\",\"taxPercent\":18,\"taxExclusiveValue\":34116.119999999995,\"taxInclusiveValue\":0,\"tax\":34116.119999999995,\"basePriceCost\":189534,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":189534,\"profit\":94767,\"rewardPoints\":18953.4},{\"productId\":77,\"heading\":\"Dr. Theron Yost II\",\"model\":\"P6cn7vsmUo\",\"barcode\":63585421,\"barcodeType\":\"\",\"cost\":74557,\"price\":149114,\"percent\":0,\"manufacturerId\":2,\"categoryId\":2,\"vendorId\":0,\"unitId\":0,\"taxId\":1,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"productType\":\"Product\",\"softDelete\":0,\"storeId\":1,\"userId\":2,\"updatedBy\":0,\"insertedBy\":2,\"dateUpdated\":\"2024-08-26 12:29:00\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:25\",\"taxHeading\":\"CGST 2.5%\",\"taxPercent\":2.5,\"taxExclusiveValue\":3727.8500000000004,\"taxInclusiveValue\":0,\"tax\":3727.8500000000004,\"basePriceCost\":149114,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":149114,\"profit\":74557,\"rewardPoints\":14911.400000000001}]', '', 0, '', '', '', 1, 6, 6, 0, '', 1, 1, 1, 0, 1, '2024-10-20 17:13:09'),
(56, 56, 1, 'INV-2024-', 'Walk In Customer', '', '0000000000', 0.00, 0.00, 0.00, NULL, 'null', 8, 'Cash', '', 0.00, 0, '0', '', 'hold', 1, 'IODO1YMzQrGMczRZCYildAM4tvLBBoaZmFL12WVxr3anwsBgthpYItyQ0PUB03s5aSn9E4pbTNlrXqH2kNlE81hZWSlOlhiQ26KR6Tt0t16WXyjWzRaNe5y8Thbh7Bdu20NyNwSwrQQXMpBivhAEhZrtkE3Ad4sULpNWhPNu8X2pmAi2n2DFGXjL9UxmiONy8dGnMfh5yDMnzqmtMc8rrSamzu9uEy9KxwT0T0HG5vIAcuUvnQlHP374hIpS4wN', 1, 'Table No 1', 1, 1, 'Completed', '', '', 0, '', '', '', 1, 0, 0, 1, 'ls6Xwv2XbfzchJePV8vJcj06ADdJ8kyj6OUegSt6T4xunr234D', 1, 1, 1, 0, 1, '2024-12-08 19:09:08'),
(57, 57, 1, 'INV-2024-', 'Walk In Customer', '', '0000000000', 0.00, 0.00, 0.00, NULL, 'null', 8, 'Cash', '', 0.00, 0, '0', '', 'hold', 0, 'egxTGzDfLNXmOATNXxonmP7yFcPrFtS4S2XGsfWoNicLRZupi3896zjjVXfxvxN4F7u9niBIKHVQCHX4xjT8SdcOtMyO45lWSszE5wXWmAGyJz83MmULJtKHVhY3AIUzXM0hgnbhm8521tQixmE7sS2DD0y0BRbZO5Cq5oAs1kM3Z5oUUyGPxEyObuPtrE6brBhyAxHMzCEGkdqDlpabdPvg0jzeBtB8exHA2VnBSMHxPFGSygAXLaSxbdgEpQ3', 1, 'Table No 1', 1, 1, 'Completed', '', '', 0, '', '', '', 1, 0, 0, 1, 'ls6Xwv2XbfzchJePV8vJcj06ADdJ8kyj6OUegSt6T4xunr234D', 1, 1, 1, 0, 1, '2024-12-08 19:09:16'),
(58, 58, 1, 'INV-2024-', 'Walk In Customer', '', '0000000000', 0.00, 0.00, 0.00, NULL, 'null', 8, 'Cash', '', 0.00, 0, '0', '', 'hold', 0, '3KdScq7Iwx3SJfu1YMv5Hi4c1mnlsXtWEMjZI4ZcLl2hV5pYYBu9qCisGY2qYnBrIxHQJqr5PXBls4sABtp9dqu4pTkNdiPSKstLDdkDuDMMS1Wt0i78128R6Qo8GhaIOanXsqkg3vdVVO3w6jEwpDJpMzaxGlnj3n5kQFkTNU18CZ6TtnUtHgXwMYSftKBco6MAUNUGihtLVP3zdpmr9Gu96lWvveIh79zN92IMzKAT3yp7zFAsimwLdZnFX1K', 1, 'Table No 1', 1, 1, 'Completed', '', '', 0, '', '', '', 1, 0, 0, 1, 'ls6Xwv2XbfzchJePV8vJcj06ADdJ8kyj6OUegSt6T4xunr234D', 1, 1, 1, 0, 1, '2024-12-08 19:09:26'),
(59, 59, 1, 'INV-2024-', 'Walk In Customer', '', '0000000000', 0.00, 0.00, 0.00, NULL, 'null', 8, 'Cash', '', 0.00, 0, '0', '', 'hold', 1, 'ZOrTyoieLPscDd27oDcwXUagyfHS0FmA1advccQ08P3ghEkK3YozFUMJyhBNG16goDLOZYnncduJLLP7XTDcLc1iBkuusAlVvkpKhwBMlGrdPceHC75LZKex6TA2HnvQxsBiNGVQDlwJ9Dp88WYLcgRuycyfKOk11vPOlRzvvN08qIak17PtlkJs48nhZ8toP04mcEfVAcy1vnWzESsbO07sz0jofEeA1JFvGGXqSAQYHwGkCtotyHBzxO6VdXR', 1, 'Table No 1', 1, 1, 'Completed', '', '', 0, '', '', '', 1, 0, 0, 1, 'ls6Xwv2XbfzchJePV8vJcj06ADdJ8kyj6OUegSt6T4xunr234D', 1, 1, 1, 0, 1, '2024-12-08 19:16:12'),
(60, 60, 1, 'INV-2024-', 'Walk In Customer', '', '0000000000', 0.00, 0.00, 0.00, NULL, 'null', 8, 'Cash', '', 0.00, 0, '0', '', 'hold', 0, 'pKu6X28poXMUHbpWJgqj1UzGzXHO2akS3rcsgCWdeWY78EVtwc1JuQUuWrulmuxYwYoNNBhuGqa0uDWyJEpYMO2WH4HRE8JqoBouH0zLCsrN3aJyF8AYhzJlfupq4VtVbyvBFyYZl1eGISaInCYO1VbSmHvx2qolU7NJVGkpvnpe3UJEekfBIFhJHcQy7QlP4i9k0Xs9KkhYLIsxyKOGR0zlefjdR2Nsgp3W4RdgrPOB2y9nYFL4X8hDk7wMYhO', 1, 'Table No 1', 1, 1, 'Completed', '', '', 0, '', '', '', 1, 0, 0, 1, 'ls6Xwv2XbfzchJePV8vJcj06ADdJ8kyj6OUegSt6T4xunr234D', 1, 1, 1, 0, 1, '2024-12-08 19:16:14'),
(61, 61, 1, 'INV-2024-', 'Walk In Customer', '', '0000000000', 0.00, 0.00, 0.00, NULL, 'null', 8, 'Cash', '', 0.00, 0, '0', '', 'hold', 1, 'mvmwxIeWd2fXrfLdxm8bGs3k9J2eIfId9LHMMZds1q021oHK3cfOFOkb57IalQpwUWrrdxK4xdJX3kL6HP4CFErVBvtGb2zanzoRvGoAFoJ4vI7hrMN6O1GZVj0wSRx2JbwuCXzR2xQV23lklUgquqJd6q8NyCs8MbV6o0QStTmsCcQpfk7nAXg22FvUg7wjKOSRrzkM9oJsUbyqA8sGMEWkWuvPDAMuEKY4NkkqdwKhp8GM5sH7SVNrh4mSnLA', 1, 'Table No 1', 1, 1, 'Completed', '', '', 0, '', '', '', 1, 0, 0, 1, 'ls6Xwv2XbfzchJePV8vJcj06ADdJ8kyj6OUegSt6T4xunr234D', 1, 1, 1, 0, 1, '2024-12-08 19:17:55'),
(62, 62, 1, 'INV-2024-', 'Walk In Customer', '', '0000000000', 0.00, 0.00, 0.00, NULL, 'null', 8, 'Cash', '', 0.00, 0, '0', '', 'hold', 0, 'tVCCNiaPgTsRSArQ2vJiwDER6jCYH3dychJZ8EVQ0pf6ZoAnqhBHoYryDLXtANBc5qXymApu45YxOdNnDnqgRZLdwqvwSerESykNaQfZRzSopVYcCU4r1a8TTvXLe5DOYbuq6Hw8Bz5GrrUSV3QwRKRd7N6c3sStydWs3FFFpNf4fgxgNUlGcxXdzW0OmYIe7NQ8WU3Mw5aayiWQbKTDeD4C7VHWKzZdX7LUUuYVc6SsB7lL0Deh8UyLESVgaO5', 1, 'Table No 1', 1, 1, 'Completed', '', '', 0, '', '', '', 1, 0, 0, 1, 'ls6Xwv2XbfzchJePV8vJcj06ADdJ8kyj6OUegSt6T4xunr234D', 1, 1, 1, 0, 1, '2024-12-08 19:19:52'),
(63, 63, 1, 'INV-2024-', 'Walk In Customer', '', '0000000000', 0.00, 0.00, 0.00, NULL, 'null', 8, 'Cash', '', 0.00, 0, '0', '', 'hold', 0, 'u5ZaP2WcqU3swY4NsRMP43YsfZN0hYEtGulCI9yrX4PhWEgpPnDaUIhIM3u2XREiLVnM62poKzgrndOjs2eJj2lgp1C1dGJLpL4YijXmvwZrFquTH223RE0R78vQ8P6sjCscUqZDheyIAxNDpRLDmrcvwpm8PsToJ0v0SvIUXtqqK10COgAfCrhGSXktdujkyws5Y8guIH3aSE8KZMHkpdbkwACFe3PkToTPE9kVr21nljGiQtx7y2HmZb1fb0s', 0, '', 1, 1, 'Completed', '', '', 0, '', '', '', 1, 0, 0, 1, 'RO8xmUIrrrUUt4Y5OdCDqHUuhnmGAibp15nQ44LJUvy0WDFuxM', 1, 1, 1, 0, 1, '2024-12-22 16:02:10'),
(64, 64, 102, 'INV-2024-', 'Priyavrat Sehrawat', 'pkv172019@gmail.com', '8285187287', 0.00, 0.00, 0.00, NULL, 'null', 8, 'Cash', '', 0.00, 0, '0', '', 'hold', 0, 'svtlqkqlLK2iOhiyW0v55nWjgC0PYMJQfOo3tc4dLorgw2mjFLX5X1iwRiMiQnf0NM78sM1cRoPn63iib3KU08kcMr8sBS2OODIAcP2TB1Jm08flt4I7IrSMl1ozOdudXMsdepfMdrriE2XEaPaxxVKTKD0RbfWGc9QAq3rEFrV3p7CA1LDzzVqhIN34A65DAqo8cBr0xdZxvTslHdfDZbMdFxiyPYyTFDPsoWHUwFGz8GLV8dQvC1MYD6DEOQF', 0, '', 1, 1, 'Completed', '', '', 0, '', '', '', 1, 0, 0, 1, 'jQTEjltVXBDQ7UgyHu78mwjamPlylqJ1yiQgFgLk468OOTbErX', 1, 1, 1, 0, 1, '2024-12-22 20:05:14'),
(65, 65, 102, 'INV-2024-', 'Priyavrat Sehrawat', 'pkv172019@gmail.com', '8285187287', 0.00, 0.00, 0.00, NULL, 'null', 8, 'Cash', '', 0.00, 0, '0', '', 'hold', 0, 'skVUlJIoqU9cPqg8QU2L7KlC7ecNdmcRZozaU7MlWJKSB1od2idRiwNaQGKsDeJWAKaorJ7rOXNekJm2bG5KLLrtYUwEbAEG3PWVcxlIMfjpF6ED1294byf5a5QFs5xlPoRgKc7xTdi2kQS9cRSNXoqFnvadi4ld7KT3XM6sQ4oU1ICkYnU7Fp3reCRCR9vV2GBBh5jr4oLkxlcBXGh07SDoe8CJFrxeMIDHj9XAIhJNE3jmSQAZodRyLGsF6wC', 0, '', 1, 1, 'Completed', '', '', 0, '', '', '', 1, 0, 0, 1, 'jQTEjltVXBDQ7UgyHu78mwjamPlylqJ1yiQgFgLk468OOTbErX', 1, 1, 1, 0, 1, '2024-12-22 20:09:20'),
(66, 66, 102, 'INV-2024-', 'Priyavrat Sehrawat', 'pkv172019@gmail.com', '8285187287', 0.00, 0.00, 0.00, NULL, 'null', 8, 'Cash', '', 0.00, 0, '0', '', 'hold', 0, '4jzvidnuTEoi4emlqQ7K6GG4hDJKbRTCif7hqOr07QcblFMf1ptAbtAqgvbTVB31Vo6ty8s7WHsg3tGFuGUaEIjDKOSjahZgyX1ptRgmmIsdYaScAHmSmCmI7HzUlJpomkXVcebzJroKDacLBewd4UlSYiAeGTUR0ozpcEYgMxqjvPGx1in8o83bccTV0wFzyMpYMgc3j79YoWyHq8YAuHvRSz2zM6PpZEB7f6bnngmNSMM5oKWfN85cULEgGqb', 0, '', 1, 1, 'Completed', '', '', 0, '', '', '', 1, 0, 0, 1, 'jQTEjltVXBDQ7UgyHu78mwjamPlylqJ1yiQgFgLk468OOTbErX', 1, 1, 1, 0, 1, '2024-12-22 20:10:02'),
(67, 67, 102, 'INV-2024-', 'Priyavrat Sehrawat', 'pkv172019@gmail.com', '8285187287', 0.00, 0.00, 0.00, NULL, 'null', 8, 'Cash', '', 0.00, 0, '0', '', 'hold', 0, '6liS8g3TPG78aCubCesWTC9Dx2h21PpXKAA7MKtqGMLzL97QFCyCGr8ul4jFpHYlttbk4pKhW3Xt3cG2BWGjYzDCAHbKqWvdfrkktDyfr2VUGE8Aj4I9u52fJQJF6Rfe1wIiPQPLG9HblFRnyLxu4n1aBSqlWxxdY7CUIsRqeG0rlFG2p9gPPxph6O8BZCzHpPrDHU0UpVPO1BBmybpGxXvLB52J6hvnTApz6KF63tWQbkhulCXLBx3cWR052zi', 0, '', 1, 1, 'Completed', '', '', 0, '', '', '', 1, 0, 0, 1, 'jQTEjltVXBDQ7UgyHu78mwjamPlylqJ1yiQgFgLk468OOTbErX', 1, 1, 1, 0, 1, '2024-12-22 20:10:33'),
(68, 68, 1, 'INV-2024-', 'Walk In Customer', '', '0000000000', 0.00, 0.00, 0.00, NULL, 'null', 8, 'Cash', '', 0.00, 0, '0', '', 'hold', 0, '8A8hJrBdkNtQBLxfCLJTvn1mJWsr5N9wnWPuUcs0ctb60LwcYjQfi4auYhIEO5CSffx241Q5Anqbi8JJONIhESRanhwlOAyHtACcMxX8deG4woDFvtv40FmxLrJRTxqldkbWsHUTXH5lQl6HoF9CTeVVFCB4x4zLj5wQcyrR81vRWY0ZZoJz4py9Tr23OxLWBzRCNNTgWRuBhBIGLoVEudqiYMlZuZhj78E7IGg2aQfi2knA3l9WidSgPlaSm3V', 0, '', 1, 1, 'Completed', '', '', 0, '', '', '', 1, 0, 0, 1, 'FbJkw0CNKCH89dqzsTw0KDUlgv4NEaPAzb1WHlEdNdNgcskTwe', 1, 1, 1, 0, 1, '2024-12-22 21:12:10'),
(69, 69, 1, 'INV-2024-', 'Walk In Customer', '', '0000000000', 0.00, 0.00, 0.00, NULL, 'null', 8, 'Cash', '', 0.00, 0, '0', '', 'hold', 0, '8yb2C6957tTvIKTKENNiW3RCZcGWYjJOsROzbJDPf8i4KNnsCgeYDuHzuYniD4KfzBUinFKO9PEdwt1zJO2tZ6mH8Mv2eO8i3O231BbJnc7pl1QJEXBUyBUfrf4zYkbIq1WWkimjQ0Dv9nNtQhgjoPklLg23oE2i9sCUPhxY2BC6pRKcJrtAoP6394nTQHs64JYvZaM0hzu9eTO1FV7O09bt1TfmWXwXMVnK1ZxzJLkswi2IAj0cQol1NwnhmqK', 0, '', 1, 1, 'Completed', '', '', 0, '', '', '', 1, 0, 0, 1, 'UQ8e19aSqYtKwiTe5CoVzJE7wTCvVHxfTU6plAzhiOk3bieBYJ', 1, 1, 1, 0, 1, '2024-12-22 22:14:54'),
(70, 70, 102, 'INV-2024-', 'Priyavrat Sehrawat', 'pkv172019@gmail.com', '8285187287', 5.00, 0.00, 0.00, '[]', 'null', 8, 'Cash', '', 5.00, 0, '0', '', 'finalCheckout', 0, 'e27ED7Fm50XnlcZYXQDBJRuFkkowZBjTnjco7fuNKHn1NlC43eizkTDsG6KqQkwIOnk0FsDo37YMWSVJtaDViC97zxjVh5PkPVzv92yQHpjY2e3IO1ZOInApFj4U2chpteojUpDir5SlwWgoA6SdwyuCoQXY8rsdZJpNITcAU1kzRJKVrcS2Rrl1ehh5CjVpt6tYiK0Yar9xKkIufDNbzXSNItEyjbplOtFhmMAJKRSxXqG4dXREfu1iJozghBr', 0, '', 0, 1, 'Completed', '[{\"productId\":120,\"heading\":\"sadgfg\",\"model\":\"3\",\"barcode\":98321030,\"barcodeType\":\"\",\"cost\":3,\"price\":3,\"percent\":0,\"manufacturerId\":2,\"categoryId\":2,\"vendorId\":1,\"unitId\":0,\"taxId\":0,\"taxType\":\"Exclusive\",\"hsnCode\":\"3\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"productType\":\"\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":0,\"insertedBy\":1,\"dateUpdated\":\"2024-10-20 17:13:10\",\"status\":1,\"dateAdded\":\"2024-08-20 11:35:00\",\"taxHeading\":\"\",\"taxPercent\":0,\"taxExclusiveValue\":0,\"taxInclusiveValue\":0,\"tax\":0,\"basePriceCost\":0,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":3,\"profit\":-3,\"rewardPoints\":0.30000000000000004},{\"productId\":115,\"heading\":\"sdf\",\"model\":\"1\",\"barcode\":98321025,\"barcodeType\":\"\",\"cost\":1,\"price\":1,\"percent\":0,\"manufacturerId\":2,\"categoryId\":2,\"vendorId\":1,\"unitId\":0,\"taxId\":0,\"taxType\":\"Exclusive\",\"hsnCode\":\"1\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"productType\":\"\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":0,\"insertedBy\":1,\"dateUpdated\":\"2024-08-26 12:29:00\",\"status\":1,\"dateAdded\":\"2024-08-20 11:28:14\",\"taxHeading\":\"\",\"taxPercent\":0,\"taxExclusiveValue\":0,\"taxInclusiveValue\":0,\"tax\":0,\"basePriceCost\":0,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":1,\"profit\":-1,\"rewardPoints\":0.1},{\"productId\":109,\"heading\":\"dfsdf\",\"model\":\"sdfsd\",\"barcode\":98321019,\"barcodeType\":\"\",\"cost\":1,\"price\":1,\"percent\":0,\"manufacturerId\":2,\"categoryId\":2,\"vendorId\":1,\"unitId\":0,\"taxId\":0,\"taxType\":\"Exclusive\",\"hsnCode\":\"1\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"productType\":\"\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":0,\"insertedBy\":1,\"dateUpdated\":\"2024-08-26 12:29:00\",\"status\":1,\"dateAdded\":\"2024-08-20 11:17:39\",\"taxHeading\":\"\",\"taxPercent\":0,\"taxExclusiveValue\":0,\"taxInclusiveValue\":0,\"tax\":0,\"basePriceCost\":0,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":1,\"profit\":-1,\"rewardPoints\":0.1}]', '', 0, '', '', '', 1, 3, 3, 1, 'gM0RKJFCN0ALOXRCPXYrsZk02sd78t36qTTRdmKB7pc1rr0oqU', 1, 1, 1, 0, 1, '2024-12-23 09:56:18');

-- --------------------------------------------------------

--
-- Table structure for table `order_history`
--

CREATE TABLE `order_history` (
  `orderHistoryId` int(11) NOT NULL,
  `orderId` int(11) NOT NULL,
  `orderStatusId` int(11) NOT NULL,
  `comment` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `storeId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `order_history`
--

INSERT INTO `order_history` (`orderHistoryId`, `orderId`, `orderStatusId`, `comment`, `status`, `storeId`, `userId`, `dateAdded`) VALUES
(1, 22, 3, '', 1, 1, 1, '2024-07-18 15:22:22'),
(2, 21, 3, '', 1, 1, 1, '2024-07-18 15:30:58'),
(3, 23, 3, '', 1, 1, 1, '2024-07-19 13:47:10'),
(4, 23, 1, '', 1, 1, 1, '2024-07-19 13:59:53'),
(5, 23, 1, '', 1, 1, 1, '2024-07-19 14:00:50'),
(6, 23, 1, '', 1, 1, 1, '2024-07-19 14:01:31'),
(7, 24, 1, '', 1, 1, 1, '2024-07-19 14:03:29'),
(8, 26, 1, '', 1, 1, 1, '2024-07-19 14:30:44'),
(9, 26, 1, '', 1, 1, 1, '2024-07-19 14:33:24'),
(10, 26, 1, '', 1, 1, 1, '2024-07-19 14:35:49'),
(11, 26, 3, '', 1, 1, 1, '2024-07-19 14:37:24'),
(12, 27, 1, '', 1, 1, 1, '2024-08-17 13:14:17'),
(13, 28, 1, '', 1, 1, 1, '2024-08-17 13:15:07'),
(14, 29, 1, '', 1, 1, 1, '2024-08-17 13:15:35'),
(15, 30, 1, '', 1, 1, 1, '2024-08-20 11:35:21'),
(16, 31, 1, '', 1, 1, 1, '2024-08-20 19:27:47'),
(17, 32, 1, '', 1, 1, 1, '2024-08-20 19:34:52'),
(18, 33, 1, '', 1, 1, 1, '2024-08-20 21:15:35'),
(19, 34, 1, '', 1, 1, 1, '2024-08-22 10:43:00'),
(20, 35, 1, '', 1, 1, 1, '2024-08-22 17:28:40'),
(21, 36, 1, '', 1, 1, 1, '2024-08-22 17:50:03'),
(22, 37, 1, '', 1, 1, 1, '2024-08-24 10:42:44'),
(23, 38, 1, '', 1, 1, 1, '2024-08-24 14:26:54'),
(24, 39, 1, '', 1, 1, 1, '2024-08-24 14:27:16'),
(25, 40, 1, '', 1, 1, 1, '2024-08-24 14:28:44'),
(26, 41, 1, '', 1, 1, 1, '2024-08-24 14:58:57'),
(27, 42, 1, '', 1, 1, 1, '2024-08-24 14:59:42'),
(28, 43, 1, '', 1, 1, 1, '2024-08-24 15:43:16'),
(29, 44, 1, '', 1, 1, 1, '2024-08-24 15:47:48'),
(30, 45, 1, '', 1, 1, 1, '2024-08-24 16:01:16'),
(31, 46, 1, '', 1, 1, 1, '2024-08-24 16:07:45'),
(32, 47, 1, '', 1, 1, 1, '2024-08-24 16:10:36'),
(33, 48, 1, '', 1, 1, 1, '2024-10-02 10:08:19'),
(34, 49, 1, '', 1, 1, 1, '2024-10-02 10:10:33'),
(35, 50, 1, '', 1, 1, 1, '2024-10-02 10:13:48'),
(36, 51, 1, '', 1, 1, 1, '2024-10-02 10:24:01'),
(37, 52, 1, '', 1, 1, 1, '2024-10-02 10:24:49'),
(38, 53, 1, '', 1, 1, 1, '2024-10-02 10:45:14'),
(39, 53, 3, '', 1, 1, 1, '2024-10-02 11:13:40'),
(40, 54, 1, '', 1, 1, 1, '2024-10-20 15:55:50'),
(41, 55, 1, '', 1, 1, 1, '2024-10-20 17:13:10'),
(42, 56, 1, '', 1, 1, 1, '2024-12-08 19:09:08'),
(43, 57, 1, '', 1, 1, 1, '2024-12-08 19:09:16'),
(44, 58, 1, '', 1, 1, 1, '2024-12-08 19:09:26'),
(45, 59, 1, '', 1, 1, 1, '2024-12-08 19:16:13'),
(46, 60, 1, '', 1, 1, 1, '2024-12-08 19:16:15'),
(47, 61, 1, '', 1, 1, 1, '2024-12-08 19:17:55'),
(48, 62, 1, '', 1, 1, 1, '2024-12-08 19:19:52'),
(49, 63, 1, '', 1, 1, 1, '2024-12-22 16:02:10'),
(50, 64, 1, '', 1, 1, 1, '2024-12-22 20:05:14'),
(51, 65, 1, '', 1, 1, 1, '2024-12-22 20:09:21'),
(52, 66, 1, '', 1, 1, 1, '2024-12-22 20:10:03'),
(53, 67, 1, '', 1, 1, 1, '2024-12-22 20:10:33'),
(54, 68, 1, '', 1, 1, 1, '2024-12-22 21:12:10'),
(55, 69, 1, '', 1, 1, 1, '2024-12-22 22:14:54'),
(56, 70, 1, '', 1, 1, 1, '2024-12-23 09:56:18');

-- --------------------------------------------------------

--
-- Table structure for table `order_hotel_room`
--

CREATE TABLE `order_hotel_room` (
  `orderHotelRoomId` int(11) NOT NULL,
  `orderId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `customerData` text NOT NULL,
  `timeCheckIn` varchar(20) NOT NULL,
  `timeCheckOut` varchar(20) NOT NULL,
  `dateCheckIn` varchar(20) NOT NULL,
  `dateCheckOut` varchar(20) NOT NULL,
  `totalNoOfDays` int(1) NOT NULL,
  `hotel` text NOT NULL,
  `hotelToken` varchar(255) NOT NULL,
  `storeId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_hotel_room`
--

INSERT INTO `order_hotel_room` (`orderHotelRoomId`, `orderId`, `productId`, `customerData`, `timeCheckIn`, `timeCheckOut`, `dateCheckIn`, `dateCheckOut`, `totalNoOfDays`, `hotel`, `hotelToken`, `storeId`, `userId`, `status`, `dateAdded`) VALUES
(1, 14, 102, '{\"personName\":[\"Priyavrat\",\"Kiwi\"],\"personId\":[\"public\\/assets\\/uploads\\/ship_shop_pos_default\\/383159278.jpeg\",\"public\\/assets\\/uploads\\/ship_shop_pos_default\\/638846176.jpeg\"]}', '10:15', '16:11', '2024-07-03', '2024-07-05', 3, '{\"productId\":102,\"heading\":\"Hotel Room 1\",\"model\":\"Hotel\",\"barcode\":98321014,\"cost\":500,\"price\":500,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":0,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1000,\"subtract\":0,\"changePriceDuringBilling\":0,\"image\":\"public\\/assets\\/uploads\\/ship_shop_pos_default\\/693478300.jpeg\",\"relatedImage\":\"[\\\"public\\\\\\/assets\\\\\\/uploads\\\\\\/ship_shop_pos_default\\\\\\/419239602.jpeg\\\"]\",\"showInPos\":1,\"productType\":\"Hotel\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":1,\"dateUpdated\":\"2024-07-02 13:28:07\",\"status\":1,\"dateAdded\":\"2024-07-02 11:43:02\"}', 'VPMEwkMajBJPvDgTBdHBFz0YwUuhDAQXwmgrEdxaReTdGlqe4v', 1, 1, 1, '2024-07-05 10:15:48'),
(6, 0, 0, '', '11:33', '', '2024-08-14', '', 0, '{\"productId\":103,\"heading\":\"Hotel Room 2\",\"model\":\"Hotel\",\"barcode\":98321014,\"cost\":500,\"price\":500,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":0,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1000,\"subtract\":0,\"changePriceDuringBilling\":0,\"image\":\"public\\/assets\\/uploads\\/ship_shop_pos_default\\/693478300.jpeg\",\"relatedImage\":\"[\\\"public\\\\\\/assets\\\\\\/uploads\\\\\\/ship_shop_pos_default\\\\\\/419239602.jpeg\\\"]\",\"showInPos\":1,\"productType\":\"Hotel\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":1,\"dateUpdated\":\"2024-07-02 13:28:07\",\"status\":1,\"dateAdded\":\"2024-07-02 11:43:02\"}', 'Dfn2k1ugphoi2AGJwhhrkZmROAdRCxb04V1BD7aHbBP4owWDiI', 1, 1, 1, '2024-08-14 11:33:05'),
(7, 0, 0, '', '10:58', '', '2024-08-17', '', 0, '{\"productId\":104,\"heading\":\"Hotel Room 3\",\"model\":\"Hotel\",\"barcode\":98321014,\"cost\":500,\"price\":500,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":0,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1000,\"subtract\":0,\"changePriceDuringBilling\":0,\"image\":\"public\\/assets\\/uploads\\/ship_shop_pos_default\\/693478300.jpeg\",\"relatedImage\":\"[\\\"public\\\\\\/assets\\\\\\/uploads\\\\\\/ship_shop_pos_default\\\\\\/419239602.jpeg\\\"]\",\"showInPos\":1,\"productType\":\"Hotel\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":1,\"dateUpdated\":\"2024-07-02 13:28:07\",\"status\":1,\"dateAdded\":\"2024-07-02 11:43:02\"}', 'ldNaaKie5dETALBwXf5lnwomCSsel84wdE425oJ89Ra3aFCv50', 1, 1, 1, '2024-08-17 10:58:27'),
(8, 0, 0, '', '12:51', '', '2024-08-17', '', 0, '{\"productId\":104,\"heading\":\"Hotel Room 3\",\"model\":\"Hotel\",\"barcode\":98321014,\"cost\":500,\"price\":500,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":0,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1000,\"subtract\":0,\"changePriceDuringBilling\":0,\"image\":\"public\\/assets\\/uploads\\/ship_shop_pos_default\\/693478300.jpeg\",\"relatedImage\":\"[\\\"public\\\\\\/assets\\\\\\/uploads\\\\\\/ship_shop_pos_default\\\\\\/419239602.jpeg\\\"]\",\"showInPos\":1,\"productType\":\"Hotel\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":1,\"dateUpdated\":\"2024-07-02 13:28:07\",\"status\":1,\"dateAdded\":\"2024-07-02 11:43:02\"}', 'xf0jjk6aMWLcNi7SgSiZHOdJvn55avEgEshPivXLlfvJ6LNHiO', 1, 1, 1, '2024-08-17 12:51:39'),
(9, 0, 0, '', '12:52', '', '2024-08-17', '', 0, '{\"productId\":104,\"heading\":\"Hotel Room 3\",\"model\":\"Hotel\",\"barcode\":98321014,\"cost\":500,\"price\":500,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":0,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1000,\"subtract\":0,\"changePriceDuringBilling\":0,\"image\":\"public\\/assets\\/uploads\\/ship_shop_pos_default\\/693478300.jpeg\",\"relatedImage\":\"[\\\"public\\\\\\/assets\\\\\\/uploads\\\\\\/ship_shop_pos_default\\\\\\/419239602.jpeg\\\"]\",\"showInPos\":1,\"productType\":\"Hotel\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":1,\"dateUpdated\":\"2024-07-02 13:28:07\",\"status\":1,\"dateAdded\":\"2024-07-02 11:43:02\"}', 'FGI9IpC3Dck5vSqxH849VTePjzXO7qeTzAiktO4vVXnrYOF79y', 1, 1, 1, '2024-08-17 12:52:14'),
(10, 0, 0, '', '12:54', '', '2024-08-17', '', 0, '{\"productId\":103,\"heading\":\"Hotel Room 2\",\"model\":\"Hotel\",\"barcode\":98321014,\"cost\":500,\"price\":500,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":0,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1000,\"subtract\":0,\"changePriceDuringBilling\":0,\"image\":\"public\\/assets\\/uploads\\/ship_shop_pos_default\\/693478300.jpeg\",\"relatedImage\":\"[\\\"public\\\\\\/assets\\\\\\/uploads\\\\\\/ship_shop_pos_default\\\\\\/419239602.jpeg\\\"]\",\"showInPos\":1,\"productType\":\"Hotel\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":1,\"dateUpdated\":\"2024-07-02 13:28:07\",\"status\":1,\"dateAdded\":\"2024-07-02 11:43:02\"}', '1Kg5MgDQpFqgijPI0DyjvBP1l4YcMKseQYcZj2Y8jvIIYrVNkU', 1, 1, 1, '2024-08-17 12:54:49'),
(11, 0, 0, '', '13:14', '', '2024-08-17', '', 0, '{\"productId\":102,\"heading\":\"Hotel Room 1\",\"model\":\"Hotel\",\"barcode\":98321014,\"cost\":500,\"price\":500,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":0,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1000,\"subtract\":0,\"changePriceDuringBilling\":0,\"image\":\"public\\/assets\\/uploads\\/ship_shop_pos_default\\/693478300.jpeg\",\"relatedImage\":\"[\\\"public\\\\\\/assets\\\\\\/uploads\\\\\\/ship_shop_pos_default\\\\\\/419239602.jpeg\\\"]\",\"showInPos\":1,\"productType\":\"Hotel\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":1,\"dateUpdated\":\"2024-07-02 13:28:07\",\"status\":1,\"dateAdded\":\"2024-07-02 11:43:02\"}', 'rJxi9NTxyS9W6g0UENxyhsMsuRjyWf7UmBZvPX3ykUP27XWH3Q', 1, 1, 1, '2024-08-17 13:14:53'),
(12, 0, 0, '', '10:08', '', '2024-10-02', '', 0, '{\"productId\":103,\"heading\":\"Hotel Room 2\",\"model\":\"Hotel\",\"barcode\":98321014,\"barcodeType\":\"\",\"cost\":500,\"price\":500,\"percent\":0,\"manufacturerId\":2,\"categoryId\":2,\"vendorId\":0,\"unitId\":0,\"taxId\":0,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":999,\"subtract\":0,\"changePriceDuringBilling\":0,\"image\":\"public\\/assets\\/uploads\\/ship_shop_pos_default\\/693478300.jpeg\",\"relatedImage\":\"[\\\"public\\\\\\/assets\\\\\\/uploads\\\\\\/ship_shop_pos_default\\\\\\/419239602.jpeg\\\"]\",\"showInPos\":1,\"productType\":\"Hotel\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":1,\"dateUpdated\":\"2024-08-26 12:29:00\",\"status\":1,\"dateAdded\":\"2024-07-02 11:43:02\"}', 'KCV6MVlZ60iZtNo8YowlLacXifhAvR3k4h1lSJVg4LvBLRL0kl', 1, 1, 1, '2024-10-02 10:08:13'),
(13, 0, 103, '{\"personName\":[\"\"],\"personId\":[\"\"]}', '09:41', '', '2024-12-23', '', 0, '{\"productId\":103,\"heading\":\"Hotel Room 2\",\"model\":\"Hotel\",\"barcode\":98321014,\"barcodeType\":\"\",\"cost\":500,\"price\":500,\"percent\":0,\"manufacturerId\":2,\"categoryId\":2,\"vendorId\":0,\"unitId\":0,\"taxId\":0,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":995,\"subtract\":0,\"changePriceDuringBilling\":0,\"image\":\"public\\/assets\\/uploads\\/ship_shop_pos_default\\/693478300.jpeg\",\"relatedImage\":\"[\\\"public\\\\\\/assets\\\\\\/uploads\\\\\\/ship_shop_pos_default\\\\\\/419239602.jpeg\\\"]\",\"showInPos\":1,\"productType\":\"Hotel\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":1,\"dateUpdated\":\"2024-10-02 10:24:01\",\"status\":1,\"dateAdded\":\"2024-07-02 11:43:02\"}', 'NpHQZQbbbbr3bRyg2bzCra1Ta7rrt3z1wpR1mbVlN2XvdoXv3u', 0, 0, 1, '2024-12-23 09:53:58'),
(14, 0, 103, '{\"personName\":[\"a\",\"b\"],\"personId\":[\"public\\/assets\\/uploads\\/ship_shop_pos_default\\/229798117.png\",\"public\\/assets\\/uploads\\/ship_shop_pos_default\\/828084206.png\"]}', '09:41', '', '2024-12-23', '', 0, '{\"productId\":103,\"heading\":\"Hotel Room 2\",\"model\":\"Hotel\",\"barcode\":98321014,\"barcodeType\":\"\",\"cost\":500,\"price\":500,\"percent\":0,\"manufacturerId\":2,\"categoryId\":2,\"vendorId\":0,\"unitId\":0,\"taxId\":0,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":995,\"subtract\":0,\"changePriceDuringBilling\":0,\"image\":\"public\\/assets\\/uploads\\/ship_shop_pos_default\\/693478300.jpeg\",\"relatedImage\":\"[\\\"public\\\\\\/assets\\\\\\/uploads\\\\\\/ship_shop_pos_default\\\\\\/419239602.jpeg\\\"]\",\"showInPos\":1,\"productType\":\"Hotel\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":1,\"dateUpdated\":\"2024-10-02 10:24:01\",\"status\":1,\"dateAdded\":\"2024-07-02 11:43:02\"}', 'hTkwCs0ui6g8RWYofEi4OxTFXWbLV1VrBQ2eOWMhQZqYLG5hlU', 0, 0, 1, '2024-12-23 09:54:22'),
(15, 70, 102, '{\"personName\":[\"a\",\"a\"],\"personId\":[\"public\\/assets\\/uploads\\/ship_shop_pos_default\\/394110921.png\",\"\"]}', '09:56', '10:03', '2024-12-23', '2024-12-23', 1, '{\"productId\":102,\"heading\":\"Hotel Room 1\",\"model\":\"Hotel\",\"barcode\":98321014,\"barcodeType\":\"\",\"cost\":500,\"price\":500,\"percent\":0,\"manufacturerId\":2,\"categoryId\":2,\"vendorId\":0,\"unitId\":0,\"taxId\":0,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":998,\"subtract\":0,\"changePriceDuringBilling\":0,\"image\":\"public\\/assets\\/uploads\\/ship_shop_pos_default\\/693478300.jpeg\",\"relatedImage\":\"[\\\"public\\\\\\/assets\\\\\\/uploads\\\\\\/ship_shop_pos_default\\\\\\/419239602.jpeg\\\"]\",\"showInPos\":1,\"productType\":\"Hotel\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":1,\"dateUpdated\":\"2024-08-26 12:29:00\",\"status\":1,\"dateAdded\":\"2024-07-02 11:43:02\"}', 'gM0RKJFCN0ALOXRCPXYrsZk02sd78t36qTTRdmKB7pc1rr0oqU', 0, 0, 1, '2024-12-23 09:56:13');

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `orderProductId` int(11) NOT NULL,
  `orderId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `heading` varchar(100) NOT NULL,
  `model` varchar(20) NOT NULL,
  `barcode` int(11) NOT NULL,
  `barcodeType` varchar(20) NOT NULL,
  `taxId` int(11) NOT NULL,
  `taxHeading` varchar(20) NOT NULL,
  `taxType` text NOT NULL,
  `taxPercent` varchar(5) NOT NULL,
  `tax` varchar(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `discount` varchar(20) NOT NULL,
  `discountValue` int(11) NOT NULL,
  `rewardPoints` int(11) NOT NULL,
  `cost` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `percent` float(11,2) NOT NULL,
  `total` int(11) NOT NULL,
  `hsnCode` varchar(30) NOT NULL,
  `changePriceDuringBilling` int(11) NOT NULL,
  `extraInformation` varchar(255) NOT NULL,
  `storeId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `updatedBy` int(11) NOT NULL,
  `insertedBy` int(11) NOT NULL,
  `dateModified` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp(),
  `kotToken` varchar(255) NOT NULL,
  `sentToKot` int(11) NOT NULL DEFAULT 0,
  `kotViewed` int(11) NOT NULL DEFAULT 0,
  `kotViewedBy` int(11) NOT NULL,
  `taxInclusiveValue` float(11,2) NOT NULL,
  `taxExclusiveValue` float(11,2) NOT NULL,
  `basePriceCost` float(11,2) NOT NULL,
  `profit` float(11,2) NOT NULL,
  `return` int(1) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`orderProductId`, `orderId`, `productId`, `heading`, `model`, `barcode`, `barcodeType`, `taxId`, `taxHeading`, `taxType`, `taxPercent`, `tax`, `quantity`, `discount`, `discountValue`, `rewardPoints`, `cost`, `price`, `percent`, `total`, `hsnCode`, `changePriceDuringBilling`, `extraInformation`, `storeId`, `userId`, `updatedBy`, `insertedBy`, `dateModified`, `dateAdded`, `kotToken`, `sentToKot`, `kotViewed`, `kotViewedBy`, `taxInclusiveValue`, `taxExclusiveValue`, `basePriceCost`, `profit`, `return`, `status`) VALUES
(1, 4, 100, 'Eldora Hackett III', 'EtfkfhSgZJ', 98321009, '', 5, 'GST 28%', 'Inclusive', '28', '12654.25', 1, '0', 0, 5785, 1000, 57848, 0.00, 57848, '', 1, '', 1, 1, 0, 1, '2024-06-22 13:19:04', '2024-06-22 13:19:04', '', 0, 0, 0, 12654.25, 0.00, 45193.75, 44193.75, 0, 1),
(2, 5, 98, 'Jaida Grimes', 'lUnUIsoJZX', 88180650, '', 2, 'GST 5%', 'Exclusive', '5', '3228.1', 1, '0', 0, 6456, 32281, 64562, 0.00, 64562, '', 0, '', 1, 1, 0, 1, '2024-06-22 13:19:44', '2024-06-22 13:19:44', '', 0, 0, 0, 0.00, 3228.10, 64562.00, 32281.00, 0, 1),
(3, 6, 99, 'Angel Hills', 'q8qHbH3aUV', 19919785, '', 4, 'GST 18%', 'Exclusive', '18', '33186.96', 1, '0', 0, 18437, 92186, 184372, 0.00, 184372, '', 0, '', 1, 1, 0, 1, '2024-06-22 13:20:10', '2024-06-22 13:20:10', '', 0, 0, 0, 0.00, 33186.96, 184372.00, 92186.00, 0, 1),
(5, 7, 99, 'Angel Hills', 'q8qHbH3aUV', 19919785, '', 4, 'GST 18%', 'Exclusive', '18', '33186.96', 1, '0', 0, 18437, 92186, 184372, 0.00, 184372, '', 0, '', 1, 1, 0, 1, '2024-06-22 13:22:11', '2024-06-22 13:22:11', 'wffBhHm25dWFTQFfXaBOee35W8NAve6KmjWZO4ePdOWSwFNI0u9LM0BPJnTNP5hsK6TKGGzi35WmuFOapNDYzT2ShLHGdjvr3saefgc7pn7yUt7XkGmh85344as6QUcshlyDUsJ2C00CnfJo9U1xBvxpFKPnogrpNbIWkWxdPYzTVNl6mKhRjF3FQ16Vb3pmMp24kT6n9VEhQE89sc0IyIrXZvxEDR1i2HbuZtOI5BSrk7zzplBHd4ga7kw3Ofl', 1, 0, 0, 0.00, 33186.96, 184372.00, 92186.00, 0, 1),
(6, 7, 96, 'Tressa Wisozk', 'YDJ5ntBuK1', 78676059, '', 6, 'GST 3 %', 'Exclusive', '3', '4488.3', 1, '0', 0, 14961, 74805, 149610, 0.00, 149610, '', 0, '', 1, 1, 0, 1, '2024-06-22 13:22:11', '2024-06-22 13:22:11', 'NJXgbYQBJzmMIIdjUVA2ly2NkJ0pDipkiHqc3gfw778vLjf6Y7CANWI5iS99u3DlhTCgvp75fGZ5Jy288CySe5qZumZz6Mmu0jbCmXVwZKiFeli2GhiHQUDYuUClno6CgXkQz80MnNIpXH6lNRAwC94dw9BLDYT3qkzjIbvD6AZf1fM84vBlkukfbZQzQhzvDZ1G73Ckytbx9SQsHvh7bjrH8pxi8RNRFEdvd6t8qr8cjpXS9hAqpVnPmaWsW3S', 1, 0, 0, 0.00, 4488.30, 149610.00, 74805.00, 0, 1),
(7, 8, 96, 'Tressa Wisozk', 'YDJ5ntBuK1', 78676059, '', 6, 'GST 3 %', 'Exclusive', '3', '4488.3', 1, '0', 0, 14961, 74805, 149610, 0.00, 149610, '', 0, '', 1, 1, 0, 1, '2024-06-22 13:23:11', '2024-06-22 13:23:11', 'aS6sDgJtCEU8qtUnJpG52hW6P0rEcF7JNQgxJmDjfKFqVujGbVREfIyRCJQhmVGOdfOF0GE2iIMMQ2e2hbP2RpBwiK5E9WZfEXod2K0oyljtmP3hyrKFDvAhcS5y5MgSHGN0et8yXz0nOD2WN8zY4Xav3Y0FQYO0PY9VkrnPcR991eG4RPo0W41HDaQN0qbaZO8nELoUAc1Zwx3AN0N1Hgq7TUdg38wei5Cx9vnuDUmMYpoP4YAvxBKSb1gQvmZ', 0, 0, 0, 0.00, 4488.30, 149610.00, 74805.00, 0, 1),
(8, 9, 99, 'Angel Hills', 'q8qHbH3aUV', 19919785, '', 4, 'GST 18%', 'Exclusive', '18', '66373.92', 2, '0', 0, 36874, 92186, 184372, 0.00, 368744, '', 0, '', 1, 1, 0, 1, '2024-06-29 12:23:48', '2024-06-25 12:41:53', 'NcIg3Nkego5MfGsdWsPXJCps9g1O0GJIZXSVgdweHOaKSah5TkHwu7qJZuzY2cF8dO7queZfPwok041BfG2ymQ59AvTlMYI5Ud98iDDf37fgYM9vgLbZFGFYQ5qsHX558mJccWivmYsCsXEkc34B7xHHIEDFfGDLwzD5FBSlZ1fRvRT5ICE3MK77NhZaIU6CR7j42ZqApcAFdSifFK6Cx5QUAX2oMGeXXIQwqRlyH5PBA9lN9H24tdc7RoC9L8i', 0, 0, 0, 0.00, 33186.96, 368744.00, 184372.00, 1, 1),
(9, 9, 96, 'Tressa Wisozk', 'YDJ5ntBuK1', 78676059, '', 6, 'GST 3 %', 'Exclusive', '3', '8976.6', 2, '0', 0, 29922, 74805, 149610, 0.00, 299220, '', 0, '', 1, 1, 0, 1, '2024-06-29 12:30:14', '2024-06-25 12:41:53', 'NcIg3Nkego5MfGsdWsPXJCps9g1O0GJIZXSVgdweHOaKSah5TkHwu7qJZuzY2cF8dO7queZfPwok041BfG2ymQ59AvTlMYI5Ud98iDDf37fgYM9vgLbZFGFYQ5qsHX558mJccWivmYsCsXEkc34B7xHHIEDFfGDLwzD5FBSlZ1fRvRT5ICE3MK77NhZaIU6CR7j42ZqApcAFdSifFK6Cx5QUAX2oMGeXXIQwqRlyH5PBA9lN9H24tdc7RoC9L8i', 0, 0, 0, 0.00, 4488.30, 299220.00, 149610.00, 1, 1),
(10, 9, 97, 'Dr. Estell Cummings IV', 'Fwh6tO8IA6', 94433959, '', 2, 'GST 5%', 'Exclusive', '5', '7359.5', 1, '0', 0, 14719, 73595, 147190, 0.00, 147190, '', 0, '', 1, 1, 0, 1, '2024-06-29 12:30:35', '2024-06-25 12:41:54', 'NcIg3Nkego5MfGsdWsPXJCps9g1O0GJIZXSVgdweHOaKSah5TkHwu7qJZuzY2cF8dO7queZfPwok041BfG2ymQ59AvTlMYI5Ud98iDDf37fgYM9vgLbZFGFYQ5qsHX558mJccWivmYsCsXEkc34B7xHHIEDFfGDLwzD5FBSlZ1fRvRT5ICE3MK77NhZaIU6CR7j42ZqApcAFdSifFK6Cx5QUAX2oMGeXXIQwqRlyH5PBA9lN9H24tdc7RoC9L8i', 0, 0, 0, 0.00, 7359.50, 147190.00, 73595.00, 1, 1),
(11, 9, 98, 'Jaida Grimes', 'lUnUIsoJZX', 88180650, '', 2, 'GST 5%', 'Exclusive', '5', '3228.1', 1, '0', 0, 6456, 32281, 64562, 0.00, 64562, '', 0, '', 1, 1, 0, 1, '2024-06-25 12:41:54', '2024-06-25 12:41:54', 'NcIg3Nkego5MfGsdWsPXJCps9g1O0GJIZXSVgdweHOaKSah5TkHwu7qJZuzY2cF8dO7queZfPwok041BfG2ymQ59AvTlMYI5Ud98iDDf37fgYM9vgLbZFGFYQ5qsHX558mJccWivmYsCsXEkc34B7xHHIEDFfGDLwzD5FBSlZ1fRvRT5ICE3MK77NhZaIU6CR7j42ZqApcAFdSifFK6Cx5QUAX2oMGeXXIQwqRlyH5PBA9lN9H24tdc7RoC9L8i', 0, 0, 0, 0.00, 3228.10, 64562.00, 32281.00, 0, 1),
(12, 10, 100, 'Eldora Hackett III', 'EtfkfhSgZJ', 98321009, '', 5, 'GST 28%', 'Inclusive', '28', '12654.25', 1, '0', 0, 5785, 1000, 57848, 0.00, 57848, '', 1, '', 1, 1, 0, 1, '2024-06-29 13:58:47', '2024-06-29 13:56:18', '5khnQMs59Yxwf1t0NqsKTKRyejoHKeGS0rXOS0b5iYneEkAFU45ekjEsH9MfJaJ5u8ZNfTTkdfj9rTDpvGBsQ8hWlOXmTPEsuUmH3C43GWvnlMDxqjtpsPj3rJx6t1JbvUgmpbsFnLoAjtccBpYdR6YzEROCazxE9AgZ9AyHoDcBj6aTwSDXimZYGgLt6x6wHOpEMn6IGgsH2yfVhadjEf8q8JlBKVGxOaCmP9OJYdnPzt3068liAQAGLzKnhqT', 0, 0, 0, 12654.25, 0.00, 45193.75, 44193.75, 1, 1),
(13, 10, 99, 'Angel Hills', 'q8qHbH3aUV', 19919785, '', 4, 'GST 18%', 'Exclusive', '18', '66373.92', 2, '0', 0, 36874, 92186, 184372, 0.00, 368744, '', 0, '', 1, 1, 0, 1, '2024-06-29 13:56:18', '2024-06-29 13:56:18', '5khnQMs59Yxwf1t0NqsKTKRyejoHKeGS0rXOS0b5iYneEkAFU45ekjEsH9MfJaJ5u8ZNfTTkdfj9rTDpvGBsQ8hWlOXmTPEsuUmH3C43GWvnlMDxqjtpsPj3rJx6t1JbvUgmpbsFnLoAjtccBpYdR6YzEROCazxE9AgZ9AyHoDcBj6aTwSDXimZYGgLt6x6wHOpEMn6IGgsH2yfVhadjEf8q8JlBKVGxOaCmP9OJYdnPzt3068liAQAGLzKnhqT', 0, 0, 0, 0.00, 33186.96, 368744.00, 184372.00, 0, 1),
(15, 11, 100, 'Eldora Hackett III', 'EtfkfhSgZJ', 98321009, '', 5, 'GST 28%', 'Inclusive', '28', '12654.25', 1, '0', 0, 5785, 1000, 57848, 0.00, 57848, '', 1, '', 1, 1, 0, 1, '2024-06-29 14:11:36', '2024-06-29 14:11:36', 'P3RJDGgz3x6Xuq8wbaf8ep4rsUPdY30h7daQYREy7qE49LL3rl9uIKxghK8lEeDtilE8qYlVgWb8oXUtATDZKYwKPjJJkJ2sqwdLkjeZglxcqnkziiYtzawxBb33GrkhqCHmppDBZjrqs7UUQ2kzyqySGWlEU19HrVsKJhR7fcaEMCd28iY7dWZpbjyRIyKiOmo3Hr8AnTQ8aTYVrj2eym7ZuPJBrTEU5jWNYQhhsOs7pHyEXBiiyEhsLx2nLrt', 0, 0, 0, 12654.25, 0.00, 45193.75, 44193.75, 0, 1),
(16, 11, 96, 'Tressa Wisozk', 'YDJ5ntBuK1', 78676059, '', 6, 'GST 3 %', 'Exclusive', '3', '4488.3', 1, '0', 0, 14961, 74805, 149610, 0.00, 149610, '', 0, '', 1, 1, 0, 1, '2024-06-29 14:11:36', '2024-06-29 14:11:36', 'Nz4BOixw1KaGZffG17HIZJpyEZvU78gO7eKoEptZZYZzqGSX7N28oEj8Yra87pSNqGis3oQ9qVyZObU8swGh3qOEKgStrPfVnAnYUc6WCGmKMPhG16ZKRgovypXa9Ex1dmAjjqRZQRLsF6OO5CFS7WBvPcHHDmY70hgnayR7EJwci0mktzSRNyws588v4pswg5L9YimYTjzu2l4LYl7BdecZJYR7vCIKBwtGRxOCw4ZAo4kCIPoK35FXFq5yaii', 0, 0, 0, 0.00, 4488.30, 149610.00, 74805.00, 0, 1),
(29, 14, 102, 'Hotel Room 1', 'Hotel', 98321014, '', 0, '', 'Exclusive', '0', '0', 1, '0', 0, 450, 500, 4500, 0.00, 4500, '', 0, '', 1, 1, 0, 1, '2024-07-05 16:11:42', '2024-07-05 16:11:42', 'KKhX492Stpo52WVmf2JRDn5dU6giEwTRY2pveE8uBZoxqVFH9147dObvkk8VFSaxXVTxeWkmNgJve4NO5ZOuTsSHZDN2VsVI2h2ingJvy5MCZT46i3i5gxpEA2Jjd1JOO0Wkf0hIvt4AsRJMVwJJt0y0o3Ql4bfKolnOp2Xa03VZSp2oBD0BhNg9gn9NfFRfXcRSj4fTE0I4tKd2MOKGhjDRgrL2yysb545sfSkUPtdCXmRt448pnYFhq5vG2yA', 0, 0, 0, 0.00, 0.00, 0.00, -500.00, 0, 1),
(30, 14, 100, 'Eldora Hackett III', 'EtfkfhSgZJ', 98321009, '', 5, 'GST 28%', 'Inclusive', '28', '12654.25', 1, '0', 0, 5785, 1000, 57848, 0.00, 57848, '', 1, '', 1, 1, 0, 1, '2024-07-05 16:11:42', '2024-07-05 16:11:42', 'i7lwKyBCqfCJmgG77smyWslK0ieyJIFckEtWnYiAab3f84x1WjbgTChXzMRqO0GcjyplmqjZbCt9zKK6EptkxbeogJ34dt3U0pqIFVSQfWXYKmK9v0ettoJ1rRZz7JE4D5h2AW7hvob66hlserHVVVEdeXHTEjFmIkMDe1ndhJ6G5iaXTxPL2TK5IMQTKEDeKOlej7c8uME7arK6G73NIIN9eidNXh3ZbgHTCXtkMWaefZ7I3yHkwFesKd2hryk', 0, 0, 0, 12654.25, 0.00, 45193.75, 44193.75, 0, 1),
(31, 14, 96, 'Tressa Wisozk', 'YDJ5ntBuK1', 78676059, '', 6, 'GST 3 %', 'Exclusive', '3', '4488.3', 1, '0', 0, 14961, 74805, 149610, 0.00, 149610, '', 0, '', 1, 1, 0, 1, '2024-07-05 16:11:42', '2024-07-05 16:11:42', 'StKSNHMR08zydfnJFsry5iIayDb0NlCCAzeIzUmmB1XlEMxSQ3o3TQVzJ1R55ldhuQvKQS1okcDlDXKlFmgyORJXkaMCZA4K8o3EWub8wbducv72YdbFiZuhV7NbssxVH0CDhysHJSoiHmxmBq1PRs8gu0TiceoAlkeOX5mpG3meglKSXaT5841xKMvU5LNwmIQxdUvb2yPF2SBWjCE0mrVXa2odRCHrAksSmovDvdIBJaNSvWtONdxttwEM4KU', 0, 0, 0, 0.00, 4488.30, 149610.00, 74805.00, 0, 1),
(32, 15, 99, 'Angel Hills', 'q8qHbH3aUV', 19919785, '', 4, 'GST 18%', 'Exclusive', '18', '33186.96', 1, '0', 0, 18437, 92186, 184372, 0.00, 184372, '', 0, '', 1, 1, 0, 1, '2024-07-17 13:33:14', '2024-07-17 13:33:14', 'wsjdBYnrJbF4KyKrCgsbH5NlytMJHTcKgEO0XYUhF6yGntsGMIzO27WMz9zLF1jAKyT7KFbnCm4BXult1ZfeEMGjfNbfrLonAorAI6UZ1OZArTJJ3mRlhUbQo95FxCakgizDqZCrPMES9gqCimCDnyhhgt4hFTL2b4yVwms5eJcie27GNRTWqRuIYB71dGLrCTQcbYOTnIqJGneoVAYXWkfcsUjniXG9VT4mxXRox5PWA81f1UeR3yavNdhHu7o', 0, 0, 0, 0.00, 33186.96, 184372.00, 92186.00, 0, 1),
(34, 16, 99, 'Angel Hills', 'q8qHbH3aUV', 19919785, '', 4, 'GST 18%', 'Exclusive', '18', '66373.92', 2, '0', 0, 36874, 92186, 184372, 0.00, 368744, '', 0, '', 1, 1, 0, 1, '2024-07-17 15:45:49', '2024-07-17 15:45:49', 'KqZIB0LN2gsQTJVhC2nSNP242gV7ERGh15pgG6TJJKPnP9hwtxqGGYopIOV3rNDKkOYaCHQPnVXA4MdA0OnGaSXpvV0LfrJVbiQj8pGMrMDaedQPZ6YpQoK41ykD5QjLI5oxQfkDde0lzjkjrrP99cOpNYE86D1DufM9MRyiCCJQwGBLUdFNo3c4snwHtlLJSUVsb7Q0qPpkMRcoWQujsUB101Ui4tDrdNdcwOUb4eZkkCuT87tZbq6IMV1o29c', 1, 0, 0, 0.00, 33186.96, 368744.00, 184372.00, 0, 1),
(35, 16, 100, 'Eldora Hackett III', 'EtfkfhSgZJ', 98321009, '', 5, 'GST 28%', 'Inclusive', '28', '12654.25', 1, '0', 0, 5785, 1000, 57848, 0.00, 57848, '', 1, '', 1, 1, 0, 1, '2024-07-17 15:45:49', '2024-07-17 15:45:49', 'cuouauyddWvwNwNXYPwWWhS89TZtXprMtAAnfs0Mne3sas8SueDmmuGejDP3mn92FyRBeUxNbFp1FKWd0ZLD4Eimb2YxLUVq2N9KafQvTrdkEuX0AOUqH2yWLBYIixr6Y3Fk3cjoYdC5Bpq3qvKXmWkf3D3Pv6pwrfNzesoF5riaiWGCAMGoMpMdQaKmK0ANW8xSaW9iLoyGjtBHrsusKhW7gkPvKZikjLO6XhXi7pNaIsw4iipBLAvvLUi6760', 0, 0, 0, 12654.25, 0.00, 45193.75, 44193.75, 0, 1),
(36, 16, 97, 'Dr. Estell Cummings IV', 'Fwh6tO8IA6', 94433959, '', 2, 'GST 5%', 'Exclusive', '5', '7359.5', 1, '0', 0, 14719, 73595, 147190, 0.00, 147190, '', 0, '', 1, 1, 0, 1, '2024-07-17 15:45:50', '2024-07-17 15:45:50', 'cuouauyddWvwNwNXYPwWWhS89TZtXprMtAAnfs0Mne3sas8SueDmmuGejDP3mn92FyRBeUxNbFp1FKWd0ZLD4Eimb2YxLUVq2N9KafQvTrdkEuX0AOUqH2yWLBYIixr6Y3Fk3cjoYdC5Bpq3qvKXmWkf3D3Pv6pwrfNzesoF5riaiWGCAMGoMpMdQaKmK0ANW8xSaW9iLoyGjtBHrsusKhW7gkPvKZikjLO6XhXi7pNaIsw4iipBLAvvLUi6760', 0, 0, 0, 0.00, 7359.50, 147190.00, 73595.00, 0, 1),
(37, 16, 96, 'Tressa Wisozk', 'YDJ5ntBuK1', 78676059, '', 6, 'GST 3 %', 'Exclusive', '3', '4488.3', 1, '0', 0, 14961, 74805, 149610, 0.00, 149610, '', 0, '', 1, 1, 0, 1, '2024-07-17 15:45:50', '2024-07-17 15:45:50', 'cuouauyddWvwNwNXYPwWWhS89TZtXprMtAAnfs0Mne3sas8SueDmmuGejDP3mn92FyRBeUxNbFp1FKWd0ZLD4Eimb2YxLUVq2N9KafQvTrdkEuX0AOUqH2yWLBYIixr6Y3Fk3cjoYdC5Bpq3qvKXmWkf3D3Pv6pwrfNzesoF5riaiWGCAMGoMpMdQaKmK0ANW8xSaW9iLoyGjtBHrsusKhW7gkPvKZikjLO6XhXi7pNaIsw4iipBLAvvLUi6760', 0, 0, 0, 0.00, 4488.30, 149610.00, 74805.00, 0, 1),
(38, 16, 95, 'Milford Herman', '5K1IvC7bgF', 84439094, '', 4, 'GST 18%', 'Exclusive', '18', '28259.28', 1, '0', 0, 15700, 78498, 156996, 0.00, 156996, '', 0, '', 1, 1, 0, 1, '2024-07-17 15:45:51', '2024-07-17 15:45:51', 'cuouauyddWvwNwNXYPwWWhS89TZtXprMtAAnfs0Mne3sas8SueDmmuGejDP3mn92FyRBeUxNbFp1FKWd0ZLD4Eimb2YxLUVq2N9KafQvTrdkEuX0AOUqH2yWLBYIixr6Y3Fk3cjoYdC5Bpq3qvKXmWkf3D3Pv6pwrfNzesoF5riaiWGCAMGoMpMdQaKmK0ANW8xSaW9iLoyGjtBHrsusKhW7gkPvKZikjLO6XhXi7pNaIsw4iipBLAvvLUi6760', 0, 0, 0, 0.00, 28259.28, 156996.00, 78498.00, 0, 1),
(39, 17, 100, 'Eldora Hackett III', 'EtfkfhSgZJ', 98321009, '', 5, 'GST 28%', 'Inclusive', '28', '12654.25', 1, '0', 0, 5785, 1000, 57848, 0.00, 57848, '', 1, '', 1, 1, 0, 1, '2024-07-17 15:49:51', '2024-07-17 15:49:51', 'Y0BiCrZROgxSPKIIVbypEgnPLc6PoNG4SdZvplN4RQxssCN2B5bZoNWA86uaDtCjEaAbeXByO5WRS4DqzAi3rG1YMDQ4hKtS7Vo8FTeszPRvGZI49xoXvl9sWOPpniOFvoCl27plrORYujrPnvybw94mifQC17QyRMtlErajbUGjCFMO7WgqmtGATnCz0SIfnqkVxrGPQTzvZCKlGuYK4AjPVzQZ9S13zro8fXBTuWAgMr5I5HVA86MkzFSYD9i', 0, 0, 0, 12654.25, 0.00, 45193.75, 44193.75, 0, 1),
(40, 17, 99, 'Angel Hills', 'q8qHbH3aUV', 19919785, '', 4, 'GST 18%', 'Exclusive', '18', '33186.96', 1, '0', 0, 18437, 92186, 184372, 0.00, 184372, '', 0, '', 1, 1, 0, 1, '2024-07-17 15:49:51', '2024-07-17 15:49:51', 'Y0BiCrZROgxSPKIIVbypEgnPLc6PoNG4SdZvplN4RQxssCN2B5bZoNWA86uaDtCjEaAbeXByO5WRS4DqzAi3rG1YMDQ4hKtS7Vo8FTeszPRvGZI49xoXvl9sWOPpniOFvoCl27plrORYujrPnvybw94mifQC17QyRMtlErajbUGjCFMO7WgqmtGATnCz0SIfnqkVxrGPQTzvZCKlGuYK4AjPVzQZ9S13zro8fXBTuWAgMr5I5HVA86MkzFSYD9i', 0, 0, 0, 0.00, 33186.96, 184372.00, 92186.00, 0, 1),
(41, 17, 97, 'Dr. Estell Cummings IV', 'Fwh6tO8IA6', 94433959, '', 2, 'GST 5%', 'Exclusive', '5', '7359.5', 1, '0', 0, 14719, 73595, 147190, 0.00, 147190, '', 0, '', 1, 1, 0, 1, '2024-07-17 15:49:52', '2024-07-17 15:49:52', 'Y0BiCrZROgxSPKIIVbypEgnPLc6PoNG4SdZvplN4RQxssCN2B5bZoNWA86uaDtCjEaAbeXByO5WRS4DqzAi3rG1YMDQ4hKtS7Vo8FTeszPRvGZI49xoXvl9sWOPpniOFvoCl27plrORYujrPnvybw94mifQC17QyRMtlErajbUGjCFMO7WgqmtGATnCz0SIfnqkVxrGPQTzvZCKlGuYK4AjPVzQZ9S13zro8fXBTuWAgMr5I5HVA86MkzFSYD9i', 0, 0, 0, 0.00, 7359.50, 147190.00, 73595.00, 0, 1),
(42, 17, 95, 'Milford Herman', '5K1IvC7bgF', 84439094, '', 4, 'GST 18%', 'Exclusive', '18', '28259.28', 1, '0', 0, 15700, 78498, 156996, 0.00, 156996, '', 0, '', 1, 1, 0, 1, '2024-07-17 15:49:52', '2024-07-17 15:49:52', 'Y0BiCrZROgxSPKIIVbypEgnPLc6PoNG4SdZvplN4RQxssCN2B5bZoNWA86uaDtCjEaAbeXByO5WRS4DqzAi3rG1YMDQ4hKtS7Vo8FTeszPRvGZI49xoXvl9sWOPpniOFvoCl27plrORYujrPnvybw94mifQC17QyRMtlErajbUGjCFMO7WgqmtGATnCz0SIfnqkVxrGPQTzvZCKlGuYK4AjPVzQZ9S13zro8fXBTuWAgMr5I5HVA86MkzFSYD9i', 0, 0, 0, 0.00, 28259.28, 156996.00, 78498.00, 0, 1),
(43, 17, 94, 'Dina Bogan', 'iUuzL6troJ', 97953843, '', 5, 'GST 28%', 'Exclusive', '28', '37092.16', 1, '0', 0, 13247, 66236, 132472, 0.00, 132472, '', 0, '', 1, 1, 0, 1, '2024-07-17 15:49:52', '2024-07-17 15:49:52', 'Y0BiCrZROgxSPKIIVbypEgnPLc6PoNG4SdZvplN4RQxssCN2B5bZoNWA86uaDtCjEaAbeXByO5WRS4DqzAi3rG1YMDQ4hKtS7Vo8FTeszPRvGZI49xoXvl9sWOPpniOFvoCl27plrORYujrPnvybw94mifQC17QyRMtlErajbUGjCFMO7WgqmtGATnCz0SIfnqkVxrGPQTzvZCKlGuYK4AjPVzQZ9S13zro8fXBTuWAgMr5I5HVA86MkzFSYD9i', 0, 0, 0, 0.00, 37092.16, 132472.00, 66236.00, 0, 1),
(44, 17, 92, 'Jordi Gottlieb', '4SEmGmB2V0', 91524823, '', 2, 'GST 5%', 'Exclusive', '5', '6847.9', 1, '0', 0, 13696, 68479, 136958, 0.00, 136958, '', 0, '', 1, 1, 0, 1, '2024-07-17 15:49:52', '2024-07-17 15:49:52', 'Y0BiCrZROgxSPKIIVbypEgnPLc6PoNG4SdZvplN4RQxssCN2B5bZoNWA86uaDtCjEaAbeXByO5WRS4DqzAi3rG1YMDQ4hKtS7Vo8FTeszPRvGZI49xoXvl9sWOPpniOFvoCl27plrORYujrPnvybw94mifQC17QyRMtlErajbUGjCFMO7WgqmtGATnCz0SIfnqkVxrGPQTzvZCKlGuYK4AjPVzQZ9S13zro8fXBTuWAgMr5I5HVA86MkzFSYD9i', 0, 0, 0, 0.00, 6847.90, 136958.00, 68479.00, 0, 1),
(45, 17, 91, 'Destini Dach III', 'aMGhdlOf5x', 13338465, '', 1, 'CGST 2.5%', 'Exclusive', '2.5', '2059.5', 1, '0', 0, 8238, 41190, 82380, 0.00, 82380, '', 0, '', 1, 1, 0, 1, '2024-07-17 15:49:53', '2024-07-17 15:49:53', 'Y0BiCrZROgxSPKIIVbypEgnPLc6PoNG4SdZvplN4RQxssCN2B5bZoNWA86uaDtCjEaAbeXByO5WRS4DqzAi3rG1YMDQ4hKtS7Vo8FTeszPRvGZI49xoXvl9sWOPpniOFvoCl27plrORYujrPnvybw94mifQC17QyRMtlErajbUGjCFMO7WgqmtGATnCz0SIfnqkVxrGPQTzvZCKlGuYK4AjPVzQZ9S13zro8fXBTuWAgMr5I5HVA86MkzFSYD9i', 0, 0, 0, 0.00, 2059.50, 82380.00, 41190.00, 0, 1),
(46, 17, 87, 'Dr. Leanna O\'Conner', 'glHBtmrjm1', 80244841, '', 2, 'GST 5%', 'Exclusive', '5', '8666.8', 1, '0', 0, 17334, 86668, 173336, 0.00, 173336, '', 0, '', 1, 1, 0, 1, '2024-07-17 15:49:53', '2024-07-17 15:49:53', 'Y0BiCrZROgxSPKIIVbypEgnPLc6PoNG4SdZvplN4RQxssCN2B5bZoNWA86uaDtCjEaAbeXByO5WRS4DqzAi3rG1YMDQ4hKtS7Vo8FTeszPRvGZI49xoXvl9sWOPpniOFvoCl27plrORYujrPnvybw94mifQC17QyRMtlErajbUGjCFMO7WgqmtGATnCz0SIfnqkVxrGPQTzvZCKlGuYK4AjPVzQZ9S13zro8fXBTuWAgMr5I5HVA86MkzFSYD9i', 0, 0, 0, 0.00, 8666.80, 173336.00, 86668.00, 0, 1),
(47, 17, 88, 'Lily Friesen', 'EblwIOsmA0', 78163971, '', 1, 'CGST 2.5%', 'Exclusive', '2.5', '1777.8', 1, '0', 0, 7111, 35556, 71112, 0.00, 71112, '', 0, '', 1, 1, 0, 1, '2024-07-17 15:49:53', '2024-07-17 15:49:53', 'Y0BiCrZROgxSPKIIVbypEgnPLc6PoNG4SdZvplN4RQxssCN2B5bZoNWA86uaDtCjEaAbeXByO5WRS4DqzAi3rG1YMDQ4hKtS7Vo8FTeszPRvGZI49xoXvl9sWOPpniOFvoCl27plrORYujrPnvybw94mifQC17QyRMtlErajbUGjCFMO7WgqmtGATnCz0SIfnqkVxrGPQTzvZCKlGuYK4AjPVzQZ9S13zro8fXBTuWAgMr5I5HVA86MkzFSYD9i', 0, 0, 0, 0.00, 1777.80, 71112.00, 35556.00, 0, 1),
(48, 18, 100, 'Eldora Hackett III', 'EtfkfhSgZJ', 98321009, '', 5, 'GST 28%', 'Inclusive', '28', '12654.25', 1, '0', 0, 5785, 1000, 57848, 0.00, 57848, '', 1, '', 1, 1, 0, 1, '2024-07-18 11:34:41', '2024-07-18 11:34:41', '04BOkaTx6VNsY478DVstReAcOS9tw0kmj6UFgv050KPzgywgr3Dw5kaZiPUFJumRWhXY4TjEKkTNakBrpnwDJU2ueDYyRptJW4qJxj17fQP0ZEHaNnntVP5K97QOOfJNitOAQXw3fDYIJNxmmtpeaNKSliGdQGkX7WGBnzWtdFU0SQt3wXLbVzVcm0oEyWBjPcg50JYlPgu25QV6VGOkQNCtZ39r90Um458mtVFdRLnKDSixnxxeCjIXTi8XVBs', 0, 0, 0, 12654.25, 0.00, 45193.75, 44193.75, 0, 1),
(49, 18, 99, 'Angel Hills', 'q8qHbH3aUV', 19919785, '', 4, 'GST 18%', 'Exclusive', '18', '33186.96', 1, '0', 0, 18437, 92186, 184372, 0.00, 184372, '', 0, '', 1, 1, 0, 1, '2024-07-18 11:34:42', '2024-07-18 11:34:42', '04BOkaTx6VNsY478DVstReAcOS9tw0kmj6UFgv050KPzgywgr3Dw5kaZiPUFJumRWhXY4TjEKkTNakBrpnwDJU2ueDYyRptJW4qJxj17fQP0ZEHaNnntVP5K97QOOfJNitOAQXw3fDYIJNxmmtpeaNKSliGdQGkX7WGBnzWtdFU0SQt3wXLbVzVcm0oEyWBjPcg50JYlPgu25QV6VGOkQNCtZ39r90Um458mtVFdRLnKDSixnxxeCjIXTi8XVBs', 0, 0, 0, 0.00, 33186.96, 184372.00, 92186.00, 0, 1),
(50, 19, 100, 'Eldora Hackett III', 'EtfkfhSgZJ', 98321009, '', 5, 'GST 28%', 'Inclusive', '28', '12654.25', 1, '0', 0, 5785, 1000, 57848, 0.00, 57848, '', 1, '', 1, 1, 0, 1, '2024-07-18 11:35:15', '2024-07-18 11:35:15', 'wa7td4Q99qZWq2FTTk4UPXpSQ2lDpAX41qSM3k1c3H8VfJhg0i2xq6ExBasN2Z8a5K75bVADPI7NjFU7CFAeDRODTZTEson85hCJkBjmw7oTixnR3VQXbk99t0o4CPiL5lAgS9lmnEDPzrJkyfKEvlup0WCizJPeNX3ysOU5pSIf8rhFeo5hHMJc2tq2min2qz9sL3IKpYkFnnrXOAIQGbnh3rgbPfZxkF1jB8aAAsUqtIN2iW9qzqIfxuIWE4L', 0, 0, 0, 12654.25, 0.00, 45193.75, 44193.75, 0, 1),
(51, 19, 99, 'Angel Hills', 'q8qHbH3aUV', 19919785, '', 4, 'GST 18%', 'Exclusive', '18', '33186.96', 1, '0', 0, 18437, 92186, 184372, 0.00, 184372, '', 0, '', 1, 1, 0, 1, '2024-07-18 11:35:16', '2024-07-18 11:35:16', 'wa7td4Q99qZWq2FTTk4UPXpSQ2lDpAX41qSM3k1c3H8VfJhg0i2xq6ExBasN2Z8a5K75bVADPI7NjFU7CFAeDRODTZTEson85hCJkBjmw7oTixnR3VQXbk99t0o4CPiL5lAgS9lmnEDPzrJkyfKEvlup0WCizJPeNX3ysOU5pSIf8rhFeo5hHMJc2tq2min2qz9sL3IKpYkFnnrXOAIQGbnh3rgbPfZxkF1jB8aAAsUqtIN2iW9qzqIfxuIWE4L', 0, 0, 0, 0.00, 33186.96, 184372.00, 92186.00, 0, 1),
(52, 20, 100, 'Eldora Hackett III', 'EtfkfhSgZJ', 98321009, '', 5, 'GST 28%', 'Inclusive', '28', '12654.25', 1, '0', 0, 5785, 1000, 57848, 0.00, 57848, '', 1, '', 1, 1, 0, 1, '2024-08-22 15:08:50', '2024-07-18 11:40:31', '31EXoeBZc34uIqEbvMFfTTHFzn2NYZHwvWPni6kFocPnmcjmAOCqWRWnVMkqqnZO2yXXP87FZycp5evCxzTibeo6GZt8kxQHSEONwR9MKNYiBCD41tU3l21Tlfgq5j7Pib7tGI9mdfezVfu3zg3mjQts6V4m4F2Yzdp7FvqCjQ6rAdY7MM5BmtotXnpXLTDHtqSywu3MLVUFWm5lrbSp1cKIEmwNZLVREYE1KBrm7xqffkEFEjHZJaXChZivCtv', 0, 0, 0, 12654.25, 0.00, 45193.75, 44193.75, 1, 1),
(53, 21, 100, 'Eldora Hackett III', 'EtfkfhSgZJ', 98321009, '', 5, 'GST 28%', 'Inclusive', '28', '12654.25', 1, '0', 0, 5785, 1000, 57848, 0.00, 57848, '', 1, '', 1, 1, 0, 1, '2024-07-18 11:40:50', '2024-07-18 11:40:50', 'Qb6GVLFyR8XZheRN0KawM1ynSwJmkQE4loW03atCRFHVgMzCXiSCc4SNO7qOUrujcNn5Lu2ZscdzHP5SkEjKN3StKOR61tYvP7QSRRjPtgLVf5H1Wo7NIROtumfvHUIoJf4jmuCMzlUhK7TL3w9aaVfuGcbzl31tHkGa9Icq2TW4qi6MxW0kMPOn4iDu9vbvwPjCOff327MVxPu1GOJrIks0WBe6nnd9E2EBXkzNnTaUuAzfw9V9WP4XaWTTqEJ', 0, 0, 0, 12654.25, 0.00, 45193.75, 44193.75, 0, 1),
(54, 21, 99, 'Angel Hills', 'q8qHbH3aUV', 19919785, '', 4, 'GST 18%', 'Exclusive', '18', '33186.96', 1, '0', 0, 18437, 92186, 184372, 0.00, 184372, '', 0, '', 1, 1, 0, 1, '2024-07-18 11:40:50', '2024-07-18 11:40:50', 'Qb6GVLFyR8XZheRN0KawM1ynSwJmkQE4loW03atCRFHVgMzCXiSCc4SNO7qOUrujcNn5Lu2ZscdzHP5SkEjKN3StKOR61tYvP7QSRRjPtgLVf5H1Wo7NIROtumfvHUIoJf4jmuCMzlUhK7TL3w9aaVfuGcbzl31tHkGa9Icq2TW4qi6MxW0kMPOn4iDu9vbvwPjCOff327MVxPu1GOJrIks0WBe6nnd9E2EBXkzNnTaUuAzfw9V9WP4XaWTTqEJ', 0, 0, 0, 0.00, 33186.96, 184372.00, 92186.00, 0, 1),
(55, 21, 98, 'Jaida Grimes', 'lUnUIsoJZX', 88180650, '', 2, 'GST 5%', 'Exclusive', '5', '3228.1', 1, '0', 0, 6456, 32281, 64562, 0.00, 64562, '', 0, '', 1, 1, 0, 1, '2024-07-18 11:40:50', '2024-07-18 11:40:50', 'Qb6GVLFyR8XZheRN0KawM1ynSwJmkQE4loW03atCRFHVgMzCXiSCc4SNO7qOUrujcNn5Lu2ZscdzHP5SkEjKN3StKOR61tYvP7QSRRjPtgLVf5H1Wo7NIROtumfvHUIoJf4jmuCMzlUhK7TL3w9aaVfuGcbzl31tHkGa9Icq2TW4qi6MxW0kMPOn4iDu9vbvwPjCOff327MVxPu1GOJrIks0WBe6nnd9E2EBXkzNnTaUuAzfw9V9WP4XaWTTqEJ', 0, 0, 0, 0.00, 3228.10, 64562.00, 32281.00, 0, 1),
(58, 22, 100, 'Eldora Hackett III', 'EtfkfhSgZJ', 98321009, '', 5, 'GST 28%', 'Inclusive', '28', '12654.25', 1, '0', 0, 5785, 1000, 57848, 0.00, 57848, '', 1, '', 1, 1, 0, 1, '2024-07-18 12:57:20', '2024-07-18 12:57:20', 'JZK3pDdsaG7pGDF77zEqdXUfIbLEBszc5c3WE7gs0DMW5aYbXhm23mTQhB0y7KnhLfOETirdVHsF5qejzAnogX7eoEbusQLkM6XdYUCbpsTFVsDDKiBZcLkiEaOeyO7l98lHClXwIE0mkMc4kojQ84q2vManNPO2CCb6cvYjLTlpjWPXOPYFbkDnQ9maFhzYrQlkOuAz7q2qNT9EFvC6eoqSoiqsK4hmeGcArD0XPYwlf8Lt7PltAHwfXUSm9Yt', 0, 0, 0, 12654.25, 0.00, 45193.75, 44193.75, 0, 1),
(61, 23, 100, 'Eldora Hackett III', 'EtfkfhSgZJ', 98321009, '', 5, 'GST 28%', 'Inclusive', '28', '25308.5', 2, '0', 0, 11570, 1000, 57848, 0.00, 115696, '', 1, '', 1, 1, 0, 1, '2024-07-19 14:02:51', '2024-07-19 14:02:51', 'MecQV3JJAkZShK4Ee2lPN4x2ciRGddl70qTgArxWGlsRiPdLGacgtxx2TuMnBgLEV9tU9XmuSZcCF1eNyYWW6qPhfTVMUrc4MPjHDVL76aHrDYFUH1wV6K8HWiLteLcmGitm2jyilXuoiFAnl0VudqSjGDdsvQBiVJwKYK3YSmbBEcVr2hSOqMCTwueeqAXZCMRNRwYrm2pxR7WP7hp9HH83TgRqltiWmXcSfjRyHZ4HBcUDsBLIkj1OAhHRHup', 0, 0, 0, 12654.25, 0.00, 90387.50, 88387.50, 0, 1),
(62, 23, 99, 'Angel Hills', 'q8qHbH3aUV', 19919785, '', 4, 'GST 18%', 'Exclusive', '18', '66373.92', 2, '0', 0, 36874, 92186, 184372, 0.00, 368744, '', 0, '', 1, 1, 0, 1, '2024-07-19 14:02:51', '2024-07-19 14:02:51', 'MecQV3JJAkZShK4Ee2lPN4x2ciRGddl70qTgArxWGlsRiPdLGacgtxx2TuMnBgLEV9tU9XmuSZcCF1eNyYWW6qPhfTVMUrc4MPjHDVL76aHrDYFUH1wV6K8HWiLteLcmGitm2jyilXuoiFAnl0VudqSjGDdsvQBiVJwKYK3YSmbBEcVr2hSOqMCTwueeqAXZCMRNRwYrm2pxR7WP7hp9HH83TgRqltiWmXcSfjRyHZ4HBcUDsBLIkj1OAhHRHup', 0, 0, 0, 0.00, 33186.96, 368744.00, 184372.00, 0, 1),
(63, 24, 100, 'Eldora Hackett III', 'EtfkfhSgZJ', 98321009, '', 5, 'GST 28%', 'Inclusive', '28', '12654.25', 1, '0', 0, 5785, 1000, 57848, 0.00, 57848, '', 1, '', 1, 1, 0, 1, '2024-07-19 14:03:11', '2024-07-19 14:03:11', 'SNVvhgDiUhTHITrx48ZmwCU3ciuwzQDTf6NhtidDJt5b8gkL2jLJH9jkMeeEF6FQxK6O3QPfh7a8hnUeGvhPP7HOEm6cWWpXfoE51ubGWmLCPfmTKb95Ujnhu2t8L92XwS2TMkqrBMNKeFMGxP4UHFLjZmgFsiAwNRlBEuxRI6bIUWeDNq9EXGKHzvd8Ywu5RCLN15Qd3Hex3eeUgNvZYYaDQdLi3Dv96SSY83IRPq5Zl9f3osW4dDb7UjUJW83', 0, 0, 0, 12654.25, 0.00, 45193.75, 44193.75, 0, 1),
(64, 24, 99, 'Angel Hills', 'q8qHbH3aUV', 19919785, '', 4, 'GST 18%', 'Exclusive', '18', '33186.96', 1, '0', 0, 18437, 92186, 184372, 0.00, 184372, '', 0, '', 1, 1, 0, 1, '2024-07-19 14:03:11', '2024-07-19 14:03:11', 'SNVvhgDiUhTHITrx48ZmwCU3ciuwzQDTf6NhtidDJt5b8gkL2jLJH9jkMeeEF6FQxK6O3QPfh7a8hnUeGvhPP7HOEm6cWWpXfoE51ubGWmLCPfmTKb95Ujnhu2t8L92XwS2TMkqrBMNKeFMGxP4UHFLjZmgFsiAwNRlBEuxRI6bIUWeDNq9EXGKHzvd8Ywu5RCLN15Qd3Hex3eeUgNvZYYaDQdLi3Dv96SSY83IRPq5Zl9f3osW4dDb7UjUJW83', 0, 0, 0, 0.00, 33186.96, 184372.00, 92186.00, 0, 1),
(65, 25, 100, 'Eldora Hackett III', 'EtfkfhSgZJ', 98321009, '', 5, 'GST 28%', 'Inclusive', '28', '12654.25', 1, '0', 0, 5785, 1000, 57848, 0.00, 57848, '', 1, '', 1, 1, 0, 1, '2024-07-19 14:22:19', '2024-07-19 14:22:19', '7zlX7xfkrzgtnCEscp5ETK1skWsfzmv2oXHyBwvuHAi7mPzWaPgIxcq48zspOkjHnAhcHecSAMKY8PZJw6QmoUq0mlOdK49i4Y5fy6lXt8NWSjmR4fNf0eABkNHDBG2UoubA0feAJyVtisL4nO7jghrqZvceVgggD2nfYgv6q1FSGnPGAwvFBXlcdxz5D2wYiZLizdFb5SpocEKTg1jovT0oMn2uDCogyuCdNcVkVNBN3OhEISDbmiEJ1iwzftx', 0, 0, 0, 12654.25, 0.00, 45193.75, 44193.75, 0, 1),
(66, 25, 99, 'Angel Hills', 'q8qHbH3aUV', 19919785, '', 4, 'GST 18%', 'Exclusive', '18', '33186.96', 1, '0', 0, 18437, 92186, 184372, 0.00, 184372, '', 0, '', 1, 1, 0, 1, '2024-07-19 14:22:19', '2024-07-19 14:22:19', '7zlX7xfkrzgtnCEscp5ETK1skWsfzmv2oXHyBwvuHAi7mPzWaPgIxcq48zspOkjHnAhcHecSAMKY8PZJw6QmoUq0mlOdK49i4Y5fy6lXt8NWSjmR4fNf0eABkNHDBG2UoubA0feAJyVtisL4nO7jghrqZvceVgggD2nfYgv6q1FSGnPGAwvFBXlcdxz5D2wYiZLizdFb5SpocEKTg1jovT0oMn2uDCogyuCdNcVkVNBN3OhEISDbmiEJ1iwzftx', 0, 0, 0, 0.00, 33186.96, 184372.00, 92186.00, 0, 1),
(67, 26, 100, 'Eldora Hackett III', 'EtfkfhSgZJ', 98321009, '', 5, 'GST 28%', 'Inclusive', '28', '12654.25', 1, '0', 0, 5785, 1000, 57848, 0.00, 57848, '', 1, '', 1, 1, 0, 1, '2024-07-19 14:30:45', '2024-07-19 14:30:45', '72GzQL3aAyaucG42CyFSZgztx6UvLkSa1QAvYfZzRSaxjMWGueflcAf5muhZsbiYt1GlTnoObAgpW19a3OnloqUvygWkT93Y77cMEgHoz1PcBuUeEoFvTns8ikrW6eOXmhsRta5qG28xZ1YdQvZXqOAnpLzApmj4l4TQ81XUxSbpqKOQDylkDLGR9pMR32aZ5gm47wgVfk9VHOWzmXppuIRyyGHRgBZQNNpp21q6UEi4ewdJedagtBdOJNscSza', 0, 0, 0, 12654.25, 0.00, 45193.75, 44193.75, 0, 1),
(68, 26, 99, 'Angel Hills', 'q8qHbH3aUV', 19919785, '', 4, 'GST 18%', 'Exclusive', '18', '33186.96', 1, '0', 0, 18437, 92186, 184372, 0.00, 184372, '', 0, '', 1, 1, 0, 1, '2024-07-19 14:30:45', '2024-07-19 14:30:45', '72GzQL3aAyaucG42CyFSZgztx6UvLkSa1QAvYfZzRSaxjMWGueflcAf5muhZsbiYt1GlTnoObAgpW19a3OnloqUvygWkT93Y77cMEgHoz1PcBuUeEoFvTns8ikrW6eOXmhsRta5qG28xZ1YdQvZXqOAnpLzApmj4l4TQ81XUxSbpqKOQDylkDLGR9pMR32aZ5gm47wgVfk9VHOWzmXppuIRyyGHRgBZQNNpp21q6UEi4ewdJedagtBdOJNscSza', 0, 0, 0, 0.00, 33186.96, 184372.00, 92186.00, 0, 1),
(69, 27, 100, 'Eldora Hackett III', 'EtfkfhSgZJ', 98321009, '', 5, 'GST 28%', 'Exclusive', '28', '16197.44', 1, '0', 0, 5785, 1000, 57848, 0.00, 57848, '', 1, '', 1, 1, 0, 1, '2024-08-17 13:14:18', '2024-08-17 13:14:18', 'ynmhuOP4T0b0P0YMHy4QdQd4YdQiCoSvuxhc9ZzxtotZfgXYmDqs0mWJJLK9QfdRXYqWRXaQviVt39XXEOfAnHbdInf0HSmhNnczN6Uh0COqaZxPfMHgOiiIavGgiHzIcCQJ5YZsiyVa0wk9e6cTvJLBAYwQ3KpmnA33V2dDd3E95IVXB2OMfTfhLen52PlTnFratRZTqRjuyKpllIoTeFSYXtxbsAdISARNuYYLjFEmdnfk7sCiOZal5WYruLV', 0, 0, 0, 0.00, 16197.44, 57848.00, 56848.00, 0, 1),
(70, 27, 103, 'Hotel Room 2', 'Hotel', 98321014, '', 0, '', 'Exclusive', '0', '0', 1, '0', 0, 50, 500, 500, 0.00, 500, '', 0, '', 1, 1, 0, 1, '2024-08-17 13:14:18', '2024-08-17 13:14:18', 'ynmhuOP4T0b0P0YMHy4QdQd4YdQiCoSvuxhc9ZzxtotZfgXYmDqs0mWJJLK9QfdRXYqWRXaQviVt39XXEOfAnHbdInf0HSmhNnczN6Uh0COqaZxPfMHgOiiIavGgiHzIcCQJ5YZsiyVa0wk9e6cTvJLBAYwQ3KpmnA33V2dDd3E95IVXB2OMfTfhLen52PlTnFratRZTqRjuyKpllIoTeFSYXtxbsAdISARNuYYLjFEmdnfk7sCiOZal5WYruLV', 0, 0, 0, 0.00, 0.00, 0.00, -500.00, 0, 1),
(71, 28, 102, 'Hotel Room 1', 'Hotel', 98321014, '', 0, '', 'Exclusive', '0', '0', 2, '10%', 100, 0, 500, 500, 0.00, 1000, '', 0, '', 1, 1, 0, 1, '2024-08-17 13:15:08', '2024-08-17 13:15:08', 'TZ4rKqn3IwknKK7ULnFK6qJ7N2lUejow7AfgJUopgbbKm8aMK6Xbcrh499H7NckduKT6Q7j14xlelogw8by9IaUmAk7Lt2NHqn77fxyZ5bDrau4RgznQAJ8DIp89JkdXyAvROJ6aA3aCERiGJmcYG3bdmWFbtGCYYP6I7EcbVwJiUCQcFHGTUcUgFh9HuLmV8ZVzDMwDkvMbl8cwzsyfBhhfHF9fdtWCGyQqc4onYZ8gq0rnPDSYV7dMkAwkcav', 0, 0, 0, 0.00, 0.00, 0.00, -1100.00, 0, 1),
(72, 29, 100, 'Eldora Hackett III', 'EtfkfhSgZJ', 98321009, '', 5, 'GST 28%', 'Exclusive', '28', '16197.44', 1, '0', 0, 0, 1000, 57848, 0.00, 57848, '', 1, '', 1, 1, 0, 1, '2024-08-17 13:15:35', '2024-08-17 13:15:35', 'nbb77BsA7ZpMfQAIIcmzhu2aKBrZnbaRp6X5c7kYk6yU6aU0NaUAQxtaaaeHbjiHyP5JJHDn0AVVRlB0TJxfvsARdNLUG9FdQijKBj6uumm8lWuRi4USR2fdBpfDbrA8DGHjzJyG4h6y2t6AXQxIzLG3fCHVxplQI8O8dmKU2UGlEW7WXuNLzIQg6StDJ2xeFrLfwb0xsjXmRkkZ0rlZbPmm1uSPvBFjRb7j4VglflBKHZccWjP1YficpjJAw5b', 0, 0, 0, 0.00, 16197.44, 57848.00, 56848.00, 0, 1),
(73, 30, 118, 'sfdfg', '1', 98321028, '', 0, '', 'Exclusive', '0', '0', 1, '0', 0, 0, 1, 1, 0.00, 1, '1', 0, '', 1, 1, 0, 1, '2024-08-22 15:03:59', '2024-08-20 11:35:22', 'Yox4DWTy6AB5JrJfm2vuCZDVZtkEIgQdxeJtIbe7suMd59EsJfAQAQju1LdK7qjrKb6uCxn7mKaAlPZcS4WRo1ZuMUxYniYznAaZRl2FtOh4Hy1hK2KO3Lh1tYBLXC95MTWb1Fkh8a91PSEFW4nK6ZP4RyvyABDO94daOlUxHRuEYJMakyJaodzmm9JJvzMzBqHUMb8VnUg0AOuPnmJSd3Nb34pCj7NebkBC14DAnYhlIoYgMsRsiq5zbcoteZd', 0, 0, 0, 0.00, 0.00, 0.00, -1.00, 1, 1),
(74, 30, 119, 'sdgdfshgf', '2', 98321029, '', 0, '', 'Exclusive', '0', '0', 1, '0', 0, 0, 2, 2, 0.00, 2, '2', 0, '', 1, 1, 0, 1, '2024-08-22 15:03:59', '2024-08-20 11:35:23', 'Yox4DWTy6AB5JrJfm2vuCZDVZtkEIgQdxeJtIbe7suMd59EsJfAQAQju1LdK7qjrKb6uCxn7mKaAlPZcS4WRo1ZuMUxYniYznAaZRl2FtOh4Hy1hK2KO3Lh1tYBLXC95MTWb1Fkh8a91PSEFW4nK6ZP4RyvyABDO94daOlUxHRuEYJMakyJaodzmm9JJvzMzBqHUMb8VnUg0AOuPnmJSd3Nb34pCj7NebkBC14DAnYhlIoYgMsRsiq5zbcoteZd', 0, 0, 0, 0.00, 0.00, 0.00, -2.00, 1, 1),
(75, 30, 112, 'asdas', 'df', 98321022, '', 0, '', 'Exclusive', '0', '0', 1, '0', 0, 0, 1, 1, 0.00, 1, '1', 0, '', 1, 1, 0, 1, '2024-08-22 15:03:59', '2024-08-20 11:35:23', 'Yox4DWTy6AB5JrJfm2vuCZDVZtkEIgQdxeJtIbe7suMd59EsJfAQAQju1LdK7qjrKb6uCxn7mKaAlPZcS4WRo1ZuMUxYniYznAaZRl2FtOh4Hy1hK2KO3Lh1tYBLXC95MTWb1Fkh8a91PSEFW4nK6ZP4RyvyABDO94daOlUxHRuEYJMakyJaodzmm9JJvzMzBqHUMb8VnUg0AOuPnmJSd3Nb34pCj7NebkBC14DAnYhlIoYgMsRsiq5zbcoteZd', 0, 0, 0, 0.00, 0.00, 0.00, -1.00, 1, 1),
(76, 30, 120, 'sadgfg', '3', 98321030, '', 0, '', 'Exclusive', '0', '0', 1, '0', 0, 0, 3, 3, 0.00, 3, '3', 0, '', 1, 1, 0, 1, '2024-08-22 15:04:00', '2024-08-20 11:35:23', 'Yox4DWTy6AB5JrJfm2vuCZDVZtkEIgQdxeJtIbe7suMd59EsJfAQAQju1LdK7qjrKb6uCxn7mKaAlPZcS4WRo1ZuMUxYniYznAaZRl2FtOh4Hy1hK2KO3Lh1tYBLXC95MTWb1Fkh8a91PSEFW4nK6ZP4RyvyABDO94daOlUxHRuEYJMakyJaodzmm9JJvzMzBqHUMb8VnUg0AOuPnmJSd3Nb34pCj7NebkBC14DAnYhlIoYgMsRsiq5zbcoteZd', 0, 0, 0, 0.00, 0.00, 0.00, -3.00, 1, 1),
(77, 31, 120, 'sadgfg', '3', 98321030, '', 0, '', 'Exclusive', '0', '0', 1, '0', 0, 0, 3, 3, 0.00, 3, '3', 0, '', 1, 1, 0, 1, '2024-08-22 14:51:56', '2024-08-20 19:27:47', '0Pd5CKh8BYhyEAGOn3vvj9DwYd0AASO687JxWQNmStoFZCn1JJv4FF3WM9XwPvoKcUHiB7YZgI0Cnes6CazRrhOgy2cOkgDY7EvWS2OTm4K2ZzwE0QmgugEC38E57wjvFUPgHHcpHHZaYE4fjNkePEzxO8Yr0yEfRm9v1GTnR1vcJcT2xQLha7NEiRFk23lNXCQevDjX7If20kU1Ajov36v8wT1vFKswedYXx5rjxRf35rzx7chfiNRJefOaFsA', 0, 0, 0, 0.00, 0.00, 0.00, -3.00, 1, 1),
(78, 31, 100, 'Eldora Hackett III', 'EtfkfhSgZJ', 98321009, '', 5, 'GST 28%', 'Exclusive', '28', '16197.44', 1, '0', 0, 5785, 1000, 57848, 0.00, 57848, '', 1, '', 1, 1, 0, 1, '2024-08-22 14:51:56', '2024-08-20 19:27:47', '0Pd5CKh8BYhyEAGOn3vvj9DwYd0AASO687JxWQNmStoFZCn1JJv4FF3WM9XwPvoKcUHiB7YZgI0Cnes6CazRrhOgy2cOkgDY7EvWS2OTm4K2ZzwE0QmgugEC38E57wjvFUPgHHcpHHZaYE4fjNkePEzxO8Yr0yEfRm9v1GTnR1vcJcT2xQLha7NEiRFk23lNXCQevDjX7If20kU1Ajov36v8wT1vFKswedYXx5rjxRf35rzx7chfiNRJefOaFsA', 0, 0, 0, 0.00, 16197.44, 57848.00, 56848.00, 1, 1),
(79, 32, 120, 'sadgfg', '3', 98321030, '', 0, '', 'Exclusive', '0', '0', 1, '0', 0, 0, 3, 3, 0.00, 3, '3', 0, '', 1, 1, 0, 1, '2024-08-22 14:50:16', '2024-08-20 19:34:53', 'HgfDjNRt6tgHpoJQFMp9EcbtXiCt11wDj0drw9PjI4H8j03njiljTSZ4cgXu96Ff19gFSNTOER7V9rzq249qgktTRNz4PO51AeJRxDDZUwicCwivAGKfW0SImUXCiJpjyGdVbH7LoVh0v3UFfZXcToRW9y4e0ycCJZiQi2cny7DUGfqYkTdP6avENAw2MKz2IGWqPbpHm8ExsuCqhFzjuT4ObRmfv096e8oi8hQnMN44lQSiXSYy8zbpzs5fEBg', 0, 0, 0, 0.00, 0.00, 0.00, -3.00, 1, 1),
(80, 33, 100, 'Eldora Hackett III', 'EtfkfhSgZJ', 98321009, '', 5, 'GST 28%', 'Exclusive', '28', '16197.44', 1, '0', 0, 5785, 1000, 57848, 0.00, 57848, '', 1, '', 1, 1, 0, 1, '2024-08-20 21:15:36', '2024-08-20 21:15:36', 'uVAJX0kVVlRwpRK0KY5mAxsacBsRArIyIyWzDo9hEB5CULOZrqoMEEgw9kkAJobC7GpnL7JLN2vjvfsgR7BVHnKtYuEDShDfGYh3oGni76ClwjOf3dtagAhGmO2AwIK5O0GBaqg4tjI306XOJ3AuJ89duyQIC5gqeYquHRpMdQdQLEaavqT6Jc1UpTUvDF8U7qwGeTPUDjCfzuNbW2znQ7E2NjSoCNImhBEsgQXbgUY6CByeVpkWB6IejRGkmck', 0, 0, 0, 0.00, 16197.44, 57848.00, 56848.00, 0, 1),
(81, 34, 119, 'sdgdfshgf', '2', 98321029, '', 0, '', 'Exclusive', '0', '0', 1, '0', 0, 0, 2, 2, 0.00, 2, '2', 0, '', 1, 1, 0, 1, '2024-08-22 14:40:58', '2024-08-22 10:43:00', 'IJj6gMBndTjc0DCcm4eLzLhvWJAhXk5ZJU4tsSvOqMoglfvnp7AiSawEQN8c1mWdeOvfwCGJVjEOEO6eE2geJhqnOwnBKyixGc2Csmwu9VZ64Xp7UuoSGFRPzGFU1gvmcQ4XCYWSn16iKKB3xnMJwaF6DEyOOTepjGV79zcfZRkySC1GuB5uL10Px9KzpZRB3zavwGcfBg5teBR2paqmleqtqvDnlf3eD6jfDnP14yHCPVgzezEl3YrHmvjPDAB', 0, 0, 0, 0.00, 0.00, 0.00, -2.00, 1, 1),
(82, 34, 116, 'dfs', '1', 98321026, '', 0, '', 'Exclusive', '0', '0', 1, '0', 0, 0, 1, 1, 0.00, 1, '1', 0, '', 1, 1, 0, 1, '2024-08-22 14:40:59', '2024-08-22 10:43:01', 'IJj6gMBndTjc0DCcm4eLzLhvWJAhXk5ZJU4tsSvOqMoglfvnp7AiSawEQN8c1mWdeOvfwCGJVjEOEO6eE2geJhqnOwnBKyixGc2Csmwu9VZ64Xp7UuoSGFRPzGFU1gvmcQ4XCYWSn16iKKB3xnMJwaF6DEyOOTepjGV79zcfZRkySC1GuB5uL10Px9KzpZRB3zavwGcfBg5teBR2paqmleqtqvDnlf3eD6jfDnP14yHCPVgzezEl3YrHmvjPDAB', 0, 0, 0, 0.00, 0.00, 0.00, -1.00, 1, 1),
(83, 34, 117, 'dfs', '1', 98321027, '', 0, '', 'Exclusive', '0', '0', 1, '0', 0, 0, 1, 1, 0.00, 1, '1', 0, '', 1, 1, 0, 1, '2024-08-22 14:40:59', '2024-08-22 10:43:01', 'IJj6gMBndTjc0DCcm4eLzLhvWJAhXk5ZJU4tsSvOqMoglfvnp7AiSawEQN8c1mWdeOvfwCGJVjEOEO6eE2geJhqnOwnBKyixGc2Csmwu9VZ64Xp7UuoSGFRPzGFU1gvmcQ4XCYWSn16iKKB3xnMJwaF6DEyOOTepjGV79zcfZRkySC1GuB5uL10Px9KzpZRB3zavwGcfBg5teBR2paqmleqtqvDnlf3eD6jfDnP14yHCPVgzezEl3YrHmvjPDAB', 0, 0, 0, 0.00, 0.00, 0.00, -1.00, 1, 1),
(84, 35, 100, 'Eldora Hackett III', 'EtfkfhSgZJ', 98321009, '', 5, 'GST 28%', 'Exclusive', '28', '16197.44', 1, '0', 0, 5785, 1000, 57848, 0.00, 57848, '', 1, '', 1, 1, 0, 1, '2024-08-22 17:28:41', '2024-08-22 17:28:41', '9Lz7Z55AriVEvpCu8zL1bRlcOvjKDYJ8PMWRJyh6Y15z3PQzGo3OBdSHNJfOhw5LJZQ6vD6L0d2ZJkhd5gS2g4B5uokvTKNPWrokkaZVYJLFwDvaIkO0RBpPdhe9VcYSfYwoyiBmuHvqHqqoBz8kBJfCiieNpzCpVq5oY68U9pKSgAjlijl5WzUE9mg67YoJi47JTqF74ckGXuHYGyDAWnvr6qisc5ql0OtDb9Up5G8gHwP9WmyCo1AGi7jz8LL', 0, 0, 0, 0.00, 16197.44, 57848.00, 56848.00, 0, 1),
(85, 36, 100, 'Eldora Hackett III', 'EtfkfhSgZJ', 98321009, '', 5, 'GST 28%', 'Exclusive', '28', '16197.44', 1, '0', 0, 5785, 1000, 57848, 0.00, 57848, '', 1, '', 1, 1, 0, 1, '2024-08-22 17:50:04', '2024-08-22 17:50:04', '2NASHi9fuobSfmjm6SkyXqcq3X4UjwMAXlIJ6RLghOUaHSCubssKWeB61N5ANrIgHWPn2LEW05O3Nivi9aUYPkIklwUhh7exJGV8vSSFJVqXV5A08Wzkeof7htmgsPo6vGDo2kpHxapAuQPCYoAezSHKmZFyXphPCiiDLQjaWVRFiUg8RQXoo95IKsbM7UkN9zYNSGC7LfkTkzIIUWZT1c3czLsWO2JXjynGrTkb0yo3ODoqTBiwcBSs6oYfb5q', 0, 0, 0, 0.00, 16197.44, 57848.00, 56848.00, 0, 1),
(86, 37, 100, 'Eldora Hackett III', 'EtfkfhSgZJ', 98321009, '', 5, 'GST 28%', 'Exclusive', '28', '16197.44', 1, '0', 0, 5785, 1000, 57848, 0.00, 57848, '', 1, '', 1, 1, 0, 1, '2024-08-24 10:42:44', '2024-08-24 10:42:44', 'MFColSYELAYCAAC7NyAeywz8wyVsUzOGSF2i9slcB4Gm673CW29vwfezGtloQnotzH7UvLY5SZq7NVygw7tELDkf4sZHuCeBgaTXPm48eDQUBdrEAyHvMMm6IWa7sYVEwivwBOQUZh1kFDOal4vMPklLga8LPujdeKbdBJdcscfK8CZkmOjlzUh7K1up2OAQpENker2gFNegxJfB7dS0JPeP7amLtp35TvseRtbIqm58shxWNW8xO8jXm6DHKzR', 0, 0, 0, 0.00, 16197.44, 57848.00, 56848.00, 0, 1),
(87, 38, 100, 'Eldora Hackett III', 'EtfkfhSgZJ', 98321009, '', 5, 'GST 28%', 'Exclusive', '28', '16197.44', 1, '0', 0, 5785, 1000, 57848, 0.00, 57848, '', 1, '', 1, 1, 0, 1, '2024-08-24 14:26:54', '2024-08-24 14:26:54', 'DxWLKi1Z9YDP9kaW1mOLkUe19Ik6MtbNW11yFfFABCrZ1nRHAw7UASzFtSmzhfvDqZHL13HtD4nQvahpD496mwUKMsGuQEimIrUSY5gdA77rNymWiaBqNG7BVlY7nFDA9Ro0Zd6dOZ23c5KTmUwkWUH6oNRLvl7Zff2jV9SRwsLc21dDxWRUYvoImIV87weOTOhIjhTdFlvcQ7tOUzvQAEFeUcGBkkWUq0dPdCsCMj9WiSmnwkiJXyE0YVywL5S', 0, 0, 0, 0.00, 16197.44, 57848.00, 56848.00, 0, 1),
(88, 39, 100, 'Eldora Hackett III', 'EtfkfhSgZJ', 98321009, '', 5, 'GST 28%', 'Exclusive', '28', '16197.44', 1, '0', 0, 5785, 1000, 57848, 0.00, 57848, '', 1, '', 1, 1, 0, 1, '2024-08-24 14:27:16', '2024-08-24 14:27:16', 'KfF81VhJ3yIp6NAj9OuFsE6uqDQO051l4DexwfQE8Ps8PnvlsrmlCFA3mkUTwplzsabVsa6AirDiWRgMIhjKFKAj3MUlWoBWZPZzhQ5JkXpphQaDSnYAk50orNnxzxmyHgRsodVwL9rY0LOZLoid1wScEVvkEDfLrtEAoBD6wtndFwSys5wGMcrFiCLCSwWiD0AU0OkwPmK8uJCXJfNW4Y4DUZX5ElGgfu0PyF0FDD9j2aCU47xcmDUHaFl0WM9', 0, 0, 0, 0.00, 16197.44, 57848.00, 56848.00, 0, 1),
(89, 40, 100, 'Eldora Hackett III', 'EtfkfhSgZJ', 98321009, '', 5, 'GST 28%', 'Exclusive', '28', '16197.44', 1, '0', 0, 5785, 1000, 57848, 0.00, 57848, '', 1, '', 1, 1, 0, 1, '2024-08-24 15:47:01', '2024-08-24 14:28:45', '2auBxTmcqXfuayoVbS0G9fB63EnyxQr7ddbVlEdfBQVyF4ovp2INAm3doIhSK1Fb8BD1YBhecZIlxm2g7uRLkNB3CJisqfrnWfg8HPcgfNLtryOYjT5IqSAyqZDkyuBFtonvxzC8x4NqfKKE1HdaI7IquK7MgJYaNPfxnRGAwEBQbjOCGAt8TpAcCkWWCGjIp9xuoZRBVw4RbnomRuEUKtepQWAdND79tSIZ8wE4nrfnx0fmonj5qzUQt0hsjzd', 0, 0, 0, 0.00, 16197.44, 57848.00, 56848.00, 0, 1),
(90, 41, 100, 'Eldora Hackett III', 'EtfkfhSgZJ', 98321009, '', 5, 'GST 28%', 'Exclusive', '28', '16197.44', 1, '0', 0, 5785, 1000, 57848, 0.00, 57848, '', 1, '', 1, 1, 0, 1, '2024-08-24 14:59:20', '2024-08-24 14:58:58', 'IuWUevJ4aDukurzT3iha6gWAF3gMTSu52fBWes1Hbux00nOwxH6FjVZNwnABm15FTYXcy4rG80m6kLUsTtoA7J54pJ9yyRRTuYZ0gfvYHZNHOwhBuzT4q5prFPRlgD9fsPw0xGwcPIXctO8ZLDeR2rI5DnPMk5ZYgYjkbnnYxQDkTzaXvqR8K6CcBhS4XCSKmalYAq22STnCKRu8ig5Msi6ka0FCibJOWWjNp0KZYqXL27W2TMgeaMdzhDY8na0', 0, 0, 0, 0.00, 16197.44, 57848.00, 56848.00, 1, 1),
(91, 42, 100, 'Eldora Hackett III', 'EtfkfhSgZJ', 98321009, '', 5, 'GST 28%', 'Exclusive', '28', '32394.88', 2, '0', 0, 11570, 1000, 57848, 0.00, 115696, '', 1, '', 1, 1, 0, 1, '2024-08-24 15:00:20', '2024-08-24 14:59:42', 'xRvaN4IJzkHpO6kWeiuDqqKwW4P7l2vfF4Nc259dq9hVQD6p1W0MdyB6gmfDYpEmB1L54AxtvwbQ0n5erPAmizG2ndL3rktFxy7tghrXQa2yB8IRYS0sTOBdHOKPpxbXbrhB2gh5anuOM0Gu3IIvXXP4tXXyS3MlVReITzcWruNbYrOnp7KAA56FgsvGhB7Vp0382o4txKcWKQyG2MWZEci87kHzCZEr8xLfqbGEyPW9UER87IMhy4AszAJL7pO', 0, 0, 0, 0.00, 16197.44, 115696.00, 113696.00, 1, 1),
(92, 43, 100, 'Eldora Hackett III', 'EtfkfhSgZJ', 98321009, '', 5, 'GST 28%', 'Exclusive', '28', '32394.88', 2, '0', 0, 11570, 1000, 57848, 0.00, 115696, '', 1, '', 1, 1, 0, 1, '2024-08-24 15:44:45', '2024-08-24 15:43:16', '8HsDHqsTDlGMaZtYiC7ICjzPsIyjmgmepEr6sNLg60eLknIf3EAxLJscPQe8VsJ6AYh5hDGRmFCzrrWCOtOys0kXsetoRkPOa89gdlPjwwmMaU3nT6ZZx0LhKI5VaiIN9HCHVCridgkwCvFKJTUWCWW3uoCP58kiKD5mQGSTV6SJET6vT9MuxkpuhORJg365ETwba4ZbWT5nV2SWAsZFVKP0GRMqy8awATxF9UnwdFxZElzJdFw1ZU8YDRDyPNW', 0, 0, 0, 0.00, 16197.44, 115696.00, 113696.00, 1, 1),
(93, 44, 100, 'Eldora Hackett III', 'EtfkfhSgZJ', 98321009, '', 5, 'GST 28%', 'Exclusive', '28', '48592.32', 3, '0', 0, 17354, 1000, 57848, 0.00, 173544, '', 1, '', 1, 1, 0, 1, '2024-08-24 15:52:33', '2024-08-24 15:47:49', 'XNjAV8j1PVCpYAFRHclCEnCUe669KtbMW9AaIuzHNuS7MU25EaLN3tXj1X1u536cyyykzVyFzVVYKLsCPGOBPP8Yr3QCdOnHvsTSfYY3HckSzV9AM0AhWMqdXuOcXTPQZzRJocIKAlqGhubt2dWvYDCHJyLbyzJrrKJJbtpxtEDxThYSVbWPDOahKKrWQ1uayNwPY6nRlx8ABGJ5fudJAWbBQSZVTNV8nCBhZbp70WYtdCFz4ikUF6XgCiHn2ub', 0, 0, 0, 0.00, 16197.44, 173544.00, 170544.00, 1, 1),
(94, 45, 100, 'Eldora Hackett III', 'EtfkfhSgZJ', 98321009, '', 5, 'GST 28%', 'Exclusive', '28', '32394.88', 2, '0', 0, 11570, 1000, 57848, 0.00, 115696, '', 1, '', 1, 1, 0, 1, '2024-08-24 16:01:34', '2024-08-24 16:01:16', 'xfRP22CU9riV7R707yleEhhMkq82cyMYyIgxciKLLTlQ0zqT0BOtkFbyMBr3OltftWNTQCfY2BvP29tvx7L8WU5BaVymSwB5M039BoBJ6nzOsjtNDaOvqQhXt8tv0KW0x1z6Tkt8OZOmhTLGrMmTvEJthKcSIi7WK8FLjAt1EAKslnrg6gCXewYArWNaSTGJtZr6LE6IQA6QiPCExDQ4EFmMpKSpMc2cdscSAxpnSNIHN7eInqbSoPMgxFqPovQ', 0, 0, 0, 0.00, 16197.44, 115696.00, 113696.00, 1, 1),
(95, 46, 100, 'Eldora Hackett III', 'EtfkfhSgZJ', 98321009, '', 5, 'GST 28%', 'Exclusive', '28', '16197.44', 1, '0', 0, 5785, 1000, 57848, 0.00, 57848, '', 1, '', 1, 1, 0, 1, '2024-08-24 16:07:46', '2024-08-24 16:07:46', 'D4pZwvMw1AUImQ7Ki0B8EYSun2liezw58MU4oiqwt90RRyKT9eTyaQocE6IpkX4M4MsENnQSCK78qbAz50TbY2xcUKAzc7y4qVuB27U042VkEnJt0LuO3lFTVXlQQ2yddS9g9ZmdQFIY78RCqMX9wa1ZqQA6tM9rcRzJuatNDNY8HVuwixhpqB3CAnUlXN6u0DJQychEEDVqVeYZPMRkeVq9hSka5ZXmJwf33h2T4I3nDJ4IHawa7187OQ7sVSI', 0, 0, 0, 0.00, 16197.44, 57848.00, 56848.00, 0, 1),
(96, 47, 100, 'Eldora Hackett III', 'EtfkfhSgZJ', 98321009, '', 5, 'GST 28%', 'Exclusive', '28', '16197.44', 1, '0', 0, 5785, 1000, 57848, 0.00, 57848, '', 1, '', 1, 1, 0, 1, '2024-08-24 16:10:37', '2024-08-24 16:10:37', 'jfppX1ZyLg7pobOrv3miuCX6rjAakE16hJbRA3fGxGofyIPQS03ERLPCdJfzKYpZnmF8r13etqS76K4PqET31PsMod3VIdoQ5RcegGng832S7Wk0ZOnvDUHpz9a0I7AI8aGAlicEwPAsVwISkUBh26FiKx2XrYpVb5V9lhk772mO2oiEOmBcMN0tKHRZAB36eCvtTrMBRJMZC2KKDHKdYxyVR58hKWCUK8LYJY8I8bX8VK7f4RpA4ucL3nqIl2w', 0, 0, 0, 0.00, 16197.44, 57848.00, 56848.00, 0, 1),
(97, 51, 120, 'sadgfg', '3', 98321030, '', 0, '', 'Exclusive', '0', '0', 1, '0', 0, 0, 3, 3, 0.00, 3, '3', 0, '', 1, 1, 0, 1, '2024-10-02 10:24:01', '2024-10-02 10:24:01', 'mKkimiC0m1TUiNiQ6q5uiL6v3tTCFo82q0RL5h2G7s6zeMRGv0KPy8H2SKvFDOQ6Cf3oCgtrYvguUInJB8sjddssWrBw8Dp6kIJ9NnI99Rp02LYBrH0r3VTTFJfcRgcO71IMfUIvF08iJ4TAKUmzmTREQDrKSFXSgPQECaXjIfRjgblHjvgRFXAP0IP5ZAlo0erO0Zfp92CgFXQRW5QZ4NHYV52f6SGEr7l1VlBcMlwklCAtSaVYXOA7BG0VTbp', 0, 0, 0, 0.00, 0.00, 0.00, -3.00, 0, 1),
(98, 51, 119, 'sdgdfshgf', '2', 98321029, '', 0, '', 'Exclusive', '0', '0', 1, '0', 0, 0, 2, 2, 0.00, 2, '2', 0, '', 1, 1, 0, 1, '2024-10-02 10:24:02', '2024-10-02 10:24:02', 'mKkimiC0m1TUiNiQ6q5uiL6v3tTCFo82q0RL5h2G7s6zeMRGv0KPy8H2SKvFDOQ6Cf3oCgtrYvguUInJB8sjddssWrBw8Dp6kIJ9NnI99Rp02LYBrH0r3VTTFJfcRgcO71IMfUIvF08iJ4TAKUmzmTREQDrKSFXSgPQECaXjIfRjgblHjvgRFXAP0IP5ZAlo0erO0Zfp92CgFXQRW5QZ4NHYV52f6SGEr7l1VlBcMlwklCAtSaVYXOA7BG0VTbp', 0, 0, 0, 0.00, 0.00, 0.00, -2.00, 0, 1),
(99, 51, 118, 'sfdfg', '1', 98321028, '', 0, '', 'Exclusive', '0', '0', 1, '0', 0, 0, 1, 1, 0.00, 1, '1', 0, '', 1, 1, 0, 1, '2024-10-02 10:24:02', '2024-10-02 10:24:02', 'mKkimiC0m1TUiNiQ6q5uiL6v3tTCFo82q0RL5h2G7s6zeMRGv0KPy8H2SKvFDOQ6Cf3oCgtrYvguUInJB8sjddssWrBw8Dp6kIJ9NnI99Rp02LYBrH0r3VTTFJfcRgcO71IMfUIvF08iJ4TAKUmzmTREQDrKSFXSgPQECaXjIfRjgblHjvgRFXAP0IP5ZAlo0erO0Zfp92CgFXQRW5QZ4NHYV52f6SGEr7l1VlBcMlwklCAtSaVYXOA7BG0VTbp', 0, 0, 0, 0.00, 0.00, 0.00, -1.00, 0, 1),
(100, 51, 117, 'dfs', '1', 98321027, '', 0, '', 'Exclusive', '0', '0', 1, '0', 0, 0, 1, 1, 0.00, 1, '1', 0, '', 1, 1, 0, 1, '2024-10-02 10:24:02', '2024-10-02 10:24:02', 'mKkimiC0m1TUiNiQ6q5uiL6v3tTCFo82q0RL5h2G7s6zeMRGv0KPy8H2SKvFDOQ6Cf3oCgtrYvguUInJB8sjddssWrBw8Dp6kIJ9NnI99Rp02LYBrH0r3VTTFJfcRgcO71IMfUIvF08iJ4TAKUmzmTREQDrKSFXSgPQECaXjIfRjgblHjvgRFXAP0IP5ZAlo0erO0Zfp92CgFXQRW5QZ4NHYV52f6SGEr7l1VlBcMlwklCAtSaVYXOA7BG0VTbp', 0, 0, 0, 0.00, 0.00, 0.00, -1.00, 0, 1),
(101, 51, 116, 'dfs', '1', 98321026, '', 0, '', 'Exclusive', '0', '0', 1, '0', 0, 0, 1, 1, 0.00, 1, '1', 0, '', 1, 1, 0, 1, '2024-10-02 10:24:02', '2024-10-02 10:24:02', 'mKkimiC0m1TUiNiQ6q5uiL6v3tTCFo82q0RL5h2G7s6zeMRGv0KPy8H2SKvFDOQ6Cf3oCgtrYvguUInJB8sjddssWrBw8Dp6kIJ9NnI99Rp02LYBrH0r3VTTFJfcRgcO71IMfUIvF08iJ4TAKUmzmTREQDrKSFXSgPQECaXjIfRjgblHjvgRFXAP0IP5ZAlo0erO0Zfp92CgFXQRW5QZ4NHYV52f6SGEr7l1VlBcMlwklCAtSaVYXOA7BG0VTbp', 0, 0, 0, 0.00, 0.00, 0.00, -1.00, 0, 1),
(102, 51, 100, 'Eldora Hackett III', 'EtfkfhSgZJ', 98321009, '', 5, 'GST 28%', 'Exclusive', '28', '16197.44', 1, '0', 0, 5785, 1000, 57848, 0.00, 57848, '', 1, '', 1, 1, 0, 1, '2024-10-02 10:24:03', '2024-10-02 10:24:03', 'mKkimiC0m1TUiNiQ6q5uiL6v3tTCFo82q0RL5h2G7s6zeMRGv0KPy8H2SKvFDOQ6Cf3oCgtrYvguUInJB8sjddssWrBw8Dp6kIJ9NnI99Rp02LYBrH0r3VTTFJfcRgcO71IMfUIvF08iJ4TAKUmzmTREQDrKSFXSgPQECaXjIfRjgblHjvgRFXAP0IP5ZAlo0erO0Zfp92CgFXQRW5QZ4NHYV52f6SGEr7l1VlBcMlwklCAtSaVYXOA7BG0VTbp', 0, 0, 0, 0.00, 16197.44, 57848.00, 56848.00, 0, 1),
(103, 51, 103, 'Hotel Room 2', 'Hotel', 98321014, '', 0, '', 'Exclusive', '0', '0', 1, '0', 0, 50, 500, 500, 0.00, 500, '', 0, '', 1, 1, 0, 1, '2024-10-02 10:24:03', '2024-10-02 10:24:03', 'mKkimiC0m1TUiNiQ6q5uiL6v3tTCFo82q0RL5h2G7s6zeMRGv0KPy8H2SKvFDOQ6Cf3oCgtrYvguUInJB8sjddssWrBw8Dp6kIJ9NnI99Rp02LYBrH0r3VTTFJfcRgcO71IMfUIvF08iJ4TAKUmzmTREQDrKSFXSgPQECaXjIfRjgblHjvgRFXAP0IP5ZAlo0erO0Zfp92CgFXQRW5QZ4NHYV52f6SGEr7l1VlBcMlwklCAtSaVYXOA7BG0VTbp', 0, 0, 0, 0.00, 0.00, 0.00, -500.00, 0, 1),
(104, 52, 100, 'Eldora Hackett III', 'EtfkfhSgZJ', 98321009, '', 5, 'GST 28%', 'Exclusive', '28', '16197.44', 1, '0', 0, 0, 1000, 57848, 0.00, 57848, '', 1, '', 1, 1, 0, 1, '2024-10-02 10:24:50', '2024-10-02 10:24:50', 'NJxg7TXsR9NtzYBJlpPM3cQHSyaolfOHjMBjLfjewBKPwQ3Z3rgi0rNmKMfAJ2JI6wZwSniPvMgZ9uT5smKOu4SLgi0IFYUpVJB1Q34aIOeoGtidyN6YXMpHTJOOLUPtxSyiPu7jRaB61EqMUMkL7eZVMSY6AkkestPm9C6xoZc5tB0Kdt45skAo7FBFJt0ZptmgvbShDgRC6aXqUVTOCBnJ2J8RLRDofnQnvgSSilmSOoN4L7NcXIzRhc85xWO', 0, 0, 0, 0.00, 16197.44, 57848.00, 56848.00, 0, 1),
(105, 53, 100, 'Eldora Hackett III', 'EtfkfhSgZJ', 98321009, '', 5, 'GST 28%', 'Exclusive', '28', '16197.44', 1, '20%', 11570, 0, 1000, 57848, 0.00, 57848, '', 1, '', 1, 1, 0, 1, '2024-10-02 10:45:14', '2024-10-02 10:45:14', 'QVdCVnTDFmGKGHzVNgj3floWdTVFL4m9V3zZSjVH2C4tMBj5dS0qxb1JlAR9GV8WTOR0wFU5cXSN6vVuIJQvswRzz130e3lYIk7x5JN2LFeYlD7z4FhyYUZEj4htxvuv1E1tqtKal8T8plTfuqPbXehu7GC9sAqRmjqlAFvL1jqE8aAF8MdBL8Z0HWaCoBEhT1FUafO8pUuCKw9yWjKJ7dke7XXaDgt33d9CLatP3m7oxO1lZjt1NdewwAohXr1', 0, 0, 0, 0.00, 16197.44, 57848.00, 45278.40, 0, 1),
(106, 54, 106, 'asdasd', 'asdasda', 98321016, '', 0, '', 'Exclusive', '0', '0', 1, '0', 0, 0, 1, 1, 0.00, 1, 'sdf', 0, '', 1, 1, 0, 1, '2024-10-20 15:55:51', '2024-10-20 15:55:51', 'haIEOdQQTW3hjninrGFvRPbEJl3DmB3P7ljSEtLdWToSUAfdMpYNUs3zEAY3QfG2tB0Mbsv59RvhD0JiKjg8Zcw7m1THfpn6i2MaLWsxmtNyUpfjXRhbDb4eQM1kxfdNKGgNnXBpkGmeFgkcLmlVr60qjFKp1xsEQiMJeqX3vz9iOEKl6Dk5kl4zjoTJCXpp97le2eH9I0SqHyhIIKjxe8uF7UoBKT64xjRLokn1n0lbwptWGbxwJoKET1medBt', 1, 0, 0, 0.00, 0.00, 0.00, -1.00, 0, 1),
(107, 55, 119, 'sdgdfshgf', '2', 98321029, '', 0, '', 'Exclusive', '0', '0', 1, '0', 0, 0, 2, 2, 0.00, 2, '2', 0, '', 1, 1, 0, 1, '2024-10-20 17:13:11', '2024-10-20 17:13:11', '7gHXba0yWuNdkyEy7yR0CQGxXlE9CPIRKZu2fIejePJWMiqLBy8bCcjzOjb8TvpIINcTsxRgmw3iH40BJL7TqnjuQ7ltB82sshZZjKNM9hxSVB9yVfxQprEbq7Qh6Q1oUZDGpJortRKdXEL1HNAQQWwkMIruJjx6gei4a2FDS2NQVIBghpfT8ttU1zHDr4iAuM9LlQgkCYmHxbt7vXSB7ZjcwtHRI1qdQXPqjRsRnDBDYKkC49xCt8QOtUQycC3', 0, 0, 0, 0.00, 0.00, 0.00, -2.00, 0, 1),
(108, 55, 120, 'sadgfg', '3', 98321030, '', 0, '', 'Exclusive', '0', '0', 1, '0', 0, 0, 3, 3, 0.00, 3, '3', 0, '', 1, 1, 0, 1, '2024-10-20 17:13:11', '2024-10-20 17:13:11', '7gHXba0yWuNdkyEy7yR0CQGxXlE9CPIRKZu2fIejePJWMiqLBy8bCcjzOjb8TvpIINcTsxRgmw3iH40BJL7TqnjuQ7ltB82sshZZjKNM9hxSVB9yVfxQprEbq7Qh6Q1oUZDGpJortRKdXEL1HNAQQWwkMIruJjx6gei4a2FDS2NQVIBghpfT8ttU1zHDr4iAuM9LlQgkCYmHxbt7vXSB7ZjcwtHRI1qdQXPqjRsRnDBDYKkC49xCt8QOtUQycC3', 0, 0, 0, 0.00, 0.00, 0.00, -3.00, 0, 1),
(109, 55, 95, 'Milford Herman', '5K1IvC7bgF', 84439094, '', 4, 'GST 18%', 'Exclusive', '18', '28259.28', 1, '0', 0, 15700, 78498, 156996, 0.00, 156996, '', 0, '', 1, 1, 0, 1, '2024-10-20 17:13:11', '2024-10-20 17:13:11', '7gHXba0yWuNdkyEy7yR0CQGxXlE9CPIRKZu2fIejePJWMiqLBy8bCcjzOjb8TvpIINcTsxRgmw3iH40BJL7TqnjuQ7ltB82sshZZjKNM9hxSVB9yVfxQprEbq7Qh6Q1oUZDGpJortRKdXEL1HNAQQWwkMIruJjx6gei4a2FDS2NQVIBghpfT8ttU1zHDr4iAuM9LlQgkCYmHxbt7vXSB7ZjcwtHRI1qdQXPqjRsRnDBDYKkC49xCt8QOtUQycC3', 0, 0, 0, 0.00, 28259.28, 156996.00, 78498.00, 0, 1),
(110, 55, 91, 'Destini Dach III', 'aMGhdlOf5x', 13338465, '', 1, 'CGST 2.5%', 'Exclusive', '2.5', '2059.5', 1, '0', 0, 8238, 41190, 82380, 0.00, 82380, '', 0, '', 1, 1, 0, 1, '2024-10-20 17:13:11', '2024-10-20 17:13:11', '7gHXba0yWuNdkyEy7yR0CQGxXlE9CPIRKZu2fIejePJWMiqLBy8bCcjzOjb8TvpIINcTsxRgmw3iH40BJL7TqnjuQ7ltB82sshZZjKNM9hxSVB9yVfxQprEbq7Qh6Q1oUZDGpJortRKdXEL1HNAQQWwkMIruJjx6gei4a2FDS2NQVIBghpfT8ttU1zHDr4iAuM9LlQgkCYmHxbt7vXSB7ZjcwtHRI1qdQXPqjRsRnDBDYKkC49xCt8QOtUQycC3', 0, 0, 0, 0.00, 2059.50, 82380.00, 41190.00, 0, 1),
(111, 55, 76, 'Bobby Jast', 'ie40ESV2zg', 30378500, '', 4, 'GST 18%', 'Exclusive', '18', '34116.12', 1, '0', 0, 18953, 94767, 189534, 0.00, 189534, '', 0, '', 1, 1, 0, 1, '2024-10-20 17:13:12', '2024-10-20 17:13:12', '7gHXba0yWuNdkyEy7yR0CQGxXlE9CPIRKZu2fIejePJWMiqLBy8bCcjzOjb8TvpIINcTsxRgmw3iH40BJL7TqnjuQ7ltB82sshZZjKNM9hxSVB9yVfxQprEbq7Qh6Q1oUZDGpJortRKdXEL1HNAQQWwkMIruJjx6gei4a2FDS2NQVIBghpfT8ttU1zHDr4iAuM9LlQgkCYmHxbt7vXSB7ZjcwtHRI1qdQXPqjRsRnDBDYKkC49xCt8QOtUQycC3', 0, 0, 0, 0.00, 34116.12, 189534.00, 94767.00, 0, 1),
(112, 55, 77, 'Dr. Theron Yost II', 'P6cn7vsmUo', 63585421, '', 1, 'CGST 2.5%', 'Exclusive', '2.5', '3727.85', 1, '0', 0, 14911, 74557, 149114, 0.00, 149114, '', 0, '', 1, 1, 0, 1, '2024-10-20 17:13:12', '2024-10-20 17:13:12', '7gHXba0yWuNdkyEy7yR0CQGxXlE9CPIRKZu2fIejePJWMiqLBy8bCcjzOjb8TvpIINcTsxRgmw3iH40BJL7TqnjuQ7ltB82sshZZjKNM9hxSVB9yVfxQprEbq7Qh6Q1oUZDGpJortRKdXEL1HNAQQWwkMIruJjx6gei4a2FDS2NQVIBghpfT8ttU1zHDr4iAuM9LlQgkCYmHxbt7vXSB7ZjcwtHRI1qdQXPqjRsRnDBDYKkC49xCt8QOtUQycC3', 0, 0, 0, 0.00, 3727.85, 149114.00, 74557.00, 0, 1),
(118, 70, 120, 'sadgfg', '3', 98321030, '', 0, '', 'Exclusive', '0', '0', 1, '0', 0, 0, 3, 3, 0.00, 3, '3', 0, '', 1, 1, 0, 1, '2024-12-23 10:03:32', '2024-12-23 10:03:32', 'L7bUWI7I4YUPR7IvV7ZHvgesU1FaJNgG7g4DXSKu3X0rwhbuoX6xHNPAi4GmV5jrRr3z0e5fSargrFCxq0DqyjUwCiWKuSvR1AgnINH8y02RPrFpurkCF67oheQYHDoGXCHc5sBBrKJQFtiuisgjZ3suzEdfDA7nZX8FPAepnSLPYNY0MfsCaacLqcr2OdBMQQRAWbn6Q31ZJKfwc0PJKu2gt7avUT2xvH0WInnGWrHyDLN1kuYtAlp60SIZ8qJ', 0, 0, 0, 0.00, 0.00, 0.00, -3.00, 0, 1),
(119, 70, 115, 'sdf', '1', 98321025, '', 0, '', 'Exclusive', '0', '0', 1, '0', 0, 0, 1, 1, 0.00, 1, '1', 0, '', 1, 1, 0, 1, '2024-12-23 10:03:32', '2024-12-23 10:03:32', 'L7bUWI7I4YUPR7IvV7ZHvgesU1FaJNgG7g4DXSKu3X0rwhbuoX6xHNPAi4GmV5jrRr3z0e5fSargrFCxq0DqyjUwCiWKuSvR1AgnINH8y02RPrFpurkCF67oheQYHDoGXCHc5sBBrKJQFtiuisgjZ3suzEdfDA7nZX8FPAepnSLPYNY0MfsCaacLqcr2OdBMQQRAWbn6Q31ZJKfwc0PJKu2gt7avUT2xvH0WInnGWrHyDLN1kuYtAlp60SIZ8qJ', 0, 0, 0, 0.00, 0.00, 0.00, -1.00, 0, 1),
(120, 70, 109, 'dfsdf', 'sdfsd', 98321019, '', 0, '', 'Exclusive', '0', '0', 1, '0', 0, 0, 1, 1, 0.00, 1, '1', 0, '', 1, 1, 0, 1, '2024-12-23 10:03:33', '2024-12-23 10:03:33', 'Bq13picUmGOUrqzFvY6CoP5BVpsZjLbBMXSiCEJKKLKg2yd5XC2Ca3HVROW5YEu2AysTcLk9pngZvnr4gvterjfek1mmnFBFmKO9BDYdBIrBT8VexrZnC2OlWVQoLGIWVu4DODI2RV9FJHeMoHFTOxu5BUZ3fp5GqwSrbkzuXjRAR7H0wPuxbFUSh8VTG5soFPl0o8JW20CFkFkcoTxHXpE35wvLNABVOik9zTfiMF8SoFNYKUj44FdTo1Dc2Kh', 0, 0, 0, 0.00, 0.00, 0.00, -1.00, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `orderStatusId` int(11) NOT NULL,
  `heading` varchar(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`orderStatusId`, `heading`, `status`) VALUES
(1, 'Completed', 1),
(2, 'Running/Hold', 1),
(3, 'Cancelled', 1),
(4, 'Delivered', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_total`
--

CREATE TABLE `order_total` (
  `orderTotalId` int(11) NOT NULL,
  `orderId` int(11) NOT NULL,
  `orderTotal` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_total`
--

INSERT INTO `order_total` (`orderTotalId`, `orderId`, `orderTotal`, `status`) VALUES
(1, 1, '{\"totalItemsInCart\":0,\"totalQuantityInCart\":0,\"roomRent\":0,\"subTotal\":100,\"tax\":0,\"productDiscount\":0,\"rewardEarned\":0,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":100}', 1),
(2, 2, '{\"totalItemsInCart\":0,\"totalQuantityInCart\":0,\"roomRent\":0,\"subTotal\":200,\"tax\":0,\"productDiscount\":0,\"rewardEarned\":0,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":200}', 1),
(3, 3, '{\"totalItemsInCart\":0,\"totalQuantityInCart\":0,\"roomRent\":400,\"subTotal\":400,\"tax\":0,\"productDiscount\":0,\"rewardEarned\":0,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":400}', 1),
(4, 4, '{\"totalItemsInCart\":1,\"totalQuantityInCart\":1,\"roomRent\":0,\"subTotal\":57848,\"tax\":12654.25,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":5785,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":70502}', 1),
(5, 5, '{\"totalItemsInCart\":1,\"totalQuantityInCart\":1,\"roomRent\":0,\"subTotal\":64562,\"tax\":3228.1000000000004,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":6456,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":67790}', 1),
(6, 6, '{\"totalItemsInCart\":1,\"totalQuantityInCart\":1,\"roomRent\":0,\"subTotal\":184372,\"tax\":33186.96,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":18437,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":217559}', 1),
(7, 7, '{\"totalItemsInCart\":2,\"totalQuantityInCart\":2,\"roomRent\":0,\"subTotal\":333982,\"tax\":37675.26,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":33398,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":371657}', 1),
(8, 8, '{\"totalItemsInCart\":1,\"totalQuantityInCart\":1,\"roomRent\":600,\"subTotal\":150210,\"tax\":4488.3,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":14961,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":154698}', 1),
(9, 9, '{\"totalItemsInCart\":4,\"totalQuantityInCart\":6,\"roomRent\":0,\"subTotal\":879716,\"tax\":85938.12000000001,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":87971,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":965654}', 1),
(10, 10, '{\"totalItemsInCart\":2,\"totalQuantityInCart\":3,\"roomRent\":0,\"subTotal\":426592,\"tax\":79028.17,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":42659,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":505620}', 1),
(11, 11, '{\"totalItemsInCart\":2,\"totalQuantityInCart\":2,\"roomRent\":500,\"subTotal\":207958,\"tax\":17142.55,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":20746,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":225101}', 1),
(12, 12, '{\"totalItemsInCart\":1,\"totalQuantityInCart\":1,\"roomRent\":0,\"subTotal\":500,\"tax\":0,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":50,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":500}', 1),
(13, 13, '{\"totalItemsInCart\":1,\"totalQuantityInCart\":1,\"roomRent\":0,\"subTotal\":500,\"tax\":0,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":50,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":500}', 1),
(14, 14, '{\"totalItemsInCart\":3,\"totalQuantityInCart\":3,\"roomRent\":0,\"subTotal\":211958,\"tax\":17142.55,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":21196,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":229101}', 1),
(15, 15, '{\"totalItemsInCart\":1,\"totalQuantityInCart\":1,\"roomRent\":0,\"subTotal\":184372,\"tax\":33186.96,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":18437,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":217559}', 1),
(16, 16, '{\"totalItemsInCart\":5,\"totalQuantityInCart\":6,\"roomRent\":0,\"subTotal\":880388,\"tax\":119135.25,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":88039,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":999523}', 1),
(17, 17, '{\"totalItemsInCart\":9,\"totalQuantityInCart\":9,\"roomRent\":0,\"subTotal\":1142664,\"tax\":137904.14999999997,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":114267,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":1280568}', 1),
(18, 18, '{\"totalItemsInCart\":2,\"totalQuantityInCart\":2,\"roomRent\":0,\"subTotal\":242220,\"tax\":45841.21,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":24222,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":288061}', 1),
(19, 19, '{\"totalItemsInCart\":2,\"totalQuantityInCart\":2,\"roomRent\":0,\"subTotal\":242220,\"tax\":45841.21,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":24222,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":288061}', 1),
(20, 20, '{\"totalItemsInCart\":1,\"totalQuantityInCart\":1,\"roomRent\":0,\"subTotal\":57848,\"tax\":12654.25,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":5785,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":70502}', 1),
(21, 21, '{\"totalItemsInCart\":3,\"totalQuantityInCart\":3,\"roomRent\":0,\"subTotal\":306782,\"tax\":49069.31,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":30678,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":355851}', 1),
(22, 22, '{\"totalItemsInCart\":1,\"totalQuantityInCart\":1,\"roomRent\":0,\"subTotal\":57848,\"tax\":12654.25,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":5785,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":70502}', 1),
(23, 23, '{\"totalItemsInCart\":2,\"totalQuantityInCart\":4,\"roomRent\":0,\"subTotal\":484440,\"tax\":91682.42,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":48444,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":576122}', 1),
(24, 24, '{\"totalItemsInCart\":2,\"totalQuantityInCart\":2,\"roomRent\":0,\"subTotal\":242220,\"tax\":45841.21,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":24222,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":288061}', 1),
(25, 25, '{\"totalItemsInCart\":2,\"totalQuantityInCart\":2,\"roomRent\":0,\"subTotal\":242220,\"tax\":45841.21,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":24222,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":288061}', 1),
(26, 26, '{\"totalItemsInCart\":2,\"totalQuantityInCart\":2,\"roomRent\":0,\"subTotal\":242220,\"tax\":45841.21,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":24222,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":288061}', 1),
(27, 27, '{\"totalItemsInCart\":2,\"totalQuantityInCart\":2,\"roomRent\":0,\"subTotal\":58348,\"tax\":16197.440000000002,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":5835,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":74545}', 1),
(28, 28, '{\"totalItemsInCart\":1,\"totalQuantityInCart\":2,\"roomRent\":0,\"subTotal\":1000,\"tax\":0,\"productDiscount\":100,\"additionalCharges\":\"[]\",\"rewardEarned\":0,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":900}', 1),
(29, 29, '{\"totalItemsInCart\":1,\"totalQuantityInCart\":1,\"roomRent\":0,\"subTotal\":57848,\"tax\":16197.440000000002,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":0,\"rewardUsed\":0,\"globalDiscount\":\"{\\\"discount\\\":\\\"10%\\\",\\\"discountValue\\\":5784.8}\",\"total\":68261}', 1),
(30, 30, '{\"totalItemsInCart\":4,\"totalQuantityInCart\":4,\"roomRent\":0,\"subTotal\":7,\"tax\":0,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":0,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":7}', 1),
(31, 31, '{\"totalItemsInCart\":2,\"totalQuantityInCart\":2,\"roomRent\":0,\"subTotal\":57851,\"tax\":16197.440000000002,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":5785,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":74048}', 1),
(32, 32, '{\"totalItemsInCart\":1,\"totalQuantityInCart\":1,\"roomRent\":0,\"subTotal\":3,\"tax\":0,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":0,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":3}', 1),
(33, 33, '{\"totalItemsInCart\":1,\"totalQuantityInCart\":1,\"roomRent\":0,\"subTotal\":57848,\"tax\":16197.440000000002,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":5785,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":74045}', 1),
(34, 34, '{\"totalItemsInCart\":3,\"totalQuantityInCart\":3,\"roomRent\":0,\"subTotal\":4,\"tax\":0,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":0,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":4}', 1),
(35, 35, '{\"totalItemsInCart\":1,\"totalQuantityInCart\":1,\"roomRent\":0,\"subTotal\":57848,\"tax\":16197.440000000002,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":5785,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":74045}', 1),
(36, 36, '{\"totalItemsInCart\":1,\"totalQuantityInCart\":1,\"roomRent\":0,\"subTotal\":57848,\"tax\":16197.440000000002,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":5785,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":74045}', 1),
(37, 37, '{\"totalItemsInCart\":1,\"totalQuantityInCart\":1,\"roomRent\":0,\"subTotal\":57848,\"tax\":16197.440000000002,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":5785,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":74045}', 1),
(38, 38, '{\"totalItemsInCart\":1,\"totalQuantityInCart\":1,\"roomRent\":0,\"subTotal\":57848,\"tax\":16197.440000000002,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":0,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":74045}', 1),
(39, 39, '{\"totalItemsInCart\":1,\"totalQuantityInCart\":1,\"roomRent\":0,\"subTotal\":57848,\"tax\":16197.440000000002,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":0,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":74045}', 1),
(40, 40, '{\"totalItemsInCart\":1,\"totalQuantityInCart\":1,\"roomRent\":0,\"subTotal\":57848,\"tax\":16197.440000000002,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":5785,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":74045}', 1),
(41, 41, '{\"totalItemsInCart\":1,\"totalQuantityInCart\":1,\"roomRent\":0,\"subTotal\":57848,\"tax\":16197.440000000002,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":5785,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":74045}', 1),
(42, 42, '{\"totalItemsInCart\":1,\"totalQuantityInCart\":2,\"roomRent\":0,\"subTotal\":115696,\"tax\":32394.880000000005,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":11570,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":148091}', 1),
(43, 43, '{\"totalItemsInCart\":1,\"totalQuantityInCart\":2,\"roomRent\":0,\"subTotal\":115696,\"tax\":32394.880000000005,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":11570,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":148091}', 1),
(44, 44, '{\"totalItemsInCart\":1,\"totalQuantityInCart\":3,\"roomRent\":0,\"subTotal\":173544,\"tax\":48592.32000000001,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":17354,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":222136}', 1),
(45, 45, '{\"totalItemsInCart\":1,\"totalQuantityInCart\":2,\"roomRent\":0,\"subTotal\":115696,\"tax\":32394.880000000005,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":11570,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":148091}', 1),
(46, 46, '{\"totalItemsInCart\":1,\"totalQuantityInCart\":1,\"roomRent\":0,\"subTotal\":57848,\"tax\":16197.440000000002,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":5785,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":74045}', 1),
(47, 47, '{\"totalItemsInCart\":1,\"totalQuantityInCart\":1,\"roomRent\":0,\"subTotal\":57848,\"tax\":16197.440000000002,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":5785,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":74045}', 1),
(48, 48, '{\"totalItemsInCart\":7,\"totalQuantityInCart\":7,\"roomRent\":0,\"subTotal\":58356,\"tax\":16197.440000000002,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":5835,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":74553}', 1),
(49, 49, '{\"totalItemsInCart\":7,\"totalQuantityInCart\":7,\"roomRent\":0,\"subTotal\":58356,\"tax\":16197.440000000002,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":5835,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":74553}', 1),
(50, 50, '{\"totalItemsInCart\":7,\"totalQuantityInCart\":7,\"roomRent\":0,\"subTotal\":58356,\"tax\":16197.440000000002,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":5835,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":74553}', 1),
(51, 51, '{\"totalItemsInCart\":7,\"totalQuantityInCart\":7,\"roomRent\":0,\"subTotal\":58356,\"tax\":16197.440000000002,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":5835,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":74553}', 1),
(52, 52, '{\"totalItemsInCart\":1,\"totalQuantityInCart\":1,\"roomRent\":0,\"subTotal\":57848,\"tax\":16197.440000000002,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":0,\"rewardUsed\":\"0\",\"globalDiscount\":\"{\\\"discount\\\":\\\"10%\\\",\\\"discountValue\\\":5784.8}\",\"total\":68261}', 1),
(53, 53, '{\"totalItemsInCart\":1,\"totalQuantityInCart\":1,\"roomRent\":0,\"subTotal\":57848,\"tax\":16197.440000000002,\"productDiscount\":11569.6,\"additionalCharges\":\"[]\",\"rewardEarned\":0,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":62476}', 1),
(54, 54, '{\"totalItemsInCart\":1,\"totalQuantityInCart\":1,\"roomRent\":0,\"subTotal\":1,\"tax\":\"0.00\",\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":0,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":1}', 1),
(55, 55, '{\"totalItemsInCart\":6,\"totalQuantityInCart\":6,\"roomRent\":0,\"subTotal\":578029,\"tax\":\"68162.75\",\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":57802,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":578029}', 1),
(56, 62, '{\"totalItemsInCart\":0,\"totalQuantityInCart\":0,\"roomRent\":0,\"subTotal\":0,\"tax\":0,\"productDiscount\":0,\"rewardEarned\":0,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":0}', 1),
(57, 63, '{\"totalItemsInCart\":0,\"totalQuantityInCart\":0,\"roomRent\":0,\"subTotal\":0,\"tax\":0,\"productDiscount\":0,\"rewardEarned\":0,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":0}', 1),
(58, 64, '{\"totalItemsInCart\":0,\"totalQuantityInCart\":0,\"roomRent\":0,\"subTotal\":0,\"tax\":0,\"productDiscount\":0,\"rewardEarned\":0,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":0}', 1),
(59, 65, '{\"totalItemsInCart\":0,\"totalQuantityInCart\":0,\"roomRent\":0,\"subTotal\":0,\"tax\":0,\"productDiscount\":0,\"rewardEarned\":0,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":0}', 1),
(60, 66, '{\"totalItemsInCart\":0,\"totalQuantityInCart\":0,\"roomRent\":0,\"subTotal\":0,\"tax\":0,\"productDiscount\":0,\"rewardEarned\":0,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":0}', 1),
(61, 67, '{\"totalItemsInCart\":0,\"totalQuantityInCart\":0,\"roomRent\":0,\"subTotal\":0,\"tax\":0,\"productDiscount\":0,\"rewardEarned\":0,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":0}', 1),
(62, 68, '{\"totalItemsInCart\":0,\"totalQuantityInCart\":0,\"roomRent\":0,\"subTotal\":0,\"tax\":0,\"productDiscount\":0,\"rewardEarned\":0,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":0}', 1),
(63, 69, '{\"totalItemsInCart\":0,\"totalQuantityInCart\":0,\"roomRent\":0,\"subTotal\":0,\"tax\":0,\"productDiscount\":0,\"rewardEarned\":0,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":0}', 1),
(64, 70, '{\"totalItemsInCart\":3,\"totalQuantityInCart\":3,\"roomRent\":0,\"subTotal\":5,\"tax\":0,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":0,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":5}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `pageId` int(11) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `seo` varchar(255) NOT NULL,
  `metaTitle` varchar(255) NOT NULL,
  `metaKeyword` varchar(255) NOT NULL,
  `metaDescription` varchar(255) NOT NULL,
  `shortDescription` text NOT NULL,
  `description` mediumtext NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`pageId`, `heading`, `seo`, `metaTitle`, `metaKeyword`, `metaDescription`, `shortDescription`, `description`, `image`, `status`) VALUES
(1, 'Terms & conditions', 'terms--conditions', 'Term Of Use', 'Term Of Use', 'Term Of Use', '<h2>&nbsp;</h2>\r\n\r\n<h2>Definition and Usage</h2>\r\n\r\n<p>The str_replace() function replaces some characters with some other characters in a string.</p>\r\n\r\n<p>This function works by the following rules:</p>\r\n\r\n<p>{{$controller::moduleShortCode(14)}}</p>\r\n\r\n<ul>\r\n	<li>If the string to be searched is an array, it returns an array</li>\r\n	<li>If the string to be searched is an array, find and replace is performed with every array element</li>\r\n	<li>If both find and replace are arrays, and replace has fewer elements than find, an empty string will be used as replace</li>\r\n	<li>If find is an array and replace is a string, the replace string will be used for every find value</li>\r\n</ul>\r\n\r\n<p><b>Note:&nbsp;</b>This function is case-sensitive. Use the&nbsp;<a href=\"https://www.w3schools.com/php/func_string_str_ireplace.asp\">str_ireplace()</a>&nbsp;function to perform a case-insensitive search.</p>\r\n\r\n<p><b>Note:&nbsp;</b>This function is binary-safe.</p>\r\n\r\n<p>{{$controller::moduleShortCode(13)}}</p>\r\n', '<p>Term Of Use</p>\r\n', 'public/assets/uploads/484219044.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `paymentId` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `sortOrder` int(11) NOT NULL,
  `softDelete` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`paymentId`, `name`, `sortOrder`, `softDelete`, `status`) VALUES
(1, 'Credit', 7, 0, 1),
(2, 'Multiple', 5, 0, 1),
(3, 'Return', 6, 0, 1),
(4, 'Debit Card', 1, 0, 1),
(5, 'Credit Card', 2, 0, 1),
(6, 'Paytm', 3, 0, 1),
(7, 'UPI', 4, 0, 1),
(8, 'Cash', 0, 0, 1),
(9, 'Wallet', 8, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `popup_message`
--

CREATE TABLE `popup_message` (
  `popupMessageId` int(11) NOT NULL,
  `heading` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `userId` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `popup_message`
--

INSERT INTO `popup_message` (`popupMessageId`, `heading`, `message`, `userId`, `status`) VALUES
(1, 'SMP 35 Protein', '<p>hjgkghj</p>\r\n', '1', 1),
(2, 'SMP 35 Protein', '<p>hjgkghj</p>\r\n', '2', 1),
(3, 'hjkgjhk', '<p>hjkjhkhj</p>\r\n', '2', 1),
(4, 'SMP 35 Protein', '<p>asdas</p>\r\n', '2', 1),
(5, 'SMP 35 Protein', '<p>sfasd</p>\r\n', '2', 1),
(6, 'SMP 35 Protein', '<p>fghfgh</p>\r\n', '2', 1),
(7, 'ghjghj', '<p>ghjfghj</p>\r\n', '2', 1),
(8, 'ghjf', '<p>gfjh</p>\r\n', '2', 1),
(9, 'SMP 35 Protein', '<p>SMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 Protein</p>\r\n', '6', 1),
(10, 'SMP 35 Protein', '<p>SMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 Protein</p>\r\n', '6', 1),
(11, 'SMP 35 Protein', '<p>SMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 Protein</p>\r\n', '6', 1),
(12, 'SMP 35 Protein', '<p>SMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 Protein</p>\r\n', '6', 1);

-- --------------------------------------------------------

--
-- Table structure for table `popup_message_list`
--

CREATE TABLE `popup_message_list` (
  `popupMessageListId` int(11) NOT NULL,
  `heading` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `userId` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `viewed` int(11) NOT NULL DEFAULT 0,
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `popup_message_list`
--

INSERT INTO `popup_message_list` (`popupMessageListId`, `heading`, `message`, `userId`, `status`, `viewed`, `dateAdded`) VALUES
(1, '0', '<p>fghfgh</p>\r\n', 2, 1, 1, '2024-04-18 10:08:23'),
(2, 'ghjf', '<p>gfjh</p>\r\n', 1, 1, 1, '2024-04-18 10:11:04'),
(3, 'SMP 35 Protein', '<p>SMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 Protein</p>\r\n', 8, 1, 0, '2024-04-18 16:42:07'),
(4, 'SMP 35 Protein', '<p>SMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 Protein</p>\r\n', 8, 1, 0, '2024-04-18 16:44:37'),
(5, 'SMP 35 Protein', '<p>SMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 Protein</p>\r\n', 8, 1, 0, '2024-04-18 16:44:57');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productId` int(11) NOT NULL,
  `heading` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `barcode` int(11) NOT NULL,
  `barcodeType` varchar(20) NOT NULL,
  `cost` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `percent` float(11,2) NOT NULL,
  `manufacturerId` int(11) NOT NULL DEFAULT 0,
  `categoryId` int(11) NOT NULL DEFAULT 0,
  `vendorId` int(11) NOT NULL DEFAULT 0,
  `unitId` int(11) NOT NULL DEFAULT 0,
  `taxId` int(11) NOT NULL DEFAULT 0,
  `taxType` varchar(20) NOT NULL DEFAULT 'Exclusive',
  `hsnCode` varchar(30) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `subtract` int(11) NOT NULL DEFAULT 1,
  `changePriceDuringBilling` int(11) NOT NULL DEFAULT 0,
  `image` varchar(255) DEFAULT NULL,
  `relatedImage` text NOT NULL,
  `showInPos` int(11) NOT NULL DEFAULT 1,
  `productType` varchar(10) NOT NULL,
  `softDelete` int(11) NOT NULL DEFAULT 0,
  `storeId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `updatedBy` int(11) NOT NULL,
  `insertedBy` int(11) NOT NULL,
  `dateUpdated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 1,
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productId`, `heading`, `model`, `barcode`, `barcodeType`, `cost`, `price`, `percent`, `manufacturerId`, `categoryId`, `vendorId`, `unitId`, `taxId`, `taxType`, `hsnCode`, `quantity`, `subtract`, `changePriceDuringBilling`, `image`, `relatedImage`, `showInPos`, `productType`, `softDelete`, `storeId`, `userId`, `updatedBy`, `insertedBy`, `dateUpdated`, `status`, `dateAdded`) VALUES
(1, 'Mrs. Kiara Terry V', 'H3x4hrTsyz', 75927996, '', 54689, 109378, 0.00, 1, 1, 0, 0, 1, 'Exclusive', '456987', 37, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:28:46', 1, '2024-03-31 16:26:10'),
(2, 'Oscar Quitzon', 'NyynIlInx8', 90188470, '', 58016, 116032, 0.00, 1, 1, 0, 0, 4, 'Exclusive', '', 34, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:28:46', 1, '2024-03-31 16:26:10'),
(3, 'Sandra Quigley', '6EyDYMD3pg', 19700880, '', 73039, 146078, 0.00, 1, 1, 0, 0, 1, 'Exclusive', '', 40, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:28:46', 1, '2024-03-31 16:26:11'),
(4, 'Camren Murray', 'dOeXtkoZOO', 82528466, '', 20089, 40178, 0.00, 1, 1, 0, 0, 2, 'Exclusive', '', 64, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:28:46', 1, '2024-03-31 16:26:11'),
(5, 'Connie Hagenes', 'CrA5qgIR8G', 89971679, '', 55769, 111538, 0.00, 1, 1, 0, 0, 1, 'Exclusive', '', 22, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:28:46', 1, '2024-03-31 16:26:11'),
(6, 'Jacey Sporer', '3w4LPRirQc', 59981534, '', 99152, 198304, 0.00, 1, 1, 0, 0, 4, 'Exclusive', '', 51, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:28:46', 1, '2024-03-31 16:26:11'),
(7, 'Ms. Eldora Stehr', 'GqSDRV2xlA', 45972043, '', 62399, 124798, 0.00, 1, 1, 0, 0, 1, 'Exclusive', '', 79, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:28:46', 1, '2024-03-31 16:26:11'),
(8, 'Dr. Laurel Goyette', 'gm2mUyq4vV', 26471494, '', 74194, 148388, 0.00, 1, 1, 0, 0, 5, 'Exclusive', '', 86, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:28:46', 1, '2024-03-31 16:26:12'),
(9, 'Julie Deckow', 'Np9R8trWl5', 15887785, '', 72087, 144174, 0.00, 1, 1, 0, 0, 2, 'Exclusive', '', 54, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:28:46', 1, '2024-03-31 16:26:12'),
(10, 'Margarette Frami', '2GwyuRXZgo', 87915669, '', 77011, 154022, 0.00, 1, 1, 0, 0, 4, 'Exclusive', '', 86, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:28:46', 1, '2024-03-31 16:26:12'),
(11, 'Alene Cummings', 'ZemyGhf1GB', 43466861, '', 51039, 102078, 0.00, 1, 1, 0, 0, 4, 'Exclusive', '', 15, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:28:46', 1, '2024-03-31 16:26:12'),
(12, 'Vena Wilkinson', 'WTxmUYcZrl', 31599466, '', 84148, 168296, 0.00, 1, 1, 0, 0, 4, 'Exclusive', '', 90, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:28:46', 1, '2024-03-31 16:26:12'),
(13, 'Jasen Wuckert', 'vmEdULa7WN', 20592623, '', 95222, 190444, 0.00, 1, 1, 0, 0, 5, 'Exclusive', '', 47, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:28:46', 1, '2024-03-31 16:26:13'),
(14, 'Rex Lehner', 'Q4cK7F2FWU', 59490595, '', 51833, 103666, 0.00, 1, 1, 0, 0, 4, 'Exclusive', '', 76, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:28:46', 1, '2024-03-31 16:26:13'),
(15, 'Ms. Alysson Thompson PhD', 'YO1rEK9TFB', 94786476, '', 51943, 103886, 0.00, 1, 1, 0, 0, 2, 'Exclusive', '', 42, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:28:46', 1, '2024-03-31 16:26:13'),
(16, 'Shannon Williamson', 'IUyndzd6Uf', 37114935, '', 26979, 53958, 0.00, 1, 1, 0, 0, 1, 'Exclusive', '', 42, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:28:46', 1, '2024-03-31 16:26:13'),
(17, 'Tavares Kris', 'sm9sKi5xcX', 40274330, '', 36166, 72332, 0.00, 1, 1, 0, 0, 3, 'Exclusive', '', 22, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:28:46', 1, '2024-03-31 16:26:13'),
(18, 'Dominic Huels', 'NqCpDCxFHG', 13752380, '', 33633, 67266, 0.00, 1, 1, 0, 0, 4, 'Exclusive', '', 59, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:28:46', 1, '2024-03-31 16:26:14'),
(19, 'Rashawn Abbott', 'gbunjAghF2', 83624681, '', 49993, 99986, 0.00, 1, 1, 0, 0, 3, 'Exclusive', '', 68, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:28:46', 1, '2024-03-31 16:26:14'),
(20, 'Prof. Dawson Schmeler III', '7LyYSB5vyq', 18734193, '', 19302, 38604, 0.00, 1, 1, 0, 0, 5, 'Exclusive', '', 34, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:28:46', 1, '2024-03-31 16:26:14'),
(21, 'Judson Ankunding I', 'bGcGZswCPm', 71837871, '', 21060, 42120, 0.00, 1, 1, 0, 0, 1, 'Exclusive', '', 95, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:28:46', 1, '2024-03-31 16:26:14'),
(22, 'Aric Schinner', 'mvDjp8D7gf', 18037857, '', 44498, 88996, 0.00, 1, 1, 0, 0, 2, 'Exclusive', '', 87, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:28:46', 1, '2024-03-31 16:26:14'),
(23, 'Prof. Taylor Bayer DDS', 'F6mAvzpysj', 52007728, '', 40504, 81008, 0.00, 1, 1, 0, 0, 5, 'Exclusive', '', 75, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:28:46', 1, '2024-03-31 16:26:14'),
(24, 'Dr. Manuel Cartwright', 'P3EG2sZ1pP', 46575751, '', 59031, 118062, 0.00, 1, 1, 0, 0, 1, 'Exclusive', '', 17, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:28:46', 1, '2024-03-31 16:26:15'),
(25, 'Dr. Garnet Weber', 'JLNbAZyzKs', 44415819, '', 73650, 147300, 0.00, 1, 1, 0, 0, 2, 'Exclusive', '', 41, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:28:46', 1, '2024-03-31 16:26:15'),
(26, 'Kenyon Zemlak', 'wV73ywHM7R', 86466874, '', 37207, 74414, 0.00, 1, 1, 0, 0, 4, 'Exclusive', '', 46, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:28:46', 1, '2024-03-31 16:26:15'),
(27, 'Alexandro Baumbach', '5wijfL7GBn', 45004320, '', 74514, 149028, 0.00, 1, 1, 0, 0, 4, 'Exclusive', '', 19, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:28:46', 1, '2024-03-31 16:26:15'),
(28, 'Gerhard Mueller', 'zNMAmVzN01', 21437782, '', 24253, 48506, 0.00, 1, 1, 0, 0, 2, 'Exclusive', '', 76, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:28:46', 1, '2024-03-31 16:26:15'),
(29, 'Destini Paucek', 'Davvp3mUTX', 32675878, '', 82993, 165986, 0.00, 1, 1, 0, 0, 6, 'Exclusive', '', 83, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:28:46', 1, '2024-03-31 16:26:15'),
(30, 'Hassie Tremblay III', 'qUCmvEcS0J', 28790554, '', 19650, 39300, 0.00, 1, 1, 0, 0, 1, 'Exclusive', '', 77, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:28:46', 1, '2024-03-31 16:26:16'),
(31, 'Pedro Greenfelder', 'b5dXiuiiBC', 97222801, '', 88737, 177474, 0.00, 1, 1, 0, 0, 1, 'Exclusive', '', 15, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:28:46', 1, '2024-03-31 16:26:16'),
(32, 'Jayne Flatley', '8Il3iAihX5', 86408733, '', 26005, 52010, 0.00, 1, 1, 0, 0, 4, 'Exclusive', '', 75, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:28:46', 1, '2024-03-31 16:26:16'),
(33, 'Leonor Conroy', 'zDQlYul91r', 75459366, '', 35468, 70936, 0.00, 1, 1, 0, 0, 1, 'Exclusive', '', 17, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:28:46', 1, '2024-03-31 16:26:16'),
(34, 'Prof. Bartholome Altenwerth', 'wwOrzczK0a', 82980324, '', 43648, 87296, 0.00, 1, 1, 0, 0, 4, 'Exclusive', '', 90, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:28:46', 1, '2024-03-31 16:26:16'),
(35, 'Clay Prosacco', 'ClCy2qug3y', 42856274, '', 13303, 26606, 0.00, 1, 1, 0, 0, 5, 'Exclusive', '', 18, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:28:46', 1, '2024-03-31 16:26:16'),
(36, 'Assunta Heller IV', 'iTjViRkzis', 31712293, '', 95864, 191728, 0.00, 1, 1, 0, 0, 3, 'Exclusive', '', 38, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:28:46', 1, '2024-03-31 16:26:17'),
(37, 'Walker Buckridge', 'VBZ35s3RXi', 37889386, '', 88520, 177040, 0.00, 1, 1, 0, 0, 1, 'Exclusive', '', 28, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:28:46', 1, '2024-03-31 16:26:17'),
(38, 'Mr. Donato McClure II', 'EE1J5lkjKx', 92166634, '', 32796, 65592, 0.00, 1, 1, 0, 0, 1, 'Exclusive', '', 15, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:28:46', 1, '2024-03-31 16:26:17'),
(39, 'Petra Sawayn', 'HlV4Up9b4w', 56139865, '', 62555, 125110, 0.00, 1, 1, 0, 0, 3, 'Exclusive', '', 34, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:28:46', 1, '2024-03-31 16:26:17'),
(40, 'Ibrahim Koss', 'o9goCd5p1G', 91896284, '', 12019, 24038, 0.00, 1, 1, 0, 0, 1, 'Exclusive', '', 87, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:28:46', 1, '2024-03-31 16:26:17'),
(41, 'Danial Yost', 'Zl2V62FiUb', 76937111, '', 28428, 56856, 0.00, 1, 1, 0, 0, 6, 'Exclusive', '', 56, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:28:46', 1, '2024-03-31 16:26:18'),
(42, 'Prof. Alysha Wisozk', 'n6zhAHvQKe', 51807323, '', 59300, 118600, 0.00, 1, 1, 0, 0, 3, 'Exclusive', '', 93, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:28:46', 1, '2024-03-31 16:26:18'),
(43, 'Isom McGlynn Sr.', '2vOznkvLti', 66415470, '', 23057, 46114, 0.00, 1, 1, 0, 0, 6, 'Exclusive', '', 71, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:28:46', 1, '2024-03-31 16:26:18'),
(44, 'Martine McClure', '34aglzTeaY', 91652201, '', 66576, 133152, 0.00, 1, 1, 0, 0, 5, 'Exclusive', '', 73, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:28:46', 1, '2024-03-31 16:26:18'),
(45, 'Furman Boyle', '6Dst5yL3mP', 30724157, '', 31947, 63894, 0.00, 1, 1, 0, 0, 5, 'Exclusive', '', 15, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:28:46', 1, '2024-03-31 16:26:18'),
(46, 'Dr. Dagmar Bahringer PhD', 'oxpcRwQzIF', 80814465, '', 71243, 142486, 0.00, 1, 1, 0, 0, 3, 'Exclusive', '', 12, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:28:46', 1, '2024-03-31 16:26:19'),
(47, 'Kale Sauer', '7Xk9ie4k7D', 61734311, '', 16248, 32496, 0.00, 1, 1, 0, 0, 3, 'Exclusive', '', 52, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:28:46', 1, '2024-03-31 16:26:19'),
(48, 'Felipa Nolan', 'A7e77n6wqz', 51930282, '', 76073, 152146, 0.00, 1, 1, 0, 0, 5, 'Exclusive', '', 28, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:28:46', 1, '2024-03-31 16:26:19'),
(49, 'Rachelle O\'Conner', 'ECf8umrx0R', 14689212, '', 76407, 152814, 0.00, 1, 1, 0, 0, 1, 'Exclusive', '', 19, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:28:46', 1, '2024-03-31 16:26:19'),
(50, 'Ms. Eve O\'Hara', 'NizFLdPts5', 15431119, '', 40725, 81450, 0.00, 1, 1, 0, 0, 5, 'Exclusive', '', 24, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:28:46', 1, '2024-03-31 16:26:20'),
(51, 'Prof. Kailey Bailey DDS', 'kbWvpgwtZX', 22271066, '', 82096, 164192, 0.00, 2, 2, 0, 0, 4, 'Exclusive', '', 49, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:29:00', 1, '2024-03-31 16:26:20'),
(52, 'Jamil Barrows', 'tSLVUjlPpP', 52227351, '', 99569, 199138, 0.00, 2, 2, 0, 0, 4, 'Exclusive', '', 31, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:29:00', 1, '2024-03-31 16:26:20'),
(53, 'Alberto Feeney', 'DfOYGQK3O5', 79066005, '', 97784, 195568, 0.00, 2, 2, 0, 0, 2, 'Exclusive', '', 93, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:29:00', 1, '2024-03-31 16:26:20'),
(54, 'Mr. Travis Kovacek Sr.', '3PrY7722i3', 14081152, '', 29404, 58808, 0.00, 2, 2, 0, 0, 1, 'Exclusive', '', 20, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:29:00', 1, '2024-03-31 16:26:20'),
(55, 'Heidi Steuber', 'KqqV4eQDEn', 20287219, '', 65701, 131402, 0.00, 2, 2, 0, 0, 6, 'Exclusive', '', 34, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:29:00', 1, '2024-03-31 16:26:21'),
(56, 'Destinee Zulauf', 'ptBnPojWc4', 90874461, '', 97358, 194716, 0.00, 2, 2, 0, 0, 2, 'Exclusive', '', 49, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:29:00', 1, '2024-03-31 16:26:21'),
(57, 'Lea Pfannerstill', 'GIdQR0VFEQ', 59098820, '', 85399, 170798, 0.00, 2, 2, 0, 0, 1, 'Exclusive', '', 57, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:29:00', 1, '2024-03-31 16:26:21'),
(58, 'Coralie Ullrich', '9uifoxxjUt', 61911501, '', 21269, 42538, 0.00, 2, 2, 0, 0, 1, 'Exclusive', '', 56, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:29:00', 1, '2024-03-31 16:26:21'),
(59, 'Dr. Kevon Frami MD', 'cWOqCz35KO', 29488801, '', 52979, 105958, 0.00, 2, 2, 0, 0, 6, 'Exclusive', '', 73, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:29:00', 1, '2024-03-31 16:26:21'),
(60, 'Naomie Hill Sr.', 'rVyQUcJqcW', 43210110, '', 87848, 175696, 0.00, 2, 2, 0, 0, 6, 'Exclusive', '', 92, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:29:00', 1, '2024-03-31 16:26:21'),
(61, 'Billie Gutkowski', '4SuGA8MbbD', 50342040, '', 79446, 158892, 0.00, 2, 2, 0, 0, 6, 'Exclusive', '', 56, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:29:00', 1, '2024-03-31 16:26:22'),
(62, 'Buck Howe', '6XWzkOlMKI', 49180812, '', 31513, 63026, 0.00, 2, 2, 0, 0, 5, 'Exclusive', '', 33, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:29:00', 1, '2024-03-31 16:26:22'),
(63, 'Alana Nitzsche', 'foNozRRG52', 58162953, '', 38579, 77158, 0.00, 2, 2, 0, 0, 1, 'Exclusive', '', 45, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:29:00', 1, '2024-03-31 16:26:22'),
(64, 'Adrain Schmitt MD', 'QRMDLfig7O', 30768930, '', 96385, 192770, 0.00, 2, 2, 0, 0, 4, 'Exclusive', '', 66, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:29:00', 1, '2024-03-31 16:26:22'),
(65, 'Lillie Muller', '8xZW95nc5M', 44944936, '', 67358, 134716, 0.00, 2, 2, 0, 0, 2, 'Exclusive', '', 53, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:29:00', 1, '2024-03-31 16:26:22'),
(66, 'Cathy Kutch', '9K4ffs6pAU', 15395725, '', 35745, 71490, 0.00, 2, 2, 0, 0, 6, 'Exclusive', '', 35, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:29:00', 1, '2024-03-31 16:26:23'),
(67, 'Peggie Raynor', '3zsPIwfw36', 72466524, '', 74660, 149320, 0.00, 2, 2, 0, 0, 6, 'Exclusive', '', 22, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:29:00', 1, '2024-03-31 16:26:23'),
(68, 'Deron Windler', '86TaS7B3eQ', 36462366, '', 15716, 31432, 0.00, 2, 2, 0, 0, 1, 'Exclusive', '', 92, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:29:00', 1, '2024-03-31 16:26:23'),
(69, 'Rhianna Kovacek', 'bQMBgtImdm', 90981422, '', 13157, 26314, 0.00, 2, 2, 0, 0, 2, 'Exclusive', '', 79, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:29:00', 1, '2024-03-31 16:26:23'),
(70, 'Annabel Hickle', 'o8jqdXuYuY', 98321007, '', 75377, 150754, 0.00, 2, 2, 0, 0, 5, 'Exclusive', '', 32, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:29:00', 1, '2024-03-31 16:26:23'),
(71, 'Wilfredo Hyatt', '8l0tTWlCIK', 20037374, '', 44292, 88584, 0.00, 2, 2, 0, 0, 4, 'Exclusive', '', 96, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:29:00', 1, '2024-03-31 16:26:24'),
(72, 'Maryjane Dooley', 'YJpvDYx5s6', 52662065, '', 96056, 192112, 0.00, 2, 2, 0, 0, 1, 'Exclusive', '', 61, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:29:00', 1, '2024-03-31 16:26:24'),
(73, 'Nayeli Raynor', 'PdHY8J7k1d', 54642262, '', 80406, 160812, 0.00, 2, 2, 0, 0, 1, 'Exclusive', '', 34, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:29:00', 1, '2024-03-31 16:26:24'),
(74, 'Dustin Wehner', '1oenpoNjFc', 80492721, '', 18379, 36758, 0.00, 2, 2, 0, 0, 6, 'Exclusive', '', 51, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:29:00', 1, '2024-03-31 16:26:24'),
(75, 'Malika Bogan', 'fmG1yH2KgZ', 92343230, '', 58382, 116764, 0.00, 2, 2, 0, 0, 6, 'Exclusive', '', 87, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:29:00', 1, '2024-03-31 16:26:24'),
(76, 'Bobby Jast', 'ie40ESV2zg', 30378500, '', 94767, 189534, 0.00, 2, 2, 0, 0, 4, 'Exclusive', '', 32, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-10-20 17:13:10', 1, '2024-03-31 16:26:25'),
(77, 'Dr. Theron Yost II', 'P6cn7vsmUo', 63585421, '', 74557, 149114, 0.00, 2, 2, 0, 0, 1, 'Exclusive', '', 73, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-10-20 17:13:10', 1, '2024-03-31 16:26:25'),
(78, 'Dr. Kenna Cremin IV', 'HEHTkTH3Px', 78050597, '', 99784, 199568, 0.00, 2, 2, 0, 0, 3, 'Exclusive', '', 84, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:29:00', 1, '2024-03-31 16:26:25'),
(79, 'Micheal Kerluke IV', 'RgYwH1hWdg', 32484560, '', 29439, 58878, 0.00, 2, 2, 0, 0, 3, 'Exclusive', '', 23, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:29:00', 1, '2024-03-31 16:26:25'),
(80, 'Justus Stroman MD', 'stvHd5Syx2', 41524268, '', 62716, 125432, 0.00, 2, 2, 0, 0, 6, 'Exclusive', '', 50, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:29:00', 1, '2024-03-31 16:26:26'),
(81, 'Alicia Mosciski', 'F1wxRsSMiA', 14980483, '', 48415, 96830, 0.00, 2, 2, 0, 0, 4, 'Exclusive', '', 84, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:29:00', 1, '2024-03-31 16:26:26'),
(82, 'Watson Koelpin', 'WTOrKk97ka', 72308943, '', 30512, 61024, 0.00, 2, 2, 0, 0, 6, 'Exclusive', '', 28, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:29:00', 1, '2024-03-31 16:26:26'),
(83, 'Dr. Maximus O\'Kon', 'VctMlkKVZd', 44309514, '', 36622, 73244, 0.00, 2, 2, 0, 0, 1, 'Exclusive', '', 38, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:29:00', 1, '2024-03-31 16:26:26'),
(84, 'Miss Alexandra Schumm DDS', '9m4wihFuGj', 18172731, '', 85629, 171258, 0.00, 2, 2, 0, 0, 5, 'Exclusive', '', 60, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:29:00', 1, '2024-03-31 16:26:26'),
(85, 'Mrs. Coralie Deckow', 'tmkCH2UbOZ', 56941793, '', 98488, 196976, 0.00, 2, 2, 0, 0, 3, 'Exclusive', '', 66, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:29:00', 1, '2024-03-31 16:26:27'),
(86, 'Dr. Nils O\'Hara', 'uGC5nj5wFD', 63589949, '', 31887, 63774, 0.00, 2, 2, 0, 0, 3, 'Exclusive', '', 30, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:29:00', 1, '2024-03-31 16:26:27'),
(87, 'Dr. Leanna O\'Conner', 'glHBtmrjm1', 80244841, '', 86668, 173336, 0.00, 2, 2, 0, 0, 2, 'Exclusive', '', 72, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:29:00', 1, '2024-03-31 16:26:27'),
(88, 'Lily Friesen', 'EblwIOsmA0', 78163971, '', 35556, 71112, 0.00, 2, 2, 0, 0, 1, 'Exclusive', '', 58, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:29:00', 1, '2024-03-31 16:26:27'),
(89, 'Daphne Sanford', 'pHxBuTLVSi', 94431310, '', 18599, 37198, 0.00, 2, 2, 0, 0, 2, 'Exclusive', '', 28, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:29:00', 1, '2024-03-31 16:26:27'),
(90, 'Mr. Drake Adams V', 'RPREOvhdfV', 53681511, '', 51639, 103278, 0.00, 2, 2, 0, 0, 4, 'Exclusive', '', 49, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:29:00', 1, '2024-03-31 16:26:27'),
(91, 'Destini Dach III', 'aMGhdlOf5x', 13338465, '', 41190, 82380, 0.00, 2, 2, 0, 0, 1, 'Exclusive', '', 89, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-10-20 17:13:10', 1, '2024-03-31 16:26:28'),
(92, 'Jordi Gottlieb', '4SEmGmB2V0', 91524823, '', 68479, 136958, 0.00, 2, 2, 0, 0, 2, 'Exclusive', '', 13, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:29:00', 1, '2024-03-31 16:26:28'),
(93, 'Therese Hauck', 'OA8reSsZWg', 34167244, '', 75497, 150994, 0.00, 2, 2, 0, 0, 4, 'Exclusive', '', 85, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:29:00', 1, '2024-03-31 16:26:28'),
(94, 'Dina Bogan', 'iUuzL6troJ', 97953843, '', 66236, 132472, 0.00, 2, 2, 0, 0, 5, 'Exclusive', '', 16, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:29:00', 1, '2024-03-31 16:26:28'),
(95, 'Milford Herman', '5K1IvC7bgF', 84439094, '', 78498, 156996, 0.00, 2, 2, 0, 0, 4, 'Exclusive', '', 27, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-10-20 17:13:10', 1, '2024-03-31 16:26:29'),
(96, 'Tressa Wisozk', 'YDJ5ntBuK1', 78676059, '', 74805, 149610, 0.00, 2, 2, 0, 0, 6, 'Exclusive', '', 88, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:29:00', 1, '2024-03-31 16:26:29'),
(97, 'Dr. Estell Cummings IV', 'Fwh6tO8IA6', 94433959, '', 73595, 147190, 0.00, 2, 2, 0, 0, 2, 'Exclusive', '', 48, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:29:00', 1, '2024-03-31 16:26:29'),
(98, 'Jaida Grimes', 'lUnUIsoJZX', 88180650, '', 32281, 64562, 0.00, 2, 2, 0, 0, 2, 'Exclusive', '', 55, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:29:00', 1, '2024-03-31 16:26:29'),
(99, 'Angel Hills', 'q8qHbH3aUV', 19919785, '', 92186, 184372, 0.00, 2, 2, 0, 0, 4, 'Exclusive', '', 86, 1, 0, NULL, '', 1, 'Product', 0, 1, 2, 0, 2, '2024-08-26 12:29:00', 1, '2024-03-31 16:26:29'),
(100, 'Eldora Hackett III', 'EtfkfhSgZJ', 98321009, '', 1000, 57848, 0.00, 2, 2, 0, 0, 5, 'Exclusive', '', 82, 0, 1, NULL, '\"\"', 1, 'Product', 0, 1, 1, 1, 2, '2024-10-02 11:13:40', 1, '2024-03-31 16:26:30'),
(101, 'SMP 35 Protein', '', 98321011, '', 10, 20, 100.00, 2, 2, 0, 0, 3, 'Exclusive', '', 0, 0, 0, 'public/assets/uploads/ship_shop_default/252036007.jpeg', '[\"public\\/assets\\/uploads\\/ship_shop_default\\/282712764.jpeg\",\"public\\/assets\\/uploads\\/ship_shop_default\\/305529164.jpeg\",\"public\\/assets\\/uploads\\/ship_shop_default\\/801164683.jpeg\",\"public\\/assets\\/uploads\\/ship_shop_default\\/744894189.jpeg\",\"public\\/assets\\/uploads\\/ship_shop_default\\/411498000.jpeg\"]', 1, 'Product', 0, 1, 1, 1, 1, '2024-08-26 12:29:00', 1, '2024-04-13 11:46:28'),
(102, 'Hotel Room 1', 'Hotel', 98321014, '', 500, 500, 0.00, 2, 2, 0, 0, 0, 'Exclusive', '', 998, 0, 0, 'public/assets/uploads/ship_shop_pos_default/693478300.jpeg', '[\"public\\/assets\\/uploads\\/ship_shop_pos_default\\/419239602.jpeg\"]', 1, 'Hotel', 0, 1, 1, 1, 1, '2024-08-26 12:29:00', 1, '2024-07-02 11:43:02'),
(103, 'Hotel Room 2', 'Hotel', 98321014, '', 500, 500, 0.00, 2, 2, 0, 0, 0, 'Exclusive', '', 995, 0, 0, 'public/assets/uploads/ship_shop_pos_default/693478300.jpeg', '[\"public\\/assets\\/uploads\\/ship_shop_pos_default\\/419239602.jpeg\"]', 1, 'Hotel', 0, 1, 1, 1, 1, '2024-10-02 10:24:01', 1, '2024-07-02 11:43:02'),
(104, 'Hotel Room 3', 'Hotel', 98321014, '', 500, 500, 0.00, 2, 2, 0, 0, 0, 'Exclusive', '', 1000, 0, 0, 'public/assets/uploads/ship_shop_pos_default/693478300.jpeg', '[\"public\\/assets\\/uploads\\/ship_shop_pos_default\\/419239602.jpeg\"]', 1, 'Hotel', 0, 1, 1, 1, 1, '2024-08-26 12:29:00', 1, '2024-07-02 11:43:02'),
(105, 'aerare', 'sdgagfs', 98321015, '', 23423, 2322, 0.00, 2, 2, 0, 0, 0, 'Exclusive', 'sdfsd', 1, 1, 0, NULL, '', 1, '', 0, 1, 1, 0, 1, '2024-08-26 12:29:00', 1, '2024-08-20 11:09:57'),
(106, 'asdasd', 'asdasda', 98321016, '', 1, 1, 0.00, 2, 2, 1, 0, 0, 'Exclusive', 'sdf', 0, 1, 0, NULL, '', 1, '', 0, 1, 1, 0, 1, '2024-10-20 15:55:50', 1, '2024-08-20 11:15:25'),
(107, 'asdasd', 'asdasda', 98321017, '', 1, 1, 0.00, 2, 2, 1, 0, 0, 'Exclusive', 'sdf', 1, 1, 0, NULL, '', 1, '', 0, 1, 1, 0, 1, '2024-08-26 12:29:00', 1, '2024-08-20 11:15:58'),
(108, 'dfsdf', 'sdfsd', 98321018, '', 1, 1, 0.00, 2, 2, 1, 0, 0, 'Exclusive', '1', 1, 1, 0, NULL, '', 1, '', 0, 1, 1, 0, 1, '2024-08-26 12:29:00', 1, '2024-08-20 11:17:15'),
(109, 'dfsdf', 'sdfsd', 98321019, '', 1, 1, 0.00, 2, 2, 1, 0, 0, 'Exclusive', '1', 0, 1, 0, NULL, '', 1, '', 0, 1, 1, 0, 1, '2024-12-23 10:03:32', 1, '2024-08-20 11:17:39'),
(110, 'asdas', 'sdf', 98321020, '', 1, 1, 0.00, 2, 2, 1, 0, 0, 'Exclusive', '1', 1, 1, 0, NULL, '', 1, '', 0, 1, 1, 0, 1, '2024-08-26 12:29:00', 1, '2024-08-20 11:18:53'),
(111, 'asdasd', '1', 98321021, '', 1, 1, 0.00, 2, 2, 1, 0, 0, 'Exclusive', '1', 1, 1, 0, NULL, '', 1, '', 0, 1, 1, 0, 1, '2024-08-26 12:29:00', 1, '2024-08-20 11:19:33'),
(112, 'asdas', 'df', 98321022, '', 1, 1, 0.00, 2, 2, 1, 0, 0, 'Exclusive', '1', 1, 1, 0, NULL, '', 1, '', 0, 1, 1, 0, 1, '2024-08-26 12:29:00', 1, '2024-08-20 11:22:50'),
(113, 'dsfs', '1', 98321023, '', 1, 1, 0.00, 2, 2, 1, 0, 0, 'Exclusive', '1', 1, 1, 0, NULL, '', 1, '', 0, 1, 1, 0, 1, '2024-08-26 12:29:00', 1, '2024-08-20 11:25:15'),
(114, 'asdfas', '1', 98321024, '', 1, 1, 0.00, 2, 2, 1, 0, 0, 'Exclusive', '1', 1, 1, 0, NULL, '', 1, '', 0, 1, 1, 0, 1, '2024-08-26 12:29:00', 1, '2024-08-20 11:27:26'),
(115, 'sdf', '1', 98321025, '', 1, 1, 0.00, 2, 2, 1, 0, 0, 'Exclusive', '1', 0, 1, 0, NULL, '', 1, '', 0, 1, 1, 0, 1, '2024-12-23 10:03:32', 1, '2024-08-20 11:28:14'),
(116, 'dfs', '1', 98321026, '', 1, 1, 0.00, 2, 2, 1, 0, 0, 'Exclusive', '1', 0, 1, 0, NULL, '', 1, '', 0, 1, 1, 0, 1, '2024-10-02 10:24:01', 1, '2024-08-20 11:29:33'),
(117, 'dfs', '1', 98321027, '', 1, 1, 0.00, 2, 2, 1, 0, 0, 'Exclusive', '1', 0, 1, 0, NULL, '', 1, '', 0, 1, 1, 0, 1, '2024-10-02 10:24:01', 1, '2024-08-20 11:29:43'),
(118, 'sfdfg', '1', 98321028, '', 1, 1, 0.00, 2, 2, 1, 0, 0, 'Exclusive', '1', -3, 1, 0, NULL, '', 1, '', 0, 1, 1, 0, 1, '2024-10-02 10:24:01', 1, '2024-08-20 11:31:26'),
(119, 'sdgdfshgf', '2', 98321029, '', 2, 2, 0.00, 2, 2, 1, 0, 0, 'Exclusive', '2', 0, 1, 0, NULL, '', 1, '', 0, 1, 1, 0, 1, '2024-10-20 17:13:10', 1, '2024-08-20 11:33:53'),
(120, 'sadgfg', '3', 98321030, '', 3, 3, 0.00, 2, 2, 1, 0, 0, 'Exclusive', '3', 0, 1, 0, NULL, '', 1, '', 0, 1, 1, 0, 1, '2024-12-23 10:03:32', 1, '2024-08-20 11:35:00');

-- --------------------------------------------------------

--
-- Table structure for table `product_return`
--

CREATE TABLE `product_return` (
  `productReturnId` int(11) NOT NULL,
  `customerId` int(11) NOT NULL,
  `orderId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `rewardPoints` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `storeId` int(11) NOT NULL DEFAULT 0,
  `userId` int(11) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 1,
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_return`
--

INSERT INTO `product_return` (`productReturnId`, `customerId`, `orderId`, `productId`, `quantity`, `rewardPoints`, `total`, `storeId`, `userId`, `status`, `dateAdded`) VALUES
(34, 1, 20, 100, 1, 0, 57848, 1, 1, 1, '2024-08-22 15:08:49'),
(35, 1, 40, 100, 1, 0, 57848, 1, 1, 1, '2024-08-24 14:52:54'),
(36, 1, 41, 100, 1, 5785, 57848, 1, 1, 1, '2024-08-24 14:59:20'),
(37, 1, 42, 100, 1, 11570, 57848, 1, 1, 1, '2024-08-24 15:00:20'),
(38, 1, 43, 100, 1, 66932450, 57848, 1, 1, 1, '2024-08-24 15:44:45'),
(39, 1, 44, 100, 2, 100387105, 115696, 1, 1, 1, '2024-08-24 15:49:00'),
(40, 1, 44, 100, 2, 11569, 115696, 1, 1, 1, '2024-08-24 15:52:33'),
(41, 1, 44, 100, 2, 11569, 115696, 1, 1, 1, '2024-08-24 15:57:46'),
(42, 1, 44, 100, 2, 11569, 115696, 1, 1, 1, '2024-08-24 16:00:18'),
(43, 1, 45, 100, 2, 11570, 115696, 1, 1, 1, '2024-08-24 16:01:34');

-- --------------------------------------------------------

--
-- Table structure for table `profit_report`
--

CREATE TABLE `profit_report` (
  `profitReportId` int(11) NOT NULL,
  `heading` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `id` int(11) NOT NULL,
  `costPrice` float(11,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `tax` float(11,2) NOT NULL,
  `taxType` varchar(10) NOT NULL,
  `taxPercent` float(11,2) NOT NULL,
  `discount` float(11,2) NOT NULL,
  `total` float(11,2) NOT NULL,
  `profit` float(11,2) NOT NULL,
  `finalAmount` float(11,2) NOT NULL,
  `basePriceCost` float(11,2) NOT NULL,
  `storeId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `dateAdded` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `purchaseId` int(11) NOT NULL,
  `sno` int(11) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `refrence` varchar(255) NOT NULL,
  `vendorId` varchar(11) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `billType` int(11) NOT NULL DEFAULT 0,
  `products` text NOT NULL,
  `quantity` float DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `subTotal` float DEFAULT NULL,
  `tax` float(11,2) NOT NULL,
  `total` float DEFAULT NULL,
  `purchaseStatus` varchar(1) DEFAULT '0',
  `storeId` int(11) NOT NULL DEFAULT 0,
  `userId` int(11) NOT NULL,
  `softDelete` int(11) NOT NULL DEFAULT 0,
  `updatedBy` int(11) NOT NULL,
  `dateUpdated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 1,
  `insertedBy` int(11) NOT NULL DEFAULT 0,
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`purchaseId`, `sno`, `heading`, `refrence`, `vendorId`, `date`, `billType`, `products`, `quantity`, `comment`, `subTotal`, `tax`, `total`, `purchaseStatus`, `storeId`, `userId`, `softDelete`, `updatedBy`, `dateUpdated`, `status`, `insertedBy`, `dateAdded`) VALUES
(1, 1, 'Purchase Heading', '', '1', '2024-04-12', 1, '[\n    {\n        \"productId\": 100,\n        \"heading\": \"Eldora Hackett III\",\n        \"model\": \"EtfkfhSgZJ\",\n        \"barcode\": 98321008,\n        \"cost\": 28924,\n        \"price\": 57848,\n        \"percent\": 0,\n        \"manufacturerId\": 1,\n        \"categoryId\": 1,\n        \"vendorId\": 1,\n        \"unitId\": 1,\n        \"taxId\": 5,\n        \"taxType\": \"Inclusive\",\n        \"quantity\": 1,\n        \"subtract\": 0,\n        \"image\": null,\n        \"relatedImage\": \"\\\"\\\"\",\n        \"showInPos\": 1,\n        \"softDelete\": 0,\n        \"storeId\": 1,\n        \"userId\": 2,\n        \"updatedBy\": 2,\n        \"insertedBy\": 2,\n        \"dateUpdated\": \"2024-04-01 16:52:19\",\n        \"status\": 1,\n        \"dateAdded\": \"2024-03-31 16:26:30\",\n        \"taxHeading\": \"GST 28%\",\n        \"taxPercent\": 28,\n        \"taxExclusiveValue\": 0,\n        \"taxInclusiveValue\": 6327.125,\n        \"tax\": 6327.125,\n        \"basePriceCost\": 22596.875,\n        \"discount\": 0,\n        \"discountValue\": 0,\n        \"extraInformation\": \"\",\n        \"total\": 28924,\n        \"rewardPoints\": 2892.4\n    },\n    {\n        \"productId\": 101,\n        \"heading\": \"Nimbus 3000\",\n        \"model\": \"NimbusZ\",\n        \"barcode\": 98321009,\n        \"cost\": 35000,\n        \"price\": 70000,\n        \"percent\": 0,\n        \"manufacturerId\": 2,\n        \"categoryId\": 2,\n        \"vendorId\": 2,\n        \"unitId\": 2,\n        \"taxId\": 6,\n        \"taxType\": \"Inclusive\",\n        \"quantity\": 2,\n        \"subtract\": 0,\n        \"image\": null,\n        \"relatedImage\": \"\\\"\\\"\",\n        \"showInPos\": 1,\n        \"softDelete\": 0,\n        \"storeId\": 1,\n        \"userId\": 3,\n        \"updatedBy\": 3,\n        \"insertedBy\": 3,\n        \"dateUpdated\": \"2024-04-02 16:52:19\",\n        \"status\": 1,\n        \"dateAdded\": \"2024-04-01 16:26:30\",\n        \"taxHeading\": \"GST 18%\",\n        \"taxPercent\": 18,\n        \"taxExclusiveValue\": 0,\n        \"taxInclusiveValue\": 10000,\n        \"tax\": 10000,\n        \"basePriceCost\": 29500,\n        \"discount\": 0,\n        \"discountValue\": 0,\n        \"extraInformation\": \"\",\n        \"total\": 35000,\n        \"rewardPoints\": 3500.0\n    },\n    {\n        \"productId\": 102,\n        \"heading\": \"Time Turner\",\n        \"model\": \"TTurner\",\n        \"barcode\": 98321010,\n        \"cost\": 15000,\n        \"price\": 30000,\n        \"percent\": 0,\n        \"manufacturerId\": 3,\n        \"categoryId\": 3,\n        \"vendorId\": 3,\n        \"unitId\": 3,\n        \"taxId\": 7,\n        \"taxType\": \"Exclusive\",\n        \"quantity\": 1,\n        \"subtract\": 0,\n        \"image\": null,\n        \"relatedImage\": \"\\\"\\\"\",\n        \"showInPos\": 1,\n        \"softDelete\": 0,\n        \"storeId\": 1,\n        \"userId\": 4,\n        \"updatedBy\": 4,\n        \"insertedBy\": 4,\n        \"dateUpdated\": \"2024-04-03 16:52:19\",\n        \"status\": 1,\n        \"dateAdded\": \"2024-04-02 16:26:30\",\n        \"taxHeading\": \"GST 12%\",\n        \"taxPercent\": 12,\n        \"taxExclusiveValue\": 0,\n        \"taxInclusiveValue\": 3600,\n        \"tax\": 3600,\n        \"basePriceCost\": 12000,\n        \"discount\": 0,\n        \"discountValue\": 0,\n        \"extraInformation\": \"\",\n        \"total\": 15000,\n        \"rewardPoints\": 1500.0\n    },\n    {\n        \"productId\": 103,\n        \"heading\": \"Invisibility Cloak\",\n        \"model\": \"InvisCloak\",\n        \"barcode\": 98321011,\n        \"cost\": 50000,\n        \"price\": 100000,\n        \"percent\": 0,\n        \"manufacturerId\": 4,\n        \"categoryId\": 4,\n        \"vendorId\": 4,\n        \"unitId\": 4,\n        \"taxId\": 8,\n        \"taxType\": \"Inclusive\",\n        \"quantity\": 1,\n        \"subtract\": 0,\n        \"image\": null,\n        \"relatedImage\": \"\\\"\\\"\",\n        \"showInPos\": 1,\n        \"softDelete\": 0,\n        \"storeId\": 1,\n        \"userId\": 5,\n        \"updatedBy\": 5,\n        \"insertedBy\": 5,\n        \"dateUpdated\": \"2024-04-04 16:52:19\",\n        \"status\": 1,\n        \"dateAdded\": \"2024-04-03 16:26:30\",\n        \"taxHeading\": \"GST 28%\",\n        \"taxPercent\": 28,\n        \"taxExclusiveValue\": 0,\n        \"taxInclusiveValue\": 14000,\n        \"tax\": 14000,\n        \"basePriceCost\": 45000,\n        \"discount\": 0,\n        \"discountValue\": 0,\n        \"extraInformation\": \"\",\n        \"total\": 50000,\n        \"rewardPoints\": 5000.0\n    }\n]\n', 1, '', 28924, 6327.12, 28924, '1', 1, 1, 0, 1, '2024-10-06 14:00:27', 1, 1, '2024-04-12 11:08:46'),
(2, 2, 'Purchase Heading 2', '', '1', '2024-04-11', 1, '[{\"productId\":99,\"heading\":\"Angel Hills\",\"model\":\"q8qHbH3aUV\",\"barcode\":19919785,\"cost\":92186,\"price\":184372,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":4,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"softDelete\":0,\"storeId\":1,\"userId\":2,\"updatedBy\":0,\"insertedBy\":2,\"dateUpdated\":\"2024-04-01 16:52:19\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:29\",\"taxHeading\":\"GST 18%\",\"taxPercent\":18,\"taxExclusiveValue\":16593.48,\"taxInclusiveValue\":0,\"tax\":16593.48,\"basePriceCost\":92186,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":92186,\"rewardPoints\":9218.6}]', 1, '', 92186, 16593.48, 108779, '1', 1, 1, 0, 1, '2024-10-06 16:47:35', 1, 1, '2024-10-07 12:48:28');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_orders`
--

CREATE TABLE `purchase_orders` (
  `purchaseOrderId` int(11) NOT NULL,
  `sno` int(11) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `refrence` varchar(255) NOT NULL,
  `vendorId` varchar(11) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `billType` int(11) NOT NULL DEFAULT 0,
  `products` text NOT NULL,
  `quantity` float DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `subTotal` float DEFAULT NULL,
  `tax` float(11,2) NOT NULL,
  `total` float DEFAULT NULL,
  `purchaseOrderStatus` varchar(1) DEFAULT '0',
  `storeId` int(11) NOT NULL DEFAULT 0,
  `userId` int(11) NOT NULL,
  `softDelete` int(11) NOT NULL DEFAULT 0,
  `updatedBy` int(11) NOT NULL,
  `dateUpdated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 1,
  `insertedBy` int(11) NOT NULL DEFAULT 0,
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `purchase_orders`
--

INSERT INTO `purchase_orders` (`purchaseOrderId`, `sno`, `heading`, `refrence`, `vendorId`, `date`, `billType`, `products`, `quantity`, `comment`, `subTotal`, `tax`, `total`, `purchaseOrderStatus`, `storeId`, `userId`, `softDelete`, `updatedBy`, `dateUpdated`, `status`, `insertedBy`, `dateAdded`) VALUES
(1, 1, 'Test Purchase Orders', '', '1', '2024-07-20', 1, '[{\"productId\":100,\"heading\":\"Eldora Hackett III\",\"model\":\"EtfkfhSgZJ\",\"barcode\":98321009,\"cost\":\"2000\",\"price\":57848,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":\"1\",\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":\"3\",\"subtract\":0,\"changePriceDuringBilling\":1,\"image\":null,\"relatedImage\":\"\\\"\\\"\",\"showInPos\":1,\"productType\":\"Product\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":2,\"dateUpdated\":\"2024-07-20 14:19:57\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:30\",\"taxHeading\":\"CGST 2.5%\",\"taxPercent\":2.5,\"taxExclusiveValue\":150,\"taxInclusiveValue\":0,\"tax\":150,\"basePriceCost\":\"2000\",\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":6000,\"rewardPoints\":100}]', 3, 'Test Purchas order', 6000, 150.00, 6150, '0', 1, 1, 0, 1, '2024-07-20 15:21:16', 1, 1, '2024-07-20 14:29:12');

-- --------------------------------------------------------

--
-- Table structure for table `reward_otp`
--

CREATE TABLE `reward_otp` (
  `rewardOtpId` int(11) NOT NULL,
  `customerId` int(11) NOT NULL,
  `orderId` int(11) NOT NULL,
  `otp` text NOT NULL,
  `storeId` int(11) NOT NULL,
  `otpToken` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reward_otp`
--

INSERT INTO `reward_otp` (`rewardOtpId`, `customerId`, `orderId`, `otp`, `storeId`, `otpToken`, `status`, `dateAdded`) VALUES
(1, 102, 0, '294992', 1, 'kaS0Ldn7DeLk0OyeZqsUmJBC4qrmPEm7tukyKWiFkpBTQtErWo', 1, '2024-04-19 10:11:09'),
(2, 102, 0, '550918', 1, 'aduvIlaphoNemRVuqSq2BlQ6TdRDNAtJyqLxECfUIj2VtbFOzI', 1, '2024-04-19 10:11:38'),
(3, 102, 0, '287040', 1, '0M6RUpzAZzhLNKL9FncZsjekypFZQ7ENs0oxHjOPBCphnJTQRO', 1, '2024-04-19 10:12:34'),
(4, 102, 0, '63799', 1, 'LcD44LxXJX5k9ZsKH6HGKjvSJxc1Y8BaHPtZz7VPY3oB3sHVoR', 1, '2024-04-19 10:13:22'),
(5, 102, 0, '814840', 1, 'lqsuJMrrezkdd3LiPcO65zhocaoiJWqoYhQWUTsPXUh1Y603Nm', 1, '2024-04-19 10:22:28'),
(6, 102, 0, '858158', 1, 'aDL3sqmgqlF5KOT4dKJnbgAAPWm8ywbRWUfFkaGWiwuYmYnbHp', 1, '2024-04-19 10:24:30'),
(7, 102, 0, '221853', 1, 'R8Zwfpkt9aU9WNm62PMuDNQQYCKiVj3Y5smwliL32PpuqycBrY', 1, '2024-04-19 10:28:06'),
(8, 102, 0, '899388', 1, 'e56OSxTlAZGyj8Tp8kLKlKdx2KmGBjxB6fnLiFD9EB0Qu348FH', 1, '2024-04-19 10:29:44'),
(9, 102, 0, '677318', 1, 'SACXziKIPSUgAd4aSPojBYvWJLQxSS75z8g384c7t4jnqkp91K', 1, '2024-04-19 10:30:54'),
(10, 102, 11, '205791', 1, 'DHxD5c0UkMz4MlweyCnTFvhenHmtp1z9e0YjnIEvXjd1nlZ8bC', 1, '2024-04-19 10:31:48');

-- --------------------------------------------------------

--
-- Table structure for table `reward_otp_skip_reason`
--

CREATE TABLE `reward_otp_skip_reason` (
  `rewardOtpSkipReasonId` int(11) NOT NULL,
  `customerId` int(11) NOT NULL,
  `orderId` int(11) NOT NULL,
  `reason` text NOT NULL,
  `storeId` int(11) NOT NULL,
  `skipOtpToken` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reward_otp_skip_reason`
--

INSERT INTO `reward_otp_skip_reason` (`rewardOtpSkipReasonId`, `customerId`, `orderId`, `reason`, `storeId`, `skipOtpToken`, `status`, `dateAdded`) VALUES
(1, 1, 0, 'fgd', 1, '', 1, '2024-04-19 09:36:06'),
(2, 1, 0, 'asdf', 1, '', 1, '2024-04-19 09:36:29'),
(3, 102, 0, 'testing', 1, '', 1, '2024-04-19 09:39:56'),
(4, 102, 10, 'This is a test Skipi', 1, 'QL3TOUx5SOdnRxaVVWizNb8GPVxtLWOeUVrk10goiyW2drCWPS', 1, '2024-04-19 09:50:20'),
(5, 102, 0, 'asdasd', 1, 'jLq47lU4U3BWMS5J8nfmlqof5O9Jyj3IqIaVNppGoZcS33eYbQ', 1, '2024-05-01 13:10:51'),
(6, 102, 28, 'asdas', 1, 'hOOgCsP9VxZrBS7W3GkXYJmdZxwTSEtcEfOqo6urLTvA7T4IaU', 1, '2024-05-01 13:14:52'),
(7, 102, 0, 'Sk', 1, '3B38d90dVev133DtDwQE0jR09GOkX0hsKqOymbhu9z4iCCIxP0', 1, '2024-05-01 13:45:13');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `roleId` int(11) NOT NULL,
  `heading` varchar(50) NOT NULL,
  `permission` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `insertedBy` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`roleId`, `heading`, `permission`, `status`, `insertedBy`) VALUES
(1, 'Super Administrator', '{\"view\":[\"1\",\"28\",\"78\",\"84\",\"29\",\"36\",\"77\",\"37\",\"38\",\"39\",\"79\",\"35\",\"51\",\"8\",\"19\",\"31\",\"42\",\"47\",\"48\",\"63\",\"69\",\"70\",\"30\",\"76\",\"43\",\"45\",\"65\",\"66\",\"57\",\"56\",\"58\",\"24\",\"25\",\"26\",\"27\",\"60\",\"82\",\"83\",\"53\",\"55\",\"61\",\"67\",\"68\",\"71\",\"72\",\"5\",\"6\",\"21\",\"2\",\"75\",\"81\",\"4\",\"9\",\"12\",\"22\",\"23\",\"32\",\"33\",\"34\",\"44\",\"46\",\"49\",\"50\",\"54\",\"64\",\"13\",\"11\",\"20\"],\"edit\":[\"1\",\"28\",\"78\",\"84\",\"29\",\"36\",\"77\",\"37\",\"38\",\"39\",\"79\",\"35\",\"51\",\"8\",\"19\",\"31\",\"42\",\"47\",\"48\",\"63\",\"69\",\"70\",\"30\",\"76\",\"43\",\"45\",\"65\",\"66\",\"57\",\"56\",\"58\",\"24\",\"25\",\"26\",\"27\",\"60\",\"82\",\"83\",\"53\",\"55\",\"61\",\"67\",\"68\",\"71\",\"72\",\"5\",\"6\",\"21\",\"2\",\"75\",\"81\",\"4\",\"9\",\"12\",\"22\",\"23\",\"32\",\"33\",\"34\",\"44\",\"46\",\"49\",\"50\",\"54\",\"64\",\"13\",\"11\",\"20\"]}', 1, 1),
(2, 'Pos Owner', '{\"view\":[\"1\",\"28\",\"78\",\"29\",\"36\",\"77\",\"37\",\"38\",\"39\",\"79\",\"35\",\"51\",\"8\",\"31\",\"42\",\"47\",\"48\",\"63\",\"69\",\"70\",\"30\",\"76\",\"43\",\"45\",\"65\",\"66\",\"57\",\"56\",\"58\",\"60\",\"82\",\"83\",\"53\",\"55\",\"61\",\"67\",\"68\",\"71\",\"72\",\"5\",\"6\"],\"edit\":[\"1\",\"28\",\"78\",\"29\",\"36\",\"77\",\"37\",\"38\",\"39\",\"79\",\"35\",\"51\",\"8\",\"31\",\"42\",\"47\",\"48\",\"63\",\"69\",\"70\",\"30\",\"76\",\"43\",\"45\",\"65\",\"66\",\"57\",\"56\",\"58\",\"60\",\"82\",\"83\",\"53\",\"55\",\"61\",\"67\",\"68\",\"71\",\"72\",\"5\",\"6\"]}', 1, 1),
(3, 'Pos User', '{\"view\":[\"1\",\"28\",\"78\",\"29\",\"36\",\"77\",\"37\",\"38\",\"39\",\"79\",\"35\",\"51\",\"8\",\"31\",\"63\",\"69\",\"70\",\"30\",\"43\",\"52\",\"65\",\"57\",\"56\",\"58\",\"25\",\"26\",\"27\",\"82\",\"83\",\"53\",\"55\",\"5\",\"6\",\"2\",\"9\",\"32\",\"33\",\"34\"],\"edit\":[\"1\",\"28\",\"78\",\"29\",\"36\",\"77\",\"37\",\"38\",\"39\",\"79\",\"35\",\"51\",\"8\",\"31\",\"63\",\"69\",\"70\",\"30\",\"43\",\"52\",\"65\",\"57\",\"56\",\"58\",\"25\",\"26\",\"27\",\"82\",\"83\",\"53\",\"55\",\"5\",\"6\",\"2\",\"9\",\"32\",\"33\",\"34\"]}', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `seating_tables`
--

CREATE TABLE `seating_tables` (
  `seatingTableId` int(11) NOT NULL,
  `heading` varchar(50) NOT NULL,
  `capacity` int(11) NOT NULL,
  `storeId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `dateUpdated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seating_tables`
--

INSERT INTO `seating_tables` (`seatingTableId`, `heading`, `capacity`, `storeId`, `userId`, `status`, `dateUpdated`, `dateAdded`) VALUES
(1, 'Table No 1', 2, 1, 2, 1, '2024-02-26 14:48:34', '2024-02-26 20:18:34'),
(2, 'Table No 2', 2, 1, 2, 1, '2024-02-26 14:48:34', '2024-02-26 20:18:34'),
(3, 'Table No 3', 2, 1, 2, 1, '2024-02-26 14:48:34', '2024-02-26 20:18:34'),
(4, 'Table No 4', 2, 1, 2, 1, '2024-02-26 14:48:34', '2024-02-26 20:18:34'),
(5, 'Table No 5', 2, 1, 2, 1, '2024-02-26 14:48:34', '2024-02-26 20:18:34'),
(6, 'Table No 6', 2, 1, 2, 1, '2024-02-26 14:48:34', '2024-02-26 20:18:34');

-- --------------------------------------------------------

--
-- Table structure for table `seo`
--

CREATE TABLE `seo` (
  `seoId` int(11) NOT NULL,
  `pageName` varchar(20) NOT NULL,
  `metaTitle` varchar(500) NOT NULL,
  `metaKeyword` varchar(500) NOT NULL,
  `metaDescription` varchar(500) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seo`
--

INSERT INTO `seo` (`seoId`, `pageName`, `metaTitle`, `metaKeyword`, `metaDescription`, `status`) VALUES
(1, 'Specialties', 'Specialties', 'Specialties', 'Specialties', 1),
(2, 'Faqs', 'Frequently Asked Questions', 'Frequently Asked Questions', 'Frequently Asked Questions', 1),
(3, 'Testimonials', 'Testimonials', 'Testimonials', 'Testimonials', 1),
(4, 'Teams', 'Teams', 'Teams', 'Teams', 1),
(5, 'Blogs', 'Blogs', 'Blogs', 'Blogs', 1),
(6, 'BlogCategory', 'BlogCategory', 'BlogCategory', 'BlogCategory', 1),
(7, 'Contact', 'Contact', 'Contact', 'Contact', 1),
(8, 'About', 'About', 'About', 'About', 1),
(9, 'LiverTransplant', 'Liver Transplant', 'Liver Transplant', 'Liver Transplant', 1),
(10, 'MedicalTourism', 'Medical Tourism', 'Medical Tourism', 'Medical Tourism', 1),
(11, 'OtherSurgeries', 'Other Surgeries', 'Other Surgeries', 'Other Surgeries', 1),
(12, 'Page', 'Page', 'Page', 'Page', 1),
(13, 'Login', 'Login', 'Login', 'Login', 1),
(14, 'Forgot', 'Forgot', 'Forgot', 'Forgot', 1),
(15, 'Dashboard', 'Dashboard', 'Dashboard', 'Dashboard', 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `settingId` int(11) NOT NULL,
  `websiteName` varchar(100) NOT NULL,
  `websiteLogo` varchar(255) NOT NULL,
  `allowedImageSize` int(11) NOT NULL,
  `allowedFileSize` varchar(11) NOT NULL,
  `metaTitle` varchar(500) NOT NULL,
  `metaKeyword` varchar(500) NOT NULL,
  `metaDescription` varchar(500) NOT NULL,
  `adminEmail` varchar(500) NOT NULL,
  `contactMobile` varchar(50) NOT NULL,
  `contactEmail` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `mailJetUsername` varchar(255) NOT NULL,
  `mailJetPassword` varchar(255) NOT NULL,
  `mailjetEmail` varchar(100) NOT NULL,
  `mailjetName` varchar(50) NOT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `mergeLogin` int(11) NOT NULL DEFAULT 0,
  `databaseBackup` int(11) NOT NULL DEFAULT 0,
  `fieldsToSendValueOnMail` varchar(500) NOT NULL,
  `filedsToReplaceOnMail` varchar(500) NOT NULL,
  `filedsToUnsetOnMails` varchar(255) NOT NULL,
  `hideAddEditDeleteIfNoStoreSelected` varchar(255) NOT NULL,
  `multiplePaymentMethod` int(11) NOT NULL,
  `creditPaymentMethod` int(11) NOT NULL,
  `returnPaymentMethod` int(11) NOT NULL,
  `walletPaymentMethod` int(11) NOT NULL,
  `gstApi` varchar(255) NOT NULL,
  `defaultCurrency` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`settingId`, `websiteName`, `websiteLogo`, `allowedImageSize`, `allowedFileSize`, `metaTitle`, `metaKeyword`, `metaDescription`, `adminEmail`, `contactMobile`, `contactEmail`, `address`, `mailJetUsername`, `mailJetPassword`, `mailjetEmail`, `mailjetName`, `facebook`, `twitter`, `linkedin`, `instagram`, `mergeLogin`, `databaseBackup`, `fieldsToSendValueOnMail`, `filedsToReplaceOnMail`, `filedsToUnsetOnMails`, `hideAddEditDeleteIfNoStoreSelected`, `multiplePaymentMethod`, `creditPaymentMethod`, `returnPaymentMethod`, `walletPaymentMethod`, `gstApi`, `defaultCurrency`, `status`) VALUES
(1, 'Admin Panel', 'public/assets/uploads/705853563.png', 1024000, '1024000', 'Admin Panel', 'Admin Panel', 'Admin Panel', 'pkv172019@gmail.com', '', '', '', '6678bd56cba1c932705fcec18ddf06f0', '4f1c0a54fb8f4fc9bd8670abb8311ceb', 'sehrawat899@gmail.com', 'Priyavrat', '#', '#', '#', '#', 0, 0, 'ContactAgent', 'customerGroupId-heading-customer_group,customerId-name-customers,propertyId-heading-properties,cityId-heading-cities,stateId-heading-states,countryId-heading-countries,paymentId-name-payments', '', 'customer_group,vendors,customers,manufacturers,products,seating_tables,employees,store_payments,purchases', 2, 1, 3, 9, 'c22f33b373fa2561c2bd7bc93ae6e3ee', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `stateId` int(11) NOT NULL,
  `heading` varchar(100) NOT NULL,
  `countryId` int(11) NOT NULL,
  `sortOrder` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `softDelete` int(11) NOT NULL DEFAULT 0,
  `updatedBy` int(11) NOT NULL,
  `dateUpdated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `insertedBy` int(11) NOT NULL,
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`stateId`, `heading`, `countryId`, `sortOrder`, `image`, `description`, `softDelete`, `updatedBy`, `dateUpdated`, `insertedBy`, `dateAdded`, `status`) VALUES
(1, 'ANDHRA PRADESH', 2, 0, '', '', 0, 0, '2024-07-25 10:15:18', 0, '2024-05-18 10:54:55', 1),
(2, 'ASSAM', 1, 0, '', '', 0, 0, '2024-07-25 10:15:20', 0, '2024-05-18 10:54:55', 1),
(3, 'ARUNACHAL PRADESH', 1, 0, '', '', 0, 0, '2024-05-18 10:54:55', 0, '2024-05-18 10:54:55', 0),
(4, 'BIHAR', 1, 0, '', '', 0, 0, '2024-05-18 10:54:55', 0, '2024-05-18 10:54:55', 0),
(5, 'GUJRAT', 1, 0, '', '', 0, 0, '2024-05-18 10:54:55', 0, '2024-05-18 10:54:55', 0),
(6, 'HARYANA', 1, 0, '', '', 0, 0, '2024-05-18 10:54:55', 0, '2024-05-18 10:54:55', 0),
(7, 'HIMACHAL PRADESH', 1, 0, '', '', 0, 0, '2024-05-18 10:54:55', 0, '2024-05-18 10:54:55', 0),
(8, 'JAMMU & KASHMIR', 1, 0, '', '', 0, 0, '2024-05-18 10:54:55', 0, '2024-05-18 10:54:55', 0),
(9, 'KARNATAKA', 1, 0, '', '', 0, 0, '2024-05-18 10:54:55', 0, '2024-05-18 10:54:55', 0),
(10, 'KERALA', 1, 0, '', '', 0, 0, '2024-05-18 10:54:55', 0, '2024-05-18 10:54:55', 0),
(11, 'MADHYA PRADESH', 1, 0, '', '', 0, 0, '2024-05-18 10:54:55', 0, '2024-05-18 10:54:55', 0),
(12, 'MAHARASHTRA', 1, 0, '', '', 0, 0, '2024-05-18 10:54:55', 0, '2024-05-18 10:54:55', 0),
(13, 'MANIPUR', 1, 0, '', '', 0, 0, '2024-05-18 10:54:55', 0, '2024-05-18 10:54:55', 0),
(14, 'MEGHALAYA', 1, 0, '', '', 0, 0, '2024-05-18 10:54:55', 0, '2024-05-18 10:54:55', 0),
(15, 'MIZORAM', 1, 0, '', '', 0, 0, '2024-05-18 10:54:55', 0, '2024-05-18 10:54:55', 0),
(16, 'NAGALAND', 1, 0, '', '', 0, 0, '2024-05-18 10:54:55', 0, '2024-05-18 10:54:55', 0),
(17, 'ORISSA', 1, 0, '', '', 0, 0, '2024-05-18 10:54:55', 0, '2024-05-18 10:54:55', 0),
(18, 'PUNJAB', 1, 0, '', '', 0, 0, '2024-05-18 10:54:55', 0, '2024-05-18 10:54:55', 0),
(19, 'RAJASTHAN', 1, 0, '', '', 0, 0, '2024-05-18 10:54:55', 0, '2024-05-18 10:54:55', 0),
(20, 'SIKKIM', 1, 0, '', '', 0, 0, '2024-05-18 10:54:55', 0, '2024-05-18 10:54:55', 0),
(21, 'TAMIL NADU', 1, 0, '', '', 0, 0, '2024-05-18 10:54:55', 0, '2024-05-18 10:54:55', 0),
(22, 'TRIPURA', 1, 0, '', '', 0, 0, '2024-05-18 10:54:55', 0, '2024-05-18 10:54:55', 0),
(23, 'UTTAR PRADESH', 1, 0, '', '', 0, 0, '2024-05-18 10:54:55', 0, '2024-05-18 10:54:55', 0),
(24, 'WEST BENGAL', 1, 0, '', '', 0, 0, '2024-05-18 10:54:55', 0, '2024-05-18 10:54:55', 0),
(25, 'DELHI', 1, 0, '', '', 0, 0, '2024-05-18 10:54:55', 0, '2024-05-18 10:54:55', 0),
(26, 'GOA', 1, 0, '', '', 0, 0, '2024-05-18 10:54:55', 0, '2024-05-18 10:54:55', 0),
(27, 'PONDICHERY', 1, 0, '', '', 0, 0, '2024-05-18 10:54:55', 0, '2024-05-18 10:54:55', 0),
(28, 'LAKSHDWEEP', 1, 0, '', '', 0, 0, '2024-05-18 10:54:55', 0, '2024-05-18 10:54:55', 0),
(29, 'DAMAN & DIU', 1, 0, '', '', 0, 0, '2024-05-18 10:54:55', 0, '2024-05-18 10:54:55', 0),
(30, 'DADRA & NAGAR', 1, 0, '', '', 0, 0, '2024-05-18 10:54:55', 0, '2024-05-18 10:54:55', 0),
(31, 'CHANDIGARH', 1, 0, '', '', 0, 0, '2024-05-18 10:54:55', 0, '2024-05-18 10:54:55', 0),
(32, 'ANDAMAN & NICOBAR', 1, 0, '', '', 0, 0, '2024-05-18 10:54:55', 0, '2024-05-18 10:54:55', 0),
(33, 'UTTARANCHAL', 1, 0, '', '', 0, 0, '2024-05-18 10:54:55', 0, '2024-05-18 10:54:55', 0),
(34, 'JHARKHAND', 1, 0, '', '', 0, 0, '2024-05-18 10:54:55', 0, '2024-05-18 10:54:55', 0),
(35, 'CHATTISGARH', 1, 0, '', '', 0, 0, '2024-05-18 10:54:55', 0, '2024-05-18 10:54:55', 0);

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `storeId` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `tagline` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `cityId` int(11) NOT NULL,
  `stateId` int(11) NOT NULL,
  `sortOrder` int(11) NOT NULL DEFAULT 0,
  `userId` int(11) NOT NULL DEFAULT 0,
  `storeToken` varchar(500) NOT NULL,
  `softDelete` int(11) NOT NULL DEFAULT 0,
  `updatedBy` int(11) NOT NULL,
  `insertedBy` int(11) NOT NULL DEFAULT 0,
  `dateUpdated` datetime NOT NULL,
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`storeId`, `name`, `tagline`, `email`, `mobile`, `address`, `cityId`, `stateId`, `sortOrder`, `userId`, `storeToken`, `softDelete`, `updatedBy`, `insertedBy`, `dateUpdated`, `dateAdded`, `status`) VALUES
(1, 'Default Shop', 'Default Shop', 'demo@gmail.com', '999999999', 'Your address goes here', 1, 17, 0, 2, 'c5ece30951ad35ae51ffd02754ee9f9c874942ef', 0, 0, 2, '0000-00-00 00:00:00', '2024-03-26 09:42:26', 1);

-- --------------------------------------------------------

--
-- Table structure for table `store_payments`
--

CREATE TABLE `store_payments` (
  `storePaymentId` int(11) NOT NULL,
  `payments` varchar(255) NOT NULL,
  `default` int(11) NOT NULL,
  `storeId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store_payments`
--

INSERT INTO `store_payments` (`storePaymentId`, `payments`, `default`, `storeId`, `userId`, `status`) VALUES
(1, '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\"]', 8, 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `store_settings`
--

CREATE TABLE `store_settings` (
  `storeSettingId` int(11) NOT NULL,
  `websiteName` varchar(100) NOT NULL,
  `websiteLogo` varchar(255) NOT NULL,
  `adminEmail` varchar(500) NOT NULL,
  `contactMobile` varchar(50) NOT NULL,
  `contactEmail` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `mailJetUsername` varchar(255) NOT NULL,
  `mailJetPassword` varchar(255) NOT NULL,
  `mailJetEmail` varchar(100) NOT NULL,
  `mailJetName` varchar(50) NOT NULL,
  `mergeLogin` int(11) NOT NULL DEFAULT 0,
  `databaseBackup` int(11) NOT NULL DEFAULT 0,
  `fieldsToSendValueOnMail` varchar(500) NOT NULL,
  `filedsToReplaceOnMail` varchar(500) NOT NULL,
  `filedsToUnsetOnMails` varchar(255) NOT NULL,
  `hideAddEditDeleteIfNoStoreSelected` varchar(255) NOT NULL,
  `enableRewardPoints` int(11) NOT NULL DEFAULT 1,
  `rewardOnDiscountedProduct` int(11) NOT NULL DEFAULT 1,
  `minimumRewardPointsToReedem` int(11) NOT NULL DEFAULT 0,
  `rewardPercentOnProduct` varchar(11) NOT NULL,
  `walkInCustomerId` int(11) NOT NULL,
  `invoicePrefix` varchar(50) NOT NULL,
  `storeId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `updatedBy` int(11) NOT NULL,
  `insertedBy` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `cartAppendStyle` varchar(11) NOT NULL,
  `orderTypeRequired` int(11) NOT NULL,
  `enableOrderType` int(11) NOT NULL,
  `enableTaxes` int(11) NOT NULL,
  `showStoreInfomation` int(11) NOT NULL,
  `showExtraInformtionPopup` int(11) NOT NULL,
  `showWalletBalance` int(11) NOT NULL,
  `showRewardBalance` int(11) NOT NULL,
  `showAddCustomerBottom` int(11) NOT NULL,
  `salesPersonRequired` int(11) NOT NULL,
  `showSalesPerson` int(11) NOT NULL,
  `showQuickAdd` int(11) NOT NULL,
  `restaurant` int(11) NOT NULL,
  `showModal` int(11) NOT NULL,
  `showBarcode` int(11) NOT NULL,
  `showImage` int(11) NOT NULL,
  `showManufacturers` int(11) NOT NULL,
  `showCategories` int(11) NOT NULL,
  `storeTerms` text NOT NULL,
  `invoiceHeaderText` varchar(255) NOT NULL,
  `invoiceFooterText` varchar(255) NOT NULL,
  `defaultInvoiceTemplate` int(11) NOT NULL,
  `defaultPOTemplate` int(11) NOT NULL,
  `defaultKotTemplate` int(11) NOT NULL,
  `defaultOrderStatus` int(11) NOT NULL DEFAULT 0,
  `cancelledOrderStatus` int(11) NOT NULL,
  `runningOrderStatus` int(11) NOT NULL,
  `deductFromStock` int(11) NOT NULL DEFAULT 1,
  `startBarcodeFrom` int(11) NOT NULL,
  `storeClosingDate` varchar(255) NOT NULL,
  `maxBills` int(11) NOT NULL,
  `requiredOtpForRewardReedem` int(11) NOT NULL DEFAULT 1,
  `minRewardPointsToSendOtp` int(11) NOT NULL,
  `onProductCllickIncreasePosQuantity` int(11) NOT NULL DEFAULT 1,
  `enableLightBox` int(11) NOT NULL DEFAULT 0,
  `fetchCostInPurchase` int(11) NOT NULL DEFAULT 1,
  `enableSeatingTable` int(11) NOT NULL DEFAULT 1,
  `enableCustomerReminder` int(11) NOT NULL DEFAULT 1,
  `enableHotelRoomMode` int(1) NOT NULL DEFAULT 0,
  `checkInTime` varchar(20) NOT NULL,
  `printKotAndBillBoth` int(1) NOT NULL DEFAULT 0,
  `showGstBreakups` int(1) NOT NULL DEFAULT 0,
  `defaultTaxId` int(11) NOT NULL,
  `defaultTaxType` varchar(10) NOT NULL,
  `rewardPointsOnCredit` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `store_settings`
--

INSERT INTO `store_settings` (`storeSettingId`, `websiteName`, `websiteLogo`, `adminEmail`, `contactMobile`, `contactEmail`, `address`, `mailJetUsername`, `mailJetPassword`, `mailJetEmail`, `mailJetName`, `mergeLogin`, `databaseBackup`, `fieldsToSendValueOnMail`, `filedsToReplaceOnMail`, `filedsToUnsetOnMails`, `hideAddEditDeleteIfNoStoreSelected`, `enableRewardPoints`, `rewardOnDiscountedProduct`, `minimumRewardPointsToReedem`, `rewardPercentOnProduct`, `walkInCustomerId`, `invoicePrefix`, `storeId`, `userId`, `updatedBy`, `insertedBy`, `status`, `cartAppendStyle`, `orderTypeRequired`, `enableOrderType`, `enableTaxes`, `showStoreInfomation`, `showExtraInformtionPopup`, `showWalletBalance`, `showRewardBalance`, `showAddCustomerBottom`, `salesPersonRequired`, `showSalesPerson`, `showQuickAdd`, `restaurant`, `showModal`, `showBarcode`, `showImage`, `showManufacturers`, `showCategories`, `storeTerms`, `invoiceHeaderText`, `invoiceFooterText`, `defaultInvoiceTemplate`, `defaultPOTemplate`, `defaultKotTemplate`, `defaultOrderStatus`, `cancelledOrderStatus`, `runningOrderStatus`, `deductFromStock`, `startBarcodeFrom`, `storeClosingDate`, `maxBills`, `requiredOtpForRewardReedem`, `minRewardPointsToSendOtp`, `onProductCllickIncreasePosQuantity`, `enableLightBox`, `fetchCostInPurchase`, `enableSeatingTable`, `enableCustomerReminder`, `enableHotelRoomMode`, `checkInTime`, `printKotAndBillBoth`, `showGstBreakups`, `defaultTaxId`, `defaultTaxType`, `rewardPointsOnCredit`) VALUES
(1, 'Default New Shop', 'public/assets/uploads/662747144.png', 'pkv172019@gmail.com', '7878787878', '', 'Your address goes here', '6678bd56cba1c932705fcec18ddf06f0', '4f1c0a54fb8f4fc9bd8670abb8311ceb', '', '', 0, 1, 'ContactAgent', 'customerId-fullName-customers,propertyId-heading-properties', '', 'customer_group,vendors,customers,manufacturers,products,additional_charges', 1, 0, 0, '10', 1, 'INV-2024-', 1, 1, 1, 1, 1, 'append', 1, 0, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, '<p>This article will get you started with creating your own custom Terms and Conditions agreement. We&#39;ve also put together a Sample Terms and Conditions Template that you can use to help you write your own.</p>\r\n', '', '', 1, 4, 3, 1, 3, 2, 1, 0, '2024-04-16,2024-04-20,2024-04-27', 0, 1, 24000, 1, 0, 1, 1, 1, 1, '12:00', 1, 0, 4, 'Exclusive', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE `tables` (
  `tableId` int(11) NOT NULL,
  `tableName` varchar(50) NOT NULL,
  `primaryKeyName` varchar(50) NOT NULL,
  `columns` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tables`
--

INSERT INTO `tables` (`tableId`, `tableName`, `primaryKeyName`, `columns`, `status`) VALUES
(1, 'contacts', 'contactId', '[{\"Field\":\"contactId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"name\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"email\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"mobile\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"subject\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"message\",\"Type\":\"mediumtext\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]', 1),
(2, 'databaseBackup', 'databaseBackupId', '[{\"Field\":\"databaseBackupId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"backUpName\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"type\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]', 1),
(3, 'filters', 'filterId', '[{\"Field\":\"filterId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"filterModuleId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"filtertableName\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"fieldNameReadonly\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"tableName\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"tableFirstColumn\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"tableColumn\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"fieldHeading\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"fieldType\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"fieldName\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"fieldClass\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"fieldId\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"fieldPlaceholder\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"selectBoxValue\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"selectBoxHtml\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"orderBy\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"whereColumn\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"sortOrder\",\"Type\":\"int(11)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"lineNo\",\"Type\":\"int(11)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"additionalAttributes\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"rowColumnSize\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateBetweenFilter\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"filterWorkingCondition\",\"Type\":\"varchar(3)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"OR\",\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]', 1),
(4, 'filters_old', 'filterId', '[{\"Field\":\"filterId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"type\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"name\",\"Type\":\"varchar(50)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"class\",\"Type\":\"varchar(50)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"id\",\"Type\":\"varchar(50)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"value\",\"Type\":\"varchar(50)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"tableName\",\"Type\":\"varchar(50)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"selectIdColumn\",\"Type\":\"varchar(50)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"selectHeadingColumn\",\"Type\":\"varchar(50)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"idValue\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"headingValue\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"defaultValue\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"filterTypeId\",\"Type\":\"int(11)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"line\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"forWhat\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"orderByColumn\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"sortOrder\",\"Type\":\"varchar(11)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]', 1),
(5, 'filter_types', 'fiterTypeId', '[{\"Field\":\"fiterTypeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]', 1),
(6, 'inner_banner', 'innerBannerId', '[{\"Field\":\"innerBannerId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"page\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"heading\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"image\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]', 1),
(7, 'menus', 'menuId', '[{\"Field\":\"menuId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"menuHeading\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"link\",\"Type\":\"varchar(100)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"icon\",\"Type\":\"varchar(100)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"moduleId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"parentId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"sortOrder\",\"Type\":\"int(11)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"roleId\",\"Type\":\"varchar(30)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"},{\"Field\":\"dateUpdated\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"on update current_timestamp()\"},{\"Field\":\"insertedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]', 1),
(8, 'messages', 'messageId', '[{\"Field\":\"messageId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"message\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"hindi\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"english\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]', 1),
(9, 'modules', 'moduleId', '[{\"Field\":\"moduleId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"moduleName\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"moduleTable\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"moduleFirstColumn\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"pageHeading\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"moduleData\",\"Type\":\"mediumtext\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"parentMenu\",\"Type\":\"varchar(30)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"sortOrder\",\"Type\":\"int(11)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"hideAdd\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"hideEdit\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"hideDelete\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"hideAction\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"addButtonText\",\"Type\":\"varchar(30)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"copyButtonText\",\"Type\":\"varchar(30)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"extraButtons\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"submitCodeBefore\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"submitCodeAfter\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"extraActionOnDeleteButton\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"additionalText\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"shortCode\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"frontendRedirectPage\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"sendMailToAdmin\",\"Type\":\"varchar(3)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"No\",\"Extra\":\"\"},{\"Field\":\"filedsToReplaceOnMail\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"filters\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"copyTable\",\"Type\":\"varchar(3)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"No\",\"Extra\":\"\"},{\"Field\":\"dataOfColumnToSkip\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"autoIncreamentColumn\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int(11)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"timestamp\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]', 1),
(10, 'pages', 'pageId', '[{\"Field\":\"pageId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"seo\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"metaTitle\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"metaKeyword\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"metaDescription\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"shortDescription\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"description\",\"Type\":\"mediumtext\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"image\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]', 1),
(11, 'seo', 'seoId', '[{\"Field\":\"seoId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"pageName\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"metaTitle\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"metaKeyword\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"metaDescription\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]', 1),
(12, 'settings', 'settingId', '[{\"Field\":\"settingId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"websiteName\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"websiteLogo\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"allowedImageSize\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"allowedFileSize\",\"Type\":\"varchar(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"metaTitle\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"metaKeyword\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"metaDescription\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"adminEmail\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"contactMobile\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"contactEmail\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"address\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"mailJetUsername\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"mailJetPassword\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"mailjetEmail\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"mailjetName\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"facebook\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"twitter\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"linkedin\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"instagram\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"mergeLogin\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"databaseBackup\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"fieldsToSendValueOnMail\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"filedsToReplaceOnMail\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"filedsToUnsetOnMails\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"hideAddEditDeleteIfNoStoreSelected\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"multiplePaymentMethod\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"creditPaymentMethod\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"returnPaymentMethod\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"walletPaymentMethod\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"gstApi\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"defaultCurrency\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]', 1),
(13, 'tables', 'tableId', '[{\"Field\":\"tableId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"tableName\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"primaryKeyName\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"columns\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]', 1),
(14, 'templates', 'templateId', '[{\"Field\":\"templateId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"subject\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"template\",\"Type\":\"mediumtext\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"forWhat\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"forWhom\",\"Type\":\"varchar(10)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]', 1),
(15, 'users', 'userId', '[{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"userName\",\"Type\":\"varchar(30)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userEmail\",\"Type\":\"varchar(100)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":\"NULL\",\"Extra\":\"\"},{\"Field\":\"userPassword\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userMobile\",\"Type\":\"varchar(30)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"roleId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"superAdmin\",\"Type\":\"varchar(3)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"No\",\"Extra\":\"\"},{\"Field\":\"dataBaseName\",\"Type\":\"varchar(30)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dbUser\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dbPass\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"loginToken\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeUserId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]', 1),
(16, 'admin_login_history', 'adminLoginHistoryId', '[{\"Field\":\"adminLoginHistoryId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]', 1),
(17, 'image_manager', 'imageManagerId', '[{\"Field\":\"imageManagerId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"image\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]', 1),
(18, 'countries', 'countryId', '[{\"Field\":\"countryId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"sortOrder\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"softDelete\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"updatedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"dateUpdated\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"on update current_timestamp()\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"}]', 1),
(19, 'roles', 'roleId', '[{\"Field\":\"roleId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"permission\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"}]', 1),
(20, 'states', 'stateId', '[{\"Field\":\"stateId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"countryId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"sortOrder\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"image\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"description\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"softDelete\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"updatedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateUpdated\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"on update current_timestamp()\"},{\"Field\":\"insertedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"}]', 1),
(21, 'stores', 'storeId', '[{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"name\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"tagline\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"email\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"mobile\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"address\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"cityId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"stateId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"sortOrder\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"storeToken\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"softDelete\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"updatedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"dateUpdated\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]', 1),
(22, 'customer_group', 'customerGroupId', '[{\"Field\":\"customerGroupId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"defaultDiscountPercent\",\"Type\":\"varchar(10)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"sortOrder\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"default\",\"Type\":\"varchar(10)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"softDelete\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"updatedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"dateUpdated\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]', 1),
(23, 'cities', 'cityId', '[{\"Field\":\"cityId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"stateId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"countryId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]', 1),
(24, 'taxes', 'taxId', '[{\"Field\":\"taxId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"percent\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"sortOrder\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"}]', 1),
(25, 'units', 'unitId', '[{\"Field\":\"unitId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"unit\",\"Type\":\"varchar(10)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"sortOrder\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"}]', 1),
(26, 'vendors', 'vendorId', '[{\"Field\":\"vendorId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"mobile\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"email\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"gstNumber\",\"Type\":\"varchar(30)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"openingBalance\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"cityId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"stateId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"countryId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"image\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"sorftDelete\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"updatedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateUpdated\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"on update current_timestamp()\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]', 1),
(27, 'customers', 'customerId', '[{\"Field\":\"customerId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"name\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"mobile\",\"Type\":\"varchar(20)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"email\",\"Type\":\"varchar(100)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"openingBalance\",\"Type\":\"int(11)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"walletBalance\",\"Type\":\"int(11)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"rewardPoints\",\"Type\":\"int(11)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"customerGroupId\",\"Type\":\"int(11)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"cityId\",\"Type\":\"varchar(50)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"stateId\",\"Type\":\"int(11)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"countryId\",\"Type\":\"int(11)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"gstNo\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"firmName\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"firmAddress\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"updatedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateUpdated\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"on update current_timestamp()\"},{\"Field\":\"softDelete\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]', 1),
(28, 'customer_ledger', 'customerLedgerId', '[{\"Field\":\"customerLedgerId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"orderId\",\"Type\":\"int(11)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"customerId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"amount\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"type\",\"Type\":\"varchar(10)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"paymentId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"remark\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"softDelete\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]', 1),
(29, 'categories', 'categoryId', '[{\"Field\":\"categoryId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"image\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"parentId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"updatedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateUpdated\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"on update current_timestamp()\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"},{\"Field\":\"softDelete\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]', 1),
(30, 'manufacturers', 'manufacturerId', '[{\"Field\":\"manufacturerId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"image\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"softDelete\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"dateUpdated\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"on update current_timestamp()\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"}]', 1),
(31, 'products', 'productId', '[{\"Field\":\"productId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"model\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"barcode\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"barcodeType\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"cost\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"price\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"percent\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"manufacturerId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"categoryId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"vendorId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"unitId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"taxId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"taxType\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"Exclusive\",\"Extra\":\"\"},{\"Field\":\"hsnCode\",\"Type\":\"varchar(30)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"quantity\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"subtract\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"changePriceDuringBilling\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"image\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"relatedImage\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"showInPos\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"productType\",\"Type\":\"varchar(10)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"softDelete\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"updatedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateUpdated\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"on update current_timestamp()\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]', 1);
INSERT INTO `tables` (`tableId`, `tableName`, `primaryKeyName`, `columns`, `status`) VALUES
(32, 'store_settings', 'storeSettingId', '[{\"Field\":\"storeSettingId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"websiteName\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"websiteLogo\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"adminEmail\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"contactMobile\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"contactEmail\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"address\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"mailJetUsername\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"mailJetPassword\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"mailJetEmail\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"mailJetName\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"mergeLogin\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"databaseBackup\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"fieldsToSendValueOnMail\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"filedsToReplaceOnMail\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"filedsToUnsetOnMails\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"hideAddEditDeleteIfNoStoreSelected\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"enableRewardPoints\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"rewardOnDiscountedProduct\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"minimumRewardPointsToReedem\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"rewardPercentOnProduct\",\"Type\":\"varchar(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"walkInCustomerId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"invoicePrefix\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"updatedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"cartAppendStyle\",\"Type\":\"varchar(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"orderTypeRequired\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"enableOrderType\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"enableTaxes\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"showStoreInfomation\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"showExtraInformtionPopup\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"showWalletBalance\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"showRewardBalance\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"showAddCustomerBottom\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"salesPersonRequired\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"showSalesPerson\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"showQuickAdd\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"restaurant\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"showModal\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"showBarcode\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"showImage\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"showManufacturers\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"showCategories\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeTerms\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"invoiceHeaderText\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"invoiceFooterText\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"defaultInvoiceTemplate\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"defaultPOTemplate\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"defaultKotTemplate\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"defaultOrderStatus\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"cancelledOrderStatus\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"runningOrderStatus\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"deductFromStock\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"startBarcodeFrom\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeClosingDate\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"maxBills\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"requiredOtpForRewardReedem\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"minRewardPointsToSendOtp\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"onProductCllickIncreasePosQuantity\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"enableLightBox\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"fetchCostInPurchase\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"enableSeatingTable\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"enableCustomerReminder\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"enableHotelRoomMode\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"checkInTime\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"printKotAndBillBoth\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"showGstBreakups\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"defaultTaxId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"defaultTaxType\",\"Type\":\"varchar(10)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"rewardPointsOnCredit\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"}]', 1),
(33, 'seating_tables', 'seatingTableId', '[{\"Field\":\"seatingTableId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"capacity\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"dateUpdated\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"on update current_timestamp()\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]', 1),
(34, 'languages', 'languageId', '[{\"Field\":\"languageId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]', 1),
(35, 'employees', 'employeeId', '[{\"Field\":\"employeeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"name\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"mobile\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"email\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"sallery\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dob\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"softDelete\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"updatedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateUpdated\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"on update current_timestamp()\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]', 1),
(36, 'payments', 'paymentId', '[{\"Field\":\"paymentId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"name\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"sortOrder\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"softDelete\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]', 1),
(37, 'store_payments', 'storePaymentId', '[{\"Field\":\"storePaymentId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"payments\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"default\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]', 1),
(38, 'order', 'orderId', '[{\"Field\":\"orderId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"sno\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"customerId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"invoicePrefix\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"name\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"email\",\"Type\":\"varchar(50)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"mobile\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"subTotal\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"tax\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"productDiscount\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"additionalCharges\",\"Type\":\"text\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"globalDiscount\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"paymentId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"paymentMethod\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"multiplePaymentData\",\"Type\":\"text\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"total\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"rewardEarned\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"rewardUsed\",\"Type\":\"varchar(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"orderType\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"checkoutType\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"runningOrder\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"kotToken\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"seatingTableId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"seatingTableHeading\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"hold\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"orderStatusId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"orderStatusHeading\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"orderProduct\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"orderTotal\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"employeeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"posComment\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"posImage\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"deliveryDate\",\"Type\":\"varchar(30)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"salesUserId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"totalItemsInCart\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"totalQuantityInCart\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"hotel\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"hotelToken\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"softDelete\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]', 1),
(39, 'order_kot', 'orderKotId', '[{\"Field\":\"orderKotId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"orderId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"kotToken\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]', 1),
(40, 'order_product', 'orderProductId', '[{\"Field\":\"orderProductId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"orderId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"productId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"heading\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"model\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"barcode\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"barcodeType\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"taxId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"taxHeading\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"taxType\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"taxPercent\",\"Type\":\"varchar(5)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"tax\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"quantity\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"discount\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"discountValue\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"rewardPoints\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"cost\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"price\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"percent\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"total\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"hsnCode\",\"Type\":\"varchar(30)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"changePriceDuringBilling\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"extraInformation\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"updatedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateModified\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"on update current_timestamp()\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"},{\"Field\":\"kotToken\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"sentToKot\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"kotViewed\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"kotViewedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"taxInclusiveValue\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"taxExclusiveValue\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"basePriceCost\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"profit\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"return\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]', 1),
(41, 'order_total', 'orderTotalId', '[{\"Field\":\"orderTotalId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"orderId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"orderTotal\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]', 1),
(42, 'additional_charges', 'additionalChargeId', '[{\"Field\":\"additionalChargeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"sortOrder\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"updatedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]', 1),
(43, 'invoice_template', 'invoiceTemplateId', '[{\"Field\":\"invoiceTemplateId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"template\",\"Type\":\"mediumtext\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"tableCode\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"loopTrCode\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"customCss\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"subTotalTrLoop\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]', 1),
(44, 'customer_ledger_reward', 'customerLedgerRewardId', '[{\"Field\":\"customerLedgerRewardId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"orderId\",\"Type\":\"int(11)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"customerId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"reward\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"type\",\"Type\":\"varchar(10)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"paymentId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"remark\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"payInOut\",\"Type\":\"varchar(10)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"softDelete\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]', 1),
(45, 'customer_ledger_wallet', 'customerLedgerId', '[{\"Field\":\"customerLedgerId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"orderId\",\"Type\":\"int(11)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"customerId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"amount\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"type\",\"Type\":\"varchar(10)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"paymentId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"remark\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"payInOut\",\"Type\":\"varchar(10)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"softDelete\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]', 1),
(46, 'order_status', 'orderStatusId', '[{\"Field\":\"orderStatusId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]', 1),
(47, 'purchases', 'purchaseId', '[{\"Field\":\"purchaseId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"sno\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"heading\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"refrence\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"vendorId\",\"Type\":\"varchar(11)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"date\",\"Type\":\"varchar(20)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"billType\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"products\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"quantity\",\"Type\":\"float\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"comment\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"subTotal\",\"Type\":\"float\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"tax\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"total\",\"Type\":\"float\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"purchaseStatus\",\"Type\":\"varchar(1)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"softDelete\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"updatedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateUpdated\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"on update current_timestamp()\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]', 1),
(48, 'migrations', 'id', '[{\"Field\":\"id\",\"Type\":\"int(10) unsigned\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"migration\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"batch\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"}]', 1),
(49, 'personal_access_tokens', 'id', '[{\"Field\":\"id\",\"Type\":\"bigint(20) unsigned\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"tokenable_type\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"MUL\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"tokenable_id\",\"Type\":\"bigint(20) unsigned\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"name\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"token\",\"Type\":\"varchar(64)\",\"Null\":\"NO\",\"Key\":\"UNI\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"abilities\",\"Type\":\"text\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"last_used_at\",\"Type\":\"timestamp\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"created_at\",\"Type\":\"timestamp\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"updated_at\",\"Type\":\"timestamp\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"}]', 1),
(50, 'customer_pay_in_out', 'customerPayInOutId', '[{\"Field\":\"customerPayInOutId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"customerId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"amount\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"type\",\"Type\":\"varchar(10)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateUpdated\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"on update current_timestamp()\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]', 1),
(51, 'codes', 'codeId', '[{\"Field\":\"codeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"alphabat\",\"Type\":\"varchar(10)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"number\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]', 1),
(52, 'order_history', 'orderHistoryId', '[{\"Field\":\"orderHistoryId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"orderId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"orderStatusId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"comment\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]', 1),
(53, 'profit_report', 'profitReportId', '[{\"Field\":\"profitReportId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"type\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"id\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"costPrice\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"quantity\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"tax\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"taxType\",\"Type\":\"varchar(10)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"taxPercent\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"discount\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"total\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"profit\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"finalAmount\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"basePriceCost\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"}]', 1),
(54, 'comment_master', 'commentMasterId', '[{\"Field\":\"commentMasterId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"comment\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]', 1),
(55, 'popup_message', 'popupMessageId', '[{\"Field\":\"popupMessageId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"message\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]', 1),
(56, 'popup_message_list', 'popupMessageListId', '[{\"Field\":\"popupMessageListId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"message\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"viewed\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]', 1),
(57, 'reward_otp', 'rewardOtpId', '[{\"Field\":\"rewardOtpId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"customerId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"orderId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"otp\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"otpToken\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]', 1),
(58, 'reward_otp_skip_reason', 'rewardOtpSkipReasonId', '[{\"Field\":\"rewardOtpSkipReasonId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"customerId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"orderId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"reason\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"skipOtpToken\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]', 1),
(59, 'expenses', 'expenseId', '[{\"Field\":\"expenseId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"amount\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"vendorId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"expenseCategoryId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"relatedImage\",\"Type\":\"varchar(1000)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]', 1),
(60, 'expense_categories', 'expenseCategoryId', '[{\"Field\":\"expenseCategoryId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]', 1),
(61, 'hotel_rooms', 'hotelRoomId', '[{\"Field\":\"hotelRoomId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"roomNo\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"capacity\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"roomCharges\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"roomStatus\",\"Type\":\"varchar(3)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"No\",\"Extra\":\"\"},{\"Field\":\"image\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"relatedImages\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]', 1),
(62, 'order_hotel_room', 'orderHotelRoomId', '[{\"Field\":\"orderHotelRoomId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"orderId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"productId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"customerData\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"timeCheckIn\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"timeCheckOut\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateCheckIn\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateCheckOut\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"totalNoOfDays\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"hotel\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"hotelToken\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]', 1),
(63, 'product_return', 'productReturnId', '[{\"Field\":\"productReturnId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"customerId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"orderId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"productId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"quantity\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"rewardPoints\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"total\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]', 1),
(64, 'customer_amount_paid', 'customerAmountPaidId', '[{\"Field\":\"customerAmountPaidId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"orderId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"customerId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"amount\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"paymentId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"remark\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]', 1);
INSERT INTO `tables` (`tableId`, `tableName`, `primaryKeyName`, `columns`, `status`) VALUES
(65, 'purchase_orders', 'purchaseOrderId', '[{\"Field\":\"purchaseOrderId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"sno\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"heading\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"refrence\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"vendorId\",\"Type\":\"varchar(11)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"date\",\"Type\":\"varchar(20)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"billType\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"products\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"quantity\",\"Type\":\"float\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"comment\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"subTotal\",\"Type\":\"float\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"tax\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"total\",\"Type\":\"float\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"purchaseOrderStatus\",\"Type\":\"varchar(1)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"softDelete\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"updatedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateUpdated\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"on update current_timestamp()\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]', 1),
(66, 'currencies', 'currencyId', '[{\"Field\":\"currencyId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"code\",\"Type\":\"varchar(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"symbol\",\"Type\":\"varchar(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]', 1),
(67, 'testimonials', 'testimonialId', '[{\"Field\":\"testimonialId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]', 1);

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `taxId` int(11) NOT NULL,
  `heading` varchar(50) NOT NULL,
  `percent` float(11,2) NOT NULL,
  `sortOrder` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`taxId`, `heading`, `percent`, `sortOrder`, `status`) VALUES
(1, 'CGST 2.5%', 2.50, 0, 1),
(2, 'GST 5%', 5.00, 2, 1),
(3, 'GST 12%', 12.00, 3, 1),
(4, 'GST 18%', 18.00, 4, 1),
(5, 'GST 28%', 28.00, 5, 1),
(6, 'GST 3 %', 3.00, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

CREATE TABLE `templates` (
  `templateId` int(11) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `template` mediumtext NOT NULL,
  `forWhat` varchar(100) NOT NULL,
  `forWhom` varchar(10) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `templates`
--

INSERT INTO `templates` (`templateId`, `subject`, `template`, `forWhat`, `forWhom`, `status`, `dateAdded`) VALUES
(1, 'Your Amount Is Pending', '<p>Hi {NAME},</p>\n\n<p>Your Amount is pending {WALLETBALANCE} Please pay this amount as soon as possible.</p>\n\n<p>Regards {WEBSITENAME}</p>\n', 'WalletBalance', 'User', 1, '2022-05-01 20:45:05'),
(7, 'Customer Data Added/Updated', '<p>Hi {NAME},</p>\r\n\r\n<p>Customer Data has been added/updated</p>\r\n<p>{CONTENT}</p>\r\n<p>Regards {WEBSITENAME}</p>\r\n', 'CustomerAddedUpdated', 'Admin', 1, '2022-05-01 20:45:05'),
(8, 'Purchase', '<p>Hi {NAME},</p>\r\n\r\n<p>Purchase has been added/updated</p>\r\n<p>{CONTENT}</p>\r\n<p>Regards {WEBSITENAME}</p>\r\n', 'Purchase', 'Admin', 1, '2022-05-01 20:45:05'),
(9, 'Purchase Approved', '<p>Hi {NAME},</p>\r\n\r\n<p>Purchase has been approved</p>\r\n<p>{CONTENT}</p>\r\n<p>Regards {WEBSITENAME}</p>\r\n', 'PurchaseApproved', 'Admin', 1, '2022-05-01 20:45:05'),
(10, 'Purchase DisApproved', '<p>Hi {NAME},</p>\r\n\r\n<p>Purchase has been disapproved</p>\r\n<p>{CONTENT}</p>\r\n<p>Regards {WEBSITENAME}</p>\r\n', 'PurchaseDisApproved', 'Admin', 1, '2022-05-01 20:45:05'),
(11, 'Payment In/Out', '<p>Hi {NAME},</p>\r\n\r\n<p>A new payment In/Out Entry found</p>\r\n<p>{CONTENT}</p>\r\n<p>Regards {WEBSITENAME}</p>\r\n', 'PaymentInOut', 'Admin', 1, '2022-05-01 20:45:05'),
(12, 'Payment In/Out', '<p>Hi {NAME},</p>\n\n<p>A new payment In/Out Entry found</p>\n<p>{CONTENT}</p>\n<p>Regards {WEBSITENAME}</p>\n', 'PaymentInOut', 'User', 1, '2022-05-01 20:45:05');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `testimonialId` int(11) NOT NULL,
  `heading` varchar(100) NOT NULL,
  `userId` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`testimonialId`, `heading`, `userId`, `status`) VALUES
(1, 'Testing Testimonial', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `unitId` int(11) NOT NULL,
  `heading` varchar(50) NOT NULL,
  `unit` varchar(10) NOT NULL,
  `sortOrder` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`unitId`, `heading`, `unit`, `sortOrder`, `status`) VALUES
(1, 'KG', '', 0, 1),
(2, 'Gram', '', 0, 1),
(3, 'Pound', '', 0, 0),
(4, 'Litre', '', 0, 1),
(5, 'Mililiter', '', 0, 1),
(6, 'ML', '', 0, 1),
(7, 'PC', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int(11) NOT NULL,
  `userName` varchar(30) NOT NULL,
  `userEmail` varchar(100) DEFAULT 'NULL',
  `userPassword` varchar(255) DEFAULT NULL,
  `userMobile` varchar(30) NOT NULL,
  `roleId` int(11) NOT NULL,
  `superAdmin` varchar(3) NOT NULL DEFAULT 'No',
  `dataBaseName` varchar(30) NOT NULL,
  `dbUser` varchar(100) NOT NULL,
  `dbPass` varchar(100) NOT NULL,
  `loginToken` varchar(255) NOT NULL,
  `storeUserId` int(11) NOT NULL,
  `storeId` int(11) NOT NULL,
  `insertedBy` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `userName`, `userEmail`, `userPassword`, `userMobile`, `roleId`, `superAdmin`, `dataBaseName`, `dbUser`, `dbPass`, `loginToken`, `storeUserId`, `storeId`, `insertedBy`, `status`) VALUES
(1, 'admin', 'admin@admin.com', 'a346bc80408d9b2a5063fd1bddb20e2d5586ec30', '8285187287', 1, 'Yes', 'ship_shop_default', 'root', '', '', 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `vendorId` int(11) NOT NULL,
  `heading` varchar(50) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gstNumber` varchar(30) NOT NULL,
  `openingBalance` int(11) NOT NULL,
  `cityId` int(11) NOT NULL,
  `stateId` int(11) NOT NULL,
  `countryId` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `storeId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `sorftDelete` int(11) NOT NULL DEFAULT 0,
  `updatedBy` int(11) NOT NULL,
  `insertedBy` int(11) NOT NULL,
  `dateUpdated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`vendorId`, `heading`, `mobile`, `email`, `gstNumber`, `openingBalance`, `cityId`, `stateId`, `countryId`, `image`, `storeId`, `userId`, `sorftDelete`, `updatedBy`, `insertedBy`, `dateUpdated`, `dateAdded`, `status`) VALUES
(1, 'Vendor 1', '8595899103', 'owner@admin.com', '22AAAAA0000A1Z5', 0, 1, 6, 1, '', 1, 1, 0, 1, 1, '2024-04-30 05:16:39', '2024-04-12 11:08:28', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `additional_charges`
--
ALTER TABLE `additional_charges`
  ADD PRIMARY KEY (`additionalChargeId`);

--
-- Indexes for table `admin_login_history`
--
ALTER TABLE `admin_login_history`
  ADD PRIMARY KEY (`adminLoginHistoryId`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categoryId`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`cityId`);

--
-- Indexes for table `codes`
--
ALTER TABLE `codes`
  ADD PRIMARY KEY (`codeId`);

--
-- Indexes for table `comment_master`
--
ALTER TABLE `comment_master`
  ADD PRIMARY KEY (`commentMasterId`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`contactId`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`countryId`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`currencyId`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerId`);

--
-- Indexes for table `customer_amount_paid`
--
ALTER TABLE `customer_amount_paid`
  ADD PRIMARY KEY (`customerAmountPaidId`);

--
-- Indexes for table `customer_group`
--
ALTER TABLE `customer_group`
  ADD PRIMARY KEY (`customerGroupId`);

--
-- Indexes for table `customer_ledger_reward`
--
ALTER TABLE `customer_ledger_reward`
  ADD PRIMARY KEY (`customerLedgerRewardId`);

--
-- Indexes for table `customer_ledger_wallet`
--
ALTER TABLE `customer_ledger_wallet`
  ADD PRIMARY KEY (`customerLedgerId`);

--
-- Indexes for table `customer_pay_in_out`
--
ALTER TABLE `customer_pay_in_out`
  ADD PRIMARY KEY (`customerPayInOutId`);

--
-- Indexes for table `databasebackup`
--
ALTER TABLE `databasebackup`
  ADD PRIMARY KEY (`databaseBackupId`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employeeId`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`expenseId`);

--
-- Indexes for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`expenseCategoryId`);

--
-- Indexes for table `filters`
--
ALTER TABLE `filters`
  ADD PRIMARY KEY (`filterId`);

--
-- Indexes for table `filter_types`
--
ALTER TABLE `filter_types`
  ADD PRIMARY KEY (`fiterTypeId`);

--
-- Indexes for table `hotel_rooms`
--
ALTER TABLE `hotel_rooms`
  ADD PRIMARY KEY (`hotelRoomId`);

--
-- Indexes for table `image_manager`
--
ALTER TABLE `image_manager`
  ADD PRIMARY KEY (`imageManagerId`);

--
-- Indexes for table `inner_banner`
--
ALTER TABLE `inner_banner`
  ADD PRIMARY KEY (`innerBannerId`);

--
-- Indexes for table `invoice_template`
--
ALTER TABLE `invoice_template`
  ADD PRIMARY KEY (`invoiceTemplateId`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`languageId`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`manufacturerId`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`menuId`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`messageId`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`moduleId`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`orderId`);

--
-- Indexes for table `order_history`
--
ALTER TABLE `order_history`
  ADD PRIMARY KEY (`orderHistoryId`);

--
-- Indexes for table `order_hotel_room`
--
ALTER TABLE `order_hotel_room`
  ADD PRIMARY KEY (`orderHotelRoomId`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`orderProductId`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`orderStatusId`);

--
-- Indexes for table `order_total`
--
ALTER TABLE `order_total`
  ADD PRIMARY KEY (`orderTotalId`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`pageId`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`paymentId`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `popup_message`
--
ALTER TABLE `popup_message`
  ADD PRIMARY KEY (`popupMessageId`);

--
-- Indexes for table `popup_message_list`
--
ALTER TABLE `popup_message_list`
  ADD PRIMARY KEY (`popupMessageListId`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productId`);

--
-- Indexes for table `product_return`
--
ALTER TABLE `product_return`
  ADD PRIMARY KEY (`productReturnId`);

--
-- Indexes for table `profit_report`
--
ALTER TABLE `profit_report`
  ADD PRIMARY KEY (`profitReportId`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`purchaseId`);

--
-- Indexes for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  ADD PRIMARY KEY (`purchaseOrderId`);

--
-- Indexes for table `reward_otp`
--
ALTER TABLE `reward_otp`
  ADD PRIMARY KEY (`rewardOtpId`);

--
-- Indexes for table `reward_otp_skip_reason`
--
ALTER TABLE `reward_otp_skip_reason`
  ADD PRIMARY KEY (`rewardOtpSkipReasonId`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`roleId`);

--
-- Indexes for table `seating_tables`
--
ALTER TABLE `seating_tables`
  ADD PRIMARY KEY (`seatingTableId`);

--
-- Indexes for table `seo`
--
ALTER TABLE `seo`
  ADD PRIMARY KEY (`seoId`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`settingId`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`stateId`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`storeId`);

--
-- Indexes for table `store_payments`
--
ALTER TABLE `store_payments`
  ADD PRIMARY KEY (`storePaymentId`);

--
-- Indexes for table `store_settings`
--
ALTER TABLE `store_settings`
  ADD PRIMARY KEY (`storeSettingId`);

--
-- Indexes for table `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`tableId`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`taxId`);

--
-- Indexes for table `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`templateId`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`testimonialId`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`unitId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`vendorId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `additional_charges`
--
ALTER TABLE `additional_charges`
  MODIFY `additionalChargeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_login_history`
--
ALTER TABLE `admin_login_history`
  MODIFY `adminLoginHistoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `cityId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `codes`
--
ALTER TABLE `codes`
  MODIFY `codeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `comment_master`
--
ALTER TABLE `comment_master`
  MODIFY `commentMasterId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `contactId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `countryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `currencyId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customerId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `customer_amount_paid`
--
ALTER TABLE `customer_amount_paid`
  MODIFY `customerAmountPaidId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `customer_group`
--
ALTER TABLE `customer_group`
  MODIFY `customerGroupId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customer_ledger_reward`
--
ALTER TABLE `customer_ledger_reward`
  MODIFY `customerLedgerRewardId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customer_ledger_wallet`
--
ALTER TABLE `customer_ledger_wallet`
  MODIFY `customerLedgerId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer_pay_in_out`
--
ALTER TABLE `customer_pay_in_out`
  MODIFY `customerPayInOutId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `databasebackup`
--
ALTER TABLE `databasebackup`
  MODIFY `databaseBackupId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `employeeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `expenseId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `expenseCategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `filters`
--
ALTER TABLE `filters`
  MODIFY `filterId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `filter_types`
--
ALTER TABLE `filter_types`
  MODIFY `fiterTypeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hotel_rooms`
--
ALTER TABLE `hotel_rooms`
  MODIFY `hotelRoomId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `image_manager`
--
ALTER TABLE `image_manager`
  MODIFY `imageManagerId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `inner_banner`
--
ALTER TABLE `inner_banner`
  MODIFY `innerBannerId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_template`
--
ALTER TABLE `invoice_template`
  MODIFY `invoiceTemplateId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `languageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `manufacturerId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `menuId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `messageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=741;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `moduleId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `orderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `order_history`
--
ALTER TABLE `order_history`
  MODIFY `orderHistoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `order_hotel_room`
--
ALTER TABLE `order_hotel_room`
  MODIFY `orderHotelRoomId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `orderProductId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `orderStatusId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order_total`
--
ALTER TABLE `order_total`
  MODIFY `orderTotalId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `pageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `paymentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `popup_message`
--
ALTER TABLE `popup_message`
  MODIFY `popupMessageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `popup_message_list`
--
ALTER TABLE `popup_message_list`
  MODIFY `popupMessageListId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `product_return`
--
ALTER TABLE `product_return`
  MODIFY `productReturnId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `profit_report`
--
ALTER TABLE `profit_report`
  MODIFY `profitReportId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=376;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `purchaseId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  MODIFY `purchaseOrderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reward_otp`
--
ALTER TABLE `reward_otp`
  MODIFY `rewardOtpId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `reward_otp_skip_reason`
--
ALTER TABLE `reward_otp_skip_reason`
  MODIFY `rewardOtpSkipReasonId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `roleId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `seating_tables`
--
ALTER TABLE `seating_tables`
  MODIFY `seatingTableId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `seo`
--
ALTER TABLE `seo`
  MODIFY `seoId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `settingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `stateId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `storeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `store_payments`
--
ALTER TABLE `store_payments`
  MODIFY `storePaymentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `store_settings`
--
ALTER TABLE `store_settings`
  MODIFY `storeSettingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tables`
--
ALTER TABLE `tables`
  MODIFY `tableId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `taxId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `templates`
--
ALTER TABLE `templates`
  MODIFY `templateId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `testimonialId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `unitId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `vendorId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
