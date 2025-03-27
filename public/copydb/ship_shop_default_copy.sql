-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 23, 2024 at 10:32 AM
-- Server version: 8.0.36-cll-lve
-- PHP Version: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jaitaran_pos_default_copy`
--

-- --------------------------------------------------------

--
-- Table structure for table `additional_charges`
--

CREATE TABLE `additional_charges` (
  `additionalChargeId` int NOT NULL,
  `heading` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `sortOrder` int NOT NULL,
  `storeId` int NOT NULL,
  `userId` int NOT NULL,
  `updatedBy` int NOT NULL,
  `insertedBy` int NOT NULL,
  `status` int NOT NULL DEFAULT '1'
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
  `adminLoginHistoryId` int NOT NULL,
  `userId` int NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `dateAdded` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_login_history`
--

INSERT INTO `admin_login_history` (`adminLoginHistoryId`, `userId`, `status`, `dateAdded`) VALUES
(1, 2, 1, '2024-05-04 11:48:48'),
(2, 2, 1, '2024-05-04 15:44:32'),
(3, 2, 1, '2024-05-10 10:11:55'),
(4, 2, 1, '2024-05-10 12:37:01'),
(5, 2, 1, '2024-05-10 15:03:58');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categoryId` int NOT NULL,
  `heading` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `parentId` int NOT NULL,
  `storeId` int NOT NULL,
  `userId` int NOT NULL,
  `updatedBy` int NOT NULL,
  `insertedBy` int NOT NULL,
  `dateUpdated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dateAdded` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `softDelete` int NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `cityId` int NOT NULL,
  `heading` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `stateId` int NOT NULL,
  `countryId` int NOT NULL,
  `status` int NOT NULL DEFAULT '1'
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
  `codeId` int NOT NULL,
  `alphabat` varchar(10) NOT NULL,
  `number` int NOT NULL,
  `status` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `commentMasterId` int NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `storeId` int NOT NULL,
  `userId` int NOT NULL,
  `status` int NOT NULL DEFAULT '1'
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
  `contactId` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` mediumtext NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `dateAdded` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `countryId` int NOT NULL,
  `heading` varchar(100) NOT NULL,
  `sortOrder` int NOT NULL,
  `softDelete` int NOT NULL DEFAULT '0',
  `updatedBy` int NOT NULL,
  `insertedBy` int NOT NULL DEFAULT '0',
  `dateUpdated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dateAdded` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`countryId`, `heading`, `sortOrder`, `softDelete`, `updatedBy`, `insertedBy`, `dateUpdated`, `dateAdded`, `status`) VALUES
