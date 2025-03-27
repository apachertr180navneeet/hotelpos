DROP TABLE IF EXISTS additional_charges;

CREATE TABLE `additional_charges` (
  `additionalChargeId` int(11) NOT NULL AUTO_INCREMENT,
  `heading` varchar(100) NOT NULL,
  `sortOrder` int(11) NOT NULL,
  `storeId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `updatedBy` int(11) NOT NULL,
  `insertedBy` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`additionalChargeId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO additional_charges VALUES("1","Shipping Charges","0","1","2","0","2","1");
INSERT INTO additional_charges VALUES("2","Transport Charges","0","1","2","0","2","1");



DROP TABLE IF EXISTS admin_login_history;

CREATE TABLE `admin_login_history` (
  `adminLoginHistoryId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`adminLoginHistoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO admin_login_history VALUES("1","1","1","2024-04-03 09:39:49");
INSERT INTO admin_login_history VALUES("2","1","1","2024-04-03 11:00:05");
INSERT INTO admin_login_history VALUES("3","1","1","2024-04-03 11:10:26");
INSERT INTO admin_login_history VALUES("4","1","1","2024-04-03 11:10:57");
INSERT INTO admin_login_history VALUES("5","1","1","2024-04-03 11:11:33");
INSERT INTO admin_login_history VALUES("6","1","1","2024-04-03 11:29:19");
INSERT INTO admin_login_history VALUES("7","1","1","2024-04-03 16:12:26");
INSERT INTO admin_login_history VALUES("8","1","1","2024-04-04 08:52:42");
INSERT INTO admin_login_history VALUES("9","1","1","2024-04-04 09:07:31");
INSERT INTO admin_login_history VALUES("10","1","1","2024-04-04 09:08:21");
INSERT INTO admin_login_history VALUES("11","2","1","2024-04-04 09:09:38");
INSERT INTO admin_login_history VALUES("12","2","1","2024-04-04 09:14:06");
INSERT INTO admin_login_history VALUES("13","1","1","2024-04-04 14:49:19");
INSERT INTO admin_login_history VALUES("14","2","1","2024-04-04 14:50:45");
INSERT INTO admin_login_history VALUES("15","1","1","2024-04-04 23:18:08");
INSERT INTO admin_login_history VALUES("16","2","1","2024-04-04 23:18:58");
INSERT INTO admin_login_history VALUES("17","1","1","2024-04-06 10:58:58");
INSERT INTO admin_login_history VALUES("18","2","1","2024-04-06 11:09:53");
INSERT INTO admin_login_history VALUES("19","2","1","2024-04-06 11:33:04");
INSERT INTO admin_login_history VALUES("20","1","1","2024-04-06 11:36:43");
INSERT INTO admin_login_history VALUES("21","2","1","2024-04-06 11:37:22");
INSERT INTO admin_login_history VALUES("22","2","1","2024-04-06 13:58:34");
INSERT INTO admin_login_history VALUES("23","2","1","2024-04-06 14:00:27");
INSERT INTO admin_login_history VALUES("24","2","1","2024-04-06 14:00:39");
INSERT INTO admin_login_history VALUES("25","2","1","2024-04-06 14:01:14");
INSERT INTO admin_login_history VALUES("26","1","1","2024-04-06 14:17:17");
INSERT INTO admin_login_history VALUES("27","2","1","2024-04-06 14:17:31");
INSERT INTO admin_login_history VALUES("28","1","1","2024-04-07 09:55:17");
INSERT INTO admin_login_history VALUES("29","2","1","2024-04-07 09:55:36");
INSERT INTO admin_login_history VALUES("30","1","1","2024-04-07 10:06:33");
INSERT INTO admin_login_history VALUES("31","1","1","2024-04-07 10:06:59");
INSERT INTO admin_login_history VALUES("32","2","1","2024-04-07 10:07:21");
INSERT INTO admin_login_history VALUES("33","1","1","2024-04-07 12:16:45");
INSERT INTO admin_login_history VALUES("34","2","1","2024-04-07 13:05:20");
INSERT INTO admin_login_history VALUES("35","1","1","2024-04-07 13:05:32");
INSERT INTO admin_login_history VALUES("36","1","1","2024-04-07 14:32:59");
INSERT INTO admin_login_history VALUES("37","2","1","2024-04-07 14:34:00");
INSERT INTO admin_login_history VALUES("38","1","1","2024-04-07 16:00:46");
INSERT INTO admin_login_history VALUES("39","1","1","2024-04-07 16:09:14");
INSERT INTO admin_login_history VALUES("40","1","1","2024-04-08 08:29:54");
INSERT INTO admin_login_history VALUES("41","1","1","2024-04-08 08:32:11");
INSERT INTO admin_login_history VALUES("42","1","1","2024-04-08 08:34:07");
INSERT INTO admin_login_history VALUES("43","1","1","2024-04-08 09:09:04");



DROP TABLE IF EXISTS categories;

CREATE TABLE `categories` (
  `categoryId` int(11) NOT NULL AUTO_INCREMENT,
  `heading` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `parentId` int(11) NOT NULL,
  `storeId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `updatedBy` int(11) NOT NULL,
  `insertedBy` int(11) NOT NULL,
  `dateUpdated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp(),
  `softDelete` int(1) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`categoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO categories VALUES("1","Laptops","","0","1","2","0","2","2024-02-28 03:03:00","2024-02-28 08:33:00","0","1");
INSERT INTO categories VALUES("2","Mobile","","0","1","2","0","2","2024-02-28 03:18:33","2024-02-28 08:48:33","0","1");



DROP TABLE IF EXISTS cities;

CREATE TABLE `cities` (
  `cityId` int(11) NOT NULL AUTO_INCREMENT,
  `heading` varchar(50) NOT NULL,
  `stateId` int(11) NOT NULL,
  `countryId` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`cityId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO cities VALUES("1","Gurgaon","17","1","1");



DROP TABLE IF EXISTS codes;

CREATE TABLE `codes` (
  `codeId` int(11) NOT NULL AUTO_INCREMENT,
  `alphabat` varchar(10) NOT NULL,
  `number` int(10) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`codeId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO codes VALUES("1","A","1","1");
INSERT INTO codes VALUES("2","L","2","1");
INSERT INTO codes VALUES("3","N","3","1");
INSERT INTO codes VALUES("4","D","4","1");
INSERT INTO codes VALUES("5","E","5","1");
INSERT INTO codes VALUES("6","F","6","1");
INSERT INTO codes VALUES("7","G","7","1");
INSERT INTO codes VALUES("8","H","8","1");
INSERT INTO codes VALUES("9","I","9","1");
INSERT INTO codes VALUES("10","J","0","1");



DROP TABLE IF EXISTS contacts;

CREATE TABLE `contacts` (
  `contactId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` mediumtext NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`contactId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;




DROP TABLE IF EXISTS countries;

CREATE TABLE `countries` (
  `countryId` int(11) NOT NULL AUTO_INCREMENT,
  `heading` varchar(100) NOT NULL,
  `sortOrder` int(11) NOT NULL,
  `softDelete` int(1) NOT NULL DEFAULT 0,
  `updatedBy` int(11) NOT NULL,
  `insertedBy` int(11) NOT NULL DEFAULT 0,
  `dateUpdated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(1) NOT NULL,
  PRIMARY KEY (`countryId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO countries VALUES("1","India","0","0","0","2","2024-02-24 07:42:09","2024-02-24 13:12:09","1");



DROP TABLE IF EXISTS customer_group;

CREATE TABLE `customer_group` (
  `customerGroupId` int(11) NOT NULL AUTO_INCREMENT,
  `heading` varchar(20) NOT NULL,
  `defaultDiscountPercent` varchar(10) NOT NULL,
  `sortOrder` int(11) NOT NULL DEFAULT 0,
  `default` varchar(10) NOT NULL,
  `softDelete` int(1) NOT NULL DEFAULT 0,
  `storeId` int(11) NOT NULL DEFAULT 0,
  `userId` int(11) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 1,
  `updatedBy` int(11) NOT NULL,
  `insertedBy` int(11) NOT NULL DEFAULT 0,
  `dateUpdated` datetime NOT NULL,
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`customerGroupId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO customer_group VALUES("1","Default","0","0","Yes","0","1","2","1","2","1","2024-02-24 05:38:10","2024-02-23 18:51:31");
INSERT INTO customer_group VALUES("2","VIP","0","0","No","0","1","2","1","2","1","2024-02-24 05:37:50","2024-02-23 18:51:52");
INSERT INTO customer_group VALUES("3","Super Vip","0","0","No","0","1","2","1","0","2","2024-02-24 04:26:27","2024-02-24 09:56:28");
INSERT INTO customer_group VALUES("4","Default","0","0","No","0","2","2","1","0","2","2024-02-24 05:29:11","2024-02-24 10:59:11");
INSERT INTO customer_group VALUES("5","Vip","0","0","Yes","0","2","2","1","2","2","2024-02-24 05:37:21","2024-02-24 10:59:47");



DROP TABLE IF EXISTS customer_ledger_reward;

CREATE TABLE `customer_ledger_reward` (
  `customerLedgerRewardId` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) DEFAULT 0,
  `customerId` int(11) NOT NULL,
  `reward` int(11) NOT NULL,
  `type` varchar(10) DEFAULT NULL,
  `paymentId` int(11) NOT NULL,
  `remark` varchar(500) NOT NULL,
  `payInOut` varchar(10) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `storeId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `softDelete` int(11) NOT NULL,
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`customerLedgerRewardId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO customer_ledger_reward VALUES("2","1","1","61097","Credit","8","Credit Added","","1","1","2","0","2024-04-01 15:13:07");
INSERT INTO customer_ledger_reward VALUES("3","2","1","66882","Credit","8","Credit Added","","1","1","2","0","2024-04-01 16:28:05");
INSERT INTO customer_ledger_reward VALUES("4","3","1","61097","Credit","8","Credit Added","","1","1","2","0","2024-04-01 16:52:22");
INSERT INTO customer_ledger_reward VALUES("5","4","1","66882","Credit","8","Credit Added","","1","1","2","0","2024-04-01 17:14:11");
INSERT INTO customer_ledger_reward VALUES("6","5","1","24222","Credit","8","Credit Added","","1","1","2","0","2024-04-07 14:33:23");



DROP TABLE IF EXISTS customer_ledger_wallet;

CREATE TABLE `customer_ledger_wallet` (
  `customerLedgerId` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) DEFAULT 0,
  `customerId` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `type` varchar(10) DEFAULT NULL,
  `paymentId` int(11) NOT NULL,
  `remark` varchar(500) NOT NULL,
  `payInOut` varchar(10) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `storeId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `softDelete` int(11) NOT NULL,
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`customerLedgerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;




DROP TABLE IF EXISTS customer_pay_in_out;

CREATE TABLE `customer_pay_in_out` (
  `customerPayInOutId` int(11) NOT NULL AUTO_INCREMENT,
  `customerId` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `type` varchar(10) NOT NULL,
  `storeId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `insertedBy` int(11) NOT NULL,
  `dateUpdated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`customerPayInOutId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;




DROP TABLE IF EXISTS customers;

CREATE TABLE `customers` (
  `customerId` int(11) NOT NULL AUTO_INCREMENT,
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
  `storeId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `insertedBy` int(11) NOT NULL,
  `updatedBy` int(11) NOT NULL,
  `dateUpdated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `softDelete` int(1) NOT NULL DEFAULT 0,
  `status` int(11) DEFAULT 1,
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`customerId`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO customers VALUES("1","Walk In Customer","0000000000","","0","0","280180","1","1","17","1","1","2","2","0","2024-04-07 14:33:23","0","1","2024-02-24 14:35:37");



DROP TABLE IF EXISTS databasebackup;

CREATE TABLE `databasebackup` (
  `databaseBackupId` int(11) NOT NULL AUTO_INCREMENT,
  `backUpName` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`databaseBackupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;




DROP TABLE IF EXISTS employees;

CREATE TABLE `employees` (
  `employeeId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `sallery` int(11) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `storeId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `softDelete` int(1) NOT NULL DEFAULT 0,
  `updatedBy` int(11) NOT NULL,
  `insertedBy` int(11) NOT NULL,
  `dateUpdated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`employeeId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO employees VALUES("1","Ramesh","8595899103","","0","","1","1","0","0","1","2024-02-27 10:08:50","2024-02-27 15:38:50","1");
INSERT INTO employees VALUES("2","Suresh","8285187287","","0","","1","1","0","0","1","2024-02-27 10:09:19","2024-02-27 15:39:19","1");



DROP TABLE IF EXISTS filter_types;

CREATE TABLE `filter_types` (
  `fiterTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `heading` varchar(20) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`fiterTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO filter_types VALUES("1","Top Filter","1");
INSERT INTO filter_types VALUES("2","Customer","1");



DROP TABLE IF EXISTS filters;

CREATE TABLE `filters` (
  `filterId` int(11) NOT NULL AUTO_INCREMENT,
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
  `status` int(1) DEFAULT 1,
  PRIMARY KEY (`filterId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO filters VALUES("9","5","menus","parentId,menus","menus","menuId","menuHeading","Parent Id","autosuggestive","parentId","parentId select2","parentId","Parent Id","0,>0","Parent,Child","","","0","1","","12","","OR","1");



DROP TABLE IF EXISTS image_manager;

CREATE TABLE `image_manager` (
  `imageManagerId` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`imageManagerId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO image_manager VALUES("1","public/assets/uploads/970564488.png","1");



DROP TABLE IF EXISTS inner_banner;

CREATE TABLE `inner_banner` (
  `innerBannerId` int(11) NOT NULL AUTO_INCREMENT,
  `page` varchar(20) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`innerBannerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;




DROP TABLE IF EXISTS invoice_template;

CREATE TABLE `invoice_template` (
  `invoiceTemplateId` int(11) NOT NULL AUTO_INCREMENT,
  `heading` varchar(100) NOT NULL,
  `template` mediumtext NOT NULL,
  `tableCode` text NOT NULL,
  `loopTrCode` text NOT NULL,
  `customCss` text NOT NULL,
  `subTotalTrLoop` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`invoiceTemplateId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO invoice_template VALUES("1","A4 Template 1","PHRpdGxlPnt7V0VCU0lURV9OQU1FfX08L3RpdGxlPjxtZXRhIG5hbWU9InZpZXdwb3J0IiBjb250ZW50PSJ3aWR0aD1kZXZpY2Utd2lkdGgsIGluaXRpYWwtc2NhbGU9MS4wIj48bWV0YSBjaGFyc2V0PSJVVEYtOCI+DQo8bGluayBocmVmPSJ7e1VSTH19L2JhY2tlbmQvaW52b2ljZS9hc3NldHMvY3NzL2Jvb3RzdHJhcC5taW4uY3NzIiByZWw9InN0eWxlc2hlZXQiIHR5cGU9InRleHQvY3NzIiAvPg0KPGxpbmsgaHJlZj0ie3tVUkx9fS9iYWNrZW5kL2ludm9pY2UvYXNzZXRzL2ZvbnRzL2ZvbnQtYXdlc29tZS9jc3MvZm9udC1hd2Vzb21lLm1pbi5jc3MiIHJlbD0ic3R5bGVzaGVldCIgdHlwZT0idGV4dC9jc3MiIC8+DQo8bGluayBocmVmPSJ7e1VSTH19L2JhY2tlbmQvaW52b2ljZS9hc3NldHMvaW1nL2Zhdmljb24uaWNvIiByZWw9InNob3J0Y3V0IGljb24iIHR5cGU9ImltYWdlL3gtaWNvbiIgLz4NCjxsaW5rIGNyb3Nzb3JpZ2luPSIiIGhyZWY9Imh0dHBzOi8vZm9udHMuZ3N0YXRpYy5jb20iIHJlbD0icHJlY29ubmVjdCIgLz4NCjxsaW5rIGhyZWY9Imh0dHBzOi8vZm9udHMuZ29vZ2xlYXBpcy5jb20vY3NzP2ZhbWlseT1Qb3BwaW5zOjEwMCwyMDAsMzAwLDQwMCw1MDAsNjAwLDcwMCw4MDAsOTAwIiByZWw9InN0eWxlc2hlZXQiIHR5cGU9InRleHQvY3NzIiAvPg0KPGxpbmsgaHJlZj0ie3tVUkx9fS9iYWNrZW5kL2ludm9pY2UvYXNzZXRzL2Nzcy9zdHlsZS5jc3MiIHJlbD0ic3R5bGVzaGVldCIgdHlwZT0idGV4dC9jc3MiIC8+DQo8ZGl2IGNsYXNzPSJpbnZvaWNlLTEgaW52b2ljZS1jb250ZW50Ij4NCjxkaXYgY2xhc3M9ImNvbnRhaW5lciI+DQo8ZGl2IGNsYXNzPSJyb3ciPg0KPGRpdiBjbGFzcz0iY29sLWxnLTEyIj4NCjxkaXYgY2xhc3M9Imludm9pY2UtaW5uZXIgY2xlYXJmaXgiPg0KPGRpdiBjbGFzcz0iaW52b2ljZS1pbmZvIGNsZWFyZml4IiBpZD0iaW52b2ljZV93cmFwcGVyIj4NCjxkaXYgY2xhc3M9Imludm9pY2UtaGVhZGFyIj4NCjxkaXYgY2xhc3M9InJvdyBnLTAiPg0KPGRpdiBjbGFzcz0iY29sLXNtLTYiPg0KPGRpdiBjbGFzcz0iaW52b2ljZS1sb2dvIj4NCjxkaXYgY2xhc3M9ImxvZ28iPjxpbWcgYWx0PSJsb2dvIiBzcmM9Int7VVJMfX0ve3tXRUJTSVRFX0xPR099fSIgLz48L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQoNCjxkaXYgY2xhc3M9ImNvbC1zbS02IGludm9pY2UtaWQiPg0KPGRpdiBjbGFzcz0iaW5mbyI+DQo8aDEgY2xhc3M9ImNvbG9yLXdoaXRlIGludi1oZWFkZXItMSI+SW52b2ljZTwvaDE+DQoNCjxwIGNsYXNzPSJjb2xvci13aGl0ZSBtYi0xIj5JbnZvaWNlIE51bWJlciA8c3Bhbj57e0lOVk9JQ0VfTlVNQkVSfX08L3NwYW4+PC9wPg0KDQo8cCBjbGFzcz0iY29sb3Itd2hpdGUgbWItMCI+SW52b2ljZSBEYXRlIDxzcGFuPnt7SU5WT0lDRV9EQVRFfX08L3NwYW4+PC9wPg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQoNCjxkaXYgY2xhc3M9Imludm9pY2UtdG9wIj4NCjxkaXYgY2xhc3M9InJvdyI+DQo8ZGl2IGNsYXNzPSJjb2wtc20tNiI+DQo8ZGl2IGNsYXNzPSJpbnZvaWNlLW51bWJlciBtYi0zMCI+DQo8aDQgY2xhc3M9Imludi10aXRsZS0xIj5JbnZvaWNlIFRvPC9oND4NCg0KPGgyIGNsYXNzPSJuYW1lIG1iLTEwIj57e0NVU1RPTUVSX05BTUV9fTwvaDI+DQp7e0NVU1RPTUVSX01PQklMRX19PGJyIC8+DQp7e0NVU1RPTUVSX0VNQUlMfX0NCjxwPiZuYnNwOzwvcD4NCjwvZGl2Pg0KPC9kaXY+DQoNCjxkaXYgY2xhc3M9ImNvbC1zbS02Ij4NCjxkaXYgY2xhc3M9Imludm9pY2UtbnVtYmVyIG1iLTMwIj4NCjxkaXYgY2xhc3M9Imludm9pY2UtbnVtYmVyLWlubmVyIj4NCjxoNCBjbGFzcz0iaW52LXRpdGxlLTEiPkludm9pY2UgRnJvbTwvaDQ+DQoNCjxoMiBjbGFzcz0ibmFtZSBtYi0xMCI+e3tTVE9SRV9OQU1FfX08L2gyPg0KDQo8cCBjbGFzcz0iaW52by1hZGRyLTEiPnt7U1RPUkVfQUREUkVTU319PGJyIC8+DQp7e1NUT1JFX01PQklMRX19PGJyIC8+DQp7e1NUT1JFX0VNQUlMfX08L3A+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KDQo8ZGl2IGNsYXNzPSJpbnZvaWNlLWNlbnRlciI+DQo8ZGl2IGNsYXNzPSJ0YWJsZS1yZXNwb25zaXZlIj57e1RBQkxFX0NPREV9fTwvZGl2Pg0KPC9kaXY+DQoNCjxkaXYgY2xhc3M9Imludm9pY2UtYm90dG9tIj4NCjxkaXYgY2xhc3M9InJvdyI+DQo8ZGl2IGNsYXNzPSJjb2wtbGctNiBjb2wtbWQtOCBjb2wtc20tNyI+DQo8ZGl2IGNsYXNzPSJtYi0zMCBkZWFyLWNsaWVudCI+DQo8aDMgY2xhc3M9Imludi10aXRsZS0xIj5UZXJtcyAmYW1wOyBDb25kaXRpb25zPC9oMz4NCg0KPHA+e3tTVE9SRV9URVJNU319PC9wPg0KPC9kaXY+DQo8L2Rpdj4NCg0KPGRpdiBjbGFzcz0iY29sLWxnLTYgY29sLW1kLTQgY29sLXNtLTUiPg0KPGRpdiBjbGFzcz0ibWItMzAgcGF5bWVudC1tZXRob2QiPg0KPGgzIGNsYXNzPSJpbnYtdGl0bGUtMSIgc3R5bGU9InRleHQtYWxpZ246cmlnaHQiPlBheW1lbnQgTWV0aG9kPC9oMz4NCg0KPHVsIGNsYXNzPSJwYXltZW50LW1ldGhvZC1saXN0LTEgdGV4dC0xNCI+DQoJPGxpIHN0eWxlPSJ0ZXh0LWFsaWduOnJpZ2h0O2ZvbnQtd2VpZ2h0OmJvbGQiPnt7T1JERVJfUEFZTUVOVF9NRVRIT0R9fTwvbGk+DQo8L3VsPg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQoNCjxkaXYgY2xhc3M9Imludm9pY2UtY29udGFjdCBjbGVhcmZpeCI+DQo8ZGl2IGNsYXNzPSJyb3cgZy0wIj4NCjxkaXYgY2xhc3M9ImNvbC1sZy05IGNvbC1tZC0xMSBjb2wtc20tMTIiPg0KPGRpdiBjbGFzcz0iY29udGFjdC1pbmZvIj48YSBocmVmPSJ0ZWw6KzU1LTRYWC02MzQtNzA3MSI+e3tTVE9SRV9NT0JJTEV9fTwvYT4gPGEgaHJlZj0idGVsOnt7U1RPUkVfRU1BSUx9fSI+e3tTVE9SRV9FTUFJTH19PC9hPiA8YSBjbGFzcz0ibXItMCBkLW5vbmUtNTgwIiBocmVmPSJ0ZWw6aW5mb0B0aGVtZXZlc3NlbC5jb20iPnt7U1RPUkVfQUREUkVTU319PC9hPjwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQoNCjxkaXYgY2xhc3M9Imludm9pY2UtYnRuLXNlY3Rpb24gY2xlYXJmaXggZC1wcmludC1ub25lIj48YSBjbGFzcz0iYnRuIGJ0bi1sZyBidG4tcHJpbnQiIGhyZWY9ImphdmFzY3JpcHQ6d2luZG93LnByaW50KCkiPlByaW50IEludm9pY2UgPC9hPiA8YSBjbGFzcz0iYnRuIGJ0bi1sZyBidG4tZG93bmxvYWQgYnRuLXRoZW1lIiBpZD0iaW52b2ljZV9kb3dubG9hZF9idG4iPiBEb3dubG9hZCBJbnZvaWNlIDwvYT48L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8c2NyaXB0IHNyYz0ie3tVUkx9fS9iYWNrZW5kL2ludm9pY2UvYXNzZXRzL2pzL2pxdWVyeS5taW4uanMiPjwvc2NyaXB0PjxzY3JpcHQgc3JjPSJ7e1VSTH19L2JhY2tlbmQvaW52b2ljZS9hc3NldHMvanMvanNwZGYubWluLmpzIj48L3NjcmlwdD48c2NyaXB0IHNyYz0ie3tVUkx9fS9iYWNrZW5kL2ludm9pY2UvYXNzZXRzL2pzL2h0bWwyY2FudmFzLmpzIj48L3NjcmlwdD48c2NyaXB0IHNyYz0ie3tVUkx9fS9iYWNrZW5kL2ludm9pY2UvYXNzZXRzL2pzL2FwcC5qcyI+PC9zY3JpcHQ+","PHRhYmxlIGNsYXNzPSJ0YWJsZSBtYi0wIHRhYmxlLXN0cmlwZWQgaW52b2ljZS10YWJsZSI+DQogICA8dGhlYWQgY2xhc3M9ImJnLWFjdGl2ZSI+DQogICAgICA8dHIgY2xhc3M9InRyIj4NCiAgICAgICAgIDx0aD5Oby48L3RoPg0KICAgICAgICAgPHRoIGNsYXNzPSJwbDAgdGV4dC1zdGFydCIgd2lkdGg9IjQwJSI+SXRlbSBEZXNjcmlwdGlvbjwvdGg+DQogICAgICAgICA8dGggY2xhc3M9InRleHQtY2VudGVyIj5QcmljZTwvdGg+DQogICAgICAgICA8dGggY2xhc3M9InRleHQtY2VudGVyIj5RdWFudGl0eTwvdGg+DQogICAgICAgICA8dGggY2xhc3M9InRleHQtY2VudGVyIj5EaXNjb3VudDwvdGg+DQogICAgICAgICA8dGggY2xhc3M9InRleHQtY2VudGVyIj5UYXg8L3RoPg0KICAgICAgICAgPHRoIGNsYXNzPSJ0ZXh0LWVuZCI+VG90YWw8L3RoPg0KICAgICAgPC90cj4NCiAgIDwvdGhlYWQ+DQogICA8dGJvZHk+DQogICAgICB7e0xPT1BfVFJfQ09ERX19DQogICAgICB7e1NVQl9UT1RBTF9UUl9MT09QfX0NCiAgIDwvdGJvZHk+DQo8L3RhYmxlPg==","PHRyIGNsYXNzPSJ0ciI+DQogICA8dGQ+DQogICAgICA8ZGl2IGNsYXNzPSJpdGVtLWRlc2MtMSI+PHNwYW4+e3tTTk99fTwvc3Bhbj48L2Rpdj4NCiAgIDwvdGQ+DQogICA8dGQgY2xhc3M9InBsMCIgd2lkdGg9IjQwJSI+e3tQUk9EVUNUX05BTUV9fTxkaXYgY2xhc3M9ImR4cXpremFlZnogZHhxemt6YWVment7SVZBTFVFfX0iPk1vZGVsIDoge3tQUk9EVUNUX01PREVMfX08L2Rpdj48ZGl2IGNsYXNzPSJtZm9wZnloa2ZiIG1mb3BmeWhrZmJ7e0lWQUxVRX19Ij5CYXJjb2RlIDoge3tQUk9EVUNUX0JBUkNPREV9fTwvZGl2PjxkaXYgY2xhc3M9ImpkaW9jeWdsZXIgamRpb2N5Z2xlcnt7SVZBTFVFfX0iPkV4dHJhIEluZm9ybWF0aW9uOiB7e1BST0RVQ1RfRVhUUkFfSU5GT1JNQVRJT059fTwvZGl2PjwvdGQ+DQogICA8dGQgY2xhc3M9InRleHQtY2VudGVyIHN5bWJvbCI+e3tQUk9EVUNUX1BSSUNFfX08L3RkPg0KICAgPHRkIGNsYXNzPSJ0ZXh0LWNlbnRlciAiPnt7UFJPRFVDVF9RVUFOVElUWX19PC90ZD4NCiAgIDx0ZCBjbGFzcz0idGV4dC1jZW50ZXIiPnt7UFJPRFVDVF9ESVNDT1VOVH19PGJyPjxzcGFuIGNsYXNzPSJzeW1ib2wiPnt7UFJPRFVDVF9ESVNDT1VOVF9WQUxVRX19PC9zcGFuPjwvdGQ+DQogICA8dGQgY2xhc3M9InRleHQtY2VudGVyIj57e1BST0RVQ1RfVEFYX0hFQURJTkd9fTxicj48c3BhbiBjbGFzcz0ic3ltYm9sIj57e1BST0RVQ1RfVEFYfX08L3NwYW4+PGJyPjxzcGFuPnt7UFJPRFVDVF9UQVhfVFlQRX19PC9zcGFuPjwvdGQ+DQogICA8dGQgY2xhc3M9InRleHQtZW5kIHN5bWJvbCI+PHN0cm9uZz57e1BST0RVQ1RfVE9UQUx9fTwvc3Ryb25nPjwvdGQ+DQo8L3RyPg==","LmR4cXpremFlZnosLm1mb3BmeWhrZmIsLmpkaW9jeWdsZXJ7DQogZm9udC1zaXplOjEycHg7DQpjb2xvcjojOTE5MTkxOw0KfQ0KIC5zeW1ib2w6OmJlZm9yZSB7DQogICAgICAgICBjb250ZW50OiAi4oK5IjsNCiAgICAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jazsNCiAgICAgICAgIG1hcmdpbi1yaWdodDogMnB4Ow0KICAgICAgICAgfQ0KLmNjZ2pkcnF6cmJfdG90YWwgdGR7DQpmb250LXNpemU6MTdweCAhaW1wb3J0YW50Ow0KfQ==","PHRyIGNsYXNzPSJ0cjIgY2NnamRycXpyYl97e0tFWUNMQVNTfX0iPg0KPHRkPjwvdGQ+DQo8dGQ+PC90ZD4NCiAgIDx0ZCBjbGFzcz0idGV4dC1yaWdodCIgY29sc3Bhbj0iMiI+PHN0cm9uZz57e0tFWX19PC9zdHJvbmc+PC90ZD4NCiAgIDx0ZCBjbGFzcz0idGV4dC1lbmQiIGNvbHNwYW49IjMiPjxzdHJvbmc+e3tWQUxVRX19PC9zdHJvbmc+PC90ZD4NCjwvdHI+","1");
INSERT INTO invoice_template VALUES("2","Thermal Invoice 1","PG1ldGEgaHR0cC1lcXVpdj0iQ29udGVudC1UeXBlIiBjb250ZW50PSJ0ZXh0L2h0bWw7IGNoYXJzZXQ9VVRGLTgiPjx0aXRsZT57e1dFQlNJVEVfTkFNRX19PC90aXRsZT4NCjxsaW5rIGhyZWY9Int7VVJMfX0vYmFja2VuZC9pbnZvaWNlL3RoZXJtYWwvYm9vdHN0cmFwLm1pbi5jc3MiIHJlbD0ic3R5bGVzaGVldCIgdHlwZT0idGV4dC9jc3MiIC8+DQo8bGluayBocmVmPSJ7e1VSTH19L2JhY2tlbmQvaW52b2ljZS90aGVybWFsL3NpemVfNTZtbS5jc3MiIG1lZGlhPSJhbGwiIHJlbD0ic3R5bGVzaGVldCIgLz4NCjxsaW5rIGhyZWY9Int7VVJMfX0vYmFja2VuZC9pbnZvaWNlL3RoZXJtYWwvcHJpbnRfYmlsbC5jc3MiIG1lZGlhPSJhbGwiIHJlbD0ic3R5bGVzaGVldCIgLz4NCjxkaXYgaWQ9IndyYXBwZXIiIHN0eWxlPSJwYWRkaW5nLXRvcDoycHgiPg0KPGRpdiBpZD0icmVjZWlwdERhdGEiPg0KPGRpdiBpZD0icmVjZWlwdC1kYXRhIj4NCjxkaXYgY2xhc3M9InRleHQtY2VudGVyIj48aW1nIHNyYz0ie3tVUkx9fS97e1dFQlNJVEVfTE9HT319IiBzdHlsZT0iaGVpZ2h0OiAyMHB4O21hcmdpbjphdXRvO2Rpc3BsYXk6YmxvY2siIC8+PC9kaXY+DQoNCjxociAvPg0KPHRhYmxlIGNsYXNzPSJ0YWJsZSB0YWJsZS1jb25kZW5zZWQiPg0KCTx0Ym9keT4NCgkJPHRyPg0KCQkJPHRkPkNsaWVudCA6IHt7Q1VTVE9NRVJfTkFNRX19PC90ZD4NCgkJCTx0ZCBhbGlnbj0icmlnaHQiPkRhdGUgOiB7e0lOVk9JQ0VfREFURX19PC90ZD4NCgkJPC90cj4NCgkJPHRyPg0KCQkJPHRkIGNvbHNwYW49IjIiPk1vYmlsZSA6IHt7Q1VTVE9NRVJfTU9CSUxFfX08L3RkPg0KCQk8L3RyPg0KCQk8dHI+DQoJCQk8dGQgY29sc3Bhbj0iMiI+UGF5bWVudCBNb2RlIDoge3tPUkRFUl9QQVlNRU5UX01FVEhPRH19PC90ZD4NCgkJPC90cj4NCgkJPHRyPg0KCQkJPHRkIGNvbHNwYW49IjIiPk9yZGVyIElkIDoge3tJTlZPSUNFX05VTUJFUn19PC90ZD4NCgkJPC90cj4NCgk8L3Rib2R5Pg0KPC90YWJsZT4NCg0KPGRpdiBjbGFzcz0iaXJfY2xlYXIiPiZuYnNwOzwvZGl2Pg0Ke3tUQUJMRV9DT0RFfX08L2Rpdj4NCg0KPGRpdiBjbGFzcz0iaXJfY2xlYXIiPiZuYnNwOzwvZGl2Pg0KPC9kaXY+DQo8aW5wdXQgb25jbGljaz0icHJpbnREaXYoJ3JlY2VpcHREYXRhJykiIHN0eWxlPSJkaXNwbGF5OmJsb2NrO21hcmdpbjphdXRvO3BhZGRpbmc6MTBweDtiYWNrZ3JvdW5kOiMzNGI0ZWI7bWFyZ2luLXRvcDoxMHB4O2JvcmRlcjowcHg7Y29sb3I6d2hpdGU7d2lkdGg6MTUwcHg7IiB0eXBlPSJidXR0b24iIHZhbHVlPSJQUklOVCIgLz48L2Rpdj4NCg==","PHRhYmxlIGNsYXNzPSJ0YWJsZSB0YWJsZS1jb25kZW5zZWQiIHN0eWxlPSJtYXJnaW4tdG9wOjVweCI+DQogICA8dGhlYWQ+DQogICAgICA8dHI+DQogICAgICAgICA8dGg+Tm8uPC90aD4NCiAgICAgICAgIDx0aCBjbGFzcz0icGwwIHRleHQtc3RhcnQiIHdpZHRoPSI0MCUiPkl0ZW08L3RoPg0KICAgICAgICAgPHRoIGNsYXNzPSJ0ZXh0LWNlbnRlciI+UHJpY2U8L3RoPg0KICAgICAgICAgPHRoIGNsYXNzPSJ0ZXh0LWNlbnRlciI+UXVhbnRpdHk8L3RoPg0KICAgICAgICAgPHRoIGNsYXNzPSJ0ZXh0LWNlbnRlciI+RGlzY291bnQ8L3RoPg0KICAgICAgICAgPHRoIGNsYXNzPSJ0ZXh0LWNlbnRlciI+VGF4PC90aD4NCiAgICAgICAgIDx0aCBjbGFzcz0idGV4dC1lbmQiPlRvdGFsPC90aD4NCiAgICAgIDwvdHI+DQogICA8L3RoZWFkPg0KICAgPHRib2R5Pg0KICAgICAge3tMT09QX1RSX0NPREV9fQ0KICAgICAge3tTVUJfVE9UQUxfVFJfTE9PUH19DQogICA8L3Rib2R5Pg0KPC90YWJsZT4=","PHRyIGNsYXNzPSJib3JkZXJVcERvd24iPg0KICAgPHRkIGNsYXNzPSJuby1ib3JkZXIgYm9yZGVyLWJvdHRvbSI+e3tTTk99fTwvdGQ+DQogICA8dGQgY2xhc3M9Im5vLWJvcmRlciBib3JkZXItYm90dG9tIj4NCiAgICAgIHt7UFJPRFVDVF9OQU1FfX0NCiAgICAgIDxkaXYgY2xhc3M9ImR4cXpremFlZnogZHhxemt6YWVment7SVZBTFVFfX0iPk1vZGVsIDoge3tQUk9EVUNUX01PREVMfX08L2Rpdj4NCiAgICAgIDxkaXYgY2xhc3M9Im1mb3BmeWhrZmIgbWZvcGZ5aGtmYnt7SVZBTFVFfX0iPkJhcmNvZGUgOiB7e1BST0RVQ1RfQkFSQ09ERX19PC9kaXY+DQogICAgICA8ZGl2IGNsYXNzPSJqZGlvY3lnbGVyIGpkaW9jeWdsZXJ7e0lWQUxVRX19Ij5FeHRyYSBJbmZvcm1hdGlvbjoge3tQUk9EVUNUX0VYVFJBX0lORk9STUFUSU9OfX08L2Rpdj4NCiAgIDwvdGQ+DQogICA8dGQgYWxpZ249InJpZ2h0IiBjbGFzcz0ibm8tYm9yZGVyIGJvcmRlci1ib3R0b20gc3ltYm9sIj57e1BST0RVQ1RfUFJJQ0V9fTwvdGQ+DQogICA8dGQgYWxpZ249InJpZ2h0IiBjbGFzcz0ibm8tYm9yZGVyIGJvcmRlci1ib3R0b20iPnt7UFJPRFVDVF9RVUFOVElUWX19PC90ZD4NCiAgIDx0ZCBhbGlnbj0icmlnaHQiIGNsYXNzPSJuby1ib3JkZXIgYm9yZGVyLWJvdHRvbSI+e3tQUk9EVUNUX0RJU0NPVU5UfX08YnI+PHNwYW4gY2xhc3M9InN5bWJvbCI+e3tQUk9EVUNUX0RJU0NPVU5UX1ZBTFVFfX08L3NwYW4+PC90ZD4NCiAgIDx0ZCBhbGlnbj0icmlnaHQiIGNsYXNzPSJuby1ib3JkZXIgYm9yZGVyLWJvdHRvbSB0ZXh0LXJpZ2h0Ij57e1BST0RVQ1RfVEFYX0hFQURJTkd9fTxicj48c3BhbiBjbGFzcz0ic3ltYm9sIj57e1BST0RVQ1RfVEFYfX08L3NwYW4+PC90ZD4NCiAgIDx0ZCBhbGlnbj0icmlnaHQiIGNsYXNzPSJuby1ib3JkZXIgYm9yZGVyLWJvdHRvbSB0ZXh0LXJpZ2h0IHN5bWJvbCI+e3tQUk9EVUNUX1RPVEFMfX08L3RkPg0KPC90cj4=","LmxtcXljb2djbm0gew0KICAgZm9udC1mYW1pbHk6ICdSb2JvdG8nLCBzYW5zLXNlcmlmOw0KfQ0KDQpib2R5IHsNCiAgIGZvbnQtd2VpZ2h0OiBib2xkOw0KICAgZm9udC1zaXplOiAxMnB4Ow0KICAgZm9udC1mYW1pbHk6ICdSb2JvdG8nLCBzYW5zLXNlcmlmOw0KfQ0KDQoudGFibGUgew0KICAgd2lkdGg6IDEwMCU7DQogICBtYXgtd2lkdGg6IDEwMCU7DQogICBtYXJnaW4tYm90dG9tOiAwcHg7DQp9DQoNCmgzIHsNCiAgIG1hcmdpbjogNXB4IDA7DQp9DQoNCi5oMywNCmgzIHsNCiAgIGZvbnQtc2l6ZTogMjRweDsNCn0NCg0KYiwNCnN0cm9uZyB7DQogICBmb250LXdlaWdodDogNzAwOw0KfQ0KDQp0YWJsZSB7DQogICBiYWNrZ3JvdW5kLWNvbG9yOiB0cmFuc3BhcmVudDsNCn0NCg0KdGFibGUgew0KICAgYm9yZGVyLXNwYWNpbmc6IDA7DQogICBib3JkZXItY29sbGFwc2U6IGNvbGxhcHNlOw0KfQ0KDQoudGFibGU+Y2FwdGlvbit0aGVhZD50cjpmaXJzdC1jaGlsZD50ZCwNCi50YWJsZT5jYXB0aW9uK3RoZWFkPnRyOmZpcnN0LWNoaWxkPnRoLA0KLnRhYmxlPmNvbGdyb3VwK3RoZWFkPnRyOmZpcnN0LWNoaWxkPnRkLA0KLnRhYmxlPmNvbGdyb3VwK3RoZWFkPnRyOmZpcnN0LWNoaWxkPnRoLA0KLnRhYmxlPnRoZWFkOmZpcnN0LWNoaWxkPnRyOmZpcnN0LWNoaWxkPnRkLA0KLnRhYmxlPnRoZWFkOmZpcnN0LWNoaWxkPnRyOmZpcnN0LWNoaWxkPnRoIHsNCiAgIGJvcmRlci10b3A6IDA7DQp9DQoNCi50YWJsZS1jb25kZW5zZWQ+dGJvZHk+dHI+dGQsDQoudGFibGUtY29uZGVuc2VkPnRib2R5PnRyPnRoLA0KLnRhYmxlLWNvbmRlbnNlZD50Zm9vdD50cj50ZCwNCi50YWJsZS1jb25kZW5zZWQ+dGZvb3Q+dHI+dGgsDQoudGFibGUtY29uZGVuc2VkPnRoZWFkPnRyPnRkLA0KLnRhYmxlLWNvbmRlbnNlZD50aGVhZD50cj50aCB7DQogICBwYWRkaW5nOiA1cHg7DQp9DQoNCi50YWJsZT50Ym9keT50cj50ZCwNCi50YWJsZT50Ym9keT50cj50aCwNCi50YWJsZT50Zm9vdD50cj50ZCwNCi50YWJsZT50Zm9vdD50cj50aCwNCi50YWJsZT50aGVhZD50cj50ZCwNCi50YWJsZT50aGVhZD50cj50aCB7DQogICBwYWRkaW5nOiAwcHg7DQogICBsaW5lLWhlaWdodDogMS40Mjg1NzE0MzsNCiAgIHZlcnRpY2FsLWFsaWduOiB0b3A7DQp9DQoNCnRkLA0KdGggew0KICAgcGFkZGluZzogMDsNCn0NCg0KLnRhYmxlIHRkLA0KLnRhYmxlIHRoIHsNCiAgIGJvcmRlci10b3A6IG5vbmU7DQp9DQoNCmhyIHsNCiAgIG1hcmdpbi10b3A6IDEwcHg7DQogICBtYXJnaW4tYm90dG9tOiAxMHB4Ow0KfQ0KDQouYm9yZGVyVXBEb3duIHsNCiAgIGJvcmRlci10b3A6IDFweCBzb2xpZCAjZTVlNWU1Ow0KICAgYm9yZGVyLWJvdHRvbTogMXB4IHNvbGlkICNlNWU1ZTU7DQp9DQoNCi5zeW1ib2w6OmJlZm9yZSB7DQogICBjb250ZW50OiAi4oK5IjsNCiAgIGRpc3BsYXk6IGlubGluZS1ibG9jazsNCn0=","PHRyIGNsYXNzPSJ0cjIgY2NnamRycXpyYl97e0tFWUNMQVNTfX0iPg0KICAgPHRkPjwvdGQ+DQogICA8dGQ+PC90ZD4NCiAgIDx0ZD48L3RkPg0KICAgPHRkIGNvbHNwYW49IjIiPjxzdHJvbmc+e3tLRVl9fTwvc3Ryb25nPjwvdGQ+DQogICA8dGQgY29sc3Bhbj0iMiIgY2xhc3M9InRleHQtcmlnaHQgc3ltYm9sIiBhbGlnbj0icmlnaHQiPjxzdHJvbmc+e3tWQUxVRX19PC9zdHJvbmc+PC90ZD4NCjwvdHI+","1");
INSERT INTO invoice_template VALUES("3","KOT Template 1","PG1ldGEgaHR0cC1lcXVpdj0iQ29udGVudC1UeXBlIiBjb250ZW50PSJ0ZXh0L2h0bWw7IGNoYXJzZXQ9VVRGLTgiPjx0aXRsZT57e1dFQlNJVEVfTkFNRX19PC90aXRsZT4NCjxsaW5rIGhyZWY9Int7VVJMfX0vYmFja2VuZC9pbnZvaWNlL3RoZXJtYWwvYm9vdHN0cmFwLm1pbi5jc3MiIHJlbD0ic3R5bGVzaGVldCIgdHlwZT0idGV4dC9jc3MiIC8+DQo8bGluayBocmVmPSJ7e1VSTH19L2JhY2tlbmQvaW52b2ljZS90aGVybWFsL3NpemVfNTZtbS5jc3MiIG1lZGlhPSJhbGwiIHJlbD0ic3R5bGVzaGVldCIgLz4NCjxsaW5rIGhyZWY9Int7VVJMfX0vYmFja2VuZC9pbnZvaWNlL3RoZXJtYWwvcHJpbnRfYmlsbC5jc3MiIG1lZGlhPSJhbGwiIHJlbD0ic3R5bGVzaGVldCIgLz4NCjxkaXYgaWQ9IndyYXBwZXIiIHN0eWxlPSJwYWRkaW5nLXRvcDoycHgiPg0KPGRpdiBpZD0icmVjZWlwdERhdGEiPg0KPGRpdiBpZD0icmVjZWlwdC1kYXRhIj4NCjxkaXYgY2xhc3M9InRleHQtY2VudGVyIj48aW1nIHNyYz0ie3tVUkx9fS97e1dFQlNJVEVfTE9HT319IiBzdHlsZT0iaGVpZ2h0OiAyMHB4O21hcmdpbjphdXRvO2Rpc3BsYXk6YmxvY2siIC8+PC9kaXY+DQoNCjxociAvPg0KPHRhYmxlIGNsYXNzPSJ0YWJsZSB0YWJsZS1jb25kZW5zZWQiPg0KCTx0Ym9keT4NCgkJPHRyPg0KCQkJPHRkPkNsaWVudCA6IHt7Q1VTVE9NRVJfTkFNRX19PC90ZD4NCgkJCTx0ZCBhbGlnbj0icmlnaHQiPlRhYmxlOiB7e1RBQkxFTk99fTwvdGQ+DQoJCTwvdHI+DQoJCTx0cj4NCgkJCTx0ZCBjb2xzcGFuPSIyIj5PcmRlciBJZCA6IHt7SU5WT0lDRV9OVU1CRVJ9fTwvdGQ+DQoJCTwvdHI+DQoJPC90Ym9keT4NCjwvdGFibGU+DQoNCjxkaXYgY2xhc3M9ImlyX2NsZWFyIj4mbmJzcDs8L2Rpdj4NCnt7VEFCTEVfQ09ERX19PC9kaXY+DQoNCjxkaXYgY2xhc3M9ImlyX2NsZWFyIj4mbmJzcDs8L2Rpdj4NCjwvZGl2Pg0KPGlucHV0IG9uY2xpY2sgPSAid2luZG93LnByaW50KCkiICBzdHlsZT0iZGlzcGxheTpibG9jazttYXJnaW46YXV0bztwYWRkaW5nOjEwcHg7YmFja2dyb3VuZDojMzRiNGViO21hcmdpbi10b3A6MTBweDtib3JkZXI6MHB4O2NvbG9yOndoaXRlO3dpZHRoOjE1MHB4OyIgdHlwZT0iYnV0dG9uIiB2YWx1ZT0iUFJJTlQiIC8+PC9kaXY+DQo=","PHRhYmxlIGNsYXNzPSJ0YWJsZSB0YWJsZS1jb25kZW5zZWQiIHN0eWxlPSJtYXJnaW4tdG9wOjVweCI+DQogICA8dGhlYWQ+DQogICAgICA8dHI+DQogICAgICAgICA8dGggY2xhc3M9InRleHQtc3RhcnQiPk5vLjwvdGg+DQogICAgICAgICA8dGggY2xhc3M9InRleHQtc3RhcnQiIHdpZHRoPSI0MCUiPkl0ZW08L3RoPg0KICAgICAgICAgPHRoIGNsYXNzPSJ0ZXh0LXJpZ2h0Ij5RdWFudGl0eTwvdGg+DQogICAgICA8L3RyPg0KICAgPC90aGVhZD4NCiAgIDx0Ym9keT4NCiAgICAgIHt7TE9PUF9UUl9DT0RFfX0NCiAgICAgIHt7U1VCX1RPVEFMX1RSX0xPT1B9fQ0KICAgPC90Ym9keT4NCjwvdGFibGU+","PHRyIGNsYXNzPSJib3JkZXJVcERvd24iPg0KICAgPHRkIGNsYXNzPSJuby1ib3JkZXIgYm9yZGVyLWJvdHRvbSI+e3tTTk99fTwvdGQ+DQogICA8dGQgY2xhc3M9Im5vLWJvcmRlciBib3JkZXItYm90dG9tIj4NCiAgICAgIHt7UFJPRFVDVF9OQU1FfX0NCiAgICAgIDxkaXYgY2xhc3M9ImpkaW9jeWdsZXIgamRpb2N5Z2xlcnt7SVZBTFVFfX0iPkV4dHJhIEluZm9ybWF0aW9uOiB7e1BST0RVQ1RfRVhUUkFfSU5GT1JNQVRJT059fTwvZGl2Pg0KICAgPC90ZD4NCiAgIDx0ZCBhbGlnbj0icmlnaHQiIGNsYXNzPSJuby1ib3JkZXIgYm9yZGVyLWJvdHRvbSI+e3tQUk9EVUNUX1FVQU5USVRZfX08L3RkPg0KPC90cj4=","LmxtcXljb2djbm0gew0KICAgZm9udC1mYW1pbHk6ICdSb2JvdG8nLCBzYW5zLXNlcmlmOw0KfQ0KDQpib2R5IHsNCiAgIGZvbnQtd2VpZ2h0OiBib2xkOw0KICAgZm9udC1zaXplOiAxMnB4Ow0KICAgZm9udC1mYW1pbHk6ICdSb2JvdG8nLCBzYW5zLXNlcmlmOw0KfQ0KDQoudGFibGUgew0KICAgd2lkdGg6IDEwMCU7DQogICBtYXgtd2lkdGg6IDEwMCU7DQogICBtYXJnaW4tYm90dG9tOiAwcHg7DQp9DQoNCmgzIHsNCiAgIG1hcmdpbjogNXB4IDA7DQp9DQoNCi5oMywNCmgzIHsNCiAgIGZvbnQtc2l6ZTogMjRweDsNCn0NCg0KYiwNCnN0cm9uZyB7DQogICBmb250LXdlaWdodDogNzAwOw0KfQ0KDQp0YWJsZSB7DQogICBiYWNrZ3JvdW5kLWNvbG9yOiB0cmFuc3BhcmVudDsNCn0NCg0KdGFibGUgew0KICAgYm9yZGVyLXNwYWNpbmc6IDA7DQogICBib3JkZXItY29sbGFwc2U6IGNvbGxhcHNlOw0KfQ0KDQoudGFibGU+Y2FwdGlvbit0aGVhZD50cjpmaXJzdC1jaGlsZD50ZCwNCi50YWJsZT5jYXB0aW9uK3RoZWFkPnRyOmZpcnN0LWNoaWxkPnRoLA0KLnRhYmxlPmNvbGdyb3VwK3RoZWFkPnRyOmZpcnN0LWNoaWxkPnRkLA0KLnRhYmxlPmNvbGdyb3VwK3RoZWFkPnRyOmZpcnN0LWNoaWxkPnRoLA0KLnRhYmxlPnRoZWFkOmZpcnN0LWNoaWxkPnRyOmZpcnN0LWNoaWxkPnRkLA0KLnRhYmxlPnRoZWFkOmZpcnN0LWNoaWxkPnRyOmZpcnN0LWNoaWxkPnRoIHsNCiAgIGJvcmRlci10b3A6IDA7DQp9DQoNCi50YWJsZS1jb25kZW5zZWQ+dGJvZHk+dHI+dGQsDQoudGFibGUtY29uZGVuc2VkPnRib2R5PnRyPnRoLA0KLnRhYmxlLWNvbmRlbnNlZD50Zm9vdD50cj50ZCwNCi50YWJsZS1jb25kZW5zZWQ+dGZvb3Q+dHI+dGgsDQoudGFibGUtY29uZGVuc2VkPnRoZWFkPnRyPnRkLA0KLnRhYmxlLWNvbmRlbnNlZD50aGVhZD50cj50aCB7DQogICBwYWRkaW5nOiA1cHg7DQp9DQoNCi50YWJsZT50Ym9keT50cj50ZCwNCi50YWJsZT50Ym9keT50cj50aCwNCi50YWJsZT50Zm9vdD50cj50ZCwNCi50YWJsZT50Zm9vdD50cj50aCwNCi50YWJsZT50aGVhZD50cj50ZCwNCi50YWJsZT50aGVhZD50cj50aCB7DQogICBwYWRkaW5nOiAwcHg7DQogICBsaW5lLWhlaWdodDogMS40Mjg1NzE0MzsNCiAgIHZlcnRpY2FsLWFsaWduOiB0b3A7DQp9DQoNCnRkLA0KdGggew0KICAgcGFkZGluZzogMDsNCn0NCg0KLnRhYmxlIHRkLA0KLnRhYmxlIHRoIHsNCiAgIGJvcmRlci10b3A6IG5vbmU7DQp9DQoNCmhyIHsNCiAgIG1hcmdpbi10b3A6IDEwcHg7DQogICBtYXJnaW4tYm90dG9tOiAxMHB4Ow0KfQ0KDQouYm9yZGVyVXBEb3duIHsNCiAgIGJvcmRlci10b3A6IDFweCBzb2xpZCAjZTVlNWU1Ow0KICAgYm9yZGVyLWJvdHRvbTogMXB4IHNvbGlkICNlNWU1ZTU7DQp9DQoNCi5zeW1ib2w6OmJlZm9yZSB7DQogICBjb250ZW50OiAi4oK5IjsNCiAgIGRpc3BsYXk6IGlubGluZS1ibG9jazsNCn0=","","1");



DROP TABLE IF EXISTS languages;

CREATE TABLE `languages` (
  `languageId` int(11) NOT NULL AUTO_INCREMENT,
  `heading` varchar(50) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`languageId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO languages VALUES("1","English","1");
INSERT INTO languages VALUES("2","Hindi","1");



DROP TABLE IF EXISTS manufacturers;

CREATE TABLE `manufacturers` (
  `manufacturerId` int(11) NOT NULL AUTO_INCREMENT,
  `heading` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `storeId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `softDelete` int(1) NOT NULL DEFAULT 0,
  `dateUpdated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(1) NOT NULL,
  PRIMARY KEY (`manufacturerId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO manufacturers VALUES("1","HP","","1","2","0","2024-02-24 09:34:11","0000-00-00 00:00:00","1");
INSERT INTO manufacturers VALUES("2","ASUS","","1","2","0","2024-02-24 09:34:21","0000-00-00 00:00:00","1");
INSERT INTO manufacturers VALUES("3","DELL","","4","9","0","2024-03-23 11:04:50","0000-00-00 00:00:00","1");



DROP TABLE IF EXISTS menus;

CREATE TABLE `menus` (
  `menuId` int(11) NOT NULL AUTO_INCREMENT,
  `menuHeading` varchar(100) NOT NULL,
  `link` varchar(100) DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `moduleId` int(11) NOT NULL,
  `parentId` int(11) NOT NULL DEFAULT 0,
  `sortOrder` int(11) DEFAULT 0,
  `roleId` varchar(30) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp(),
  `dateUpdated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `insertedBy` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`menuId`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO menus VALUES("1","Dashboard","/","","0","0","0","[\"1\"]","1","2024-02-07 15:58:02","2024-02-15 13:53:43","0");
INSERT INTO menus VALUES("2","Settings","","","0","0","6","[\"1\",\"2\"]","1","2024-02-08 15:58:02","2024-02-23 20:01:01","0");
INSERT INTO menus VALUES("3","Modules","modules","","0","13","0","[\"1\"]","1","2024-02-08 15:58:02","2024-02-15 13:53:43","0");
INSERT INTO menus VALUES("4","Global Setting","","","2","2","0","[\"1\"]","1","2024-02-08 15:58:02","2024-02-26 09:01:28","1");
INSERT INTO menus VALUES("5","Users","","","0","0","5","[\"1\",\"2\"]","1","2024-02-08 15:58:02","2024-02-23 20:00:50","0");
INSERT INTO menus VALUES("6","Users","","","1","5","0","[\"1\",\"2\"]","1","2024-02-08 15:58:02","2024-03-23 05:02:02","1");
INSERT INTO menus VALUES("7","Requests","","","0","0","4","[\"1\"]","1","2024-02-08 15:58:02","2024-02-15 15:50:36","0");
INSERT INTO menus VALUES("8","Manage","","","0","0","2","[\"1\",\"2\"]","1","2024-02-08 15:58:02","2024-02-23 20:01:27","0");
INSERT INTO menus VALUES("9","Templates","","","3","2","0","[\"1\"]","1","2024-02-08 15:58:02","2024-02-15 13:53:43","1");
INSERT INTO menus VALUES("10","Contacts","","","4","7","0","[\"1\"]","1","2024-02-08 15:58:02","2024-02-15 13:53:43","1");
INSERT INTO menus VALUES("11","Menus","","","5","13","0","[\"1\"]","1","2024-02-08 15:58:02","2024-02-15 13:53:43","1");
INSERT INTO menus VALUES("12","Database Backups","","","6","2","0","[\"1\"]","1","2024-02-08 15:58:02","2024-02-15 13:53:43","1");
INSERT INTO menus VALUES("13","Admin","","","0","0","7","[\"1\"]","1","2024-02-08 15:58:02","2024-02-15 15:50:46","0");
INSERT INTO menus VALUES("16","Pages","","","9","8","0","[\"1\"]","1","2024-02-08 15:58:02","2024-02-15 13:53:43","1");
INSERT INTO menus VALUES("18","Filters","","","10","13","0","[\"1\"]","0","2024-02-08 15:58:02","2024-02-15 13:53:43","1");
INSERT INTO menus VALUES("19","Image Manager","","","11","8","0","[\"1\",\"2\"]","1","2024-02-09 11:09:25","2024-02-23 20:01:35","1");
INSERT INTO menus VALUES("20","Admin Login History","","","12","13","0","[\"1\"]","1","2024-02-09 13:02:57","2024-02-15 13:53:43","1");
INSERT INTO menus VALUES("21","User Roles","userroles","","0","5","0","[\"1\"]","1","2024-02-08 15:58:02","2024-02-15 13:53:43","0");
INSERT INTO menus VALUES("22","Countries","","","13","2","0","[\"1\"]","1","2024-02-09 16:03:01","2024-02-15 13:53:43","1");
INSERT INTO menus VALUES("23","States","","","14","2","0","[\"1\"]","1","2024-02-09 16:26:43","2024-02-15 13:53:43","1");
INSERT INTO menus VALUES("24","Import/Export","","","0","0","3","[\"1\"]","1","2024-02-08 15:58:02","2024-02-15 15:50:30","1");
INSERT INTO menus VALUES("25","Import Excel","import","","0","24","0","[\"1\"]","1","2024-02-08 15:58:02","2024-02-15 13:53:43","1");
INSERT INTO menus VALUES("26","Export To Excel","import-export","","0","24","0","[\"1\"]","1","2024-02-08 15:58:02","2024-02-15 13:53:43","1");
INSERT INTO menus VALUES("27","Upload Images","upload-images","","0","24","0","[\"1\"]","1","2024-02-08 15:58:02","2024-02-15 13:53:43","1");
INSERT INTO menus VALUES("28","Customers","","","0","0","1","[\"1\",\"2\"]","1","2024-02-15 09:14:58","2024-02-23 19:59:22","1");
INSERT INTO menus VALUES("29","Customer Group","","","15","28","0","[\"1\",\"2\"]","1","2024-02-15 09:15:12","2024-02-24 08:20:13","1");
INSERT INTO menus VALUES("30","Manage Stores","","","0","0","3","[\"1\",\"2\"]","1","2024-02-15 14:02:45","2024-02-15 15:50:49","1");
INSERT INTO menus VALUES("31","Stores","","","16","30","0","[\"1\",\"2\"]","1","2024-02-15 14:11:33","2024-02-22 11:31:01","1");
INSERT INTO menus VALUES("32","Cities","","","17","2","0","","1","2024-02-15 14:17:35","2024-02-15 08:47:35","1");
INSERT INTO menus VALUES("33","Taxes","","","18","2","0","[\"1\"]","1","2024-02-24 11:41:00","2024-02-24 06:12:44","1");
INSERT INTO menus VALUES("34","Units","","","19","2","0","[\"1\"]","1","2024-02-24 11:53:43","2024-02-24 06:24:47","1");
INSERT INTO menus VALUES("35","Vendors","","","20","30","0","[\"1\",\"2\",\"3\"]","1","2024-02-24 12:00:04","2024-02-24 06:41:05","1");
INSERT INTO menus VALUES("36","Customers","","","21","28","0","[\"1\",\"2\",\"3\"]","1","2024-02-24 14:01:44","2024-03-17 04:02:43","1");
INSERT INTO menus VALUES("37","Manufacturers","","","22","30","0","[\"1\",\"2\",\"3\"]","1","2024-02-24 15:00:45","2024-02-24 09:32:58","1");
INSERT INTO menus VALUES("38","Categories","","","23","30","0","[\"1\",\"2\",\"3\"]","1","2024-02-24 15:12:21","2024-02-24 15:15:10","2");
INSERT INTO menus VALUES("39","Products","","","24","30","0","[\"1\",\"2\",\"3\"]","1","2024-02-24 15:17:24","2024-03-30 05:16:01","2");
INSERT INTO menus VALUES("40","Pos","","","0","0","0","[\"1\",\"2\",\"3\"]","1","2024-02-24 15:35:22","2024-02-24 10:05:40","1");
INSERT INTO menus VALUES("41","Pos","pos","","0","40","0","[\"1\",\"2\",\"3\"]","1","2024-02-24 15:36:18","2024-02-24 10:06:18","1");
INSERT INTO menus VALUES("42","Store Settings","","","25","30","0","[\"1\",\"2\",\"3\"]","1","2024-02-24 15:44:55","2024-03-29 10:11:09","1");
INSERT INTO menus VALUES("43","Seating Tables","","","26","30","0","[\"1\",\"2\",\"3\"]","1","2024-02-26 20:13:32","2024-02-26 14:45:36","2");
INSERT INTO menus VALUES("44","Languages","","","27","2","0","[\"1\"]","1","2024-02-27 09:34:31","2024-02-27 05:14:48","2");
INSERT INTO menus VALUES("45","Employees","","","28","30","0","[\"1\",\"2\"]","1","2024-02-27 15:34:21","2024-02-27 10:06:33","2");
INSERT INTO menus VALUES("46","Payments","","","29","2","0","[\"1\"]","1","2024-03-01 10:17:44","2024-03-01 04:51:21","2");
INSERT INTO menus VALUES("47","Store Payments","","","30","30","0","[\"1\",\"2\"]","1","2024-03-01 10:50:42","2024-03-01 05:25:50","1");
INSERT INTO menus VALUES("48","Additional Charges","","","31","30","0","[\"1\",\"2\"]","1","2024-03-06 16:21:00","2024-03-07 03:18:38","2");
INSERT INTO menus VALUES("49","Invoice Template","","","32","2","0","[\"1\"]","1","2024-03-08 17:09:41","2024-03-09 06:12:53","2");
INSERT INTO menus VALUES("50","Order Status","","","33","2","0","[\"1\"]","1","2024-03-17 14:33:59","2024-03-17 09:05:14","2");
INSERT INTO menus VALUES("51","Purchase","purchases","","0","30","0","[\"1\",\"2\",\"3\"]","1","2024-03-20 15:50:14","2024-03-20 10:20:14","1");
INSERT INTO menus VALUES("52","Customer Pay In Out","","","34","30","0","","1","2024-03-28 13:38:29","2024-03-28 08:08:29","2");
INSERT INTO menus VALUES("53","Customer Ledger Wallet","","","35","30","0","[\"1\",\"2\",\"3\"]","1","2024-03-28 13:54:30","2024-03-28 09:58:44","2");
INSERT INTO menus VALUES("54","Codes","","","36","2","0","","1","2024-03-28 14:27:40","2024-03-28 08:57:40","2");
INSERT INTO menus VALUES("55","Customer Ledger Reward","","","37","30","0","[\"1\",\"2\",\"3\"]","1","2024-03-28 15:31:42","2024-03-28 10:59:03","2");
INSERT INTO menus VALUES("56","Order","order","","0","57","0","[\"1\",\"2\",\"3\"]","1","2024-03-28 13:54:30","2024-03-29 06:27:28","2");
INSERT INTO menus VALUES("57","Orders","","","0","0","0","[\"1\",\"2\",\"3\"]","1","2024-03-29 11:57:12","2024-03-29 06:27:12","1");
INSERT INTO menus VALUES("58","Order History","","","38","57","0","[\"1\",\"2\",\"3\"]","1","2024-03-29 12:01:35","2024-03-29 08:16:49","1");
INSERT INTO menus VALUES("59","Kot","kot","","0","57","0","[\"1\",\"2\",\"3\"]","1","2024-03-29 13:37:15","2024-03-29 08:07:30","1");
INSERT INTO menus VALUES("60","Reports","","","0","0","0","[\"1\",\"2\"]","1","2024-03-30 11:21:34","2024-03-30 05:51:34","1");
INSERT INTO menus VALUES("61","Profit Report","profit-report","","0","60","0","[\"1\",\"2\"]","1","2024-03-30 11:22:22","2024-03-30 05:52:22","1");



DROP TABLE IF EXISTS messages;

CREATE TABLE `messages` (
  `messageId` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(255) NOT NULL,
  `hindi` varchar(255) DEFAULT NULL,
  `english` varchar(255) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`messageId`)
) ENGINE=InnoDB AUTO_INCREMENT=585 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO messages VALUES("1","Thank you for your enquiry. We will contact you as soon as possible.","","","1");
INSERT INTO messages VALUES("2","Thank you for your comment.","","","1");
INSERT INTO messages VALUES("3","Your profile has been updated successfully.","","","1");
INSERT INTO messages VALUES("4","Please wait while we are redirecting you to the my account.","","","1");
INSERT INTO messages VALUES("5","Your account has been disabled by the administrator.","","","1");
INSERT INTO messages VALUES("6","Login details are not correct please check your email and password.","","","1");
INSERT INTO messages VALUES("7","There is some error.","","","1");
INSERT INTO messages VALUES("8","A mail has been sent on your email id with new password.","","","1");
INSERT INTO messages VALUES("9","This email address not found in our database.","","","1");
INSERT INTO messages VALUES("10","Thank you for submitting your report.","","","1");
INSERT INTO messages VALUES("11","Thank you for your consultation request. We will contact you as soon as possible.","","","1");
INSERT INTO messages VALUES("12","Report has been successfully deleted.","","","1");
INSERT INTO messages VALUES("338","Add Purchase","","","1");
INSERT INTO messages VALUES("339","Back","","","1");
INSERT INTO messages VALUES("340","Add Product","","","1");
INSERT INTO messages VALUES("341","Heading","","","1");
INSERT INTO messages VALUES("342","Refrence","","","1");
INSERT INTO messages VALUES("343","Vendor","","","1");
INSERT INTO messages VALUES("344","Please Select","","","1");
INSERT INTO messages VALUES("345","Date","","","1");
INSERT INTO messages VALUES("346","Purchase Bill Type","","","1");
INSERT INTO messages VALUES("347","Bill Type One","","","1");
INSERT INTO messages VALUES("348","Bill Type Two","","","1");
INSERT INTO messages VALUES("349","Auto Suggestive Search","","","1");
INSERT INTO messages VALUES("350","Save","","","1");
INSERT INTO messages VALUES("351","Admin Panel","","","1");
INSERT INTO messages VALUES("352","Language","","","1");
INSERT INTO messages VALUES("353","Take Backup","","","1");
INSERT INTO messages VALUES("354","Selected Store","","","1");
INSERT INTO messages VALUES("355","Selected User","","","1");
INSERT INTO messages VALUES("356","Logged In As","","","1");
INSERT INTO messages VALUES("357","Role","","","1");
INSERT INTO messages VALUES("358","Dashboard","","","1");
INSERT INTO messages VALUES("359","Pos","","","1");
INSERT INTO messages VALUES("360","Customers","","","1");
INSERT INTO messages VALUES("361","Customer Group","","","1");
INSERT INTO messages VALUES("362","Manage","","","1");
INSERT INTO messages VALUES("363","Pages","","","1");
INSERT INTO messages VALUES("364","Image Manager","","","1");
INSERT INTO messages VALUES("365","Import/Export","","","1");
INSERT INTO messages VALUES("366","Import Excel","","","1");
INSERT INTO messages VALUES("367","Export To Excel","","","1");
INSERT INTO messages VALUES("368","Upload Images","","","1");
INSERT INTO messages VALUES("369","Manage Stores","","","1");
INSERT INTO messages VALUES("370","Stores","","","1");
INSERT INTO messages VALUES("371","Vendors","","","1");
INSERT INTO messages VALUES("372","Manufacturers","","","1");
INSERT INTO messages VALUES("373","Categories","","","1");
INSERT INTO messages VALUES("374","Products","","","1");
INSERT INTO messages VALUES("375","Store Settings","","","1");
INSERT INTO messages VALUES("376","Seating Tables","","","1");
INSERT INTO messages VALUES("377","Employees","","","1");
INSERT INTO messages VALUES("378","Store Payments","","","1");
INSERT INTO messages VALUES("379","Additional Charges","","","1");
INSERT INTO messages VALUES("380","Purchase","","","1");
INSERT INTO messages VALUES("381","Requests","","","1");
INSERT INTO messages VALUES("382","Contacts","","","1");
INSERT INTO messages VALUES("383","Users","","","1");
INSERT INTO messages VALUES("384","User Roles","","","1");
INSERT INTO messages VALUES("385","Settings","","","1");
INSERT INTO messages VALUES("386","Global Setting","","","1");
INSERT INTO messages VALUES("387","Templates","","","1");
INSERT INTO messages VALUES("388","Database Backups","","","1");
INSERT INTO messages VALUES("389","Countries","","","1");
INSERT INTO messages VALUES("390","States","","","1");
INSERT INTO messages VALUES("391","Taxes","","","1");
INSERT INTO messages VALUES("392","Units","","","1");
INSERT INTO messages VALUES("393","Languages","","","1");
INSERT INTO messages VALUES("394","Payments","","","1");
INSERT INTO messages VALUES("395","Invoice Template","","","1");
INSERT INTO messages VALUES("396","Order Status","","","1");
INSERT INTO messages VALUES("397","Admin","","","1");
INSERT INTO messages VALUES("398","Modules","","","1");
INSERT INTO messages VALUES("399","Menus","","","1");
INSERT INTO messages VALUES("400","Admin Login History","","","1");
INSERT INTO messages VALUES("401","Logout","","","1");
INSERT INTO messages VALUES("402","Select Store","","","1");
INSERT INTO messages VALUES("403","All","","","1");
INSERT INTO messages VALUES("404","Close","","","1");
INSERT INTO messages VALUES("405","Select User","","","1");
INSERT INTO messages VALUES("406","Logged In As Admin","","","1");
INSERT INTO messages VALUES("407","Select Language","","","1");
INSERT INTO messages VALUES("408","Order Type","","","1");
INSERT INTO messages VALUES("409","Tables","","","1");
INSERT INTO messages VALUES("410","No Table","","","1");
INSERT INTO messages VALUES("411","All Categories","","","1");
INSERT INTO messages VALUES("412","All Brands","","","1");
INSERT INTO messages VALUES("413","Qty","","","1");
INSERT INTO messages VALUES("414","Barcode","","","1");
INSERT INTO messages VALUES("415","Model","","","1");
INSERT INTO messages VALUES("416","Quick Add Customer","","","1");
INSERT INTO messages VALUES("417","Add","","","1");
INSERT INTO messages VALUES("418","Sales Person","","","1");
INSERT INTO messages VALUES("419","Customer","","","1");
INSERT INTO messages VALUES("420","Mobile","","","1");
INSERT INTO messages VALUES("421","Wallet Balance","","","1");
INSERT INTO messages VALUES("422","Reward Balance","","","1");
INSERT INTO messages VALUES("423","Product","","","1");
INSERT INTO messages VALUES("424","Quantity","","","1");
INSERT INTO messages VALUES("425","Discount","","","1");
INSERT INTO messages VALUES("426","Price","","","1");
INSERT INTO messages VALUES("427","Total","","","1");
INSERT INTO messages VALUES("428","Add Customer","","","1");
INSERT INTO messages VALUES("429","Add Extra Info","","","1");
INSERT INTO messages VALUES("430","Checkout","","","1");
INSERT INTO messages VALUES("431","Payment Mode","","","1");
INSERT INTO messages VALUES("432","Multiple Payments","","","1");
INSERT INTO messages VALUES("433","Amount","","","1");
INSERT INTO messages VALUES("434","Additional Costs","","","1");
INSERT INTO messages VALUES("435","Label","","","1");
INSERT INTO messages VALUES("436","Global Discount","","","1");
INSERT INTO messages VALUES("437","Apply","","","1");
INSERT INTO messages VALUES("438","Orders Dasboard","","","1");
INSERT INTO messages VALUES("439","Total Customers","","","1");
INSERT INTO messages VALUES("440","Total Completed Order","","","1");
INSERT INTO messages VALUES("441","Total Sales","","","1");
INSERT INTO messages VALUES("442","Total Running Orders","","","1");
INSERT INTO messages VALUES("443","Tax","","","1");
INSERT INTO messages VALUES("444","Add Extra Information","","","1");
INSERT INTO messages VALUES("445","Info","","","1");
INSERT INTO messages VALUES("446","Total Items In Cart","","","1");
INSERT INTO messages VALUES("447","Total Quantity In Cart","","","1");
INSERT INTO messages VALUES("448","Sub Total","","","1");
INSERT INTO messages VALUES("449","Product Discount","","","1");
INSERT INTO messages VALUES("450","Reward Point Earned","","","1");
INSERT INTO messages VALUES("451","Reward Point Used","","","1");
INSERT INTO messages VALUES("452","KOT","","","1");
INSERT INTO messages VALUES("453","OPTIONS","","","1");
INSERT INTO messages VALUES("454","No Store Selected","","","1");
INSERT INTO messages VALUES("455","ID","","","1");
INSERT INTO messages VALUES("456","Status","","","1");
INSERT INTO messages VALUES("457","Action","","","1");
INSERT INTO messages VALUES("458","Store 1 Shop","","","1");
INSERT INTO messages VALUES("459","Manufacturer Id","","","1");
INSERT INTO messages VALUES("460","Category Id","","","1");
INSERT INTO messages VALUES("461","Vendor Id","","","1");
INSERT INTO messages VALUES("462","Unit Id","","","1");
INSERT INTO messages VALUES("463","Tax Id","","","1");
INSERT INTO messages VALUES("464","Tax Type","","","1");
INSERT INTO messages VALUES("465","Subtract From Quantity","","","1");
INSERT INTO messages VALUES("466","Show In Pos","","","1");
INSERT INTO messages VALUES("467","Image","","","1");
INSERT INTO messages VALUES("468","Related Image","","","1");
INSERT INTO messages VALUES("469","Cost","","","1");
INSERT INTO messages VALUES("470","Quick Add Product","","","1");
INSERT INTO messages VALUES("471","Basic Purchase InFormation","","","1");
INSERT INTO messages VALUES("472","Select Tax","","","1");
INSERT INTO messages VALUES("473","Exclusive","","","1");
INSERT INTO messages VALUES("474","Inclusive","","","1");
INSERT INTO messages VALUES("475","Sno","","","1");
INSERT INTO messages VALUES("476","}Heading/Barcode/Model","","","1");
INSERT INTO messages VALUES("477","Heading/Barcode/Model","","","1");
INSERT INTO messages VALUES("478","Update Tax","","","1");
INSERT INTO messages VALUES("479","Purchase Heading","","","1");
INSERT INTO messages VALUES("480","Purchase Status","","","1");
INSERT INTO messages VALUES("481","User Name","","","1");
INSERT INTO messages VALUES("482","User Email","","","1");
INSERT INTO messages VALUES("483","User Password","","","1");
INSERT INTO messages VALUES("484","User Mobile","","","1");
INSERT INTO messages VALUES("485","Role Id","","","1");
INSERT INTO messages VALUES("486","Name","","","1");
INSERT INTO messages VALUES("487","Tagline","","","1");
INSERT INTO messages VALUES("488","Email","","","1");
INSERT INTO messages VALUES("489","Address","","","1");
INSERT INTO messages VALUES("490","City Id","","","1");
INSERT INTO messages VALUES("491","State Id","","","1");
INSERT INTO messages VALUES("492","Sort Order","","","1");
INSERT INTO messages VALUES("493","Default New Shop","","","1");
INSERT INTO messages VALUES("494","Payment In/Out","","","1");
INSERT INTO messages VALUES("495","Payment In-Out","","","1");
INSERT INTO messages VALUES("496","Menu Heading","","","1");
INSERT INTO messages VALUES("497","Link","","","1");
INSERT INTO messages VALUES("498","Module Id","","","1");
INSERT INTO messages VALUES("499","Parent Id","","","1");
INSERT INTO messages VALUES("500","Role Id (Show Menu) (Multiple)","","","1");
INSERT INTO messages VALUES("501","Customer Ledger Wallet","","","1");
INSERT INTO messages VALUES("502","Order Id","","","1");
INSERT INTO messages VALUES("503","Customer Id","","","1");
INSERT INTO messages VALUES("504","Type","","","1");
INSERT INTO messages VALUES("505","Payment Id","","","1");
INSERT INTO messages VALUES("506","Remark","","","1");
INSERT INTO messages VALUES("507","Customer Ledger Reward","","","1");
INSERT INTO messages VALUES("508","Reward","","","1");
INSERT INTO messages VALUES("509","Orders","","","1");
INSERT INTO messages VALUES("510","Order","","","1");
INSERT INTO messages VALUES("511","Order History","","","1");
INSERT INTO messages VALUES("512","Order Status Id","","","1");
INSERT INTO messages VALUES("513","Comment","","","1");
INSERT INTO messages VALUES("514","Template","","","1");
INSERT INTO messages VALUES("515","Table Code","","","1");
INSERT INTO messages VALUES("516","Loop Tr Code","","","1");
INSERT INTO messages VALUES("517","Sub Total Tr Loop","","","1");
INSERT INTO messages VALUES("518","Custom Css","","","1");
INSERT INTO messages VALUES("519","Website Name","","","1");
INSERT INTO messages VALUES("520","Admin Email","","","1");
INSERT INTO messages VALUES("521","Contact Mobile","","","1");
INSERT INTO messages VALUES("522","Contact Email","","","1");
INSERT INTO messages VALUES("523","Mail Jet Username","","","1");
INSERT INTO messages VALUES("524","Mail Jet Password","","","1");
INSERT INTO messages VALUES("525","Mailjet Email","","","1");
INSERT INTO messages VALUES("526","Mailjet Name","","","1");
INSERT INTO messages VALUES("527","Database Backup","","","1");
INSERT INTO messages VALUES("528","Enable Reward Points","","","1");
INSERT INTO messages VALUES("529","Reward On Discounted Product","","","1");
INSERT INTO messages VALUES("530","Minimum Reward Points To Reedem","","","1");
INSERT INTO messages VALUES("531","Reward Percent On Product","","","1");
INSERT INTO messages VALUES("532","Walk In Customer Id","","","1");
INSERT INTO messages VALUES("533","Invoice Prefix","","","1");
INSERT INTO messages VALUES("534","Cart Append Style","","","1");
INSERT INTO messages VALUES("535","Order Type Required","","","1");
INSERT INTO messages VALUES("536","Enable Order Type","","","1");
INSERT INTO messages VALUES("537","Enable Taxes","","","1");
INSERT INTO messages VALUES("538","Show Store Infomation","","","1");
INSERT INTO messages VALUES("539","Show Extra Informtion Popup","","","1");
INSERT INTO messages VALUES("540","Show Wallet Balance","","","1");
INSERT INTO messages VALUES("541","Show Reward Balance","","","1");
INSERT INTO messages VALUES("542","Show Add Customer Bottom","","","1");
INSERT INTO messages VALUES("543","Sales Person Required","","","1");
INSERT INTO messages VALUES("544","Show Sales Person","","","1");
INSERT INTO messages VALUES("545","Show Quick Add","","","1");
INSERT INTO messages VALUES("546","Restaurant","","","1");
INSERT INTO messages VALUES("547","Show Modal","","","1");
INSERT INTO messages VALUES("548","Show Barcode","","","1");
INSERT INTO messages VALUES("549","Show Image","","","1");
INSERT INTO messages VALUES("550","Show Manufacturers","","","1");
INSERT INTO messages VALUES("551","Show Categories","","","1");
INSERT INTO messages VALUES("552","Store Terms","","","1");
INSERT INTO messages VALUES("553","Invoice Header Text","","","1");
INSERT INTO messages VALUES("554","Invoice Footer Text","","","1");
INSERT INTO messages VALUES("555","Default Invoice Template","","","1");
INSERT INTO messages VALUES("556","Default Kot Template","","","1");
INSERT INTO messages VALUES("557","Default Order Status","","","1");
INSERT INTO messages VALUES("558","Cancelled Order Status","","","1");
INSERT INTO messages VALUES("559","Running Order Status","","","1");
INSERT INTO messages VALUES("560","Deduct From Stock","","","1");
INSERT INTO messages VALUES("561","Website Logo","","","1");
INSERT INTO messages VALUES("562","Start Barcode From","","","1");
INSERT INTO messages VALUES("563","Reports","","","1");
INSERT INTO messages VALUES("564","Profit Report","","","1");
INSERT INTO messages VALUES("565","Search Product","","","1");
INSERT INTO messages VALUES("566","Date Start","","","1");
INSERT INTO messages VALUES("567","Date End","","","1");
INSERT INTO messages VALUES("568","Filter","","","1");
INSERT INTO messages VALUES("569","Cost/Price","","","1");
INSERT INTO messages VALUES("570","Order ID/Purchase ID","","","1");
INSERT INTO messages VALUES("571","Profit","","","1");
INSERT INTO messages VALUES("572","Percent","","","1");
INSERT INTO messages VALUES("573","FinalAmount","","","1");
INSERT INTO messages VALUES("574","Allowed Image Size","","","1");
INSERT INTO messages VALUES("575","Allowed File Size","","","1");
INSERT INTO messages VALUES("576","Meta Tags","","","1");
INSERT INTO messages VALUES("577","Meta Description","","","1");
INSERT INTO messages VALUES("578","Meta Keywords","","","1");
INSERT INTO messages VALUES("579","Facebook","","","1");
INSERT INTO messages VALUES("580","Twitter","","","1");
INSERT INTO messages VALUES("581","Linkedin","","","1");
INSERT INTO messages VALUES("582","Instagram","","","1");
INSERT INTO messages VALUES("583","Merge Login","","","1");
INSERT INTO messages VALUES("584","Data Base Name","","","1");



DROP TABLE IF EXISTS migrations;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS modules;

CREATE TABLE `modules` (
  `moduleId` int(11) NOT NULL AUTO_INCREMENT,
  `moduleName` varchar(100) NOT NULL,
  `moduleTable` varchar(100) NOT NULL,
  `moduleFirstColumn` varchar(100) NOT NULL,
  `pageHeading` varchar(100) NOT NULL,
  `moduleData` mediumtext DEFAULT NULL,
  `parentMenu` varchar(30) NOT NULL,
  `sortOrder` int(1) DEFAULT 0,
  `hideAdd` int(1) NOT NULL DEFAULT 0,
  `hideEdit` int(1) NOT NULL DEFAULT 0,
  `hideDelete` int(1) NOT NULL DEFAULT 0,
  `hideAction` int(1) NOT NULL DEFAULT 0,
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
  `status` int(1) DEFAULT 1,
  `insertedBy` int(11) DEFAULT 1,
  `dateAdded` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`moduleId`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO modules VALUES("1","Users","users","userId","Users","{\"moduleId\":\"1\",\"tableName\":\"users\",\"columnName\":[\"userId\",\"userName\",\"userEmail\",\"userPassword\",\"userMobile\",\"roleId\",\"superAdmin\",\"dataBaseName\",\"insertedBy\",\"status\"],\"columnCustomName\":[\"User Id\",\"User Name\",\"User Email\",\"User Password\",\"User Mobile\",\"Role Id\",\"Super Admin\",\"Data Base Name\",\"Inserted By\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"\",\"4\",\"\",\"\",\"\",\"\",\"5\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"password\",\"text\",\"select\",\"select\",\"text\"],\"fieldHeading\":[\"User Name\",\"User Email\",\"User Password\",\"User Mobile\",\"Status\",\"Role Id\",\"Data Base Name\"],\"fieldSortOrder\":[\"2\",\"3\",\"4\",\"5\",\"8\",\"6\",\"7\"],\"fieldColumn\":[\"6\",\"6\",\"6\",\"6\",\"12\",\"6\",\"6\"],\"fieldColumnName\":[\"userName\",\"userEmail\",\"userPassword\",\"userMobile\",\"status\",\"roleId\",\"dataBaseName\"],\"fieldName\":[\"userName\",\"userEmail\",\"userPassword\",\"userMobile\",\"status\",\"roleId\",\"dataBaseName\"],\"fieldId\":[\"userName\",\"userEmail\",\"userPassword\",\"userMobile\",\"status\",\"roleId\",\"dataBaseName\"],\"fieldClass\":[\"userName\",\"userEmail\",\"userPassword\",\"userMobile\",\"status\",\"roleId\",\"dataBaseName\"],\"fieldPlaceHolder\":[\"User Name\",\"User Email\",\"User Password\",\"User Mobile\",\"Status\",\"Role Id\",\"Data Base Name\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"1\",\"0\",\"0\",\"0\",\"1\"],\"fieldValidation\":[\"required\",\"required\",\"required\",\"\",\"\",\"\",\"required\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"notRequiredInEdit\",\"\",\"\",\"removePleaseSelect\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\",\"Enable,Disable\",\"\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\",\"1,0\",\"\",\"\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\",\"\",\"roles\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\",\"\",\"roleId\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\",\"\",\"heading\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"\",\"null\",\"\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"userName\",\"userEmail\",\"userPassword\",\"userMobile\",\"status\",\"roleId\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"]}","5","0","0","0","0","0","","","","","","{{$controller::moduleShortCode(1)}}","","No","","","No","","","1","1","2022-03-25 10:49:04");
INSERT INTO modules VALUES("2","Settings","settings","settingId","Settings","{\"moduleId\":\"2\",\"tableName\":\"settings\",\"columnName\":[\"settingId\",\"websiteName\",\"websiteLogo\",\"allowedImageSize\",\"allowedFileSize\",\"metaTitle\",\"metaKeyword\",\"metaDescription\",\"adminEmail\",\"contactMobile\",\"contactEmail\",\"address\",\"mailJetUsername\",\"mailJetPassword\",\"mailjetEmail\",\"mailjetName\",\"facebook\",\"twitter\",\"linkedin\",\"instagram\",\"mergeLogin\",\"databaseBackup\",\"fieldsToSendValueOnMail\",\"filedsToReplaceOnMail\",\"filedsToUnsetOnMails\",\"status\"],\"columnCustomName\":[\"Setting Id\",\"Website Name\",\"Website Logo\",\"Allowed Image Size\",\"Allowed File Size\",\"Meta Tags\",\"Meta Description\",\"Meta Keywords\",\"Admin Email\",\"Contact Mobile\",\"Contact Email\",\"Address\",\"Mail Jet Username\",\"Mail Jet Password\",\"Mailjet Email\",\"Mailjet Name\",\"Facebook\",\"Twitter\",\"Linkedin\",\"Instagram\",\"Merge Login\",\"Database Backup\",\"Fields To Send Value On Mail\",\"Fileds To Replace On Mail\",\"Fileds To Unset On Mails\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"type\":[\"\",\"\",\"image\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"3\",\"2\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"file\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"select\",\"select\",\"text\",\"text\"],\"fieldHeading\":[\"Website Name\",\"Website Logo\",\"Allowed Image Size\",\"Allowed File Size\",\"Meta Tags\",\"Meta Description\",\"Meta Keywords\",\"Admin Email\",\"Contact Mobile\",\"Contact Email\",\"Address\",\"Mail Jet Username\",\"Mail Jet Password\",\"Facebook\",\"Twitter\",\"Linkedin\",\"Instagram\",\"Status\",\"Merge Login\",\"Mailjet Email\",\"Mailjet Name\"],\"fieldSortOrder\":[\"1\",\"22\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"15\",\"16\",\"17\",\"18\",\"19\",\"20\",\"13\",\"14\"],\"fieldColumn\":[\"4\",\"12\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"12\",\"3\",\"3\",\"3\",\"3\",\"3\",\"3\",\"6\",\"6\",\"3\",\"3\"],\"fieldColumnName\":[\"websiteName\",\"websiteLogo\",\"allowedImageSize\",\"allowedFileSize\",\"metaTitle\",\"metaKeyword\",\"metaDescription\",\"adminEmail\",\"contactMobile\",\"contactEmail\",\"address\",\"mailJetUsername\",\"mailJetPassword\",\"facebook\",\"twitter\",\"linkedin\",\"instagram\",\"status\",\"mergeLogin\",\"mailjetEmail\",\"mailjetName\"],\"fieldName\":[\"websiteName\",\"websiteLogo\",\"allowedImageSize\",\"allowedFileSize\",\"metaTitle\",\"metaKeyword\",\"metaDescription\",\"adminEmail\",\"contactMobile\",\"contactEmail\",\"address\",\"mailJetUsername\",\"mailJetPassword\",\"facebook\",\"twitter\",\"linkedin\",\"instagram\",\"status\",\"mergeLogin\",\"mailjetEmail\",\"mailjetName\"],\"fieldId\":[\"websiteName\",\"websiteLogo\",\"allowedImageSize\",\"allowedFileSize\",\"metaTitle\",\"metaKeyword\",\"metaDescription\",\"adminEmail\",\"contactMobile\",\"contactEmail\",\"address\",\"mailJetUsername\",\"mailJetPassword\",\"facebook\",\"twitter\",\"linkedin\",\"instagram\",\"status\",\"mergeLogin\",\"mailjetEmail\",\"mailjetName\"],\"fieldClass\":[\"websiteName\",\"websiteLogo\",\"allowedImageSize\",\"allowedFileSize\",\"metaTitle\",\"metaKeyword\",\"metaDescription\",\"adminEmail\",\"contactMobile\",\"contactEmail\",\"address\",\"mailJetUsername\",\"mailJetPassword\",\"facebook\",\"twitter\",\"linkedin\",\"instagram\",\"status\",\"mergeLogin\",\"mailjetEmail\",\"mailjetName\"],\"fieldPlaceHolder\":[\"Website Name\",\"Website Logo\",\"Allowed Image Size\",\"Allowed File Size\",\"Meta Tags\",\"Meta Description\",\"Meta Keywords\",\"Admin Email\",\"Contact Mobile\",\"Contact Email\",\"Address\",\"Mail Jet Username\",\"Mail Jet Password\",\"Facebook\",\"Twitter\",\"Linkedin\",\"Instagram\",\"Status\",\"Merge Login\",\"Mailjet Email\",\"Mailjet Name\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"Enable,Disable\",\"No,Yes\",\"\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"1,0\",\"0,1\",\"\",\"\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"websiteName\",\"websiteLogo\",\"allowedImageSize\",\"allowedFileSize\",\"metaTitle\",\"metaKeyword\",\"metaDescription\",\"adminEmail\",\"contactMobile\",\"contactEmail\",\"address\",\"mailJetUsername\",\"mailJetPassword\",\"facebook\",\"twitter\",\"linkedin\",\"instagram\",\"status\",\"mergeLogin\",\"mailjetEmail\",\"mailjetName\"]}","2","0","1","0","1","0","","","","","","","","No","","","No","","","1","1","2022-03-25 13:22:07");
INSERT INTO modules VALUES("3","Templates","templates","templateId","Templates","{\"moduleId\":\"3\",\"tableName\":\"templates\",\"columnName\":[\"templateId\",\"subject\",\"template\",\"forWhat\",\"forWhom\",\"status\",\"dateAdded\"],\"columnCustomName\":[\"Template Id\",\"Subject\",\"Template\",\"For What\",\"For Whom\",\"Status\",\"Date Added\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"No\",\"Yes\",\"Yes\",\"Yes\",\"No\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"status\",\"\"],\"columnSortOrder\":[\"1\",\"2\",\"\",\"3\",\"4\",\"5\",\"\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"wysiwyg\",\"text\",\"select\",\"select\"],\"fieldHeading\":[\"Subject\",\"Template\",\"For What\",\"For Whom\",\"Status\"],\"fieldSortOrder\":[\"2\",\"3\",\"4\",\"5\",\"6\"],\"fieldColumn\":[\"3\",\"3\",\"3\",\"3\",\"3\"],\"fieldColumnName\":[\"subject\",\"template\",\"forWhat\",\"forWhom\",\"status\"],\"fieldName\":[\"subject\",\"template\",\"forWhat\",\"forWhom\",\"status\"],\"fieldId\":[\"subject\",\"template\",\"forWhat\",\"forWhom\",\"status\"],\"fieldClass\":[\"subject\",\"template\",\"forWhat\",\"forWhom\",\"status\"],\"fieldPlaceHolder\":[\"Subject\",\"Template\",\"For What\",\"For Whom\",\"Status\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"0\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"required\",\"\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"readonlyInEdit\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"Admin,User\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"Admin,User\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"\",\"\",\"\",\"\",\"\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"subject\",\"template\",\"forWhat\",\"forWhom\",\"status\"]}","10","0","1","0","1","0","","","","","","","","No","","","No","","","1","1","2022-05-01 17:00:12");
INSERT INTO modules VALUES("4","Contacts","contacts","contactId","Contacts","{\"moduleId\":\"4\",\"tableName\":\"contacts\",\"columnName\":[\"contactId\",\"name\",\"email\",\"mobile\",\"subject\",\"message\",\"status\",\"dateAdded\"],\"columnCustomName\":[\"Contact Id\",\"Name\",\"Email\",\"Mobile\",\"Subject\",\"Message\",\"Status\",\"Date Added\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"Yes\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"status\",\"\"],\"columnSortOrder\":[\"1\",\"2\",\"\",\"\",\"\",\"5\",\"\",\"4\"],\"tableColumnMerge\":[\"\",\"\",\"name\",\"name\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"text\",\"text\"],\"fieldHeading\":[\"Name\",\"Email\",\"Mobile\",\"Message\"],\"fieldSortOrder\":[\"2\",\"3\",\"4\",\"6\"],\"fieldColumn\":[\"4\",\"4\",\"4\",\"12\"],\"fieldColumnName\":[\"name\",\"email\",\"mobile\",\"message\"],\"fieldName\":[\"name\",\"email\",\"mobile\",\"message\"],\"fieldId\":[\"name\",\"email\",\"mobile\",\"message\"],\"fieldClass\":[\"name\",\"email\",\"mobile\",\"message\"],\"fieldPlaceHolder\":[\"Name\",\"Email\",\"Mobile\",\"Message\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"0\",\"1\"],\"fieldValidation\":[\"required\",\"required\",\"\",\"required\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"\",\"\",\"\",\"\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"name\",\"email\",\"mobile\",\"message\"]}","7","0","1","1","0","0","","","","","","","","No","","","No","","","1","1","2022-05-01 17:09:42");
INSERT INTO modules VALUES("5","Menus","menus","menuId","Menus","{\"moduleId\":\"5\",\"tableName\":\"menus\",\"columnName\":[\"menuId\",\"menuHeading\",\"link\",\"icon\",\"moduleId\",\"parentId\",\"sortOrder\",\"roleId\",\"status\",\"dateAdded\",\"dateUpdated\",\"insertedBy\"],\"columnCustomName\":[\"Menu Id\",\"Menu Heading\",\"Link\",\"Icon\",\"Module Id\",\"Parent Id\",\"Sort Order\",\"Role Id\",\"Status\",\"Date Added\",\"Date Updated\",\"Inserted By\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"menus\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"menuHeading\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\",\"menuId\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"No\",\"Yes\",\"Yes\",\"Yes\",\"No\",\"Yes\",\"No\",\"No\",\"No\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"sortOrderUpdateFromOutSide\",\"\",\"status\",\"\",\"\",\"\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"\",\"4\",\"5\",\"6\",\"\",\"7\",\"\",\"\",\"\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"OR\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"text\",\"select\",\"text\",\"select\",\"select\"],\"fieldHeading\":[\"Menu Heading\",\"Link\",\"Module Id\",\"Parent Id\",\"Sort Order\",\"Status\",\"Role Id (Show Menu) (Multiple)\"],\"fieldSortOrder\":[\"2\",\"3\",\"5\",\"6\",\"7\",\"8\",\"9\"],\"fieldColumn\":[\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"12\"],\"fieldColumnName\":[\"menuHeading\",\"link\",\"moduleId\",\"parentId\",\"sortOrder\",\"status\",\"roleId\"],\"fieldName\":[\"menuHeading\",\"link\",\"moduleId\",\"parentId\",\"sortOrder\",\"status\",\"roleId\"],\"fieldId\":[\"menuHeading\",\"link\",\"moduleId\",\"parentId\",\"sortOrder\",\"status\",\"roleId\"],\"fieldClass\":[\"menuHeading\",\"link\",\"moduleId\",\"parentId\",\"sortOrder\",\"status\",\"roleId\"],\"fieldPlaceHolder\":[\"Menu Heading\",\"Link\",\"Module Id\",\"Parent Id\",\"Sort Order\",\"Status\",\"Role Id\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\",\"0\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"multiple\"],\"fieldRequired\":[\"1\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"required\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\",\"\",\"Enable,Disable\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\",\"\",\"1,0\",\"\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"menus\",\"\",\"\",\"roles\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"menuId\",\"null\",\"\",\"roleId\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"menuHeading\",\"null\",\"\",\"heading\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"parentId\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"\",\"\",\"\",\"\",\"\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"0\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"menuHeading\",\"link\",\"moduleId\",\"parentId\",\"sortOrder\",\"status\",\"roleId\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"=\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"]}","2","0","0","0","0","0","","","","","","","","No","","","No","","","1","1","2022-05-01 17:09:42");
INSERT INTO modules VALUES("6","DatabaseBackups","databaseBackup","databaseBackupId","Database Backups","{\"moduleId\":\"6\",\"tableName\":\"databaseBackup\",\"columnName\":[\"databaseBackupId\",\"backUpName\",\"type\",\"status\",\"dateAdded\"],\"columnCustomName\":[\"Database Backup Id\",\"Back Up Name\",\"Type\",\"Status\",\"Date Added\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\"],\"linkType\":[\"\",\"\",\"\",\"\",\"\"],\"status\":[\"No\",\"No\",\"No\",\"No\",\"No\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"\",\"4\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\"],\"fieldType\":[\"text\",\"text\"],\"fieldHeading\":[\"Back Up Name\",\"Type\"],\"fieldSortOrder\":[\"2\",\"3\"],\"fieldColumn\":[\"3\",\"3\"],\"fieldColumnName\":[\"backUpName\",\"type\"],\"fieldName\":[\"backUpName\",\"type\"],\"fieldId\":[\"backUpName\",\"type\"],\"fieldClass\":[\"backUpName\",\"type\"],\"fieldPlaceHolder\":[\"Back Up Name\",\"Type\"],\"fieldDefaultValue\":[\"\",\"\"],\"fieldAttribute\":[\"\",\"\"],\"fieldRequired\":[\"1\",\"0\"],\"fieldValidation\":[\"required\",\"\"],\"fieldHeadingBefore\":[\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\"],\"fieldSelectTable\":[\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\"],\"fieldOrderBy\":[\"\",\"\"],\"fieldOrderByValue\":[\"\",\"\"],\"fieldSelectValue\":[\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\"],\"fieldTableColumn\":[\"backUpName\",\"type\"]}","2","0","1","1","0","0","PGEgY2xhc3M9ImJ0biBidG4tc3VjY2VzcyIgaHJlZj0iPD9waHAgZWNobyB1cmwoJy8nKTs/Pi88P3BocCBlY2hvICRyb3dbJ2JhY2tVcE5hbWUnXTs/PiIgc3R5bGU9Im1hcmdpbi1yaWdodDoxMHB4OyIgZGF0YS12YWx1ZT0iPD9waHAgZWNobyAkcm93WydiYWNrVXBOYW1lJ107Pz4iPkRvd25sb2FkPC9hPg0KPGRpdiBjbGFzcz0iYnRuIGJ0bi1pbmZvIGFqb3V2dmNvZmYiIHN0eWxlPSJtYXJnaW4tcmlnaHQ6MTBweDsiIGRhdGEtdmFsdWU9Ijw/cGhwIGVjaG8gJHJvd1snYmFja1VwTmFtZSddOz8+Ij5SZXN0b3JlPC9kaXY+","","","PD9waHANCmlmICgkX1BPU1RbJ3RhYmxlJ109PSJkYXRhYmFzZV9iYWNrdXAiKSB7DQogICAgJGZpbGUgPSAkdGhpcy0+Z2V0RGF0YVdoZXJlKCJkYXRhYmFzZV9iYWNrdXAiLCJkYXRhYmFzZUJhY2t1cElkIiwkX1BPU1RbJ2lkJ10pOw0KICAgIHVubGluaygkZmlsZVswXVsnYmFja1VwTmFtZSddKTsNCn0NCj8+","","","","No","","","No","","","1","1","2022-07-13 15:00:34");
INSERT INTO modules VALUES("9","Pages","pages","pageId","Pages","{\"moduleId\":\"9\",\"tableName\":\"pages\",\"columnName\":[\"pageId\",\"heading\",\"seo\",\"metaTitle\",\"metaKeyword\",\"metaDescription\",\"shortDescription\",\"description\",\"image\",\"status\"],\"columnCustomName\":[\"Page Id\",\"Heading\",\"Seo\",\"Meta Title\",\"Meta Keyword\",\"Meta Description\",\"Short Description\",\"Description\",\"Image\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"No\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"image\",\"status\"],\"columnSortOrder\":[\"1\",\"3\",\"\",\"\",\"\",\"\",\"\",\"\",\"2\",\"\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"fieldType\":[\"text\",\"text\",\"textarea\",\"textarea\",\"textarea\",\"wysiwyg\",\"wysiwyg\",\"file\",\"select\"],\"fieldHeading\":[\"Heading\",\"Seo\",\"Meta Title\",\"Meta Keyword\",\"Meta Description\",\"Short Description\",\"Description\",\"Image\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"9\",\"8\"],\"fieldColumn\":[\"6\",\"6\",\"4\",\"4\",\"4\",\"12\",\"12\",\"12\",\"12\"],\"fieldColumnName\":[\"heading\",\"seo\",\"metaTitle\",\"metaKeyword\",\"metaDescription\",\"shortDescription\",\"description\",\"image\",\"status\"],\"fieldName\":[\"heading\",\"seo\",\"metaTitle\",\"metaKeyword\",\"metaDescription\",\"shortDescription\",\"description\",\"image\",\"status\"],\"fieldId\":[\"heading\",\"seo\",\"metaTitle\",\"metaKeyword\",\"metaDescription\",\"shortDescription\",\"description\",\"image\",\"status\"],\"fieldClass\":[\"heading\",\"seo\",\"metaTitle\",\"metaKeyword\",\"metaDescription\",\"shortDescription\",\"description\",\"image\",\"status\"],\"fieldPlaceHolder\":[\"Heading\",\"Seo\",\"Meta Title\",\"Meta Keyword\",\"Meta Description\",\"Short Description\",\"Description\",\"Image\",\"Status\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"required\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"]}","8","0","0","0","0","0","","","","","","","","No","","{\"filterHeading\":[\"Contacts\",\"Hello\"],\"filterTable\":[\"contacts\",\"filter_types\"],\"filterGetColumnPrimaryId\":[\"contactId\",\"fiterTypeId\"],\"filterGetColumnFetchName\":[\"name\",\"email\",\"mobile\",\"heading\",\"status\"],\"filterFieldType\":[\"text\",\"text\"],\"filterSortOrder\":[\"0\",\"0\"],\"filterOrderBy\":[\"ColumnName_DESC \",\"ColumnName_DESC \"],\"filterSelectBoxCustomValue\":[\"1,2\",\"1,2\"],\"filterFieldAttributes\":[\"contacts,contacts,contacts\",\"filter types,filter types,filter types\"],\"filterFieldAdditionalAttributes\":[\"none\",\"none\",\"remove_please_select\",\"readonly\",\"multiple\"],\"filterLineNumber\":[\"2\",\"2\"],\"filterSelectBoxCustomHtml\":[\"3,4\",\"3,4\"]}","No","","","1","1","2023-05-06 08:20:49");
INSERT INTO modules VALUES("10","Filters","filters","filterId","Filters","{\"moduleId\":\"10\",\"tableName\":\"filters\",\"columnName\":[\"filterId\",\"heading\",\"getDataFrom\",\"primaryColumn\",\"columnToFetch\",\"fieldType\",\"sortOrder\",\"orderBy\",\"selectBoxValue\",\"selectBoxHtml\",\"fieldName\",\"fieldClass\",\"fieldId\",\"fieldIplaceHolder\",\"additionalAttribute\",\"lineNumber\",\"moduleId\",\"extra\",\"status\"],\"columnCustomName\":[\"Filter Id\",\"Heading\",\"Get Data From\",\"Primary Column\",\"Column To Fetch\",\"Field Type\",\"Sort Order\",\"Order By\",\"Select Box Value\",\"Select Box Html\",\"Field Name\",\"Field Class\",\"Field Id\",\"Field Iplace Holder\",\"Additional Attribute\",\"Line Number\",\"Show On Page\",\"Extra\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"modules\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"moduleName\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"moduleId\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"sortOrderUpdateFromOutSide\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"3\",\"\",\"4\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldType\":[\"text\",\"select\",\"select\",\"select\",\"select\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"select\",\"text\",\"select\",\"select\"],\"fieldHeading\":[\"Heading\",\"Get Data From (Table Name)\",\"Primary Column (First AutoInc Column)\",\"Column To Fetch (Multiple)\",\"Field Type\",\"Sort Order\",\"Order By (ColumnName_DESC || ColumnName_ASC)\",\"Select Box Value (Custom (Comma Seprated))\",\"Select Box Html (Custom (Comma Seprated))\",\"Field Name\",\"Field Class\",\"Field Id\",\"Field Place Holder\",\"Additional Attribute (Multiple)\",\"Line Number\",\"Show On Page\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"18\"],\"fieldColumn\":[\"12\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"6\",\"6\",\"3\",\"3\",\"3\",\"3\",\"4\",\"4\",\"4\",\"12\"],\"fieldColumnName\":[\"heading\",\"getDataFrom\",\"primaryColumn\",\"columnToFetch\",\"fieldType\",\"sortOrder\",\"orderBy\",\"selectBoxValue\",\"selectBoxHtml\",\"fieldName\",\"fieldClass\",\"fieldId\",\"fieldIplaceHolder\",\"additionalAttribute\",\"lineNumber\",\"moduleId\",\"status\"],\"fieldName\":[\"heading\",\"getDataFrom\",\"primaryColumn\",\"columnToFetch\",\"fieldType\",\"sortOrder\",\"orderBy\",\"selectBoxValue\",\"selectBoxHtml\",\"fieldName\",\"fieldClass\",\"fieldId\",\"fieldIplaceHolder\",\"additionalAttribute\",\"lineNumber\",\"moduleId\",\"status\"],\"fieldId\":[\"heading\",\"getDataFrom\",\"primaryColumn\",\"columnToFetch\",\"fieldType\",\"sortOrder\",\"orderBy\",\"selectBoxValue\",\"selectBoxHtml\",\"fieldName\",\"fieldClass\",\"fieldId\",\"fieldIplaceHolder\",\"additionalAttribute\",\"lineNumber\",\"moduleId\",\"status\"],\"fieldClass\":[\"heading tbngmkyqrt\",\"getDataFrom pmivrsdqty\",\"primaryColumn pxjqttrubu\",\"columnToFetch xkwhjswscp\",\"fieldType\",\"sortOrder\",\"orderBy\",\"selectBoxValue\",\"selectBoxHtml\",\"fieldName ubliuypnsy\",\"fieldClass jonnvaijjm\",\"fieldId nippwjswoi\",\"fieldIplaceHolder whaowmndwo\",\"additionalAttribute\",\"lineNumber\",\"moduleId\",\"status\"],\"fieldPlaceHolder\":[\"Heading\",\"Get Data From\",\"Primary Column\",\"Column To Fetch\",\"Field Type\",\"Sort Order\",\"Order By\",\"Select Box Value\",\"Select Box Html\",\"Field Name\",\"Field Class\",\"Field Id\",\"Field place Holder\",\"Additional Attribute\",\"Line Number\",\"Show On Page\",\"Status\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\",\"\",\"0\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"1\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"multiple\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"multiple\",\"\",\"\",\"\"],\"fieldRequired\":[\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"removePleaseSelect\",\"removePleaseSelect\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\",\"text,select,autosuggestive,date,datetime,tel,time\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"None,Remove Please Select,Readonly,Multiple,Disabled,Autosuggestive\",\"\",\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\",\"text,select,autosuggestive,date,datetime,tel,time\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"none,please_select,readonly,multiple,disabled,autosuggestive\",\"\",\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"tables\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"modules\",\"\"],\"fieldSelectIdColumn\":[\"\",\"tableName\",\"null\",\"null\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"moduleId\",\"null\"],\"fieldSelectMainColumn\":[\"\",\"tableName\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"moduleName\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"heading\",\"getDataFrom\",\"primaryColumn\",\"columnToFetch\",\"fieldType\",\"sortOrder\",\"orderBy\",\"selectBoxValue\",\"selectBoxHtml\",\"fieldName\",\"fieldClass\",\"fieldId\",\"fieldIplaceHolder\",\"additionalAttribute\",\"lineNumber\",\"status\"]}","13","0","0","0","0","0","","","","","","","","No","","","No","","","1","1","2024-01-25 11:39:05");
INSERT INTO modules VALUES("11","ImageManager","image_manager","imageManagerId","Image Manager","{\"moduleId\":\"11\",\"tableName\":\"image_manager\",\"columnName\":[\"imageManagerId\",\"image\",\"status\"],\"columnCustomName\":[\"Image Manager Id\",\"Image\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"No\"],\"type\":[\"\",\"image\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"\"],\"tableColumnMerge\":[\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"fieldType\":[\"file\"],\"fieldHeading\":[\"Image\"],\"fieldSortOrder\":[\"1\"],\"fieldColumn\":[\"12\"],\"fieldColumnName\":[\"image\"],\"fieldName\":[\"image\"],\"fieldId\":[\"image\"],\"fieldClass\":[\"image\"],\"fieldPlaceHolder\":[\"Image\"],\"fieldDefaultValue\":[\"\"],\"fieldAttribute\":[\"\"],\"fieldRequired\":[\"0\"],\"fieldValidation\":[\"\"],\"fieldHeadingBefore\":[\"\"],\"fieldAdditionalAttribute\":[\"\"],\"fieldSelectBoxText\":[\"\"],\"fieldSelectBoxValue\":[\"\"],\"fieldSelectTable\":[\"\"],\"fieldSelectIdColumn\":[\"\"],\"fieldSelectMainColumn\":[\"\"],\"fieldSelectWhere\":[\"\"],\"fieldOrderBy\":[\"\"],\"fieldOrderByValue\":[\"null\"],\"fieldSelectValue\":[\"\"],\"fieldSelectOperator\":[\"\"]}","8","0","0","0","0","0","","","","","","","","No","","","No","","","1","1","2024-02-09 11:09:25");
INSERT INTO modules VALUES("12","AdminLoginHistory","admin_login_history","adminLoginHistoryId","Admin Login History","{\"moduleId\":\"12\",\"tableName\":\"admin_login_history\",\"columnName\":[\"adminLoginHistoryId\",\"userId\",\"status\",\"dateAdded\"],\"columnCustomName\":[\"Admin Login History Id\",\"User Id\",\"Status\",\"Date Added\"],\"foreignColumnShow\":[\"No\",\"Yes\",\"No\",\"No\"],\"foreignTable\":[\"\",\"users\",\"\",\"\"],\"foreignColumn\":[\"\",\"userName\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"userId\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"status\",\"\"],\"columnSortOrder\":[\"1\",\"2\",\"\",\"3\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"fieldType\":[\"select\",\"select\",\"select\",\"text\"],\"fieldHeading\":[\"Admin Login History Id\",\"User Id\",\"Status\",\"Date Added\"],\"fieldSortOrder\":[\"0\",\"1\",\"2\",\"3\"],\"fieldColumn\":[\"4\",\"4\",\"4\",\"4\"],\"fieldColumnName\":[\"adminLoginHistoryId\",\"userId\",\"status\",\"dateAdded\"],\"fieldName\":[\"adminLoginHistoryId\",\"userId\",\"status\",\"dateAdded\"],\"fieldId\":[\"adminLoginHistoryId\",\"userId\",\"status\",\"dateAdded\"],\"fieldClass\":[\"adminLoginHistoryId\",\"userId\",\"status\",\"dateAdded\"],\"fieldPlaceHolder\":[\"Admin Login History Id\",\"User Id\",\"Status\",\"Date Added\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"0\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"adminLoginHistoryId\",\"userId\",\"status\",\"dateAdded\"]}","13","0","1","0","0","1","","","","","","","","No","","","No","","","1","1","2024-02-09 13:02:57");
INSERT INTO modules VALUES("13","Countries","countries","countryId","Countries","{\"moduleId\":\"13\",\"tableName\":\"countries\",\"columnName\":[\"countryId\",\"heading\",\"sortOrder\",\"softDelete\",\"dateAdded\",\"dateUpdated\",\"insertedBy\",\"updatedBy\",\"status\"],\"columnCustomName\":[\"Country Id\",\"Heading\",\"Sort Order\",\"Soft Delete\",\"Date Added\",\"Date Updated\",\"Inserted By\",\"Updated By\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"sortOrderUpdateFromOutSide\",\"\",\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"\",\"5\",\"\",\"\",\"\",\"4\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"select\"],\"fieldHeading\":[\"Heading\",\"Sort Order\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\",\"8\"],\"fieldColumn\":[\"12\",\"6\",\"6\"],\"fieldColumnName\":[\"heading\",\"sortOrder\",\"status\"],\"fieldName\":[\"heading\",\"sortOrder\",\"status\"],\"fieldId\":[\"heading\",\"sortOrder\",\"status\"],\"fieldClass\":[\"heading\",\"sortOrder\",\"status\"],\"fieldPlaceHolder\":[\"Heading\",\"Sort Order\",\"Status\"],\"fieldDefaultValue\":[\"\",\"0\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"0\"],\"fieldValidation\":[\"required\",\"numeric|required\",\"\"],\"fieldHeadingBefore\":[\"This is a module 13 heading\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\"],\"fieldTableColumn\":[\"heading\",\"sortOrder\",\"status\"],\"fieldSelectOperator\":[\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\"]}","2","0","0","0","0","0","","","","","","","","No","","","No","","","1","1","2024-02-09 16:03:01");
INSERT INTO modules VALUES("14","States","states","stateId","States","{\"moduleId\":\"14\",\"tableName\":\"states\",\"columnName\":[\"stateId\",\"heading\",\"countryId\",\"sortOrder\",\"image\",\"description\",\"softDelete\",\"updatedBy\",\"dateUpdated\",\"insertedBy\",\"dateAdded\",\"status\"],\"columnCustomName\":[\"State Id\",\"Heading\",\"Country Id\",\"Sort Order\",\"Image\",\"Description\",\"Soft Delete\",\"Updated By\",\"Date Updated\",\"Inserted By\",\"Date Added\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"countries\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"heading\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"countryId\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"sortOrderUpdateFromOutSide\",\"image\",\"\",\"\",\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"1\",\"\",\"\",\"\",\"\",\"\",\"6\",\"5\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"select\",\"text\",\"select\",\"file\",\"wysiwyg\"],\"fieldHeading\":[\"Heading\",\"Country Id\",\"Sort Order\",\"Status\",\"Image\",\"Description\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"9\",\"10\",\"11\"],\"fieldColumn\":[\"12\",\"4\",\"4\",\"4\",\"12\",\"12\"],\"fieldColumnName\":[\"heading\",\"countryId\",\"sortOrder\",\"status\",\"image\",\"description\"],\"fieldName\":[\"heading\",\"countryId\",\"sortOrder\",\"status\",\"image\",\"description\"],\"fieldId\":[\"heading\",\"countryId\",\"sortOrder\",\"status\",\"image\",\"description\"],\"fieldClass\":[\"heading\",\"countryId\",\"sortOrder\",\"status\",\"image\",\"description\"],\"fieldPlaceHolder\":[\"Heading\",\"Country Id\",\"Sort Order\",\"Status\",\"Image\",\"Description\"],\"fieldDefaultValue\":[\"\",\"\",\"0\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"0\",\"1\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"required\",\"\",\"numeric|required\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"This is a module 14 heading\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"Enable,Disable\",\"\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"1,0\",\"\",\"\"],\"fieldSelectTable\":[\"\",\"countries\",\"\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"countryId\",\"null\",\"null\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"heading\",\"\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"heading\",\"countryId\",\"sortOrder\",\"status\",\"image\",\"description\"]}","2","0","0","0","0","0","","","","","","{{$controller::moduleShortCode(14)}}","thank-you","Yes","countryId-heading-countries","","No","","","1","1","2024-02-09 16:26:43");
INSERT INTO modules VALUES("15","CustomerGroup","customer_group","customerGroupId","Customer Group","{\"moduleId\":\"15\",\"tableName\":\"customer_group\",\"columnName\":[\"customerGroupId\",\"heading\",\"defaultDiscountPercent\",\"sortOrder\",\"default\",\"updatedBy\",\"insertedBy\",\"dateUpdated\",\"dateAdded\",\"softDelete\",\"storeId\",\"userId\",\"status\"],\"columnCustomName\":[\"Customer Group Id\",\"Heading\",\"Default Discount Percent\",\"Sort Order\",\"Default\",\"Updated By\",\"Inserted By\",\"Date Updated\",\"Date Added\",\"Soft Delete\",\"Store Id\",\"User Id\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"stores\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"name\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"storeId\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"Yes\",\"Yes\",\"No\",\"Yes\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"sortOrderUpdateFromOutSide\",\"makeDefault\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"7\",\"\",\"\",\"6\",\"7\",\"\",\"5\",\"\",\"8\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"text\",\"select\",\"select\"],\"fieldHeading\":[\"Heading\",\"Default Discount Percent\",\"Sort Order\",\"Status\",\"Make Default\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"12\",\"11\"],\"fieldColumn\":[\"4\",\"4\",\"4\",\"6\",\"6\"],\"fieldColumnName\":[\"heading\",\"defaultDiscountPercent\",\"sortOrder\",\"status\",\"default\"],\"fieldName\":[\"heading\",\"defaultDiscountPercent\",\"sortOrder\",\"status\",\"default\"],\"fieldId\":[\"heading\",\"defaultDiscountPercent\",\"sortOrder\",\"status\",\"default\"],\"fieldClass\":[\"heading\",\"defaultDiscountPercent\",\"sortOrder\",\"status\",\"default\"],\"fieldPlaceHolder\":[\"Heading\",\"Default Discount Percent\",\"Sort Order\",\"Status\",\"Default\"],\"fieldDefaultValue\":[\"\",\"0\",\"0\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"0\",\"1\",\"0\",\"0\"],\"fieldValidation\":[\"required\",\"\",\"required|numeric\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"Enable,Disable\",\"No,Yes\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"1,0\",\"No,Yes\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"heading\",\"defaultDiscountPercent\",\"sortOrder\",\"status\",\"default\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\"]}","28","0","0","0","0","0","","","PD9waHANCiRjaGVja0RlZmF1bHQgPSBEQjo6c2VsZWN0KCJTRUxFQ1QgKiBGUk9NIGN1c3RvbWVyX2dyb3VwIFdIRVJFIHN0b3JlSWQ9JyIuU2Vzc2lvbjo6Z2V0KCJzdG9yZUlkIikuIicgQU5EIHVzZXJJZD0nIi5TZXNzaW9uOjpnZXQoInVzZXJJZCIpLiInIik7DQokY2hlY2tEZWZhdWx0ID0gJHRoaXMtPmFycmF5Q29udmVydCgkY2hlY2tEZWZhdWx0KTsNCmlmKGNvdW50KCRjaGVja0RlZmF1bHQpPT0xKXsNCglEQjo6c2VsZWN0KCJVUERBVEUgY3VzdG9tZXJfZ3JvdXAgU0VUIGBkZWZhdWx0YCA9ICdZZXMnIFdIRVJFIGN1c3RvbWVyR3JvdXBJZD0nIi4kY2hlY2tEZWZhdWx0WzBdWydjdXN0b21lckdyb3VwSWQnXS4iJyIpOw0KfWVsc2V7DQoJREI6OnNlbGVjdCgiVVBEQVRFIGN1c3RvbWVyX2dyb3VwIFNFVCBgZGVmYXVsdGAgPSAnTm8nIFdIRVJFIHN0b3JlSWQ9JyIuU2Vzc2lvbjo6Z2V0KCJzdG9yZUlkIikuIiciKTsNCglpZihpc3NldCgkYXJyYXlbJ3VwZGF0ZV9pZCddKSBBTkQgJGFycmF5Wyd1cGRhdGVfaWQnXSA+IDApew0KCQlEQjo6c2VsZWN0KCJVUERBVEUgY3VzdG9tZXJfZ3JvdXAgU0VUIGBkZWZhdWx0YCA9ICdZZXMnIFdIRVJFIGN1c3RvbWVyR3JvdXBJZD0nIi4kYXJyYXlbJ3VwZGF0ZV9pZCddLiInIik7DQoJfWVsc2V7DQoJCURCOjpzZWxlY3QoIlVQREFURSBjdXN0b21lcl9ncm91cCBTRVQgYGRlZmF1bHRgID0gJ1llcycgV0hFUkUgY3VzdG9tZXJHcm91cElkPSciLiRyZXBseVsnaW5zZXJ0X2lkJ10uIiciKTsNCgl9DQp9DQo/Pg==","","","{{$controller::moduleShortCode(15)}}","","No","","","No","","","1","1","2024-02-15 09:15:11");
INSERT INTO modules VALUES("16","Stores","stores","storeId","Stores","{\"moduleId\":\"16\",\"tableName\":\"stores\",\"columnName\":[\"storeId\",\"name\",\"tagline\",\"email\",\"mobile\",\"address\",\"cityId\",\"stateId\",\"sortOrder\",\"userId\",\"softDelete\",\"updatedBy\",\"insertedBy\",\"dateUpdated\",\"dateAdded\",\"status\"],\"columnCustomName\":[\"Store Id\",\"Name\",\"Tagline\",\"Email\",\"Mobile\",\"Address\",\"City Id\",\"State Id\",\"Sort Order\",\"User Id\",\"Soft Delete\",\"Updated By\",\"Inserted By\",\"Date Updated\",\"Date Added\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"No\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"sortOrderUpdateFromOutSide\",\"\",\"\",\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"\",\"\",\"3\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"4\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"email\",\"text\",\"textarea\",\"select\",\"select\",\"text\",\"select\"],\"fieldHeading\":[\"Name\",\"Tagline\",\"Email\",\"Mobile\",\"Address\",\"City Id\",\"State Id\",\"Sort Order\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"15\"],\"fieldColumn\":[\"6\",\"6\",\"6\",\"6\",\"12\",\"4\",\"4\",\"4\",\"12\"],\"fieldColumnName\":[\"name\",\"tagline\",\"email\",\"mobile\",\"address\",\"cityId\",\"stateId\",\"sortOrder\",\"status\"],\"fieldName\":[\"name\",\"tagline\",\"email\",\"mobile\",\"address\",\"cityId\",\"stateId\",\"sortOrder\",\"status\"],\"fieldId\":[\"name\",\"tagline\",\"email\",\"mobile\",\"address\",\"cityId\",\"stateId\",\"sortOrder\",\"status\"],\"fieldClass\":[\"name\",\"tagline\",\"email\",\"mobile\",\"address\",\"cityId\",\"stateId\",\"sortOrder\",\"status\"],\"fieldPlaceHolder\":[\"Name\",\"Tagline\",\"Email\",\"Mobile\",\"Address\",\"City Id\",\"State Id\",\"Sort Order\",\"Status\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"0\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"0\",\"0\",\"1\",\"0\",\"1\",\"1\",\"1\",\"0\"],\"fieldValidation\":[\"required\",\"\",\"\",\"required|numeric|digits:10\",\"\",\"required\",\"required\",\"required|numeric\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\",\"\",\"cities\",\"states\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\",\"\",\"cityId\",\"stateId\",\"null\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\",\"\",\"heading\",\"heading\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"name\",\"tagline\",\"email\",\"mobile\",\"address\",\"cityId\",\"stateId\",\"sortOrder\",\"status\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"]}","30","0","0","0","0","0","","","","","","{{$controller::moduleShortCode(0)}}","","No","","","No","","","1","1","2024-02-15 14:11:32");
INSERT INTO modules VALUES("17","Cities","cities","cityId","Cities","{\"moduleId\":\"17\",\"tableName\":\"cities\",\"columnName\":[\"cityId\",\"heading\",\"stateId\",\"countryId\",\"status\"],\"columnCustomName\":[\"City Id\",\"Heading\",\"State Id\",\"Country Id\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"Yes\",\"Yes\",\"No\"],\"foreignTable\":[\"\",\"\",\"states\",\"countries\",\"\"],\"foreignColumn\":[\"\",\"\",\"heading\",\"heading\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"stateId\",\"countryId\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"5\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"select\",\"select\",\"select\"],\"fieldHeading\":[\"Heading\",\"State Id\",\"Country Id\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"4\"],\"fieldColumn\":[\"6\",\"6\",\"6\",\"6\"],\"fieldColumnName\":[\"heading\",\"stateId\",\"countryId\",\"status\"],\"fieldName\":[\"heading\",\"stateId\",\"countryId\",\"status\"],\"fieldId\":[\"heading\",\"stateId\",\"countryId\",\"status\"],\"fieldClass\":[\"heading\",\"stateId\",\"countryId\",\"status\"],\"fieldPlaceHolder\":[\"Heading\",\"State Id\",\"Country Id\",\"Status\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"1\",\"0\"],\"fieldValidation\":[\"required\",\"required\",\"required\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"states\",\"countries\",\"\"],\"fieldSelectIdColumn\":[\"\",\"stateId\",\"countryId\",\"null\"],\"fieldSelectMainColumn\":[\"\",\"heading\",\"heading\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"heading\",\"stateId\",\"countryId\",\"status\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\"]}","2","0","0","0","0","0","","","","","","{{$controller::moduleShortCode(0)}}","","No","","","No","","","1","1","2024-02-15 14:17:35");
INSERT INTO modules VALUES("18","Taxes","taxes","taxId","Taxes","{\"moduleId\":\"18\",\"tableName\":\"taxes\",\"columnName\":[\"taxId\",\"heading\",\"percent\",\"sortOrder\",\"status\"],\"columnCustomName\":[\"Tax Id\",\"Heading\",\"Percent\",\"Sort Order\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"sortOrderUpdateFromOutSide\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"5\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"text\",\"select\"],\"fieldHeading\":[\"Heading\",\"Percent\",\"Sort Order\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"4\"],\"fieldColumn\":[\"6\",\"6\",\"6\",\"6\"],\"fieldColumnName\":[\"heading\",\"percent\",\"sortOrder\",\"status\"],\"fieldName\":[\"heading\",\"percent\",\"sortOrder\",\"status\"],\"fieldId\":[\"heading\",\"percent\",\"sortOrder\",\"status\"],\"fieldClass\":[\"heading\",\"percent\",\"sortOrder\",\"status\"],\"fieldPlaceHolder\":[\"Heading\",\"Percent\",\"Sort Order\",\"Status\"],\"fieldDefaultValue\":[\"\",\"0\",\"0\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"1\",\"0\"],\"fieldValidation\":[\"required\",\"required\",\"required\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\"]}","2","0","0","0","0","0","","","","","","{{$controller::moduleShortCode(0)}}","","No","","","No","","","1","1","2024-02-24 11:40:59");
INSERT INTO modules VALUES("19","Units","units","unitId","Units","{\"moduleId\":\"19\",\"tableName\":\"units\",\"columnName\":[\"unitId\",\"heading\",\"unit\",\"sortOrder\",\"status\"],\"columnCustomName\":[\"Unit Id\",\"Heading\",\"Unit\",\"Sort Order\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"sortOrderUpdateFromOutSide\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"5\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"text\",\"select\"],\"fieldHeading\":[\"Heading\",\"Unit\",\"Sort Order\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"4\"],\"fieldColumn\":[\"6\",\"6\",\"6\",\"6\"],\"fieldColumnName\":[\"heading\",\"unit\",\"sortOrder\",\"status\"],\"fieldName\":[\"heading\",\"unit\",\"sortOrder\",\"status\"],\"fieldId\":[\"heading\",\"unit\",\"sortOrder\",\"status\"],\"fieldClass\":[\"heading\",\"unit\",\"sortOrder\",\"status\"],\"fieldPlaceHolder\":[\"Heading\",\"Unit\",\"Sort Order\",\"Status\"],\"fieldDefaultValue\":[\"\",\"\",\"0\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"1\",\"0\"],\"fieldValidation\":[\"required\",\"required\",\"required|numeric\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\"]}","2","0","0","0","0","0","","","","","","{{$controller::moduleShortCode(0)}}","","No","","","No","","","1","1","2024-02-24 11:53:43");
INSERT INTO modules VALUES("20","Vendors","vendors","vendorId","Vendors","{\"moduleId\":\"20\",\"tableName\":\"vendors\",\"columnName\":[\"vendorId\",\"heading\",\"mobile\",\"email\",\"openingBalance\",\"cityId\",\"stateId\",\"countryId\",\"image\",\"storeId\",\"userId\",\"sorftDelete\",\"updatedBy\",\"insertedBy\",\"dateUpdated\",\"dateAdded\",\"status\"],\"columnCustomName\":[\"Vendor Id\",\"Heading\",\"Mobile\",\"Email\",\"Opening Balance\",\"City Id\",\"State Id\",\"Country Id\",\"Image\",\"Store Id\",\"User Id\",\"Sorft Delete\",\"Updated By\",\"Inserted By\",\"Date Updated\",\"Date Added\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"cities\",\"\",\"\",\"\",\"stores\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"heading\",\"\",\"\",\"\",\"name\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\",\"cityId\",\"\",\"\",\"\",\"storeId\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"Yes\",\"No\",\"No\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"image\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"3\",\"\",\"\",\"\",\"4\",\"\",\"\",\"2\",\"5\",\"\",\"\",\"\",\"\",\"\",\"6\",\"7\"],\"tableColumnMerge\":[\"\",\"\",\"heading\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"email\",\"text\",\"select\",\"select\",\"select\",\"file\",\"select\"],\"fieldHeading\":[\"Heading\",\"Mobile\",\"Email\",\"Opening Balance\",\"City Id\",\"State Id\",\"Country Id\",\"Image\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"10\",\"8\"],\"fieldColumn\":[\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"6\",\"12\",\"6\"],\"fieldColumnName\":[\"heading\",\"mobile\",\"email\",\"openingBalance\",\"cityId\",\"stateId\",\"countryId\",\"image\",\"status\"],\"fieldName\":[\"heading\",\"mobile\",\"email\",\"openingBalance\",\"cityId\",\"stateId\",\"countryId\",\"image\",\"status\"],\"fieldId\":[\"heading\",\"mobile\",\"email\",\"openingBalance\",\"cityId\",\"stateId\",\"countryId\",\"image\",\"status\"],\"fieldClass\":[\"heading\",\"mobile\",\"email\",\"openingBalance\",\"cityId\",\"stateId\",\"countryId\",\"image\",\"status\"],\"fieldPlaceHolder\":[\"Heading\",\"Mobile\",\"Email\",\"Opening Balance\",\"City Id\",\"State Id\",\"Country Id\",\"Image\",\"Status\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"0\",\"\",\"\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"0\",\"1\",\"1\",\"1\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"required\",\"required|numeric|digits:10\",\"\",\"required|numeric\",\"required\",\"required\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\",\"cities\",\"states\",\"countries\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\",\"cityId\",\"stateId\",\"countryId\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\",\"heading\",\"heading\",\"heading\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"heading\",\"mobile\",\"email\",\"openingBalance\",\"cityId\",\"stateId\",\"image\",\"status\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"]}","30","0","0","0","0","0","","","","","","{{$controller::moduleShortCode(0)}}","","No","","","No","","","1","1","2024-02-24 12:00:04");
INSERT INTO modules VALUES("21","Customers","customers","customerId","Customers","{\"moduleId\":\"21\",\"tableName\":\"customers\",\"columnName\":[\"customerId\",\"name\",\"mobile\",\"email\",\"openingBalance\",\"walletBalance\",\"rewardPoints\",\"customerGroupId\",\"cityId\",\"stateId\",\"countryId\",\"storeId\",\"userId\",\"insertedBy\",\"updatedBy\",\"dateUpdated\",\"softDelete\",\"status\",\"dateAdded\"],\"columnCustomName\":[\"Customer Id\",\"Name\",\"Mobile\",\"Email\",\"Opening Balance\",\"Wallet Balance\",\"Reward Points\",\"Customer Group Id\",\"City Id\",\"State Id\",\"Country Id\",\"Store Id\",\"User Id\",\"Inserted By\",\"Updated By\",\"Date Updated\",\"Soft Delete\",\"Status\",\"Date Added\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"No\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"cities\",\"\",\"\",\"stores\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"heading\",\"\",\"\",\"name\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"cityId\",\"\",\"\",\"storeId\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"No\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"status\",\"\"],\"columnSortOrder\":[\"1\",\"2\",\"\",\"\",\"\",\"\",\"\",\"\",\"3\",\"\",\"\",\"4\",\"\",\"\",\"\",\"\",\"\",\"5\",\"6\"],\"tableColumnMerge\":[\"\",\"\",\"name\",\"name\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"email\",\"text\",\"text\",\"text\",\"select\",\"select\",\"select\",\"select\",\"select\"],\"fieldHeading\":[\"Name\",\"Mobile\",\"Email\",\"Opening Balance\",\"Wallet Balance\",\"Reward Points\",\"Customer Group Id\",\"City Id\",\"State Id\",\"Country Id\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"17\"],\"fieldColumn\":[\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"3\",\"3\",\"3\",\"3\",\"12\"],\"fieldColumnName\":[\"name\",\"mobile\",\"email\",\"openingBalance\",\"walletBalance\",\"rewardPoints\",\"customerGroupId\",\"cityId\",\"stateId\",\"countryId\",\"status\"],\"fieldName\":[\"name\",\"mobile\",\"email\",\"openingBalance\",\"walletBalance\",\"rewardPoints\",\"customerGroupId\",\"cityId\",\"stateId\",\"countryId\",\"status\"],\"fieldId\":[\"name\",\"mobile\",\"email\",\"openingBalance\",\"walletBalance\",\"rewardPoints\",\"customerGroupId\",\"cityId\",\"stateId\",\"countryId\",\"status\"],\"fieldClass\":[\"name\",\"mobile\",\"email\",\"openingBalance\",\"walletBalance\",\"rewardPoints\",\"customerGroupId\",\"cityId\",\"stateId\",\"countryId\",\"status\"],\"fieldPlaceHolder\":[\"Name\",\"Mobile\",\"Email\",\"Opening Balance\",\"Wallet Balance\",\"Reward Points\",\"Customer Group Id\",\"City Id\",\"State Id\",\"Country Id\",\"Status\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"0\",\"0\",\"0\",\"\",\"\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"readonly\",\"readonly\",\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"0\",\"1\",\"1\",\"1\",\"0\",\"1\",\"1\",\"1\",\"0\"],\"fieldValidation\":[\"required\",\"required|digits:10|numeric|unique:customers,mobile\",\"unique:customers,email\",\"required|numeric\",\"required|numeric\",\"numeric|required\",\"\",\"required\",\"required\",\"required\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"removePleaseSelect\",\"\",\"\",\"removePleaseSelect\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"customer_group\",\"cities\",\"states\",\"countries\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"customerGroupId\",\"cityId\",\"stateId\",\"countryId\",\"null\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"heading\",\"heading\",\"heading\",\"heading\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"name\",\"mobile\",\"email\",\"openingBalance\",\"rewardPoints\",\"customerGroupId\",\"cityId\",\"stateId\",\"countryId\",\"status\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"]}","28","0","0","0","0","0","","","PD9waHANCmlmKGlzc2V0KCRyZXBseVsnaW5zZXJ0X2lkJ10pIEFORCAkcmVwbHlbJ2luc2VydF9pZCddID4gMCl7DQoJREI6Omluc2VydCgiSU5TRVJUIElOVE8gY3VzdG9tZXJfbGVkZ2VyX3dhbGxldCBTRVQgDQoJCWN1c3RvbWVySWQ9JyIuJHJlcGx5WydpbnNlcnRfaWQnXS4iJywNCgkJYW1vdW50PSciLiRhcnJheVsnb3BlbmluZ0JhbGFuY2UnXS4iJywNCgkJYHR5cGVgPSdvcGVuaW5nJywNCgkJc3RvcmVJZD0nIi5TZXNzaW9uOjpnZXQoInN0b3JlSWQiKS4iJywNCgkJdXNlcklkPSciLlNlc3Npb246OmdldCgidXNlcklkIikuIiciKTsNCn0NCj8+","","","{{$controller::moduleShortCode(21)}}","","No","","","No","","","1","1","2024-02-24 14:01:44");
INSERT INTO modules VALUES("22","Manufacturers","manufacturers","manufacturerId","Manufacturers","{\"moduleId\":\"22\",\"tableName\":\"manufacturers\",\"columnName\":[\"manufacturerId\",\"heading\",\"image\",\"storeId\",\"userId\",\"softDelete\",\"dateUpdated\",\"dateAdded\",\"status\"],\"columnCustomName\":[\"Manufacturer Id\",\"Heading\",\"Image\",\"Store Id\",\"User Id\",\"Soft Delete\",\"Date Updated\",\"Date Added\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"stores\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"name\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"storeId\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"Yes\",\"Yes\"],\"type\":[\"\",\"\",\"image\",\"\",\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"3\",\"2\",\"4\",\"\",\"\",\"\",\"6\",\"5\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"file\",\"select\"],\"fieldHeading\":[\"Heading\",\"Image\",\"Status\"],\"fieldSortOrder\":[\"1\",\"3\",\"2\"],\"fieldColumn\":[\"12\",\"12\",\"12\"],\"fieldColumnName\":[\"heading\",\"image\",\"status\"],\"fieldName\":[\"heading\",\"image\",\"status\"],\"fieldId\":[\"heading\",\"image\",\"status\"],\"fieldClass\":[\"heading\",\"image\",\"status\"],\"fieldPlaceHolder\":[\"Heading\",\"Image\",\"Status\"],\"fieldDefaultValue\":[\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"0\",\"0\"],\"fieldValidation\":[\"required\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\"],\"fieldTableColumn\":[\"heading\",\"image\",\"status\"],\"fieldSelectOperator\":[\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\"]}","30","0","0","0","0","0","","","","","","{{$controller::moduleShortCode(0)}}","","No","","","No","","","1","1","2024-02-24 15:00:45");
INSERT INTO modules VALUES("23","Categories","categories","categoryId","Categories","{\"moduleId\":\"23\",\"tableName\":\"categories\",\"columnName\":[\"categoryId\",\"heading\",\"image\",\"parentId\",\"storeId\",\"userId\",\"updatedBy\",\"insertedBy\",\"dateUpdated\",\"dateAdded\",\"softDelete\",\"status\"],\"columnCustomName\":[\"Category Id\",\"Heading\",\"Image\",\"Parent Id\",\"Store Id\",\"User Id\",\"Updated By\",\"Inserted By\",\"Date Updated\",\"Date Added\",\"Soft Delete\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"categories\",\"stores\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"heading\",\"name\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"categoryId\",\"storeId\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"image\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"3\",\"2\",\"4\",\"5\",\"\",\"\",\"\",\"\",\"\",\"\",\"6\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"file\",\"select\",\"select\"],\"fieldHeading\":[\"Heading\",\"Image\",\"Parent Id\",\"Status\"],\"fieldSortOrder\":[\"1\",\"4\",\"2\",\"3\"],\"fieldColumn\":[\"4\",\"12\",\"4\",\"4\"],\"fieldColumnName\":[\"heading\",\"image\",\"parentId\",\"status\"],\"fieldName\":[\"heading\",\"image\",\"parentId\",\"status\"],\"fieldId\":[\"heading\",\"image\",\"parentId\",\"status\"],\"fieldClass\":[\"heading\",\"image\",\"parentId\",\"status\"],\"fieldPlaceHolder\":[\"Heading\",\"Image\",\"Parent Id\",\"Status\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"required\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\",\"categories\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"categoryId\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"heading\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"heading\",\"image\",\"parentId\",\"status\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\"]}","30","0","0","0","0","0","","","","","","{{$controller::moduleShortCode(0)}}","","No","","","No","","","1","2","2024-02-24 15:12:21");
INSERT INTO modules VALUES("24","Products","products","productId","Products","{\"moduleId\":\"24\",\"tableName\":\"products\",\"columnName\":[\"productId\",\"heading\",\"model\",\"barcode\",\"cost\",\"price\",\"manufacturerId\",\"categoryId\",\"vendorId\",\"unitId\",\"taxId\",\"taxType\",\"quantity\",\"subtract\",\"image\",\"relatedImage\",\"showInPos\",\"softDelete\",\"storeId\",\"userId\",\"updatedBy\",\"insertedBy\",\"dateUpdated\",\"status\",\"dateAdded\"],\"columnCustomName\":[\"Product Id\",\"Heading\",\"Model\",\"Barcode\",\"Cost\",\"Price\",\"Manufacturer Id\",\"Category Id\",\"Vendor Id\",\"Unit Id\",\"Tax Id\",\"Tax Type\",\"Quantity\",\"Subtract\",\"Image\",\"Related Image\",\"Show In Pos\",\"Soft Delete\",\"Store Id\",\"User Id\",\"Updated By\",\"Inserted By\",\"Date Updated\",\"Status\",\"Date Added\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"stores\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"name\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"storeId\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"No\",\"Yes\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"No\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"image\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"status\",\"\"],\"columnSortOrder\":[\"1\",\"3\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"4\",\"\",\"2\",\"\",\"5\",\"\",\"\",\"\",\"\",\"\",\"\",\"6\",\"\"],\"tableColumnMerge\":[\"\",\"\",\"heading\",\"heading\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"text\",\"select\",\"select\",\"select\",\"select\",\"select\",\"select\",\"text\",\"select\",\"file\",\"select\",\"select\",\"file\",\"text\",\"text\"],\"fieldHeading\":[\"Heading\",\"Model\",\"Barcode\",\"Manufacturer Id\",\"Category Id\",\"Vendor Id\",\"Unit Id\",\"Tax Id\",\"Tax Type\",\"Quantity\",\"Subtract From Quantity\",\"Image\",\"Show In Pos\",\"Status\",\"Related Image\",\"Cost\",\"Price\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"20\",\"14\",\"15\",\"21\",\"4\",\"5\"],\"fieldColumn\":[\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"3\",\"3\",\"6\",\"3\",\"3\",\"6\",\"6\",\"6\"],\"fieldColumnName\":[\"heading\",\"model\",\"barcode\",\"manufacturerId\",\"categoryId\",\"vendorId\",\"unitId\",\"taxId\",\"taxType\",\"quantity\",\"subtract\",\"image\",\"showInPos\",\"status\",\"relatedImage\",\"cost\",\"price\"],\"fieldName\":[\"heading\",\"model\",\"barcode\",\"manufacturerId\",\"categoryId\",\"vendorId\",\"unitId\",\"taxId\",\"taxType\",\"quantity\",\"subtract\",\"image\",\"showInPos\",\"status\",\"relatedImage\",\"cost\",\"price\"],\"fieldId\":[\"heading\",\"model\",\"barcode\",\"manufacturerId\",\"categoryId\",\"vendorId\",\"unitId\",\"taxId\",\"taxType\",\"quantity\",\"subtract\",\"image\",\"showInPos\",\"status\",\"relatedImage\",\"cost\",\"price\"],\"fieldClass\":[\"heading\",\"model\",\"barcode\",\"manufacturerId\",\"categoryId\",\"vendorId\",\"unitId\",\"taxId\",\"taxType\",\"quantity\",\"subtract\",\"image\",\"showInPos\",\"status\",\"relatedImage\",\"cost\",\"price\"],\"fieldPlaceHolder\":[\"Heading\",\"Model\",\"Barcode\",\"Manufacturer Id\",\"Category Id\",\"Vendor Id\",\"Unit Id\",\"Tax Id\",\"Tax Type\",\"Quantity\",\"Subtract\",\"Image\",\"Show In Pos\",\"Status\",\"Related Image\",\"Cost\",\"Price\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"0\",\"\",\"\",\"\",\"\",\"\",\"0\",\"0\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"multiple\",\"\",\"\"],\"fieldRequired\":[\"1\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"1\",\"0\",\"0\",\"0\",\"0\",\"0\",\"1\",\"1\"],\"fieldValidation\":[\"required\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"required|numeric\",\"\",\"\",\"\",\"\",\"\",\"required|numeric\",\"required|numeric\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"hideThisFieldFrontend\",\"\",\"\",\"hideThisFieldFrontend\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"Exclusive,Inclusive\",\"\",\"Yes,No\",\"\",\"Yes,No\",\"Enable,Disable\",\"\",\"\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"Exclusive,Inclusive\",\"\",\"Yes,No\",\"\",\"1,0\",\"1,0\",\"\",\"\",\"\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"manufacturers\",\"categories\",\"vendors\",\"units\",\"taxes\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"manufacturerId\",\"categoryId\",\"vendorId\",\"unitId\",\"taxId\",\"null\",\"null\",\"null\",\"\",\"null\",\"null\",\"\",\"null\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"heading\",\"heading\",\"heading\",\"heading,unit\",\"heading,percent\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"heading\",\"model\",\"barcode\",\"unitId\",\"taxId\",\"taxType\",\"quantity\",\"subtract\",\"image\",\"showInPos\",\"status\",\"relatedImage\",\"cost\",\"price\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"]}","30","0","0","0","0","0","","PD9waHANCiRnZXRNYXggPSBEQjo6c2VsZWN0KCJTRUxFQ1QgTUFYKGJhcmNvZGUpIGFzIG1heCBGUk9NIGBwcm9kdWN0c2AgV0hFUkUgc3RvcmVJZD0nIi5TZXNzaW9uOjpnZXQoJ3N0b3JlSWQnKS4iJyIpOw0KaWYoZW1wdHkoJGdldE1heFswXSkpew0KJGFycmF5WydiYXJjb2RlJ10gPSAkc2V0dGluZ3NbJ3N0YXJ0QmFyY29kZUZyb20nXTsNCn1lbHNlew0KJGdldE1heCA9ICR0aGlzLT5hcnJheUNvbnZlcnQoJGdldE1heCk7DQokYXJyYXlbJ2JhcmNvZGUnXSA9ICRnZXRNYXhbMF1bJ21heCddKzE7DQp9DQo/Pg==","","","","{{$controller::moduleShortCode(24)}}","","No","","","Yes","model,quantity,updatedBy,insertedBy,dateUpdated,dateAdded","barcode","1","2","2024-02-24 15:17:23");
INSERT INTO modules VALUES("25","StoreSettings","store_settings","storeSettingId","Store Settings","{\"moduleId\":\"25\",\"tableName\":\"store_settings\",\"columnName\":[\"storeSettingId\",\"websiteName\",\"websiteLogo\",\"adminEmail\",\"contactMobile\",\"contactEmail\",\"address\",\"mailJetUsername\",\"mailJetPassword\",\"mailjetEmail\",\"mailjetName\",\"mergeLogin\",\"databaseBackup\",\"fieldsToSendValueOnMail\",\"filedsToReplaceOnMail\",\"filedsToUnsetOnMails\",\"hideAddEditDeleteIfNoStoreSelected\",\"enableRewardPoints\",\"rewardOnDiscountedProduct\",\"minimumRewardPointsToReedem\",\"rewardPercentOnProduct\",\"walkInCustomerId\",\"invoicePrefix\",\"storeId\",\"userId\",\"updatedBy\",\"insertedBy\",\"status\",\"cartAppendStyle\",\"orderTypeRequired\",\"enableOrderType\",\"enableTaxes\",\"showStoreInfomation\",\"showExtraInformtionPopup\",\"showWalletBalance\",\"showRewardBalance\",\"showAddCustomerBottom\",\"salesPersonRequired\",\"showSalesPerson\",\"showQuickAdd\",\"restaurant\",\"showModal\",\"showBarcode\",\"showImage\",\"showManufacturers\",\"showCategories\",\"storeTerms\",\"invoiceHeaderText\",\"invoiceFooterText\",\"defaultInvoiceTemplate\",\"defaultKotTemplate\",\"defaultOrderStatus\",\"cancelledOrderStatus\",\"runningOrderStatus\",\"deductFromStock\",\"startBarcodeFrom\"],\"columnCustomName\":[\"Store Setting Id\",\"Website Name\",\"Website Logo\",\"Admin Email\",\"Contact Mobile\",\"Contact Email\",\"Address\",\"Mail Jet Username\",\"Mail Jet Password\",\"Mailjet Email\",\"Mailjet Name\",\"Merge Login\",\"Database Backup\",\"Fields To Send Value On Mail\",\"Fileds To Replace On Mail\",\"Fileds To Unset On Mails\",\"Hide Add Edit Delete If No Store Selected\",\"Enable Reward Points\",\"Reward On Discounted Product\",\"Minimum Reward Points To Reedem\",\"Reward Percent On Product\",\"Walk In Customer Id\",\"Invoice Prefix\",\"Store Id\",\"User Id\",\"Updated By\",\"Inserted By\",\"Status\",\"Cart Append Style\",\"Order Type Required\",\"Enable Order Type\",\"Enable Taxes\",\"Show Store Infomation\",\"Show Extra Informtion Popup\",\"Show Wallet Balance\",\"Show Reward Balance\",\"Show Add Customer Bottom\",\"Sales Person Required\",\"Show Sales Person\",\"Show Quick Add\",\"Restaurant\",\"Show Modal\",\"Show Barcode\",\"Show Image\",\"Show Manufacturers\",\"Show Categories\",\"Store Terms\",\"Invoice Header Text\",\"Invoice Footer Text\",\"Default Invoice Template\",\"Default Kot Template\",\"Default Order Status\",\"Cancelled Order Status\",\"Running Order Status\",\"Deduct From Stock\",\"Start Barcode From\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"type\":[\"\",\"\",\"image\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"status\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"columnSortOrder\":[\"1\",\"3\",\"2\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"file\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"select\",\"select\",\"text\",\"text\",\"text\",\"select\",\"text\",\"select\",\"select\",\"select\",\"select\",\"select\",\"select\",\"select\",\"select\",\"select\",\"select\",\"select\",\"select\",\"select\",\"select\",\"select\",\"select\",\"select\",\"select\",\"wysiwyg\",\"wysiwyg\",\"wysiwyg\",\"select\",\"select\",\"select\",\"select\",\"select\",\"select\",\"text\"],\"fieldHeading\":[\"Website Name\",\"Website Logo\",\"Admin Email\",\"Contact Mobile\",\"Contact Email\",\"Address\",\"Mail Jet Username\",\"Mail Jet Password\",\"Mailjet Email\",\"Mailjet Name\",\"Database Backup\",\"Enable Reward Points\",\"Reward On Discounted Product\",\"Minimum Reward Points To Reedem\",\"Reward Percent On Product\",\"Walk In Customer Id\",\"Invoice Prefix\",\"Cart Append Style\",\"Order Type Required\",\"Enable Order Type\",\"Enable Taxes\",\"Show Store Infomation\",\"Show Extra Informtion Popup\",\"Show Wallet Balance\",\"Show Reward Balance\",\"Show Add Customer Bottom\",\"Sales Person Required\",\"Show Sales Person\",\"Show Quick Add\",\"Restaurant\",\"Show Modal\",\"Show Barcode\",\"Show Image\",\"Show Manufacturers\",\"Show Categories\",\"Store Terms\",\"Invoice Header Text\",\"Invoice Footer Text\",\"Default Invoice Template\",\"Default Kot Template\",\"Default Order Status\",\"Cancelled Order Status\",\"Running Order Status\",\"Deduct From Stock\",\"Start Barcode From\"],\"fieldSortOrder\":[\"1\",\"100\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"12\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"28\",\"29\",\"30\",\"31\",\"32\",\"33\",\"34\",\"35\",\"36\",\"37\",\"38\",\"39\",\"40\",\"41\",\"42\",\"43\",\"44\",\"45\",\"95\",\"96\",\"97\",\"49\",\"50\",\"51\",\"52\",\"53\",\"54\",\"55\"],\"fieldColumn\":[\"4\",\"12\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"12\",\"12\",\"12\",\"4\",\"4\",\"4\",\"4\",\"4\",\"6\",\"6\"],\"fieldColumnName\":[\"websiteName\",\"websiteLogo\",\"adminEmail\",\"contactMobile\",\"contactEmail\",\"address\",\"mailJetUsername\",\"mailJetPassword\",\"mailjetEmail\",\"mailjetName\",\"databaseBackup\",\"enableRewardPoints\",\"rewardOnDiscountedProduct\",\"minimumRewardPointsToReedem\",\"rewardPercentOnProduct\",\"walkInCustomerId\",\"invoicePrefix\",\"cartAppendStyle\",\"orderTypeRequired\",\"enableOrderType\",\"enableTaxes\",\"showStoreInfomation\",\"showExtraInformtionPopup\",\"showWalletBalance\",\"showRewardBalance\",\"showAddCustomerBottom\",\"salesPersonRequired\",\"showSalesPerson\",\"showQuickAdd\",\"restaurant\",\"showModal\",\"showBarcode\",\"showImage\",\"showManufacturers\",\"showCategories\",\"storeTerms\",\"invoiceHeaderText\",\"invoiceFooterText\",\"defaultInvoiceTemplate\",\"defaultKotTemplate\",\"defaultOrderStatus\",\"cancelledOrderStatus\",\"runningOrderStatus\",\"deductFromStock\",\"startBarcodeFrom\"],\"fieldName\":[\"websiteName\",\"websiteLogo\",\"adminEmail\",\"contactMobile\",\"contactEmail\",\"address\",\"mailJetUsername\",\"mailJetPassword\",\"mailjetEmail\",\"mailjetName\",\"databaseBackup\",\"enableRewardPoints\",\"rewardOnDiscountedProduct\",\"minimumRewardPointsToReedem\",\"rewardPercentOnProduct\",\"walkInCustomerId\",\"invoicePrefix\",\"cartAppendStyle\",\"orderTypeRequired\",\"enableOrderType\",\"enableTaxes\",\"showStoreInfomation\",\"showExtraInformtionPopup\",\"showWalletBalance\",\"showRewardBalance\",\"showAddCustomerBottom\",\"salesPersonRequired\",\"showSalesPerson\",\"showQuickAdd\",\"restaurant\",\"showModal\",\"showBarcode\",\"showImage\",\"showManufacturers\",\"showCategories\",\"storeTerms\",\"invoiceHeaderText\",\"invoiceFooterText\",\"defaultInvoiceTemplate\",\"defaultKotTemplate\",\"defaultOrderStatus\",\"cancelledOrderStatus\",\"runningOrderStatus\",\"deductFromStock\",\"startBarcodeFrom\"],\"fieldId\":[\"websiteName\",\"websiteLogo\",\"adminEmail\",\"contactMobile\",\"contactEmail\",\"address\",\"mailJetUsername\",\"mailJetPassword\",\"mailjetEmail\",\"mailjetName\",\"databaseBackup\",\"enableRewardPoints\",\"rewardOnDiscountedProduct\",\"minimumRewardPointsToReedem\",\"rewardPercentOnProduct\",\"walkInCustomerId\",\"invoicePrefix\",\"cartAppendStyle\",\"orderTypeRequired\",\"enableOrderType\",\"enableTaxes\",\"showStoreInfomation\",\"showExtraInformtionPopup\",\"showWalletBalance\",\"showRewardBalance\",\"showAddCustomerBottom\",\"salesPersonRequired\",\"showSalesPerson\",\"showQuickAdd\",\"restaurant\",\"showModal\",\"showBarcode\",\"showImage\",\"showManufacturers\",\"showCategories\",\"storeTerms\",\"invoiceHeaderText\",\"invoiceFooterText\",\"defaultInvoiceTemplate\",\"defaultKotTemplate\",\"defaultOrderStatus\",\"cancelledOrderStatus\",\"runningOrderStatus\",\"deductFromStock\",\"startBarcodeFrom\"],\"fieldClass\":[\"websiteName\",\"websiteLogo\",\"adminEmail\",\"contactMobile\",\"contactEmail\",\"address\",\"mailJetUsername\",\"mailJetPassword\",\"mailjetEmail\",\"mailjetName\",\"databaseBackup\",\"enableRewardPoints\",\"rewardOnDiscountedProduct\",\"minimumRewardPointsToReedem\",\"rewardPercentOnProduct\",\"walkInCustomerId\",\"invoicePrefix\",\"cartAppendStyle\",\"orderTypeRequired\",\"enableOrderType\",\"enableTaxes\",\"showStoreInfomation\",\"showExtraInformtionPopup\",\"showWalletBalance\",\"showRewardBalance\",\"showAddCustomerBottom\",\"salesPersonRequired\",\"showSalesPerson\",\"showQuickAdd\",\"restaurant\",\"showModal\",\"showBarcode\",\"showImage\",\"showManufacturers\",\"showCategories\",\"storeTerms\",\"invoiceHeaderText\",\"invoiceFooterText\",\"defaultInvoiceTemplate\",\"defaultKotTemplate\",\"defaultOrderStatus\",\"cancelledOrderStatus\",\"runningOrderStatus\",\"deductFromStock\",\"startBarcodeFrom\"],\"fieldPlaceHolder\":[\"Website Name\",\"Website Logo\",\"Admin Email\",\"Contact Mobile\",\"Contact Email\",\"Address\",\"Mail Jet Username\",\"Mail Jet Password\",\"Mailjet Email\",\"Mailjet Name\",\"Database Backup\",\"Enable Reward Points\",\"Reward On Discounted Product\",\"Minimum Reward Points To Reedem\",\"Reward Percent On Product\",\"Walk In Customer Id\",\"Invoice Prefix\",\"Cart Append Style\",\"Order Type Required\",\"Enable Order Type\",\"Enable Taxes\",\"Show Store Infomation\",\"Show Extra Informtion Popup\",\"Show Wallet Balance\",\"Show Reward Balance\",\"Show Add Customer Bottom\",\"Sales Person Required\",\"Show Sales Person\",\"Show Quick Add\",\"Restaurant\",\"Show Modal\",\"Show Barcode\",\"Show Image\",\"Show Manufacturers\",\"Show Categories\",\"Store Terms\",\"Invoice Header Text\",\"Invoice Footer Text\",\"Default Invoice Template\",\"Default Kot Template\",\"Default Order Status\",\"Cancelled Order Status\",\"Running Order Status\",\"Deduct From Stock\",\"Start Barcode From\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"removePleaseSelect\",\"removePleaseSelect\",\"removePleaseSelect\",\"removePleaseSelect\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"Yes,No\",\"Yes,No\",\"\",\"\",\"\",\"\",\"\",\"Append,Prepend\",\"Yes,No\",\"Yes,No\",\"Yes,No\",\"Yes,No\",\"Yes,No\",\"Yes,No\",\"Yes,No\",\"Yes,No\",\"Yes,No\",\"Yes,No\",\"Yes,No\",\"Yes,No\",\"Yes,No\",\"Yes,No\",\"Yes,No\",\"Yes,No\",\"Yes,No\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"Yes,No\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"1,0\",\"1,0\",\"\",\"\",\"\",\"\",\"\",\"append,prepend\",\"1,0\",\"1,0\",\"1,0\",\"1,0\",\"1,0\",\"1,0\",\"1,0\",\"1,0\",\"1,0\",\"1,0\",\"1,0\",\"1,0\",\"1,0\",\"1,0\",\"1,0\",\"1,0\",\"1,0\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"1,0\",\"\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"customers\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"invoice_template\",\"order_status\",\"order_status\",\"order_status\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"null\",\"null\",\"\",\"\",\"\",\"customerId\",\"\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"\",\"null\",\"\",\"invoiceTemplateId\",\"orderStatusId\",\"orderStatusId\",\"orderStatusId\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"name,mobile,email\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"heading\",\"heading\",\"heading\",\"heading\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"websiteName\",\"websiteLogo\",\"adminEmail\",\"contactMobile\",\"contactEmail\",\"address\",\"mailJetUsername\",\"mailJetPassword\",\"mailjetEmail\",\"mailjetName\",\"databaseBackup\",\"enableRewardPoints\",\"rewardOnDiscountedProduct\",\"minimumRewardPointsToReedem\",\"rewardPercentOnProduct\",\"walkInCustomerId\",\"invoicePrefix\",\"cartAppendStyle\",\"orderTypeRequired\",\"enableOrderType\",\"enableTaxes\",\"showStoreInfomation\",\"showExtraInformtionPopup\",\"showWalletBalance\",\"showRewardBalance\",\"showAddCustomerBottom\",\"salesPersonRequired\",\"showSalesPerson\",\"showQuickAdd\",\"restaurant\",\"showModal\",\"showBarcode\",\"showImage\",\"showManufacturers\",\"showCategories\",\"storeTerms\",\"invoiceHeaderText\",\"invoiceFooterText\",\"defaultInvoiceTemplate\",\"defaultKotTemplate\",\"defaultOrderStatus\",\"cancelledOrderStatus\",\"runningOrderStatus\",\"deductFromStock\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"]}","30","0","0","0","1","0","","","","","","{{$controller::moduleShortCode(25)}}","","No","","","No","","","1","1","2024-02-24 15:44:54");
INSERT INTO modules VALUES("26","SeatingTables","seating_tables","seatingTableId","Seating Tables","{\"moduleId\":\"26\",\"tableName\":\"seating_tables\",\"columnName\":[\"seatingTableId\",\"heading\",\"capacity\",\"storeId\",\"userId\",\"status\",\"dateUpdated\",\"dateAdded\"],\"columnCustomName\":[\"Seating Table Id\",\"Heading\",\"Capacity\",\"Store Id\",\"User Id\",\"Status\",\"Date Updated\",\"Date Added\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"Yes\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"status\",\"\",\"\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"\",\"\",\"4\",\"\",\"5\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"select\"],\"fieldHeading\":[\"Heading\",\"Capacity\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\",\"5\"],\"fieldColumn\":[\"4\",\"4\",\"4\"],\"fieldColumnName\":[\"heading\",\"capacity\",\"status\"],\"fieldName\":[\"heading\",\"capacity\",\"status\"],\"fieldId\":[\"heading\",\"capacity\",\"status\"],\"fieldClass\":[\"heading\",\"capacity\",\"status\"],\"fieldPlaceHolder\":[\"Heading\",\"Capacity\",\"Status\"],\"fieldDefaultValue\":[\"\",\"2\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"0\"],\"fieldValidation\":[\"required\",\"required|numeric\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\"]}","30","0","0","0","0","0","","","","","","{{$controller::moduleShortCode(0)}}","","No","","","No","","","1","2","2024-02-26 20:13:32");
INSERT INTO modules VALUES("27","Languages","languages","languageId","Languages","{\"moduleId\":\"27\",\"tableName\":\"languages\",\"columnName\":[\"languageId\",\"heading\",\"status\"],\"columnCustomName\":[\"Language Id\",\"Heading\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\"],\"type\":[\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"3\"],\"tableColumnMerge\":[\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"select\"],\"fieldHeading\":[\"Heading\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\"],\"fieldColumn\":[\"6\",\"6\"],\"fieldColumnName\":[\"heading\",\"status\"],\"fieldName\":[\"heading\",\"status\"],\"fieldId\":[\"heading\",\"status\"],\"fieldClass\":[\"heading\",\"status\"],\"fieldPlaceHolder\":[\"Heading\",\"Status\"],\"fieldDefaultValue\":[\"\",\"\"],\"fieldAttribute\":[\"\",\"\"],\"fieldRequired\":[\"1\",\"0\"],\"fieldValidation\":[\"required|unique:languages,heading\",\"\"],\"fieldHeadingBefore\":[\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\"],\"fieldOrderBy\":[\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\"],\"fieldCustomFields\":[\"\",\"\"],\"fieldTableColumn\":[\"status\"]}","2","0","0","0","0","0","","","PD9waHANCiAgICBEQjo6aW5zZXJ0KCJBTFRFUiBUQUJMRSBtZXNzYWdlcyBBREQgQ09MVU1OIGAiLnN0cnRvbG93ZXIoJGFycmF5WydoZWFkaW5nJ10pLiJgIFZBUkNIQVIoMjU1KSBOVUxMIEFGVEVSIG1lc3NhZ2UiKTsNCj8+","","","{{$controller::moduleShortCode(27)}}","","No","","","No","","","1","2","2024-02-27 09:34:30");
INSERT INTO modules VALUES("28","Employees","employees","employeeId","Employees","{\"moduleId\":\"28\",\"tableName\":\"employees\",\"columnName\":[\"employeeId\",\"name\",\"mobile\",\"email\",\"sallery\",\"dob\",\"storeId\",\"userId\",\"softDelete\",\"updatedBy\",\"insertedBy\",\"dateUpdated\",\"dateAdded\",\"status\"],\"columnCustomName\":[\"Employee Id\",\"Name\",\"Mobile\",\"Email\",\"Sallery\",\"Dob\",\"Store Id\",\"User Id\",\"Soft Delete\",\"Updated By\",\"Inserted By\",\"Date Updated\",\"Date Added\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"7\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"email\",\"text\",\"date\",\"select\"],\"fieldHeading\":[\"Name\",\"Mobile\",\"Email\",\"Sallery\",\"Dob\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"13\"],\"fieldColumn\":[\"4\",\"4\",\"4\",\"4\",\"4\",\"4\"],\"fieldColumnName\":[\"name\",\"mobile\",\"email\",\"sallery\",\"dob\",\"status\"],\"fieldName\":[\"name\",\"mobile\",\"email\",\"sallery\",\"dob\",\"status\"],\"fieldId\":[\"name\",\"mobile\",\"email\",\"sallery\",\"dob\",\"status\"],\"fieldClass\":[\"name\",\"mobile\",\"email\",\"sallery\",\"dob\",\"status\"],\"fieldPlaceHolder\":[\"Name\",\"Mobile\",\"Email\",\"Sallery\",\"Dob\",\"Status\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"0\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"0\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"required\",\"required|unique:employees,mobile|digits:10|numeric\",\"unique:employees,email\",\"numeric\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\",\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\",\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\",\"\"]}","30","0","0","0","0","0","","","","","","{{$controller::moduleShortCode(0)}}","","No","","","No","","","1","2","2024-02-27 15:34:21");
INSERT INTO modules VALUES("29","Payments","payments","paymentId","Payments","{\"moduleId\":\"29\",\"tableName\":\"payments\",\"columnName\":[\"paymentId\",\"name\",\"sortOrder\",\"softDelete\",\"status\"],\"columnCustomName\":[\"Payment Id\",\"Name\",\"Sort Order\",\"Soft Delete\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"sortOrderUpdateFromOutSide\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"\",\"4\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"select\"],\"fieldHeading\":[\"Name\",\"Sort Order\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\",\"4\"],\"fieldColumn\":[\"6\",\"6\",\"12\"],\"fieldColumnName\":[\"name\",\"sortOrder\",\"status\"],\"fieldName\":[\"name\",\"sortOrder\",\"status\"],\"fieldId\":[\"name\",\"sortOrder\",\"status\"],\"fieldClass\":[\"name\",\"sortOrder\",\"status\"],\"fieldPlaceHolder\":[\"Name\",\"Sort Order\",\"Status\"],\"fieldDefaultValue\":[\"\",\"0\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"0\"],\"fieldValidation\":[\"required\",\"required|numeric\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\"]}","2","0","0","0","0","0","","","","","","{{$controller::moduleShortCode(0)}}","","No","","","No","","","1","2","2024-03-01 10:17:44");
INSERT INTO modules VALUES("30","StorePayments","store_payments","storePaymentId","Store Payments","{\"moduleId\":\"30\",\"tableName\":\"store_payments\",\"columnName\":[\"storePaymentId\",\"payments\",\"default\",\"storeId\",\"userId\",\"status\"],\"columnCustomName\":[\"Store Payment Id\",\"Payments\",\"Default\",\"Store Id\",\"User Id\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"\",\"\",\"\",\"\",\"\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"select\",\"select\"],\"fieldHeading\":[\"Payments\",\"Default Payment Method\"],\"fieldSortOrder\":[\"1\",\"2\"],\"fieldColumn\":[\"12\",\"12\"],\"fieldColumnName\":[\"payments\",\"default\"],\"fieldName\":[\"payments\",\"default\"],\"fieldId\":[\"payments\",\"default\"],\"fieldClass\":[\"payments\",\"default\"],\"fieldPlaceHolder\":[\"Payments\",\"Default\"],\"fieldDefaultValue\":[\"\",\"\"],\"fieldAttribute\":[\"multiple\",\"\"],\"fieldRequired\":[\"1\",\"1\"],\"fieldValidation\":[\"required\",\"required\"],\"fieldHeadingBefore\":[\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\"],\"fieldSelectTable\":[\"payments\",\"payments\"],\"fieldSelectIdColumn\":[\"paymentId\",\"paymentId\"],\"fieldSelectMainColumn\":[\"name\",\"name\"],\"fieldSelectWhere\":[\"\",\"\"],\"fieldOrderBy\":[\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\"],\"fieldTableColumn\":[\"payments\"],\"fieldSelectOperator\":[\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\"],\"fieldCustomFields\":[\"\",\"\"]}","30","0","1","0","1","0","","","","","","{{$controller::moduleShortCode(30)}}","","No","","","No","","","1","1","2024-03-01 10:50:41");
INSERT INTO modules VALUES("31","AdditionalCharges","additional_charges","additionalChargeId","Additional Charges","{\"moduleId\":\"31\",\"tableName\":\"additional_charges\",\"columnName\":[\"additionalChargeId\",\"heading\",\"sortOrder\",\"storeId\",\"userId\",\"updatedBy\",\"insertedBy\",\"status\"],\"columnCustomName\":[\"Additional Charge Id\",\"Heading\",\"Sort Order\",\"Store Id\",\"User Id\",\"Updated By\",\"Inserted By\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"sortOrderUpdateFromOutSide\",\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"\",\"\",\"\",\"\",\"4\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"select\"],\"fieldHeading\":[\"Heading\",\"Sort Order\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\",\"7\"],\"fieldColumn\":[\"6\",\"6\",\"12\"],\"fieldColumnName\":[\"heading\",\"sortOrder\",\"status\"],\"fieldName\":[\"heading\",\"sortOrder\",\"status\"],\"fieldId\":[\"heading\",\"sortOrder\",\"status\"],\"fieldClass\":[\"heading\",\"sortOrder\",\"status\"],\"fieldPlaceHolder\":[\"Heading\",\"Sort Order\",\"Status\"],\"fieldDefaultValue\":[\"\",\"0\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"0\"],\"fieldValidation\":[\"required\",\"numeric|required\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\"]}","30","0","0","0","0","0","","","","","","{{$controller::moduleShortCode(0)}}","","No","","","No","","","1","2","2024-03-06 16:20:59");
INSERT INTO modules VALUES("32","InvoiceTemplate","invoice_template","invoiceTemplateId","Invoice Template","{\"moduleId\":\"32\",\"tableName\":\"invoice_template\",\"columnName\":[\"invoiceTemplateId\",\"heading\",\"template\",\"tableCode\",\"loopTrCode\",\"customCss\",\"subTotalTrLoop\",\"status\"],\"columnCustomName\":[\"Invoice Template Id\",\"Heading\",\"Template\",\"Table Code\",\"Loop Tr Code\",\"Custom Css\",\"Sub Total Tr Loop\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"\",\"\",\"\",\"\",\"\",\"3\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"wysiwyg\",\"select\",\"textarea\",\"textarea\",\"textarea\",\"textarea\"],\"fieldHeading\":[\"Heading\",\"Template\",\"Status\",\"Loop Tr Code\",\"Sub Total Tr Loop\",\"Custom Css\",\"Table Code\"],\"fieldSortOrder\":[\"1\",\"2\",\"7\",\"4\",\"5\",\"6\",\"3\"],\"fieldColumn\":[\"12\",\"12\",\"12\",\"12\",\"12\",\"12\",\"12\"],\"fieldColumnName\":[\"heading\",\"template\",\"status\",\"loopTrCode\",\"subTotalTrLoop\",\"customCss\",\"tableCode\"],\"fieldName\":[\"heading\",\"template\",\"status\",\"loopTrCode\",\"subTotalTrLoop\",\"customCss\",\"tableCode\"],\"fieldId\":[\"heading\",\"template\",\"status\",\"loopTrCode\",\"subTotalTrLoop\",\"customCss\",\"tableCode\"],\"fieldClass\":[\"heading\",\"template\",\"status\",\"loopTrCode tdetqzuqqe\",\"subTotalTrLoop tdetqzuqqe\",\"customCss tdetqzuqqe\",\"tableCode tdetqzuqqe\"],\"fieldPlaceHolder\":[\"Heading\",\"Template\",\"Status\",\"Loop Tr Code\",\"Sub Total Tr Loop\",\"Custom Css\",\"Table Code\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"0\",\"0\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"required\",\"required\",\"\",\"\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"Enable,Disable\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\",\"1,0\",\"\",\"\",\"\",\"\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"heading\",\"template\",\"status\",\"loopTrCode\",\"subTotalTrLoop\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"]}","2","0","0","0","0","0","","PD9waHANCiRhcnJheVsndGVtcGxhdGUnXSA9ICR0aGlzLT5lbmNyeXB0KCRhcnJheVsndGVtcGxhdGUnXSk7DQokYXJyYXlbJ2xvb3BUckNvZGUnXSA9ICR0aGlzLT5lbmNyeXB0KCRhcnJheVsnbG9vcFRyQ29kZSddKTsNCiRhcnJheVsnc3ViVG90YWxUckxvb3AnXSA9ICR0aGlzLT5lbmNyeXB0KCRhcnJheVsnc3ViVG90YWxUckxvb3AnXSk7DQokYXJyYXlbJ2N1c3RvbUNzcyddID0gJHRoaXMtPmVuY3J5cHQoJGFycmF5WydjdXN0b21Dc3MnXSk7DQokYXJyYXlbJ3RhYmxlQ29kZSddID0gJHRoaXMtPmVuY3J5cHQoJGFycmF5Wyd0YWJsZUNvZGUnXSk7DQo/Pg==","","","","{{$controller::moduleShortCode(32)}}","","No","","","No","","","1","2","2024-03-08 17:09:41");
INSERT INTO modules VALUES("33","OrderStatus","order_status","orderStatusId","Order Status","{\"moduleId\":\"33\",\"tableName\":\"order_status\",\"columnName\":[\"orderStatusId\",\"heading\",\"status\"],\"columnCustomName\":[\"Order Status Id\",\"Heading\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\"],\"type\":[\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"3\"],\"tableColumnMerge\":[\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"select\"],\"fieldHeading\":[\"Heading\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\"],\"fieldColumn\":[\"6\",\"6\"],\"fieldColumnName\":[\"heading\",\"status\"],\"fieldName\":[\"heading\",\"status\"],\"fieldId\":[\"heading\",\"status\"],\"fieldClass\":[\"heading\",\"status\"],\"fieldPlaceHolder\":[\"Heading\",\"Status\"],\"fieldDefaultValue\":[\"\",\"\"],\"fieldAttribute\":[\"\",\"\"],\"fieldRequired\":[\"1\",\"0\"],\"fieldValidation\":[\"required\",\"\"],\"fieldHeadingBefore\":[\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\"],\"fieldOrderBy\":[\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\"],\"fieldCustomFields\":[\"\",\"\"]}","2","0","0","0","0","0","","","","","","{{$controller::moduleShortCode(0)}}","","No","","","No","","","1","2","2024-03-17 14:33:59");
INSERT INTO modules VALUES("34","CustomerPayInOut","customer_pay_in_out","customerPayInOutId","Customer Pay In Out","{\"moduleId\":\"34\",\"tableName\":\"customer_pay_in_out\",\"columnName\":[\"customerPayInOutId\",\"customerId\",\"amount\",\"type\",\"storeId\",\"userId\",\"insertedBy\",\"dateUpdated\",\"dateAdded\"],\"columnCustomName\":[\"Customer Pay In Out Id\",\"Customer Id\",\"Amount\",\"Type\",\"Store Id\",\"User Id\",\"Inserted By\",\"Date Updated\",\"Date Added\"],\"foreignColumnShow\":[\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"customers\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"name\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"customerId\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"\",\"\",\"\",\"\",\"\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"select\",\"text\",\"select\"],\"fieldHeading\":[\"Customer Id\",\"Amount\",\"Type\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\"],\"fieldColumn\":[\"6\",\"6\",\"12\"],\"fieldColumnName\":[\"customerId\",\"amount\",\"type\"],\"fieldName\":[\"customerId\",\"amount\",\"type\"],\"fieldId\":[\"customerId\",\"amount\",\"type\"],\"fieldClass\":[\"customerId select2\",\"amount\",\"type\"],\"fieldPlaceHolder\":[\"Customer Id\",\"Amount\",\"Type\"],\"fieldDefaultValue\":[\"\",\"0\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"0\"],\"fieldValidation\":[\"required\",\"numeric|required\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"Credit,Debit\"],\"fieldSelectBoxValue\":[\"\",\"\",\"Credit,Debit\"],\"fieldSelectTable\":[\"customers\",\"\",\"\"],\"fieldSelectIdColumn\":[\"customerId\",\"null\",\"null\"],\"fieldSelectMainColumn\":[\"name,mobile,email\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\"],\"fieldTableColumn\":[\"amount\",\"type\"]}","30","0","0","0","0","0","","","","","","{{$controller::moduleShortCode(0)}}","","No","","","No","","","1","2","2024-03-28 13:38:29");
INSERT INTO modules VALUES("35","CustomerLedgerWallet","customer_ledger_wallet","customerLedgerId","Customer Ledger Wallet","{\"moduleId\":\"35\",\"tableName\":\"customer_ledger_wallet\",\"columnName\":[\"customerLedgerId\",\"orderId\",\"customerId\",\"amount\",\"type\",\"paymentId\",\"remark\",\"status\",\"storeId\",\"userId\",\"softDelete\",\"dateAdded\"],\"columnCustomName\":[\"Customer Ledger Id\",\"Order Id\",\"Customer Id\",\"Amount\",\"Type\",\"Payment Id\",\"Remark\",\"Status\",\"Store Id\",\"User Id\",\"Soft Delete\",\"Date Added\"],\"foreignColumnShow\":[\"No\",\"No\",\"Yes\",\"No\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"customers\",\"\",\"\",\"payments\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"name\",\"\",\"\",\"name\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"customerId\",\"\",\"\",\"paymentId\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"No\",\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"status\",\"\",\"\",\"\",\"\"],\"columnSortOrder\":[\"1\",\"\",\"2\",\"3\",\"4\",\"5\",\"6\",\"\",\"\",\"\",\"\",\"7\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"select\",\"select\",\"text\",\"select\",\"select\",\"textarea\"],\"fieldHeading\":[\"Order Id\",\"Customer Id\",\"Amount\",\"Type\",\"Payment Id\",\"Remark\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\"],\"fieldColumn\":[\"6\",\"6\",\"4\",\"4\",\"4\",\"12\"],\"fieldColumnName\":[\"orderId\",\"customerId\",\"amount\",\"type\",\"paymentId\",\"remark\"],\"fieldName\":[\"orderId\",\"customerId\",\"amount\",\"type\",\"paymentId\",\"remark\"],\"fieldId\":[\"orderId\",\"customerId\",\"amount\",\"type\",\"paymentId\",\"remark\"],\"fieldClass\":[\"orderId\",\"customerId\",\"amount\",\"type\",\"paymentId\",\"remark\"],\"fieldPlaceHolder\":[\"Order Id\",\"Customer Id\",\"Amount\",\"Type\",\"Payment Id\",\"Remark\"],\"fieldDefaultValue\":[\"\",\"\",\"0\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"0\",\"1\",\"1\",\"0\",\"1\",\"0\"],\"fieldValidation\":[\"\",\"required\",\"required|numeric\",\"\",\"required\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"hideThisFieldFrontend\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"Credit,Debit\",\"\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"Credit,Debit\",\"\",\"\"],\"fieldSelectTable\":[\"order\",\"customers\",\"\",\"\",\"payments\",\"\"],\"fieldSelectIdColumn\":[\"orderId\",\"customerId\",\"null\",\"null\",\"paymentId\",\"null\"],\"fieldSelectMainColumn\":[\"orderId,name,email,mobile\",\"name,mobile,email\",\"\",\"\",\"name\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"orderId\",\"customerId\",\"amount\",\"type\",\"paymentId\",\"remark\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\",\"\"]}","30","0","0","1","0","0","","PD9waHANCmlmKCRhcnJheVsndHlwZSddID09ICdDcmVkaXQnKXsNCiAgICRhcnJheVsncGF5SW5PdXQnXSA9ICdQYXlJbic7DQp9ZWxzZXsNCiAgICRhcnJheVsncGF5SW5PdXQnXSA9ICdQYXlPdXQnOw0KfQ0KPz4=","PD9waHANCiR0aGlzLT51cGRhdGVDdXN0b21lcldhbGxldCgkYXJyYXlbJ2N1c3RvbWVySWQnXSk7DQo/Pg==","","","{{$controller::moduleShortCode(35)}}","","No","","","No","","","1","2","2024-03-28 13:54:30");
INSERT INTO modules VALUES("36","Codes","codes","codeId","Codes","{\"moduleId\":\"36\",\"tableName\":\"codes\",\"columnName\":[\"codeId\",\"alphabat\",\"number\",\"status\"],\"columnCustomName\":[\"Code Id\",\"Alphabat\",\"Number\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"4\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"select\"],\"fieldHeading\":[\"Alphabat\",\"Number\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\"],\"fieldColumn\":[\"4\",\"4\",\"4\"],\"fieldColumnName\":[\"alphabat\",\"number\",\"status\"],\"fieldName\":[\"alphabat\",\"number\",\"status\"],\"fieldId\":[\"alphabat\",\"number\",\"status\"],\"fieldClass\":[\"alphabat\",\"number\",\"status\"],\"fieldPlaceHolder\":[\"Alphabat\",\"Number\",\"Status\"],\"fieldDefaultValue\":[\"\",\"0\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"0\"],\"fieldValidation\":[\"required\",\"required|numeric\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\"]}","2","0","0","0","0","0","","","","","","{{$controller::moduleShortCode(0)}}","","No","","","No","","","1","2","2024-03-28 14:27:40");
INSERT INTO modules VALUES("37","CustomerLedgerReward","customer_ledger_reward","customerLedgerRewardId","Customer Ledger Reward","{\"moduleId\":\"37\",\"tableName\":\"customer_ledger_reward\",\"columnName\":[\"customerLedgerRewardId\",\"orderId\",\"customerId\",\"reward\",\"type\",\"paymentId\",\"remark\",\"status\",\"storeId\",\"userId\",\"softDelete\",\"dateAdded\"],\"columnCustomName\":[\"Customer Ledger Reward Id\",\"Order Id\",\"Customer Id\",\"Reward\",\"Type\",\"Payment Id\",\"Remark\",\"Status\",\"Store Id\",\"User Id\",\"Soft Delete\",\"Date Added\"],\"foreignColumnShow\":[\"No\",\"No\",\"Yes\",\"No\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"order\",\"customers\",\"\",\"\",\"payments\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"orderId\",\"name\",\"\",\"\",\"name\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"orderId\",\"customerId\",\"\",\"\",\"paymentId\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"status\",\"\",\"\",\"\",\"\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"\",\"\",\"\",\"\",\"8\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"select\",\"select\",\"text\",\"select\",\"select\",\"textarea\"],\"fieldHeading\":[\"Order Id\",\"Customer Id\",\"Reward\",\"Type\",\"Payment Id\",\"Remark\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\"],\"fieldColumn\":[\"6\",\"6\",\"4\",\"4\",\"4\",\"12\"],\"fieldColumnName\":[\"orderId\",\"customerId\",\"reward\",\"type\",\"paymentId\",\"remark\"],\"fieldName\":[\"orderId\",\"customerId\",\"reward\",\"type\",\"paymentId\",\"remark\"],\"fieldId\":[\"orderId\",\"customerId\",\"reward\",\"type\",\"paymentId\",\"remark\"],\"fieldClass\":[\"orderId\",\"customerId\",\"reward\",\"type\",\"paymentId\",\"remark\"],\"fieldPlaceHolder\":[\"Order Id\",\"Customer Id\",\"Reward\",\"Type\",\"Payment Id\",\"Remark\"],\"fieldDefaultValue\":[\"\",\"\",\"0\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"0\",\"1\",\"1\",\"0\",\"1\",\"0\"],\"fieldValidation\":[\"\",\"required\",\"numeric|required\",\"\",\"required\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"hideThisFieldFrontend\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"Credit,Debit\",\"\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"Credit,Debit\",\"\",\"\"],\"fieldSelectTable\":[\"order\",\"customers\",\"\",\"\",\"payments\",\"\"],\"fieldSelectIdColumn\":[\"orderId\",\"customerId\",\"null\",\"null\",\"paymentId\",\"\"],\"fieldSelectMainColumn\":[\"orderId,name,email,mobile\",\"name,mobile,email\",\"\",\"\",\"name\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"orderId\",\"customerId\",\"reward\",\"type\",\"paymentId\",\"remark\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\",\"\"]}","30","0","0","1","0","0","","PD9waHANCmlmKCRhcnJheVsndHlwZSddID09ICdDcmVkaXQnKXsNCiAgICRhcnJheVsncGF5SW5PdXQnXSA9ICdQYXlJbic7DQp9ZWxzZXsNCiAgICRhcnJheVsncGF5SW5PdXQnXSA9ICdQYXlPdXQnOw0KfQ0KPz4=","PD9waHANCiR0aGlzLT51cGRhdGVDdXN0b21lclJld2FyZCgkYXJyYXlbJ2N1c3RvbWVySWQnXSk7DQo/Pg==","","","{{$controller::moduleShortCode(37)}}","","No","","","No","","","1","2","2024-03-28 15:31:41");
INSERT INTO modules VALUES("38","OrderHistory","order_history","orderHistoryId","Order History","{\"moduleId\":\"38\",\"tableName\":\"order_history\",\"columnName\":[\"orderHistoryId\",\"orderId\",\"orderStatusId\",\"comment\",\"status\",\"storeId\",\"userId\",\"dateAdded\"],\"columnCustomName\":[\"Order History Id\",\"Order Id\",\"Order Status Id\",\"Comment\",\"Status\",\"Store Id\",\"User Id\",\"Date Added\"],\"foreignColumnShow\":[\"No\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"order_status\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"heading\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"orderStatusId\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"status\",\"\",\"\",\"\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"\",\"\",\"\",\"5\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"select\",\"select\",\"wysiwyg\"],\"fieldHeading\":[\"Order Id\",\"Order Status Id\",\"Comment\"],\"fieldSortOrder\":[\"1\",\"2\",\"5\"],\"fieldColumn\":[\"6\",\"6\",\"12\"],\"fieldColumnName\":[\"orderId\",\"orderStatusId\",\"comment\"],\"fieldName\":[\"orderId\",\"orderStatusId\",\"comment\"],\"fieldId\":[\"orderId\",\"orderStatusId\",\"comment\"],\"fieldClass\":[\"orderId\",\"orderStatusId\",\"comment\"],\"fieldPlaceHolder\":[\"Order Id\",\"Order Status Id\",\"Comment\"],\"fieldDefaultValue\":[\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"0\"],\"fieldValidation\":[\"required\",\"required\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"removePleaseSelect\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\"],\"fieldSelectTable\":[\"order\",\"order_status\",\"\"],\"fieldSelectIdColumn\":[\"orderId\",\"orderStatusId\",\"null\"],\"fieldSelectMainColumn\":[\"orderId,name,email,mobile\",\"heading\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\"],\"fieldTableColumn\":[\"orderId\",\"orderStatusId\",\"comment\"],\"fieldSelectOperator\":[\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\"]}","57","0","0","0","0","0","","","PD9waHANCmlmKCRzZXR0aW5nc1sncnVubmluZ09yZGVyU3RhdHVzJ10hPSRhcnJheVsnb3JkZXJTdGF0dXNJZCddKXsNCgkkb3JkZXJTdGF0dXNIZWFkaW5nID0gJHRoaXMtPmdldERhdGFXaGVyZSgnb3JkZXJfc3RhdHVzJywib3JkZXJTdGF0dXNJZCIsJGFycmF5WydvcmRlclN0YXR1c0lkJ10pWzBdWydoZWFkaW5nJ107DQoJREI6OnNlbGVjdCgiVVBEQVRFIGBvcmRlcmAgU0VUIG9yZGVyU3RhdHVzSWQ9JyIuJGFycmF5WydvcmRlclN0YXR1c0lkJ10uIicscnVubmluZ09yZGVyPTAsaG9sZD0wLG9yZGVyU3RhdHVzSGVhZGluZz0nIi4kb3JkZXJTdGF0dXNIZWFkaW5nLiInLGNoZWNrb3V0VHlwZT0nZmluYWxDaGVja291dCcscnVubmluZ09yZGVyPScwJyBXSEVSRSBvcmRlcklkPSciLiRhcnJheVsnb3JkZXJJZCddLiInIik7DQp9ZWxzZXsNCgkkb3JkZXJTdGF0dXNIZWFkaW5nID0gJHRoaXMtPmdldERhdGFXaGVyZSgnb3JkZXJfc3RhdHVzJywib3JkZXJTdGF0dXNJZCIsJGFycmF5WydvcmRlclN0YXR1c0lkJ10pWzBdWydoZWFkaW5nJ107DQoJREI6OnNlbGVjdCgiVVBEQVRFIGBvcmRlcmAgU0VUIG9yZGVyU3RhdHVzSWQ9JyIuJGFycmF5WydvcmRlclN0YXR1c0lkJ10uIicscnVubmluZ09yZGVyPTEsaG9sZD0xLG9yZGVyU3RhdHVzSGVhZGluZz0nIi4kb3JkZXJTdGF0dXNIZWFkaW5nLiInLGNoZWNrb3V0VHlwZT0nc2VuZFRvS290JyxydW5uaW5nT3JkZXI9JzEnIFdIRVJFIG9yZGVySWQ9JyIuJGFycmF5WydvcmRlcklkJ10uIiciKTsNCn0NCj8+","","","{{$controller::moduleShortCode(38)}}","","No","","","No","","","1","1","2024-03-29 12:01:34");



DROP TABLE IF EXISTS order;

CREATE TABLE `order` (
  `orderId` int(11) NOT NULL AUTO_INCREMENT,
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
  `runningOrder` int(1) NOT NULL DEFAULT 0,
  `kotToken` varchar(255) NOT NULL,
  `seatingTableId` int(11) NOT NULL,
  `seatingTableHeading` varchar(20) NOT NULL,
  `hold` int(1) NOT NULL DEFAULT 0,
  `orderStatusId` int(11) NOT NULL,
  `orderStatusHeading` varchar(20) NOT NULL,
  `orderProduct` text NOT NULL,
  `orderTotal` text NOT NULL,
  `employeeId` int(11) NOT NULL DEFAULT 0,
  `salesUserId` int(11) NOT NULL,
  `totalItemsInCart` int(11) NOT NULL,
  `totalQuantityInCart` int(11) NOT NULL,
  `storeId` int(11) NOT NULL DEFAULT 0,
  `userId` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `softDelete` int(1) NOT NULL DEFAULT 0,
  `insertedBy` int(11) NOT NULL,
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO order VALUES("1","1","1","INV-2024-","Walk In Customer","","0000000000","668812.00","124869.38","115696.00","[]","null","8","Cash","","677985.00","61097","0","Delivery","finalCheckout","0","lc2mSyrSI4gqI1IIKLVMhJz3dAD4zH0eaBNX0mZzQSPLU1NLWzI3cYsNvwjqGqiO7ShP7SjGxGoBhm85sYMTsJ4ZiZVYuL58w2ongvcLBXbPlFKiFEs0RhiColWdVxZoASpYoXhDwKSAi40PjBgWcPqDB8BrhHBB3YSO5tFuO2FiHJmfgE5ajymvHCi8PZ99alEZS38KaTI4qxp22A9VvhM0DnfXKaImjEjmbuAkCdVDVbjfoPqNe8Kw9x75445","0","","0","1","Completed","[{\"productId\":100,\"heading\":\"Eldora Hackett III\",\"model\":\"EtfkfhSgZJ\",\"barcode\":98321008,\"cost\":28924,\"price\":57848,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":5,\"taxType\":\"Inclusive\",\"quantity\":\"2\",\"subtract\":0,\"image\":null,\"relatedImage\":\"\\\"\\\"\",\"showInPos\":1,\"softDelete\":0,\"storeId\":1,\"userId\":2,\"updatedBy\":2,\"insertedBy\":2,\"dateUpdated\":\"2024-04-01 14:29:56\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:30\",\"taxHeading\":\"GST 28%\",\"taxPercent\":28,\"taxExclusiveValue\":0,\"taxInclusiveValue\":12654.25,\"tax\":25308.5,\"basePriceCost\":90387.5,\"discount\":\"50%\",\"discountValue\":57848,\"extraInformation\":\"\",\"total\":115696,\"rewardPoints\":5784.8,\"profit\":32539.5},{\"productId\":99,\"heading\":\"Angel Hills\",\"model\":\"q8qHbH3aUV\",\"barcode\":19919785,\"cost\":92186,\"price\":184372,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":4,\"taxType\":\"Exclusive\",\"quantity\":\"3\",\"subtract\":1,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"softDelete\":0,\"storeId\":1,\"userId\":2,\"updatedBy\":0,\"insertedBy\":2,\"dateUpdated\":\"2024-04-01 14:29:57\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:29\",\"taxHeading\":\"GST 18%\",\"taxPercent\":18,\"taxExclusiveValue\":33186.96,\"taxInclusiveValue\":0,\"tax\":99560.88,\"basePriceCost\":553116,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":553116,\"rewardPoints\":55311.600000000006,\"profit\":276558}]","","0","2","2","5","1","2","1","0","2","2024-04-01 15:12:33");
INSERT INTO order VALUES("2","2","1","INV-2024-","Walk In Customer","","0000000000","668812.00","124869.38","0.00","[]","null","8","Cash","","793681.00","66882","0","Delivery","finalCheckout","0","NfpDtaK3YjNTSWiNZ5ox9GuOhUTRbtdO3NQH3URKBNmuGVH3kVNadnD4IW3h9Zu6Hor9xLNP0y1wfMlcQjn7rvg0cYvuHMQumtRtfb254YjNWDY8f913nUCLcbTAg8RPDt4OFEjZpVlr7Vx2z1ynvc8UPH7OvNVtV8FpSrHzfihnU1bHxzb2SMISnS6fsi2OWOsHSOKbihHM2NgVjh7pAEozGtVPQbKxCzieZq9TGSZT4ULXsfKsOH07rgVEMWJ","0","","0","1","Completed","[{\"productId\":100,\"heading\":\"Eldora Hackett III\",\"model\":\"EtfkfhSgZJ\",\"barcode\":98321008,\"cost\":28924,\"price\":57848,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":5,\"taxType\":\"Inclusive\",\"quantity\":\"2\",\"subtract\":0,\"image\":null,\"relatedImage\":\"\\\"\\\"\",\"showInPos\":1,\"softDelete\":0,\"storeId\":1,\"userId\":2,\"updatedBy\":2,\"insertedBy\":2,\"dateUpdated\":\"2024-04-01 15:13:06\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:30\",\"taxHeading\":\"GST 28%\",\"taxPercent\":28,\"taxExclusiveValue\":0,\"taxInclusiveValue\":12654.25,\"tax\":25308.5,\"basePriceCost\":90387.5,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":115696,\"rewardPoints\":11569.6,\"profit\":32539.5},{\"productId\":99,\"heading\":\"Angel Hills\",\"model\":\"q8qHbH3aUV\",\"barcode\":19919785,\"cost\":92186,\"price\":184372,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":4,\"taxType\":\"Exclusive\",\"quantity\":\"3\",\"subtract\":1,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"softDelete\":0,\"storeId\":1,\"userId\":2,\"updatedBy\":0,\"insertedBy\":2,\"dateUpdated\":\"2024-04-01 15:13:06\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:29\",\"taxHeading\":\"GST 18%\",\"taxPercent\":18,\"taxExclusiveValue\":33186.96,\"taxInclusiveValue\":0,\"tax\":99560.88,\"basePriceCost\":553116,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":553116,\"rewardPoints\":55311.600000000006,\"profit\":276558}]","","0","2","2","5","1","2","1","0","2","2024-04-01 16:28:04");
INSERT INTO order VALUES("3","3","1","INV-2024-","Walk In Customer","","0000000000","668812.00","124869.38","115696.00","[]","null","8","Cash","","677985.00","61097","0","Delivery","finalCheckout","0","NPTvZ2PLJjTrtNYzHmM5twYNDOYWmeHJXoQStC6BYhb6oNZl9etqkcW5TFy08X0hAjrRLukMF0bLcVHX5We3BnI6P8Y2x8Gkw3L8EY9eOlB5l5gg6dfoFrHgRmS8FxjWEHl0D4IJbT77W11CfMrbxdfVgv2ewSqPn9kxOE0Pb0PHnbdGwmKl2nFHRjjXd96zndUPNpfyG5Fe9dlsPR8HPQygOw6kwLHFeAeVOrFyR4pOV8eN48RUaEG69zFsVCG","0","","0","1","Completed","[{\"productId\":100,\"heading\":\"Eldora Hackett III\",\"model\":\"EtfkfhSgZJ\",\"barcode\":98321008,\"cost\":28924,\"price\":57848,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":5,\"taxType\":\"Inclusive\",\"quantity\":\"2\",\"subtract\":0,\"image\":null,\"relatedImage\":\"\\\"\\\"\",\"showInPos\":1,\"softDelete\":0,\"storeId\":1,\"userId\":2,\"updatedBy\":2,\"insertedBy\":2,\"dateUpdated\":\"2024-04-01 16:28:04\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:30\",\"taxHeading\":\"GST 28%\",\"taxPercent\":28,\"taxExclusiveValue\":0,\"taxInclusiveValue\":12654.25,\"tax\":25308.5,\"basePriceCost\":90387.5,\"discount\":\"50%\",\"discountValue\":57848,\"extraInformation\":\"\",\"total\":115696,\"rewardPoints\":5784.8,\"profit\":-25308.5},{\"productId\":99,\"heading\":\"Angel Hills\",\"model\":\"q8qHbH3aUV\",\"barcode\":19919785,\"cost\":92186,\"price\":184372,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":4,\"taxType\":\"Exclusive\",\"quantity\":\"3\",\"subtract\":1,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"softDelete\":0,\"storeId\":1,\"userId\":2,\"updatedBy\":0,\"insertedBy\":2,\"dateUpdated\":\"2024-04-01 16:28:04\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:29\",\"taxHeading\":\"GST 18%\",\"taxPercent\":18,\"taxExclusiveValue\":33186.96,\"taxInclusiveValue\":0,\"tax\":99560.88,\"basePriceCost\":553116,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":553116,\"rewardPoints\":55311.600000000006,\"profit\":276558}]","","0","2","2","5","1","2","1","0","2","2024-04-01 16:52:19");
INSERT INTO order VALUES("4","4","1","INV-2024-","Walk In Customer","","0000000000","668812.00","124869.38","0.00","[]","null","8","Cash","","793681.00","66882","0","Delivery","finalCheckout","0","mgHM5LNpmtn1qbjukOt16DjQ6l6qcY5vynobZuDUhvQOZ3oXQZCo1cxOjEFsJGQzs3WlbWjsGEAwL124Xu24wlVifsa1JqXuoXaK2ZT9jc9LyUHjeO9ll81nNRgbRDOTV1uQtDCKolmM96BbsOjZt3y3zSIWahXIDp4Ajg5WzW4TtucQxI8wKiQSr04JOagsWK9kPRRnhBdF8hsOerWZk1BBQH42Unlf2lEAZwq6l1ZduvXCSojYtVHXhNfpRqK","0","","0","1","Completed","[{\"productId\":100,\"heading\":\"Eldora Hackett III\",\"model\":\"EtfkfhSgZJ\",\"barcode\":98321008,\"cost\":28924,\"price\":57848,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":5,\"taxType\":\"Inclusive\",\"quantity\":\"2\",\"subtract\":0,\"image\":null,\"relatedImage\":\"\\\"\\\"\",\"showInPos\":1,\"softDelete\":0,\"storeId\":1,\"userId\":2,\"updatedBy\":2,\"insertedBy\":2,\"dateUpdated\":\"2024-04-01 16:52:19\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:30\",\"taxHeading\":\"GST 28%\",\"taxPercent\":28,\"taxExclusiveValue\":0,\"taxInclusiveValue\":12654.25,\"tax\":25308.5,\"basePriceCost\":90387.5,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":115696,\"rewardPoints\":11569.6,\"profit\":32539.5},{\"productId\":99,\"heading\":\"Angel Hills\",\"model\":\"q8qHbH3aUV\",\"barcode\":19919785,\"cost\":92186,\"price\":184372,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":4,\"taxType\":\"Exclusive\",\"quantity\":\"3\",\"subtract\":1,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"softDelete\":0,\"storeId\":1,\"userId\":2,\"updatedBy\":0,\"insertedBy\":2,\"dateUpdated\":\"2024-04-01 16:52:19\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:29\",\"taxHeading\":\"GST 18%\",\"taxPercent\":18,\"taxExclusiveValue\":33186.96,\"taxInclusiveValue\":0,\"tax\":99560.88,\"basePriceCost\":553116,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":553116,\"rewardPoints\":55311.600000000006,\"profit\":276558}]","","0","2","2","5","1","2","1","0","2","2024-04-01 17:14:09");
INSERT INTO order VALUES("5","5","1","INV-2024-","Walk In Customer","","0000000000","242220.00","45841.21","0.00","[]","null","8","Cash","","288061.00","24222","0","Delivery","finalCheckout","0","vLSZ9ELuWLINo3NJXHm0RI4xXNwyZyn1lkNitu5b1UlsJwVYbBUSEKekMfjBpn5YjgSCkebrRpbNaFQcUPs0SzZPraaeRrvv2r6MRBvyJDh6JPSMJ5MUtr7DIybJOoYv5i3W4536oSgZOrQTaRtTO8jfmQdRUDauPPhbgUUC6PSaQvppbqfU6ih2BwBcjPOxBqWvQqRN5CqoQ4HLVhyWcozXxTKzuiHnnuUbYTmPsV0YBxSGiwVFRIALKSTT8i2","0","","0","1","Completed","[{\"productId\":100,\"heading\":\"Eldora Hackett III\",\"model\":\"EtfkfhSgZJ\",\"barcode\":98321008,\"cost\":28924,\"price\":57848,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":5,\"taxType\":\"Inclusive\",\"quantity\":1,\"subtract\":0,\"image\":null,\"relatedImage\":\"\\\"\\\"\",\"showInPos\":1,\"softDelete\":0,\"storeId\":1,\"userId\":2,\"updatedBy\":2,\"insertedBy\":2,\"dateUpdated\":\"2024-04-01 16:52:19\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:30\",\"taxHeading\":\"GST 28%\",\"taxPercent\":28,\"taxExclusiveValue\":0,\"taxInclusiveValue\":12654.25,\"tax\":12654.25,\"basePriceCost\":45193.75,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":57848,\"rewardPoints\":5784.8},{\"productId\":99,\"heading\":\"Angel Hills\",\"model\":\"q8qHbH3aUV\",\"barcode\":19919785,\"cost\":92186,\"price\":184372,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":4,\"taxType\":\"Exclusive\",\"quantity\":1,\"subtract\":1,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"softDelete\":0,\"storeId\":1,\"userId\":2,\"updatedBy\":0,\"insertedBy\":2,\"dateUpdated\":\"2024-04-01 16:52:19\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:29\",\"taxHeading\":\"GST 18%\",\"taxPercent\":18,\"taxExclusiveValue\":33186.96,\"taxInclusiveValue\":0,\"tax\":33186.96,\"basePriceCost\":184372,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":184372,\"rewardPoints\":18437.2}]","","0","2","2","2","1","2","1","0","2","2024-04-07 14:33:22");



DROP TABLE IF EXISTS order_history;

CREATE TABLE `order_history` (
  `orderHistoryId` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) NOT NULL,
  `orderStatusId` int(11) NOT NULL,
  `comment` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `storeId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`orderHistoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;




DROP TABLE IF EXISTS order_product;

CREATE TABLE `order_product` (
  `orderProductId` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `heading` varchar(100) NOT NULL,
  `model` varchar(20) NOT NULL,
  `barcode` int(11) NOT NULL,
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
  `extraInformation` varchar(255) NOT NULL,
  `storeId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `updatedBy` int(11) NOT NULL,
  `insertedBy` int(11) NOT NULL,
  `dateModified` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp(),
  `kotToken` varchar(255) NOT NULL,
  `sentToKot` int(1) NOT NULL DEFAULT 0,
  `kotViewed` int(1) NOT NULL DEFAULT 0,
  `kotViewedBy` int(11) NOT NULL,
  `taxInclusiveValue` float(11,2) NOT NULL,
  `taxExclusiveValue` float(11,2) NOT NULL,
  `basePriceCost` float(11,2) NOT NULL,
  `profit` float(11,2) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`orderProductId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO order_product VALUES("3","1","100","Eldora Hackett III","EtfkfhSgZJ","98321008","5","GST 28%","Inclusive","28","25308.5","2","50%","57848","5785","28924","57848","0.00","115696","","1","2","0","2","2024-04-01 15:13:06","2024-04-01 15:13:06","ekmcDKPNjSeaXx2pGJ1n3UybMTMlU66H4rnsJqcg1k0XlVD3uScuMwOUdq8R4hDAWf87UtZsnJXehD2jJEciaVptdvHTnl2AhHsU8ekhChXEJ2KG4Np2KhYUSNKwkeROdUYXOO0oJN2kgIIGDaXkYyNHSeKet0FzO69gbL6FXYF7KppflAp4R6XZ2fylcE6lFqEPjRodxZnh2yppK78kcWRCuNBWU7q5l2l1SYWBeG99VKeVRDigxz9NL5J4ZSB","0","0","0","12654.25","0.00","90387.50","-25308.50","1");
INSERT INTO order_product VALUES("4","1","99","Angel Hills","q8qHbH3aUV","19919785","4","GST 18%","Exclusive","18","99560.88","3","0","0","55312","92186","184372","0.00","553116","","1","2","0","2","2024-04-01 15:13:07","2024-04-01 15:13:07","ekmcDKPNjSeaXx2pGJ1n3UybMTMlU66H4rnsJqcg1k0XlVD3uScuMwOUdq8R4hDAWf87UtZsnJXehD2jJEciaVptdvHTnl2AhHsU8ekhChXEJ2KG4Np2KhYUSNKwkeROdUYXOO0oJN2kgIIGDaXkYyNHSeKet0FzO69gbL6FXYF7KppflAp4R6XZ2fylcE6lFqEPjRodxZnh2yppK78kcWRCuNBWU7q5l2l1SYWBeG99VKeVRDigxz9NL5J4ZSB","0","0","0","0.00","33186.96","553116.00","276558.00","1");
INSERT INTO order_product VALUES("5","2","100","Eldora Hackett III","EtfkfhSgZJ","98321008","5","GST 28%","Inclusive","28","25308.5","2","0","0","11570","28924","57848","0.00","115696","","1","2","0","2","2024-04-01 16:28:05","2024-04-01 16:28:05","NfpDtaK3YjNTSWiNZ5ox9GuOhUTRbtdO3NQH3URKBNmuGVH3kVNadnD4IW3h9Zu6Hor9xLNP0y1wfMlcQjn7rvg0cYvuHMQumtRtfb254YjNWDY8f913nUCLcbTAg8RPDt4OFEjZpVlr7Vx2z1ynvc8UPH7OvNVtV8FpSrHzfihnU1bHxzb2SMISnS6fsi2OWOsHSOKbihHM2NgVjh7pAEozGtVPQbKxCzieZq9TGSZT4ULXsfKsOH07rgVEMWJ","0","0","0","12654.25","0.00","90387.50","32539.50","1");
INSERT INTO order_product VALUES("6","2","99","Angel Hills","q8qHbH3aUV","19919785","4","GST 18%","Exclusive","18","99560.88","3","0","0","55312","92186","184372","0.00","553116","","1","2","0","2","2024-04-01 16:28:05","2024-04-01 16:28:05","NfpDtaK3YjNTSWiNZ5ox9GuOhUTRbtdO3NQH3URKBNmuGVH3kVNadnD4IW3h9Zu6Hor9xLNP0y1wfMlcQjn7rvg0cYvuHMQumtRtfb254YjNWDY8f913nUCLcbTAg8RPDt4OFEjZpVlr7Vx2z1ynvc8UPH7OvNVtV8FpSrHzfihnU1bHxzb2SMISnS6fsi2OWOsHSOKbihHM2NgVjh7pAEozGtVPQbKxCzieZq9TGSZT4ULXsfKsOH07rgVEMWJ","0","0","0","0.00","33186.96","553116.00","276558.00","1");
INSERT INTO order_product VALUES("7","3","100","Eldora Hackett III","EtfkfhSgZJ","98321008","5","GST 28%","Inclusive","28","25308.5","2","50%","57848","5785","28924","57848","0.00","115696","","1","2","0","2","2024-04-01 16:52:20","2024-04-01 16:52:20","NPTvZ2PLJjTrtNYzHmM5twYNDOYWmeHJXoQStC6BYhb6oNZl9etqkcW5TFy08X0hAjrRLukMF0bLcVHX5We3BnI6P8Y2x8Gkw3L8EY9eOlB5l5gg6dfoFrHgRmS8FxjWEHl0D4IJbT77W11CfMrbxdfVgv2ewSqPn9kxOE0Pb0PHnbdGwmKl2nFHRjjXd96zndUPNpfyG5Fe9dlsPR8HPQygOw6kwLHFeAeVOrFyR4pOV8eN48RUaEG69zFsVCG","0","0","0","12654.25","0.00","90387.50","-25308.50","1");
INSERT INTO order_product VALUES("8","3","99","Angel Hills","q8qHbH3aUV","19919785","4","GST 18%","Exclusive","18","99560.88","3","0","0","55312","92186","184372","0.00","553116","","1","2","0","2","2024-04-01 16:52:20","2024-04-01 16:52:20","NPTvZ2PLJjTrtNYzHmM5twYNDOYWmeHJXoQStC6BYhb6oNZl9etqkcW5TFy08X0hAjrRLukMF0bLcVHX5We3BnI6P8Y2x8Gkw3L8EY9eOlB5l5gg6dfoFrHgRmS8FxjWEHl0D4IJbT77W11CfMrbxdfVgv2ewSqPn9kxOE0Pb0PHnbdGwmKl2nFHRjjXd96zndUPNpfyG5Fe9dlsPR8HPQygOw6kwLHFeAeVOrFyR4pOV8eN48RUaEG69zFsVCG","0","0","0","0.00","33186.96","553116.00","276558.00","1");
INSERT INTO order_product VALUES("9","4","100","Eldora Hackett III","EtfkfhSgZJ","98321008","5","GST 28%","Inclusive","28","25308.5","2","0","0","11570","28924","57848","0.00","115696","","1","2","0","2","2024-04-01 17:14:10","2024-04-01 17:14:10","mgHM5LNpmtn1qbjukOt16DjQ6l6qcY5vynobZuDUhvQOZ3oXQZCo1cxOjEFsJGQzs3WlbWjsGEAwL124Xu24wlVifsa1JqXuoXaK2ZT9jc9LyUHjeO9ll81nNRgbRDOTV1uQtDCKolmM96BbsOjZt3y3zSIWahXIDp4Ajg5WzW4TtucQxI8wKiQSr04JOagsWK9kPRRnhBdF8hsOerWZk1BBQH42Unlf2lEAZwq6l1ZduvXCSojYtVHXhNfpRqK","0","0","0","12654.25","0.00","90387.50","32539.50","1");
INSERT INTO order_product VALUES("10","4","99","Angel Hills","q8qHbH3aUV","19919785","4","GST 18%","Exclusive","18","99560.88","3","0","0","55312","92186","184372","0.00","553116","","1","2","0","2","2024-04-01 17:14:10","2024-04-01 17:14:10","mgHM5LNpmtn1qbjukOt16DjQ6l6qcY5vynobZuDUhvQOZ3oXQZCo1cxOjEFsJGQzs3WlbWjsGEAwL124Xu24wlVifsa1JqXuoXaK2ZT9jc9LyUHjeO9ll81nNRgbRDOTV1uQtDCKolmM96BbsOjZt3y3zSIWahXIDp4Ajg5WzW4TtucQxI8wKiQSr04JOagsWK9kPRRnhBdF8hsOerWZk1BBQH42Unlf2lEAZwq6l1ZduvXCSojYtVHXhNfpRqK","0","0","0","0.00","33186.96","553116.00","276558.00","1");
INSERT INTO order_product VALUES("11","5","100","Eldora Hackett III","EtfkfhSgZJ","98321008","5","GST 28%","Inclusive","28","12654.25","1","0","0","5785","28924","57848","0.00","57848","","1","2","0","2","2024-04-07 14:33:22","2024-04-07 14:33:22","vLSZ9ELuWLINo3NJXHm0RI4xXNwyZyn1lkNitu5b1UlsJwVYbBUSEKekMfjBpn5YjgSCkebrRpbNaFQcUPs0SzZPraaeRrvv2r6MRBvyJDh6JPSMJ5MUtr7DIybJOoYv5i3W4536oSgZOrQTaRtTO8jfmQdRUDauPPhbgUUC6PSaQvppbqfU6ih2BwBcjPOxBqWvQqRN5CqoQ4HLVhyWcozXxTKzuiHnnuUbYTmPsV0YBxSGiwVFRIALKSTT8i2","0","0","0","12654.25","0.00","45193.75","16269.75","1");
INSERT INTO order_product VALUES("12","5","99","Angel Hills","q8qHbH3aUV","19919785","4","GST 18%","Exclusive","18","33186.96","1","0","0","18437","92186","184372","0.00","184372","","1","2","0","2","2024-04-07 14:33:23","2024-04-07 14:33:23","vLSZ9ELuWLINo3NJXHm0RI4xXNwyZyn1lkNitu5b1UlsJwVYbBUSEKekMfjBpn5YjgSCkebrRpbNaFQcUPs0SzZPraaeRrvv2r6MRBvyJDh6JPSMJ5MUtr7DIybJOoYv5i3W4536oSgZOrQTaRtTO8jfmQdRUDauPPhbgUUC6PSaQvppbqfU6ih2BwBcjPOxBqWvQqRN5CqoQ4HLVhyWcozXxTKzuiHnnuUbYTmPsV0YBxSGiwVFRIALKSTT8i2","0","0","0","0.00","33186.96","184372.00","92186.00","1");



DROP TABLE IF EXISTS order_status;

CREATE TABLE `order_status` (
  `orderStatusId` int(11) NOT NULL AUTO_INCREMENT,
  `heading` varchar(20) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`orderStatusId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO order_status VALUES("1","Completed","1");
INSERT INTO order_status VALUES("2","Running/Hold","1");
INSERT INTO order_status VALUES("3","Cancelled","1");
INSERT INTO order_status VALUES("4","Delivered","1");



DROP TABLE IF EXISTS order_total;

CREATE TABLE `order_total` (
  `orderTotalId` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) NOT NULL,
  `orderTotal` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`orderTotalId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO order_total VALUES("1","1","{\"totalItemsInCart\":2,\"totalQuantityInCart\":5,\"subTotal\":668812,\"tax\":124869.38,\"productDiscount\":115696,\"additionalCharges\":\"[]\",\"rewardEarned\":61097,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":677985}","1");
INSERT INTO order_total VALUES("2","2","{\"totalItemsInCart\":2,\"totalQuantityInCart\":5,\"subTotal\":668812,\"tax\":124869.38,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":66882,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":793681}","1");
INSERT INTO order_total VALUES("3","3","{\"totalItemsInCart\":2,\"totalQuantityInCart\":5,\"subTotal\":668812,\"tax\":124869.38,\"productDiscount\":115696,\"additionalCharges\":\"[]\",\"rewardEarned\":61097,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":677985}","1");
INSERT INTO order_total VALUES("4","4","{\"totalItemsInCart\":2,\"totalQuantityInCart\":5,\"subTotal\":668812,\"tax\":124869.38,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":66882,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":793681}","1");
INSERT INTO order_total VALUES("5","5","{\"totalItemsInCart\":2,\"totalQuantityInCart\":2,\"subTotal\":242220,\"tax\":45841.21,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":24222,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":288061}","1");



DROP TABLE IF EXISTS pages;

CREATE TABLE `pages` (
  `pageId` int(11) NOT NULL AUTO_INCREMENT,
  `heading` varchar(255) NOT NULL,
  `seo` varchar(255) NOT NULL,
  `metaTitle` varchar(255) NOT NULL,
  `metaKeyword` varchar(255) NOT NULL,
  `metaDescription` varchar(255) NOT NULL,
  `shortDescription` text NOT NULL,
  `description` mediumtext NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`pageId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO pages VALUES("1","Terms & conditions","terms--conditions","Term Of Use","Term Of Use","Term Of Use","<h2>&nbsp;</h2>

<h2>Definition and Usage</h2>

<p>The str_replace() function replaces some characters with some other characters in a string.</p>

<p>This function works by the following rules:</p>

<p>{{$controller::moduleShortCode(14)}}</p>

<ul>
	<li>If the string to be searched is an array, it returns an array</li>
	<li>If the string to be searched is an array, find and replace is performed with every array element</li>
	<li>If both find and replace are arrays, and replace has fewer elements than find, an empty string will be used as replace</li>
	<li>If find is an array and replace is a string, the replace string will be used for every find value</li>
</ul>

<p><b>Note:&nbsp;</b>This function is case-sensitive. Use the&nbsp;<a href=\"https://www.w3schools.com/php/func_string_str_ireplace.asp\">str_ireplace()</a>&nbsp;function to perform a case-insensitive search.</p>

<p><b>Note:&nbsp;</b>This function is binary-safe.</p>

<p>{{$controller::moduleShortCode(13)}}</p>
","<p>Term Of Use</p>
","public/assets/uploads/484219044.jpg","1");



DROP TABLE IF EXISTS payments;

CREATE TABLE `payments` (
  `paymentId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `sortOrder` int(11) NOT NULL,
  `softDelete` int(1) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`paymentId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO payments VALUES("1","Credit","7","0","1");
INSERT INTO payments VALUES("2","Multiple","5","0","1");
INSERT INTO payments VALUES("3","Return","6","0","1");
INSERT INTO payments VALUES("4","Debit Card","1","0","1");
INSERT INTO payments VALUES("5","Credit Card","2","0","1");
INSERT INTO payments VALUES("6","Paytm","3","0","1");
INSERT INTO payments VALUES("7","UPI","4","0","1");
INSERT INTO payments VALUES("8","Cash","0","0","1");
INSERT INTO payments VALUES("9","Wallet","8","0","1");



DROP TABLE IF EXISTS personal_access_tokens;

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS products;

CREATE TABLE `products` (
  `productId` int(11) NOT NULL AUTO_INCREMENT,
  `heading` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `barcode` int(11) NOT NULL,
  `cost` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `percent` float(11,2) NOT NULL,
  `manufacturerId` int(11) NOT NULL DEFAULT 0,
  `categoryId` int(11) NOT NULL DEFAULT 0,
  `vendorId` int(11) NOT NULL DEFAULT 0,
  `unitId` int(11) NOT NULL DEFAULT 0,
  `taxId` int(11) NOT NULL DEFAULT 0,
  `taxType` varchar(20) NOT NULL DEFAULT 'Exclusive',
  `quantity` int(1) NOT NULL DEFAULT 0,
  `subtract` int(1) NOT NULL DEFAULT 1,
  `image` varchar(255) DEFAULT NULL,
  `relatedImage` text NOT NULL,
  `showInPos` int(1) NOT NULL DEFAULT 1,
  `softDelete` int(1) NOT NULL DEFAULT 0,
  `storeId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `updatedBy` int(11) NOT NULL,
  `insertedBy` int(11) NOT NULL,
  `dateUpdated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` int(1) NOT NULL DEFAULT 1,
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`productId`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO products VALUES("1","Mrs. Kiara Terry V","H3x4hrTsyz","75927996","54689","109378","0.00","0","0","0","0","1","Exclusive","37","1","","","1","0","1","2","0","2","2024-03-31 10:56:10","1","2024-03-31 16:26:10");
INSERT INTO products VALUES("2","Oscar Quitzon","NyynIlInx8","90188470","58016","116032","0.00","0","0","0","0","4","Exclusive","34","1","","","1","0","1","2","0","2","2024-03-31 10:56:10","1","2024-03-31 16:26:10");
INSERT INTO products VALUES("3","Sandra Quigley","6EyDYMD3pg","19700880","73039","146078","0.00","0","0","0","0","1","Exclusive","40","1","","","1","0","1","2","0","2","2024-03-31 10:56:11","1","2024-03-31 16:26:11");
INSERT INTO products VALUES("4","Camren Murray","dOeXtkoZOO","82528466","20089","40178","0.00","0","0","0","0","2","Exclusive","64","1","","","1","0","1","2","0","2","2024-03-31 10:56:11","1","2024-03-31 16:26:11");
INSERT INTO products VALUES("5","Connie Hagenes","CrA5qgIR8G","89971679","55769","111538","0.00","0","0","0","0","1","Exclusive","22","1","","","1","0","1","2","0","2","2024-03-31 10:56:11","1","2024-03-31 16:26:11");
INSERT INTO products VALUES("6","Jacey Sporer","3w4LPRirQc","59981534","99152","198304","0.00","0","0","0","0","4","Exclusive","51","1","","","1","0","1","2","0","2","2024-03-31 10:56:11","1","2024-03-31 16:26:11");
INSERT INTO products VALUES("7","Ms. Eldora Stehr","GqSDRV2xlA","45972043","62399","124798","0.00","0","0","0","0","1","Exclusive","79","1","","","1","0","1","2","0","2","2024-03-31 10:56:11","1","2024-03-31 16:26:11");
INSERT INTO products VALUES("8","Dr. Laurel Goyette","gm2mUyq4vV","26471494","74194","148388","0.00","0","0","0","0","5","Exclusive","86","1","","","1","0","1","2","0","2","2024-03-31 10:56:12","1","2024-03-31 16:26:12");
INSERT INTO products VALUES("9","Julie Deckow","Np9R8trWl5","15887785","72087","144174","0.00","0","0","0","0","2","Exclusive","54","1","","","1","0","1","2","0","2","2024-03-31 10:56:12","1","2024-03-31 16:26:12");
INSERT INTO products VALUES("10","Margarette Frami","2GwyuRXZgo","87915669","77011","154022","0.00","0","0","0","0","4","Exclusive","86","1","","","1","0","1","2","0","2","2024-03-31 10:56:12","1","2024-03-31 16:26:12");
INSERT INTO products VALUES("11","Alene Cummings","ZemyGhf1GB","43466861","51039","102078","0.00","0","0","0","0","4","Exclusive","15","1","","","1","0","1","2","0","2","2024-03-31 10:56:12","1","2024-03-31 16:26:12");
INSERT INTO products VALUES("12","Vena Wilkinson","WTxmUYcZrl","31599466","84148","168296","0.00","0","0","0","0","4","Exclusive","90","1","","","1","0","1","2","0","2","2024-03-31 10:56:12","1","2024-03-31 16:26:12");
INSERT INTO products VALUES("13","Jasen Wuckert","vmEdULa7WN","20592623","95222","190444","0.00","0","0","0","0","5","Exclusive","47","1","","","1","0","1","2","0","2","2024-03-31 10:56:13","1","2024-03-31 16:26:13");
INSERT INTO products VALUES("14","Rex Lehner","Q4cK7F2FWU","59490595","51833","103666","0.00","0","0","0","0","4","Exclusive","76","1","","","1","0","1","2","0","2","2024-03-31 10:56:13","1","2024-03-31 16:26:13");
INSERT INTO products VALUES("15","Ms. Alysson Thompson PhD","YO1rEK9TFB","94786476","51943","103886","0.00","0","0","0","0","2","Exclusive","42","1","","","1","0","1","2","0","2","2024-03-31 10:56:13","1","2024-03-31 16:26:13");
INSERT INTO products VALUES("16","Shannon Williamson","IUyndzd6Uf","37114935","26979","53958","0.00","0","0","0","0","1","Exclusive","42","1","","","1","0","1","2","0","2","2024-03-31 10:56:13","1","2024-03-31 16:26:13");
INSERT INTO products VALUES("17","Tavares Kris","sm9sKi5xcX","40274330","36166","72332","0.00","0","0","0","0","3","Exclusive","22","1","","","1","0","1","2","0","2","2024-03-31 10:56:13","1","2024-03-31 16:26:13");
INSERT INTO products VALUES("18","Dominic Huels","NqCpDCxFHG","13752380","33633","67266","0.00","0","0","0","0","4","Exclusive","59","1","","","1","0","1","2","0","2","2024-03-31 10:56:13","1","2024-03-31 16:26:14");
INSERT INTO products VALUES("19","Rashawn Abbott","gbunjAghF2","83624681","49993","99986","0.00","0","0","0","0","3","Exclusive","68","1","","","1","0","1","2","0","2","2024-03-31 10:56:14","1","2024-03-31 16:26:14");
INSERT INTO products VALUES("20","Prof. Dawson Schmeler III","7LyYSB5vyq","18734193","19302","38604","0.00","0","0","0","0","5","Exclusive","34","1","","","1","0","1","2","0","2","2024-03-31 10:56:14","1","2024-03-31 16:26:14");
INSERT INTO products VALUES("21","Judson Ankunding I","bGcGZswCPm","71837871","21060","42120","0.00","0","0","0","0","1","Exclusive","95","1","","","1","0","1","2","0","2","2024-03-31 10:56:14","1","2024-03-31 16:26:14");
INSERT INTO products VALUES("22","Aric Schinner","mvDjp8D7gf","18037857","44498","88996","0.00","0","0","0","0","2","Exclusive","87","1","","","1","0","1","2","0","2","2024-03-31 10:56:14","1","2024-03-31 16:26:14");
INSERT INTO products VALUES("23","Prof. Taylor Bayer DDS","F6mAvzpysj","52007728","40504","81008","0.00","0","0","0","0","5","Exclusive","75","1","","","1","0","1","2","0","2","2024-03-31 10:56:14","1","2024-03-31 16:26:14");
INSERT INTO products VALUES("24","Dr. Manuel Cartwright","P3EG2sZ1pP","46575751","59031","118062","0.00","0","0","0","0","1","Exclusive","17","1","","","1","0","1","2","0","2","2024-03-31 10:56:14","1","2024-03-31 16:26:15");
INSERT INTO products VALUES("25","Dr. Garnet Weber","JLNbAZyzKs","44415819","73650","147300","0.00","0","0","0","0","2","Exclusive","41","1","","","1","0","1","2","0","2","2024-03-31 10:56:15","1","2024-03-31 16:26:15");
INSERT INTO products VALUES("26","Kenyon Zemlak","wV73ywHM7R","86466874","37207","74414","0.00","0","0","0","0","4","Exclusive","46","1","","","1","0","1","2","0","2","2024-03-31 10:56:15","1","2024-03-31 16:26:15");
INSERT INTO products VALUES("27","Alexandro Baumbach","5wijfL7GBn","45004320","74514","149028","0.00","0","0","0","0","4","Exclusive","19","1","","","1","0","1","2","0","2","2024-03-31 10:56:15","1","2024-03-31 16:26:15");
INSERT INTO products VALUES("28","Gerhard Mueller","zNMAmVzN01","21437782","24253","48506","0.00","0","0","0","0","2","Exclusive","76","1","","","1","0","1","2","0","2","2024-03-31 10:56:15","1","2024-03-31 16:26:15");
INSERT INTO products VALUES("29","Destini Paucek","Davvp3mUTX","32675878","82993","165986","0.00","0","0","0","0","6","Exclusive","83","1","","","1","0","1","2","0","2","2024-03-31 10:56:15","1","2024-03-31 16:26:15");
INSERT INTO products VALUES("30","Hassie Tremblay III","qUCmvEcS0J","28790554","19650","39300","0.00","0","0","0","0","1","Exclusive","77","1","","","1","0","1","2","0","2","2024-03-31 10:56:16","1","2024-03-31 16:26:16");
INSERT INTO products VALUES("31","Pedro Greenfelder","b5dXiuiiBC","97222801","88737","177474","0.00","0","0","0","0","1","Exclusive","15","1","","","1","0","1","2","0","2","2024-03-31 10:56:16","1","2024-03-31 16:26:16");
INSERT INTO products VALUES("32","Jayne Flatley","8Il3iAihX5","86408733","26005","52010","0.00","0","0","0","0","4","Exclusive","75","1","","","1","0","1","2","0","2","2024-03-31 10:56:16","1","2024-03-31 16:26:16");
INSERT INTO products VALUES("33","Leonor Conroy","zDQlYul91r","75459366","35468","70936","0.00","0","0","0","0","1","Exclusive","17","1","","","1","0","1","2","0","2","2024-03-31 10:56:16","1","2024-03-31 16:26:16");
INSERT INTO products VALUES("34","Prof. Bartholome Altenwerth","wwOrzczK0a","82980324","43648","87296","0.00","0","0","0","0","4","Exclusive","90","1","","","1","0","1","2","0","2","2024-03-31 10:56:16","1","2024-03-31 16:26:16");
INSERT INTO products VALUES("35","Clay Prosacco","ClCy2qug3y","42856274","13303","26606","0.00","0","0","0","0","5","Exclusive","18","1","","","1","0","1","2","0","2","2024-03-31 10:56:16","1","2024-03-31 16:26:16");
INSERT INTO products VALUES("36","Assunta Heller IV","iTjViRkzis","31712293","95864","191728","0.00","0","0","0","0","3","Exclusive","38","1","","","1","0","1","2","0","2","2024-03-31 10:56:17","1","2024-03-31 16:26:17");
INSERT INTO products VALUES("37","Walker Buckridge","VBZ35s3RXi","37889386","88520","177040","0.00","0","0","0","0","1","Exclusive","28","1","","","1","0","1","2","0","2","2024-03-31 10:56:17","1","2024-03-31 16:26:17");
INSERT INTO products VALUES("38","Mr. Donato McClure II","EE1J5lkjKx","92166634","32796","65592","0.00","0","0","0","0","1","Exclusive","15","1","","","1","0","1","2","0","2","2024-03-31 10:56:17","1","2024-03-31 16:26:17");
INSERT INTO products VALUES("39","Petra Sawayn","HlV4Up9b4w","56139865","62555","125110","0.00","0","0","0","0","3","Exclusive","34","1","","","1","0","1","2","0","2","2024-03-31 10:56:17","1","2024-03-31 16:26:17");
INSERT INTO products VALUES("40","Ibrahim Koss","o9goCd5p1G","91896284","12019","24038","0.00","0","0","0","0","1","Exclusive","87","1","","","1","0","1","2","0","2","2024-03-31 10:56:17","1","2024-03-31 16:26:17");
INSERT INTO products VALUES("41","Danial Yost","Zl2V62FiUb","76937111","28428","56856","0.00","0","0","0","0","6","Exclusive","56","1","","","1","0","1","2","0","2","2024-03-31 10:56:17","1","2024-03-31 16:26:18");
INSERT INTO products VALUES("42","Prof. Alysha Wisozk","n6zhAHvQKe","51807323","59300","118600","0.00","0","0","0","0","3","Exclusive","93","1","","","1","0","1","2","0","2","2024-03-31 10:56:18","1","2024-03-31 16:26:18");
INSERT INTO products VALUES("43","Isom McGlynn Sr.","2vOznkvLti","66415470","23057","46114","0.00","0","0","0","0","6","Exclusive","71","1","","","1","0","1","2","0","2","2024-03-31 10:56:18","1","2024-03-31 16:26:18");
INSERT INTO products VALUES("44","Martine McClure","34aglzTeaY","91652201","66576","133152","0.00","0","0","0","0","5","Exclusive","73","1","","","1","0","1","2","0","2","2024-03-31 10:56:18","1","2024-03-31 16:26:18");
INSERT INTO products VALUES("45","Furman Boyle","6Dst5yL3mP","30724157","31947","63894","0.00","0","0","0","0","5","Exclusive","15","1","","","1","0","1","2","0","2","2024-03-31 10:56:18","1","2024-03-31 16:26:18");
INSERT INTO products VALUES("46","Dr. Dagmar Bahringer PhD","oxpcRwQzIF","80814465","71243","142486","0.00","0","0","0","0","3","Exclusive","12","1","","","1","0","1","2","0","2","2024-03-31 10:56:19","1","2024-03-31 16:26:19");
INSERT INTO products VALUES("47","Kale Sauer","7Xk9ie4k7D","61734311","16248","32496","0.00","0","0","0","0","3","Exclusive","52","1","","","1","0","1","2","0","2","2024-03-31 10:56:19","1","2024-03-31 16:26:19");
INSERT INTO products VALUES("48","Felipa Nolan","A7e77n6wqz","51930282","76073","152146","0.00","0","0","0","0","5","Exclusive","28","1","","","1","0","1","2","0","2","2024-03-31 10:56:19","1","2024-03-31 16:26:19");
INSERT INTO products VALUES("49","Rachelle O\'Conner","ECf8umrx0R","14689212","76407","152814","0.00","0","0","0","0","1","Exclusive","19","1","","","1","0","1","2","0","2","2024-03-31 10:56:19","1","2024-03-31 16:26:19");
INSERT INTO products VALUES("50","Ms. Eve O\'Hara","NizFLdPts5","15431119","40725","81450","0.00","0","0","0","0","5","Exclusive","24","1","","","1","0","1","2","0","2","2024-03-31 10:56:20","1","2024-03-31 16:26:20");
INSERT INTO products VALUES("51","Prof. Kailey Bailey DDS","kbWvpgwtZX","22271066","82096","164192","0.00","0","0","0","0","4","Exclusive","49","1","","","1","0","1","2","0","2","2024-03-31 10:56:20","1","2024-03-31 16:26:20");
INSERT INTO products VALUES("52","Jamil Barrows","tSLVUjlPpP","52227351","99569","199138","0.00","0","0","0","0","4","Exclusive","31","1","","","1","0","1","2","0","2","2024-03-31 10:56:20","1","2024-03-31 16:26:20");
INSERT INTO products VALUES("53","Alberto Feeney","DfOYGQK3O5","79066005","97784","195568","0.00","0","0","0","0","2","Exclusive","93","1","","","1","0","1","2","0","2","2024-03-31 10:56:20","1","2024-03-31 16:26:20");
INSERT INTO products VALUES("54","Mr. Travis Kovacek Sr.","3PrY7722i3","14081152","29404","58808","0.00","0","0","0","0","1","Exclusive","20","1","","","1","0","1","2","0","2","2024-03-31 10:56:20","1","2024-03-31 16:26:20");
INSERT INTO products VALUES("55","Heidi Steuber","KqqV4eQDEn","20287219","65701","131402","0.00","0","0","0","0","6","Exclusive","34","1","","","1","0","1","2","0","2","2024-03-31 10:56:20","1","2024-03-31 16:26:21");
INSERT INTO products VALUES("56","Destinee Zulauf","ptBnPojWc4","90874461","97358","194716","0.00","0","0","0","0","2","Exclusive","49","1","","","1","0","1","2","0","2","2024-03-31 10:56:21","1","2024-03-31 16:26:21");
INSERT INTO products VALUES("57","Lea Pfannerstill","GIdQR0VFEQ","59098820","85399","170798","0.00","0","0","0","0","1","Exclusive","57","1","","","1","0","1","2","0","2","2024-03-31 10:56:21","1","2024-03-31 16:26:21");
INSERT INTO products VALUES("58","Coralie Ullrich","9uifoxxjUt","61911501","21269","42538","0.00","0","0","0","0","1","Exclusive","56","1","","","1","0","1","2","0","2","2024-03-31 10:56:21","1","2024-03-31 16:26:21");
INSERT INTO products VALUES("59","Dr. Kevon Frami MD","cWOqCz35KO","29488801","52979","105958","0.00","0","0","0","0","6","Exclusive","73","1","","","1","0","1","2","0","2","2024-03-31 10:56:21","1","2024-03-31 16:26:21");
INSERT INTO products VALUES("60","Naomie Hill Sr.","rVyQUcJqcW","43210110","87848","175696","0.00","0","0","0","0","6","Exclusive","92","1","","","1","0","1","2","0","2","2024-03-31 10:56:21","1","2024-03-31 16:26:21");
INSERT INTO products VALUES("61","Billie Gutkowski","4SuGA8MbbD","50342040","79446","158892","0.00","0","0","0","0","6","Exclusive","56","1","","","1","0","1","2","0","2","2024-03-31 10:56:22","1","2024-03-31 16:26:22");
INSERT INTO products VALUES("62","Buck Howe","6XWzkOlMKI","49180812","31513","63026","0.00","0","0","0","0","5","Exclusive","33","1","","","1","0","1","2","0","2","2024-03-31 10:56:22","1","2024-03-31 16:26:22");
INSERT INTO products VALUES("63","Alana Nitzsche","foNozRRG52","58162953","38579","77158","0.00","0","0","0","0","1","Exclusive","45","1","","","1","0","1","2","0","2","2024-03-31 10:56:22","1","2024-03-31 16:26:22");
INSERT INTO products VALUES("64","Adrain Schmitt MD","QRMDLfig7O","30768930","96385","192770","0.00","0","0","0","0","4","Exclusive","66","1","","","1","0","1","2","0","2","2024-03-31 10:56:22","1","2024-03-31 16:26:22");
INSERT INTO products VALUES("65","Lillie Muller","8xZW95nc5M","44944936","67358","134716","0.00","0","0","0","0","2","Exclusive","53","1","","","1","0","1","2","0","2","2024-03-31 10:56:22","1","2024-03-31 16:26:22");
INSERT INTO products VALUES("66","Cathy Kutch","9K4ffs6pAU","15395725","35745","71490","0.00","0","0","0","0","6","Exclusive","35","1","","","1","0","1","2","0","2","2024-03-31 10:56:22","1","2024-03-31 16:26:23");
INSERT INTO products VALUES("67","Peggie Raynor","3zsPIwfw36","72466524","74660","149320","0.00","0","0","0","0","6","Exclusive","22","1","","","1","0","1","2","0","2","2024-03-31 10:56:23","1","2024-03-31 16:26:23");
INSERT INTO products VALUES("68","Deron Windler","86TaS7B3eQ","36462366","15716","31432","0.00","0","0","0","0","1","Exclusive","92","1","","","1","0","1","2","0","2","2024-03-31 10:56:23","1","2024-03-31 16:26:23");
INSERT INTO products VALUES("69","Rhianna Kovacek","bQMBgtImdm","90981422","13157","26314","0.00","0","0","0","0","2","Exclusive","79","1","","","1","0","1","2","0","2","2024-03-31 10:56:23","1","2024-03-31 16:26:23");
INSERT INTO products VALUES("70","Annabel Hickle","o8jqdXuYuY","98321007","75377","150754","0.00","0","0","0","0","5","Exclusive","32","1","","","1","0","1","2","0","2","2024-03-31 10:56:23","1","2024-03-31 16:26:23");
INSERT INTO products VALUES("71","Wilfredo Hyatt","8l0tTWlCIK","20037374","44292","88584","0.00","0","0","0","0","4","Exclusive","96","1","","","1","0","1","2","0","2","2024-03-31 10:56:23","1","2024-03-31 16:26:24");
INSERT INTO products VALUES("72","Maryjane Dooley","YJpvDYx5s6","52662065","96056","192112","0.00","0","0","0","0","1","Exclusive","61","1","","","1","0","1","2","0","2","2024-03-31 10:56:24","1","2024-03-31 16:26:24");
INSERT INTO products VALUES("73","Nayeli Raynor","PdHY8J7k1d","54642262","80406","160812","0.00","0","0","0","0","1","Exclusive","34","1","","","1","0","1","2","0","2","2024-03-31 10:56:24","1","2024-03-31 16:26:24");
INSERT INTO products VALUES("74","Dustin Wehner","1oenpoNjFc","80492721","18379","36758","0.00","0","0","0","0","6","Exclusive","51","1","","","1","0","1","2","0","2","2024-03-31 10:56:24","1","2024-03-31 16:26:24");
INSERT INTO products VALUES("75","Malika Bogan","fmG1yH2KgZ","92343230","58382","116764","0.00","0","0","0","0","6","Exclusive","87","1","","","1","0","1","2","0","2","2024-03-31 10:56:24","1","2024-03-31 16:26:24");
INSERT INTO products VALUES("76","Bobby Jast","ie40ESV2zg","30378500","94767","189534","0.00","0","0","0","0","4","Exclusive","33","1","","","1","0","1","2","0","2","2024-03-31 10:56:25","1","2024-03-31 16:26:25");
INSERT INTO products VALUES("77","Dr. Theron Yost II","P6cn7vsmUo","63585421","74557","149114","0.00","0","0","0","0","1","Exclusive","74","1","","","1","0","1","2","0","2","2024-03-31 10:56:25","1","2024-03-31 16:26:25");
INSERT INTO products VALUES("78","Dr. Kenna Cremin IV","HEHTkTH3Px","78050597","99784","199568","0.00","0","0","0","0","3","Exclusive","84","1","","","1","0","1","2","0","2","2024-03-31 10:56:25","1","2024-03-31 16:26:25");
INSERT INTO products VALUES("79","Micheal Kerluke IV","RgYwH1hWdg","32484560","29439","58878","0.00","0","0","0","0","3","Exclusive","23","1","","","1","0","1","2","0","2","2024-03-31 10:56:25","1","2024-03-31 16:26:25");
INSERT INTO products VALUES("80","Justus Stroman MD","stvHd5Syx2","41524268","62716","125432","0.00","0","0","0","0","6","Exclusive","50","1","","","1","0","1","2","0","2","2024-03-31 10:56:26","1","2024-03-31 16:26:26");
INSERT INTO products VALUES("81","Alicia Mosciski","F1wxRsSMiA","14980483","48415","96830","0.00","0","0","0","0","4","Exclusive","84","1","","","1","0","1","2","0","2","2024-03-31 10:56:26","1","2024-03-31 16:26:26");
INSERT INTO products VALUES("82","Watson Koelpin","WTOrKk97ka","72308943","30512","61024","0.00","0","0","0","0","6","Exclusive","28","1","","","1","0","1","2","0","2","2024-03-31 10:56:26","1","2024-03-31 16:26:26");
INSERT INTO products VALUES("83","Dr. Maximus O\'Kon","VctMlkKVZd","44309514","36622","73244","0.00","0","0","0","0","1","Exclusive","38","1","","","1","0","1","2","0","2","2024-03-31 10:56:26","1","2024-03-31 16:26:26");
INSERT INTO products VALUES("84","Miss Alexandra Schumm DDS","9m4wihFuGj","18172731","85629","171258","0.00","0","0","0","0","5","Exclusive","60","1","","","1","0","1","2","0","2","2024-03-31 10:56:26","1","2024-03-31 16:26:26");
INSERT INTO products VALUES("85","Mrs. Coralie Deckow","tmkCH2UbOZ","56941793","98488","196976","0.00","0","0","0","0","3","Exclusive","66","1","","","1","0","1","2","0","2","2024-03-31 10:56:26","1","2024-03-31 16:26:27");
INSERT INTO products VALUES("86","Dr. Nils O\'Hara","uGC5nj5wFD","63589949","31887","63774","0.00","0","0","0","0","3","Exclusive","30","1","","","1","0","1","2","0","2","2024-03-31 10:56:27","1","2024-03-31 16:26:27");
INSERT INTO products VALUES("87","Dr. Leanna O\'Conner","glHBtmrjm1","80244841","86668","173336","0.00","0","0","0","0","2","Exclusive","72","1","","","1","0","1","2","0","2","2024-03-31 10:56:27","1","2024-03-31 16:26:27");
INSERT INTO products VALUES("88","Lily Friesen","EblwIOsmA0","78163971","35556","71112","0.00","0","0","0","0","1","Exclusive","58","1","","","1","0","1","2","0","2","2024-03-31 10:56:27","1","2024-03-31 16:26:27");
INSERT INTO products VALUES("89","Daphne Sanford","pHxBuTLVSi","94431310","18599","37198","0.00","0","0","0","0","2","Exclusive","28","1","","","1","0","1","2","0","2","2024-03-31 10:56:27","1","2024-03-31 16:26:27");
INSERT INTO products VALUES("90","Mr. Drake Adams V","RPREOvhdfV","53681511","51639","103278","0.00","0","0","0","0","4","Exclusive","49","1","","","1","0","1","2","0","2","2024-03-31 10:56:27","1","2024-03-31 16:26:27");
INSERT INTO products VALUES("91","Destini Dach III","aMGhdlOf5x","13338465","41190","82380","0.00","0","0","0","0","1","Exclusive","90","1","","","1","0","1","2","0","2","2024-03-31 10:56:28","1","2024-03-31 16:26:28");
INSERT INTO products VALUES("92","Jordi Gottlieb","4SEmGmB2V0","91524823","68479","136958","0.00","0","0","0","0","2","Exclusive","13","1","","","1","0","1","2","0","2","2024-03-31 10:56:28","1","2024-03-31 16:26:28");
INSERT INTO products VALUES("93","Therese Hauck","OA8reSsZWg","34167244","75497","150994","0.00","0","0","0","0","4","Exclusive","85","1","","","1","0","1","2","0","2","2024-03-31 10:56:28","1","2024-03-31 16:26:28");
INSERT INTO products VALUES("94","Dina Bogan","iUuzL6troJ","97953843","66236","132472","0.00","0","0","0","0","5","Exclusive","16","1","","","1","0","1","2","0","2","2024-03-31 10:56:28","1","2024-03-31 16:26:28");
INSERT INTO products VALUES("95","Milford Herman","5K1IvC7bgF","84439094","78498","156996","0.00","0","0","0","0","4","Exclusive","28","1","","","1","0","1","2","0","2","2024-03-31 10:56:29","1","2024-03-31 16:26:29");
INSERT INTO products VALUES("96","Tressa Wisozk","YDJ5ntBuK1","78676059","74805","149610","0.00","0","0","0","0","6","Exclusive","86","1","","","1","0","1","2","0","2","2024-03-31 10:56:29","1","2024-03-31 16:26:29");
INSERT INTO products VALUES("97","Dr. Estell Cummings IV","Fwh6tO8IA6","94433959","73595","147190","0.00","0","0","0","0","2","Exclusive","47","1","","","1","0","1","2","0","2","2024-03-31 10:56:29","1","2024-03-31 16:26:29");
INSERT INTO products VALUES("98","Jaida Grimes","lUnUIsoJZX","88180650","32281","64562","0.00","0","0","0","0","2","Exclusive","56","1","","","1","0","1","2","0","2","2024-03-31 10:56:29","1","2024-03-31 16:26:29");
INSERT INTO products VALUES("99","Angel Hills","q8qHbH3aUV","19919785","92186","184372","0.00","0","0","0","0","4","Exclusive","79","1","","","1","0","1","2","0","2","2024-04-01 16:52:19","1","2024-03-31 16:26:29");
INSERT INTO products VALUES("100","Eldora Hackett III","EtfkfhSgZJ","98321008","28924","57848","0.00","0","0","0","0","5","Inclusive","86","0","","\"\"","1","0","1","2","2","2","2024-04-01 16:52:19","1","2024-03-31 16:26:30");



DROP TABLE IF EXISTS profit_report;

CREATE TABLE `profit_report` (
  `profitReportId` int(11) NOT NULL AUTO_INCREMENT,
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
  `status` int(1) NOT NULL DEFAULT 1,
  `dateAdded` varchar(20) NOT NULL,
  PRIMARY KEY (`profitReportId`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO profit_report VALUES("36","Eldora Hackett III","Purchase","1","28924.00","2","12654.25","Inclusive","28.00","0.00","57848.00","0.00","45193.75","45193.75","1","2","1","2024-04-01 13:31:15");
INSERT INTO profit_report VALUES("37","Eldora Hackett III","Order","1","57848.00","2","25308.50","Inclusive","28.00","57848.00","115696.00","32539.50","115696.00","90387.50","1","2","1","2024-04-01 15:12:33");
INSERT INTO profit_report VALUES("38","Eldora Hackett III","Order","2","57848.00","2","25308.50","Inclusive","28.00","0.00","115696.00","32539.50","115696.00","90387.50","1","2","1","2024-04-01 16:28:04");
INSERT INTO profit_report VALUES("39","Eldora Hackett III","Order","3","57848.00","2","25308.50","Inclusive","28.00","57848.00","115696.00","-25308.50","115696.00","90387.50","1","2","1","2024-04-01 16:52:19");
INSERT INTO profit_report VALUES("40","Eldora Hackett III","Order","4","57848.00","2","25308.50","Inclusive","28.00","0.00","115696.00","32539.50","115696.00","90387.50","1","2","1","2024-04-01 17:14:09");



DROP TABLE IF EXISTS purchases;

CREATE TABLE `purchases` (
  `purchaseId` int(11) NOT NULL AUTO_INCREMENT,
  `sno` int(11) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `refrence` varchar(255) NOT NULL,
  `vendorId` varchar(11) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `billType` int(1) NOT NULL DEFAULT 0,
  `products` text NOT NULL,
  `quantity` float DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `subTotal` float DEFAULT NULL,
  `tax` float(11,2) NOT NULL,
  `total` float DEFAULT NULL,
  `purchaseStatus` varchar(1) DEFAULT '0',
  `storeId` int(11) NOT NULL DEFAULT 0,
  `userId` int(11) NOT NULL,
  `softDelete` int(1) NOT NULL DEFAULT 0,
  `updatedBy` int(11) NOT NULL,
  `dateUpdated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` int(1) NOT NULL DEFAULT 1,
  `insertedBy` int(11) NOT NULL DEFAULT 0,
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`purchaseId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO purchases VALUES("1","1","Purchase Heading","","1","2024-04-01","1","[{\"productId\":100,\"heading\":\"Eldora Hackett III\",\"model\":\"EtfkfhSgZJ\",\"barcode\":98321008,\"cost\":28924,\"price\":57848,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":5,\"taxType\":\"Inclusive\",\"quantity\":\"2\",\"subtract\":0,\"image\":null,\"relatedImage\":\"\\\"\\\"\",\"showInPos\":1,\"softDelete\":0,\"storeId\":1,\"userId\":2,\"updatedBy\":2,\"insertedBy\":2,\"dateUpdated\":\"2024-04-01 13:28:25\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:30\",\"taxHeading\":\"GST 28%\",\"taxPercent\":28,\"taxExclusiveValue\":0,\"taxInclusiveValue\":12654.25,\"tax\":12654.25,\"basePriceCost\":45193.75,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":57848,\"rewardPoints\":2892.4},{\"productId\":99,\"heading\":\"Angel Hills\",\"model\":\"q8qHbH3aUV\",\"barcode\":19919785,\"cost\":92186,\"price\":184372,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":4,\"taxType\":\"Exclusive\",\"quantity\":\"2\",\"subtract\":1,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"softDelete\":0,\"storeId\":1,\"userId\":2,\"updatedBy\":0,\"insertedBy\":2,\"dateUpdated\":\"2024-04-01 13:28:25\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:29\",\"taxHeading\":\"GST 18%\",\"taxPercent\":18,\"taxExclusiveValue\":33186.96,\"taxInclusiveValue\":0,\"tax\":33186.96,\"basePriceCost\":184372,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":184372,\"rewardPoints\":9218.6}]","4","","242220","45841.21","275407","1","1","2","0","2","2024-04-01 08:03:54","1","2","2024-04-01 13:31:15");



DROP TABLE IF EXISTS roles;

CREATE TABLE `roles` (
  `roleId` int(11) NOT NULL AUTO_INCREMENT,
  `heading` varchar(50) NOT NULL,
  `permission` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `insertedBy` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`roleId`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO roles VALUES("1","Super Administrator","{\"view\":[\"1\",\"57\",\"56\",\"58\",\"60\",\"61\",\"28\",\"29\",\"36\",\"8\",\"16\",\"19\",\"24\",\"25\",\"26\",\"27\",\"30\",\"31\",\"35\",\"37\",\"38\",\"39\",\"42\",\"43\",\"45\",\"47\",\"48\",\"51\",\"53\",\"55\",\"7\",\"10\",\"5\",\"6\",\"21\",\"2\",\"4\",\"9\",\"12\",\"22\",\"23\",\"32\",\"33\",\"34\",\"44\",\"46\",\"49\",\"50\",\"13\",\"3\",\"11\",\"20\"],\"edit\":[\"1\",\"57\",\"56\",\"58\",\"60\",\"61\",\"28\",\"29\",\"36\",\"8\",\"16\",\"19\",\"24\",\"25\",\"26\",\"27\",\"30\",\"31\",\"35\",\"37\",\"38\",\"39\",\"42\",\"43\",\"45\",\"47\",\"48\",\"51\",\"53\",\"55\",\"7\",\"10\",\"5\",\"6\",\"21\",\"2\",\"4\",\"9\",\"12\",\"22\",\"23\",\"32\",\"33\",\"34\",\"44\",\"46\",\"49\",\"50\",\"13\",\"3\",\"11\",\"20\"]}","1","1");
INSERT INTO roles VALUES("2","Pos Owner","{\"view\":[\"1\",\"57\",\"56\",\"58\",\"60\",\"61\",\"28\",\"29\",\"36\",\"8\",\"19\",\"30\",\"31\",\"35\",\"37\",\"38\",\"39\",\"42\",\"43\",\"45\",\"47\",\"48\",\"51\",\"53\",\"55\",\"5\",\"6\"],\"edit\":[\"1\",\"57\",\"56\",\"58\",\"60\",\"61\",\"28\",\"29\",\"36\",\"8\",\"19\",\"30\",\"31\",\"35\",\"37\",\"38\",\"39\",\"42\",\"43\",\"45\",\"47\",\"48\",\"51\",\"53\",\"55\",\"5\",\"6\"]}","1","1");
INSERT INTO roles VALUES("3","Pos User","{\"view\":[\"1\",\"57\",\"56\",\"58\",\"28\",\"29\",\"36\",\"8\",\"16\",\"25\",\"26\",\"27\",\"30\",\"31\",\"35\",\"37\",\"38\",\"39\",\"43\",\"51\",\"53\",\"55\",\"7\",\"10\",\"5\",\"6\",\"2\",\"9\",\"32\",\"33\",\"34\"],\"edit\":[\"1\",\"57\",\"56\",\"58\",\"28\",\"29\",\"36\",\"8\",\"16\",\"25\",\"26\",\"27\",\"30\",\"31\",\"35\",\"37\",\"38\",\"39\",\"43\",\"51\",\"53\",\"55\",\"7\",\"10\",\"5\",\"6\",\"2\",\"9\",\"32\",\"33\",\"34\"]}","1","1");



DROP TABLE IF EXISTS seating_tables;

CREATE TABLE `seating_tables` (
  `seatingTableId` int(11) NOT NULL AUTO_INCREMENT,
  `heading` varchar(50) NOT NULL,
  `capacity` int(11) NOT NULL,
  `storeId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `dateUpdated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`seatingTableId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO seating_tables VALUES("1","Table No 1","2","1","2","1","2024-02-26 14:48:34","2024-02-26 20:18:34");
INSERT INTO seating_tables VALUES("2","Table No 2","2","1","2","1","2024-02-26 14:48:34","2024-02-26 20:18:34");
INSERT INTO seating_tables VALUES("3","Table No 3","2","1","2","1","2024-02-26 14:48:34","2024-02-26 20:18:34");
INSERT INTO seating_tables VALUES("4","Table No 4","2","1","2","1","2024-02-26 14:48:34","2024-02-26 20:18:34");
INSERT INTO seating_tables VALUES("5","Table No 5","2","1","2","1","2024-02-26 14:48:34","2024-02-26 20:18:34");
INSERT INTO seating_tables VALUES("6","Table No 6","2","1","2","1","2024-02-26 14:48:34","2024-02-26 20:18:34");



DROP TABLE IF EXISTS seo;

CREATE TABLE `seo` (
  `seoId` int(11) NOT NULL AUTO_INCREMENT,
  `pageName` varchar(20) NOT NULL,
  `metaTitle` varchar(500) NOT NULL,
  `metaKeyword` varchar(500) NOT NULL,
  `metaDescription` varchar(500) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`seoId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO seo VALUES("1","Specialties","Specialties","Specialties","Specialties","1");
INSERT INTO seo VALUES("2","Faqs","Frequently Asked Questions","Frequently Asked Questions","Frequently Asked Questions","1");
INSERT INTO seo VALUES("3","Testimonials","Testimonials","Testimonials","Testimonials","1");
INSERT INTO seo VALUES("4","Teams","Teams","Teams","Teams","1");
INSERT INTO seo VALUES("5","Blogs","Blogs","Blogs","Blogs","1");
INSERT INTO seo VALUES("6","BlogCategory","BlogCategory","BlogCategory","BlogCategory","1");
INSERT INTO seo VALUES("7","Contact","Contact","Contact","Contact","1");
INSERT INTO seo VALUES("8","About","About","About","About","1");
INSERT INTO seo VALUES("9","LiverTransplant","Liver Transplant","Liver Transplant","Liver Transplant","1");
INSERT INTO seo VALUES("10","MedicalTourism","Medical Tourism","Medical Tourism","Medical Tourism","1");
INSERT INTO seo VALUES("11","OtherSurgeries","Other Surgeries","Other Surgeries","Other Surgeries","1");
INSERT INTO seo VALUES("12","Page","Page","Page","Page","1");
INSERT INTO seo VALUES("13","Login","Login","Login","Login","1");
INSERT INTO seo VALUES("14","Forgot","Forgot","Forgot","Forgot","1");
INSERT INTO seo VALUES("15","Dashboard","Dashboard","Dashboard","Dashboard","1");



DROP TABLE IF EXISTS settings;

CREATE TABLE `settings` (
  `settingId` int(11) NOT NULL AUTO_INCREMENT,
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
  `mergeLogin` int(1) NOT NULL DEFAULT 0,
  `databaseBackup` int(1) NOT NULL DEFAULT 0,
  `fieldsToSendValueOnMail` varchar(500) NOT NULL,
  `filedsToReplaceOnMail` varchar(500) NOT NULL,
  `filedsToUnsetOnMails` varchar(255) NOT NULL,
  `hideAddEditDeleteIfNoStoreSelected` varchar(255) NOT NULL,
  `multiplePaymentMethod` int(11) NOT NULL,
  `creditPaymentMethod` int(11) NOT NULL,
  `returnPaymentMethod` int(11) NOT NULL,
  `walletPaymentMethod` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`settingId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO settings VALUES("1","Admin Panel","public/assets/uploads/705853563.png","1024000","1024000","Admin Panel","Admin Panel","Admin Panel","pkv172019@gmail.com","","","","6678bd56cba1c932705fcec18ddf06f0","4f1c0a54fb8f4fc9bd8670abb8311ceb","sehrawat899@gmail.com","Priyavrat","#","#","#","#","0","0","ContactAgent","customerId-fullName-customers,propertyId-heading-properties","","customer_group,vendors,customers,manufacturers,products,seating_tables,employees,store_payments,purchases","2","1","3","9","1");



DROP TABLE IF EXISTS states;

CREATE TABLE `states` (
  `stateId` int(11) NOT NULL AUTO_INCREMENT,
  `heading` varchar(100) NOT NULL,
  `countryId` int(11) NOT NULL,
  `sortOrder` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `softDelete` int(1) NOT NULL DEFAULT 0,
  `updatedBy` int(11) NOT NULL,
  `dateUpdated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `insertedBy` int(11) NOT NULL,
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(1) NOT NULL,
  PRIMARY KEY (`stateId`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO states VALUES("1","Faridabad","1","0","","","0","0","2024-02-09 16:28:14","0","2022-02-24 12:16:43","1");
INSERT INTO states VALUES("2","Delhi","1","0","","","0","0","2024-02-09 16:28:14","0","2021-12-13 11:36:10","1");
INSERT INTO states VALUES("3","Rajasthan","1","0","","","0","0","2024-02-09 16:28:14","0","2022-02-25 15:40:51","1");
INSERT INTO states VALUES("4","Himachal Pardesh","1","0","","","0","0","2024-02-09 16:28:14","0","2022-02-25 15:40:58","1");
INSERT INTO states VALUES("5","Noida","1","0","","","0","0","2024-02-09 16:28:14","0","2022-02-24 12:16:28","1");
INSERT INTO states VALUES("6","Gurgaon","1","0","","","0","0","2024-02-09 16:28:14","0","2022-02-24 12:16:54","1");
INSERT INTO states VALUES("7","Ghaziabad","1","0","","","0","0","2024-02-09 16:28:14","0","2022-02-24 12:17:07","1");
INSERT INTO states VALUES("8","Maharashtra","1","0","","","0","0","2024-02-09 16:28:14","0","2022-02-25 15:40:39","1");
INSERT INTO states VALUES("9","Bihar","1","0","","","0","0","2024-02-09 16:28:14","0","2022-02-25 15:41:12","1");
INSERT INTO states VALUES("10","Assam","1","0","","","0","0","2024-02-09 16:28:14","0","2022-02-25 15:41:29","1");
INSERT INTO states VALUES("11","Andhra Pradesh	","1","0","","","0","0","2024-02-09 16:28:14","0","2022-02-25 18:40:17","1");
INSERT INTO states VALUES("12","Arunachal Pradesh	","1","0","","","0","0","2024-02-09 16:28:14","0","2022-02-25 18:40:35","1");
INSERT INTO states VALUES("13","Chandigarh (UT)","1","0","","","0","0","2024-02-09 16:28:14","0","2022-02-25 18:41:08","1");
INSERT INTO states VALUES("14","Chhattisgarh","1","0","","","0","0","2024-02-09 16:28:14","0","2022-02-25 18:41:50","1");
INSERT INTO states VALUES("15","Goa","1","0","","","0","0","2024-02-09 16:28:14","0","2022-02-25 18:42:22","1");
INSERT INTO states VALUES("16","Gujarat","1","0","","","0","0","2024-02-09 16:28:14","0","2022-02-25 18:42:36","1");
INSERT INTO states VALUES("17","Haryana","1","0","","","0","0","2024-02-09 16:28:14","0","2022-02-25 18:42:58","1");
INSERT INTO states VALUES("18","Himachal Pradesh","1","0","","","0","0","2024-02-09 16:28:14","0","2022-02-25 18:43:15","1");
INSERT INTO states VALUES("19","Jharkhand","1","0","","","0","0","2024-02-09 16:28:14","0","2022-02-25 18:43:38","1");
INSERT INTO states VALUES("20","Karnataka","1","0","","","0","0","2024-02-09 16:28:14","0","2022-02-25 18:43:54","1");
INSERT INTO states VALUES("21","Kerala","1","0","","","0","0","2024-02-09 16:28:14","0","2022-02-25 18:44:10","1");
INSERT INTO states VALUES("22","Madhya Pradesh	","1","0","","","0","0","2024-02-09 16:28:14","0","2022-02-25 18:44:32","1");
INSERT INTO states VALUES("23","Manipur","1","0","","","0","0","2024-02-09 16:28:14","0","2022-02-25 18:44:58","1");
INSERT INTO states VALUES("24","Orissa","1","0","","","0","0","2024-02-09 16:28:14","0","2022-02-25 18:45:21","1");
INSERT INTO states VALUES("25","Punjab","1","0","","","0","0","2024-02-09 16:28:14","0","2022-02-25 18:45:52","1");
INSERT INTO states VALUES("26","Sikkim","1","0","","","0","0","2024-02-09 16:28:14","0","2022-02-25 18:46:20","1");
INSERT INTO states VALUES("27","Tamil Nadu	","1","0","","","0","0","2024-02-09 16:28:14","0","2022-02-25 18:46:37","1");
INSERT INTO states VALUES("28","Telangana","1","0","","","0","0","2024-02-09 16:28:14","0","2022-02-25 18:46:50","1");
INSERT INTO states VALUES("29","Tripura","1","0","","","0","0","2024-02-09 16:28:14","0","2022-02-25 18:47:01","1");
INSERT INTO states VALUES("30","Uttar Pradesh	","1","0","","","0","0","2024-02-09 16:28:14","0","2022-02-25 18:47:14","1");
INSERT INTO states VALUES("31","Uttarakhand","1","0","","","0","0","2024-02-09 16:28:14","0","2022-02-25 18:47:30","1");
INSERT INTO states VALUES("32","West Bengal	","1","0","","","0","0","2024-02-09 16:28:14","0","2022-02-25 18:47:47","1");
INSERT INTO states VALUES("33","Test","1","0","public/assets/uploads/849234736.png","<p>This is a test data</p>
","0","0","2024-02-14 11:59:27","1","2024-02-14 11:59:27","1");
INSERT INTO states VALUES("34","Test","1","0","public/assets/uploads/683043326.png","<p>This is a test data</p>
","0","0","2024-02-14 12:01:14","1","2024-02-14 12:01:14","1");
INSERT INTO states VALUES("35","Test","1","0","public/assets/uploads/738511030.png","<p>This is a test data</p>
","0","0","2024-02-14 12:02:31","1","2024-02-14 12:02:31","1");
INSERT INTO states VALUES("36","Test","1","0","public/assets/uploads/929412484.png","<p>This is a test data</p>
","0","0","2024-02-14 12:07:25","1","2024-02-14 12:07:25","1");
INSERT INTO states VALUES("37","Banner 1","1","0","public/assets/uploads/510783491.png","<p>sdfsdf</p>
","0","0","2024-02-14 12:11:20","1","2024-02-14 12:11:20","1");
INSERT INTO states VALUES("38","Banner 1","1","0","public/assets/uploads/583739371.png","<p>sdfsdf</p>
","0","0","2024-02-14 12:11:39","1","2024-02-14 12:11:39","1");
INSERT INTO states VALUES("39","Banner 1","1","0","public/assets/uploads/801931305.png","<p>sdfsdf</p>
","0","0","2024-02-14 12:11:52","1","2024-02-14 12:11:52","1");
INSERT INTO states VALUES("40","Banner 1","1","0","public/assets/uploads/265488797.png","<p>asdasdas</p>
","0","0","2024-02-14 12:18:18","1","2024-02-14 12:18:18","1");
INSERT INTO states VALUES("41","Banner 1","1","0","public/assets/uploads/400618602.png","<p>asdasdas</p>
","0","0","2024-02-14 12:20:56","1","2024-02-14 12:20:56","1");
INSERT INTO states VALUES("42","Banner 1","1","0","public/assets/uploads/686771979.png","<p>asdasdas</p>
","0","0","2024-02-14 12:35:38","1","2024-02-14 12:35:38","1");
INSERT INTO states VALUES("43","Banner 1","1","0","public/assets/uploads/924075069.png","<p>asdasdas</p>
","0","0","2024-02-14 12:35:49","1","2024-02-14 12:35:49","1");
INSERT INTO states VALUES("44","Banner 1","1","0","public/assets/uploads/443474842.png","<p>asdasdas</p>
","0","0","2024-02-14 12:36:14","1","2024-02-14 12:36:14","1");
INSERT INTO states VALUES("45","Banner 1","1","0","public/assets/uploads/557898121.png","<p>asdasdas</p>
","0","0","2024-02-14 12:36:41","1","2024-02-14 12:36:41","1");
INSERT INTO states VALUES("46","Banner 1","1","0","public/assets/uploads/222937984.png","<p>asdasdasd</p>
","0","0","2024-02-14 12:38:06","1","2024-02-14 12:38:06","1");
INSERT INTO states VALUES("47","Banner 1","1","0","public/assets/uploads/500778351.png","<p>asdasd</p>
","0","0","2024-02-14 12:39:18","1","2024-02-14 12:39:18","1");
INSERT INTO states VALUES("48","Banner 1","1","0","public/assets/uploads/509015561.png","<p>asdasd</p>
","0","0","2024-02-14 12:40:33","1","2024-02-14 12:40:33","1");
INSERT INTO states VALUES("49","Banner 1","1","0","public/assets/uploads/780137938.png","<p>asdasd</p>
","0","0","2024-02-14 12:41:54","1","2024-02-14 12:41:54","1");



DROP TABLE IF EXISTS store_payments;

CREATE TABLE `store_payments` (
  `storePaymentId` int(11) NOT NULL AUTO_INCREMENT,
  `payments` varchar(255) NOT NULL,
  `default` int(11) NOT NULL,
  `storeId` int(11) NOT NULL,
  `userId` int(1) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`storePaymentId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO store_payments VALUES("1","[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\"]","8","1","2","1");



DROP TABLE IF EXISTS store_settings;

CREATE TABLE `store_settings` (
  `storeSettingId` int(11) NOT NULL AUTO_INCREMENT,
  `websiteName` varchar(100) NOT NULL,
  `websiteLogo` varchar(255) NOT NULL,
  `adminEmail` varchar(500) NOT NULL,
  `contactMobile` varchar(50) NOT NULL,
  `contactEmail` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `mailJetUsername` varchar(255) NOT NULL,
  `mailJetPassword` varchar(255) NOT NULL,
  `mailjetEmail` varchar(100) NOT NULL,
  `mailjetName` varchar(50) NOT NULL,
  `mergeLogin` int(1) NOT NULL DEFAULT 0,
  `databaseBackup` int(1) NOT NULL DEFAULT 0,
  `fieldsToSendValueOnMail` varchar(500) NOT NULL,
  `filedsToReplaceOnMail` varchar(500) NOT NULL,
  `filedsToUnsetOnMails` varchar(255) NOT NULL,
  `hideAddEditDeleteIfNoStoreSelected` varchar(255) NOT NULL,
  `enableRewardPoints` int(1) NOT NULL DEFAULT 1,
  `rewardOnDiscountedProduct` int(1) NOT NULL DEFAULT 1,
  `minimumRewardPointsToReedem` int(11) NOT NULL DEFAULT 0,
  `rewardPercentOnProduct` varchar(11) NOT NULL,
  `walkInCustomerId` int(11) NOT NULL,
  `invoicePrefix` varchar(50) NOT NULL,
  `storeId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `updatedBy` int(11) NOT NULL,
  `insertedBy` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
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
  `defaultKotTemplate` int(11) NOT NULL,
  `defaultOrderStatus` int(11) NOT NULL DEFAULT 0,
  `cancelledOrderStatus` int(11) NOT NULL,
  `runningOrderStatus` int(11) NOT NULL,
  `deductFromStock` int(1) NOT NULL DEFAULT 1,
  `startBarcodeFrom` int(11) NOT NULL,
  PRIMARY KEY (`storeSettingId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO store_settings VALUES("1","Default New Shop","public/assets/uploads/662747144.png","demo@gmail.com","9999999999","","Your address goes here","","","","","0","1","ContactAgent","customerId-fullName-customers,propertyId-heading-properties","","customer_group,vendors,customers,manufacturers,products,additional_charges","1","1","0","10","1","INV-2024-","1","2","2","1","1","append","1","1","1","1","1","1","1","0","0","1","1","1","1","1","1","1","1","<p>This article will get you started with creating your own custom Terms and Conditions agreement. We&#39;ve also put together a Sample Terms and Conditions Template that you can use to help you write your own.</p>
","","","1","3","1","3","2","0","0");



DROP TABLE IF EXISTS stores;

CREATE TABLE `stores` (
  `storeId` int(11) NOT NULL AUTO_INCREMENT,
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
  `softDelete` int(1) NOT NULL DEFAULT 0,
  `updatedBy` int(11) NOT NULL,
  `insertedBy` int(11) NOT NULL DEFAULT 0,
  `dateUpdated` datetime NOT NULL,
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`storeId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO stores VALUES("1","Default Shop","Default Shop","demo@gmail.com","999999999","Your address goes here","1","17","0","2","c5ece30951ad35ae51ffd02754ee9f9c874942ef","0","0","2","0000-00-00 00:00:00","2024-03-26 09:42:26","1");



DROP TABLE IF EXISTS tables;

CREATE TABLE `tables` (
  `tableId` int(11) NOT NULL AUTO_INCREMENT,
  `tableName` varchar(50) NOT NULL,
  `primaryKeyName` varchar(50) NOT NULL,
  `columns` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`tableId`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO tables VALUES("1","contacts","contactId","[{\"Field\":\"contactId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"name\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"email\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"mobile\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"subject\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"message\",\"Type\":\"mediumtext\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("2","databaseBackup","databaseBackupId","[{\"Field\":\"databaseBackupId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"backUpName\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"type\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("3","filters","filterId","[{\"Field\":\"filterId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"filterModuleId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"filtertableName\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"fieldNameReadonly\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"tableName\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"tableFirstColumn\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"tableColumn\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"fieldHeading\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"fieldType\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"fieldName\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"fieldClass\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"fieldId\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"fieldPlaceholder\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"selectBoxValue\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"selectBoxHtml\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"orderBy\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"whereColumn\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"sortOrder\",\"Type\":\"int(11)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"lineNo\",\"Type\":\"int(11)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"additionalAttributes\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"rowColumnSize\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateBetweenFilter\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"filterWorkingCondition\",\"Type\":\"varchar(3)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"OR\",\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("4","filters_old","filterId","[{\"Field\":\"filterId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"type\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"name\",\"Type\":\"varchar(50)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"class\",\"Type\":\"varchar(50)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"id\",\"Type\":\"varchar(50)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"value\",\"Type\":\"varchar(50)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"tableName\",\"Type\":\"varchar(50)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"selectIdColumn\",\"Type\":\"varchar(50)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"selectHeadingColumn\",\"Type\":\"varchar(50)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"idValue\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"headingValue\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"defaultValue\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"filterTypeId\",\"Type\":\"int(11)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"line\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"forWhat\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"orderByColumn\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"sortOrder\",\"Type\":\"varchar(11)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("5","filter_types","fiterTypeId","[{\"Field\":\"fiterTypeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("6","inner_banner","innerBannerId","[{\"Field\":\"innerBannerId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"page\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"heading\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"image\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("7","menus","menuId","[{\"Field\":\"menuId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"menuHeading\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"link\",\"Type\":\"varchar(100)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"icon\",\"Type\":\"varchar(100)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"moduleId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"parentId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"sortOrder\",\"Type\":\"int(11)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"roleId\",\"Type\":\"varchar(30)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"},{\"Field\":\"dateUpdated\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"on update current_timestamp()\"},{\"Field\":\"insertedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("8","messages","messageId","[{\"Field\":\"messageId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"message\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"hindi\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"english\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("9","modules","moduleId","[{\"Field\":\"moduleId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"moduleName\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"moduleTable\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"moduleFirstColumn\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"pageHeading\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"moduleData\",\"Type\":\"mediumtext\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"parentMenu\",\"Type\":\"varchar(30)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"sortOrder\",\"Type\":\"int(1)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"hideAdd\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"hideEdit\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"hideDelete\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"hideAction\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"extraButtons\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"submitCodeBefore\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"submitCodeAfter\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"extraActionOnDeleteButton\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"additionalText\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"shortCode\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"frontendRedirectPage\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"sendMailToAdmin\",\"Type\":\"varchar(3)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"No\",\"Extra\":\"\"},{\"Field\":\"filedsToReplaceOnMail\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"filters\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"copyTable\",\"Type\":\"varchar(3)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"No\",\"Extra\":\"\"},{\"Field\":\"dataOfColumnToSkip\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"autoIncreamentColumn\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int(11)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"timestamp\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("10","pages","pageId","[{\"Field\":\"pageId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"seo\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"metaTitle\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"metaKeyword\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"metaDescription\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"shortDescription\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"description\",\"Type\":\"mediumtext\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"image\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("11","seo","seoId","[{\"Field\":\"seoId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"pageName\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"metaTitle\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"metaKeyword\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"metaDescription\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("12","settings","settingId","[{\"Field\":\"settingId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"websiteName\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"websiteLogo\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"allowedImageSize\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"allowedFileSize\",\"Type\":\"varchar(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"metaTitle\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"metaKeyword\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"metaDescription\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"adminEmail\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"contactMobile\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"contactEmail\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"address\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"mailJetUsername\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"mailJetPassword\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"mailjetEmail\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"mailjetName\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"facebook\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"twitter\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"linkedin\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"instagram\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"mergeLogin\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"databaseBackup\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"fieldsToSendValueOnMail\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"filedsToReplaceOnMail\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"filedsToUnsetOnMails\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"hideAddEditDeleteIfNoStoreSelected\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"multiplePaymentMethod\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"creditPaymentMethod\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"returnPaymentMethod\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"walletPaymentMethod\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("13","tables","tableId","[{\"Field\":\"tableId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"tableName\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"primaryKeyName\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"columns\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("14","templates","templateId","[{\"Field\":\"templateId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"subject\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"template\",\"Type\":\"mediumtext\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"forWhat\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"forWhom\",\"Type\":\"varchar(10)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("15","users","userId","[{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"userName\",\"Type\":\"varchar(30)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userEmail\",\"Type\":\"varchar(100)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":\"NULL\",\"Extra\":\"\"},{\"Field\":\"userPassword\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userMobile\",\"Type\":\"varchar(30)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"roleId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"superAdmin\",\"Type\":\"varchar(3)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"No\",\"Extra\":\"\"},{\"Field\":\"dataBaseName\",\"Type\":\"varchar(30)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeUserId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("16","admin_login_history","adminLoginHistoryId","[{\"Field\":\"adminLoginHistoryId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("17","image_manager","imageManagerId","[{\"Field\":\"imageManagerId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"image\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("18","countries","countryId","[{\"Field\":\"countryId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"sortOrder\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"softDelete\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"updatedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"dateUpdated\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"on update current_timestamp()\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("19","roles","roleId","[{\"Field\":\"roleId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"permission\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("20","states","stateId","[{\"Field\":\"stateId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"countryId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"sortOrder\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"image\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"description\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"softDelete\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"updatedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateUpdated\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"on update current_timestamp()\"},{\"Field\":\"insertedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("21","stores","storeId","[{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"name\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"tagline\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"email\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"mobile\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"address\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"cityId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"stateId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"sortOrder\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"storeToken\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"softDelete\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"updatedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"dateUpdated\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("22","customer_group","customerGroupId","[{\"Field\":\"customerGroupId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"defaultDiscountPercent\",\"Type\":\"varchar(10)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"sortOrder\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"default\",\"Type\":\"varchar(10)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"softDelete\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"updatedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"dateUpdated\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("23","cities","cityId","[{\"Field\":\"cityId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"stateId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"countryId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("24","taxes","taxId","[{\"Field\":\"taxId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"percent\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"sortOrder\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("25","units","unitId","[{\"Field\":\"unitId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"unit\",\"Type\":\"varchar(10)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"sortOrder\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("26","vendors","vendorId","[{\"Field\":\"vendorId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"mobile\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"email\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"openingBalance\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"cityId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"stateId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"countryId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"image\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"sorftDelete\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"updatedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateUpdated\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0000-00-00 00:00:00\",\"Extra\":\"on update current_timestamp()\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("27","customers","customerId","[{\"Field\":\"customerId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"name\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"mobile\",\"Type\":\"varchar(20)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"email\",\"Type\":\"varchar(100)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"openingBalance\",\"Type\":\"int(11)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"walletBalance\",\"Type\":\"int(11)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"rewardPoints\",\"Type\":\"int(11)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"customerGroupId\",\"Type\":\"int(11)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"cityId\",\"Type\":\"varchar(50)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"stateId\",\"Type\":\"int(11)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"countryId\",\"Type\":\"int(11)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"updatedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateUpdated\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"on update current_timestamp()\"},{\"Field\":\"softDelete\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("28","customer_ledger","customerLedgerId","[{\"Field\":\"customerLedgerId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"orderId\",\"Type\":\"int(11)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"customerId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"amount\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"type\",\"Type\":\"varchar(10)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"paymentId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"remark\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"softDelete\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("29","categories","categoryId","[{\"Field\":\"categoryId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"image\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"parentId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"updatedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateUpdated\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"on update current_timestamp()\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"},{\"Field\":\"softDelete\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("30","manufacturers","manufacturerId","[{\"Field\":\"manufacturerId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"image\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"softDelete\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"dateUpdated\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"on update current_timestamp()\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("31","products","productId","[{\"Field\":\"productId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"model\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"barcode\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"cost\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"price\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"percent\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"manufacturerId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"categoryId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"vendorId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"unitId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"taxId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"taxType\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"Exclusive\",\"Extra\":\"\"},{\"Field\":\"quantity\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"subtract\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"image\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"relatedImage\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"showInPos\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"softDelete\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"updatedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateUpdated\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"on update current_timestamp()\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("32","store_settings","storeSettingId","[{\"Field\":\"storeSettingId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"websiteName\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"websiteLogo\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"adminEmail\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"contactMobile\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"contactEmail\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"address\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"mailJetUsername\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"mailJetPassword\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"mailjetEmail\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"mailjetName\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"mergeLogin\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"databaseBackup\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"fieldsToSendValueOnMail\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"filedsToReplaceOnMail\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"filedsToUnsetOnMails\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"hideAddEditDeleteIfNoStoreSelected\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"enableRewardPoints\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"rewardOnDiscountedProduct\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"minimumRewardPointsToReedem\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"rewardPercentOnProduct\",\"Type\":\"varchar(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"walkInCustomerId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"invoicePrefix\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"updatedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"cartAppendStyle\",\"Type\":\"varchar(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"orderTypeRequired\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"enableOrderType\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"enableTaxes\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"showStoreInfomation\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"showExtraInformtionPopup\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"showWalletBalance\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"showRewardBalance\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"showAddCustomerBottom\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"salesPersonRequired\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"showSalesPerson\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"showQuickAdd\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"restaurant\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"showModal\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"showBarcode\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"showImage\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"showManufacturers\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"showCategories\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeTerms\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"invoiceHeaderText\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"invoiceFooterText\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"defaultInvoiceTemplate\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"defaultKotTemplate\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"defaultOrderStatus\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"cancelledOrderStatus\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"runningOrderStatus\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"deductFromStock\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"startBarcodeFrom\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("33","seating_tables","seatingTableId","[{\"Field\":\"seatingTableId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"capacity\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"dateUpdated\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"on update current_timestamp()\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("34","languages","languageId","[{\"Field\":\"languageId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("35","employees","employeeId","[{\"Field\":\"employeeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"name\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"mobile\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"email\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"sallery\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dob\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"softDelete\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"updatedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateUpdated\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"on update current_timestamp()\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("36","payments","paymentId","[{\"Field\":\"paymentId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"name\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"sortOrder\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"softDelete\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("37","store_payments","storePaymentId","[{\"Field\":\"storePaymentId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"payments\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"default\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("38","order","orderId","[{\"Field\":\"orderId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"sno\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"customerId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"invoicePrefix\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"name\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"email\",\"Type\":\"varchar(50)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"mobile\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"subTotal\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"tax\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"productDiscount\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"additionalCharges\",\"Type\":\"text\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"globalDiscount\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"paymentId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"paymentMethod\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"multiplePaymentData\",\"Type\":\"text\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"total\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"rewardEarned\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"rewardUsed\",\"Type\":\"varchar(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"orderType\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"checkoutType\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"runningOrder\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"kotToken\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"seatingTableId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"seatingTableHeading\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"hold\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"orderStatusId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"orderStatusHeading\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"orderProduct\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"orderTotal\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"employeeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"salesUserId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"totalItemsInCart\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"totalQuantityInCart\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"softDelete\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("39","order_kot","orderKotId","[{\"Field\":\"orderKotId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"orderId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"kotToken\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("40","order_product","orderProductId","[{\"Field\":\"orderProductId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"orderId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"productId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"heading\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"model\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"barcode\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"taxId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"taxHeading\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"taxType\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"taxPercent\",\"Type\":\"varchar(5)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"tax\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"quantity\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"discount\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"discountValue\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"rewardPoints\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"cost\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"price\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"percent\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"total\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"extraInformation\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"updatedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateModified\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"on update current_timestamp()\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"},{\"Field\":\"kotToken\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"sentToKot\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"kotViewed\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"kotViewedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"taxInclusiveValue\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"taxExclusiveValue\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"basePriceCost\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"profit\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("41","order_total","orderTotalId","[{\"Field\":\"orderTotalId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"orderId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"orderTotal\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("42","additional_charges","additionalChargeId","[{\"Field\":\"additionalChargeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"sortOrder\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"updatedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("43","invoice_template","invoiceTemplateId","[{\"Field\":\"invoiceTemplateId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"template\",\"Type\":\"mediumtext\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"tableCode\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"loopTrCode\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"customCss\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"subTotalTrLoop\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("44","customer_ledger_reward","customerLedgerRewardId","[{\"Field\":\"customerLedgerRewardId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"orderId\",\"Type\":\"int(11)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"customerId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"reward\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"type\",\"Type\":\"varchar(10)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"paymentId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"remark\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"payInOut\",\"Type\":\"varchar(10)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"softDelete\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("45","customer_ledger_wallet","customerLedgerId","[{\"Field\":\"customerLedgerId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"orderId\",\"Type\":\"int(11)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"customerId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"amount\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"type\",\"Type\":\"varchar(10)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"paymentId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"remark\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"payInOut\",\"Type\":\"varchar(10)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"softDelete\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("46","order_status","orderStatusId","[{\"Field\":\"orderStatusId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("47","purchases","purchaseId","[{\"Field\":\"purchaseId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"sno\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"heading\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"refrence\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"vendorId\",\"Type\":\"varchar(11)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"date\",\"Type\":\"varchar(20)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"billType\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"products\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"quantity\",\"Type\":\"float\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"comment\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"subTotal\",\"Type\":\"float\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"tax\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"total\",\"Type\":\"float\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"purchaseStatus\",\"Type\":\"varchar(1)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"softDelete\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"updatedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateUpdated\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"on update current_timestamp()\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("48","migrations","id","[{\"Field\":\"id\",\"Type\":\"int(10) unsigned\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"migration\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"batch\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("49","personal_access_tokens","id","[{\"Field\":\"id\",\"Type\":\"bigint(20) unsigned\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"tokenable_type\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"MUL\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"tokenable_id\",\"Type\":\"bigint(20) unsigned\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"name\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"token\",\"Type\":\"varchar(64)\",\"Null\":\"NO\",\"Key\":\"UNI\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"abilities\",\"Type\":\"text\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"last_used_at\",\"Type\":\"timestamp\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"created_at\",\"Type\":\"timestamp\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"updated_at\",\"Type\":\"timestamp\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("50","customer_pay_in_out","customerPayInOutId","[{\"Field\":\"customerPayInOutId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"customerId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"amount\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"type\",\"Type\":\"varchar(10)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateUpdated\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"on update current_timestamp()\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("51","codes","codeId","[{\"Field\":\"codeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"alphabat\",\"Type\":\"varchar(10)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"number\",\"Type\":\"int(10)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("52","order_history","orderHistoryId","[{\"Field\":\"orderHistoryId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"orderId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"orderStatusId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"comment\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("53","profit_report","profitReportId","[{\"Field\":\"profitReportId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"type\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"id\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"costPrice\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"quantity\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"tax\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"taxType\",\"Type\":\"varchar(10)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"taxPercent\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"discount\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"total\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"profit\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"finalAmount\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"basePriceCost\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"}]","1");



DROP TABLE IF EXISTS taxes;

CREATE TABLE `taxes` (
  `taxId` int(11) NOT NULL AUTO_INCREMENT,
  `heading` varchar(50) NOT NULL,
  `percent` float(11,2) NOT NULL,
  `sortOrder` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`taxId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO taxes VALUES("1","CGST 2.5%","2.50","0","1");
INSERT INTO taxes VALUES("2","GST 5%","5.00","2","1");
INSERT INTO taxes VALUES("3","GST 12%","12.00","3","1");
INSERT INTO taxes VALUES("4","GST 18%","18.00","4","1");
INSERT INTO taxes VALUES("5","GST 28%","28.00","5","1");
INSERT INTO taxes VALUES("6","GST 3 %","3.00","1","1");



DROP TABLE IF EXISTS templates;

CREATE TABLE `templates` (
  `templateId` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(100) NOT NULL,
  `template` mediumtext NOT NULL,
  `forWhat` varchar(100) NOT NULL,
  `forWhom` varchar(10) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`templateId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO templates VALUES("1","Thank you for subscribing our mailing list","<p>Hi {NAME},</p>

<p>Thank you for subscribing to our mailing list.</p>

<p>Regards {WEBSITENAME}</p>
","Subscribe","User","1","2022-05-01 19:54:16");
INSERT INTO templates VALUES("2","A new user subscribed to our list","<p>Hi Admin,</p>

<p>A new user has been subscribed to our mailing list.</p>

<p>Regards {WEBSITENAME}</p>
","Subscribe","Admin","1","2022-05-01 19:54:16");
INSERT INTO templates VALUES("3","New Enquiry Received","<p>Hi {NAME},</p>

<p>A new inquiry was received. Please have a look at it.</p>

<p>{CONTENT}<br />
Regards {WEBSITENAME}</p>
","Enquiry","Admin","1","2022-05-01 20:45:05");
INSERT INTO templates VALUES("4","Thank you for your enquiry","<p>Hi {NAME},</p>

<p>Thank You For Your Query. We will reply to you as soon as possible.</p>

<p>Regards {WEBSITENAME}</p>
","Enquiry","User","1","2022-05-01 20:45:05");
INSERT INTO templates VALUES("5","Thank you for your enquiry","<p>Hi {NAME},</p>

<p>Thank You For Your Query. We will reply to you as soon as possible.</p>
{CONTENT}
<p>Regards {WEBSITENAME}</p>
","States","Admin","1","2022-05-01 20:45:05");



DROP TABLE IF EXISTS units;

CREATE TABLE `units` (
  `unitId` int(11) NOT NULL AUTO_INCREMENT,
  `heading` varchar(50) NOT NULL,
  `unit` varchar(10) NOT NULL,
  `sortOrder` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`unitId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO units VALUES("1","KG","","0","1");
INSERT INTO units VALUES("2","Gram","","0","1");
INSERT INTO units VALUES("3","Pound","","0","0");
INSERT INTO units VALUES("4","Litre","","0","1");
INSERT INTO units VALUES("5","Mililiter","","0","1");
INSERT INTO units VALUES("6","ML","","0","1");
INSERT INTO units VALUES("7","PC","","0","1");



DROP TABLE IF EXISTS users;

CREATE TABLE `users` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(30) NOT NULL,
  `userEmail` varchar(100) DEFAULT 'NULL',
  `userPassword` varchar(255) DEFAULT NULL,
  `userMobile` varchar(30) NOT NULL,
  `roleId` int(11) NOT NULL,
  `superAdmin` varchar(3) NOT NULL DEFAULT 'No',
  `dataBaseName` varchar(30) NOT NULL,
  `storeUserId` int(11) NOT NULL,
  `insertedBy` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO users VALUES("1","admin","admin@admin.com","a346bc80408d9b2a5063fd1bddb20e2d5586ec30","8285187287","1","Yes","ship_shop_default","0","1","1");
INSERT INTO users VALUES("2","Owner","owner@admin.com","a346bc80408d9b2a5063fd1bddb20e2d5586ec30","","2","No","ship_shop_jaitaran","1","1","1");



DROP TABLE IF EXISTS vendors;

CREATE TABLE `vendors` (
  `vendorId` int(11) NOT NULL AUTO_INCREMENT,
  `heading` varchar(50) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `openingBalance` int(11) NOT NULL,
  `cityId` int(11) NOT NULL,
  `stateId` int(11) NOT NULL,
  `countryId` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `storeId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `sorftDelete` int(1) NOT NULL DEFAULT 0,
  `updatedBy` int(11) NOT NULL,
  `insertedBy` int(11) NOT NULL,
  `dateUpdated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`vendorId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO vendors VALUES("1","Vendor Store 1","8595899103","","0","1","17","1","","1","2","0","2","2","2024-03-22 11:11:24","2024-02-24 13:16:08","1");