(1, 'India', 0, 0, 0, 2, '2024-02-24 07:42:09', '2024-02-24 13:12:09', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customerId` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `openingBalance` int DEFAULT '0',
  `walletBalance` int DEFAULT '0',
  `rewardPoints` int DEFAULT '0',
  `customerGroupId` int DEFAULT NULL,
  `cityId` varchar(50) DEFAULT NULL,
  `stateId` int DEFAULT NULL,
  `countryId` int DEFAULT NULL,
  `gstNo` varchar(50) NOT NULL,
  `firmName` varchar(255) NOT NULL,
  `firmAddress` varchar(255) NOT NULL,
  `storeId` int NOT NULL,
  `userId` int NOT NULL,
  `insertedBy` int NOT NULL,
  `updatedBy` int NOT NULL,
  `dateUpdated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `softDelete` int NOT NULL DEFAULT '0',
  `status` int DEFAULT '1',
  `dateAdded` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerId`, `name`, `mobile`, `email`, `openingBalance`, `walletBalance`, `rewardPoints`, `customerGroupId`, `cityId`, `stateId`, `countryId`, `gstNo`, `firmName`, `firmAddress`, `storeId`, `userId`, `insertedBy`, `updatedBy`, `dateUpdated`, `softDelete`, `status`, `dateAdded`) VALUES
(1, 'Walk In Customer', '0000000000', '', 0, 0, 660635, 1, '1', 17, 1, '', '', '', 1, 2, 2, 0, '2024-05-03 11:03:43', 0, 1, '2024-02-24 14:35:37');

-- --------------------------------------------------------

--
-- Table structure for table `customer_group`
--

CREATE TABLE `customer_group` (
  `customerGroupId` int NOT NULL,
  `heading` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `defaultDiscountPercent` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `sortOrder` int NOT NULL DEFAULT '0',
  `default` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `softDelete` int NOT NULL DEFAULT '0',
  `storeId` int NOT NULL DEFAULT '0',
  `userId` int NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '1',
  `updatedBy` int NOT NULL,
  `insertedBy` int NOT NULL DEFAULT '0',
  `dateUpdated` datetime NOT NULL,
  `dateAdded` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
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
  `customerLedgerRewardId` int NOT NULL,
  `orderId` int DEFAULT '0',
  `customerId` int NOT NULL,
  `reward` int NOT NULL,
  `type` varchar(10) DEFAULT NULL,
  `paymentId` int NOT NULL,
  `remark` varchar(500) NOT NULL,
  `payInOut` varchar(10) NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `storeId` int NOT NULL,
  `userId` int NOT NULL,
  `softDelete` int NOT NULL,
  `dateAdded` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `customer_ledger_wallet`
--

CREATE TABLE `customer_ledger_wallet` (
  `customerLedgerId` int NOT NULL,
  `orderId` int DEFAULT '0',
  `customerId` int NOT NULL,
  `amount` int NOT NULL,
  `type` varchar(10) DEFAULT NULL,
  `paymentId` int NOT NULL,
  `remark` varchar(500) NOT NULL,
  `payInOut` varchar(10) NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `storeId` int NOT NULL,
  `userId` int NOT NULL,
  `softDelete` int NOT NULL,
  `dateAdded` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `customer_pay_in_out`
--

CREATE TABLE `customer_pay_in_out` (
  `customerPayInOutId` int NOT NULL,
  `customerId` int NOT NULL,
  `amount` int NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `storeId` int NOT NULL,
  `userId` int NOT NULL,
  `insertedBy` int NOT NULL,
  `dateUpdated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dateAdded` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `databasebackup`
--

CREATE TABLE `databasebackup` (
  `databaseBackupId` int NOT NULL,
  `backUpName` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `dateAdded` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employeeId` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `mobile` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `sallery` int NOT NULL,
  `dob` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `storeId` int NOT NULL,
  `userId` int NOT NULL,
  `softDelete` int NOT NULL DEFAULT '0',
  `updatedBy` int NOT NULL,
  `insertedBy` int NOT NULL,
  `dateUpdated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dateAdded` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `expenseId` int NOT NULL,
  `heading` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `amount` int NOT NULL,
  `vendorId` int NOT NULL,
  `expenseCategoryId` int NOT NULL,
  `relatedImage` varchar(1000) COLLATE utf8mb4_general_ci NOT NULL,
  `storeId` int NOT NULL,
  `userId` int NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `dateAdded` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
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
  `expenseCategoryId` int NOT NULL,
  `heading` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `storeId` int NOT NULL,
  `userId` int NOT NULL,
  `status` int NOT NULL DEFAULT '1'
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
  `filterId` int NOT NULL,
  `filterModuleId` int NOT NULL,
  `filtertableName` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `fieldNameReadonly` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tableName` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tableFirstColumn` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tableColumn` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fieldHeading` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fieldType` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fieldName` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fieldClass` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fieldId` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fieldPlaceholder` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `selectBoxValue` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `selectBoxHtml` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `orderBy` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `whereColumn` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `sortOrder` int DEFAULT NULL,
  `lineNo` int DEFAULT NULL,
  `additionalAttributes` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `rowColumnSize` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `dateBetweenFilter` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `filterWorkingCondition` varchar(3) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'OR',
  `status` int DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `filters`
--

INSERT INTO `filters` (`filterId`, `filterModuleId`, `filtertableName`, `fieldNameReadonly`, `tableName`, `tableFirstColumn`, `tableColumn`, `fieldHeading`, `fieldType`, `fieldName`, `fieldClass`, `fieldId`, `fieldPlaceholder`, `selectBoxValue`, `selectBoxHtml`, `orderBy`, `whereColumn`, `sortOrder`, `lineNo`, `additionalAttributes`, `rowColumnSize`, `dateBetweenFilter`, `filterWorkingCondition`, `status`) VALUES
(9, 5, 'menus', 'parentId,menus', 'menus', 'menuId', 'menuHeading', 'Parent Id', 'autosuggestive', 'parentId', 'parentId select2', 'parentId', 'Parent Id', '0,>0', 'Parent,Child', '', '', 0, 1, '', '12', '', 'OR', 1);

-- --------------------------------------------------------

--
-- Table structure for table `filter_types`
--

CREATE TABLE `filter_types` (
  `fiterTypeId` int NOT NULL,
  `heading` varchar(20) NOT NULL,
  `status` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `filter_types`
--

INSERT INTO `filter_types` (`fiterTypeId`, `heading`, `status`) VALUES
(1, 'Top Filter', 1),
(2, 'Customer', 1);

-- --------------------------------------------------------

--
-- Table structure for table `image_manager`
--

CREATE TABLE `image_manager` (
  `imageManagerId` int NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `image_manager`
--

INSERT INTO `image_manager` (`imageManagerId`, `image`, `status`) VALUES
(1, 'public/assets/uploads/970564488.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `inner_banner`
--

CREATE TABLE `inner_banner` (
  `innerBannerId` int NOT NULL,
  `page` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `heading` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_template`
--

CREATE TABLE `invoice_template` (
  `invoiceTemplateId` int NOT NULL,
  `heading` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `template` mediumtext COLLATE utf8mb4_general_ci NOT NULL,
  `tableCode` text COLLATE utf8mb4_general_ci NOT NULL,
  `loopTrCode` text COLLATE utf8mb4_general_ci NOT NULL,
  `customCss` text COLLATE utf8mb4_general_ci NOT NULL,
  `subTotalTrLoop` text COLLATE utf8mb4_general_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `invoice_template`
--

INSERT INTO `invoice_template` (`invoiceTemplateId`, `heading`, `template`, `tableCode`, `loopTrCode`, `customCss`, `subTotalTrLoop`, `status`) VALUES
(1, 'A4 Template 1', 'PHRpdGxlPnt7V0VCU0lURV9OQU1FfX08L3RpdGxlPjxtZXRhIG5hbWU9InZpZXdwb3J0IiBjb250ZW50PSJ3aWR0aD1kZXZpY2Utd2lkdGgsIGluaXRpYWwtc2NhbGU9MS4wIj48bWV0YSBjaGFyc2V0PSJVVEYtOCI+DQo8bGluayBocmVmPSJ7e1VSTH19L2JhY2tlbmQvaW52b2ljZS9hc3NldHMvY3NzL2Jvb3RzdHJhcC5taW4uY3NzIiByZWw9InN0eWxlc2hlZXQiIHR5cGU9InRleHQvY3NzIiAvPg0KPGxpbmsgaHJlZj0ie3tVUkx9fS9iYWNrZW5kL2ludm9pY2UvYXNzZXRzL2ZvbnRzL2ZvbnQtYXdlc29tZS9jc3MvZm9udC1hd2Vzb21lLm1pbi5jc3MiIHJlbD0ic3R5bGVzaGVldCIgdHlwZT0idGV4dC9jc3MiIC8+DQo8bGluayBocmVmPSJ7e1VSTH19L2JhY2tlbmQvaW52b2ljZS9hc3NldHMvaW1nL2Zhdmljb24uaWNvIiByZWw9InNob3J0Y3V0IGljb24iIHR5cGU9ImltYWdlL3gtaWNvbiIgLz4NCjxsaW5rIGNyb3Nzb3JpZ2luPSIiIGhyZWY9Imh0dHBzOi8vZm9udHMuZ3N0YXRpYy5jb20iIHJlbD0icHJlY29ubmVjdCIgLz4NCjxsaW5rIGhyZWY9Imh0dHBzOi8vZm9udHMuZ29vZ2xlYXBpcy5jb20vY3NzP2ZhbWlseT1Qb3BwaW5zOjEwMCwyMDAsMzAwLDQwMCw1MDAsNjAwLDcwMCw4MDAsOTAwIiByZWw9InN0eWxlc2hlZXQiIHR5cGU9InRleHQvY3NzIiAvPg0KPGxpbmsgaHJlZj0ie3tVUkx9fS9iYWNrZW5kL2ludm9pY2UvYXNzZXRzL2Nzcy9zdHlsZS5jc3MiIHJlbD0ic3R5bGVzaGVldCIgdHlwZT0idGV4dC9jc3MiIC8+DQo8ZGl2IGNsYXNzPSJpbnZvaWNlLTEgaW52b2ljZS1jb250ZW50Ij4NCjxkaXYgY2xhc3M9ImNvbnRhaW5lciI+DQo8ZGl2IGNsYXNzPSJyb3ciPg0KPGRpdiBjbGFzcz0iY29sLWxnLTEyIj4NCjxkaXYgY2xhc3M9Imludm9pY2UtaW5uZXIgY2xlYXJmaXgiPg0KPGRpdiBjbGFzcz0iaW52b2ljZS1pbmZvIGNsZWFyZml4IiBpZD0iaW52b2ljZV93cmFwcGVyIj4NCjxkaXYgY2xhc3M9Imludm9pY2UtaGVhZGFyIj4NCjxkaXYgY2xhc3M9InJvdyBnLTAiPg0KPGRpdiBjbGFzcz0iY29sLXNtLTYiPg0KPGRpdiBjbGFzcz0iaW52b2ljZS1sb2dvIj4NCjxkaXYgY2xhc3M9ImxvZ28iPjxpbWcgYWx0PSJsb2dvIiBzcmM9Int7VVJMfX0ve3tXRUJTSVRFX0xPR099fSIgLz48L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQoNCjxkaXYgY2xhc3M9ImNvbC1zbS02IGludm9pY2UtaWQiPg0KPGRpdiBjbGFzcz0iaW5mbyI+DQo8aDEgY2xhc3M9ImNvbG9yLXdoaXRlIGludi1oZWFkZXItMSI+SW52b2ljZTwvaDE+DQoNCjxwIGNsYXNzPSJjb2xvci13aGl0ZSBtYi0xIj5JbnZvaWNlIE51bWJlciA8c3Bhbj57e0lOVk9JQ0VfTlVNQkVSfX08L3NwYW4+PC9wPg0KDQo8cCBjbGFzcz0iY29sb3Itd2hpdGUgbWItMCI+SW52b2ljZSBEYXRlIDxzcGFuPnt7SU5WT0lDRV9EQVRFfX08L3NwYW4+PC9wPg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQoNCjxkaXYgY2xhc3M9Imludm9pY2UtdG9wIj4NCjxkaXYgY2xhc3M9InJvdyI+DQo8ZGl2IGNsYXNzPSJjb2wtc20tNiI+DQo8ZGl2IGNsYXNzPSJpbnZvaWNlLW51bWJlciBtYi0zMCI+DQo8aDQgY2xhc3M9Imludi10aXRsZS0xIj5JbnZvaWNlIFRvPC9oND4NCg0KPGgyIGNsYXNzPSJuYW1lIG1iLTEwIj57e0NVU1RPTUVSX05BTUV9fTwvaDI+DQp7e0NVU1RPTUVSX01PQklMRX19PGJyIC8+DQp7e0NVU1RPTUVSX0VNQUlMfX0NCjxwPiZuYnNwOzwvcD4NCjwvZGl2Pg0KPC9kaXY+DQoNCjxkaXYgY2xhc3M9ImNvbC1zbS02Ij4NCjxkaXYgY2xhc3M9Imludm9pY2UtbnVtYmVyIG1iLTMwIj4NCjxkaXYgY2xhc3M9Imludm9pY2UtbnVtYmVyLWlubmVyIj4NCjxoNCBjbGFzcz0iaW52LXRpdGxlLTEiPkludm9pY2UgRnJvbTwvaDQ+DQoNCjxoMiBjbGFzcz0ibmFtZSBtYi0xMCI+e3tTVE9SRV9OQU1FfX08L2gyPg0KDQo8cCBjbGFzcz0iaW52by1hZGRyLTEiPnt7U1RPUkVfQUREUkVTU319PGJyIC8+DQp7e1NUT1JFX01PQklMRX19PGJyIC8+DQp7e1NUT1JFX0VNQUlMfX08L3A+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KDQo8ZGl2IGNsYXNzPSJpbnZvaWNlLWNlbnRlciI+DQo8ZGl2IGNsYXNzPSJ0YWJsZS1yZXNwb25zaXZlIj57e1RBQkxFX0NPREV9fTwvZGl2Pg0KPC9kaXY+DQoNCjxkaXYgY2xhc3M9Imludm9pY2UtYm90dG9tIj4NCjxkaXYgY2xhc3M9InJvdyI+DQo8ZGl2IGNsYXNzPSJjb2wtbGctNiBjb2wtbWQtOCBjb2wtc20tNyI+DQo8ZGl2IGNsYXNzPSJtYi0zMCBkZWFyLWNsaWVudCI+DQo8aDMgY2xhc3M9Imludi10aXRsZS0xIj5UZXJtcyAmYW1wOyBDb25kaXRpb25zPC9oMz4NCg0KPHA+e3tTVE9SRV9URVJNU319PC9wPg0KPC9kaXY+DQo8L2Rpdj4NCg0KPGRpdiBjbGFzcz0iY29sLWxnLTYgY29sLW1kLTQgY29sLXNtLTUiPg0KPGRpdiBjbGFzcz0ibWItMzAgcGF5bWVudC1tZXRob2QiPg0KPGgzIGNsYXNzPSJpbnYtdGl0bGUtMSIgc3R5bGU9InRleHQtYWxpZ246cmlnaHQiPlBheW1lbnQgTWV0aG9kPC9oMz4NCg0KPHVsIGNsYXNzPSJwYXltZW50LW1ldGhvZC1saXN0LTEgdGV4dC0xNCI+DQoJPGxpIHN0eWxlPSJ0ZXh0LWFsaWduOnJpZ2h0O2ZvbnQtd2VpZ2h0OmJvbGQiPnt7T1JERVJfUEFZTUVOVF9NRVRIT0R9fTwvbGk+DQo8L3VsPg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQoNCjxkaXYgY2xhc3M9Imludm9pY2UtY29udGFjdCBjbGVhcmZpeCI+DQo8ZGl2IGNsYXNzPSJyb3cgZy0wIj4NCjxkaXYgY2xhc3M9ImNvbC1sZy05IGNvbC1tZC0xMSBjb2wtc20tMTIiPg0KPGRpdiBjbGFzcz0iY29udGFjdC1pbmZvIj48YSBocmVmPSJ0ZWw6KzU1LTRYWC02MzQtNzA3MSI+e3tTVE9SRV9NT0JJTEV9fTwvYT4gPGEgaHJlZj0idGVsOnt7U1RPUkVfRU1BSUx9fSI+e3tTVE9SRV9FTUFJTH19PC9hPiA8YSBjbGFzcz0ibXItMCBkLW5vbmUtNTgwIiBocmVmPSJ0ZWw6aW5mb0B0aGVtZXZlc3NlbC5jb20iPnt7U1RPUkVfQUREUkVTU319PC9hPjwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQoNCjxkaXYgY2xhc3M9Imludm9pY2UtYnRuLXNlY3Rpb24gY2xlYXJmaXggZC1wcmludC1ub25lIj48YSBjbGFzcz0iYnRuIGJ0bi1sZyBidG4tcHJpbnQiIGhyZWY9ImphdmFzY3JpcHQ6d2luZG93LnByaW50KCkiPlByaW50IEludm9pY2UgPC9hPiA8YSBjbGFzcz0iYnRuIGJ0bi1sZyBidG4tZG93bmxvYWQgYnRuLXRoZW1lIiBpZD0iaW52b2ljZV9kb3dubG9hZF9idG4iPiBEb3dubG9hZCBJbnZvaWNlIDwvYT48L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8c2NyaXB0IHNyYz0ie3tVUkx9fS9iYWNrZW5kL2ludm9pY2UvYXNzZXRzL2pzL2pxdWVyeS5taW4uanMiPjwvc2NyaXB0PjxzY3JpcHQgc3JjPSJ7e1VSTH19L2JhY2tlbmQvaW52b2ljZS9hc3NldHMvanMvanNwZGYubWluLmpzIj48L3NjcmlwdD48c2NyaXB0IHNyYz0ie3tVUkx9fS9iYWNrZW5kL2ludm9pY2UvYXNzZXRzL2pzL2h0bWwyY2FudmFzLmpzIj48L3NjcmlwdD48c2NyaXB0IHNyYz0ie3tVUkx9fS9iYWNrZW5kL2ludm9pY2UvYXNzZXRzL2pzL2FwcC5qcyI+PC9zY3JpcHQ+', 'PHRhYmxlIGNsYXNzPSJ0YWJsZSBtYi0wIHRhYmxlLXN0cmlwZWQgaW52b2ljZS10YWJsZSI+DQogICA8dGhlYWQgY2xhc3M9ImJnLWFjdGl2ZSI+DQogICAgICA8dHIgY2xhc3M9InRyIj4NCiAgICAgICAgIDx0aD5Oby48L3RoPg0KICAgICAgICAgPHRoIGNsYXNzPSJwbDAgdGV4dC1zdGFydCIgd2lkdGg9IjQwJSI+SXRlbSBEZXNjcmlwdGlvbjwvdGg+DQogICAgICAgICA8dGggY2xhc3M9InRleHQtY2VudGVyIj5QcmljZTwvdGg+DQogICAgICAgICA8dGggY2xhc3M9InRleHQtY2VudGVyIj5RdWFudGl0eTwvdGg+DQogICAgICAgICA8dGggY2xhc3M9InRleHQtY2VudGVyIj5EaXNjb3VudDwvdGg+DQogICAgICAgICA8dGggY2xhc3M9InRleHQtY2VudGVyIj5UYXg8L3RoPg0KICAgICAgICAgPHRoIGNsYXNzPSJ0ZXh0LWVuZCI+VG90YWw8L3RoPg0KICAgICAgPC90cj4NCiAgIDwvdGhlYWQ+DQogICA8dGJvZHk+DQogICAgICB7e0xPT1BfVFJfQ09ERX19DQogICAgICB7e1NVQl9UT1RBTF9UUl9MT09QfX0NCiAgIDwvdGJvZHk+DQo8L3RhYmxlPg==', 'PHRyIGNsYXNzPSJ0ciI+DQogICA8dGQ+DQogICAgICA8ZGl2IGNsYXNzPSJpdGVtLWRlc2MtMSI+PHNwYW4+e3tTTk99fTwvc3Bhbj48L2Rpdj4NCiAgIDwvdGQ+DQogICA8dGQgY2xhc3M9InBsMCIgd2lkdGg9IjQwJSI+e3tQUk9EVUNUX05BTUV9fTxkaXYgY2xhc3M9ImR4cXpremFlZnogZHhxemt6YWVment7SVZBTFVFfX0iPk1vZGVsIDoge3tQUk9EVUNUX01PREVMfX08L2Rpdj48ZGl2IGNsYXNzPSJtZm9wZnloa2ZiIG1mb3BmeWhrZmJ7e0lWQUxVRX19Ij5CYXJjb2RlIDoge3tQUk9EVUNUX0JBUkNPREV9fTwvZGl2PjxkaXYgY2xhc3M9ImpkaW9jeWdsZXIgamRpb2N5Z2xlcnt7SVZBTFVFfX0iPkV4dHJhIEluZm9ybWF0aW9uOiB7e1BST0RVQ1RfRVhUUkFfSU5GT1JNQVRJT059fTwvZGl2PjwvdGQ+DQogICA8dGQgY2xhc3M9InRleHQtY2VudGVyIHN5bWJvbCI+e3tQUk9EVUNUX1BSSUNFfX08L3RkPg0KICAgPHRkIGNsYXNzPSJ0ZXh0LWNlbnRlciAiPnt7UFJPRFVDVF9RVUFOVElUWX19PC90ZD4NCiAgIDx0ZCBjbGFzcz0idGV4dC1jZW50ZXIiPnt7UFJPRFVDVF9ESVNDT1VOVH19PGJyPjxzcGFuIGNsYXNzPSJzeW1ib2wiPnt7UFJPRFVDVF9ESVNDT1VOVF9WQUxVRX19PC9zcGFuPjwvdGQ+DQogICA8dGQgY2xhc3M9InRleHQtY2VudGVyIj57e1BST0RVQ1RfVEFYX0hFQURJTkd9fTxicj48c3BhbiBjbGFzcz0ic3ltYm9sIj57e1BST0RVQ1RfVEFYfX08L3NwYW4+PGJyPjxzcGFuPnt7UFJPRFVDVF9UQVhfVFlQRX19PC9zcGFuPjwvdGQ+DQogICA8dGQgY2xhc3M9InRleHQtZW5kIHN5bWJvbCI+PHN0cm9uZz57e1BST0RVQ1RfVE9UQUx9fTwvc3Ryb25nPjwvdGQ+DQo8L3RyPg==', 'LmR4cXpremFlZnosLm1mb3BmeWhrZmIsLmpkaW9jeWdsZXJ7DQogZm9udC1zaXplOjEycHg7DQpjb2xvcjojOTE5MTkxOw0KfQ0KIC5zeW1ib2w6OmJlZm9yZSB7DQogICAgICAgICBjb250ZW50OiAi4oK5IjsNCiAgICAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jazsNCiAgICAgICAgIG1hcmdpbi1yaWdodDogMnB4Ow0KICAgICAgICAgfQ0KLmNjZ2pkcnF6cmJfdG90YWwgdGR7DQpmb250LXNpemU6MTdweCAhaW1wb3J0YW50Ow0KfQ==', 'PHRyIGNsYXNzPSJ0cjIgY2NnamRycXpyYl97e0tFWUNMQVNTfX0iPg0KPHRkPjwvdGQ+DQo8dGQ+PC90ZD4NCiAgIDx0ZCBjbGFzcz0idGV4dC1yaWdodCIgY29sc3Bhbj0iMiI+PHN0cm9uZz57e0tFWX19PC9zdHJvbmc+PC90ZD4NCiAgIDx0ZCBjbGFzcz0idGV4dC1lbmQiIGNvbHNwYW49IjMiPjxzdHJvbmc+e3tWQUxVRX19PC9zdHJvbmc+PC90ZD4NCjwvdHI+', 1),
(2, 'Thermal Invoice 1', 'PG1ldGEgaHR0cC1lcXVpdj0iQ29udGVudC1UeXBlIiBjb250ZW50PSJ0ZXh0L2h0bWw7IGNoYXJzZXQ9VVRGLTgiPjx0aXRsZT57e1dFQlNJVEVfTkFNRX19PC90aXRsZT4NCjxsaW5rIGhyZWY9Int7VVJMfX0vYmFja2VuZC9pbnZvaWNlL3RoZXJtYWwvYm9vdHN0cmFwLm1pbi5jc3MiIHJlbD0ic3R5bGVzaGVldCIgdHlwZT0idGV4dC9jc3MiIC8+DQo8bGluayBocmVmPSJ7e1VSTH19L2JhY2tlbmQvaW52b2ljZS90aGVybWFsL3NpemVfNTZtbS5jc3MiIG1lZGlhPSJhbGwiIHJlbD0ic3R5bGVzaGVldCIgLz4NCjxsaW5rIGhyZWY9Int7VVJMfX0vYmFja2VuZC9pbnZvaWNlL3RoZXJtYWwvcHJpbnRfYmlsbC5jc3MiIG1lZGlhPSJhbGwiIHJlbD0ic3R5bGVzaGVldCIgLz4NCjxkaXYgaWQ9IndyYXBwZXIiIHN0eWxlPSJwYWRkaW5nLXRvcDoycHgiPg0KPGRpdiBpZD0icmVjZWlwdERhdGEiPg0KPGRpdiBpZD0icmVjZWlwdC1kYXRhIj4NCjxkaXYgY2xhc3M9InRleHQtY2VudGVyIj48aW1nIHNyYz0ie3tVUkx9fS97e1dFQlNJVEVfTE9HT319IiBzdHlsZT0iaGVpZ2h0OiAyMHB4O21hcmdpbjphdXRvO2Rpc3BsYXk6YmxvY2siIC8+PC9kaXY+DQoNCjxociAvPg0KPHRhYmxlIGNsYXNzPSJ0YWJsZSB0YWJsZS1jb25kZW5zZWQiPg0KCTx0Ym9keT4NCgkJPHRyPg0KCQkJPHRkPkNsaWVudCA6IHt7Q1VTVE9NRVJfTkFNRX19PC90ZD4NCgkJCTx0ZCBhbGlnbj0icmlnaHQiPkRhdGUgOiB7e0lOVk9JQ0VfREFURX19PC90ZD4NCgkJPC90cj4NCgkJPHRyPg0KCQkJPHRkIGNvbHNwYW49IjIiPk1vYmlsZSA6IHt7Q1VTVE9NRVJfTU9CSUxFfX08L3RkPg0KCQk8L3RyPg0KCQk8dHI+DQoJCQk8dGQgY29sc3Bhbj0iMiI+UGF5bWVudCBNb2RlIDoge3tPUkRFUl9QQVlNRU5UX01FVEhPRH19PC90ZD4NCgkJPC90cj4NCgkJPHRyPg0KCQkJPHRkIGNvbHNwYW49IjIiPk9yZGVyIElkIDoge3tJTlZPSUNFX05VTUJFUn19PC90ZD4NCgkJPC90cj4NCgk8L3Rib2R5Pg0KPC90YWJsZT4NCg0KPGRpdiBjbGFzcz0iaXJfY2xlYXIiPiZuYnNwOzwvZGl2Pg0Ke3tUQUJMRV9DT0RFfX08L2Rpdj4NCg0KPGRpdiBjbGFzcz0iaXJfY2xlYXIiPiZuYnNwOzwvZGl2Pg0KPC9kaXY+DQo8aW5wdXQgb25jbGljaz0icHJpbnREaXYoJ3JlY2VpcHREYXRhJykiIHN0eWxlPSJkaXNwbGF5OmJsb2NrO21hcmdpbjphdXRvO3BhZGRpbmc6MTBweDtiYWNrZ3JvdW5kOiMzNGI0ZWI7bWFyZ2luLXRvcDoxMHB4O2JvcmRlcjowcHg7Y29sb3I6d2hpdGU7d2lkdGg6MTUwcHg7IiB0eXBlPSJidXR0b24iIHZhbHVlPSJQUklOVCIgLz48L2Rpdj4NCg==', 'PHRhYmxlIGNsYXNzPSJ0YWJsZSB0YWJsZS1jb25kZW5zZWQiIHN0eWxlPSJtYXJnaW4tdG9wOjVweCI+DQogICA8dGhlYWQ+DQogICAgICA8dHI+DQogICAgICAgICA8dGg+Tm8uPC90aD4NCiAgICAgICAgIDx0aCBjbGFzcz0icGwwIHRleHQtc3RhcnQiIHdpZHRoPSI0MCUiPkl0ZW08L3RoPg0KICAgICAgICAgPHRoIGNsYXNzPSJ0ZXh0LWNlbnRlciI+UHJpY2U8L3RoPg0KICAgICAgICAgPHRoIGNsYXNzPSJ0ZXh0LWNlbnRlciI+UXVhbnRpdHk8L3RoPg0KICAgICAgICAgPHRoIGNsYXNzPSJ0ZXh0LWNlbnRlciI+RGlzY291bnQ8L3RoPg0KICAgICAgICAgPHRoIGNsYXNzPSJ0ZXh0LWNlbnRlciI+VGF4PC90aD4NCiAgICAgICAgIDx0aCBjbGFzcz0idGV4dC1lbmQiPlRvdGFsPC90aD4NCiAgICAgIDwvdHI+DQogICA8L3RoZWFkPg0KICAgPHRib2R5Pg0KICAgICAge3tMT09QX1RSX0NPREV9fQ0KICAgICAge3tTVUJfVE9UQUxfVFJfTE9PUH19DQogICA8L3Rib2R5Pg0KPC90YWJsZT4=', 'PHRyIGNsYXNzPSJib3JkZXJVcERvd24iPg0KICAgPHRkIGNsYXNzPSJuby1ib3JkZXIgYm9yZGVyLWJvdHRvbSI+e3tTTk99fTwvdGQ+DQogICA8dGQgY2xhc3M9Im5vLWJvcmRlciBib3JkZXItYm90dG9tIj4NCiAgICAgIHt7UFJPRFVDVF9OQU1FfX0NCiAgICAgIDxkaXYgY2xhc3M9ImR4cXpremFlZnogZHhxemt6YWVment7SVZBTFVFfX0iPk1vZGVsIDoge3tQUk9EVUNUX01PREVMfX08L2Rpdj4NCiAgICAgIDxkaXYgY2xhc3M9Im1mb3BmeWhrZmIgbWZvcGZ5aGtmYnt7SVZBTFVFfX0iPkJhcmNvZGUgOiB7e1BST0RVQ1RfQkFSQ09ERX19PC9kaXY+DQogICAgICA8ZGl2IGNsYXNzPSJqZGlvY3lnbGVyIGpkaW9jeWdsZXJ7e0lWQUxVRX19Ij5FeHRyYSBJbmZvcm1hdGlvbjoge3tQUk9EVUNUX0VYVFJBX0lORk9STUFUSU9OfX08L2Rpdj4NCiAgIDwvdGQ+DQogICA8dGQgYWxpZ249InJpZ2h0IiBjbGFzcz0ibm8tYm9yZGVyIGJvcmRlci1ib3R0b20gc3ltYm9sIj57e1BST0RVQ1RfUFJJQ0V9fTwvdGQ+DQogICA8dGQgYWxpZ249InJpZ2h0IiBjbGFzcz0ibm8tYm9yZGVyIGJvcmRlci1ib3R0b20iPnt7UFJPRFVDVF9RVUFOVElUWX19PC90ZD4NCiAgIDx0ZCBhbGlnbj0icmlnaHQiIGNsYXNzPSJuby1ib3JkZXIgYm9yZGVyLWJvdHRvbSI+e3tQUk9EVUNUX0RJU0NPVU5UfX08YnI+PHNwYW4gY2xhc3M9InN5bWJvbCI+e3tQUk9EVUNUX0RJU0NPVU5UX1ZBTFVFfX08L3NwYW4+PC90ZD4NCiAgIDx0ZCBhbGlnbj0icmlnaHQiIGNsYXNzPSJuby1ib3JkZXIgYm9yZGVyLWJvdHRvbSB0ZXh0LXJpZ2h0Ij57e1BST0RVQ1RfVEFYX0hFQURJTkd9fTxicj48c3BhbiBjbGFzcz0ic3ltYm9sIj57e1BST0RVQ1RfVEFYfX08L3NwYW4+PC90ZD4NCiAgIDx0ZCBhbGlnbj0icmlnaHQiIGNsYXNzPSJuby1ib3JkZXIgYm9yZGVyLWJvdHRvbSB0ZXh0LXJpZ2h0IHN5bWJvbCI+e3tQUk9EVUNUX1RPVEFMfX08L3RkPg0KPC90cj4=', 'LmxtcXljb2djbm0gew0KICAgZm9udC1mYW1pbHk6ICdSb2JvdG8nLCBzYW5zLXNlcmlmOw0KfQ0KDQpib2R5IHsNCiAgIGZvbnQtd2VpZ2h0OiBib2xkOw0KICAgZm9udC1zaXplOiAxMnB4Ow0KICAgZm9udC1mYW1pbHk6ICdSb2JvdG8nLCBzYW5zLXNlcmlmOw0KfQ0KDQoudGFibGUgew0KICAgd2lkdGg6IDEwMCU7DQogICBtYXgtd2lkdGg6IDEwMCU7DQogICBtYXJnaW4tYm90dG9tOiAwcHg7DQp9DQoNCmgzIHsNCiAgIG1hcmdpbjogNXB4IDA7DQp9DQoNCi5oMywNCmgzIHsNCiAgIGZvbnQtc2l6ZTogMjRweDsNCn0NCg0KYiwNCnN0cm9uZyB7DQogICBmb250LXdlaWdodDogNzAwOw0KfQ0KDQp0YWJsZSB7DQogICBiYWNrZ3JvdW5kLWNvbG9yOiB0cmFuc3BhcmVudDsNCn0NCg0KdGFibGUgew0KICAgYm9yZGVyLXNwYWNpbmc6IDA7DQogICBib3JkZXItY29sbGFwc2U6IGNvbGxhcHNlOw0KfQ0KDQoudGFibGU+Y2FwdGlvbit0aGVhZD50cjpmaXJzdC1jaGlsZD50ZCwNCi50YWJsZT5jYXB0aW9uK3RoZWFkPnRyOmZpcnN0LWNoaWxkPnRoLA0KLnRhYmxlPmNvbGdyb3VwK3RoZWFkPnRyOmZpcnN0LWNoaWxkPnRkLA0KLnRhYmxlPmNvbGdyb3VwK3RoZWFkPnRyOmZpcnN0LWNoaWxkPnRoLA0KLnRhYmxlPnRoZWFkOmZpcnN0LWNoaWxkPnRyOmZpcnN0LWNoaWxkPnRkLA0KLnRhYmxlPnRoZWFkOmZpcnN0LWNoaWxkPnRyOmZpcnN0LWNoaWxkPnRoIHsNCiAgIGJvcmRlci10b3A6IDA7DQp9DQoNCi50YWJsZS1jb25kZW5zZWQ+dGJvZHk+dHI+dGQsDQoudGFibGUtY29uZGVuc2VkPnRib2R5PnRyPnRoLA0KLnRhYmxlLWNvbmRlbnNlZD50Zm9vdD50cj50ZCwNCi50YWJsZS1jb25kZW5zZWQ+dGZvb3Q+dHI+dGgsDQoudGFibGUtY29uZGVuc2VkPnRoZWFkPnRyPnRkLA0KLnRhYmxlLWNvbmRlbnNlZD50aGVhZD50cj50aCB7DQogICBwYWRkaW5nOiA1cHg7DQp9DQoNCi50YWJsZT50Ym9keT50cj50ZCwNCi50YWJsZT50Ym9keT50cj50aCwNCi50YWJsZT50Zm9vdD50cj50ZCwNCi50YWJsZT50Zm9vdD50cj50aCwNCi50YWJsZT50aGVhZD50cj50ZCwNCi50YWJsZT50aGVhZD50cj50aCB7DQogICBwYWRkaW5nOiAwcHg7DQogICBsaW5lLWhlaWdodDogMS40Mjg1NzE0MzsNCiAgIHZlcnRpY2FsLWFsaWduOiB0b3A7DQp9DQoNCnRkLA0KdGggew0KICAgcGFkZGluZzogMDsNCn0NCg0KLnRhYmxlIHRkLA0KLnRhYmxlIHRoIHsNCiAgIGJvcmRlci10b3A6IG5vbmU7DQp9DQoNCmhyIHsNCiAgIG1hcmdpbi10b3A6IDEwcHg7DQogICBtYXJnaW4tYm90dG9tOiAxMHB4Ow0KfQ0KDQouYm9yZGVyVXBEb3duIHsNCiAgIGJvcmRlci10b3A6IDFweCBzb2xpZCAjZTVlNWU1Ow0KICAgYm9yZGVyLWJvdHRvbTogMXB4IHNvbGlkICNlNWU1ZTU7DQp9DQoNCi5zeW1ib2w6OmJlZm9yZSB7DQogICBjb250ZW50OiAi4oK5IjsNCiAgIGRpc3BsYXk6IGlubGluZS1ibG9jazsNCn0=', 'PHRyIGNsYXNzPSJ0cjIgY2NnamRycXpyYl97e0tFWUNMQVNTfX0iPg0KICAgPHRkPjwvdGQ+DQogICA8dGQ+PC90ZD4NCiAgIDx0ZD48L3RkPg0KICAgPHRkIGNvbHNwYW49IjIiPjxzdHJvbmc+e3tLRVl9fTwvc3Ryb25nPjwvdGQ+DQogICA8dGQgY29sc3Bhbj0iMiIgY2xhc3M9InRleHQtcmlnaHQgc3ltYm9sIiBhbGlnbj0icmlnaHQiPjxzdHJvbmc+e3tWQUxVRX19PC9zdHJvbmc+PC90ZD4NCjwvdHI+', 1),
(3, 'KOT Template 1', 'PG1ldGEgaHR0cC1lcXVpdj0iQ29udGVudC1UeXBlIiBjb250ZW50PSJ0ZXh0L2h0bWw7IGNoYXJzZXQ9VVRGLTgiPjx0aXRsZT57e1dFQlNJVEVfTkFNRX19PC90aXRsZT4NCjxsaW5rIGhyZWY9Int7VVJMfX0vYmFja2VuZC9pbnZvaWNlL3RoZXJtYWwvYm9vdHN0cmFwLm1pbi5jc3MiIHJlbD0ic3R5bGVzaGVldCIgdHlwZT0idGV4dC9jc3MiIC8+DQo8bGluayBocmVmPSJ7e1VSTH19L2JhY2tlbmQvaW52b2ljZS90aGVybWFsL3NpemVfNTZtbS5jc3MiIG1lZGlhPSJhbGwiIHJlbD0ic3R5bGVzaGVldCIgLz4NCjxsaW5rIGhyZWY9Int7VVJMfX0vYmFja2VuZC9pbnZvaWNlL3RoZXJtYWwvcHJpbnRfYmlsbC5jc3MiIG1lZGlhPSJhbGwiIHJlbD0ic3R5bGVzaGVldCIgLz4NCjxkaXYgaWQ9IndyYXBwZXIiIHN0eWxlPSJwYWRkaW5nLXRvcDoycHgiPg0KPGRpdiBpZD0icmVjZWlwdERhdGEiPg0KPGRpdiBpZD0icmVjZWlwdC1kYXRhIj4NCjxkaXYgY2xhc3M9InRleHQtY2VudGVyIj48aW1nIHNyYz0ie3tVUkx9fS97e1dFQlNJVEVfTE9HT319IiBzdHlsZT0iaGVpZ2h0OiAyMHB4O21hcmdpbjphdXRvO2Rpc3BsYXk6YmxvY2siIC8+PC9kaXY+DQoNCjxociAvPg0KPHRhYmxlIGNsYXNzPSJ0YWJsZSB0YWJsZS1jb25kZW5zZWQiPg0KCTx0Ym9keT4NCgkJPHRyPg0KCQkJPHRkPkNsaWVudCA6IHt7Q1VTVE9NRVJfTkFNRX19PC90ZD4NCgkJCTx0ZCBhbGlnbj0icmlnaHQiPlRhYmxlOiB7e1RBQkxFTk99fTwvdGQ+DQoJCTwvdHI+DQoJCTx0cj4NCgkJCTx0ZCBjb2xzcGFuPSIyIj5PcmRlciBJZCA6IHt7SU5WT0lDRV9OVU1CRVJ9fTwvdGQ+DQoJCTwvdHI+DQoJPC90Ym9keT4NCjwvdGFibGU+DQoNCjxkaXYgY2xhc3M9ImlyX2NsZWFyIj4mbmJzcDs8L2Rpdj4NCnt7VEFCTEVfQ09ERX19PC9kaXY+DQoNCjxkaXYgY2xhc3M9ImlyX2NsZWFyIj4mbmJzcDs8L2Rpdj4NCjwvZGl2Pg0KPGlucHV0IG9uY2xpY2sgPSAid2luZG93LnByaW50KCkiICBzdHlsZT0iZGlzcGxheTpibG9jazttYXJnaW46YXV0bztwYWRkaW5nOjEwcHg7YmFja2dyb3VuZDojMzRiNGViO21hcmdpbi10b3A6MTBweDtib3JkZXI6MHB4O2NvbG9yOndoaXRlO3dpZHRoOjE1MHB4OyIgdHlwZT0iYnV0dG9uIiB2YWx1ZT0iUFJJTlQiIC8+PC9kaXY+DQo=', 'PHRhYmxlIGNsYXNzPSJ0YWJsZSB0YWJsZS1jb25kZW5zZWQiIHN0eWxlPSJtYXJnaW4tdG9wOjVweCI+DQogICA8dGhlYWQ+DQogICAgICA8dHI+DQogICAgICAgICA8dGggY2xhc3M9InRleHQtc3RhcnQiPk5vLjwvdGg+DQogICAgICAgICA8dGggY2xhc3M9InRleHQtc3RhcnQiIHdpZHRoPSI0MCUiPkl0ZW08L3RoPg0KICAgICAgICAgPHRoIGNsYXNzPSJ0ZXh0LXJpZ2h0Ij5RdWFudGl0eTwvdGg+DQogICAgICA8L3RyPg0KICAgPC90aGVhZD4NCiAgIDx0Ym9keT4NCiAgICAgIHt7TE9PUF9UUl9DT0RFfX0NCiAgICAgIHt7U1VCX1RPVEFMX1RSX0xPT1B9fQ0KICAgPC90Ym9keT4NCjwvdGFibGU+', 'PHRyIGNsYXNzPSJib3JkZXJVcERvd24iPg0KICAgPHRkIGNsYXNzPSJuby1ib3JkZXIgYm9yZGVyLWJvdHRvbSI+e3tTTk99fTwvdGQ+DQogICA8dGQgY2xhc3M9Im5vLWJvcmRlciBib3JkZXItYm90dG9tIj4NCiAgICAgIHt7UFJPRFVDVF9OQU1FfX0NCiAgICAgIDxkaXYgY2xhc3M9ImpkaW9jeWdsZXIgamRpb2N5Z2xlcnt7SVZBTFVFfX0iPkV4dHJhIEluZm9ybWF0aW9uOiB7e1BST0RVQ1RfRVhUUkFfSU5GT1JNQVRJT059fTwvZGl2Pg0KICAgPC90ZD4NCiAgIDx0ZCBhbGlnbj0icmlnaHQiIGNsYXNzPSJuby1ib3JkZXIgYm9yZGVyLWJvdHRvbSI+e3tQUk9EVUNUX1FVQU5USVRZfX08L3RkPg0KPC90cj4=', 'LmxtcXljb2djbm0gew0KICAgZm9udC1mYW1pbHk6ICdSb2JvdG8nLCBzYW5zLXNlcmlmOw0KfQ0KDQpib2R5IHsNCiAgIGZvbnQtd2VpZ2h0OiBib2xkOw0KICAgZm9udC1zaXplOiAxMnB4Ow0KICAgZm9udC1mYW1pbHk6ICdSb2JvdG8nLCBzYW5zLXNlcmlmOw0KfQ0KDQoudGFibGUgew0KICAgd2lkdGg6IDEwMCU7DQogICBtYXgtd2lkdGg6IDEwMCU7DQogICBtYXJnaW4tYm90dG9tOiAwcHg7DQp9DQoNCmgzIHsNCiAgIG1hcmdpbjogNXB4IDA7DQp9DQoNCi5oMywNCmgzIHsNCiAgIGZvbnQtc2l6ZTogMjRweDsNCn0NCg0KYiwNCnN0cm9uZyB7DQogICBmb250LXdlaWdodDogNzAwOw0KfQ0KDQp0YWJsZSB7DQogICBiYWNrZ3JvdW5kLWNvbG9yOiB0cmFuc3BhcmVudDsNCn0NCg0KdGFibGUgew0KICAgYm9yZGVyLXNwYWNpbmc6IDA7DQogICBib3JkZXItY29sbGFwc2U6IGNvbGxhcHNlOw0KfQ0KDQoudGFibGU+Y2FwdGlvbit0aGVhZD50cjpmaXJzdC1jaGlsZD50ZCwNCi50YWJsZT5jYXB0aW9uK3RoZWFkPnRyOmZpcnN0LWNoaWxkPnRoLA0KLnRhYmxlPmNvbGdyb3VwK3RoZWFkPnRyOmZpcnN0LWNoaWxkPnRkLA0KLnRhYmxlPmNvbGdyb3VwK3RoZWFkPnRyOmZpcnN0LWNoaWxkPnRoLA0KLnRhYmxlPnRoZWFkOmZpcnN0LWNoaWxkPnRyOmZpcnN0LWNoaWxkPnRkLA0KLnRhYmxlPnRoZWFkOmZpcnN0LWNoaWxkPnRyOmZpcnN0LWNoaWxkPnRoIHsNCiAgIGJvcmRlci10b3A6IDA7DQp9DQoNCi50YWJsZS1jb25kZW5zZWQ+dGJvZHk+dHI+dGQsDQoudGFibGUtY29uZGVuc2VkPnRib2R5PnRyPnRoLA0KLnRhYmxlLWNvbmRlbnNlZD50Zm9vdD50cj50ZCwNCi50YWJsZS1jb25kZW5zZWQ+dGZvb3Q+dHI+dGgsDQoudGFibGUtY29uZGVuc2VkPnRoZWFkPnRyPnRkLA0KLnRhYmxlLWNvbmRlbnNlZD50aGVhZD50cj50aCB7DQogICBwYWRkaW5nOiA1cHg7DQp9DQoNCi50YWJsZT50Ym9keT50cj50ZCwNCi50YWJsZT50Ym9keT50cj50aCwNCi50YWJsZT50Zm9vdD50cj50ZCwNCi50YWJsZT50Zm9vdD50cj50aCwNCi50YWJsZT50aGVhZD50cj50ZCwNCi50YWJsZT50aGVhZD50cj50aCB7DQogICBwYWRkaW5nOiAwcHg7DQogICBsaW5lLWhlaWdodDogMS40Mjg1NzE0MzsNCiAgIHZlcnRpY2FsLWFsaWduOiB0b3A7DQp9DQoNCnRkLA0KdGggew0KICAgcGFkZGluZzogMDsNCn0NCg0KLnRhYmxlIHRkLA0KLnRhYmxlIHRoIHsNCiAgIGJvcmRlci10b3A6IG5vbmU7DQp9DQoNCmhyIHsNCiAgIG1hcmdpbi10b3A6IDEwcHg7DQogICBtYXJnaW4tYm90dG9tOiAxMHB4Ow0KfQ0KDQouYm9yZGVyVXBEb3duIHsNCiAgIGJvcmRlci10b3A6IDFweCBzb2xpZCAjZTVlNWU1Ow0KICAgYm9yZGVyLWJvdHRvbTogMXB4IHNvbGlkICNlNWU1ZTU7DQp9DQoNCi5zeW1ib2w6OmJlZm9yZSB7DQogICBjb250ZW50OiAi4oK5IjsNCiAgIGRpc3BsYXk6IGlubGluZS1ibG9jazsNCn0=', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `languageId` int NOT NULL,
  `heading` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1'
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
  `manufacturerId` int NOT NULL,
  `heading` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `storeId` int NOT NULL,
  `userId` int NOT NULL,
  `softDelete` int NOT NULL DEFAULT '0',
  `dateUpdated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dateAdded` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

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
  `menuId` int NOT NULL,
  `menuHeading` varchar(100) NOT NULL,
  `link` varchar(100) DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `moduleId` int NOT NULL,
  `parentId` int NOT NULL DEFAULT '0',
  `sortOrder` int DEFAULT '0',
  `roleId` varchar(30) NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `dateAdded` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dateUpdated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `insertedBy` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

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
(19, 'Image Manager', '', '', 11, 8, 100, '[\"1\",\"2\",\"3\"]', 0, '2024-02-09 11:09:25', '2024-05-04 12:10:37', 1),
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
(39, 'Products', NULL, '', 24, 74, 100, '[\"1\",\"2\",\"3\"]', 1, '2024-02-24 15:17:24', '2024-05-04 10:21:01', 2),
(40, 'Sale Pos', '', NULL, 0, 0, 1, '[\"1\",\"2\",\"3\"]', 1, '2024-02-24 15:35:22', '2024-05-18 09:20:33', 1),
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
(62, 'Pos New Users', 'pos-users', NULL, 0, 5, 100, '[\"1\"]', 0, '2024-04-08 09:24:51', '2024-05-04 12:38:16', 1),
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
(75, 'Language Words', 'language-message', NULL, 0, 2, 0, '[\"1\",\"2\"]', 1, '2024-05-10 16:38:53', '2024-05-10 11:08:53', 1);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `messageId` int NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `hindi` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `english` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`messageId`, `message`, `hindi`, `english`, `status`) VALUES
(1, 'Thank you for your enquiry. We will contact you as soon as possible.', NULL, NULL, 1),
(2, 'Thank you for your comment.', NULL, NULL, 1),
(3, 'Your profile has been updated successfully.', NULL, NULL, 1),
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
(640, 'Codes', NULL, NULL, 1),
(641, 'Cities', NULL, NULL, 1),
(642, '2024-04-13,2024-04-20,2024-04-27', NULL, NULL, 1),
(643, 'Multiple Payment Method', NULL, NULL, 1),
(644, 'Credit Payment Method', NULL, NULL, 1),
(645, 'Return Payment Method', NULL, NULL, 1),
(646, 'Wallet Payment Method', NULL, NULL, 1),
(647, '2024-04-13,2024-04-20,2024-04-27', NULL, NULL, 1),
(648, '2024-04-13,2024-04-20,2024-04-27', NULL, NULL, 1),
(649, 'Max Bills', NULL, NULL, 1),
(650, 'Required Otp For Reward Reedem', NULL, NULL, 1),
(651, 'Min Reward Points To Send Otp', NULL, NULL, 1),
(652, 'On Product Cllick Increase Pos Quantity', NULL, NULL, 1),
(653, 'Enable Light Box', NULL, NULL, 1),
(654, 'Fetch Cost In Purchase', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `moduleId` int NOT NULL,
  `moduleName` varchar(100) NOT NULL,
  `moduleTable` varchar(100) NOT NULL,
  `moduleFirstColumn` varchar(100) NOT NULL,
  `pageHeading` varchar(100) NOT NULL,
  `moduleData` mediumtext,
  `parentMenu` varchar(30) NOT NULL,
  `sortOrder` int DEFAULT '0',
  `hideAdd` int NOT NULL DEFAULT '0',
  `hideEdit` int NOT NULL DEFAULT '0',
  `hideDelete` int NOT NULL DEFAULT '0',
  `hideAction` int NOT NULL DEFAULT '0',
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
  `status` int DEFAULT '1',
  `insertedBy` int DEFAULT '1',
  `dateAdded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`moduleId`, `moduleName`, `moduleTable`, `moduleFirstColumn`, `pageHeading`, `moduleData`, `parentMenu`, `sortOrder`, `hideAdd`, `hideEdit`, `hideDelete`, `hideAction`, `addButtonText`, `copyButtonText`, `extraButtons`, `submitCodeBefore`, `submitCodeAfter`, `extraActionOnDeleteButton`, `additionalText`, `shortCode`, `frontendRedirectPage`, `sendMailToAdmin`, `filedsToReplaceOnMail`, `filters`, `copyTable`, `dataOfColumnToSkip`, `autoIncreamentColumn`, `status`, `insertedBy`, `dateAdded`) VALUES
(1, 'Users', 'users', 'userId', 'Users', '{\"moduleId\":\"1\",\"tableName\":\"users\",\"columnName\":[\"userId\",\"userName\",\"userEmail\",\"userPassword\",\"userMobile\",\"roleId\",\"superAdmin\",\"dataBaseName\",\"dbUser\",\"dbPass\",\"loginToken\",\"storeUserId\",\"storeId\",\"insertedBy\",\"status\"],\"columnCustomName\":[\"User Id\",\"User Name\",\"User Email\",\"User Password\",\"User Mobile\",\"Role Id\",\"Super Admin\",\"Data Base Name\",\"Db User\",\"Db Pass\",\"Login Token\",\"Store User Id\",\"Store Id\",\"Inserted By\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"\",\"4\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"5\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"password\",\"text\",\"select\",\"select\",\"select\"],\"fieldHeading\":[\"User Name\",\"User Email\",\"User Password\",\"User Mobile\",\"Status\",\"Role Id\",\"Store Id\"],\"fieldSortOrder\":[\"2\",\"3\",\"4\",\"5\",\"8\",\"6\",\"7\"],\"fieldColumn\":[\"6\",\"6\",\"6\",\"6\",\"12\",\"6\",\"6\"],\"fieldColumnName\":[\"userName\",\"userEmail\",\"userPassword\",\"userMobile\",\"status\",\"roleId\",\"storeId\"],\"fieldName\":[\"userName\",\"userEmail\",\"userPassword\",\"userMobile\",\"status\",\"roleId\",\"storeId\"],\"fieldId\":[\"userName\",\"userEmail\",\"userPassword\",\"userMobile\",\"status\",\"roleId\",\"storeId\"],\"fieldClass\":[\"userName\",\"userEmail\",\"userPassword\",\"userMobile\",\"status\",\"roleId\",\"storeId\"],\"fieldPlaceHolder\":[\"User Name\",\"User Email\",\"User Password\",\"User Mobile\",\"Status\",\"Role Id\",\"Store Id\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"1\",\"0\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"required\",\"required\",\"required\",\"\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"notRequiredInEdit\",\"\",\"\",\"removePleaseSelect\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\",\"Enable,Disable\",\"\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\",\"1,0\",\"\",\"\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\",\"\",\"roles\",\"stores\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\",\"\",\"roleId\",\"storeId\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\",\"\",\"heading\",\"name,tagline\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"\",\"null\",\"\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"userName\",\"userEmail\",\"userPassword\",\"userMobile\",\"status\",\"roleId\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"]}', '5', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '{{$controller::moduleShortCode(1)}}', '', 'No', '', '', 'No', '', '', 1, 1, '2022-03-25 05:19:04'),
(2, 'Settings', 'settings', 'settingId', 'Settings', '{\"moduleId\":\"2\",\"tableName\":\"settings\",\"columnName\":[\"settingId\",\"websiteName\",\"websiteLogo\",\"allowedImageSize\",\"allowedFileSize\",\"metaTitle\",\"metaKeyword\",\"metaDescription\",\"adminEmail\",\"contactMobile\",\"contactEmail\",\"address\",\"mailJetUsername\",\"mailJetPassword\",\"mailjetEmail\",\"mailjetName\",\"facebook\",\"twitter\",\"linkedin\",\"instagram\",\"mergeLogin\",\"databaseBackup\",\"fieldsToSendValueOnMail\",\"filedsToReplaceOnMail\",\"filedsToUnsetOnMails\",\"hideAddEditDeleteIfNoStoreSelected\",\"multiplePaymentMethod\",\"creditPaymentMethod\",\"returnPaymentMethod\",\"walletPaymentMethod\",\"gstApi\",\"status\"],\"columnCustomName\":[\"Setting Id\",\"Website Name\",\"Website Logo\",\"Allowed Image Size\",\"Allowed File Size\",\"Meta Tags\",\"Meta Description\",\"Meta Keywords\",\"Admin Email\",\"Contact Mobile\",\"Contact Email\",\"Address\",\"Mail Jet Username\",\"Mail Jet Password\",\"Mailjet Email\",\"Mailjet Name\",\"Facebook\",\"Twitter\",\"Linkedin\",\"Instagram\",\"Merge Login\",\"Database Backup\",\"Fields To Send Value On Mail\",\"Fileds To Replace On Mail\",\"Fileds To Unset On Mails\",\"Hide Add Edit Delete If No Store Selected\",\"Multiple Payment Method\",\"Credit Payment Method\",\"Return Payment Method\",\"Wallet Payment Method\",\"Gst Api\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"type\":[\"\",\"\",\"image\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"3\",\"2\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"file\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"select\",\"select\",\"text\",\"text\",\"select\",\"select\",\"select\",\"select\",\"text\"],\"fieldHeading\":[\"Website Name\",\"Website Logo\",\"Allowed Image Size\",\"Allowed File Size\",\"Meta Tags\",\"Meta Description\",\"Meta Keywords\",\"Admin Email\",\"Contact Mobile\",\"Contact Email\",\"Address\",\"Mail Jet Username\",\"Mail Jet Password\",\"Facebook\",\"Twitter\",\"Linkedin\",\"Instagram\",\"Status\",\"Merge Login\",\"Mailjet Email\",\"Mailjet Name\",\"Multiple Payment Method\",\"Credit Payment Method\",\"Return Payment Method\",\"Wallet Payment Method\",\"Gst API Key\"],\"fieldSortOrder\":[\"1\",\"50\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"15\",\"16\",\"17\",\"18\",\"19\",\"20\",\"13\",\"14\",\"21\",\"22\",\"23\",\"24\",\"25\"],\"fieldColumn\":[\"4\",\"12\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"12\",\"3\",\"3\",\"3\",\"3\",\"3\",\"3\",\"6\",\"6\",\"3\",\"3\",\"3\",\"3\",\"3\",\"3\",\"12\"],\"fieldColumnName\":[\"websiteName\",\"websiteLogo\",\"allowedImageSize\",\"allowedFileSize\",\"metaTitle\",\"metaKeyword\",\"metaDescription\",\"adminEmail\",\"contactMobile\",\"contactEmail\",\"address\",\"mailJetUsername\",\"mailJetPassword\",\"facebook\",\"twitter\",\"linkedin\",\"instagram\",\"status\",\"mergeLogin\",\"mailjetEmail\",\"mailjetName\",\"multiplePaymentMethod\",\"creditPaymentMethod\",\"returnPaymentMethod\",\"walletPaymentMethod\",\"gstApi\"],\"fieldName\":[\"websiteName\",\"websiteLogo\",\"allowedImageSize\",\"allowedFileSize\",\"metaTitle\",\"metaKeyword\",\"metaDescription\",\"adminEmail\",\"contactMobile\",\"contactEmail\",\"address\",\"mailJetUsername\",\"mailJetPassword\",\"facebook\",\"twitter\",\"linkedin\",\"instagram\",\"status\",\"mergeLogin\",\"mailjetEmail\",\"mailjetName\",\"multiplePaymentMethod\",\"creditPaymentMethod\",\"returnPaymentMethod\",\"walletPaymentMethod\",\"gstApi\"],\"fieldId\":[\"websiteName\",\"websiteLogo\",\"allowedImageSize\",\"allowedFileSize\",\"metaTitle\",\"metaKeyword\",\"metaDescription\",\"adminEmail\",\"contactMobile\",\"contactEmail\",\"address\",\"mailJetUsername\",\"mailJetPassword\",\"facebook\",\"twitter\",\"linkedin\",\"instagram\",\"status\",\"mergeLogin\",\"mailjetEmail\",\"mailjetName\",\"multiplePaymentMethod\",\"creditPaymentMethod\",\"returnPaymentMethod\",\"walletPaymentMethod\",\"gstApi\"],\"fieldClass\":[\"websiteName\",\"websiteLogo\",\"allowedImageSize\",\"allowedFileSize\",\"metaTitle\",\"metaKeyword\",\"metaDescription\",\"adminEmail\",\"contactMobile\",\"contactEmail\",\"address\",\"mailJetUsername\",\"mailJetPassword\",\"facebook\",\"twitter\",\"linkedin\",\"instagram\",\"status\",\"mergeLogin\",\"mailjetEmail\",\"mailjetName\",\"multiplePaymentMethod\",\"creditPaymentMethod\",\"returnPaymentMethod\",\"walletPaymentMethod\",\"gstApi\"],\"fieldPlaceHolder\":[\"Website Name\",\"Website Logo\",\"Allowed Image Size\",\"Allowed File Size\",\"Meta Tags\",\"Meta Description\",\"Meta Keywords\",\"Admin Email\",\"Contact Mobile\",\"Contact Email\",\"Address\",\"Mail Jet Username\",\"Mail Jet Password\",\"Facebook\",\"Twitter\",\"Linkedin\",\"Instagram\",\"Status\",\"Merge Login\",\"Mailjet Email\",\"Mailjet Name\",\"Multiple Payment Method\",\"Credit Payment Method\",\"Return Payment Method\",\"Wallet Payment Method\",\"Gst Api\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"removePleaseSelect\",\"removePleaseSelect\",\"removePleaseSelect\",\"removePleaseSelect\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"Enable,Disable\",\"No,Yes\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"1,0\",\"0,1\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"payments\",\"payments\",\"payments\",\"payments\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"paymentId\",\"paymentId\",\"paymentId\",\"paymentId\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"name\",\"name\",\"name\",\"name\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"websiteName\",\"websiteLogo\",\"allowedImageSize\",\"allowedFileSize\",\"metaTitle\",\"metaKeyword\",\"metaDescription\",\"adminEmail\",\"contactMobile\",\"contactEmail\",\"address\",\"mailJetUsername\",\"mailJetPassword\",\"facebook\",\"twitter\",\"linkedin\",\"instagram\",\"status\",\"mergeLogin\",\"mailjetEmail\",\"mailjetName\",\"multiplePaymentMethod\",\"creditPaymentMethod\",\"returnPaymentMethod\",\"walletPaymentMethod\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"]}', '2', 0, 1, 0, 1, 0, '', '', '', '', '', '', '', '', '', 'No', '', '', 'No', '', '', 1, 1, '2022-03-25 07:52:07'),
(3, 'Templates', 'templates', 'templateId', 'Templates', '{\"moduleId\":\"3\",\"tableName\":\"templates\",\"columnName\":[\"templateId\",\"subject\",\"template\",\"forWhat\",\"forWhom\",\"status\",\"dateAdded\"],\"columnCustomName\":[\"Template Id\",\"Subject\",\"Template\",\"For What\",\"For Whom\",\"Status\",\"Date Added\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"No\",\"Yes\",\"Yes\",\"Yes\",\"No\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"status\",\"\"],\"columnSortOrder\":[\"1\",\"2\",\"\",\"3\",\"4\",\"5\",\"\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"wysiwyg\",\"text\",\"select\",\"select\"],\"fieldHeading\":[\"Subject\",\"Template\",\"For What\",\"For Whom\",\"Status\"],\"fieldSortOrder\":[\"2\",\"3\",\"4\",\"5\",\"6\"],\"fieldColumn\":[\"3\",\"3\",\"3\",\"3\",\"3\"],\"fieldColumnName\":[\"subject\",\"template\",\"forWhat\",\"forWhom\",\"status\"],\"fieldName\":[\"subject\",\"template\",\"forWhat\",\"forWhom\",\"status\"],\"fieldId\":[\"subject\",\"template\",\"forWhat\",\"forWhom\",\"status\"],\"fieldClass\":[\"subject\",\"template\",\"forWhat\",\"forWhom\",\"status\"],\"fieldPlaceHolder\":[\"Subject\",\"Template\",\"For What\",\"For Whom\",\"Status\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"0\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"required\",\"\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"readonlyInEdit\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"Admin,User\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"Admin,User\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"\",\"\",\"\",\"\",\"\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"subject\",\"template\",\"forWhat\",\"forWhom\",\"status\"]}', '10', 0, 1, 0, 1, 0, '', '', '', '', '', '', '', '', '', 'No', '', '', 'No', '', '', 1, 1, '2022-05-01 11:30:12'),
(4, 'Contacts', 'contacts', 'contactId', 'Contacts', '{\"moduleId\":\"4\",\"tableName\":\"contacts\",\"columnName\":[\"contactId\",\"name\",\"email\",\"mobile\",\"subject\",\"message\",\"status\",\"dateAdded\"],\"columnCustomName\":[\"Contact Id\",\"Name\",\"Email\",\"Mobile\",\"Subject\",\"Message\",\"Status\",\"Date Added\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"Yes\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"status\",\"\"],\"columnSortOrder\":[\"1\",\"2\",\"\",\"\",\"\",\"5\",\"\",\"4\"],\"tableColumnMerge\":[\"\",\"\",\"name\",\"name\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"text\",\"text\"],\"fieldHeading\":[\"Name\",\"Email\",\"Mobile\",\"Message\"],\"fieldSortOrder\":[\"2\",\"3\",\"4\",\"6\"],\"fieldColumn\":[\"4\",\"4\",\"4\",\"12\"],\"fieldColumnName\":[\"name\",\"email\",\"mobile\",\"message\"],\"fieldName\":[\"name\",\"email\",\"mobile\",\"message\"],\"fieldId\":[\"name\",\"email\",\"mobile\",\"message\"],\"fieldClass\":[\"name\",\"email\",\"mobile\",\"message\"],\"fieldPlaceHolder\":[\"Name\",\"Email\",\"Mobile\",\"Message\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"0\",\"1\"],\"fieldValidation\":[\"required\",\"required\",\"\",\"required\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"\",\"\",\"\",\"\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"name\",\"email\",\"mobile\",\"message\"]}', '7', 0, 1, 1, 0, 0, '', '', '', '', '', '', '', '', '', 'No', '', '', 'No', '', '', 1, 1, '2022-05-01 11:39:42'),
(5, 'Menus', 'menus', 'menuId', 'Menus', '{\"moduleId\":\"5\",\"tableName\":\"menus\",\"columnName\":[\"menuId\",\"menuHeading\",\"link\",\"icon\",\"moduleId\",\"parentId\",\"sortOrder\",\"roleId\",\"status\",\"dateAdded\",\"dateUpdated\",\"insertedBy\"],\"columnCustomName\":[\"Menu Id\",\"Menu Heading\",\"Link\",\"Icon\",\"Module Id\",\"Parent Id\",\"Sort Order\",\"Role Id\",\"Status\",\"Date Added\",\"Date Updated\",\"Inserted By\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"menus\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"menuHeading\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\",\"menuId\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"No\",\"Yes\",\"Yes\",\"Yes\",\"No\",\"Yes\",\"No\",\"No\",\"No\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"sortOrderUpdateFromOutSide\",\"\",\"status\",\"\",\"\",\"\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"\",\"4\",\"5\",\"6\",\"\",\"7\",\"\",\"\",\"\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"OR\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"text\",\"select\",\"text\",\"select\",\"select\"],\"fieldHeading\":[\"Menu Heading\",\"Link\",\"Module Id\",\"Parent Id\",\"Sort Order\",\"Status\",\"Role Id (Show Menu) (Multiple)\"],\"fieldSortOrder\":[\"2\",\"3\",\"5\",\"6\",\"7\",\"8\",\"9\"],\"fieldColumn\":[\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"12\"],\"fieldColumnName\":[\"menuHeading\",\"link\",\"moduleId\",\"parentId\",\"sortOrder\",\"status\",\"roleId\"],\"fieldName\":[\"menuHeading\",\"link\",\"moduleId\",\"parentId\",\"sortOrder\",\"status\",\"roleId\"],\"fieldId\":[\"menuHeading\",\"link\",\"moduleId\",\"parentId\",\"sortOrder\",\"status\",\"roleId\"],\"fieldClass\":[\"menuHeading\",\"link\",\"moduleId\",\"parentId\",\"sortOrder\",\"status\",\"roleId\"],\"fieldPlaceHolder\":[\"Menu Heading\",\"Link\",\"Module Id\",\"Parent Id\",\"Sort Order\",\"Status\",\"Role Id\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\",\"0\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"multiple\"],\"fieldRequired\":[\"1\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"required\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\",\"\",\"Enable,Disable\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\",\"\",\"1,0\",\"\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"menus\",\"\",\"\",\"roles\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"menuId\",\"null\",\"\",\"roleId\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"menuHeading\",\"null\",\"\",\"heading\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"parentId\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"\",\"\",\"\",\"\",\"\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"0\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"menuHeading\",\"link\",\"moduleId\",\"parentId\",\"sortOrder\",\"status\",\"roleId\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"=\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"]}', '2', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 'No', '', '', 'No', '', '', 1, 1, '2022-05-01 11:39:42'),
(6, 'DatabaseBackups', 'databaseBackup', 'databaseBackupId', 'Database Backups', '{\"moduleId\":\"6\",\"tableName\":\"databaseBackup\",\"columnName\":[\"databaseBackupId\",\"backUpName\",\"type\",\"status\",\"dateAdded\"],\"columnCustomName\":[\"Database Backup Id\",\"Back Up Name\",\"Type\",\"Status\",\"Date Added\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\"],\"linkType\":[\"\",\"\",\"\",\"\",\"\"],\"status\":[\"No\",\"No\",\"No\",\"No\",\"No\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"\",\"4\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\"],\"fieldType\":[\"text\",\"text\"],\"fieldHeading\":[\"Back Up Name\",\"Type\"],\"fieldSortOrder\":[\"2\",\"3\"],\"fieldColumn\":[\"3\",\"3\"],\"fieldColumnName\":[\"backUpName\",\"type\"],\"fieldName\":[\"backUpName\",\"type\"],\"fieldId\":[\"backUpName\",\"type\"],\"fieldClass\":[\"backUpName\",\"type\"],\"fieldPlaceHolder\":[\"Back Up Name\",\"Type\"],\"fieldDefaultValue\":[\"\",\"\"],\"fieldAttribute\":[\"\",\"\"],\"fieldRequired\":[\"1\",\"0\"],\"fieldValidation\":[\"required\",\"\"],\"fieldHeadingBefore\":[\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\"],\"fieldSelectTable\":[\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\"],\"fieldOrderBy\":[\"\",\"\"],\"fieldOrderByValue\":[\"\",\"\"],\"fieldSelectValue\":[\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\"],\"fieldTableColumn\":[\"backUpName\",\"type\"]}', '2', 0, 1, 1, 0, 0, '', '', 'PGEgY2xhc3M9ImJ0biBidG4tc3VjY2VzcyIgaHJlZj0iPD9waHAgZWNobyB1cmwoJy8nKTs/Pi88P3BocCBlY2hvICRyb3dbJ2JhY2tVcE5hbWUnXTs/PiIgc3R5bGU9Im1hcmdpbi1yaWdodDoxMHB4OyIgZGF0YS12YWx1ZT0iPD9waHAgZWNobyAkcm93WydiYWNrVXBOYW1lJ107Pz4iPkRvd25sb2FkPC9hPg0KPGRpdiBjbGFzcz0iYnRuIGJ0bi1pbmZvIGFqb3V2dmNvZmYiIHN0eWxlPSJtYXJnaW4tcmlnaHQ6MTBweDsiIGRhdGEtdmFsdWU9Ijw/cGhwIGVjaG8gJHJvd1snYmFja1VwTmFtZSddOz8+Ij5SZXN0b3JlPC9kaXY+', '', '', 'PD9waHANCmlmICgkX1BPU1RbJ3RhYmxlJ109PSJkYXRhYmFzZV9iYWNrdXAiKSB7DQogICAgJGZpbGUgPSAkdGhpcy0+Z2V0RGF0YVdoZXJlKCJkYXRhYmFzZV9iYWNrdXAiLCJkYXRhYmFzZUJhY2t1cElkIiwkX1BPU1RbJ2lkJ10pOw0KICAgIHVubGluaygkZmlsZVswXVsnYmFja1VwTmFtZSddKTsNCn0NCj8+', '', '', '', 'No', '', '', 'No', '', '', 1, 1, '2022-07-13 09:30:34'),
(9, 'Pages', 'pages', 'pageId', 'Pages', '{\"moduleId\":\"9\",\"tableName\":\"pages\",\"columnName\":[\"pageId\",\"heading\",\"seo\",\"metaTitle\",\"metaKeyword\",\"metaDescription\",\"shortDescription\",\"description\",\"image\",\"status\"],\"columnCustomName\":[\"Page Id\",\"Heading\",\"Seo\",\"Meta Title\",\"Meta Keyword\",\"Meta Description\",\"Short Description\",\"Description\",\"Image\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"No\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"image\",\"status\"],\"columnSortOrder\":[\"1\",\"3\",\"\",\"\",\"\",\"\",\"\",\"\",\"2\",\"\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"fieldType\":[\"text\",\"text\",\"textarea\",\"textarea\",\"textarea\",\"wysiwyg\",\"wysiwyg\",\"file\",\"select\"],\"fieldHeading\":[\"Heading\",\"Seo\",\"Meta Title\",\"Meta Keyword\",\"Meta Description\",\"Short Description\",\"Description\",\"Image\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"9\",\"8\"],\"fieldColumn\":[\"6\",\"6\",\"4\",\"4\",\"4\",\"12\",\"12\",\"12\",\"12\"],\"fieldColumnName\":[\"heading\",\"seo\",\"metaTitle\",\"metaKeyword\",\"metaDescription\",\"shortDescription\",\"description\",\"image\",\"status\"],\"fieldName\":[\"heading\",\"seo\",\"metaTitle\",\"metaKeyword\",\"metaDescription\",\"shortDescription\",\"description\",\"image\",\"status\"],\"fieldId\":[\"heading\",\"seo\",\"metaTitle\",\"metaKeyword\",\"metaDescription\",\"shortDescription\",\"description\",\"image\",\"status\"],\"fieldClass\":[\"heading\",\"seo\",\"metaTitle\",\"metaKeyword\",\"metaDescription\",\"shortDescription\",\"description\",\"image\",\"status\"],\"fieldPlaceHolder\":[\"Heading\",\"Seo\",\"Meta Title\",\"Meta Keyword\",\"Meta Description\",\"Short Description\",\"Description\",\"Image\",\"Status\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"required\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"]}', '8', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 'No', '', '{\"filterHeading\":[\"Contacts\",\"Hello\"],\"filterTable\":[\"contacts\",\"filter_types\"],\"filterGetColumnPrimaryId\":[\"contactId\",\"fiterTypeId\"],\"filterGetColumnFetchName\":[\"name\",\"email\",\"mobile\",\"heading\",\"status\"],\"filterFieldType\":[\"text\",\"text\"],\"filterSortOrder\":[\"0\",\"0\"],\"filterOrderBy\":[\"ColumnName_DESC \",\"ColumnName_DESC \"],\"filterSelectBoxCustomValue\":[\"1,2\",\"1,2\"],\"filterFieldAttributes\":[\"contacts,contacts,contacts\",\"filter types,filter types,filter types\"],\"filterFieldAdditionalAttributes\":[\"none\",\"none\",\"remove_please_select\",\"readonly\",\"multiple\"],\"filterLineNumber\":[\"2\",\"2\"],\"filterSelectBoxCustomHtml\":[\"3,4\",\"3,4\"]}', 'No', '', '', 1, 1, '2023-05-06 02:50:49'),
(10, 'Filters', 'filters', 'filterId', 'Filters', '{\"moduleId\":\"10\",\"tableName\":\"filters\",\"columnName\":[\"filterId\",\"heading\",\"getDataFrom\",\"primaryColumn\",\"columnToFetch\",\"fieldType\",\"sortOrder\",\"orderBy\",\"selectBoxValue\",\"selectBoxHtml\",\"fieldName\",\"fieldClass\",\"fieldId\",\"fieldIplaceHolder\",\"additionalAttribute\",\"lineNumber\",\"moduleId\",\"extra\",\"status\"],\"columnCustomName\":[\"Filter Id\",\"Heading\",\"Get Data From\",\"Primary Column\",\"Column To Fetch\",\"Field Type\",\"Sort Order\",\"Order By\",\"Select Box Value\",\"Select Box Html\",\"Field Name\",\"Field Class\",\"Field Id\",\"Field Iplace Holder\",\"Additional Attribute\",\"Line Number\",\"Show On Page\",\"Extra\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"modules\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"moduleName\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"moduleId\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"sortOrderUpdateFromOutSide\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"3\",\"\",\"4\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldType\":[\"text\",\"select\",\"select\",\"select\",\"select\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"select\",\"text\",\"select\",\"select\"],\"fieldHeading\":[\"Heading\",\"Get Data From (Table Name)\",\"Primary Column (First AutoInc Column)\",\"Column To Fetch (Multiple)\",\"Field Type\",\"Sort Order\",\"Order By (ColumnName_DESC || ColumnName_ASC)\",\"Select Box Value (Custom (Comma Seprated))\",\"Select Box Html (Custom (Comma Seprated))\",\"Field Name\",\"Field Class\",\"Field Id\",\"Field Place Holder\",\"Additional Attribute (Multiple)\",\"Line Number\",\"Show On Page\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"18\"],\"fieldColumn\":[\"12\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"6\",\"6\",\"3\",\"3\",\"3\",\"3\",\"4\",\"4\",\"4\",\"12\"],\"fieldColumnName\":[\"heading\",\"getDataFrom\",\"primaryColumn\",\"columnToFetch\",\"fieldType\",\"sortOrder\",\"orderBy\",\"selectBoxValue\",\"selectBoxHtml\",\"fieldName\",\"fieldClass\",\"fieldId\",\"fieldIplaceHolder\",\"additionalAttribute\",\"lineNumber\",\"moduleId\",\"status\"],\"fieldName\":[\"heading\",\"getDataFrom\",\"primaryColumn\",\"columnToFetch\",\"fieldType\",\"sortOrder\",\"orderBy\",\"selectBoxValue\",\"selectBoxHtml\",\"fieldName\",\"fieldClass\",\"fieldId\",\"fieldIplaceHolder\",\"additionalAttribute\",\"lineNumber\",\"moduleId\",\"status\"],\"fieldId\":[\"heading\",\"getDataFrom\",\"primaryColumn\",\"columnToFetch\",\"fieldType\",\"sortOrder\",\"orderBy\",\"selectBoxValue\",\"selectBoxHtml\",\"fieldName\",\"fieldClass\",\"fieldId\",\"fieldIplaceHolder\",\"additionalAttribute\",\"lineNumber\",\"moduleId\",\"status\"],\"fieldClass\":[\"heading tbngmkyqrt\",\"getDataFrom pmivrsdqty\",\"primaryColumn pxjqttrubu\",\"columnToFetch xkwhjswscp\",\"fieldType\",\"sortOrder\",\"orderBy\",\"selectBoxValue\",\"selectBoxHtml\",\"fieldName ubliuypnsy\",\"fieldClass jonnvaijjm\",\"fieldId nippwjswoi\",\"fieldIplaceHolder whaowmndwo\",\"additionalAttribute\",\"lineNumber\",\"moduleId\",\"status\"],\"fieldPlaceHolder\":[\"Heading\",\"Get Data From\",\"Primary Column\",\"Column To Fetch\",\"Field Type\",\"Sort Order\",\"Order By\",\"Select Box Value\",\"Select Box Html\",\"Field Name\",\"Field Class\",\"Field Id\",\"Field place Holder\",\"Additional Attribute\",\"Line Number\",\"Show On Page\",\"Status\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\",\"\",\"0\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"1\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"multiple\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"multiple\",\"\",\"\",\"\"],\"fieldRequired\":[\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"removePleaseSelect\",\"removePleaseSelect\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\",\"text,select,autosuggestive,date,datetime,tel,time\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"None,Remove Please Select,Readonly,Multiple,Disabled,Autosuggestive\",\"\",\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\",\"text,select,autosuggestive,date,datetime,tel,time\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"none,please_select,readonly,multiple,disabled,autosuggestive\",\"\",\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"tables\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"modules\",\"\"],\"fieldSelectIdColumn\":[\"\",\"tableName\",\"null\",\"null\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"moduleId\",\"null\"],\"fieldSelectMainColumn\":[\"\",\"tableName\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"moduleName\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"heading\",\"getDataFrom\",\"primaryColumn\",\"columnToFetch\",\"fieldType\",\"sortOrder\",\"orderBy\",\"selectBoxValue\",\"selectBoxHtml\",\"fieldName\",\"fieldClass\",\"fieldId\",\"fieldIplaceHolder\",\"additionalAttribute\",\"lineNumber\",\"status\"]}', '13', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 'No', '', '', 'No', '', '', 1, 1, '2024-01-25 06:09:05'),
(11, 'ImageManager', 'image_manager', 'imageManagerId', 'Image Manager', '{\"moduleId\":\"11\",\"tableName\":\"image_manager\",\"columnName\":[\"imageManagerId\",\"image\",\"status\"],\"columnCustomName\":[\"Image Manager Id\",\"Image\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"No\"],\"type\":[\"\",\"image\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"\"],\"tableColumnMerge\":[\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"fieldType\":[\"file\"],\"fieldHeading\":[\"Image\"],\"fieldSortOrder\":[\"1\"],\"fieldColumn\":[\"12\"],\"fieldColumnName\":[\"image\"],\"fieldName\":[\"image\"],\"fieldId\":[\"image\"],\"fieldClass\":[\"image\"],\"fieldPlaceHolder\":[\"Image\"],\"fieldDefaultValue\":[\"\"],\"fieldAttribute\":[\"\"],\"fieldRequired\":[\"0\"],\"fieldValidation\":[\"\"],\"fieldHeadingBefore\":[\"\"],\"fieldAdditionalAttribute\":[\"\"],\"fieldSelectBoxText\":[\"\"],\"fieldSelectBoxValue\":[\"\"],\"fieldSelectTable\":[\"\"],\"fieldSelectIdColumn\":[\"\"],\"fieldSelectMainColumn\":[\"\"],\"fieldSelectWhere\":[\"\"],\"fieldOrderBy\":[\"\"],\"fieldOrderByValue\":[\"null\"],\"fieldSelectValue\":[\"\"],\"fieldSelectOperator\":[\"\"]}', '8', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 'No', '', '', 'No', '', '', 1, 1, '2024-02-09 05:39:25'),
(12, 'AdminLoginHistory', 'admin_login_history', 'adminLoginHistoryId', 'Admin Login History', '{\"moduleId\":\"12\",\"tableName\":\"admin_login_history\",\"columnName\":[\"adminLoginHistoryId\",\"userId\",\"status\",\"dateAdded\"],\"columnCustomName\":[\"Admin Login History Id\",\"User Id\",\"Status\",\"Date Added\"],\"foreignColumnShow\":[\"No\",\"Yes\",\"No\",\"No\"],\"foreignTable\":[\"\",\"users\",\"\",\"\"],\"foreignColumn\":[\"\",\"userName\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"userId\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"status\",\"\"],\"columnSortOrder\":[\"1\",\"2\",\"\",\"3\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"fieldType\":[\"select\",\"select\",\"select\",\"text\"],\"fieldHeading\":[\"Admin Login History Id\",\"User Id\",\"Status\",\"Date Added\"],\"fieldSortOrder\":[\"0\",\"1\",\"2\",\"3\"],\"fieldColumn\":[\"4\",\"4\",\"4\",\"4\"],\"fieldColumnName\":[\"adminLoginHistoryId\",\"userId\",\"status\",\"dateAdded\"],\"fieldName\":[\"adminLoginHistoryId\",\"userId\",\"status\",\"dateAdded\"],\"fieldId\":[\"adminLoginHistoryId\",\"userId\",\"status\",\"dateAdded\"],\"fieldClass\":[\"adminLoginHistoryId\",\"userId\",\"status\",\"dateAdded\"],\"fieldPlaceHolder\":[\"Admin Login History Id\",\"User Id\",\"Status\",\"Date Added\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"0\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"adminLoginHistoryId\",\"userId\",\"status\",\"dateAdded\"]}', '13', 0, 1, 0, 0, 1, '', '', '', '', '', '', '', '', '', 'No', '', '', 'No', '', '', 1, 1, '2024-02-09 07:32:57'),
(13, 'Countries', 'countries', 'countryId', 'Countries', '{\"moduleId\":\"13\",\"tableName\":\"countries\",\"columnName\":[\"countryId\",\"heading\",\"sortOrder\",\"softDelete\",\"dateAdded\",\"dateUpdated\",\"insertedBy\",\"updatedBy\",\"status\"],\"columnCustomName\":[\"Country Id\",\"Heading\",\"Sort Order\",\"Soft Delete\",\"Date Added\",\"Date Updated\",\"Inserted By\",\"Updated By\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"sortOrderUpdateFromOutSide\",\"\",\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"\",\"5\",\"\",\"\",\"\",\"4\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"select\"],\"fieldHeading\":[\"Heading\",\"Sort Order\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\",\"8\"],\"fieldColumn\":[\"12\",\"6\",\"6\"],\"fieldColumnName\":[\"heading\",\"sortOrder\",\"status\"],\"fieldName\":[\"heading\",\"sortOrder\",\"status\"],\"fieldId\":[\"heading\",\"sortOrder\",\"status\"],\"fieldClass\":[\"heading\",\"sortOrder\",\"status\"],\"fieldPlaceHolder\":[\"Heading\",\"Sort Order\",\"Status\"],\"fieldDefaultValue\":[\"\",\"0\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"0\"],\"fieldValidation\":[\"required\",\"numeric|required\",\"\"],\"fieldHeadingBefore\":[\"This is a module 13 heading\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\"],\"fieldTableColumn\":[\"heading\",\"sortOrder\",\"status\"],\"fieldSelectOperator\":[\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\"]}', '2', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 'No', '', '', 'No', '', '', 1, 1, '2024-02-09 10:33:01'),
(14, 'States', 'states', 'stateId', 'States', '{\"moduleId\":\"14\",\"tableName\":\"states\",\"columnName\":[\"stateId\",\"heading\",\"countryId\",\"sortOrder\",\"image\",\"description\",\"softDelete\",\"updatedBy\",\"dateUpdated\",\"insertedBy\",\"dateAdded\",\"status\"],\"columnCustomName\":[\"State Id\",\"Heading\",\"Country Id\",\"Sort Order\",\"Image\",\"Description\",\"Soft Delete\",\"Updated By\",\"Date Updated\",\"Inserted By\",\"Date Added\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"countries\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"heading\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"countryId\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"sortOrderUpdateFromOutSide\",\"image\",\"\",\"\",\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"1\",\"\",\"\",\"\",\"\",\"\",\"6\",\"5\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"select\",\"text\",\"select\",\"file\",\"wysiwyg\"],\"fieldHeading\":[\"Heading\",\"Country Id\",\"Sort Order\",\"Status\",\"Image\",\"Description\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"9\",\"10\",\"11\"],\"fieldColumn\":[\"12\",\"4\",\"4\",\"4\",\"12\",\"12\"],\"fieldColumnName\":[\"heading\",\"countryId\",\"sortOrder\",\"status\",\"image\",\"description\"],\"fieldName\":[\"heading\",\"countryId\",\"sortOrder\",\"status\",\"image\",\"description\"],\"fieldId\":[\"heading\",\"countryId\",\"sortOrder\",\"status\",\"image\",\"description\"],\"fieldClass\":[\"heading\",\"countryId\",\"sortOrder\",\"status\",\"image\",\"description\"],\"fieldPlaceHolder\":[\"Heading\",\"Country Id\",\"Sort Order\",\"Status\",\"Image\",\"Description\"],\"fieldDefaultValue\":[\"\",\"\",\"0\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"0\",\"1\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"required\",\"\",\"numeric|required\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"This is a module 14 heading\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"Enable,Disable\",\"\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"1,0\",\"\",\"\"],\"fieldSelectTable\":[\"\",\"countries\",\"\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"countryId\",\"null\",\"null\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"heading\",\"\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"heading\",\"countryId\",\"sortOrder\",\"status\",\"image\",\"description\"]}', '2', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '{{$controller::moduleShortCode(14)}}', 'thank-you', 'Yes', 'countryId-heading-countries', '', 'No', '', '', 1, 1, '2024-02-09 10:56:43');
INSERT INTO `modules` (`moduleId`, `moduleName`, `moduleTable`, `moduleFirstColumn`, `pageHeading`, `moduleData`, `parentMenu`, `sortOrder`, `hideAdd`, `hideEdit`, `hideDelete`, `hideAction`, `addButtonText`, `copyButtonText`, `extraButtons`, `submitCodeBefore`, `submitCodeAfter`, `extraActionOnDeleteButton`, `additionalText`, `shortCode`, `frontendRedirectPage`, `sendMailToAdmin`, `filedsToReplaceOnMail`, `filters`, `copyTable`, `dataOfColumnToSkip`, `autoIncreamentColumn`, `status`, `insertedBy`, `dateAdded`) VALUES
(15, 'CustomerGroup', 'customer_group', 'customerGroupId', 'Customer Group', '{\"moduleId\":\"15\",\"tableName\":\"customer_group\",\"columnName\":[\"customerGroupId\",\"heading\",\"defaultDiscountPercent\",\"sortOrder\",\"default\",\"updatedBy\",\"insertedBy\",\"dateUpdated\",\"dateAdded\",\"softDelete\",\"storeId\",\"userId\",\"status\"],\"columnCustomName\":[\"Customer Group Id\",\"Heading\",\"Default Discount Percent\",\"Sort Order\",\"Default\",\"Updated By\",\"Inserted By\",\"Date Updated\",\"Date Added\",\"Soft Delete\",\"Store Id\",\"User Id\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"stores\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"name\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"storeId\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"Yes\",\"Yes\",\"No\",\"Yes\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"sortOrderUpdateFromOutSide\",\"makeDefault\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"7\",\"\",\"\",\"6\",\"7\",\"\",\"5\",\"\",\"8\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"text\",\"select\",\"select\"],\"fieldHeading\":[\"Heading\",\"Default Discount Percent\",\"Sort Order\",\"Status\",\"Make Default\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"12\",\"11\"],\"fieldColumn\":[\"4\",\"4\",\"4\",\"6\",\"6\"],\"fieldColumnName\":[\"heading\",\"defaultDiscountPercent\",\"sortOrder\",\"status\",\"default\"],\"fieldName\":[\"heading\",\"defaultDiscountPercent\",\"sortOrder\",\"status\",\"default\"],\"fieldId\":[\"heading\",\"defaultDiscountPercent\",\"sortOrder\",\"status\",\"default\"],\"fieldClass\":[\"heading\",\"defaultDiscountPercent\",\"sortOrder\",\"status\",\"default\"],\"fieldPlaceHolder\":[\"Heading\",\"Default Discount Percent\",\"Sort Order\",\"Status\",\"Default\"],\"fieldDefaultValue\":[\"\",\"0\",\"0\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"0\",\"1\",\"0\",\"0\"],\"fieldValidation\":[\"required\",\"\",\"required|numeric\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"Enable,Disable\",\"No,Yes\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"1,0\",\"No,Yes\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"heading\",\"defaultDiscountPercent\",\"sortOrder\",\"status\",\"default\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\"]}', '28', 0, 0, 0, 0, 0, '', '', '', '', 'PD9waHANCiRjaGVja0RlZmF1bHQgPSBEQjo6c2VsZWN0KCJTRUxFQ1QgKiBGUk9NIGN1c3RvbWVyX2dyb3VwIFdIRVJFIHN0b3JlSWQ9JyIuU2Vzc2lvbjo6Z2V0KCJzdG9yZUlkIikuIicgQU5EIHVzZXJJZD0nIi5TZXNzaW9uOjpnZXQoInVzZXJJZCIpLiInIik7DQokY2hlY2tEZWZhdWx0ID0gJHRoaXMtPmFycmF5Q29udmVydCgkY2hlY2tEZWZhdWx0KTsNCmlmKGNvdW50KCRjaGVja0RlZmF1bHQpPT0xKXsNCglEQjo6c2VsZWN0KCJVUERBVEUgY3VzdG9tZXJfZ3JvdXAgU0VUIGBkZWZhdWx0YCA9ICdZZXMnIFdIRVJFIGN1c3RvbWVyR3JvdXBJZD0nIi4kY2hlY2tEZWZhdWx0WzBdWydjdXN0b21lckdyb3VwSWQnXS4iJyIpOw0KfWVsc2V7DQoJREI6OnNlbGVjdCgiVVBEQVRFIGN1c3RvbWVyX2dyb3VwIFNFVCBgZGVmYXVsdGAgPSAnTm8nIFdIRVJFIHN0b3JlSWQ9JyIuU2Vzc2lvbjo6Z2V0KCJzdG9yZUlkIikuIiciKTsNCglpZihpc3NldCgkYXJyYXlbJ3VwZGF0ZV9pZCddKSBBTkQgJGFycmF5Wyd1cGRhdGVfaWQnXSA+IDApew0KCQlEQjo6c2VsZWN0KCJVUERBVEUgY3VzdG9tZXJfZ3JvdXAgU0VUIGBkZWZhdWx0YCA9ICdZZXMnIFdIRVJFIGN1c3RvbWVyR3JvdXBJZD0nIi4kYXJyYXlbJ3VwZGF0ZV9pZCddLiInIik7DQoJfWVsc2V7DQoJCURCOjpzZWxlY3QoIlVQREFURSBjdXN0b21lcl9ncm91cCBTRVQgYGRlZmF1bHRgID0gJ1llcycgV0hFUkUgY3VzdG9tZXJHcm91cElkPSciLiRyZXBseVsnaW5zZXJ0X2lkJ10uIiciKTsNCgl9DQp9DQo/Pg==', '', '', '{{$controller::moduleShortCode(15)}}', '', 'No', '', '', 'No', '', '', 1, 1, '2024-02-15 03:45:11'),
(16, 'Stores', 'stores', 'storeId', 'Stores', '{\"moduleId\":\"16\",\"tableName\":\"stores\",\"columnName\":[\"storeId\",\"name\",\"tagline\",\"email\",\"mobile\",\"address\",\"cityId\",\"stateId\",\"sortOrder\",\"userId\",\"softDelete\",\"updatedBy\",\"insertedBy\",\"dateUpdated\",\"dateAdded\",\"status\"],\"columnCustomName\":[\"Store Id\",\"Name\",\"Tagline\",\"Email\",\"Mobile\",\"Address\",\"City Id\",\"State Id\",\"Sort Order\",\"User Id\",\"Soft Delete\",\"Updated By\",\"Inserted By\",\"Date Updated\",\"Date Added\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"No\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"sortOrderUpdateFromOutSide\",\"\",\"\",\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"\",\"\",\"3\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"4\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"email\",\"text\",\"textarea\",\"select\",\"select\",\"text\",\"select\"],\"fieldHeading\":[\"Name\",\"Tagline\",\"Email\",\"Mobile\",\"Address\",\"City Id\",\"State Id\",\"Sort Order\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"15\"],\"fieldColumn\":[\"6\",\"6\",\"6\",\"6\",\"12\",\"4\",\"4\",\"4\",\"12\"],\"fieldColumnName\":[\"name\",\"tagline\",\"email\",\"mobile\",\"address\",\"cityId\",\"stateId\",\"sortOrder\",\"status\"],\"fieldName\":[\"name\",\"tagline\",\"email\",\"mobile\",\"address\",\"cityId\",\"stateId\",\"sortOrder\",\"status\"],\"fieldId\":[\"name\",\"tagline\",\"email\",\"mobile\",\"address\",\"cityId\",\"stateId\",\"sortOrder\",\"status\"],\"fieldClass\":[\"name\",\"tagline\",\"email\",\"mobile\",\"address\",\"cityId\",\"stateId\",\"sortOrder\",\"status\"],\"fieldPlaceHolder\":[\"Name\",\"Tagline\",\"Email\",\"Mobile\",\"Address\",\"City Id\",\"State Id\",\"Sort Order\",\"Status\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"0\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"0\",\"0\",\"1\",\"0\",\"1\",\"1\",\"1\",\"0\"],\"fieldValidation\":[\"required\",\"\",\"\",\"required|numeric|digits:10\",\"\",\"required\",\"required\",\"required|numeric\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\",\"\",\"cities\",\"states\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\",\"\",\"cityId\",\"stateId\",\"null\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\",\"\",\"heading\",\"heading\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"name\",\"tagline\",\"email\",\"mobile\",\"address\",\"cityId\",\"stateId\",\"sortOrder\",\"status\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"]}', '30', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '{{$controller::moduleShortCode(0)}}', '', 'No', '', '', 'No', '', '', 1, 1, '2024-02-15 08:41:32'),
(17, 'Cities', 'cities', 'cityId', 'Cities', '{\"moduleId\":\"17\",\"tableName\":\"cities\",\"columnName\":[\"cityId\",\"heading\",\"stateId\",\"countryId\",\"status\"],\"columnCustomName\":[\"City Id\",\"Heading\",\"State Id\",\"Country Id\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"Yes\",\"Yes\",\"No\"],\"foreignTable\":[\"\",\"\",\"states\",\"countries\",\"\"],\"foreignColumn\":[\"\",\"\",\"heading\",\"heading\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"stateId\",\"countryId\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"5\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"select\",\"select\",\"select\"],\"fieldHeading\":[\"Heading\",\"State Id\",\"Country Id\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"4\"],\"fieldColumn\":[\"6\",\"6\",\"6\",\"6\"],\"fieldColumnName\":[\"heading\",\"stateId\",\"countryId\",\"status\"],\"fieldName\":[\"heading\",\"stateId\",\"countryId\",\"status\"],\"fieldId\":[\"heading\",\"stateId\",\"countryId\",\"status\"],\"fieldClass\":[\"heading\",\"stateId\",\"countryId\",\"status\"],\"fieldPlaceHolder\":[\"Heading\",\"State Id\",\"Country Id\",\"Status\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"1\",\"0\"],\"fieldValidation\":[\"required\",\"required\",\"required\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"states\",\"countries\",\"\"],\"fieldSelectIdColumn\":[\"\",\"stateId\",\"countryId\",\"null\"],\"fieldSelectMainColumn\":[\"\",\"heading\",\"heading\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"heading\",\"stateId\",\"countryId\",\"status\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\"]}', '2', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '{{$controller::moduleShortCode(0)}}', '', 'No', '', '', 'No', '', '', 1, 1, '2024-02-15 08:47:35'),
(18, 'Taxes', 'taxes', 'taxId', 'Taxes', '{\"moduleId\":\"18\",\"tableName\":\"taxes\",\"columnName\":[\"taxId\",\"heading\",\"percent\",\"sortOrder\",\"status\"],\"columnCustomName\":[\"Tax Id\",\"Heading\",\"Percent\",\"Sort Order\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"sortOrderUpdateFromOutSide\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"5\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"text\",\"select\"],\"fieldHeading\":[\"Heading\",\"Percent\",\"Sort Order\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"4\"],\"fieldColumn\":[\"6\",\"6\",\"6\",\"6\"],\"fieldColumnName\":[\"heading\",\"percent\",\"sortOrder\",\"status\"],\"fieldName\":[\"heading\",\"percent\",\"sortOrder\",\"status\"],\"fieldId\":[\"heading\",\"percent\",\"sortOrder\",\"status\"],\"fieldClass\":[\"heading\",\"percent\",\"sortOrder\",\"status\"],\"fieldPlaceHolder\":[\"Heading\",\"Percent\",\"Sort Order\",\"Status\"],\"fieldDefaultValue\":[\"\",\"0\",\"0\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"1\",\"0\"],\"fieldValidation\":[\"required\",\"required\",\"required\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\"]}', '2', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '{{$controller::moduleShortCode(0)}}', '', 'No', '', '', 'No', '', '', 1, 1, '2024-02-24 06:10:59'),
(19, 'Units', 'units', 'unitId', 'Units', '{\"moduleId\":\"19\",\"tableName\":\"units\",\"columnName\":[\"unitId\",\"heading\",\"unit\",\"sortOrder\",\"status\"],\"columnCustomName\":[\"Unit Id\",\"Heading\",\"Unit\",\"Sort Order\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"sortOrderUpdateFromOutSide\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"5\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"text\",\"select\"],\"fieldHeading\":[\"Heading\",\"Unit\",\"Sort Order\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"4\"],\"fieldColumn\":[\"6\",\"6\",\"6\",\"6\"],\"fieldColumnName\":[\"heading\",\"unit\",\"sortOrder\",\"status\"],\"fieldName\":[\"heading\",\"unit\",\"sortOrder\",\"status\"],\"fieldId\":[\"heading\",\"unit\",\"sortOrder\",\"status\"],\"fieldClass\":[\"heading\",\"unit\",\"sortOrder\",\"status\"],\"fieldPlaceHolder\":[\"Heading\",\"Unit\",\"Sort Order\",\"Status\"],\"fieldDefaultValue\":[\"\",\"\",\"0\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"1\",\"0\"],\"fieldValidation\":[\"required\",\"required\",\"required|numeric\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\"]}', '2', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '{{$controller::moduleShortCode(0)}}', '', 'No', '', '', 'No', '', '', 1, 1, '2024-02-24 06:23:43'),
(20, 'Vendors', 'vendors', 'vendorId', 'Vendors', '{\"moduleId\":\"20\",\"tableName\":\"vendors\",\"columnName\":[\"vendorId\",\"heading\",\"mobile\",\"email\",\"gstNumber\",\"openingBalance\",\"cityId\",\"stateId\",\"countryId\",\"image\",\"storeId\",\"userId\",\"sorftDelete\",\"updatedBy\",\"insertedBy\",\"dateUpdated\",\"dateAdded\",\"status\"],\"columnCustomName\":[\"Vendor Id\",\"Heading\",\"Mobile\",\"Email\",\"Gst Number\",\"Opening Balance\",\"City Id\",\"State Id\",\"Country Id\",\"Image\",\"Store Id\",\"User Id\",\"Sorft Delete\",\"Updated By\",\"Inserted By\",\"Date Updated\",\"Date Added\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"cities\",\"\",\"\",\"\",\"stores\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"heading\",\"\",\"\",\"\",\"name\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"cityId\",\"\",\"\",\"\",\"storeId\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"No\",\"No\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"image\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"3\",\"\",\"\",\"\",\"\",\"4\",\"\",\"\",\"2\",\"5\",\"\",\"\",\"\",\"\",\"\",\"6\",\"7\"],\"tableColumnMerge\":[\"\",\"\",\"heading\",\"\",\"heading\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"email\",\"text\",\"select\",\"select\",\"select\",\"file\",\"select\",\"text\"],\"fieldHeading\":[\"Heading\",\"Mobile\",\"Email\",\"Opening Balance\",\"City Id\",\"State Id\",\"Country Id\",\"Image\",\"Status\",\"GST Number\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"8\",\"10\",\"9\",\"7\"],\"fieldColumn\":[\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"12\",\"4\",\"4\"],\"fieldColumnName\":[\"heading\",\"mobile\",\"email\",\"openingBalance\",\"cityId\",\"stateId\",\"countryId\",\"image\",\"status\",\"gstNumber\"],\"fieldName\":[\"heading\",\"mobile\",\"email\",\"openingBalance\",\"cityId\",\"stateId\",\"countryId\",\"image\",\"status\",\"gstNumber\"],\"fieldId\":[\"heading\",\"mobile\",\"email\",\"openingBalance\",\"cityId\",\"stateId\",\"countryId\",\"image\",\"status\",\"gstNumber\"],\"fieldClass\":[\"heading\",\"mobile\",\"email\",\"openingBalance\",\"cityId\",\"stateId\",\"countryId\",\"image\",\"status\",\"gstNumber\"],\"fieldPlaceHolder\":[\"Heading\",\"Mobile\",\"Email\",\"Opening Balance\",\"City Id\",\"State Id\",\"Country Id\",\"Image\",\"Status\",\"Gst Number\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"0\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"0\",\"1\",\"1\",\"1\",\"0\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"required\",\"required|numeric|digits:10\",\"\",\"required|numeric\",\"required\",\"required\",\"\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"Enable,Disable\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"1,0\",\"\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\",\"cities\",\"states\",\"countries\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\",\"cityId\",\"stateId\",\"countryId\",\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\",\"heading\",\"heading\",\"heading\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"heading\",\"mobile\",\"email\",\"openingBalance\",\"cityId\",\"stateId\",\"countryId\",\"image\",\"status\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"]}', '30', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '{{$controller::moduleShortCode(0)}}', '', 'No', '', '', 'No', '', '', 1, 1, '2024-02-24 06:30:04'),
(21, 'Customers', 'customers', 'customerId', 'Customers', '{\"moduleId\":\"21\",\"tableName\":\"customers\",\"columnName\":[\"customerId\",\"name\",\"mobile\",\"email\",\"openingBalance\",\"walletBalance\",\"rewardPoints\",\"customerGroupId\",\"cityId\",\"stateId\",\"countryId\",\"gstNo\",\"firmName\",\"firmAddress\",\"storeId\",\"userId\",\"insertedBy\",\"updatedBy\",\"dateUpdated\",\"softDelete\",\"status\",\"dateAdded\"],\"columnCustomName\":[\"Customer Id\",\"Name\",\"Mobile\",\"Email\",\"Opening Balance\",\"Wallet Balance\",\"Reward Points\",\"Customer Group Id\",\"City Id\",\"State Id\",\"Country Id\",\"Gst No\",\"Firm Name\",\"Firm Address\",\"Store Id\",\"User Id\",\"Inserted By\",\"Updated By\",\"Date Updated\",\"Soft Delete\",\"Status\",\"Date Added\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"cities\",\"\",\"\",\"\",\"\",\"\",\"stores\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"heading\",\"\",\"\",\"\",\"\",\"\",\"name\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"cityId\",\"\",\"\",\"\",\"\",\"\",\"storeId\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"status\",\"\"],\"columnSortOrder\":[\"1\",\"2\",\"\",\"\",\"\",\"\",\"\",\"\",\"3\",\"\",\"\",\"\",\"\",\"\",\"4\",\"\",\"\",\"\",\"\",\"\",\"5\",\"6\"],\"tableColumnMerge\":[\"\",\"\",\"name\",\"name\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"email\",\"text\",\"text\",\"text\",\"select\",\"select\",\"select\",\"select\",\"select\",\"text\",\"textarea\",\"text\"],\"fieldHeading\":[\"Name\",\"Mobile\",\"Email\",\"Opening Balance\",\"Wallet Balance\",\"Reward Points\",\"Customer Group Id\",\"City Id\",\"State Id\",\"Country Id\",\"Status\",\"Gst Number\",\"Firm Address\",\"Firm Name\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"17\",\"11\",\"13\",\"12\"],\"fieldColumn\":[\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"3\",\"3\",\"3\",\"3\",\"12\",\"6\",\"12\",\"6\"],\"fieldColumnName\":[\"name\",\"mobile\",\"email\",\"openingBalance\",\"walletBalance\",\"rewardPoints\",\"customerGroupId\",\"cityId\",\"stateId\",\"countryId\",\"status\",\"gstNo\",\"firmAddress\",\"firmName\"],\"fieldName\":[\"name\",\"mobile\",\"email\",\"openingBalance\",\"walletBalance\",\"rewardPoints\",\"customerGroupId\",\"cityId\",\"stateId\",\"countryId\",\"status\",\"gstNo\",\"firmAddress\",\"firmName\"],\"fieldId\":[\"name\",\"mobile\",\"email\",\"openingBalance\",\"walletBalance\",\"rewardPoints\",\"customerGroupId\",\"cityId\",\"stateId\",\"countryId\",\"status\",\"gstNo\",\"firmAddress\",\"firmName\"],\"fieldClass\":[\"name\",\"mobile\",\"email\",\"openingBalance\",\"walletBalance\",\"rewardPoints\",\"customerGroupId\",\"cityId\",\"stateId\",\"countryId\",\"status\",\"gstNo ldqspskkad\",\"firmAddress\",\"firmName\"],\"fieldPlaceHolder\":[\"Name\",\"Mobile\",\"Email\",\"Opening Balance\",\"Wallet Balance\",\"Reward Points\",\"Customer Group Id\",\"City Id\",\"State Id\",\"Country Id\",\"Status\",\"Gst No\",\"Firm Address\",\"Firm Name\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"0\",\"0\",\"0\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"readonly\",\"readonly\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"0\",\"1\",\"1\",\"1\",\"0\",\"1\",\"1\",\"1\",\"0\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"required\",\"required|digits:10|numeric|unique:customers,mobile\",\"unique:customers,email\",\"required|numeric\",\"required|numeric\",\"numeric|required\",\"\",\"required\",\"required\",\"required\",\"\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"removePleaseSelect\",\"\",\"\",\"removePleaseSelect\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"Enable,Disable\",\"\",\"\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"1,0\",\"\",\"\",\"\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"customer_group\",\"cities\",\"states\",\"countries\",\"\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"customerGroupId\",\"cityId\",\"stateId\",\"countryId\",\"null\",\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"heading\",\"heading\",\"heading\",\"heading\",\"\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"name\",\"mobile\",\"email\",\"openingBalance\",\"walletBalance\",\"rewardPoints\",\"customerGroupId\",\"cityId\",\"stateId\",\"countryId\",\"status\",\"firmAddress\",\"firmName\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"]}', '28', 0, 0, 0, 0, 0, '', '', '', '', 'PD9waHANCmlmKGlzc2V0KCRyZXBseVsnaW5zZXJ0X2lkJ10pIEFORCAkcmVwbHlbJ2luc2VydF9pZCddID4gMCl7DQoJREI6Omluc2VydCgiSU5TRVJUIElOVE8gY3VzdG9tZXJfbGVkZ2VyX3dhbGxldCBTRVQgDQoJCWN1c3RvbWVySWQ9JyIuJHJlcGx5WydpbnNlcnRfaWQnXS4iJywNCgkJYW1vdW50PSciLiRhcnJheVsnb3BlbmluZ0JhbGFuY2UnXS4iJywNCgkJYHR5cGVgPSdvcGVuaW5nJywNCgkJc3RvcmVJZD0nIi5TZXNzaW9uOjpnZXQoInN0b3JlSWQiKS4iJywNCgkJdXNlcklkPSciLlNlc3Npb246OmdldCgidXNlcklkIikuIiciKTsNCn0NCj8+', '', '', '{{$controller::moduleShortCode(21)}}', '', 'No', '', '', 'No', '', '', 1, 1, '2024-02-24 08:31:44'),
(22, 'Manufacturers', 'manufacturers', 'manufacturerId', 'Manufacturers', '{\"moduleId\":\"22\",\"tableName\":\"manufacturers\",\"columnName\":[\"manufacturerId\",\"heading\",\"image\",\"storeId\",\"userId\",\"softDelete\",\"dateUpdated\",\"dateAdded\",\"status\"],\"columnCustomName\":[\"Manufacturer Id\",\"Heading\",\"Image\",\"Store Id\",\"User Id\",\"Soft Delete\",\"Date Updated\",\"Date Added\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"stores\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"name\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"storeId\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"Yes\",\"Yes\"],\"type\":[\"\",\"\",\"image\",\"\",\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"3\",\"2\",\"4\",\"\",\"\",\"\",\"6\",\"5\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"file\",\"select\"],\"fieldHeading\":[\"Heading\",\"Image\",\"Status\"],\"fieldSortOrder\":[\"1\",\"3\",\"2\"],\"fieldColumn\":[\"12\",\"12\",\"12\"],\"fieldColumnName\":[\"heading\",\"image\",\"status\"],\"fieldName\":[\"heading\",\"image\",\"status\"],\"fieldId\":[\"heading\",\"image\",\"status\"],\"fieldClass\":[\"heading\",\"image\",\"status\"],\"fieldPlaceHolder\":[\"Heading\",\"Image\",\"Status\"],\"fieldDefaultValue\":[\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"0\",\"0\"],\"fieldValidation\":[\"required\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\"],\"fieldTableColumn\":[\"heading\",\"image\",\"status\"],\"fieldSelectOperator\":[\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\"]}', '30', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '{{$controller::moduleShortCode(0)}}', '', 'No', '', '', 'No', '', '', 1, 1, '2024-02-24 09:30:45'),
(23, 'Categories', 'categories', 'categoryId', 'Categories', '{\"moduleId\":\"23\",\"tableName\":\"categories\",\"columnName\":[\"categoryId\",\"heading\",\"image\",\"parentId\",\"storeId\",\"userId\",\"updatedBy\",\"insertedBy\",\"dateUpdated\",\"dateAdded\",\"softDelete\",\"status\"],\"columnCustomName\":[\"Category Id\",\"Heading\",\"Image\",\"Parent Id\",\"Store Id\",\"User Id\",\"Updated By\",\"Inserted By\",\"Date Updated\",\"Date Added\",\"Soft Delete\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"categories\",\"stores\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"heading\",\"name\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"categoryId\",\"storeId\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"image\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"3\",\"2\",\"4\",\"5\",\"\",\"\",\"\",\"\",\"\",\"\",\"6\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"file\",\"select\",\"select\"],\"fieldHeading\":[\"Heading\",\"Image\",\"Parent Id\",\"Status\"],\"fieldSortOrder\":[\"1\",\"4\",\"2\",\"3\"],\"fieldColumn\":[\"4\",\"12\",\"4\",\"4\"],\"fieldColumnName\":[\"heading\",\"image\",\"parentId\",\"status\"],\"fieldName\":[\"heading\",\"image\",\"parentId\",\"status\"],\"fieldId\":[\"heading\",\"image\",\"parentId\",\"status\"],\"fieldClass\":[\"heading\",\"image\",\"parentId\",\"status\"],\"fieldPlaceHolder\":[\"Heading\",\"Image\",\"Parent Id\",\"Status\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"required\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\",\"categories\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"categoryId\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"heading\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"heading\",\"image\",\"parentId\",\"status\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\"]}', '30', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '{{$controller::moduleShortCode(0)}}', '', 'No', '', '', 'No', '', '', 1, 2, '2024-02-24 09:42:21'),
(24, 'Products', 'products', 'productId', 'Products', '{\"moduleId\":\"24\",\"tableName\":\"products\",\"columnName\":[\"productId\",\"heading\",\"model\",\"barcode\",\"cost\",\"price\",\"percent\",\"manufacturerId\",\"categoryId\",\"vendorId\",\"unitId\",\"taxId\",\"taxType\",\"hsnCode\",\"quantity\",\"subtract\",\"changePriceDuringBilling\",\"image\",\"relatedImage\",\"showInPos\",\"softDelete\",\"storeId\",\"userId\",\"updatedBy\",\"insertedBy\",\"dateUpdated\",\"status\",\"dateAdded\"],\"columnCustomName\":[\"Product Id\",\"Heading\",\"Model\",\"Barcode\",\"Cost\",\"Price\",\"Percent\",\"Manufacturer Id\",\"Category Id\",\"Vendor Id\",\"Unit Id\",\"Tax Id\",\"Tax Type\",\"Hsn Code\",\"Quantity\",\"Subtract\",\"Change Price During Billing\",\"Image\",\"Related Image\",\"Show In Pos\",\"Soft Delete\",\"Store Id\",\"User Id\",\"Updated By\",\"Inserted By\",\"Date Updated\",\"Status\",\"Date Added\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"stores\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"name\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"storeId\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"No\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"image\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"status\",\"\"],\"columnSortOrder\":[\"1\",\"3\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"4\",\"\",\"\",\"2\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"6\",\"7\"],\"tableColumnMerge\":[\"\",\"\",\"heading\",\"heading\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"text\",\"select\",\"select\",\"select\",\"select\",\"select\",\"select\",\"text\",\"select\",\"file\",\"select\",\"select\",\"file\",\"text\",\"text\",\"text\",\"select\"],\"fieldHeading\":[\"Heading\",\"Model\",\"Barcode\",\"Manufacturer Id\",\"Category Id\",\"Vendor Id\",\"Unit Id\",\"Tax Id\",\"Tax Type\",\"Quantity\",\"Subtract From Quantity\",\"Image\",\"Show In Pos\",\"Status\",\"Related Image\",\"Cost\",\"Price\",\"HSN Code\",\"Change Price During Billing\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"20\",\"14\",\"16\",\"21\",\"4\",\"5\",\"12\",\"15\"],\"fieldColumn\":[\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"3\",\"3\",\"3\",\"3\",\"3\",\"6\",\"3\",\"12\",\"6\",\"6\",\"6\",\"3\",\"3\"],\"fieldColumnName\":[\"heading\",\"model\",\"barcode\",\"manufacturerId\",\"categoryId\",\"vendorId\",\"unitId\",\"taxId\",\"taxType\",\"quantity\",\"subtract\",\"image\",\"showInPos\",\"status\",\"relatedImage\",\"cost\",\"price\",\"hsnCode\",\"changePriceDuringBilling\"],\"fieldName\":[\"heading\",\"model\",\"barcode\",\"manufacturerId\",\"categoryId\",\"vendorId\",\"unitId\",\"taxId\",\"taxType\",\"quantity\",\"subtract\",\"image\",\"showInPos\",\"status\",\"relatedImage\",\"cost\",\"price\",\"hsnCode\",\"changePriceDuringBilling\"],\"fieldId\":[\"heading\",\"model\",\"barcode\",\"manufacturerId\",\"categoryId\",\"vendorId\",\"unitId\",\"taxId\",\"taxType\",\"quantity\",\"subtract\",\"image\",\"showInPos\",\"status\",\"relatedImage\",\"cost\",\"price\",\"hsnCode\",\"changePriceDuringBilling\"],\"fieldClass\":[\"heading\",\"model\",\"barcode\",\"manufacturerId\",\"categoryId\",\"vendorId\",\"unitId\",\"taxId\",\"taxType\",\"quantity\",\"subtract\",\"image\",\"showInPos\",\"status\",\"relatedImage\",\"cost\",\"price\",\"hsnCode\",\"changePriceDuringBilling\"],\"fieldPlaceHolder\":[\"Heading\",\"Model\",\"Barcode\",\"Manufacturer Id\",\"Category Id\",\"Vendor Id\",\"Unit Id\",\"Tax Id\",\"Tax Type\",\"Quantity\",\"Subtract\",\"Image\",\"Show In Pos\",\"Status\",\"Related Image\",\"Cost\",\"Price\",\"Hsn Code\",\"Change Price During Billing\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"0\",\"\",\"\",\"\",\"\",\"\",\"0\",\"0\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"multiple\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"1\",\"0\",\"0\",\"0\",\"0\",\"0\",\"1\",\"1\",\"0\",\"0\"],\"fieldValidation\":[\"required\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"required|numeric\",\"\",\"\",\"\",\"\",\"\",\"required|numeric\",\"required|numeric\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"hideThisFieldFrontend\",\"\",\"\",\"hideThisFieldFrontend\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"Exclusive,Inclusive\",\"\",\"Yes,No\",\"\",\"Yes,No\",\"Enable,Disable\",\"\",\"\",\"\",\"\",\"No,Yes\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"Exclusive,Inclusive\",\"\",\"Yes,No\",\"\",\"1,0\",\"1,0\",\"\",\"\",\"\",\"\",\"0,1\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"manufacturers\",\"categories\",\"vendors\",\"units\",\"taxes\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"manufacturerId\",\"categoryId\",\"vendorId\",\"unitId\",\"taxId\",\"null\",\"null\",\"null\",\"\",\"null\",\"null\",\"\",\"null\",\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"heading\",\"heading\",\"heading\",\"heading,unit\",\"heading,percent\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"heading\",\"model\",\"barcode\",\"manufacturerId\",\"categoryId\",\"vendorId\",\"unitId\",\"taxId\",\"taxType\",\"quantity\",\"subtract\",\"image\",\"showInPos\",\"status\",\"relatedImage\",\"cost\",\"price\",\"hsnCode\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"]}', '30', 0, 0, 0, 0, 0, 'Add Product', 'Copy Products', '', 'PD9waHANCiRnZXRNYXggPSBEQjo6c2VsZWN0KCJTRUxFQ1QgTUFYKGJhcmNvZGUpIGFzIG1heCBGUk9NIGBwcm9kdWN0c2AgV0hFUkUgc3RvcmVJZD0nIi5TZXNzaW9uOjpnZXQoJ3N0b3JlSWQnKS4iJyIpOw0KaWYoZW1wdHkoJGdldE1heFswXSkpew0KJGFycmF5WydiYXJjb2RlJ10gPSAkc2V0dGluZ3NbJ3N0YXJ0QmFyY29kZUZyb20nXTsNCn1lbHNlew0KJGdldE1heCA9ICR0aGlzLT5hcnJheUNvbnZlcnQoJGdldE1heCk7DQokYXJyYXlbJ2JhcmNvZGUnXSA9ICRnZXRNYXhbMF1bJ21heCddKzE7DQp9DQo/Pg==', '', '', '', '{{$controller::moduleShortCode(24)}}', '', 'No', '', '', 'Yes', 'model,quantity,updatedBy,insertedBy,dateUpdated,dateAdded', 'barcode', 1, 2, '2024-02-24 09:47:23');
INSERT INTO `modules` (`moduleId`, `moduleName`, `moduleTable`, `moduleFirstColumn`, `pageHeading`, `moduleData`, `parentMenu`, `sortOrder`, `hideAdd`, `hideEdit`, `hideDelete`, `hideAction`, `addButtonText`, `copyButtonText`, `extraButtons`, `submitCodeBefore`, `submitCodeAfter`, `extraActionOnDeleteButton`, `additionalText`, `shortCode`, `frontendRedirectPage`, `sendMailToAdmin`, `filedsToReplaceOnMail`, `filters`, `copyTable`, `dataOfColumnToSkip`, `autoIncreamentColumn`, `status`, `insertedBy`, `dateAdded`) VALUES
(25, 'StoreSettings', 'store_settings', 'storeSettingId', 'Store Settings', '{\"moduleId\":\"25\",\"tableName\":\"store_settings\",\"columnName\":[\"storeSettingId\",\"websiteName\",\"websiteLogo\",\"adminEmail\",\"contactMobile\",\"contactEmail\",\"address\",\"mailJetUsername\",\"mailJetPassword\",\"mailJetEmail\",\"mailJetName\",\"mergeLogin\",\"databaseBackup\",\"fieldsToSendValueOnMail\",\"filedsToReplaceOnMail\",\"filedsToUnsetOnMails\",\"hideAddEditDeleteIfNoStoreSelected\",\"enableRewardPoints\",\"rewardOnDiscountedProduct\",\"minimumRewardPointsToReedem\",\"rewardPercentOnProduct\",\"walkInCustomerId\",\"invoicePrefix\",\"storeId\",\"userId\",\"updatedBy\",\"insertedBy\",\"status\",\"cartAppendStyle\",\"orderTypeRequired\",\"enableOrderType\",\"enableTaxes\",\"showStoreInfomation\",\"showExtraInformtionPopup\",\"showWalletBalance\",\"showRewardBalance\",\"showAddCustomerBottom\",\"salesPersonRequired\",\"showSalesPerson\",\"showQuickAdd\",\"restaurant\",\"showModal\",\"showBarcode\",\"showImage\",\"showManufacturers\",\"showCategories\",\"storeTerms\",\"invoiceHeaderText\",\"invoiceFooterText\",\"defaultInvoiceTemplate\",\"defaultKotTemplate\",\"defaultOrderStatus\",\"cancelledOrderStatus\",\"runningOrderStatus\",\"deductFromStock\",\"startBarcodeFrom\",\"storeClosingDate\",\"maxBills\",\"requiredOtpForRewardReedem\",\"minRewardPointsToSendOtp\",\"onProductCllickIncreasePosQuantity\",\"enableLightBox\",\"fetchCostInPurchase\"],\"columnCustomName\":[\"Store Setting Id\",\"Website Name\",\"Website Logo\",\"Admin Email\",\"Contact Mobile\",\"Contact Email\",\"Address\",\"Mail Jet Username\",\"Mail Jet Password\",\"Mail Jet Email\",\"Mail Jet Name\",\"Merge Login\",\"Database Backup\",\"Fields To Send Value On Mail\",\"Fileds To Replace On Mail\",\"Fileds To Unset On Mails\",\"Hide Add Edit Delete If No Store Selected\",\"Enable Reward Points\",\"Reward On Discounted Product\",\"Minimum Reward Points To Reedem\",\"Reward Percent On Product\",\"Walk In Customer Id\",\"Invoice Prefix\",\"Store Id\",\"User Id\",\"Updated By\",\"Inserted By\",\"Status\",\"Cart Append Style\",\"Order Type Required\",\"Enable Order Type\",\"Enable Taxes\",\"Show Store Infomation\",\"Show Extra Informtion Popup\",\"Show Wallet Balance\",\"Show Reward Balance\",\"Show Add Customer Bottom\",\"Sales Person Required\",\"Show Sales Person\",\"Show Quick Add\",\"Restaurant\",\"Show Modal\",\"Show Barcode\",\"Show Image\",\"Show Manufacturers\",\"Show Categories\",\"Store Terms\",\"Invoice Header Text\",\"Invoice Footer Text\",\"Default Invoice Template\",\"Default Kot Template\",\"Default Order Status\",\"Cancelled Order Status\",\"Running Order Status\",\"Deduct From Stock\",\"Start Barcode From\",\"Store Closing Date\",\"Max Bills\",\"Required Otp For Reward Reedem\",\"Min Reward Points To Send Otp\",\"On Product Cllick Increase Pos Quantity\",\"Enable Light Box\",\"Fetch Cost In Purchase\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"type\":[\"\",\"\",\"image\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"status\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"columnSortOrder\":[\"1\",\"3\",\"2\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"file\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"select\",\"select\",\"select\",\"text\",\"text\",\"select\",\"text\",\"select\",\"select\",\"select\",\"select\",\"select\",\"select\",\"select\",\"select\",\"select\",\"select\",\"select\",\"select\",\"select\",\"select\",\"select\",\"select\",\"select\",\"select\",\"wysiwyg\",\"wysiwyg\",\"wysiwyg\",\"select\",\"select\",\"select\",\"select\",\"select\",\"select\",\"text\",\"text\",\"text\",\"select\",\"text\",\"select\",\"select\",\"select\"],\"fieldHeading\":[\"Website Name\",\"Website Logo\",\"Admin Email\",\"Contact Mobile\",\"Contact Email\",\"Address\",\"Mail Jet Username\",\"Mail Jet Password\",\"Mailjet Email\",\"Mailjet Name\",\"Database Backup\",\"Enable Reward Points\",\"Reward On Discounted Product\",\"Minimum Reward Points To Reedem\",\"Reward Percent On Product\",\"Walk In Customer Id\",\"Invoice Prefix\",\"Cart Append Style\",\"Order Type Required\",\"Enable Order Type\",\"Enable Taxes\",\"Show Store Infomation\",\"Show Extra Informtion Popup\",\"Show Wallet Balance\",\"Show Reward Balance\",\"Show Add Customer Bottom\",\"Sales Person Required\",\"Show Sales Person\",\"Show Quick Add\",\"Restaurant\",\"Show Modal\",\"Show Barcode\",\"Show Image\",\"Show Manufacturers\",\"Show Categories\",\"Store Terms\",\"Invoice Header Text\",\"Invoice Footer Text\",\"Default Invoice Template\",\"Default Kot Template\",\"Default Order Status\",\"Cancelled Order Status\",\"Running Order Status\",\"Deduct From Stock\",\"Start Barcode From\",\"Store Closing Date (Comma Seprated)\",\"Max Bills\",\"Required Otp For Reward Reedem\",\"Min Reward Points To Send Otp\",\"On Product Cllick Increase Pos Quantity\",\"Enable Light Box\",\"Fetch Cost In Purchase\"],\"fieldSortOrder\":[\"1\",\"100\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"12\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"28\",\"29\",\"30\",\"31\",\"32\",\"33\",\"34\",\"35\",\"36\",\"37\",\"38\",\"39\",\"40\",\"41\",\"42\",\"43\",\"44\",\"45\",\"95\",\"96\",\"97\",\"49\",\"50\",\"51\",\"52\",\"53\",\"54\",\"55\",\"56\",\"57\",\"58\",\"59\",\"60\",\"61\",\"62\"],\"fieldColumn\":[\"4\",\"12\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"12\",\"12\",\"12\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\"],\"fieldColumnName\":[\"websiteName\",\"websiteLogo\",\"adminEmail\",\"contactMobile\",\"contactEmail\",\"address\",\"mailJetUsername\",\"mailJetPassword\",\"mailjetEmail\",\"mailjetName\",\"databaseBackup\",\"enableRewardPoints\",\"rewardOnDiscountedProduct\",\"minimumRewardPointsToReedem\",\"rewardPercentOnProduct\",\"walkInCustomerId\",\"invoicePrefix\",\"cartAppendStyle\",\"orderTypeRequired\",\"enableOrderType\",\"enableTaxes\",\"showStoreInfomation\",\"showExtraInformtionPopup\",\"showWalletBalance\",\"showRewardBalance\",\"showAddCustomerBottom\",\"salesPersonRequired\",\"showSalesPerson\",\"showQuickAdd\",\"restaurant\",\"showModal\",\"showBarcode\",\"showImage\",\"showManufacturers\",\"showCategories\",\"storeTerms\",\"invoiceHeaderText\",\"invoiceFooterText\",\"defaultInvoiceTemplate\",\"defaultKotTemplate\",\"defaultOrderStatus\",\"cancelledOrderStatus\",\"runningOrderStatus\",\"deductFromStock\",\"startBarcodeFrom\",\"storeClosingDate\",\"maxBills\",\"requiredOtpForRewardReedem\",\"minRewardPointsToSendOtp\",\"onProductCllickIncreasePosQuantity\",\"enableLightBox\",\"fetchCostInPurchase\"],\"fieldName\":[\"websiteName\",\"websiteLogo\",\"adminEmail\",\"contactMobile\",\"contactEmail\",\"address\",\"mailJetUsername\",\"mailJetPassword\",\"mailjetEmail\",\"mailjetName\",\"databaseBackup\",\"enableRewardPoints\",\"rewardOnDiscountedProduct\",\"minimumRewardPointsToReedem\",\"rewardPercentOnProduct\",\"walkInCustomerId\",\"invoicePrefix\",\"cartAppendStyle\",\"orderTypeRequired\",\"enableOrderType\",\"enableTaxes\",\"showStoreInfomation\",\"showExtraInformtionPopup\",\"showWalletBalance\",\"showRewardBalance\",\"showAddCustomerBottom\",\"salesPersonRequired\",\"showSalesPerson\",\"showQuickAdd\",\"restaurant\",\"showModal\",\"showBarcode\",\"showImage\",\"showManufacturers\",\"showCategories\",\"storeTerms\",\"invoiceHeaderText\",\"invoiceFooterText\",\"defaultInvoiceTemplate\",\"defaultKotTemplate\",\"defaultOrderStatus\",\"cancelledOrderStatus\",\"runningOrderStatus\",\"deductFromStock\",\"startBarcodeFrom\",\"storeClosingDate\",\"maxBills\",\"requiredOtpForRewardReedem\",\"minRewardPointsToSendOtp\",\"onProductCllickIncreasePosQuantity\",\"enableLightBox\",\"fetchCostInPurchase\"],\"fieldId\":[\"websiteName\",\"websiteLogo\",\"adminEmail\",\"contactMobile\",\"contactEmail\",\"address\",\"mailJetUsername\",\"mailJetPassword\",\"mailjetEmail\",\"mailjetName\",\"databaseBackup\",\"enableRewardPoints\",\"rewardOnDiscountedProduct\",\"minimumRewardPointsToReedem\",\"rewardPercentOnProduct\",\"walkInCustomerId\",\"invoicePrefix\",\"cartAppendStyle\",\"orderTypeRequired\",\"enableOrderType\",\"enableTaxes\",\"showStoreInfomation\",\"showExtraInformtionPopup\",\"showWalletBalance\",\"showRewardBalance\",\"showAddCustomerBottom\",\"salesPersonRequired\",\"showSalesPerson\",\"showQuickAdd\",\"restaurant\",\"showModal\",\"showBarcode\",\"showImage\",\"showManufacturers\",\"showCategories\",\"storeTerms\",\"invoiceHeaderText\",\"invoiceFooterText\",\"defaultInvoiceTemplate\",\"defaultKotTemplate\",\"defaultOrderStatus\",\"cancelledOrderStatus\",\"runningOrderStatus\",\"deductFromStock\",\"startBarcodeFrom\",\"storeClosingDate\",\"maxBills\",\"requiredOtpForRewardReedem\",\"minRewardPointsToSendOtp\",\"onProductCllickIncreasePosQuantity\",\"enableLightBox\",\"fetchCostInPurchase\"],\"fieldClass\":[\"websiteName\",\"websiteLogo\",\"adminEmail\",\"contactMobile\",\"contactEmail\",\"address\",\"mailJetUsername\",\"mailJetPassword\",\"mailjetEmail\",\"mailjetName\",\"databaseBackup\",\"enableRewardPoints\",\"rewardOnDiscountedProduct\",\"minimumRewardPointsToReedem\",\"rewardPercentOnProduct\",\"walkInCustomerId\",\"invoicePrefix\",\"cartAppendStyle\",\"orderTypeRequired\",\"enableOrderType\",\"enableTaxes\",\"showStoreInfomation\",\"showExtraInformtionPopup\",\"showWalletBalance\",\"showRewardBalance\",\"showAddCustomerBottom\",\"salesPersonRequired\",\"showSalesPerson\",\"showQuickAdd\",\"restaurant\",\"showModal\",\"showBarcode\",\"showImage\",\"showManufacturers\",\"showCategories\",\"storeTerms\",\"invoiceHeaderText\",\"invoiceFooterText\",\"defaultInvoiceTemplate\",\"defaultKotTemplate\",\"defaultOrderStatus\",\"cancelledOrderStatus\",\"runningOrderStatus\",\"deductFromStock\",\"startBarcodeFrom\",\"storeClosingDate\",\"maxBills\",\"requiredOtpForRewardReedem\",\"minRewardPointsToSendOtp\",\"onProductCllickIncreasePosQuantity\",\"enableLightBox\",\"fetchCostInPurchase\"],\"fieldPlaceHolder\":[\"Website Name\",\"Website Logo\",\"Admin Email\",\"Contact Mobile\",\"Contact Email\",\"Address\",\"Mail Jet Username\",\"Mail Jet Password\",\"Mailjet Email\",\"Mailjet Name\",\"Database Backup\",\"Enable Reward Points\",\"Reward On Discounted Product\",\"Minimum Reward Points To Reedem\",\"Reward Percent On Product\",\"Walk In Customer Id\",\"Invoice Prefix\",\"Cart Append Style\",\"Order Type Required\",\"Enable Order Type\",\"Enable Taxes\",\"Show Store Infomation\",\"Show Extra Informtion Popup\",\"Show Wallet Balance\",\"Show Reward Balance\",\"Show Add Customer Bottom\",\"Sales Person Required\",\"Show Sales Person\",\"Show Quick Add\",\"Restaurant\",\"Show Modal\",\"Show Barcode\",\"Show Image\",\"Show Manufacturers\",\"Show Categories\",\"Store Terms\",\"Invoice Header Text\",\"Invoice Footer Text\",\"Default Invoice Template\",\"Default Kot Template\",\"Default Order Status\",\"Cancelled Order Status\",\"Running Order Status\",\"Deduct From Stock\",\"Start Barcode From\",\"2024-04-13,2024-04-20,2024-04-27\",\"Max Bills\",\"Required Otp For Reward Reedem\",\"Min Reward Points To Send Otp\",\"On Product Cllick Increase Pos Quantity\",\"Enable Light Box\",\"Fetch Cost In Purchase\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"0\",\"\",\"0\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"removePleaseSelect\",\"removePleaseSelect\",\"removePleaseSelect\",\"removePleaseSelect\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"Yes,No\",\"Yes,No\",\"No,Yes\",\"\",\"\",\"\",\"\",\"Append,Prepend\",\"Yes,No\",\"Yes,No\",\"Yes,No\",\"Yes,No\",\"Yes,No\",\"Yes,No\",\"Yes,No\",\"Yes,No\",\"Yes,No\",\"Yes,No\",\"Yes,No\",\"Yes,No\",\"Yes,No\",\"Yes,No\",\"Yes,No\",\"Yes,No\",\"Yes,No\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"Yes,No\",\"\",\"\",\"\",\"No,Yes\",\"\",\"No,Yes\",\"No,Yes\",\"No,Yes\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"1,0\",\"1,0\",\"No,Yes\",\"\",\"\",\"\",\"\",\"append,prepend\",\"1,0\",\"1,0\",\"1,0\",\"1,0\",\"1,0\",\"1,0\",\"1,0\",\"1,0\",\"1,0\",\"1,0\",\"1,0\",\"1,0\",\"1,0\",\"1,0\",\"1,0\",\"1,0\",\"1,0\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"1,0\",\"\",\"\",\"\",\"0,1\",\"\",\"0,1\",\"0,1\",\"0,1\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"customers\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"invoice_template\",\"invoice_template\",\"order_status\",\"order_status\",\"order_status\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"null\",\"null\",\"\",\"\",\"\",\"customerId\",\"\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"\",\"null\",\"invoiceTemplateId\",\"invoiceTemplateId\",\"orderStatusId\",\"orderStatusId\",\"orderStatusId\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"name,mobile,email\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"heading\",\"heading\",\"heading\",\"heading\",\"heading\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"websiteName\",\"websiteLogo\",\"adminEmail\",\"contactMobile\",\"contactEmail\",\"address\",\"mailJetUsername\",\"mailJetPassword\",\"mailjetEmail\",\"mailjetName\",\"databaseBackup\",\"enableRewardPoints\",\"rewardOnDiscountedProduct\",\"minimumRewardPointsToReedem\",\"rewardPercentOnProduct\",\"walkInCustomerId\",\"invoicePrefix\",\"cartAppendStyle\",\"orderTypeRequired\",\"enableOrderType\",\"enableTaxes\",\"showStoreInfomation\",\"showExtraInformtionPopup\",\"showWalletBalance\",\"showRewardBalance\",\"showAddCustomerBottom\",\"salesPersonRequired\",\"showSalesPerson\",\"showQuickAdd\",\"restaurant\",\"showModal\",\"showBarcode\",\"showImage\",\"showManufacturers\",\"showCategories\",\"storeTerms\",\"invoiceHeaderText\",\"invoiceFooterText\",\"defaultKotTemplate\",\"defaultOrderStatus\",\"cancelledOrderStatus\",\"runningOrderStatus\",\"deductFromStock\",\"startBarcodeFrom\",\"storeClosingDate\",\"maxBills\",\"requiredOtpForRewardReedem\",\"minRewardPointsToSendOtp\",\"onProductCllickIncreasePosQuantity\",\"enableLightBox\",\"fetchCostInPurchase\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"]}', '30', 0, 0, 0, 1, 0, '', '', '', '', '', '', '', '{{$controller::moduleShortCode(25)}}', '', 'No', '', '', 'No', '', '', 1, 1, '2024-02-24 10:14:54'),
(26, 'SeatingTables', 'seating_tables', 'seatingTableId', 'Seating Tables', '{\"moduleId\":\"26\",\"tableName\":\"seating_tables\",\"columnName\":[\"seatingTableId\",\"heading\",\"capacity\",\"storeId\",\"userId\",\"status\",\"dateUpdated\",\"dateAdded\"],\"columnCustomName\":[\"Seating Table Id\",\"Heading\",\"Capacity\",\"Store Id\",\"User Id\",\"Status\",\"Date Updated\",\"Date Added\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"Yes\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"status\",\"\",\"\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"\",\"\",\"4\",\"\",\"5\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"select\"],\"fieldHeading\":[\"Heading\",\"Capacity\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\",\"5\"],\"fieldColumn\":[\"4\",\"4\",\"4\"],\"fieldColumnName\":[\"heading\",\"capacity\",\"status\"],\"fieldName\":[\"heading\",\"capacity\",\"status\"],\"fieldId\":[\"heading\",\"capacity\",\"status\"],\"fieldClass\":[\"heading\",\"capacity\",\"status\"],\"fieldPlaceHolder\":[\"Heading\",\"Capacity\",\"Status\"],\"fieldDefaultValue\":[\"\",\"2\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"0\"],\"fieldValidation\":[\"required\",\"required|numeric\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\"]}', '30', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '{{$controller::moduleShortCode(0)}}', '', 'No', '', '', 'No', '', '', 1, 2, '2024-02-26 14:43:32'),
(27, 'Languages', 'languages', 'languageId', 'Languages', '{\"moduleId\":\"27\",\"tableName\":\"languages\",\"columnName\":[\"languageId\",\"heading\",\"status\"],\"columnCustomName\":[\"Language Id\",\"Heading\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\"],\"type\":[\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"3\"],\"tableColumnMerge\":[\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"select\"],\"fieldHeading\":[\"Heading\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\"],\"fieldColumn\":[\"6\",\"6\"],\"fieldColumnName\":[\"heading\",\"status\"],\"fieldName\":[\"heading\",\"status\"],\"fieldId\":[\"heading\",\"status\"],\"fieldClass\":[\"heading\",\"status\"],\"fieldPlaceHolder\":[\"Heading\",\"Status\"],\"fieldDefaultValue\":[\"\",\"\"],\"fieldAttribute\":[\"\",\"\"],\"fieldRequired\":[\"1\",\"0\"],\"fieldValidation\":[\"required|unique:languages,heading\",\"\"],\"fieldHeadingBefore\":[\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\"],\"fieldOrderBy\":[\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\"],\"fieldCustomFields\":[\"\",\"\"],\"fieldTableColumn\":[\"status\"]}', '2', 0, 0, 0, 0, 0, '', '', '', '', 'PD9waHANCiAgICBEQjo6aW5zZXJ0KCJBTFRFUiBUQUJMRSBtZXNzYWdlcyBBREQgQ09MVU1OIGAiLnN0cnRvbG93ZXIoJGFycmF5WydoZWFkaW5nJ10pLiJgIFZBUkNIQVIoMjU1KSBOVUxMIEFGVEVSIG1lc3NhZ2UiKTsNCj8+', '', '', '{{$controller::moduleShortCode(27)}}', '', 'No', '', '', 'No', '', '', 1, 2, '2024-02-27 04:04:30'),
(28, 'Employees', 'employees', 'employeeId', 'Employees', '{\"moduleId\":\"28\",\"tableName\":\"employees\",\"columnName\":[\"employeeId\",\"name\",\"mobile\",\"email\",\"sallery\",\"dob\",\"storeId\",\"userId\",\"softDelete\",\"updatedBy\",\"insertedBy\",\"dateUpdated\",\"dateAdded\",\"status\"],\"columnCustomName\":[\"Employee Id\",\"Name\",\"Mobile\",\"Email\",\"Sallery\",\"Dob\",\"Store Id\",\"User Id\",\"Soft Delete\",\"Updated By\",\"Inserted By\",\"Date Updated\",\"Date Added\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"7\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"email\",\"text\",\"date\",\"select\"],\"fieldHeading\":[\"Name\",\"Mobile\",\"Email\",\"Sallery\",\"Dob\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"13\"],\"fieldColumn\":[\"4\",\"4\",\"4\",\"4\",\"4\",\"4\"],\"fieldColumnName\":[\"name\",\"mobile\",\"email\",\"sallery\",\"dob\",\"status\"],\"fieldName\":[\"name\",\"mobile\",\"email\",\"sallery\",\"dob\",\"status\"],\"fieldId\":[\"name\",\"mobile\",\"email\",\"sallery\",\"dob\",\"status\"],\"fieldClass\":[\"name\",\"mobile\",\"email\",\"sallery\",\"dob\",\"status\"],\"fieldPlaceHolder\":[\"Name\",\"Mobile\",\"Email\",\"Sallery\",\"Dob\",\"Status\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"0\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"0\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"required\",\"required|unique:employees,mobile|digits:10|numeric\",\"unique:employees,email\",\"numeric\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\",\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\",\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\",\"\"]}', '30', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '{{$controller::moduleShortCode(0)}}', '', 'No', '', '', 'No', '', '', 1, 2, '2024-02-27 10:04:21'),
(29, 'Payments', 'payments', 'paymentId', 'Payments', '{\"moduleId\":\"29\",\"tableName\":\"payments\",\"columnName\":[\"paymentId\",\"name\",\"sortOrder\",\"softDelete\",\"status\"],\"columnCustomName\":[\"Payment Id\",\"Name\",\"Sort Order\",\"Soft Delete\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"sortOrderUpdateFromOutSide\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"\",\"4\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"select\"],\"fieldHeading\":[\"Name\",\"Sort Order\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\",\"4\"],\"fieldColumn\":[\"6\",\"6\",\"12\"],\"fieldColumnName\":[\"name\",\"sortOrder\",\"status\"],\"fieldName\":[\"name\",\"sortOrder\",\"status\"],\"fieldId\":[\"name\",\"sortOrder\",\"status\"],\"fieldClass\":[\"name\",\"sortOrder\",\"status\"],\"fieldPlaceHolder\":[\"Name\",\"Sort Order\",\"Status\"],\"fieldDefaultValue\":[\"\",\"0\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"0\"],\"fieldValidation\":[\"required\",\"required|numeric\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\"]}', '2', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '{{$controller::moduleShortCode(0)}}', '', 'No', '', '', 'No', '', '', 1, 2, '2024-03-01 04:47:44'),
(30, 'StorePayments', 'store_payments', 'storePaymentId', 'Store Payments', '{\"moduleId\":\"30\",\"tableName\":\"store_payments\",\"columnName\":[\"storePaymentId\",\"payments\",\"default\",\"storeId\",\"userId\",\"status\"],\"columnCustomName\":[\"Store Payment Id\",\"Payments\",\"Default\",\"Store Id\",\"User Id\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"\",\"\",\"\",\"\",\"\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"select\",\"select\"],\"fieldHeading\":[\"Payments\",\"Default Payment Method\"],\"fieldSortOrder\":[\"1\",\"2\"],\"fieldColumn\":[\"12\",\"12\"],\"fieldColumnName\":[\"payments\",\"default\"],\"fieldName\":[\"payments\",\"default\"],\"fieldId\":[\"payments\",\"default\"],\"fieldClass\":[\"payments\",\"default\"],\"fieldPlaceHolder\":[\"Payments\",\"Default\"],\"fieldDefaultValue\":[\"\",\"\"],\"fieldAttribute\":[\"multiple\",\"\"],\"fieldRequired\":[\"1\",\"1\"],\"fieldValidation\":[\"required\",\"required\"],\"fieldHeadingBefore\":[\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\"],\"fieldSelectTable\":[\"payments\",\"payments\"],\"fieldSelectIdColumn\":[\"paymentId\",\"paymentId\"],\"fieldSelectMainColumn\":[\"name\",\"name\"],\"fieldSelectWhere\":[\"\",\"\"],\"fieldOrderBy\":[\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\"],\"fieldTableColumn\":[\"payments\"],\"fieldSelectOperator\":[\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\"],\"fieldCustomFields\":[\"\",\"\"]}', '30', 0, 1, 0, 1, 0, '', '', '', '', '', '', '', '{{$controller::moduleShortCode(30)}}', '', 'No', '', '', 'No', '', '', 1, 1, '2024-03-01 05:20:41'),
(31, 'AdditionalCharges', 'additional_charges', 'additionalChargeId', 'Additional Charges', '{\"moduleId\":\"31\",\"tableName\":\"additional_charges\",\"columnName\":[\"additionalChargeId\",\"heading\",\"sortOrder\",\"storeId\",\"userId\",\"updatedBy\",\"insertedBy\",\"status\"],\"columnCustomName\":[\"Additional Charge Id\",\"Heading\",\"Sort Order\",\"Store Id\",\"User Id\",\"Updated By\",\"Inserted By\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"sortOrderUpdateFromOutSide\",\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"\",\"\",\"\",\"\",\"4\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"select\"],\"fieldHeading\":[\"Heading\",\"Sort Order\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\",\"7\"],\"fieldColumn\":[\"6\",\"6\",\"12\"],\"fieldColumnName\":[\"heading\",\"sortOrder\",\"status\"],\"fieldName\":[\"heading\",\"sortOrder\",\"status\"],\"fieldId\":[\"heading\",\"sortOrder\",\"status\"],\"fieldClass\":[\"heading\",\"sortOrder\",\"status\"],\"fieldPlaceHolder\":[\"Heading\",\"Sort Order\",\"Status\"],\"fieldDefaultValue\":[\"\",\"0\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"0\"],\"fieldValidation\":[\"required\",\"numeric|required\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\"]}', '30', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '{{$controller::moduleShortCode(0)}}', '', 'No', '', '', 'No', '', '', 1, 2, '2024-03-06 10:50:59'),
(32, 'InvoiceTemplate', 'invoice_template', 'invoiceTemplateId', 'Invoice Template', '{\"moduleId\":\"32\",\"tableName\":\"invoice_template\",\"columnName\":[\"invoiceTemplateId\",\"heading\",\"template\",\"tableCode\",\"loopTrCode\",\"customCss\",\"subTotalTrLoop\",\"status\"],\"columnCustomName\":[\"Invoice Template Id\",\"Heading\",\"Template\",\"Table Code\",\"Loop Tr Code\",\"Custom Css\",\"Sub Total Tr Loop\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"\",\"\",\"\",\"\",\"\",\"3\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"wysiwyg\",\"select\",\"textarea\",\"textarea\",\"textarea\",\"textarea\"],\"fieldHeading\":[\"Heading\",\"Template\",\"Status\",\"Loop Tr Code\",\"Sub Total Tr Loop\",\"Custom Css\",\"Table Code\"],\"fieldSortOrder\":[\"1\",\"2\",\"7\",\"4\",\"5\",\"6\",\"3\"],\"fieldColumn\":[\"12\",\"12\",\"12\",\"12\",\"12\",\"12\",\"12\"],\"fieldColumnName\":[\"heading\",\"template\",\"status\",\"loopTrCode\",\"subTotalTrLoop\",\"customCss\",\"tableCode\"],\"fieldName\":[\"heading\",\"template\",\"status\",\"loopTrCode\",\"subTotalTrLoop\",\"customCss\",\"tableCode\"],\"fieldId\":[\"heading\",\"template\",\"status\",\"loopTrCode\",\"subTotalTrLoop\",\"customCss\",\"tableCode\"],\"fieldClass\":[\"heading\",\"template\",\"status\",\"loopTrCode tdetqzuqqe\",\"subTotalTrLoop tdetqzuqqe\",\"customCss tdetqzuqqe\",\"tableCode tdetqzuqqe\"],\"fieldPlaceHolder\":[\"Heading\",\"Template\",\"Status\",\"Loop Tr Code\",\"Sub Total Tr Loop\",\"Custom Css\",\"Table Code\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"0\",\"0\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"required\",\"required\",\"\",\"\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"Enable,Disable\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\",\"1,0\",\"\",\"\",\"\",\"\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"heading\",\"template\",\"status\",\"loopTrCode\",\"subTotalTrLoop\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"]}', '2', 0, 0, 0, 0, 0, '', '', '', 'PD9waHANCiRhcnJheVsndGVtcGxhdGUnXSA9ICR0aGlzLT5lbmNyeXB0KCRhcnJheVsndGVtcGxhdGUnXSk7DQokYXJyYXlbJ2xvb3BUckNvZGUnXSA9ICR0aGlzLT5lbmNyeXB0KCRhcnJheVsnbG9vcFRyQ29kZSddKTsNCiRhcnJheVsnc3ViVG90YWxUckxvb3AnXSA9ICR0aGlzLT5lbmNyeXB0KCRhcnJheVsnc3ViVG90YWxUckxvb3AnXSk7DQokYXJyYXlbJ2N1c3RvbUNzcyddID0gJHRoaXMtPmVuY3J5cHQoJGFycmF5WydjdXN0b21Dc3MnXSk7DQokYXJyYXlbJ3RhYmxlQ29kZSddID0gJHRoaXMtPmVuY3J5cHQoJGFycmF5Wyd0YWJsZUNvZGUnXSk7DQo/Pg==', '', '', '', '{{$controller::moduleShortCode(32)}}', '', 'No', '', '', 'No', '', '', 1, 2, '2024-03-08 11:39:41'),
(33, 'OrderStatus', 'order_status', 'orderStatusId', 'Order Status', '{\"moduleId\":\"33\",\"tableName\":\"order_status\",\"columnName\":[\"orderStatusId\",\"heading\",\"status\"],\"columnCustomName\":[\"Order Status Id\",\"Heading\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\"],\"type\":[\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"3\"],\"tableColumnMerge\":[\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"select\"],\"fieldHeading\":[\"Heading\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\"],\"fieldColumn\":[\"6\",\"6\"],\"fieldColumnName\":[\"heading\",\"status\"],\"fieldName\":[\"heading\",\"status\"],\"fieldId\":[\"heading\",\"status\"],\"fieldClass\":[\"heading\",\"status\"],\"fieldPlaceHolder\":[\"Heading\",\"Status\"],\"fieldDefaultValue\":[\"\",\"\"],\"fieldAttribute\":[\"\",\"\"],\"fieldRequired\":[\"1\",\"0\"],\"fieldValidation\":[\"required\",\"\"],\"fieldHeadingBefore\":[\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\"],\"fieldOrderBy\":[\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\"],\"fieldCustomFields\":[\"\",\"\"]}', '2', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '{{$controller::moduleShortCode(0)}}', '', 'No', '', '', 'No', '', '', 1, 2, '2024-03-17 09:03:59'),
(34, 'CustomerPayInOut', 'customer_pay_in_out', 'customerPayInOutId', 'Customer Pay In Out', '{\"moduleId\":\"34\",\"tableName\":\"customer_pay_in_out\",\"columnName\":[\"customerPayInOutId\",\"customerId\",\"amount\",\"type\",\"storeId\",\"userId\",\"insertedBy\",\"dateUpdated\",\"dateAdded\"],\"columnCustomName\":[\"Customer Pay In Out Id\",\"Customer Id\",\"Amount\",\"Type\",\"Store Id\",\"User Id\",\"Inserted By\",\"Date Updated\",\"Date Added\"],\"foreignColumnShow\":[\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"customers\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"name\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"customerId\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"\",\"\",\"\",\"\",\"\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"select\",\"text\",\"select\"],\"fieldHeading\":[\"Customer Id\",\"Amount\",\"Type\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\"],\"fieldColumn\":[\"6\",\"6\",\"12\"],\"fieldColumnName\":[\"customerId\",\"amount\",\"type\"],\"fieldName\":[\"customerId\",\"amount\",\"type\"],\"fieldId\":[\"customerId\",\"amount\",\"type\"],\"fieldClass\":[\"customerId select2\",\"amount\",\"type\"],\"fieldPlaceHolder\":[\"Customer Id\",\"Amount\",\"Type\"],\"fieldDefaultValue\":[\"\",\"0\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"0\"],\"fieldValidation\":[\"required\",\"numeric|required\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"Credit (Payment IN),Debit (Payment OUT)\"],\"fieldSelectBoxValue\":[\"\",\"\",\"Credit,Debit\"],\"fieldSelectTable\":[\"customers\",\"\",\"\"],\"fieldSelectIdColumn\":[\"customerId\",\"null\",\"null\"],\"fieldSelectMainColumn\":[\"name,mobile,email\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\"],\"fieldTableColumn\":[\"customerId\",\"amount\"],\"fieldSelectOperator\":[\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\"]}', '30', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '{{$controller::moduleShortCode(0)}}', '', 'No', '', '', 'No', '', '', 1, 2, '2024-03-28 08:08:29'),
(35, 'CustomerLedgerWallet', 'customer_ledger_wallet', 'customerLedgerId', 'Customer Ledger Wallet', '{\"moduleId\":\"35\",\"tableName\":\"customer_ledger_wallet\",\"columnName\":[\"customerLedgerId\",\"orderId\",\"customerId\",\"amount\",\"type\",\"paymentId\",\"remark\",\"payInOut\",\"status\",\"storeId\",\"userId\",\"softDelete\",\"dateAdded\"],\"columnCustomName\":[\"Customer Ledger Id\",\"Order Id\",\"Customer Id\",\"Amount\",\"Type\",\"Payment Id\",\"Remark\",\"Pay In Out\",\"Status\",\"Store Id\",\"User Id\",\"Soft Delete\",\"Date Added\"],\"foreignColumnShow\":[\"No\",\"No\",\"Yes\",\"No\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"customers\",\"\",\"\",\"payments\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"name\",\"\",\"\",\"name\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"customerId\",\"\",\"\",\"paymentId\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"No\",\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"status\",\"\",\"\",\"\",\"\"],\"columnSortOrder\":[\"1\",\"\",\"2\",\"3\",\"4\",\"5\",\"6\",\"\",\"\",\"\",\"\",\"\",\"7\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"select\",\"select\",\"text\",\"select\",\"select\",\"text\"],\"fieldHeading\":[\"Order Id\",\"Customer Id\",\"Amount\",\"Type\",\"Payment Id\",\"Remark\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\"],\"fieldColumn\":[\"6\",\"6\",\"4\",\"4\",\"4\",\"12\"],\"fieldColumnName\":[\"orderId\",\"customerId\",\"amount\",\"type\",\"paymentId\",\"remark\"],\"fieldName\":[\"orderId\",\"customerId\",\"amount\",\"type\",\"paymentId\",\"remark\"],\"fieldId\":[\"orderId\",\"customerId\",\"amount\",\"type\",\"paymentId\",\"remark\"],\"fieldClass\":[\"orderId\",\"customerId\",\"amount\",\"type\",\"paymentId\",\"remark\"],\"fieldPlaceHolder\":[\"Order Id\",\"Customer Id\",\"Amount\",\"Type\",\"Payment Id\",\"Remark\"],\"fieldDefaultValue\":[\"\",\"\",\"0\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"0\",\"1\",\"1\",\"0\",\"1\",\"0\"],\"fieldValidation\":[\"\",\"required\",\"required|numeric\",\"\",\"required\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"hideThisFieldFrontend\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"Credit (Payment IN),Debit (Payment OUT)\",\"\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"Credit,Debit\",\"\",\"\"],\"fieldSelectTable\":[\"order\",\"customers\",\"\",\"\",\"payments\",\"\"],\"fieldSelectIdColumn\":[\"orderId\",\"customerId\",\"null\",\"null\",\"paymentId\",\"null\"],\"fieldSelectMainColumn\":[\"orderId,name,email,mobile\",\"name,mobile,email\",\"\",\"\",\"name\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"orderId\",\"customerId\",\"amount\",\"paymentId\",\"remark\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\",\"\"]}', '30', 0, 0, 1, 0, 0, '', '', '', 'PD9waHANCmlmKCRhcnJheVsndHlwZSddID09ICdDcmVkaXQnKXsNCiAgICRhcnJheVsncGF5SW5PdXQnXSA9ICdQYXlJbic7DQp9ZWxzZXsNCiAgICRhcnJheVsncGF5SW5PdXQnXSA9ICdQYXlPdXQnOw0KfQ0KPz4=', 'PD9waHANCiR0aGlzLT51cGRhdGVDdXN0b21lcldhbGxldCgkYXJyYXlbJ2N1c3RvbWVySWQnXSk7DQo/Pg==', '', '', '{{$controller::moduleShortCode(35)}}', '', 'No', '', '', 'No', '', '', 1, 2, '2024-03-28 08:24:30');
INSERT INTO `modules` (`moduleId`, `moduleName`, `moduleTable`, `moduleFirstColumn`, `pageHeading`, `moduleData`, `parentMenu`, `sortOrder`, `hideAdd`, `hideEdit`, `hideDelete`, `hideAction`, `addButtonText`, `copyButtonText`, `extraButtons`, `submitCodeBefore`, `submitCodeAfter`, `extraActionOnDeleteButton`, `additionalText`, `shortCode`, `frontendRedirectPage`, `sendMailToAdmin`, `filedsToReplaceOnMail`, `filters`, `copyTable`, `dataOfColumnToSkip`, `autoIncreamentColumn`, `status`, `insertedBy`, `dateAdded`) VALUES
(36, 'Codes', 'codes', 'codeId', 'Codes', '{\"moduleId\":\"36\",\"tableName\":\"codes\",\"columnName\":[\"codeId\",\"alphabat\",\"number\",\"status\"],\"columnCustomName\":[\"Code Id\",\"Alphabat\",\"Number\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"4\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"select\"],\"fieldHeading\":[\"Alphabat\",\"Number\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\"],\"fieldColumn\":[\"4\",\"4\",\"4\"],\"fieldColumnName\":[\"alphabat\",\"number\",\"status\"],\"fieldName\":[\"alphabat\",\"number\",\"status\"],\"fieldId\":[\"alphabat\",\"number\",\"status\"],\"fieldClass\":[\"alphabat\",\"number\",\"status\"],\"fieldPlaceHolder\":[\"Alphabat\",\"Number\",\"Status\"],\"fieldDefaultValue\":[\"\",\"0\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"0\"],\"fieldValidation\":[\"required\",\"required|numeric\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\"]}', '2', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '{{$controller::moduleShortCode(0)}}', '', 'No', '', '', 'No', '', '', 1, 2, '2024-03-28 08:57:40'),
(37, 'CustomerLedgerReward', 'customer_ledger_reward', 'customerLedgerRewardId', 'Customer Ledger Reward', '{\"moduleId\":\"37\",\"tableName\":\"customer_ledger_reward\",\"columnName\":[\"customerLedgerRewardId\",\"orderId\",\"customerId\",\"reward\",\"type\",\"paymentId\",\"remark\",\"status\",\"storeId\",\"userId\",\"softDelete\",\"dateAdded\"],\"columnCustomName\":[\"Customer Ledger Reward Id\",\"Order Id\",\"Customer Id\",\"Reward\",\"Type\",\"Payment Id\",\"Remark\",\"Status\",\"Store Id\",\"User Id\",\"Soft Delete\",\"Date Added\"],\"foreignColumnShow\":[\"No\",\"No\",\"Yes\",\"No\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"order\",\"customers\",\"\",\"\",\"payments\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"orderId\",\"name\",\"\",\"\",\"name\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"orderId\",\"customerId\",\"\",\"\",\"paymentId\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"status\",\"\",\"\",\"\",\"\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"\",\"\",\"\",\"\",\"8\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"select\",\"select\",\"text\",\"select\",\"select\",\"textarea\"],\"fieldHeading\":[\"Order Id\",\"Customer Id\",\"Reward\",\"Type\",\"Payment Id\",\"Remark\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\"],\"fieldColumn\":[\"6\",\"6\",\"4\",\"4\",\"4\",\"12\"],\"fieldColumnName\":[\"orderId\",\"customerId\",\"reward\",\"type\",\"paymentId\",\"remark\"],\"fieldName\":[\"orderId\",\"customerId\",\"reward\",\"type\",\"paymentId\",\"remark\"],\"fieldId\":[\"orderId\",\"customerId\",\"reward\",\"type\",\"paymentId\",\"remark\"],\"fieldClass\":[\"orderId\",\"customerId\",\"reward\",\"type\",\"paymentId\",\"remark\"],\"fieldPlaceHolder\":[\"Order Id\",\"Customer Id\",\"Reward\",\"Type\",\"Payment Id\",\"Remark\"],\"fieldDefaultValue\":[\"\",\"\",\"0\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"0\",\"1\",\"1\",\"0\",\"1\",\"0\"],\"fieldValidation\":[\"\",\"required\",\"numeric|required\",\"\",\"required\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"hideThisFieldFrontend\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"Credit,Debit\",\"\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"Credit,Debit\",\"\",\"\"],\"fieldSelectTable\":[\"order\",\"customers\",\"\",\"\",\"payments\",\"\"],\"fieldSelectIdColumn\":[\"orderId\",\"customerId\",\"null\",\"null\",\"paymentId\",\"\"],\"fieldSelectMainColumn\":[\"orderId,name,email,mobile\",\"name,mobile,email\",\"\",\"\",\"name\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"orderId\",\"customerId\",\"reward\",\"type\",\"paymentId\",\"remark\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\",\"\"]}', '30', 0, 0, 1, 0, 0, '', '', '', 'PD9waHANCmlmKCRhcnJheVsndHlwZSddID09ICdDcmVkaXQnKXsNCiAgICRhcnJheVsncGF5SW5PdXQnXSA9ICdQYXlJbic7DQp9ZWxzZXsNCiAgICRhcnJheVsncGF5SW5PdXQnXSA9ICdQYXlPdXQnOw0KfQ0KPz4=', 'PD9waHANCiR0aGlzLT51cGRhdGVDdXN0b21lclJld2FyZCgkYXJyYXlbJ2N1c3RvbWVySWQnXSk7DQo/Pg==', '', '', '{{$controller::moduleShortCode(37)}}', '', 'No', '', '', 'No', '', '', 1, 2, '2024-03-28 10:01:41'),
(38, 'OrderHistory', 'order_history', 'orderHistoryId', 'Order History', '{\"moduleId\":\"38\",\"tableName\":\"order_history\",\"columnName\":[\"orderHistoryId\",\"orderId\",\"orderStatusId\",\"comment\",\"status\",\"storeId\",\"userId\",\"dateAdded\"],\"columnCustomName\":[\"Order History Id\",\"Order Id\",\"Order Status Id\",\"Comment\",\"Status\",\"Store Id\",\"User Id\",\"Date Added\"],\"foreignColumnShow\":[\"No\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"order_status\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"heading\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"orderStatusId\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"status\",\"\",\"\",\"\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"\",\"\",\"\",\"5\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"select\",\"select\",\"wysiwyg\"],\"fieldHeading\":[\"Order Id\",\"Order Status Id\",\"Comment\"],\"fieldSortOrder\":[\"1\",\"2\",\"5\"],\"fieldColumn\":[\"6\",\"6\",\"12\"],\"fieldColumnName\":[\"orderId\",\"orderStatusId\",\"comment\"],\"fieldName\":[\"orderId\",\"orderStatusId\",\"comment\"],\"fieldId\":[\"orderId\",\"orderStatusId\",\"comment\"],\"fieldClass\":[\"orderId\",\"orderStatusId\",\"comment\"],\"fieldPlaceHolder\":[\"Order Id\",\"Order Status Id\",\"Comment\"],\"fieldDefaultValue\":[\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"0\"],\"fieldValidation\":[\"required\",\"required\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"removePleaseSelect\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\"],\"fieldSelectTable\":[\"order\",\"order_status\",\"\"],\"fieldSelectIdColumn\":[\"orderId\",\"orderStatusId\",\"null\"],\"fieldSelectMainColumn\":[\"orderId,name,email,mobile\",\"heading\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\"],\"fieldTableColumn\":[\"orderId\",\"orderStatusId\",\"comment\"],\"fieldSelectOperator\":[\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\"]}', '57', 0, 0, 0, 0, 0, '', '', '', '', 'PD9waHANCmlmKCRzZXR0aW5nc1sncnVubmluZ09yZGVyU3RhdHVzJ10hPSRhcnJheVsnb3JkZXJTdGF0dXNJZCddKXsNCgkkb3JkZXJTdGF0dXNIZWFkaW5nID0gJHRoaXMtPmdldERhdGFXaGVyZSgnb3JkZXJfc3RhdHVzJywib3JkZXJTdGF0dXNJZCIsJGFycmF5WydvcmRlclN0YXR1c0lkJ10pWzBdWydoZWFkaW5nJ107DQoJREI6OnNlbGVjdCgiVVBEQVRFIGBvcmRlcmAgU0VUIG9yZGVyU3RhdHVzSWQ9JyIuJGFycmF5WydvcmRlclN0YXR1c0lkJ10uIicscnVubmluZ09yZGVyPTAsaG9sZD0wLG9yZGVyU3RhdHVzSGVhZGluZz0nIi4kb3JkZXJTdGF0dXNIZWFkaW5nLiInLGNoZWNrb3V0VHlwZT0nZmluYWxDaGVja291dCcscnVubmluZ09yZGVyPScwJyBXSEVSRSBvcmRlcklkPSciLiRhcnJheVsnb3JkZXJJZCddLiInIik7DQp9ZWxzZXsNCgkkb3JkZXJTdGF0dXNIZWFkaW5nID0gJHRoaXMtPmdldERhdGFXaGVyZSgnb3JkZXJfc3RhdHVzJywib3JkZXJTdGF0dXNJZCIsJGFycmF5WydvcmRlclN0YXR1c0lkJ10pWzBdWydoZWFkaW5nJ107DQoJREI6OnNlbGVjdCgiVVBEQVRFIGBvcmRlcmAgU0VUIG9yZGVyU3RhdHVzSWQ9JyIuJGFycmF5WydvcmRlclN0YXR1c0lkJ10uIicscnVubmluZ09yZGVyPTEsaG9sZD0xLG9yZGVyU3RhdHVzSGVhZGluZz0nIi4kb3JkZXJTdGF0dXNIZWFkaW5nLiInLGNoZWNrb3V0VHlwZT0nc2VuZFRvS290JyxydW5uaW5nT3JkZXI9JzEnIFdIRVJFIG9yZGVySWQ9JyIuJGFycmF5WydvcmRlcklkJ10uIiciKTsNCn0NCj8+', '', '', '{{$controller::moduleShortCode(38)}}', '', 'No', '', '', 'No', '', '', 1, 1, '2024-03-29 06:31:34'),
(39, 'CommentMaster', 'comment_master', 'commentMasterId', 'Comment Master', '{\"moduleId\":\"39\",\"tableName\":\"comment_master\",\"columnName\":[\"commentMasterId\",\"comment\",\"storeId\",\"userId\",\"status\"],\"columnCustomName\":[\"Comment Master Id\",\"Comment\",\"Store Id\",\"User Id\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"No\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"\",\"\",\"3\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"textarea\",\"select\"],\"fieldHeading\":[\"Comment\",\"Status\"],\"fieldSortOrder\":[\"1\",\"4\"],\"fieldColumn\":[\"12\",\"12\"],\"fieldColumnName\":[\"comment\",\"status\"],\"fieldName\":[\"comment\",\"status\"],\"fieldId\":[\"comment\",\"status\"],\"fieldClass\":[\"comment\",\"status\"],\"fieldPlaceHolder\":[\"Comment\",\"Status\"],\"fieldDefaultValue\":[\"\",\"\"],\"fieldAttribute\":[\"\",\"\"],\"fieldRequired\":[\"1\",\"0\"],\"fieldValidation\":[\"required\",\"\"],\"fieldHeadingBefore\":[\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\"],\"fieldOrderBy\":[\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\"],\"fieldCustomFields\":[\"\",\"\"]}', '2', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '{{$controller::moduleShortCode(0)}}', '', 'No', '', '', 'No', '', '', 1, 1, '2024-04-13 07:08:25'),
(40, 'RewardOtpSkipReason', 'reward_otp_skip_reason', 'rewardOtpSkipReasonId', 'Reward Otp Skip Reason', '{\"moduleId\":\"40\",\"tableName\":\"reward_otp_skip_reason\",\"columnName\":[\"rewardOtpSkipReasonId\",\"customerId\",\"orderId\",\"reason\",\"storeId\",\"skipOtpToken\",\"status\",\"dateAdded\"],\"columnCustomName\":[\"Reward Otp Skip Reason Id\",\"Customer Id\",\"Order Id\",\"Reason\",\"Store Id\",\"Skip Otp Token\",\"Status\",\"Date Added\"],\"foreignColumnShow\":[\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"customers\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"name\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"customerId\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"status\",\"\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"\",\"\",\"\",\"5\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"select\",\"text\",\"select\",\"select\",\"text\"],\"fieldHeading\":[\"Customer Id\",\"Reason\",\"Store Id\",\"Status\",\"Date Added\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"5\"],\"fieldColumn\":[\"4\",\"4\",\"4\",\"4\",\"4\"],\"fieldColumnName\":[\"customerId\",\"reason\",\"storeId\",\"status\",\"dateAdded\"],\"fieldName\":[\"customerId\",\"reason\",\"storeId\",\"status\",\"dateAdded\"],\"fieldId\":[\"customerId\",\"reason\",\"storeId\",\"status\",\"dateAdded\"],\"fieldClass\":[\"customerId\",\"reason\",\"storeId\",\"status\",\"dateAdded\"],\"fieldPlaceHolder\":[\"Customer Id\",\"Reason\",\"Store Id\",\"Status\",\"Date Added\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"0\",\"0\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"\",\"\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\",\"\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"customerId\",\"reason\",\"storeId\",\"status\",\"dateAdded\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\"]}', '30', 0, 1, 1, 0, 0, '', '', '', '', '', '', '', '{{$controller::moduleShortCode(40)}}', '', 'No', '', '', 'No', '', '', 1, 1, '2024-04-19 04:11:25'),
(41, 'RewardOtp', 'reward_otp', 'rewardOtpId', 'Reward Otp', '{\"moduleId\":\"41\",\"tableName\":\"reward_otp\",\"columnName\":[\"rewardOtpId\",\"customerId\",\"orderId\",\"otp\",\"storeId\",\"otpToken\",\"status\",\"dateAdded\"],\"columnCustomName\":[\"Reward Otp Id\",\"Customer Id\",\"Order Id\",\"Otp\",\"Store Id\",\"Otp Token\",\"Status\",\"Date Added\"],\"foreignColumnShow\":[\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"customers\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"name\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"customerId\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"status\",\"\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"\",\"\",\"\",\"5\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"select\",\"text\",\"select\",\"text\"],\"fieldHeading\":[\"Store Id\",\"Otp Token\",\"Status\",\"Date Added\"],\"fieldSortOrder\":[\"4\",\"5\",\"6\",\"7\"],\"fieldColumn\":[\"4\",\"4\",\"4\",\"4\"],\"fieldColumnName\":[\"storeId\",\"otpToken\",\"status\",\"dateAdded\"],\"fieldName\":[\"storeId\",\"otpToken\",\"status\",\"dateAdded\"],\"fieldId\":[\"storeId\",\"otpToken\",\"status\",\"dateAdded\"],\"fieldClass\":[\"storeId\",\"otpToken\",\"status\",\"dateAdded\"],\"fieldPlaceHolder\":[\"Store Id\",\"Otp Token\",\"Status\",\"Date Added\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"0\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"storeId\",\"otpToken\",\"status\",\"dateAdded\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\"]}', '30', 0, 1, 1, 0, 0, '', '', '', '', '', '', '', '{{$controller::moduleShortCode(0)}}', '', 'No', '', '', 'No', '', '', 1, 1, '2024-04-19 04:29:55'),
(42, 'ExpenseCategories', 'expense_categories', 'expenseCategoryId', 'Expense Categories', '{\"moduleId\":\"42\",\"tableName\":\"expense_categories\",\"columnName\":[\"expenseCategoryId\",\"heading\",\"storeId\",\"userId\",\"status\"],\"columnCustomName\":[\"Expense Category Id\",\"Heading\",\"Store Id\",\"User Id\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"No\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"\",\"\",\"3\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"select\"],\"fieldHeading\":[\"Heading\",\"Status\"],\"fieldSortOrder\":[\"1\",\"4\"],\"fieldColumn\":[\"6\",\"6\"],\"fieldColumnName\":[\"heading\",\"status\"],\"fieldName\":[\"heading\",\"status\"],\"fieldId\":[\"heading\",\"status\"],\"fieldClass\":[\"heading\",\"status\"],\"fieldPlaceHolder\":[\"Heading\",\"Status\"],\"fieldDefaultValue\":[\"\",\"\"],\"fieldAttribute\":[\"\",\"\"],\"fieldRequired\":[\"1\",\"0\"],\"fieldValidation\":[\"required\",\"\"],\"fieldHeadingBefore\":[\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\"],\"fieldOrderBy\":[\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\"],\"fieldCustomFields\":[\"\",\"\"]}', '8', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '{{$controller::moduleShortCode(0)}}', '', 'No', '', '', 'No', '', '', 1, 1, '2024-04-30 04:33:58'),
(43, 'Expenses', 'expenses', 'expenseId', 'Expenses', '{\"moduleId\":\"43\",\"tableName\":\"expenses\",\"columnName\":[\"expenseId\",\"heading\",\"amount\",\"vendorId\",\"expenseCategoryId\",\"relatedImage\",\"storeId\",\"userId\",\"status\",\"dateAdded\"],\"columnCustomName\":[\"Expense Id\",\"Heading\",\"Amount\",\"Vendor Id\",\"Expense Category Id\",\"Related Image\",\"Store Id\",\"User Id\",\"Status\",\"Date Added\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"vendors\",\"expense_categories\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"heading\",\"heading\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"vendorId\",\"expenseCategoryId\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"Yes\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"image\",\"\",\"\",\"status\",\"\"],\"columnSortOrder\":[\"1\",\"3\",\"4\",\"5\",\"6\",\"2\",\"\",\"\",\"7\",\"8\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"select\",\"select\",\"file\",\"select\"],\"fieldHeading\":[\"Heading\",\"Amount\",\"Vendor Id\",\"Expense Category Id\",\"Image\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"8\",\"5\"],\"fieldColumn\":[\"4\",\"4\",\"4\",\"6\",\"12\",\"6\"],\"fieldColumnName\":[\"heading\",\"amount\",\"vendorId\",\"expenseCategoryId\",\"relatedImage\",\"status\"],\"fieldName\":[\"heading\",\"amount\",\"vendorId\",\"expenseCategoryId\",\"relatedImage\",\"status\"],\"fieldId\":[\"heading\",\"amount\",\"vendorId\",\"expenseCategoryId\",\"relatedImage\",\"status\"],\"fieldClass\":[\"heading\",\"amount\",\"vendorId\",\"expenseCategoryId\",\"relatedImage\",\"status\"],\"fieldPlaceHolder\":[\"Heading\",\"Amount\",\"Vendor Id\",\"Expense Category Id\",\"Related Image\",\"Status\"],\"fieldDefaultValue\":[\"\",\"0\",\"\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"multiple\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"0\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"required\",\"required|numeric\",\"\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"removePleaseSelect\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\",\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\",\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\",\"vendors\",\"expense_categories\",\"\",\"\"],\"fieldSelectIdColumn\":[\"null\",\"null\",\"vendorId\",\"expenseCategoryId\",\"\",\"null\"],\"fieldSelectMainColumn\":[\"\",\"\",\"heading,mobile,email\",\"heading\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"heading\",\"amount\",\"vendorId\",\"expenseCategoryId\",\"relatedImage\",\"status\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\",\"\"]}', '8', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '{{$controller::moduleShortCode(0)}}', '', 'No', '', '', 'No', '', '', 1, 1, '2024-04-30 04:38:15');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `orderId` int NOT NULL,
  `sno` int NOT NULL,
  `customerId` int NOT NULL,
  `invoicePrefix` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `mobile` varchar(20) NOT NULL,
  `subTotal` float(11,2) NOT NULL,
  `tax` float(11,2) NOT NULL,
  `productDiscount` float(11,2) NOT NULL,
  `additionalCharges` text,
  `globalDiscount` varchar(255) DEFAULT NULL,
  `paymentId` int NOT NULL,
  `paymentMethod` varchar(20) NOT NULL,
  `multiplePaymentData` text,
  `total` float(11,2) NOT NULL,
  `rewardEarned` int NOT NULL,
  `rewardUsed` varchar(11) NOT NULL,
  `orderType` varchar(20) NOT NULL,
  `checkoutType` varchar(20) NOT NULL,
  `runningOrder` int NOT NULL DEFAULT '0',
  `kotToken` varchar(255) NOT NULL,
  `seatingTableId` int NOT NULL,
  `seatingTableHeading` varchar(20) NOT NULL,
  `hold` int NOT NULL DEFAULT '0',
  `orderStatusId` int NOT NULL,
  `orderStatusHeading` varchar(20) NOT NULL,
  `orderProduct` text NOT NULL,
  `orderTotal` text NOT NULL,
  `employeeId` int NOT NULL DEFAULT '0',
  `posComment` varchar(500) NOT NULL,
  `posImage` varchar(255) NOT NULL,
  `deliveryDate` varchar(30) NOT NULL,
  `salesUserId` int NOT NULL,
  `totalItemsInCart` int NOT NULL,
  `totalQuantityInCart` int NOT NULL,
  `storeId` int NOT NULL DEFAULT '0',
  `userId` int NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `softDelete` int NOT NULL DEFAULT '0',
  `insertedBy` int NOT NULL,
  `dateAdded` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `order_history`
--

CREATE TABLE `order_history` (
  `orderHistoryId` int NOT NULL,
  `orderId` int NOT NULL,
  `orderStatusId` int NOT NULL,
  `comment` text NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `storeId` int NOT NULL,
  `userId` int NOT NULL,
  `dateAdded` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `orderProductId` int NOT NULL,
  `orderId` int NOT NULL,
  `productId` int NOT NULL,
  `heading` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `barcode` int NOT NULL,
  `taxId` int NOT NULL,
  `taxHeading` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `taxType` text COLLATE utf8mb4_general_ci NOT NULL,
  `taxPercent` varchar(5) COLLATE utf8mb4_general_ci NOT NULL,
  `tax` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `quantity` int NOT NULL,
  `discount` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `discountValue` int NOT NULL,
  `rewardPoints` int NOT NULL,
  `cost` int NOT NULL,
  `price` int NOT NULL,
  `percent` float(11,2) NOT NULL,
  `total` int NOT NULL,
  `hsnCode` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `changePriceDuringBilling` int NOT NULL,
  `extraInformation` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `storeId` int NOT NULL,
  `userId` int NOT NULL,
  `updatedBy` int NOT NULL,
  `insertedBy` int NOT NULL,
  `dateModified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dateAdded` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `kotToken` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `sentToKot` int NOT NULL DEFAULT '0',
  `kotViewed` int NOT NULL DEFAULT '0',
  `kotViewedBy` int NOT NULL,
  `taxInclusiveValue` float(11,2) NOT NULL,
  `taxExclusiveValue` float(11,2) NOT NULL,
  `basePriceCost` float(11,2) NOT NULL,
  `profit` float(11,2) NOT NULL,
  `status` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `orderStatusId` int NOT NULL,
  `heading` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1'
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
  `orderTotalId` int NOT NULL,
  `orderId` int NOT NULL,
  `orderTotal` text COLLATE utf8mb4_general_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `pageId` int NOT NULL,
  `heading` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `seo` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `metaTitle` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `metaKeyword` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `metaDescription` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `shortDescription` text COLLATE utf8mb4_general_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1'
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
  `paymentId` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `sortOrder` int NOT NULL,
  `softDelete` int NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

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
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `popup_message`
--

CREATE TABLE `popup_message` (
  `popupMessageId` int NOT NULL,
  `heading` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `message` text COLLATE utf8mb4_general_ci NOT NULL,
  `userId` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1'
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
  `popupMessageListId` int NOT NULL,
  `heading` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `message` text COLLATE utf8mb4_general_ci NOT NULL,
  `userId` int NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `viewed` int NOT NULL DEFAULT '0',
  `dateAdded` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `popup_message_list`
--

INSERT INTO `popup_message_list` (`popupMessageListId`, `heading`, `message`, `userId`, `status`, `viewed`, `dateAdded`) VALUES
(1, '0', '<p>fghfgh</p>\r\n', 2, 1, 0, '2024-04-18 10:08:23'),
(2, 'ghjf', '<p>gfjh</p>\r\n', 1, 1, 1, '2024-04-18 10:11:04'),
(3, 'SMP 35 Protein', '<p>SMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 Protein</p>\r\n', 8, 1, 0, '2024-04-18 16:42:07'),
(4, 'SMP 35 Protein', '<p>SMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 Protein</p>\r\n', 8, 1, 0, '2024-04-18 16:44:37'),
(5, 'SMP 35 Protein', '<p>SMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 Protein</p>\r\n', 8, 1, 0, '2024-04-18 16:44:57');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productId` int NOT NULL,
  `heading` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `barcode` int NOT NULL,
  `cost` int NOT NULL,
  `price` int NOT NULL,
  `percent` float(11,2) NOT NULL,
  `manufacturerId` int NOT NULL DEFAULT '0',
  `categoryId` int NOT NULL DEFAULT '0',
  `vendorId` int NOT NULL DEFAULT '0',
  `unitId` int NOT NULL DEFAULT '0',
  `taxId` int NOT NULL DEFAULT '0',
  `taxType` varchar(20) NOT NULL DEFAULT 'Exclusive',
  `hsnCode` varchar(30) NOT NULL,
  `quantity` int NOT NULL DEFAULT '0',
  `subtract` int NOT NULL DEFAULT '1',
  `changePriceDuringBilling` int NOT NULL DEFAULT '0',
  `image` varchar(255) DEFAULT NULL,
  `relatedImage` text NOT NULL,
  `showInPos` int NOT NULL DEFAULT '1',
  `softDelete` int NOT NULL DEFAULT '0',
  `storeId` int NOT NULL,
  `userId` int NOT NULL,
  `updatedBy` int NOT NULL,
  `insertedBy` int NOT NULL,
  `dateUpdated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int NOT NULL DEFAULT '1',
  `dateAdded` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `profit_report`
--

CREATE TABLE `profit_report` (
  `profitReportId` int NOT NULL,
  `heading` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `id` int NOT NULL,
  `costPrice` float(11,2) NOT NULL,
  `quantity` int NOT NULL,
  `tax` float(11,2) NOT NULL,
  `taxType` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `taxPercent` float(11,2) NOT NULL,
  `discount` float(11,2) NOT NULL,
  `total` float(11,2) NOT NULL,
  `profit` float(11,2) NOT NULL,
  `finalAmount` float(11,2) NOT NULL,
  `basePriceCost` float(11,2) NOT NULL,
  `storeId` int NOT NULL,
  `userId` int NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `dateAdded` varchar(20) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `purchaseId` int NOT NULL,
  `sno` int NOT NULL,
  `heading` varchar(255) NOT NULL,
  `refrence` varchar(255) NOT NULL,
  `vendorId` varchar(11) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `billType` int NOT NULL DEFAULT '0',
  `products` text NOT NULL,
  `quantity` float DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `subTotal` float DEFAULT NULL,
  `tax` float(11,2) NOT NULL,
  `total` float DEFAULT NULL,
  `purchaseStatus` varchar(1) DEFAULT '0',
  `storeId` int NOT NULL DEFAULT '0',
  `userId` int NOT NULL,
  `softDelete` int NOT NULL DEFAULT '0',
  `updatedBy` int NOT NULL,
  `dateUpdated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int NOT NULL DEFAULT '1',
  `insertedBy` int NOT NULL DEFAULT '0',
  `dateAdded` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reward_otp`
--

CREATE TABLE `reward_otp` (
  `rewardOtpId` int NOT NULL,
  `customerId` int NOT NULL,
  `orderId` int NOT NULL,
  `otp` text COLLATE utf8mb4_general_ci NOT NULL,
  `storeId` int NOT NULL,
  `otpToken` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `dateAdded` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reward_otp_skip_reason`
--

CREATE TABLE `reward_otp_skip_reason` (
  `rewardOtpSkipReasonId` int NOT NULL,
  `customerId` int NOT NULL,
  `orderId` int NOT NULL,
  `reason` text COLLATE utf8mb4_general_ci NOT NULL,
  `storeId` int NOT NULL,
  `skipOtpToken` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `dateAdded` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `roleId` int NOT NULL,
  `heading` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `permission` text COLLATE utf8mb4_general_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `insertedBy` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`roleId`, `heading`, `permission`, `status`, `insertedBy`) VALUES
(1, 'Super Administrator', '{\"view\":[\"1\",\"57\",\"56\",\"58\",\"60\",\"61\",\"67\",\"28\",\"29\",\"36\",\"8\",\"16\",\"19\",\"69\",\"70\",\"24\",\"25\",\"26\",\"27\",\"30\",\"31\",\"35\",\"37\",\"38\",\"39\",\"42\",\"43\",\"45\",\"47\",\"48\",\"51\",\"53\",\"55\",\"63\",\"65\",\"66\",\"7\",\"10\",\"5\",\"6\",\"21\",\"2\",\"4\",\"9\",\"12\",\"22\",\"23\",\"32\",\"33\",\"34\",\"44\",\"46\",\"49\",\"50\",\"13\",\"3\",\"11\",\"20\"],\"edit\":[\"1\",\"57\",\"56\",\"58\",\"60\",\"61\",\"67\",\"28\",\"29\",\"36\",\"8\",\"16\",\"19\",\"69\",\"70\",\"24\",\"25\",\"26\",\"27\",\"30\",\"31\",\"35\",\"37\",\"38\",\"39\",\"42\",\"43\",\"45\",\"47\",\"48\",\"51\",\"53\",\"55\",\"63\",\"65\",\"66\",\"7\",\"10\",\"5\",\"6\",\"21\",\"2\",\"4\",\"9\",\"12\",\"22\",\"23\",\"32\",\"33\",\"34\",\"44\",\"46\",\"49\",\"50\",\"13\",\"3\",\"11\",\"20\"]}', 1, 1),
(2, 'Pos Owner', '{\"view\":[\"1\",\"57\",\"56\",\"58\",\"60\",\"61\",\"67\",\"28\",\"29\",\"36\",\"8\",\"19\",\"69\",\"70\",\"30\",\"31\",\"35\",\"37\",\"38\",\"39\",\"42\",\"43\",\"45\",\"47\",\"48\",\"51\",\"53\",\"55\",\"63\",\"65\",\"66\",\"5\",\"6\"],\"edit\":[\"1\",\"57\",\"56\",\"58\",\"60\",\"61\",\"67\",\"28\",\"29\",\"36\",\"8\",\"19\",\"69\",\"70\",\"30\",\"31\",\"35\",\"37\",\"38\",\"39\",\"42\",\"43\",\"45\",\"47\",\"48\",\"51\",\"53\",\"55\",\"63\",\"65\",\"66\",\"5\",\"6\"]}', 1, 1),
(3, 'Pos User', '{\"view\":[\"1\",\"28\",\"29\",\"36\",\"37\",\"38\",\"39\",\"35\",\"51\",\"8\",\"31\",\"63\",\"69\",\"70\",\"30\",\"43\",\"52\",\"65\",\"57\",\"56\",\"58\",\"25\",\"26\",\"27\",\"53\",\"55\",\"5\",\"6\",\"2\",\"9\",\"32\",\"33\",\"34\"],\"edit\":[\"1\",\"28\",\"29\",\"36\",\"37\",\"38\",\"39\",\"35\",\"51\",\"8\",\"31\",\"63\",\"69\",\"70\",\"30\",\"43\",\"52\",\"65\",\"57\",\"56\",\"58\",\"25\",\"26\",\"27\",\"53\",\"55\",\"5\",\"6\",\"2\",\"9\",\"32\",\"33\",\"34\"]}', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `seating_tables`
--

CREATE TABLE `seating_tables` (
  `seatingTableId` int NOT NULL,
  `heading` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `capacity` int NOT NULL,
  `storeId` int NOT NULL,
  `userId` int NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `dateUpdated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dateAdded` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seo`
--

CREATE TABLE `seo` (
  `seoId` int NOT NULL,
  `pageName` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `metaTitle` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `metaKeyword` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `metaDescription` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1'
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
  `settingId` int NOT NULL,
  `websiteName` varchar(100) NOT NULL,
  `websiteLogo` varchar(255) NOT NULL,
  `allowedImageSize` int NOT NULL,
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
  `mergeLogin` int NOT NULL DEFAULT '0',
  `databaseBackup` int NOT NULL DEFAULT '0',
  `fieldsToSendValueOnMail` varchar(500) NOT NULL,
  `filedsToReplaceOnMail` varchar(500) NOT NULL,
  `filedsToUnsetOnMails` varchar(255) NOT NULL,
  `hideAddEditDeleteIfNoStoreSelected` varchar(255) NOT NULL,
  `multiplePaymentMethod` int NOT NULL,
  `creditPaymentMethod` int NOT NULL,
  `returnPaymentMethod` int NOT NULL,
  `walletPaymentMethod` int NOT NULL,
  `status` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`settingId`, `websiteName`, `websiteLogo`, `allowedImageSize`, `allowedFileSize`, `metaTitle`, `metaKeyword`, `metaDescription`, `adminEmail`, `contactMobile`, `contactEmail`, `address`, `mailJetUsername`, `mailJetPassword`, `mailjetEmail`, `mailjetName`, `facebook`, `twitter`, `linkedin`, `instagram`, `mergeLogin`, `databaseBackup`, `fieldsToSendValueOnMail`, `filedsToReplaceOnMail`, `filedsToUnsetOnMails`, `hideAddEditDeleteIfNoStoreSelected`, `multiplePaymentMethod`, `creditPaymentMethod`, `returnPaymentMethod`, `walletPaymentMethod`, `status`) VALUES
(1, 'Admin Panel', 'public/assets/uploads/705853563.png', 1024000, '1024000', 'Admin Panel', 'Admin Panel', 'Admin Panel', 'pkv172019@gmail.com', '', '', '', '6678bd56cba1c932705fcec18ddf06f0', '4f1c0a54fb8f4fc9bd8670abb8311ceb', 'sehrawat899@gmail.com', 'Priyavrat', '#', '#', '#', '#', 0, 0, 'ContactAgent', 'customerGroupId-heading-customer_group,customerId-name-customers,propertyId-heading-properties,cityId-heading-cities,stateId-heading-states,countryId-heading-countries,paymentId-name-payments', '', 'customer_group,vendors,customers,manufacturers,products,seating_tables,employees,store_payments,purchases', 2, 1, 3, 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `stateId` int NOT NULL,
  `heading` varchar(100) NOT NULL,
  `countryId` int NOT NULL,
  `sortOrder` int NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `softDelete` int NOT NULL DEFAULT '0',
  `updatedBy` int NOT NULL,
  `dateUpdated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `insertedBy` int NOT NULL,
  `dateAdded` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`stateId`, `heading`, `countryId`, `sortOrder`, `image`, `description`, `softDelete`, `updatedBy`, `dateUpdated`, `insertedBy`, `dateAdded`, `status`) VALUES
(1, 'ANDHRA PRADESH', 1, 0, '', '', 0, 0, '2024-05-18 10:54:55', 0, '2024-05-18 10:54:55', 0),
(2, 'ASSAM', 1, 0, '', '', 0, 0, '2024-05-18 10:54:55', 0, '2024-05-18 10:54:55', 0),
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
  `storeId` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `tagline` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `mobile` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `cityId` int NOT NULL,
  `stateId` int NOT NULL,
  `sortOrder` int NOT NULL DEFAULT '0',
  `userId` int NOT NULL DEFAULT '0',
  `storeToken` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `softDelete` int NOT NULL DEFAULT '0',
  `updatedBy` int NOT NULL,
  `insertedBy` int NOT NULL DEFAULT '0',
  `dateUpdated` datetime NOT NULL,
  `dateAdded` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int NOT NULL DEFAULT '1'
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
  `storePaymentId` int NOT NULL,
  `payments` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `default` int NOT NULL,
  `storeId` int NOT NULL,
  `userId` int NOT NULL,
  `status` int NOT NULL DEFAULT '1'
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
  `storeSettingId` int NOT NULL,
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
  `mergeLogin` int NOT NULL DEFAULT '0',
  `databaseBackup` int NOT NULL DEFAULT '0',
  `fieldsToSendValueOnMail` varchar(500) NOT NULL,
  `filedsToReplaceOnMail` varchar(500) NOT NULL,
  `filedsToUnsetOnMails` varchar(255) NOT NULL,
  `hideAddEditDeleteIfNoStoreSelected` varchar(255) NOT NULL,
  `enableRewardPoints` int NOT NULL DEFAULT '1',
  `rewardOnDiscountedProduct` int NOT NULL DEFAULT '1',
  `minimumRewardPointsToReedem` int NOT NULL DEFAULT '0',
  `rewardPercentOnProduct` varchar(11) NOT NULL,
  `walkInCustomerId` int NOT NULL,
  `invoicePrefix` varchar(50) NOT NULL,
  `storeId` int NOT NULL,
  `userId` int NOT NULL,
  `updatedBy` int NOT NULL,
  `insertedBy` int NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `cartAppendStyle` varchar(11) NOT NULL,
  `orderTypeRequired` int NOT NULL,
  `enableOrderType` int NOT NULL,
  `enableTaxes` int NOT NULL,
  `showStoreInfomation` int NOT NULL,
  `showExtraInformtionPopup` int NOT NULL,
  `showWalletBalance` int NOT NULL,
  `showRewardBalance` int NOT NULL,
  `showAddCustomerBottom` int NOT NULL,
  `salesPersonRequired` int NOT NULL,
  `showSalesPerson` int NOT NULL,
  `showQuickAdd` int NOT NULL,
  `restaurant` int NOT NULL,
  `showModal` int NOT NULL,
  `showBarcode` int NOT NULL,
  `showImage` int NOT NULL,
  `showManufacturers` int NOT NULL,
  `showCategories` int NOT NULL,
  `storeTerms` text NOT NULL,
  `invoiceHeaderText` varchar(255) NOT NULL,
  `invoiceFooterText` varchar(255) NOT NULL,
  `defaultInvoiceTemplate` int NOT NULL,
  `defaultKotTemplate` int NOT NULL,
  `defaultOrderStatus` int NOT NULL DEFAULT '0',
  `cancelledOrderStatus` int NOT NULL,
  `runningOrderStatus` int NOT NULL,
  `deductFromStock` int NOT NULL DEFAULT '1',
  `startBarcodeFrom` int NOT NULL,
  `storeClosingDate` varchar(255) NOT NULL,
  `maxBills` int NOT NULL,
  `requiredOtpForRewardReedem` int NOT NULL DEFAULT '1',
  `minRewardPointsToSendOtp` int NOT NULL,
  `onProductCllickIncreasePosQuantity` int NOT NULL DEFAULT '1',
  `enableLightBox` int NOT NULL DEFAULT '0',
  `fetchCostInPurchase` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `store_settings`
--

INSERT INTO `store_settings` (`storeSettingId`, `websiteName`, `websiteLogo`, `adminEmail`, `contactMobile`, `contactEmail`, `address`, `mailJetUsername`, `mailJetPassword`, `mailJetEmail`, `mailJetName`, `mergeLogin`, `databaseBackup`, `fieldsToSendValueOnMail`, `filedsToReplaceOnMail`, `filedsToUnsetOnMails`, `hideAddEditDeleteIfNoStoreSelected`, `enableRewardPoints`, `rewardOnDiscountedProduct`, `minimumRewardPointsToReedem`, `rewardPercentOnProduct`, `walkInCustomerId`, `invoicePrefix`, `storeId`, `userId`, `updatedBy`, `insertedBy`, `status`, `cartAppendStyle`, `orderTypeRequired`, `enableOrderType`, `enableTaxes`, `showStoreInfomation`, `showExtraInformtionPopup`, `showWalletBalance`, `showRewardBalance`, `showAddCustomerBottom`, `salesPersonRequired`, `showSalesPerson`, `showQuickAdd`, `restaurant`, `showModal`, `showBarcode`, `showImage`, `showManufacturers`, `showCategories`, `storeTerms`, `invoiceHeaderText`, `invoiceFooterText`, `defaultInvoiceTemplate`, `defaultKotTemplate`, `defaultOrderStatus`, `cancelledOrderStatus`, `runningOrderStatus`, `deductFromStock`, `startBarcodeFrom`, `storeClosingDate`, `maxBills`, `requiredOtpForRewardReedem`, `minRewardPointsToSendOtp`, `onProductCllickIncreasePosQuantity`, `enableLightBox`, `fetchCostInPurchase`) VALUES
(1, 'Default New Shop', 'public/assets/uploads/662747144.png', 'pkv172019@gmail.com', '8888888888', '', 'Your address goes here', '6678bd56cba1c932705fcec18ddf06f0', '4f1c0a54fb8f4fc9bd8670abb8311ceb', 'sehrawat899@gmail.com', 'Priyavrat', 0, 1, 'ContactAgent', 'customerId-fullName-customers,propertyId-heading-properties', '', 'customer_group,vendors,customers,manufacturers,products,additional_charges', 1, 0, 0, '10', 1, 'INV-2024-', 1, 1, 1, 1, 1, 'append', 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, '<p>This article will get you started with creating your own custom Terms and Conditions agreement. We&#39;ve also put together a Sample Terms and Conditions Template that you can use to help you write your own.</p>\r\n', '', '', 1, 3, 1, 3, 2, 0, 0, '2024-04-16,2024-04-20,2024-04-27', 0, 1, 24000, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE `tables` (
  `tableId` int NOT NULL,
  `tableName` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `primaryKeyName` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `columns` text COLLATE utf8mb4_general_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tables`
--

INSERT INTO `tables` (`tableId`, `tableName`, `primaryKeyName`, `columns`, `status`) VALUES
(1, 'contacts', 'contactId', '[{\"Field\":\"contactId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"name\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"email\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"mobile\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"subject\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"message\",\"Type\":\"mediumtext\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"CURRENT_TIMESTAMP\",\"Extra\":\"DEFAULT_GENERATED\"}]', 1),
(2, 'databaseBackup', 'databaseBackupId', '[{\"Field\":\"databaseBackupId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"backUpName\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"type\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"CURRENT_TIMESTAMP\",\"Extra\":\"DEFAULT_GENERATED\"}]', 1),
(3, 'filters', 'filterId', '[{\"Field\":\"filterId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"filterModuleId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"filtertableName\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"fieldNameReadonly\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"tableName\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"tableFirstColumn\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"tableColumn\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"fieldHeading\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"fieldType\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"fieldName\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"fieldClass\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"fieldId\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"fieldPlaceholder\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"selectBoxValue\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"selectBoxHtml\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"orderBy\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"whereColumn\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"sortOrder\",\"Type\":\"int\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"lineNo\",\"Type\":\"int\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"additionalAttributes\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"rowColumnSize\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateBetweenFilter\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"filterWorkingCondition\",\"Type\":\"varchar(3)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"OR\",\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]', 1),
(4, 'filters_old', 'filterId', '[{\"Field\":\"filterId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"type\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"name\",\"Type\":\"varchar(50)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"class\",\"Type\":\"varchar(50)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"id\",\"Type\":\"varchar(50)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"value\",\"Type\":\"varchar(50)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"tableName\",\"Type\":\"varchar(50)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"selectIdColumn\",\"Type\":\"varchar(50)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"selectHeadingColumn\",\"Type\":\"varchar(50)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"idValue\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"headingValue\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"defaultValue\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"filterTypeId\",\"Type\":\"int(11)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"line\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"forWhat\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"orderByColumn\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"sortOrder\",\"Type\":\"varchar(11)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]', 1),
(5, 'filter_types', 'fiterTypeId', '[{\"Field\":\"fiterTypeId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]', 1),
(6, 'inner_banner', 'innerBannerId', '[{\"Field\":\"innerBannerId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"page\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"heading\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"image\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]', 1),
(7, 'menus', 'menuId', '[{\"Field\":\"menuId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"menuHeading\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"link\",\"Type\":\"varchar(100)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"icon\",\"Type\":\"varchar(100)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"moduleId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"parentId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"sortOrder\",\"Type\":\"int\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"roleId\",\"Type\":\"varchar(30)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"CURRENT_TIMESTAMP\",\"Extra\":\"DEFAULT_GENERATED\"},{\"Field\":\"dateUpdated\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"CURRENT_TIMESTAMP\",\"Extra\":\"DEFAULT_GENERATED on update CURRENT_TIMESTAMP\"},{\"Field\":\"insertedBy\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]', 1),
(8, 'messages', 'messageId', '[{\"Field\":\"messageId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"message\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"hindi\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"english\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]', 1),
(9, 'modules', 'moduleId', '[{\"Field\":\"moduleId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"moduleName\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"moduleTable\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"moduleFirstColumn\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"pageHeading\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"moduleData\",\"Type\":\"mediumtext\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"parentMenu\",\"Type\":\"varchar(30)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"sortOrder\",\"Type\":\"int\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"hideAdd\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"hideEdit\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"hideDelete\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"hideAction\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"addButtonText\",\"Type\":\"varchar(30)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"copyButtonText\",\"Type\":\"varchar(30)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"extraButtons\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"submitCodeBefore\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"submitCodeAfter\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"extraActionOnDeleteButton\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"additionalText\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"shortCode\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"frontendRedirectPage\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"sendMailToAdmin\",\"Type\":\"varchar(3)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"No\",\"Extra\":\"\"},{\"Field\":\"filedsToReplaceOnMail\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"filters\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"copyTable\",\"Type\":\"varchar(3)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"No\",\"Extra\":\"\"},{\"Field\":\"dataOfColumnToSkip\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"autoIncreamentColumn\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"timestamp\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"CURRENT_TIMESTAMP\",\"Extra\":\"DEFAULT_GENERATED\"}]', 1),
(10, 'pages', 'pageId', '[{\"Field\":\"pageId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"seo\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"metaTitle\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"metaKeyword\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"metaDescription\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"shortDescription\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"description\",\"Type\":\"mediumtext\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"image\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]', 1),
(11, 'seo', 'seoId', '[{\"Field\":\"seoId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"pageName\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"metaTitle\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"metaKeyword\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"metaDescription\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]', 1),
(12, 'settings', 'settingId', '[{\"Field\":\"settingId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"websiteName\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"websiteLogo\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"allowedImageSize\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"allowedFileSize\",\"Type\":\"varchar(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"metaTitle\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"metaKeyword\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"metaDescription\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"adminEmail\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"contactMobile\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"contactEmail\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"address\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"mailJetUsername\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"mailJetPassword\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"mailjetEmail\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"mailjetName\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"facebook\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"twitter\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"linkedin\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"instagram\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"mergeLogin\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"databaseBackup\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"fieldsToSendValueOnMail\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"filedsToReplaceOnMail\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"filedsToUnsetOnMails\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"hideAddEditDeleteIfNoStoreSelected\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"multiplePaymentMethod\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"creditPaymentMethod\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"returnPaymentMethod\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"walletPaymentMethod\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]', 1),
(13, 'tables', 'tableId', '[{\"Field\":\"tableId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"tableName\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"primaryKeyName\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"columns\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]', 1),
(14, 'templates', 'templateId', '[{\"Field\":\"templateId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"subject\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"template\",\"Type\":\"mediumtext\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"forWhat\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"forWhom\",\"Type\":\"varchar(10)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"CURRENT_TIMESTAMP\",\"Extra\":\"DEFAULT_GENERATED\"}]', 1),
(15, 'users', 'userId', '[{\"Field\":\"userId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"userName\",\"Type\":\"varchar(30)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userEmail\",\"Type\":\"varchar(100)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":\"NULL\",\"Extra\":\"\"},{\"Field\":\"userPassword\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userMobile\",\"Type\":\"varchar(30)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"roleId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"superAdmin\",\"Type\":\"varchar(3)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"No\",\"Extra\":\"\"},{\"Field\":\"dataBaseName\",\"Type\":\"varchar(30)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dbUser\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dbPass\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"loginToken\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeUserId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]', 1),
(16, 'admin_login_history', 'adminLoginHistoryId', '[{\"Field\":\"adminLoginHistoryId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"userId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"CURRENT_TIMESTAMP\",\"Extra\":\"DEFAULT_GENERATED\"}]', 1),
(17, 'image_manager', 'imageManagerId', '[{\"Field\":\"imageManagerId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"image\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]', 1),
(18, 'countries', 'countryId', '[{\"Field\":\"countryId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"sortOrder\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"softDelete\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"updatedBy\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"dateUpdated\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"CURRENT_TIMESTAMP\",\"Extra\":\"DEFAULT_GENERATED on update CURRENT_TIMESTAMP\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"CURRENT_TIMESTAMP\",\"Extra\":\"DEFAULT_GENERATED\"},{\"Field\":\"status\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"}]', 1),
(19, 'roles', 'roleId', '[{\"Field\":\"roleId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"permission\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"}]', 1),
(20, 'states', 'stateId', '[{\"Field\":\"stateId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"countryId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"sortOrder\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"image\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"description\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"softDelete\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"updatedBy\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateUpdated\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"CURRENT_TIMESTAMP\",\"Extra\":\"DEFAULT_GENERATED on update CURRENT_TIMESTAMP\"},{\"Field\":\"insertedBy\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"CURRENT_TIMESTAMP\",\"Extra\":\"DEFAULT_GENERATED\"},{\"Field\":\"status\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"}]', 1),
(21, 'stores', 'storeId', '[{\"Field\":\"storeId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"name\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"tagline\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"email\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"mobile\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"address\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"cityId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"stateId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"sortOrder\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"storeToken\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"softDelete\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"updatedBy\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"dateUpdated\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"CURRENT_TIMESTAMP\",\"Extra\":\"DEFAULT_GENERATED\"},{\"Field\":\"status\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]', 1),
(22, 'customer_group', 'customerGroupId', '[{\"Field\":\"customerGroupId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"defaultDiscountPercent\",\"Type\":\"varchar(10)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"sortOrder\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"default\",\"Type\":\"varchar(10)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"softDelete\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"updatedBy\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"dateUpdated\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"CURRENT_TIMESTAMP\",\"Extra\":\"DEFAULT_GENERATED\"}]', 1),
(23, 'cities', 'cityId', '[{\"Field\":\"cityId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"stateId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"countryId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]', 1),
(24, 'taxes', 'taxId', '[{\"Field\":\"taxId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"percent\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"sortOrder\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"}]', 1),
(25, 'units', 'unitId', '[{\"Field\":\"unitId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"unit\",\"Type\":\"varchar(10)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"sortOrder\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"}]', 1),
(26, 'vendors', 'vendorId', '[{\"Field\":\"vendorId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"mobile\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"email\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"gstNumber\",\"Type\":\"varchar(30)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"openingBalance\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"cityId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"stateId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"countryId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"image\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"sorftDelete\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"updatedBy\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateUpdated\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"CURRENT_TIMESTAMP\",\"Extra\":\"DEFAULT_GENERATED on update CURRENT_TIMESTAMP\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"CURRENT_TIMESTAMP\",\"Extra\":\"DEFAULT_GENERATED\"},{\"Field\":\"status\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]', 1),
(27, 'customers', 'customerId', '[{\"Field\":\"customerId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"name\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"mobile\",\"Type\":\"varchar(20)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"email\",\"Type\":\"varchar(100)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"openingBalance\",\"Type\":\"int\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"walletBalance\",\"Type\":\"int\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"rewardPoints\",\"Type\":\"int\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"customerGroupId\",\"Type\":\"int\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"cityId\",\"Type\":\"varchar(50)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"stateId\",\"Type\":\"int\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"countryId\",\"Type\":\"int\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"updatedBy\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateUpdated\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"CURRENT_TIMESTAMP\",\"Extra\":\"DEFAULT_GENERATED on update CURRENT_TIMESTAMP\"},{\"Field\":\"softDelete\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"CURRENT_TIMESTAMP\",\"Extra\":\"DEFAULT_GENERATED\"}]', 1),
(28, 'customer_ledger', 'customerLedgerId', '[{\"Field\":\"customerLedgerId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"orderId\",\"Type\":\"int(11)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"customerId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"amount\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"type\",\"Type\":\"varchar(10)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"paymentId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"remark\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"softDelete\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]', 1),
(29, 'categories', 'categoryId', '[{\"Field\":\"categoryId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"image\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"parentId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"updatedBy\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateUpdated\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"CURRENT_TIMESTAMP\",\"Extra\":\"DEFAULT_GENERATED on update CURRENT_TIMESTAMP\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"CURRENT_TIMESTAMP\",\"Extra\":\"DEFAULT_GENERATED\"},{\"Field\":\"softDelete\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]', 1),
(30, 'manufacturers', 'manufacturerId', '[{\"Field\":\"manufacturerId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"image\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"softDelete\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"dateUpdated\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"CURRENT_TIMESTAMP\",\"Extra\":\"DEFAULT_GENERATED on update CURRENT_TIMESTAMP\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"CURRENT_TIMESTAMP\",\"Extra\":\"DEFAULT_GENERATED\"},{\"Field\":\"status\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"}]', 1),
(31, 'products', 'productId', '[{\"Field\":\"productId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"model\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"barcode\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"cost\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"price\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"percent\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"manufacturerId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"categoryId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"vendorId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"unitId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"taxId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"taxType\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"Exclusive\",\"Extra\":\"\"},{\"Field\":\"hsnCode\",\"Type\":\"varchar(30)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"quantity\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"subtract\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"changePriceDuringBilling\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"image\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"relatedImage\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"showInPos\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"softDelete\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"updatedBy\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateUpdated\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"CURRENT_TIMESTAMP\",\"Extra\":\"DEFAULT_GENERATED on update CURRENT_TIMESTAMP\"},{\"Field\":\"status\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"CURRENT_TIMESTAMP\",\"Extra\":\"DEFAULT_GENERATED\"}]', 1),
(32, 'store_settings', 'storeSettingId', '[{\"Field\":\"storeSettingId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"websiteName\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"websiteLogo\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"adminEmail\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"contactMobile\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"contactEmail\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"address\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"mailJetUsername\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"mailJetPassword\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"mailJetEmail\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"mailJetName\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"mergeLogin\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"databaseBackup\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"fieldsToSendValueOnMail\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"filedsToReplaceOnMail\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"filedsToUnsetOnMails\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"hideAddEditDeleteIfNoStoreSelected\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"enableRewardPoints\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"rewardOnDiscountedProduct\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"minimumRewardPointsToReedem\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"rewardPercentOnProduct\",\"Type\":\"varchar(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"walkInCustomerId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"invoicePrefix\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"updatedBy\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"cartAppendStyle\",\"Type\":\"varchar(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"orderTypeRequired\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"enableOrderType\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"enableTaxes\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"showStoreInfomation\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"showExtraInformtionPopup\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"showWalletBalance\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"showRewardBalance\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"showAddCustomerBottom\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"salesPersonRequired\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"showSalesPerson\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"showQuickAdd\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"restaurant\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"showModal\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"showBarcode\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"showImage\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"showManufacturers\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"showCategories\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeTerms\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"invoiceHeaderText\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"invoiceFooterText\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"defaultInvoiceTemplate\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"defaultKotTemplate\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"defaultOrderStatus\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"cancelledOrderStatus\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"runningOrderStatus\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"deductFromStock\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"startBarcodeFrom\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeClosingDate\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"maxBills\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"requiredOtpForRewardReedem\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"minRewardPointsToSendOtp\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"onProductCllickIncreasePosQuantity\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"enableLightBox\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"fetchCostInPurchase\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]', 1);
INSERT INTO `tables` (`tableId`, `tableName`, `primaryKeyName`, `columns`, `status`) VALUES
(33, 'seating_tables', 'seatingTableId', '[{\"Field\":\"seatingTableId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"capacity\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"dateUpdated\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"CURRENT_TIMESTAMP\",\"Extra\":\"DEFAULT_GENERATED on update CURRENT_TIMESTAMP\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"CURRENT_TIMESTAMP\",\"Extra\":\"DEFAULT_GENERATED\"}]', 1),
(34, 'languages', 'languageId', '[{\"Field\":\"languageId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]', 1),
(35, 'employees', 'employeeId', '[{\"Field\":\"employeeId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"name\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"mobile\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"email\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"sallery\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dob\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"softDelete\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"updatedBy\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateUpdated\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"CURRENT_TIMESTAMP\",\"Extra\":\"DEFAULT_GENERATED on update CURRENT_TIMESTAMP\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"CURRENT_TIMESTAMP\",\"Extra\":\"DEFAULT_GENERATED\"},{\"Field\":\"status\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]', 1),
(36, 'payments', 'paymentId', '[{\"Field\":\"paymentId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"name\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"sortOrder\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"softDelete\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]', 1),
(37, 'store_payments', 'storePaymentId', '[{\"Field\":\"storePaymentId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"payments\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"default\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]', 1),
(38, 'order', 'orderId', '[{\"Field\":\"orderId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"sno\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"customerId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"invoicePrefix\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"name\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"email\",\"Type\":\"varchar(50)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"mobile\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"subTotal\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"tax\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"productDiscount\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"additionalCharges\",\"Type\":\"text\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"globalDiscount\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"paymentId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"paymentMethod\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"multiplePaymentData\",\"Type\":\"text\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"total\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"rewardEarned\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"rewardUsed\",\"Type\":\"varchar(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"orderType\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"checkoutType\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"runningOrder\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"kotToken\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"seatingTableId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"seatingTableHeading\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"hold\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"orderStatusId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"orderStatusHeading\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"orderProduct\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"orderTotal\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"employeeId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"posComment\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"posImage\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"deliveryDate\",\"Type\":\"varchar(30)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"salesUserId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"totalItemsInCart\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"totalQuantityInCart\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"softDelete\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"CURRENT_TIMESTAMP\",\"Extra\":\"DEFAULT_GENERATED\"}]', 1),
(39, 'order_kot', 'orderKotId', '[{\"Field\":\"orderKotId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"orderId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"kotToken\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]', 1),
(40, 'order_product', 'orderProductId', '[{\"Field\":\"orderProductId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"orderId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"productId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"heading\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"model\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"barcode\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"taxId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"taxHeading\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"taxType\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"taxPercent\",\"Type\":\"varchar(5)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"tax\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"quantity\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"discount\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"discountValue\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"rewardPoints\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"cost\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"price\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"percent\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"total\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"hsnCode\",\"Type\":\"varchar(30)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"changePriceDuringBilling\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"extraInformation\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"updatedBy\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateModified\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"CURRENT_TIMESTAMP\",\"Extra\":\"DEFAULT_GENERATED on update CURRENT_TIMESTAMP\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"CURRENT_TIMESTAMP\",\"Extra\":\"DEFAULT_GENERATED\"},{\"Field\":\"kotToken\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"sentToKot\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"kotViewed\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"kotViewedBy\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"taxInclusiveValue\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"taxExclusiveValue\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"basePriceCost\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"profit\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]', 1),
(41, 'order_total', 'orderTotalId', '[{\"Field\":\"orderTotalId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"orderId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"orderTotal\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]', 1),
(42, 'additional_charges', 'additionalChargeId', '[{\"Field\":\"additionalChargeId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"sortOrder\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"updatedBy\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]', 1),
(43, 'invoice_template', 'invoiceTemplateId', '[{\"Field\":\"invoiceTemplateId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"template\",\"Type\":\"mediumtext\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"tableCode\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"loopTrCode\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"customCss\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"subTotalTrLoop\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]', 1),
(44, 'customer_ledger_reward', 'customerLedgerRewardId', '[{\"Field\":\"customerLedgerRewardId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"orderId\",\"Type\":\"int\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"customerId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"reward\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"type\",\"Type\":\"varchar(10)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"paymentId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"remark\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"payInOut\",\"Type\":\"varchar(10)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"softDelete\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"CURRENT_TIMESTAMP\",\"Extra\":\"DEFAULT_GENERATED\"}]', 1),
(45, 'customer_ledger_wallet', 'customerLedgerId', '[{\"Field\":\"customerLedgerId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"orderId\",\"Type\":\"int\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"customerId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"amount\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"type\",\"Type\":\"varchar(10)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"paymentId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"remark\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"payInOut\",\"Type\":\"varchar(10)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"softDelete\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"CURRENT_TIMESTAMP\",\"Extra\":\"DEFAULT_GENERATED\"}]', 1),
(46, 'order_status', 'orderStatusId', '[{\"Field\":\"orderStatusId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]', 1),
(47, 'purchases', 'purchaseId', '[{\"Field\":\"purchaseId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"sno\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"heading\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"refrence\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"vendorId\",\"Type\":\"varchar(11)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"date\",\"Type\":\"varchar(20)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"billType\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"products\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"quantity\",\"Type\":\"float\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"comment\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"subTotal\",\"Type\":\"float\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"tax\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"total\",\"Type\":\"float\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"purchaseStatus\",\"Type\":\"varchar(1)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"softDelete\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"updatedBy\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateUpdated\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"CURRENT_TIMESTAMP\",\"Extra\":\"DEFAULT_GENERATED on update CURRENT_TIMESTAMP\"},{\"Field\":\"status\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"CURRENT_TIMESTAMP\",\"Extra\":\"DEFAULT_GENERATED\"}]', 1),
(48, 'migrations', 'id', '[{\"Field\":\"id\",\"Type\":\"int unsigned\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"migration\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"batch\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"}]', 1),
(49, 'personal_access_tokens', 'id', '[{\"Field\":\"id\",\"Type\":\"bigint unsigned\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"tokenable_type\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"MUL\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"tokenable_id\",\"Type\":\"bigint unsigned\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"name\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"token\",\"Type\":\"varchar(64)\",\"Null\":\"NO\",\"Key\":\"UNI\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"abilities\",\"Type\":\"text\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"last_used_at\",\"Type\":\"timestamp\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"created_at\",\"Type\":\"timestamp\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"updated_at\",\"Type\":\"timestamp\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"}]', 1),
(50, 'customer_pay_in_out', 'customerPayInOutId', '[{\"Field\":\"customerPayInOutId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"customerId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"amount\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"type\",\"Type\":\"varchar(10)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateUpdated\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"CURRENT_TIMESTAMP\",\"Extra\":\"DEFAULT_GENERATED on update CURRENT_TIMESTAMP\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"CURRENT_TIMESTAMP\",\"Extra\":\"DEFAULT_GENERATED\"}]', 1),
(51, 'codes', 'codeId', '[{\"Field\":\"codeId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"alphabat\",\"Type\":\"varchar(10)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"number\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]', 1),
(52, 'order_history', 'orderHistoryId', '[{\"Field\":\"orderHistoryId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"orderId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"orderStatusId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"comment\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"CURRENT_TIMESTAMP\",\"Extra\":\"DEFAULT_GENERATED\"}]', 1),
(53, 'profit_report', 'profitReportId', '[{\"Field\":\"profitReportId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"type\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"id\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"costPrice\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"quantity\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"tax\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"taxType\",\"Type\":\"varchar(10)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"taxPercent\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"discount\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"total\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"profit\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"finalAmount\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"basePriceCost\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"}]', 1),
(54, 'comment_master', 'commentMasterId', '[{\"Field\":\"commentMasterId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"comment\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]', 1),
(55, 'popup_message', 'popupMessageId', '[{\"Field\":\"popupMessageId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"message\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]', 1),
(56, 'popup_message_list', 'popupMessageListId', '[{\"Field\":\"popupMessageListId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"message\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"viewed\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"CURRENT_TIMESTAMP\",\"Extra\":\"DEFAULT_GENERATED\"}]', 1),
(57, 'reward_otp', 'rewardOtpId', '[{\"Field\":\"rewardOtpId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"customerId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"orderId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"otp\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"otpToken\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"CURRENT_TIMESTAMP\",\"Extra\":\"DEFAULT_GENERATED\"}]', 1),
(58, 'reward_otp_skip_reason', 'rewardOtpSkipReasonId', '[{\"Field\":\"rewardOtpSkipReasonId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"customerId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"orderId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"reason\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"skipOtpToken\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"CURRENT_TIMESTAMP\",\"Extra\":\"DEFAULT_GENERATED\"}]', 1),
(59, 'expenses', 'expenseId', '[{\"Field\":\"expenseId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"amount\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"vendorId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"expenseCategoryId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"relatedImage\",\"Type\":\"varchar(1000)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"CURRENT_TIMESTAMP\",\"Extra\":\"DEFAULT_GENERATED\"}]', 1),
(60, 'expense_categories', 'expenseCategoryId', '[{\"Field\":\"expenseCategoryId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]', 1);

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `taxId` int NOT NULL,
  `heading` varchar(50) NOT NULL,
  `percent` float(11,2) NOT NULL,
  `sortOrder` int NOT NULL,
  `status` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `templateId` int NOT NULL,
  `subject` varchar(100) NOT NULL,
  `template` mediumtext NOT NULL,
  `forWhat` varchar(100) NOT NULL,
  `forWhom` varchar(10) NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `dateAdded` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

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
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `unitId` int NOT NULL,
  `heading` varchar(50) NOT NULL,
  `unit` varchar(10) NOT NULL,
  `sortOrder` int NOT NULL,
  `status` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

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
  `userId` int NOT NULL,
  `userName` varchar(30) NOT NULL,
  `userEmail` varchar(100) DEFAULT 'NULL',
  `userPassword` varchar(255) DEFAULT NULL,
  `userMobile` varchar(30) NOT NULL,
  `roleId` int NOT NULL,
  `superAdmin` varchar(3) NOT NULL DEFAULT 'No',
  `dataBaseName` varchar(30) NOT NULL,
  `dbUser` varchar(100) NOT NULL,
  `dbPass` varchar(100) NOT NULL,
  `loginToken` varchar(255) NOT NULL,
  `storeUserId` int NOT NULL,
  `storeId` int NOT NULL,
  `insertedBy` int NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `vendorId` int NOT NULL,
  `heading` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `mobile` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `gstNumber` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `openingBalance` int NOT NULL,
  `cityId` int NOT NULL,
  `stateId` int NOT NULL,
  `countryId` int NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `storeId` int NOT NULL,
  `userId` int NOT NULL,
  `sorftDelete` int NOT NULL DEFAULT '0',
  `updatedBy` int NOT NULL,
  `insertedBy` int NOT NULL,
  `dateUpdated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dateAdded` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int NOT NULL DEFAULT '1'
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
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerId`);

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
  MODIFY `additionalChargeId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_login_history`
--
ALTER TABLE `admin_login_history`
  MODIFY `adminLoginHistoryId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categoryId` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `cityId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `codes`
--
ALTER TABLE `codes`
  MODIFY `codeId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `comment_master`
--
ALTER TABLE `comment_master`
  MODIFY `commentMasterId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `contactId` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `countryId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customerId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer_group`
--
ALTER TABLE `customer_group`
  MODIFY `customerGroupId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customer_ledger_reward`
--
ALTER TABLE `customer_ledger_reward`
  MODIFY `customerLedgerRewardId` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_ledger_wallet`
--
ALTER TABLE `customer_ledger_wallet`
  MODIFY `customerLedgerId` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_pay_in_out`
--
ALTER TABLE `customer_pay_in_out`
  MODIFY `customerPayInOutId` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `databasebackup`
--
ALTER TABLE `databasebackup`
  MODIFY `databaseBackupId` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `employeeId` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `expenseId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `expenseCategoryId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `filters`
--
ALTER TABLE `filters`
  MODIFY `filterId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `filter_types`
--
ALTER TABLE `filter_types`
  MODIFY `fiterTypeId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `image_manager`
--
ALTER TABLE `image_manager`
  MODIFY `imageManagerId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `inner_banner`
--
ALTER TABLE `inner_banner`
  MODIFY `innerBannerId` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_template`
--
ALTER TABLE `invoice_template`
  MODIFY `invoiceTemplateId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `languageId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `manufacturerId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `menuId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `messageId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=655;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `moduleId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `orderId` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_history`
--
ALTER TABLE `order_history`
  MODIFY `orderHistoryId` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `orderProductId` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `orderStatusId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order_total`
--
ALTER TABLE `order_total`
  MODIFY `orderTotalId` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `pageId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `paymentId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `popup_message`
--
ALTER TABLE `popup_message`
  MODIFY `popupMessageId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `popup_message_list`
--
ALTER TABLE `popup_message_list`
  MODIFY `popupMessageListId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `productId` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profit_report`
--
ALTER TABLE `profit_report`
  MODIFY `profitReportId` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `purchaseId` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reward_otp`
--
ALTER TABLE `reward_otp`
  MODIFY `rewardOtpId` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reward_otp_skip_reason`
--
ALTER TABLE `reward_otp_skip_reason`
  MODIFY `rewardOtpSkipReasonId` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `roleId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `seating_tables`
--
ALTER TABLE `seating_tables`
  MODIFY `seatingTableId` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seo`
--
ALTER TABLE `seo`
  MODIFY `seoId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `settingId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `stateId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `storeId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `store_payments`
--
ALTER TABLE `store_payments`
  MODIFY `storePaymentId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `store_settings`
--
ALTER TABLE `store_settings`
  MODIFY `storeSettingId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tables`
--
ALTER TABLE `tables`
  MODIFY `tableId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `taxId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `templates`
--
ALTER TABLE `templates`
  MODIFY `templateId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `unitId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `vendorId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
