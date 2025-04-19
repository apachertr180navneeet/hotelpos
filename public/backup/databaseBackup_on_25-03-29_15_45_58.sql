DROP TABLE IF EXISTS additional_charges;

CREATE TABLE `additional_charges` (
  `additionalChargeId` int(11) NOT NULL AUTO_INCREMENT,
  `heading` varchar(100) NOT NULL,
  `sortOrder` int(11) NOT NULL,
  `storeId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `updatedBy` int(11) NOT NULL,
  `insertedBy` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`additionalChargeId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO additional_charges VALUES("1","Shipping Charges","0","1","2","0","2","1");
INSERT INTO additional_charges VALUES("2","Transport Charges","0","1","2","0","2","1");



DROP TABLE IF EXISTS admin_login_history;

CREATE TABLE `admin_login_history` (
  `adminLoginHistoryId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`adminLoginHistoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
INSERT INTO admin_login_history VALUES("44","1","1","2024-04-09 13:55:58");
INSERT INTO admin_login_history VALUES("45","1","1","2024-04-09 14:10:18");
INSERT INTO admin_login_history VALUES("46","1","1","2024-04-10 09:34:00");
INSERT INTO admin_login_history VALUES("47","1","1","2024-04-10 11:00:29");
INSERT INTO admin_login_history VALUES("48","1","1","2024-04-10 11:13:58");
INSERT INTO admin_login_history VALUES("49","1","1","2024-04-10 11:33:55");
INSERT INTO admin_login_history VALUES("50","1","1","2024-04-11 08:45:57");
INSERT INTO admin_login_history VALUES("51","1","1","2024-04-11 09:24:40");
INSERT INTO admin_login_history VALUES("52","1","1","2024-04-11 10:12:56");
INSERT INTO admin_login_history VALUES("53","1","1","2024-04-11 10:16:47");
INSERT INTO admin_login_history VALUES("54","1","1","2024-04-11 14:39:08");
INSERT INTO admin_login_history VALUES("55","1","1","2024-04-11 17:05:04");
INSERT INTO admin_login_history VALUES("56","1","1","2024-04-12 10:08:17");
INSERT INTO admin_login_history VALUES("57","1","1","2024-04-12 14:46:40");
INSERT INTO admin_login_history VALUES("58","1","1","2024-04-13 09:08:26");
INSERT INTO admin_login_history VALUES("59","3","1","2024-04-13 14:07:55");
INSERT INTO admin_login_history VALUES("60","5","1","2024-04-13 14:13:15");
INSERT INTO admin_login_history VALUES("61","5","1","2024-04-13 14:27:52");
INSERT INTO admin_login_history VALUES("62","5","1","2024-04-13 14:28:00");
INSERT INTO admin_login_history VALUES("63","5","1","2024-04-13 14:28:54");
INSERT INTO admin_login_history VALUES("64","5","1","2024-04-13 14:35:25");
INSERT INTO admin_login_history VALUES("65","5","1","2024-04-13 14:51:10");
INSERT INTO admin_login_history VALUES("66","1","1","2024-04-13 15:03:17");
INSERT INTO admin_login_history VALUES("67","5","1","2024-04-13 15:09:33");
INSERT INTO admin_login_history VALUES("68","5","1","2024-04-13 15:10:47");
INSERT INTO admin_login_history VALUES("69","1","1","2024-04-16 10:55:51");
INSERT INTO admin_login_history VALUES("70","1","1","2024-04-16 11:34:59");
INSERT INTO admin_login_history VALUES("71","1","1","2024-04-16 11:36:08");
INSERT INTO admin_login_history VALUES("72","1","1","2024-04-16 12:13:15");
INSERT INTO admin_login_history VALUES("73","1","1","2024-04-18 09:10:27");
INSERT INTO admin_login_history VALUES("74","1","1","2024-04-18 14:30:17");
INSERT INTO admin_login_history VALUES("75","1","1","2024-04-18 15:52:09");
INSERT INTO admin_login_history VALUES("76","1","1","2024-04-18 18:41:46");
INSERT INTO admin_login_history VALUES("77","1","1","2024-04-19 08:12:27");
INSERT INTO admin_login_history VALUES("78","1","1","2024-04-19 16:05:54");
INSERT INTO admin_login_history VALUES("79","1","1","2024-04-21 10:40:45");
INSERT INTO admin_login_history VALUES("80","1","1","2024-04-21 16:42:54");
INSERT INTO admin_login_history VALUES("81","1","1","2024-04-21 21:31:53");
INSERT INTO admin_login_history VALUES("82","1","1","2024-04-22 17:16:45");
INSERT INTO admin_login_history VALUES("83","1","1","2024-04-23 09:33:30");
INSERT INTO admin_login_history VALUES("84","1","1","2024-04-23 13:13:37");
INSERT INTO admin_login_history VALUES("85","1","1","2024-04-29 10:01:12");
INSERT INTO admin_login_history VALUES("86","1","1","2024-04-29 19:27:35");
INSERT INTO admin_login_history VALUES("87","1","1","2024-04-30 08:54:16");
INSERT INTO admin_login_history VALUES("88","1","1","2024-05-01 08:39:36");
INSERT INTO admin_login_history VALUES("89","1","1","2024-05-01 16:26:44");
INSERT INTO admin_login_history VALUES("90","1","1","2024-05-02 08:54:32");
INSERT INTO admin_login_history VALUES("91","1","1","2024-05-03 10:19:32");
INSERT INTO admin_login_history VALUES("92","1","1","2024-05-04 10:14:20");
INSERT INTO admin_login_history VALUES("93","1","1","2024-05-04 15:44:11");
INSERT INTO admin_login_history VALUES("94","1","1","2024-05-07 09:24:55");
INSERT INTO admin_login_history VALUES("95","1","1","2024-05-07 10:42:29");
INSERT INTO admin_login_history VALUES("96","1","1","2024-05-07 11:12:55");
INSERT INTO admin_login_history VALUES("97","1","1","2024-05-10 10:12:20");
INSERT INTO admin_login_history VALUES("98","1","1","2024-05-10 12:13:38");
INSERT INTO admin_login_history VALUES("99","1","1","2024-05-10 12:29:26");
INSERT INTO admin_login_history VALUES("100","1","1","2024-05-10 13:44:32");
INSERT INTO admin_login_history VALUES("101","1","1","2024-05-10 14:19:30");
INSERT INTO admin_login_history VALUES("102","1","1","2024-05-10 14:21:29");
INSERT INTO admin_login_history VALUES("103","1","1","2024-05-10 14:59:24");
INSERT INTO admin_login_history VALUES("104","1","1","2024-05-10 15:05:43");
INSERT INTO admin_login_history VALUES("105","1","1","2024-05-11 13:30:59");
INSERT INTO admin_login_history VALUES("106","1","1","2024-05-11 13:55:05");
INSERT INTO admin_login_history VALUES("107","1","1","2024-05-11 13:57:20");
INSERT INTO admin_login_history VALUES("108","1","1","2024-05-11 14:04:27");
INSERT INTO admin_login_history VALUES("109","1","1","2024-05-11 14:05:08");
INSERT INTO admin_login_history VALUES("110","1","1","2024-05-15 15:29:06");
INSERT INTO admin_login_history VALUES("111","1","1","2024-05-18 09:19:24");
INSERT INTO admin_login_history VALUES("112","1","1","2024-05-18 11:26:28");
INSERT INTO admin_login_history VALUES("113","1","1","2024-05-18 14:48:23");
INSERT INTO admin_login_history VALUES("114","1","1","2024-05-18 14:50:47");
INSERT INTO admin_login_history VALUES("115","1","1","2024-05-23 10:30:52");
INSERT INTO admin_login_history VALUES("116","1","1","2024-05-23 11:07:42");
INSERT INTO admin_login_history VALUES("117","1","1","2024-05-24 14:37:44");
INSERT INTO admin_login_history VALUES("118","1","1","2024-06-05 10:04:16");
INSERT INTO admin_login_history VALUES("119","1","1","2024-06-06 09:48:02");
INSERT INTO admin_login_history VALUES("120","1","1","2024-06-06 16:52:55");
INSERT INTO admin_login_history VALUES("121","1","1","2024-06-08 10:17:27");
INSERT INTO admin_login_history VALUES("122","1","1","2024-06-17 11:39:48");
INSERT INTO admin_login_history VALUES("123","1","1","2024-06-17 14:02:29");
INSERT INTO admin_login_history VALUES("124","1","1","2024-06-20 10:00:59");
INSERT INTO admin_login_history VALUES("125","1","1","2024-06-21 09:45:20");
INSERT INTO admin_login_history VALUES("126","1","1","2024-06-22 09:14:43");
INSERT INTO admin_login_history VALUES("127","1","1","2024-06-22 09:14:46");
INSERT INTO admin_login_history VALUES("128","1","1","2024-06-24 08:39:45");
INSERT INTO admin_login_history VALUES("129","1","1","2024-06-25 11:58:26");
INSERT INTO admin_login_history VALUES("130","1","1","2024-06-26 09:36:35");
INSERT INTO admin_login_history VALUES("131","1","1","2024-06-28 11:07:25");
INSERT INTO admin_login_history VALUES("132","1","1","2024-06-28 13:37:16");
INSERT INTO admin_login_history VALUES("133","1","1","2024-06-29 09:51:48");
INSERT INTO admin_login_history VALUES("134","1","1","2024-07-01 14:47:49");
INSERT INTO admin_login_history VALUES("135","1","1","2024-07-02 11:33:08");
INSERT INTO admin_login_history VALUES("136","1","1","2024-07-03 12:49:59");
INSERT INTO admin_login_history VALUES("137","1","1","2024-07-03 12:49:59");
INSERT INTO admin_login_history VALUES("138","1","1","2024-07-04 09:51:55");
INSERT INTO admin_login_history VALUES("139","1","1","2024-07-04 14:56:23");
INSERT INTO admin_login_history VALUES("140","1","1","2024-07-05 09:24:43");
INSERT INTO admin_login_history VALUES("141","1","1","2024-07-05 14:03:52");
INSERT INTO admin_login_history VALUES("142","1","1","2024-07-08 09:26:36");
INSERT INTO admin_login_history VALUES("143","1","1","2024-07-09 13:40:34");
INSERT INTO admin_login_history VALUES("144","1","1","2024-07-11 10:30:35");
INSERT INTO admin_login_history VALUES("145","1","1","2024-07-12 10:35:15");
INSERT INTO admin_login_history VALUES("146","1","1","2024-07-17 13:31:46");
INSERT INTO admin_login_history VALUES("147","1","1","2024-07-18 09:58:36");
INSERT INTO admin_login_history VALUES("148","1","1","2024-07-19 10:50:22");
INSERT INTO admin_login_history VALUES("149","1","1","2024-07-20 12:04:24");
INSERT INTO admin_login_history VALUES("150","1","1","2024-07-22 10:34:42");
INSERT INTO admin_login_history VALUES("151","1","1","2024-07-22 14:12:13");
INSERT INTO admin_login_history VALUES("152","1","1","2024-07-22 16:22:54");
INSERT INTO admin_login_history VALUES("153","1","1","2024-07-23 11:44:58");
INSERT INTO admin_login_history VALUES("154","1","1","2024-07-24 08:49:06");
INSERT INTO admin_login_history VALUES("155","1","1","2024-07-24 14:00:29");
INSERT INTO admin_login_history VALUES("156","1","1","2024-07-25 09:30:20");
INSERT INTO admin_login_history VALUES("157","1","1","2024-07-25 14:29:51");
INSERT INTO admin_login_history VALUES("158","1","1","2024-07-27 10:53:05");
INSERT INTO admin_login_history VALUES("159","1","1","2024-07-29 15:45:10");
INSERT INTO admin_login_history VALUES("160","1","1","2024-08-06 11:11:49");
INSERT INTO admin_login_history VALUES("161","1","1","2024-08-06 15:58:28");
INSERT INTO admin_login_history VALUES("162","1","1","2024-08-07 09:09:56");
INSERT INTO admin_login_history VALUES("163","1","1","2024-08-07 15:42:25");
INSERT INTO admin_login_history VALUES("164","1","1","2024-08-08 10:03:17");
INSERT INTO admin_login_history VALUES("165","1","1","2024-08-09 10:35:11");
INSERT INTO admin_login_history VALUES("166","1","1","2024-08-09 12:38:38");
INSERT INTO admin_login_history VALUES("167","1","1","2024-08-12 10:51:16");
INSERT INTO admin_login_history VALUES("168","1","1","2024-08-13 11:16:24");
INSERT INTO admin_login_history VALUES("169","1","1","2024-08-14 11:23:13");
INSERT INTO admin_login_history VALUES("170","1","1","2024-08-16 12:02:57");
INSERT INTO admin_login_history VALUES("171","1","1","2024-08-17 10:48:25");
INSERT INTO admin_login_history VALUES("172","1","1","2024-08-19 10:36:34");
INSERT INTO admin_login_history VALUES("173","1","1","2024-08-20 10:49:31");
INSERT INTO admin_login_history VALUES("174","1","1","2024-08-20 18:33:23");
INSERT INTO admin_login_history VALUES("175","1","1","2024-08-21 09:29:08");
INSERT INTO admin_login_history VALUES("176","1","1","2024-08-22 10:00:15");
INSERT INTO admin_login_history VALUES("177","1","1","2024-08-22 14:22:05");
INSERT INTO admin_login_history VALUES("178","1","1","2024-08-22 21:04:38");
INSERT INTO admin_login_history VALUES("179","1","1","2024-08-23 10:24:17");
INSERT INTO admin_login_history VALUES("180","1","1","2024-08-23 13:55:35");
INSERT INTO admin_login_history VALUES("181","1","1","2024-08-23 16:41:00");
INSERT INTO admin_login_history VALUES("182","1","1","2024-08-24 10:29:45");
INSERT INTO admin_login_history VALUES("183","1","1","2024-08-24 14:20:06");
INSERT INTO admin_login_history VALUES("184","1","1","2024-08-26 10:32:13");
INSERT INTO admin_login_history VALUES("185","1","1","2024-08-26 14:37:12");
INSERT INTO admin_login_history VALUES("186","1","1","2024-09-10 21:55:16");
INSERT INTO admin_login_history VALUES("187","1","1","2024-10-02 09:30:06");
INSERT INTO admin_login_history VALUES("188","1","1","2024-10-06 13:30:13");
INSERT INTO admin_login_history VALUES("189","1","1","2024-10-06 16:34:14");
INSERT INTO admin_login_history VALUES("190","1","1","2024-10-06 19:05:24");
INSERT INTO admin_login_history VALUES("191","1","1","2024-10-13 17:03:08");
INSERT INTO admin_login_history VALUES("192","1","1","2024-10-20 15:18:34");
INSERT INTO admin_login_history VALUES("193","1","1","2024-12-08 18:47:36");
INSERT INTO admin_login_history VALUES("194","1","1","2024-12-22 16:01:20");
INSERT INTO admin_login_history VALUES("195","1","1","2024-12-22 20:01:36");
INSERT INTO admin_login_history VALUES("196","1","1","2024-12-23 09:41:48");
INSERT INTO admin_login_history VALUES("197","1","1","2025-01-15 22:57:14");
INSERT INTO admin_login_history VALUES("198","1","1","2025-01-17 22:09:21");
INSERT INTO admin_login_history VALUES("199","1","1","2025-01-19 19:25:47");
INSERT INTO admin_login_history VALUES("200","1","1","2025-01-19 19:48:42");
INSERT INTO admin_login_history VALUES("201","1","1","2025-01-19 22:46:04");
INSERT INTO admin_login_history VALUES("202","1","1","2025-01-19 22:46:04");
INSERT INTO admin_login_history VALUES("203","1","1","2025-01-21 21:20:16");
INSERT INTO admin_login_history VALUES("204","1","1","2025-01-24 13:00:16");
INSERT INTO admin_login_history VALUES("205","1","1","2025-01-26 19:11:47");
INSERT INTO admin_login_history VALUES("206","1","1","2025-01-27 22:12:29");
INSERT INTO admin_login_history VALUES("207","1","1","2025-01-28 21:19:12");
INSERT INTO admin_login_history VALUES("208","1","1","2025-01-28 21:19:59");
INSERT INTO admin_login_history VALUES("209","1","1","2025-01-29 20:36:31");
INSERT INTO admin_login_history VALUES("210","1","1","2025-01-30 20:48:57");
INSERT INTO admin_login_history VALUES("211","1","1","2025-02-01 13:00:15");
INSERT INTO admin_login_history VALUES("212","1","1","2025-02-01 17:17:43");
INSERT INTO admin_login_history VALUES("213","1","1","2025-02-01 17:56:45");
INSERT INTO admin_login_history VALUES("214","1","1","2025-02-01 21:42:45");
INSERT INTO admin_login_history VALUES("215","1","1","2025-02-02 17:49:09");
INSERT INTO admin_login_history VALUES("216","1","1","2025-02-02 17:49:13");
INSERT INTO admin_login_history VALUES("217","8","1","2025-02-02 17:54:38");
INSERT INTO admin_login_history VALUES("218","1","1","2025-02-02 17:55:27");
INSERT INTO admin_login_history VALUES("219","8","1","2025-02-02 18:20:44");
INSERT INTO admin_login_history VALUES("220","1","1","2025-02-05 22:24:22");



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
  `softDelete` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`categoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

INSERT INTO categories VALUES("1","Laptops","","0","1","2","0","2","2024-02-28 03:03:00","2024-02-28 08:33:00","0","1");
INSERT INTO categories VALUES("2","Mobile","","0","1","2","0","2","2024-02-28 03:18:33","2024-02-28 08:48:33","0","1");



DROP TABLE IF EXISTS cities;

CREATE TABLE `cities` (
  `cityId` int(11) NOT NULL AUTO_INCREMENT,
  `heading` varchar(50) NOT NULL,
  `stateId` int(11) NOT NULL,
  `countryId` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`cityId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO cities VALUES("1","Gurgaon","17","1","1");



DROP TABLE IF EXISTS codes;

CREATE TABLE `codes` (
  `codeId` int(11) NOT NULL AUTO_INCREMENT,
  `alphabat` varchar(10) NOT NULL,
  `number` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
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



DROP TABLE IF EXISTS comment_master;

CREATE TABLE `comment_master` (
  `commentMasterId` int(11) NOT NULL AUTO_INCREMENT,
  `comment` varchar(255) NOT NULL,
  `storeId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`commentMasterId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO comment_master VALUES("1","Testing Comment One","1","1","1");
INSERT INTO comment_master VALUES("2","Testting Comment Two","1","1","1");



DROP TABLE IF EXISTS contacts;

CREATE TABLE `contacts` (
  `contactId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` mediumtext NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`contactId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;




DROP TABLE IF EXISTS countries;

CREATE TABLE `countries` (
  `countryId` int(11) NOT NULL AUTO_INCREMENT,
  `heading` varchar(100) NOT NULL,
  `sortOrder` int(11) NOT NULL,
  `softDelete` int(11) NOT NULL DEFAULT 0,
  `updatedBy` int(11) NOT NULL,
  `insertedBy` int(11) NOT NULL DEFAULT 0,
  `dateUpdated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL,
  PRIMARY KEY (`countryId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO countries VALUES("1","India","0","0","0","2","2024-02-24 07:42:09","2024-02-24 13:12:09","1");
INSERT INTO countries VALUES("2","USA","0","0","0","2","2024-07-25 10:37:01","2024-02-25 13:12:09","1");
INSERT INTO countries VALUES("3","Canada","0","0","0","2","2024-02-24 07:42:09","2024-02-24 13:12:09","1");



DROP TABLE IF EXISTS currencies;

CREATE TABLE `currencies` (
  `currencyId` int(11) NOT NULL AUTO_INCREMENT,
  `heading` varchar(50) NOT NULL,
  `code` varchar(11) NOT NULL,
  `symbol` varchar(11) NOT NULL,
  `storeId` int(11) NOT NULL DEFAULT 0,
  `userId` int(11) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`currencyId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO currencies VALUES("1","Indian Rupees","INR","?","1","1","1");
INSERT INTO currencies VALUES("2","United States Dollar","USD","$","1","1","1");



DROP TABLE IF EXISTS customer_amount_paid;

CREATE TABLE `customer_amount_paid` (
  `customerAmountPaidId` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) NOT NULL,
  `customerId` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `paymentId` int(11) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `storeId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`customerAmountPaidId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO customer_amount_paid VALUES("1","9","1","1000","8","","1","1","1","2024-06-29 12:44:50");
INSERT INTO customer_amount_paid VALUES("2","9","1","1000","8","Given","1","1","1","2024-06-29 12:46:00");
INSERT INTO customer_amount_paid VALUES("3","9","1","1000","8","ghjghj","1","1","1","2024-06-29 12:46:54");
INSERT INTO customer_amount_paid VALUES("4","9","1","1000","8","fghdfgh","1","1","1","2024-06-29 12:47:41");
INSERT INTO customer_amount_paid VALUES("5","9","1","1000","8","kl;","1","1","1","2024-06-29 12:50:20");
INSERT INTO customer_amount_paid VALUES("6","9","0","10000","8","fghfhgf","1","1","1","2024-06-29 12:52:41");
INSERT INTO customer_amount_paid VALUES("7","9","0","100","8","jkhlkl","1","1","1","2024-06-29 12:57:20");
INSERT INTO customer_amount_paid VALUES("8","9","0","500","8","jkhl","1","1","1","2024-06-29 13:01:16");
INSERT INTO customer_amount_paid VALUES("9","9","0","123","8","asd","1","1","1","2024-06-29 13:05:03");
INSERT INTO customer_amount_paid VALUES("10","9","0","100","8","jhlk","1","1","1","2024-06-29 13:07:33");
INSERT INTO customer_amount_paid VALUES("11","9","0","500","8","asdasd","1","1","1","2024-06-29 13:09:50");
INSERT INTO customer_amount_paid VALUES("12","9","0","342","8","fdgd","1","1","1","2024-06-29 13:10:26");
INSERT INTO customer_amount_paid VALUES("13","10","1","50000","8","Bahot dino se  maang rha tha","1","1","1","2024-06-29 13:59:55");



DROP TABLE IF EXISTS customer_group;

CREATE TABLE `customer_group` (
  `customerGroupId` int(11) NOT NULL AUTO_INCREMENT,
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
  `status` int(11) NOT NULL DEFAULT 1,
  `storeId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `softDelete` int(11) NOT NULL,
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`customerLedgerRewardId`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

INSERT INTO customer_ledger_reward VALUES("1","46","1","5785","Credit","9","Credit Added","","1","1","1","0","2024-08-24 16:07:46");
INSERT INTO customer_ledger_reward VALUES("2","47","1","5785","Credit","9","Credit Added","","1","1","1","0","2024-08-24 16:10:37");
INSERT INTO customer_ledger_reward VALUES("3","51","1","5835","Credit","8","Credit Added","","1","1","1","0","2024-10-02 10:24:03");
INSERT INTO customer_ledger_reward VALUES("4","55","102","57802","Credit","8","Credit Added","","1","1","1","0","2024-10-20 17:13:12");
INSERT INTO customer_ledger_reward VALUES("5","71","1","21554","Credit","8","Credit Added","","1","1","1","0","2025-01-15 23:00:18");
INSERT INTO customer_ledger_reward VALUES("6","72","1","14524","Credit","8","Credit Added","","1","1","1","0","2025-01-15 23:00:40");
INSERT INTO customer_ledger_reward VALUES("10","73","1","33798","Credit","8","Credit Added","","1","1","1","0","2025-01-17 22:36:41");
INSERT INTO customer_ledger_reward VALUES("15","74","1","50","Credit","8","Credit Added","","1","1","1","0","2025-01-17 22:58:40");
INSERT INTO customer_ledger_reward VALUES("16","75","1","50","Credit","8","Credit Added","","1","1","1","0","2025-01-17 22:59:12");
INSERT INTO customer_ledger_reward VALUES("17","76","1","50","Credit","8","Credit Added","","1","1","1","0","2025-01-17 23:00:47");
INSERT INTO customer_ledger_reward VALUES("18","78","1","50","Credit","8","Credit Added","","1","1","1","0","2025-01-17 23:04:53");
INSERT INTO customer_ledger_reward VALUES("21","77","1","15257","Credit","8","Credit Added","","1","1","1","0","2025-01-17 23:09:11");
INSERT INTO customer_ledger_reward VALUES("36","79","103","22864","Credit","8","Credit Added","","1","1","1","0","2025-01-19 21:03:04");
INSERT INTO customer_ledger_reward VALUES("37","80","103","50","Credit","8","Credit Added","","1","1","1","0","2025-01-19 21:03:25");
INSERT INTO customer_ledger_reward VALUES("38","81","103","50","Credit","8","Credit Added","","1","1","1","0","2025-01-19 21:03:52");
INSERT INTO customer_ledger_reward VALUES("39","82","103","50","Credit","8","Credit Added","","1","1","1","0","2025-01-19 23:01:30");
INSERT INTO customer_ledger_reward VALUES("41","83","103","50","Credit","8","Credit Added","","1","1","1","0","2025-01-21 21:27:40");
INSERT INTO customer_ledger_reward VALUES("42","84","103","6917","Credit","8","Credit Added","","1","1","1","0","2025-01-24 13:03:22");
INSERT INTO customer_ledger_reward VALUES("43","86","103","50","Credit","8","Credit Added","","1","1","3","0","2025-01-28 22:25:02");
INSERT INTO customer_ledger_reward VALUES("44","87","103","50","Credit","8","Credit Added","","1","1","2","0","2025-01-29 20:57:28");
INSERT INTO customer_ledger_reward VALUES("46","88","103","50","Credit","8","Credit Added","","1","1","1","0","2025-01-30 21:27:08");
INSERT INTO customer_ledger_reward VALUES("47","89","103","50","Credit","8","Credit Added","","1","1","1","0","2025-02-01 13:13:52");
INSERT INTO customer_ledger_reward VALUES("48","90","102","26241","Credit","8","Credit Added","","1","1","1","0","2025-02-01 13:18:06");
INSERT INTO customer_ledger_reward VALUES("50","92","1","6917","Credit","8","Credit Added","","1","1","1","0","2025-02-01 13:18:58");
INSERT INTO customer_ledger_reward VALUES("51","93","1","18091","Credit","8","Credit Added","","1","1","1","0","2025-02-01 13:19:22");
INSERT INTO customer_ledger_reward VALUES("55","94","1","63642","Credit","8","Credit Added","","1","1","1","0","2025-02-01 22:36:18");
INSERT INTO customer_ledger_reward VALUES("56","91","1","27564","Credit","8","Credit Added","","1","1","1","0","2025-02-01 22:37:15");
INSERT INTO customer_ledger_reward VALUES("59","95","103","18928","Credit","8","Credit Added","","1","1","1","0","2025-02-01 22:41:27");



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
  `status` int(11) NOT NULL DEFAULT 1,
  `storeId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `softDelete` int(11) NOT NULL,
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`customerLedgerId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

INSERT INTO customer_ledger_wallet VALUES("1","46","1","74045","Credit","9","Wallet Amount Used","","1","1","1","0","2024-08-24 16:07:47");
INSERT INTO customer_ledger_wallet VALUES("2","47","1","74045","Debit","9","Wallet Amount Used","","1","1","1","0","2024-08-24 16:10:38");



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
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`customerId`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

INSERT INTO customers VALUES("1","Walk In Customer","0000000000","","0","0","218952","1","1","17","1","KUJGHDKJF6758987","","","1","1","2","1","2025-02-01 22:37:15","0","1","2024-02-24 14:35:37");
INSERT INTO customers VALUES("102","Priyavrat Sehrawat","8285187287","pkv172019@gmail.com","0","0","84043","1","1","17","1","","","","1","1","2","1","2025-02-01 13:18:06","0","1","2024-02-24 14:35:37");
INSERT INTO customers VALUES("103","Suresh","9314077851","","0","0","49109","","","","","","","","1","1","1","0","2025-02-01 22:39:42","0","1","2025-01-17 23:24:24");



DROP TABLE IF EXISTS databasebackup;

CREATE TABLE `databasebackup` (
  `databaseBackupId` int(11) NOT NULL AUTO_INCREMENT,
  `backUpName` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`databaseBackupId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

INSERT INTO databasebackup VALUES("1","public/backup/databaseBackup_on_24-04-08_03_46_33.sql","Take backup","1","2024-04-08 09:16:33");



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
  `softDelete` int(11) NOT NULL DEFAULT 0,
  `updatedBy` int(11) NOT NULL,
  `insertedBy` int(11) NOT NULL,
  `dateUpdated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`employeeId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO employees VALUES("1","Ramesh","8595899103","","0","","1","1","0","0","1","2024-02-27 10:08:50","2024-02-27 15:38:50","1");
INSERT INTO employees VALUES("2","Suresh","8285187287","","0","","1","1","0","0","1","2024-02-27 10:09:19","2024-02-27 15:39:19","1");



DROP TABLE IF EXISTS expense_categories;

CREATE TABLE `expense_categories` (
  `expenseCategoryId` int(11) NOT NULL AUTO_INCREMENT,
  `heading` varchar(50) NOT NULL,
  `storeId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`expenseCategoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO expense_categories VALUES("1","Petrol/Diesel/Cng","1","1","1");
INSERT INTO expense_categories VALUES("2","Food","1","1","1");



DROP TABLE IF EXISTS expenses;

CREATE TABLE `expenses` (
  `expenseId` int(11) NOT NULL AUTO_INCREMENT,
  `heading` varchar(100) NOT NULL,
  `amount` int(11) NOT NULL,
  `vendorId` int(11) NOT NULL,
  `expenseCategoryId` int(11) NOT NULL,
  `relatedImage` varchar(1000) NOT NULL,
  `storeId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`expenseId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO expenses VALUES("1","CNG","900","0","1","[\"public\\/assets\\/uploads\\/ship_shop_default\\/893854759.png\",\"public\\/assets\\/uploads\\/ship_shop_default\\/905743940.jpg\"]","1","1","1","2024-04-30 10:28:43");
INSERT INTO expenses VALUES("2","Dosa","100","0","2","","1","1","1","2024-04-30 11:03:42");



DROP TABLE IF EXISTS filter_types;

CREATE TABLE `filter_types` (
  `fiterTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `heading` varchar(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`fiterTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

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
  `status` int(11) DEFAULT 1,
  PRIMARY KEY (`filterId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO filters VALUES("9","5","menus","parentId,menus","menus","menuId","menuHeading","Parent Id","autosuggestive","parentId","parentId select2","parentId","Parent Id","0,>0","Parent,Child","","","0","1","","12","","OR","1");
INSERT INTO filters VALUES("10","5","menus","menuHeading,menus","menus","menuId","menuHeading","Menu Heading","text","menuheading","menuheading","menuheading","Menu Heading","","","","","0","1","","3","","OR","1");
INSERT INTO filters VALUES("13","14","states","dateAdded,states","states","stateId","heading","Date Added","date","dateAdded","dateAdded","dateAdded","Date Added","","","","","0","1","","3","Yes","OR","1");



DROP TABLE IF EXISTS hotel_rooms;

CREATE TABLE `hotel_rooms` (
  `hotelRoomId` int(11) NOT NULL AUTO_INCREMENT,
  `roomNo` int(11) NOT NULL,
  `capacity` int(11) NOT NULL,
  `roomCharges` int(11) NOT NULL,
  `roomStatus` varchar(3) NOT NULL DEFAULT 'No',
  `image` varchar(255) NOT NULL,
  `relatedImages` varchar(500) NOT NULL,
  `storeId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`hotelRoomId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO hotel_rooms VALUES("1","101","2","100","No","","","1","1","1");
INSERT INTO hotel_rooms VALUES("2","102","4","200","No","","","1","1","1");
INSERT INTO hotel_rooms VALUES("3","103","2","300","No","","","1","1","1");
INSERT INTO hotel_rooms VALUES("4","104","4","400","No","","","1","1","1");
INSERT INTO hotel_rooms VALUES("5","105","2","500","No","","","1","1","1");
INSERT INTO hotel_rooms VALUES("6","106","4","600","No","","","1","1","1");



DROP TABLE IF EXISTS image_manager;

CREATE TABLE `image_manager` (
  `imageManagerId` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`imageManagerId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO image_manager VALUES("1","public/assets/uploads/970564488.png","1");
INSERT INTO image_manager VALUES("2","public/assets/uploads/ship_shop_pos_default/242791464.gif","1");
INSERT INTO image_manager VALUES("3","public/assets/uploads/ship_shop_pos_default/198310047.gif","1");



DROP TABLE IF EXISTS inner_banner;

CREATE TABLE `inner_banner` (
  `innerBannerId` int(11) NOT NULL AUTO_INCREMENT,
  `page` varchar(20) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
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
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`invoiceTemplateId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO invoice_template VALUES("1","A4 Template 1","PHRpdGxlPnt7V0VCU0lURV9OQU1FfX08L3RpdGxlPjxtZXRhIG5hbWU9InZpZXdwb3J0IiBjb250ZW50PSJ3aWR0aD1kZXZpY2Utd2lkdGgsIGluaXRpYWwtc2NhbGU9MS4wIj48bWV0YSBjaGFyc2V0PSJVVEYtOCI+DQo8bGluayBocmVmPSJ7e1VSTH19L2JhY2tlbmQvaW52b2ljZS9hc3NldHMvY3NzL2Jvb3RzdHJhcC5taW4uY3NzIiByZWw9InN0eWxlc2hlZXQiIHR5cGU9InRleHQvY3NzIiAvPg0KPGxpbmsgaHJlZj0ie3tVUkx9fS9iYWNrZW5kL2ludm9pY2UvYXNzZXRzL2ZvbnRzL2ZvbnQtYXdlc29tZS9jc3MvZm9udC1hd2Vzb21lLm1pbi5jc3MiIHJlbD0ic3R5bGVzaGVldCIgdHlwZT0idGV4dC9jc3MiIC8+DQo8bGluayBocmVmPSJ7e1VSTH19L2JhY2tlbmQvaW52b2ljZS9hc3NldHMvaW1nL2Zhdmljb24uaWNvIiByZWw9InNob3J0Y3V0IGljb24iIHR5cGU9ImltYWdlL3gtaWNvbiIgLz4NCjxsaW5rIGNyb3Nzb3JpZ2luPSIiIGhyZWY9Imh0dHBzOi8vZm9udHMuZ3N0YXRpYy5jb20iIHJlbD0icHJlY29ubmVjdCIgLz4NCjxsaW5rIGhyZWY9Imh0dHBzOi8vZm9udHMuZ29vZ2xlYXBpcy5jb20vY3NzP2ZhbWlseT1Qb3BwaW5zOjEwMCwyMDAsMzAwLDQwMCw1MDAsNjAwLDcwMCw4MDAsOTAwIiByZWw9InN0eWxlc2hlZXQiIHR5cGU9InRleHQvY3NzIiAvPg0KPGxpbmsgaHJlZj0ie3tVUkx9fS9iYWNrZW5kL2ludm9pY2UvYXNzZXRzL2Nzcy9zdHlsZS5jc3MiIHJlbD0ic3R5bGVzaGVldCIgdHlwZT0idGV4dC9jc3MiIC8+DQo8ZGl2IGNsYXNzPSJpbnZvaWNlLTEgaW52b2ljZS1jb250ZW50Ij4NCjxkaXYgY2xhc3M9ImNvbnRhaW5lciI+DQo8ZGl2IGNsYXNzPSJyb3ciPg0KPGRpdiBjbGFzcz0iY29sLWxnLTEyIj4NCjxkaXYgY2xhc3M9Imludm9pY2UtaW5uZXIgY2xlYXJmaXgiPg0KPGRpdiBjbGFzcz0iaW52b2ljZS1pbmZvIGNsZWFyZml4IiBpZD0iaW52b2ljZV93cmFwcGVyIj4NCjxkaXYgY2xhc3M9Imludm9pY2UtaGVhZGFyIj4NCjxkaXYgY2xhc3M9InJvdyBnLTAiPg0KPGRpdiBjbGFzcz0iY29sLXNtLTYiPg0KPGRpdiBjbGFzcz0iaW52b2ljZS1sb2dvIj4NCjxkaXYgY2xhc3M9ImxvZ28iPjxpbWcgYWx0PSJsb2dvIiBzcmM9Int7VVJMfX0ve3tXRUJTSVRFX0xPR099fSIgLz48L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQoNCjxkaXYgY2xhc3M9ImNvbC1zbS02IGludm9pY2UtaWQiPg0KPGRpdiBjbGFzcz0iaW5mbyI+DQo8aDEgY2xhc3M9ImNvbG9yLXdoaXRlIGludi1oZWFkZXItMSI+SW52b2ljZTwvaDE+DQoNCjxwIGNsYXNzPSJjb2xvci13aGl0ZSBtYi0xIj5JbnZvaWNlIE51bWJlciA8c3Bhbj57e0lOVk9JQ0VfTlVNQkVSfX08L3NwYW4+PC9wPg0KDQo8cCBjbGFzcz0iY29sb3Itd2hpdGUgbWItMCI+SW52b2ljZSBEYXRlIDxzcGFuPnt7SU5WT0lDRV9EQVRFfX08L3NwYW4+PC9wPg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQoNCjxkaXYgY2xhc3M9Imludm9pY2UtdG9wIj4NCjxkaXYgY2xhc3M9InJvdyI+DQo8ZGl2IGNsYXNzPSJjb2wtc20tNiI+DQo8ZGl2IGNsYXNzPSJpbnZvaWNlLW51bWJlciBtYi0zMCI+DQo8aDQgY2xhc3M9Imludi10aXRsZS0xIj5JbnZvaWNlIFRvPC9oND4NCg0KPGgyIGNsYXNzPSJuYW1lIG1iLTEwIj57e0NVU1RPTUVSX05BTUV9fTwvaDI+DQp7e0NVU1RPTUVSX01PQklMRX19PGJyIC8+DQp7e0NVU1RPTUVSX0VNQUlMfX08YnIgLz4NCnt7Uk9PTV9OT319DQp7e0JBTEFOQ0VfUkVXQVJEX1BPSU5UfX0NCjxkaXYgY2xhc3M9ImxseXB2anB2bG8iPg0KPGg0IGNsYXNzPSJpbnYtdGl0bGUtMSI+RW1wbG95ZWU8L2g0Pg0KDQo8cD57e0VNUExPWUVFTkFNRX19PC9wPg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KDQo8ZGl2IGNsYXNzPSJjb2wtc20tNiI+DQo8ZGl2IGNsYXNzPSJpbnZvaWNlLW51bWJlciBtYi0zMCI+DQo8ZGl2IGNsYXNzPSJpbnZvaWNlLW51bWJlci1pbm5lciI+DQo8aDQgY2xhc3M9Imludi10aXRsZS0xIj5JbnZvaWNlIEZyb208L2g0Pg0KDQo8aDIgY2xhc3M9Im5hbWUgbWItMTAiPnt7U1RPUkVfTkFNRX19PC9oMj4NCg0KPHAgY2xhc3M9Imludm8tYWRkci0xIj57e1NUT1JFX0FERFJFU1N9fTxiciAvPg0Ke3tTVE9SRV9NT0JJTEV9fTxiciAvPg0Ke3tTVE9SRV9FTUFJTH19PC9wPg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCg0KPGRpdiBjbGFzcz0iaW52b2ljZS1jZW50ZXIiPg0KPGRpdiBjbGFzcz0idGFibGUtcmVzcG9uc2l2ZSI+e3tUQUJMRV9DT0RFfX08L2Rpdj4NCjwvZGl2Pg0KDQo8ZGl2IGNsYXNzPSJpbnZvaWNlLWNlbnRlciBld2h5aGp2emhiIj4NCjxoMyBjbGFzcz0iaW52LXRpdGxlLTEiPkNvbW1lbnQ8L2gzPg0Ke3tDT01NRU5UfX08L2Rpdj4NCg0KPGRpdiBjbGFzcz0iaW52b2ljZS1ib3R0b20iPg0KPGRpdiBjbGFzcz0icm93Ij4NCjxkaXYgY2xhc3M9ImNvbC1sZy02IGNvbC1tZC04IGNvbC1zbS03Ij4NCjxkaXYgY2xhc3M9Im1iLTMwIGRlYXItY2xpZW50Ij4NCjxoMyBjbGFzcz0iaW52LXRpdGxlLTEiPlRlcm1zICZhbXA7IENvbmRpdGlvbnM8L2gzPg0KDQo8cD57e1NUT1JFX1RFUk1TfX08L3A+DQo8L2Rpdj4NCjwvZGl2Pg0KDQo8ZGl2IGNsYXNzPSJjb2wtbGctNiBjb2wtbWQtNCBjb2wtc20tNSI+DQo8ZGl2IGNsYXNzPSJtYi0zMCBwYXltZW50LW1ldGhvZCI+DQo8aDMgY2xhc3M9Imludi10aXRsZS0xIiBzdHlsZT0idGV4dC1hbGlnbjpyaWdodCI+UGF5bWVudCBNZXRob2Q8L2gzPg0KDQo8dWwgY2xhc3M9InBheW1lbnQtbWV0aG9kLWxpc3QtMSB0ZXh0LTE0Ij4NCgk8bGkgc3R5bGU9InRleHQtYWxpZ246cmlnaHQ7Zm9udC13ZWlnaHQ6Ym9sZCI+e3tPUkRFUl9QQVlNRU5UX01FVEhPRH19PC9saT4NCgk8bGk+PHN0cm9uZz5BbW91bnQgSW4gV29yZHMgOiA8L3N0cm9uZz57e1BBWU1FTlRfSU5fV09SRFN9fTwvbGk+DQo8L3VsPg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQoNCjxkaXYgY2xhc3M9Imludm9pY2UtY29udGFjdCBjbGVhcmZpeCI+DQo8ZGl2IGNsYXNzPSJyb3cgZy0wIj4NCjxkaXYgY2xhc3M9ImNvbC1sZy05IGNvbC1tZC0xMSBjb2wtc20tMTIiPg0KPGRpdiBjbGFzcz0iY29udGFjdC1pbmZvIj48YSBocmVmPSJ0ZWw6KzU1LTRYWC02MzQtNzA3MSI+e3tTVE9SRV9NT0JJTEV9fTwvYT4gPGEgaHJlZj0idGVsOnt7U1RPUkVfRU1BSUx9fSI+e3tTVE9SRV9FTUFJTH19PC9hPiA8YSBjbGFzcz0ibXItMCBkLW5vbmUtNTgwIiBocmVmPSJ0ZWw6aW5mb0B0aGVtZXZlc3NlbC5jb20iPnt7U1RPUkVfQUREUkVTU319PC9hPjwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQoNCjxkaXYgY2xhc3M9Imludm9pY2UtYnRuLXNlY3Rpb24gY2xlYXJmaXggZC1wcmludC1ub25lIj48YSBjbGFzcz0iYnRuIGJ0bi1sZyBidG4tcHJpbnQiIGhyZWY9ImphdmFzY3JpcHQ6d2luZG93LnByaW50KCkiPlByaW50IEludm9pY2UgPC9hPiA8YSBjbGFzcz0iYnRuIGJ0bi1sZyBidG4tZG93bmxvYWQgYnRuLXRoZW1lIiBpZD0iaW52b2ljZV9kb3dubG9hZF9idG4iPiBEb3dubG9hZCBJbnZvaWNlIDwvYT48L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8c2NyaXB0IHNyYz0ie3tVUkx9fS9iYWNrZW5kL2ludm9pY2UvYXNzZXRzL2pzL2pxdWVyeS5taW4uanMiPjwvc2NyaXB0PjxzY3JpcHQgc3JjPSJ7e1VSTH19L2JhY2tlbmQvaW52b2ljZS9hc3NldHMvanMvanNwZGYubWluLmpzIj48L3NjcmlwdD48c2NyaXB0IHNyYz0ie3tVUkx9fS9iYWNrZW5kL2ludm9pY2UvYXNzZXRzL2pzL2h0bWwyY2FudmFzLmpzIj48L3NjcmlwdD48c2NyaXB0IHNyYz0ie3tVUkx9fS9iYWNrZW5kL2ludm9pY2UvYXNzZXRzL2pzL2FwcC5qcyI+PC9zY3JpcHQ+","PHRhYmxlIGNsYXNzPSJ0YWJsZSBtYi0wIHRhYmxlLXN0cmlwZWQgaW52b2ljZS10YWJsZSI+DQogICA8dGhlYWQgY2xhc3M9ImJnLWFjdGl2ZSI+DQogICAgICA8dHIgY2xhc3M9InRyIj4NCiAgICAgICAgIDx0aD5Oby48L3RoPg0KICAgICAgICAgPHRoIGNsYXNzPSJwbDAgdGV4dC1zdGFydCIgd2lkdGg9IjQwJSI+SXRlbSBEZXNjcmlwdGlvbjwvdGg+DQogICAgICAgICA8dGggY2xhc3M9InRleHQtY2VudGVyIj5QcmljZTwvdGg+DQogICAgICAgICA8dGggY2xhc3M9InRleHQtY2VudGVyIj5RdWFudGl0eTwvdGg+DQogICAgICAgICA8dGggY2xhc3M9InRleHQtY2VudGVyIj5EaXNjb3VudDwvdGg+DQogICAgICAgICA8dGggY2xhc3M9InRleHQtY2VudGVyIj5UYXg8L3RoPg0KICAgICAgICAgPHRoIGNsYXNzPSJ0ZXh0LWVuZCI+VG90YWw8L3RoPg0KICAgICAgPC90cj4NCiAgIDwvdGhlYWQ+DQogICA8dGJvZHk+DQogICAgICB7e0xPT1BfVFJfQ09ERX19DQogICAgICB7e1NVQl9UT1RBTF9UUl9MT09QfX0NCiAgIDwvdGJvZHk+DQo8L3RhYmxlPg==","PHRyIGNsYXNzPSJ0ciI+DQogICA8dGQ+DQogICAgICA8ZGl2IGNsYXNzPSJpdGVtLWRlc2MtMSI+PHNwYW4+e3tTTk99fTwvc3Bhbj48L2Rpdj4NCiAgIDwvdGQ+DQogICA8dGQgY2xhc3M9InBsMCIgd2lkdGg9IjQwJSI+e3tQUk9EVUNUX05BTUV9fTxkaXYgY2xhc3M9ImR4cXpremFlZnogZHhxemt6YWVment7SVZBTFVFfX0iPk1vZGVsIDoge3tQUk9EVUNUX01PREVMfX08L2Rpdj48ZGl2IGNsYXNzPSJtZm9wZnloa2ZiIG1mb3BmeWhrZmJ7e0lWQUxVRX19Ij5CYXJjb2RlIDoge3tQUk9EVUNUX0JBUkNPREV9fTwvZGl2PjxkaXYgY2xhc3M9InBpdGxmYmRucmkgcGl0bGZiZG5yaXt7SVZBTFVFfX0iPkhTTiBDb2RlOiB7e0hTTl9DT0RFfX08L2Rpdj48ZGl2IGNsYXNzPSJqZGlvY3lnbGVyIGpkaW9jeWdsZXJ7e0lWQUxVRX19Ij5FeHRyYSBJbmZvcm1hdGlvbjoge3tQUk9EVUNUX0VYVFJBX0lORk9STUFUSU9OfX08L2Rpdj48L3RkPg0KICAgPHRkIGNsYXNzPSJ0ZXh0LWNlbnRlciI+e3tQUk9EVUNUX1BSSUNFfX08L3RkPg0KICAgPHRkIGNsYXNzPSJ0ZXh0LWNlbnRlciAiPnt7UFJPRFVDVF9RVUFOVElUWX19PC90ZD4NCiAgIDx0ZCBjbGFzcz0idGV4dC1jZW50ZXIiPnt7UFJPRFVDVF9ESVNDT1VOVH19PGJyPjxzcGFuPnt7UFJPRFVDVF9ESVNDT1VOVF9WQUxVRX19PC9zcGFuPjwvdGQ+DQogICA8dGQgY2xhc3M9InRleHQtY2VudGVyIj57e1BST0RVQ1RfVEFYX0hFQURJTkd9fTxicj48c3Bhbj57e1BST0RVQ1RfVEFYfX08L3NwYW4+PGJyPjxzcGFuPnt7UFJPRFVDVF9UQVhfVFlQRX19PC9zcGFuPjwvdGQ+DQogICA8dGQgY2xhc3M9InRleHQtZW5kIj48c3Ryb25nPnt7UFJPRFVDVF9UT1RBTH19PC9zdHJvbmc+PC90ZD4NCjwvdHI+","LmR4cXpremFlZnosLm1mb3BmeWhrZmIsLmpkaW9jeWdsZXJ7DQogZm9udC1zaXplOjEycHg7DQpjb2xvcjojOTE5MTkxOw0KfQ0KIC5zeW1ib2w6OmJlZm9yZSB7DQogICAgICAgICBjb250ZW50OiAi4oK5IjsNCiAgICAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jazsNCiAgICAgICAgIG1hcmdpbi1yaWdodDogMnB4Ow0KICAgICAgICAgfQ0KLmNjZ2pkcnF6cmJfdG90YWwgdGR7DQpmb250LXNpemU6MTdweCAhaW1wb3J0YW50Ow0KfQ0KLmludm9pY2UtMSAuaW52b2ljZS1pZCAuaW5mbyB7DQogICAgbWF4LXdpZHRoOiAzNTBweCAhaW1wb3J0YW50Ow0KICAgIG1hcmdpbjogMCA1MHB4IDAgYXV0bzsNCiAgICBwYWRkaW5nOiAzNHB4IDA7DQp9DQoucGF5bWVudC1tZXRob2QgbGl7DQp0ZXh0LWFsaWduOnJpZ2h0Ow0KfQ==","PHRyIGNsYXNzPSJ0cjIgY2NnamRycXpyYl97e0tFWUNMQVNTfX0iPg0KPHRkPjwvdGQ+DQo8dGQ+PC90ZD4NCiAgIDx0ZCBjbGFzcz0idGV4dC1yaWdodCIgY29sc3Bhbj0iMiI+PHN0cm9uZz57e0tFWX19PC9zdHJvbmc+PC90ZD4NCiAgIDx0ZCBjbGFzcz0idGV4dC1lbmQiIGNvbHNwYW49IjMiPjxzdHJvbmc+e3tWQUxVRX19PC9zdHJvbmc+PC90ZD4NCjwvdHI+","1");
INSERT INTO invoice_template VALUES("2","Thermal Invoice 1","PG1ldGEgaHR0cC1lcXVpdj0iQ29udGVudC1UeXBlIiBjb250ZW50PSJ0ZXh0L2h0bWw7IGNoYXJzZXQ9VVRGLTgiPjx0aXRsZT57e1dFQlNJVEVfTkFNRX19PC90aXRsZT4NCjxsaW5rIGhyZWY9Int7VVJMfX0vYmFja2VuZC9pbnZvaWNlL3RoZXJtYWwvYm9vdHN0cmFwLm1pbi5jc3MiIHJlbD0ic3R5bGVzaGVldCIgdHlwZT0idGV4dC9jc3MiIC8+DQo8bGluayBocmVmPSJ7e1VSTH19L2JhY2tlbmQvaW52b2ljZS90aGVybWFsL3NpemVfNTZtbS5jc3MiIG1lZGlhPSJhbGwiIHJlbD0ic3R5bGVzaGVldCIgLz4NCjxsaW5rIGhyZWY9Int7VVJMfX0vYmFja2VuZC9pbnZvaWNlL3RoZXJtYWwvcHJpbnRfYmlsbC5jc3MiIG1lZGlhPSJhbGwiIHJlbD0ic3R5bGVzaGVldCIgLz4NCjxkaXYgaWQ9IndyYXBwZXIiIHN0eWxlPSJwYWRkaW5nLXRvcDoycHgiPg0KPGRpdiBpZD0icmVjZWlwdERhdGEiPg0KPGRpdiBpZD0icmVjZWlwdC1kYXRhIj4NCjxkaXYgY2xhc3M9InRleHQtY2VudGVyIj48aW1nIHNyYz0ie3tVUkx9fS97e1dFQlNJVEVfTE9HT319IiBzdHlsZT0iaGVpZ2h0OiAyMHB4O21hcmdpbjphdXRvO2Rpc3BsYXk6YmxvY2siIC8+PC9kaXY+DQoNCjxociAvPg0KPHRhYmxlIGNsYXNzPSJ0YWJsZSB0YWJsZS1jb25kZW5zZWQiPg0KCTx0Ym9keT4NCgkJPHRyPg0KCQkJPHRkPkNsaWVudCA6IHt7Q1VTVE9NRVJfTkFNRX19PC90ZD4NCgkJCTx0ZCBhbGlnbj0icmlnaHQiPkRhdGUgOiB7e0lOVk9JQ0VfREFURX19PC90ZD4NCgkJPC90cj4NCgkJPHRyPg0KCQkJPHRkIGNvbHNwYW49IjIiPk1vYmlsZSA6IHt7Q1VTVE9NRVJfTU9CSUxFfX08L3RkPg0KCQk8L3RyPg0KCQk8dHI+DQoJCQk8dGQgY29sc3Bhbj0iMiI+UGF5bWVudCBNb2RlIDoge3tPUkRFUl9QQVlNRU5UX01FVEhPRH19PC90ZD4NCgkJPC90cj4NCgkJPHRyPg0KCQkJPHRkIGNvbHNwYW49IjIiPk9yZGVyIElkIDoge3tJTlZPSUNFX05VTUJFUn19PC90ZD4NCgkJPC90cj4NCgk8L3Rib2R5Pg0KPC90YWJsZT4NCg0KPGRpdiBjbGFzcz0iaXJfY2xlYXIiPiZuYnNwOzwvZGl2Pg0Ke3tUQUJMRV9DT0RFfX08L2Rpdj4NCg0KPGRpdiBjbGFzcz0iaXJfY2xlYXIiPiZuYnNwOzwvZGl2Pg0KPC9kaXY+DQo8aW5wdXQgb25jbGljaz0icHJpbnREaXYoJ3JlY2VpcHREYXRhJykiIHN0eWxlPSJkaXNwbGF5OmJsb2NrO21hcmdpbjphdXRvO3BhZGRpbmc6MTBweDtiYWNrZ3JvdW5kOiMzNGI0ZWI7bWFyZ2luLXRvcDoxMHB4O2JvcmRlcjowcHg7Y29sb3I6d2hpdGU7d2lkdGg6MTUwcHg7IiB0eXBlPSJidXR0b24iIHZhbHVlPSJQUklOVCIgLz48L2Rpdj4NCg==","PHRhYmxlIGNsYXNzPSJ0YWJsZSB0YWJsZS1jb25kZW5zZWQiIHN0eWxlPSJtYXJnaW4tdG9wOjVweCI+DQogICA8dGhlYWQ+DQogICAgICA8dHI+DQogICAgICAgICA8dGg+Tm8uPC90aD4NCiAgICAgICAgIDx0aCBjbGFzcz0icGwwIHRleHQtc3RhcnQiIHdpZHRoPSI0MCUiPkl0ZW08L3RoPg0KICAgICAgICAgPHRoIGNsYXNzPSJ0ZXh0LWNlbnRlciI+UHJpY2U8L3RoPg0KICAgICAgICAgPHRoIGNsYXNzPSJ0ZXh0LWNlbnRlciI+UXVhbnRpdHk8L3RoPg0KICAgICAgICAgPHRoIGNsYXNzPSJ0ZXh0LWNlbnRlciI+RGlzY291bnQ8L3RoPg0KICAgICAgICAgPHRoIGNsYXNzPSJ0ZXh0LWNlbnRlciI+VGF4PC90aD4NCiAgICAgICAgIDx0aCBjbGFzcz0idGV4dC1lbmQiPlRvdGFsPC90aD4NCiAgICAgIDwvdHI+DQogICA8L3RoZWFkPg0KICAgPHRib2R5Pg0KICAgICAge3tMT09QX1RSX0NPREV9fQ0KICAgICAge3tTVUJfVE9UQUxfVFJfTE9PUH19DQogICA8L3Rib2R5Pg0KPC90YWJsZT4=","PHRyIGNsYXNzPSJib3JkZXJVcERvd24iPg0KICAgPHRkIGNsYXNzPSJuby1ib3JkZXIgYm9yZGVyLWJvdHRvbSI+e3tTTk99fTwvdGQ+DQogICA8dGQgY2xhc3M9Im5vLWJvcmRlciBib3JkZXItYm90dG9tIj4NCiAgICAgIHt7UFJPRFVDVF9OQU1FfX0NCiAgICAgIDxkaXYgY2xhc3M9ImR4cXpremFlZnogZHhxemt6YWVment7SVZBTFVFfX0iPk1vZGVsIDoge3tQUk9EVUNUX01PREVMfX08L2Rpdj4NCiAgICAgIDxkaXYgY2xhc3M9Im1mb3BmeWhrZmIgbWZvcGZ5aGtmYnt7SVZBTFVFfX0iPkJhcmNvZGUgOiB7e1BST0RVQ1RfQkFSQ09ERX19PC9kaXY+DQogICAgICA8ZGl2IGNsYXNzPSJqZGlvY3lnbGVyIGpkaW9jeWdsZXJ7e0lWQUxVRX19Ij5FeHRyYSBJbmZvcm1hdGlvbjoge3tQUk9EVUNUX0VYVFJBX0lORk9STUFUSU9OfX08L2Rpdj4NCiAgIDwvdGQ+DQogICA8dGQgYWxpZ249InJpZ2h0IiBjbGFzcz0ibm8tYm9yZGVyIGJvcmRlci1ib3R0b20iPnt7UFJPRFVDVF9QUklDRX19PC90ZD4NCiAgIDx0ZCBhbGlnbj0icmlnaHQiIGNsYXNzPSJuby1ib3JkZXIgYm9yZGVyLWJvdHRvbSI+e3tQUk9EVUNUX1FVQU5USVRZfX08L3RkPg0KICAgPHRkIGFsaWduPSJyaWdodCIgY2xhc3M9Im5vLWJvcmRlciBib3JkZXItYm90dG9tIj57e1BST0RVQ1RfRElTQ09VTlR9fTxicj48c3Bhbj57e1BST0RVQ1RfRElTQ09VTlRfVkFMVUV9fTwvc3Bhbj48L3RkPg0KICAgPHRkIGFsaWduPSJyaWdodCIgY2xhc3M9Im5vLWJvcmRlciBib3JkZXItYm90dG9tIHRleHQtcmlnaHQiPnt7UFJPRFVDVF9UQVhfSEVBRElOR319PGJyPjxzcGFuPnt7UFJPRFVDVF9UQVh9fTwvc3Bhbj48L3RkPg0KICAgPHRkIGFsaWduPSJyaWdodCIgY2xhc3M9Im5vLWJvcmRlciBib3JkZXItYm90dG9tIHRleHQtcmlnaHQiPnt7UFJPRFVDVF9UT1RBTH19PC90ZD4NCjwvdHI+","LmxtcXljb2djbm0gew0KICAgZm9udC1mYW1pbHk6ICdSb2JvdG8nLCBzYW5zLXNlcmlmOw0KfQ0KDQpib2R5IHsNCiAgIGZvbnQtd2VpZ2h0OiBib2xkOw0KICAgZm9udC1zaXplOiAxMnB4Ow0KICAgZm9udC1mYW1pbHk6ICdSb2JvdG8nLCBzYW5zLXNlcmlmOw0KfQ0KDQoudGFibGUgew0KICAgd2lkdGg6IDEwMCU7DQogICBtYXgtd2lkdGg6IDEwMCU7DQogICBtYXJnaW4tYm90dG9tOiAwcHg7DQp9DQoNCmgzIHsNCiAgIG1hcmdpbjogNXB4IDA7DQp9DQoNCi5oMywNCmgzIHsNCiAgIGZvbnQtc2l6ZTogMjRweDsNCn0NCg0KYiwNCnN0cm9uZyB7DQogICBmb250LXdlaWdodDogNzAwOw0KfQ0KDQp0YWJsZSB7DQogICBiYWNrZ3JvdW5kLWNvbG9yOiB0cmFuc3BhcmVudDsNCn0NCg0KdGFibGUgew0KICAgYm9yZGVyLXNwYWNpbmc6IDA7DQogICBib3JkZXItY29sbGFwc2U6IGNvbGxhcHNlOw0KfQ0KDQoudGFibGU+Y2FwdGlvbit0aGVhZD50cjpmaXJzdC1jaGlsZD50ZCwNCi50YWJsZT5jYXB0aW9uK3RoZWFkPnRyOmZpcnN0LWNoaWxkPnRoLA0KLnRhYmxlPmNvbGdyb3VwK3RoZWFkPnRyOmZpcnN0LWNoaWxkPnRkLA0KLnRhYmxlPmNvbGdyb3VwK3RoZWFkPnRyOmZpcnN0LWNoaWxkPnRoLA0KLnRhYmxlPnRoZWFkOmZpcnN0LWNoaWxkPnRyOmZpcnN0LWNoaWxkPnRkLA0KLnRhYmxlPnRoZWFkOmZpcnN0LWNoaWxkPnRyOmZpcnN0LWNoaWxkPnRoIHsNCiAgIGJvcmRlci10b3A6IDA7DQp9DQoNCi50YWJsZS1jb25kZW5zZWQ+dGJvZHk+dHI+dGQsDQoudGFibGUtY29uZGVuc2VkPnRib2R5PnRyPnRoLA0KLnRhYmxlLWNvbmRlbnNlZD50Zm9vdD50cj50ZCwNCi50YWJsZS1jb25kZW5zZWQ+dGZvb3Q+dHI+dGgsDQoudGFibGUtY29uZGVuc2VkPnRoZWFkPnRyPnRkLA0KLnRhYmxlLWNvbmRlbnNlZD50aGVhZD50cj50aCB7DQogICBwYWRkaW5nOiA1cHg7DQp9DQoNCi50YWJsZT50Ym9keT50cj50ZCwNCi50YWJsZT50Ym9keT50cj50aCwNCi50YWJsZT50Zm9vdD50cj50ZCwNCi50YWJsZT50Zm9vdD50cj50aCwNCi50YWJsZT50aGVhZD50cj50ZCwNCi50YWJsZT50aGVhZD50cj50aCB7DQogICBwYWRkaW5nOiAwcHg7DQogICBsaW5lLWhlaWdodDogMS40Mjg1NzE0MzsNCiAgIHZlcnRpY2FsLWFsaWduOiB0b3A7DQp9DQoNCnRkLA0KdGggew0KICAgcGFkZGluZzogMDsNCn0NCg0KLnRhYmxlIHRkLA0KLnRhYmxlIHRoIHsNCiAgIGJvcmRlci10b3A6IG5vbmU7DQp9DQoNCmhyIHsNCiAgIG1hcmdpbi10b3A6IDEwcHg7DQogICBtYXJnaW4tYm90dG9tOiAxMHB4Ow0KfQ0KDQouYm9yZGVyVXBEb3duIHsNCiAgIGJvcmRlci10b3A6IDFweCBzb2xpZCAjZTVlNWU1Ow0KICAgYm9yZGVyLWJvdHRvbTogMXB4IHNvbGlkICNlNWU1ZTU7DQp9DQoNCi5zeW1ib2w6OmJlZm9yZSB7DQogICBjb250ZW50OiAi4oK5IjsNCiAgIGRpc3BsYXk6IGlubGluZS1ibG9jazsNCn0=","PHRyIGNsYXNzPSJ0cjIgY2NnamRycXpyYl97e0tFWUNMQVNTfX0iPg0KICAgPHRkPjwvdGQ+DQogICA8dGQ+PC90ZD4NCiAgIDx0ZD48L3RkPg0KICAgPHRkIGNvbHNwYW49IjIiPjxzdHJvbmc+e3tLRVl9fTwvc3Ryb25nPjwvdGQ+DQogICA8dGQgY29sc3Bhbj0iMiIgY2xhc3M9InRleHQtcmlnaHQiIGFsaWduPSJyaWdodCI+PHN0cm9uZz57e1ZBTFVFfX08L3N0cm9uZz48L3RkPg0KPC90cj4=","1");
INSERT INTO invoice_template VALUES("3","KOT Template 1","PG1ldGEgaHR0cC1lcXVpdj0iQ29udGVudC1UeXBlIiBjb250ZW50PSJ0ZXh0L2h0bWw7IGNoYXJzZXQ9VVRGLTgiPjx0aXRsZT57e1dFQlNJVEVfTkFNRX19PC90aXRsZT4NCjxsaW5rIGhyZWY9Int7VVJMfX0vYmFja2VuZC9pbnZvaWNlL3RoZXJtYWwvYm9vdHN0cmFwLm1pbi5jc3MiIHJlbD0ic3R5bGVzaGVldCIgdHlwZT0idGV4dC9jc3MiIC8+DQo8bGluayBocmVmPSJ7e1VSTH19L2JhY2tlbmQvaW52b2ljZS90aGVybWFsL3NpemVfNTZtbS5jc3MiIG1lZGlhPSJhbGwiIHJlbD0ic3R5bGVzaGVldCIgLz4NCjxsaW5rIGhyZWY9Int7VVJMfX0vYmFja2VuZC9pbnZvaWNlL3RoZXJtYWwvcHJpbnRfYmlsbC5jc3MiIG1lZGlhPSJhbGwiIHJlbD0ic3R5bGVzaGVldCIgLz4NCjxkaXYgaWQ9IndyYXBwZXIiIHN0eWxlPSJwYWRkaW5nLXRvcDoycHgiPg0KPGRpdiBpZD0icmVjZWlwdERhdGEiPg0KPGRpdiBpZD0icmVjZWlwdC1kYXRhIj4NCjxkaXYgY2xhc3M9InRleHQtY2VudGVyIj48aW1nIHNyYz0ie3tVUkx9fS97e1dFQlNJVEVfTE9HT319IiBzdHlsZT0iaGVpZ2h0OiAyMHB4O21hcmdpbjphdXRvO2Rpc3BsYXk6YmxvY2siIC8+PC9kaXY+DQoNCjxociAvPg0KPHRhYmxlIGNsYXNzPSJ0YWJsZSB0YWJsZS1jb25kZW5zZWQiPg0KCTx0Ym9keT4NCgkJPHRyPg0KCQkJPHRkPkNsaWVudCA6IHt7Q1VTVE9NRVJfTkFNRX19PC90ZD4NCgkJCTx0ZCBhbGlnbj0icmlnaHQiPlRhYmxlOiB7e1RBQkxFTk99fTwvdGQ+DQoJCTwvdHI+DQoJCTx0cj4NCgkJCTx0ZCBjb2xzcGFuPSIyIj5PcmRlciBJZCA6IHt7SU5WT0lDRV9OVU1CRVJ9fTwvdGQ+DQoJCTwvdHI+DQoJPC90Ym9keT4NCjwvdGFibGU+DQoNCjxkaXYgY2xhc3M9ImlyX2NsZWFyIj4mbmJzcDs8L2Rpdj4NCnt7VEFCTEVfQ09ERX19PC9kaXY+DQoNCjxkaXYgY2xhc3M9ImlyX2NsZWFyIj4mbmJzcDs8L2Rpdj4NCjwvZGl2Pg0KPGlucHV0IG9uY2xpY2sgPSAid2luZG93LnByaW50KCkiICBzdHlsZT0iZGlzcGxheTpibG9jazttYXJnaW46YXV0bztwYWRkaW5nOjEwcHg7YmFja2dyb3VuZDojMzRiNGViO21hcmdpbi10b3A6MTBweDtib3JkZXI6MHB4O2NvbG9yOndoaXRlO3dpZHRoOjE1MHB4OyIgdHlwZT0iYnV0dG9uIiB2YWx1ZT0iUFJJTlQiIC8+PC9kaXY+DQo=","PHRhYmxlIGNsYXNzPSJ0YWJsZSB0YWJsZS1jb25kZW5zZWQiIHN0eWxlPSJtYXJnaW4tdG9wOjVweCI+DQogICA8dGhlYWQ+DQogICAgICA8dHI+DQogICAgICAgICA8dGggY2xhc3M9InRleHQtc3RhcnQiPk5vLjwvdGg+DQogICAgICAgICA8dGggY2xhc3M9InRleHQtc3RhcnQiIHdpZHRoPSI0MCUiPkl0ZW08L3RoPg0KICAgICAgICAgPHRoIGNsYXNzPSJ0ZXh0LXJpZ2h0Ij5RdWFudGl0eTwvdGg+DQogICAgICA8L3RyPg0KICAgPC90aGVhZD4NCiAgIDx0Ym9keT4NCiAgICAgIHt7TE9PUF9UUl9DT0RFfX0NCiAgICAgIHt7U1VCX1RPVEFMX1RSX0xPT1B9fQ0KICAgPC90Ym9keT4NCjwvdGFibGU+","PHRyIGNsYXNzPSJib3JkZXJVcERvd24iPg0KICAgPHRkIGNsYXNzPSJuby1ib3JkZXIgYm9yZGVyLWJvdHRvbSI+e3tTTk99fTwvdGQ+DQogICA8dGQgY2xhc3M9Im5vLWJvcmRlciBib3JkZXItYm90dG9tIj4NCiAgICAgIHt7UFJPRFVDVF9OQU1FfX0NCiAgICAgIDxkaXYgY2xhc3M9ImpkaW9jeWdsZXIgamRpb2N5Z2xlcnt7SVZBTFVFfX0iPkV4dHJhIEluZm9ybWF0aW9uOiB7e1BST0RVQ1RfRVhUUkFfSU5GT1JNQVRJT059fTwvZGl2Pg0KICAgPC90ZD4NCiAgIDx0ZCBhbGlnbj0icmlnaHQiIGNsYXNzPSJuby1ib3JkZXIgYm9yZGVyLWJvdHRvbSI+e3tQUk9EVUNUX1FVQU5USVRZfX08L3RkPg0KPC90cj4=","LmxtcXljb2djbm0gew0KICAgZm9udC1mYW1pbHk6ICdSb2JvdG8nLCBzYW5zLXNlcmlmOw0KfQ0KDQpib2R5IHsNCiAgIGZvbnQtd2VpZ2h0OiBib2xkOw0KICAgZm9udC1zaXplOiAxMnB4Ow0KICAgZm9udC1mYW1pbHk6ICdSb2JvdG8nLCBzYW5zLXNlcmlmOw0KfQ0KDQoudGFibGUgew0KICAgd2lkdGg6IDEwMCU7DQogICBtYXgtd2lkdGg6IDEwMCU7DQogICBtYXJnaW4tYm90dG9tOiAwcHg7DQp9DQoNCmgzIHsNCiAgIG1hcmdpbjogNXB4IDA7DQp9DQoNCi5oMywNCmgzIHsNCiAgIGZvbnQtc2l6ZTogMjRweDsNCn0NCg0KYiwNCnN0cm9uZyB7DQogICBmb250LXdlaWdodDogNzAwOw0KfQ0KDQp0YWJsZSB7DQogICBiYWNrZ3JvdW5kLWNvbG9yOiB0cmFuc3BhcmVudDsNCn0NCg0KdGFibGUgew0KICAgYm9yZGVyLXNwYWNpbmc6IDA7DQogICBib3JkZXItY29sbGFwc2U6IGNvbGxhcHNlOw0KfQ0KDQoudGFibGU+Y2FwdGlvbit0aGVhZD50cjpmaXJzdC1jaGlsZD50ZCwNCi50YWJsZT5jYXB0aW9uK3RoZWFkPnRyOmZpcnN0LWNoaWxkPnRoLA0KLnRhYmxlPmNvbGdyb3VwK3RoZWFkPnRyOmZpcnN0LWNoaWxkPnRkLA0KLnRhYmxlPmNvbGdyb3VwK3RoZWFkPnRyOmZpcnN0LWNoaWxkPnRoLA0KLnRhYmxlPnRoZWFkOmZpcnN0LWNoaWxkPnRyOmZpcnN0LWNoaWxkPnRkLA0KLnRhYmxlPnRoZWFkOmZpcnN0LWNoaWxkPnRyOmZpcnN0LWNoaWxkPnRoIHsNCiAgIGJvcmRlci10b3A6IDA7DQp9DQoNCi50YWJsZS1jb25kZW5zZWQ+dGJvZHk+dHI+dGQsDQoudGFibGUtY29uZGVuc2VkPnRib2R5PnRyPnRoLA0KLnRhYmxlLWNvbmRlbnNlZD50Zm9vdD50cj50ZCwNCi50YWJsZS1jb25kZW5zZWQ+dGZvb3Q+dHI+dGgsDQoudGFibGUtY29uZGVuc2VkPnRoZWFkPnRyPnRkLA0KLnRhYmxlLWNvbmRlbnNlZD50aGVhZD50cj50aCB7DQogICBwYWRkaW5nOiA1cHg7DQp9DQoNCi50YWJsZT50Ym9keT50cj50ZCwNCi50YWJsZT50Ym9keT50cj50aCwNCi50YWJsZT50Zm9vdD50cj50ZCwNCi50YWJsZT50Zm9vdD50cj50aCwNCi50YWJsZT50aGVhZD50cj50ZCwNCi50YWJsZT50aGVhZD50cj50aCB7DQogICBwYWRkaW5nOiAwcHg7DQogICBsaW5lLWhlaWdodDogMS40Mjg1NzE0MzsNCiAgIHZlcnRpY2FsLWFsaWduOiB0b3A7DQp9DQoNCnRkLA0KdGggew0KICAgcGFkZGluZzogMDsNCn0NCg0KLnRhYmxlIHRkLA0KLnRhYmxlIHRoIHsNCiAgIGJvcmRlci10b3A6IG5vbmU7DQp9DQoNCmhyIHsNCiAgIG1hcmdpbi10b3A6IDEwcHg7DQogICBtYXJnaW4tYm90dG9tOiAxMHB4Ow0KfQ0KDQouYm9yZGVyVXBEb3duIHsNCiAgIGJvcmRlci10b3A6IDFweCBzb2xpZCAjZTVlNWU1Ow0KICAgYm9yZGVyLWJvdHRvbTogMXB4IHNvbGlkICNlNWU1ZTU7DQp9DQoNCi5zeW1ib2w6OmJlZm9yZSB7DQogICBjb250ZW50OiAi4oK5IjsNCiAgIGRpc3BsYXk6IGlubGluZS1ibG9jazsNCn0=","","1");
INSERT INTO invoice_template VALUES("4","PO Invoice Template 1","PHRpdGxlPnt7V0VCU0lURV9OQU1FfX08L3RpdGxlPjxtZXRhIG5hbWU9InZpZXdwb3J0IiBjb250ZW50PSJ3aWR0aD1kZXZpY2Utd2lkdGgsIGluaXRpYWwtc2NhbGU9MS4wIj48bWV0YSBjaGFyc2V0PSJVVEYtOCI+DQo8bGluayBocmVmPSJ7e1VSTH19L2JhY2tlbmQvaW52b2ljZS9hc3NldHMvY3NzL2Jvb3RzdHJhcC5taW4uY3NzIiByZWw9InN0eWxlc2hlZXQiIHR5cGU9InRleHQvY3NzIiAvPg0KPGxpbmsgaHJlZj0ie3tVUkx9fS9iYWNrZW5kL2ludm9pY2UvYXNzZXRzL2ZvbnRzL2ZvbnQtYXdlc29tZS9jc3MvZm9udC1hd2Vzb21lLm1pbi5jc3MiIHJlbD0ic3R5bGVzaGVldCIgdHlwZT0idGV4dC9jc3MiIC8+DQo8bGluayBocmVmPSJ7e1VSTH19L2JhY2tlbmQvaW52b2ljZS9hc3NldHMvaW1nL2Zhdmljb24uaWNvIiByZWw9InNob3J0Y3V0IGljb24iIHR5cGU9ImltYWdlL3gtaWNvbiIgLz4NCjxsaW5rIGNyb3Nzb3JpZ2luPSIiIGhyZWY9Imh0dHBzOi8vZm9udHMuZ3N0YXRpYy5jb20iIHJlbD0icHJlY29ubmVjdCIgLz4NCjxsaW5rIGhyZWY9Imh0dHBzOi8vZm9udHMuZ29vZ2xlYXBpcy5jb20vY3NzP2ZhbWlseT1Qb3BwaW5zOjEwMCwyMDAsMzAwLDQwMCw1MDAsNjAwLDcwMCw4MDAsOTAwIiByZWw9InN0eWxlc2hlZXQiIHR5cGU9InRleHQvY3NzIiAvPg0KPGxpbmsgaHJlZj0ie3tVUkx9fS9iYWNrZW5kL2ludm9pY2UvYXNzZXRzL2Nzcy9zdHlsZS5jc3MiIHJlbD0ic3R5bGVzaGVldCIgdHlwZT0idGV4dC9jc3MiIC8+DQo8ZGl2IGNsYXNzPSJpbnZvaWNlLTEgaW52b2ljZS1jb250ZW50Ij4NCjxkaXYgY2xhc3M9ImNvbnRhaW5lciI+DQo8ZGl2IGNsYXNzPSJyb3ciPg0KPGRpdiBjbGFzcz0iY29sLWxnLTEyIj4NCjxkaXYgY2xhc3M9Imludm9pY2UtaW5uZXIgY2xlYXJmaXgiPg0KPGRpdiBjbGFzcz0iaW52b2ljZS1pbmZvIGNsZWFyZml4IiBpZD0iaW52b2ljZV93cmFwcGVyIj4NCjxkaXYgY2xhc3M9Imludm9pY2UtaGVhZGFyIj4NCjxkaXYgY2xhc3M9InJvdyBnLTAiPg0KPGRpdiBjbGFzcz0iY29sLXNtLTYiPg0KPGRpdiBjbGFzcz0iaW52b2ljZS1sb2dvIj4NCjxkaXYgY2xhc3M9ImxvZ28iPjxpbWcgYWx0PSJsb2dvIiBzcmM9Int7VVJMfX0ve3tXRUJTSVRFX0xPR099fSIgLz48L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQoNCjxkaXYgY2xhc3M9ImNvbC1zbS02IGludm9pY2UtaWQiPg0KPGRpdiBjbGFzcz0iaW5mbyI+DQo8aDEgY2xhc3M9ImNvbG9yLXdoaXRlIGludi1oZWFkZXItMSI+UHVyY2hhc2UgT3JkZXI8L2gxPg0KDQo8cCBjbGFzcz0iY29sb3Itd2hpdGUgbWItMSI+UE8gTnVtYmVyIDxzcGFuPnt7UE9fTlVNQkVSfX08L3NwYW4+PC9wPg0KDQo8cCBjbGFzcz0iY29sb3Itd2hpdGUgbWItMCI+UE8gRGF0ZSA8c3Bhbj57e1BPX0RBVEV9fTwvc3Bhbj48L3A+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCg0KPGRpdiBjbGFzcz0iaW52b2ljZS10b3AiPg0KPGRpdiBjbGFzcz0icm93Ij4NCjxkaXYgY2xhc3M9ImNvbC1zbS02Ij4NCjxkaXYgY2xhc3M9Imludm9pY2UtbnVtYmVyIG1iLTMwIj4NCjxoNCBjbGFzcz0iaW52LXRpdGxlLTEiPlRvPC9oND4NCg0KPGgyIGNsYXNzPSJuYW1lIG1iLTEwIj57e1ZFTkRPUl9OQU1FfX08L2gyPg0Ke3tWRU5ET1JfTU9CSUxFfX08YnIgLz4NCnt7VkVORE9SX0VNQUlMfX0NCjxwPiZuYnNwOzwvcD4NCjwvZGl2Pg0KPC9kaXY+DQoNCjxkaXYgY2xhc3M9ImNvbC1zbS02Ij4NCjxkaXYgY2xhc3M9Imludm9pY2UtbnVtYmVyIG1iLTMwIj4NCjxkaXYgY2xhc3M9Imludm9pY2UtbnVtYmVyLWlubmVyIj4NCjxoNCBjbGFzcz0iaW52LXRpdGxlLTEiPlBPIEZyb208L2g0Pg0KDQo8aDIgY2xhc3M9Im5hbWUgbWItMTAiPnt7U1RPUkVfTkFNRX19PC9oMj4NCg0KPHAgY2xhc3M9Imludm8tYWRkci0xIj57e1NUT1JFX0FERFJFU1N9fTxiciAvPg0Ke3tTVE9SRV9NT0JJTEV9fTxiciAvPg0Ke3tTVE9SRV9FTUFJTH19PC9wPg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCg0KPGRpdiBjbGFzcz0iaW52b2ljZS1jZW50ZXIiPg0KPGRpdiBjbGFzcz0idGFibGUtcmVzcG9uc2l2ZSI+e3tUQUJMRV9DT0RFfX08L2Rpdj4NCjwvZGl2Pg0KDQo8ZGl2IGNsYXNzPSJpbnZvaWNlLWJvdHRvbSI+DQo8ZGl2IGNsYXNzPSJyb3ciPg0KPGRpdiBjbGFzcz0iY29sLWxnLTYgY29sLW1kLTggY29sLXNtLTciPg0KPGRpdiBjbGFzcz0ibWItMzAgZGVhci1jbGllbnQiPg0KPGgzIGNsYXNzPSJpbnYtdGl0bGUtMSI+VGVybXMgJmFtcDsgQ29uZGl0aW9uczwvaDM+DQoNCjxwPnt7U1RPUkVfVEVSTVN9fTwvcD4NCjwvZGl2Pg0KPC9kaXY+DQoNCjxkaXYgY2xhc3M9ImNvbC1sZy02IGNvbC1tZC00IGNvbC1zbS01Ij4NCjxkaXYgY2xhc3M9Im1iLTMwIHBheW1lbnQtbWV0aG9kIj4NCjx1bCBjbGFzcz0icGF5bWVudC1tZXRob2QtbGlzdC0xIHRleHQtMTQiPg0KCTxsaT48c3Ryb25nPkFtb3VudCBJbiBXb3JkcyA6IDwvc3Ryb25nPnt7UEFZTUVOVF9JTl9XT1JEU319PC9saT4NCjwvdWw+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCg0KPGRpdiBjbGFzcz0iaW52b2ljZS1jb250YWN0IGNsZWFyZml4Ij4NCjxkaXYgY2xhc3M9InJvdyBnLTAiPg0KPGRpdiBjbGFzcz0iY29sLWxnLTkgY29sLW1kLTExIGNvbC1zbS0xMiI+DQo8ZGl2IGNsYXNzPSJjb250YWN0LWluZm8iPjxhIGhyZWY9InRlbDorNTUtNFhYLTYzNC03MDcxIj57e1NUT1JFX01PQklMRX19PC9hPiA8YSBocmVmPSJ0ZWw6e3tTVE9SRV9FTUFJTH19Ij57e1NUT1JFX0VNQUlMfX08L2E+IDxhIGNsYXNzPSJtci0wIGQtbm9uZS01ODAiIGhyZWY9InRlbDppbmZvQHRoZW1ldmVzc2VsLmNvbSI+e3tTVE9SRV9BRERSRVNTfX08L2E+PC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCg0KPGRpdiBjbGFzcz0iaW52b2ljZS1idG4tc2VjdGlvbiBjbGVhcmZpeCBkLXByaW50LW5vbmUiPjxhIGNsYXNzPSJidG4gYnRuLWxnIGJ0bi1wcmludCIgaHJlZj0iamF2YXNjcmlwdDp3aW5kb3cucHJpbnQoKSI+UHJpbnQgUE8gPC9hPiA8YSBjbGFzcz0iYnRuIGJ0bi1sZyBidG4tZG93bmxvYWQgYnRuLXRoZW1lIiBpZD0iaW52b2ljZV9kb3dubG9hZF9idG4iPiBEb3dubG9hZCBQTyA8L2E+PC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPHNjcmlwdCBzcmM9Int7VVJMfX0vYmFja2VuZC9pbnZvaWNlL2Fzc2V0cy9qcy9qcXVlcnkubWluLmpzIj48L3NjcmlwdD48c2NyaXB0IHNyYz0ie3tVUkx9fS9iYWNrZW5kL2ludm9pY2UvYXNzZXRzL2pzL2pzcGRmLm1pbi5qcyI+PC9zY3JpcHQ+PHNjcmlwdCBzcmM9Int7VVJMfX0vYmFja2VuZC9pbnZvaWNlL2Fzc2V0cy9qcy9odG1sMmNhbnZhcy5qcyI+PC9zY3JpcHQ+PHNjcmlwdCBzcmM9Int7VVJMfX0vYmFja2VuZC9pbnZvaWNlL2Fzc2V0cy9qcy9hcHAuanMiPjwvc2NyaXB0Pg==","PHRhYmxlIGNsYXNzPSJ0YWJsZSBtYi0wIHRhYmxlLXN0cmlwZWQgaW52b2ljZS10YWJsZSI+DQogICA8dGhlYWQgY2xhc3M9ImJnLWFjdGl2ZSI+DQogICAgICA8dHIgY2xhc3M9InRyIj4NCiAgICAgICAgIDx0aD5Oby48L3RoPg0KICAgICAgICAgPHRoIGNsYXNzPSJwbDAgdGV4dC1zdGFydCIgd2lkdGg9IjQwJSI+SXRlbSBEZXNjcmlwdGlvbjwvdGg+DQogICAgICAgICA8dGggY2xhc3M9InRleHQtY2VudGVyIj5QcmljZTwvdGg+DQogICAgICAgICA8dGggY2xhc3M9InRleHQtY2VudGVyIj5RdWFudGl0eTwvdGg+DQogICAgICAgICA8dGggY2xhc3M9InRleHQtY2VudGVyIj5EaXNjb3VudDwvdGg+DQogICAgICAgICA8dGggY2xhc3M9InRleHQtY2VudGVyIj5UYXg8L3RoPg0KICAgICAgICAgPHRoIGNsYXNzPSJ0ZXh0LWVuZCI+VG90YWw8L3RoPg0KICAgICAgPC90cj4NCiAgIDwvdGhlYWQ+DQogICA8dGJvZHk+DQogICAgICB7e0xPT1BfVFJfQ09ERX19DQogICAgICB7e1NVQl9UT1RBTF9UUl9MT09QfX0NCiAgIDwvdGJvZHk+DQo8L3RhYmxlPg==","PHRyIGNsYXNzPSJ0ciI+DQogICA8dGQ+DQogICAgICA8ZGl2IGNsYXNzPSJpdGVtLWRlc2MtMSI+PHNwYW4+e3tTTk99fTwvc3Bhbj48L2Rpdj4NCiAgIDwvdGQ+DQogICA8dGQgY2xhc3M9InBsMCIgd2lkdGg9IjQwJSI+e3tQUk9EVUNUX05BTUV9fTxkaXYgY2xhc3M9ImR4cXpremFlZnogZHhxemt6YWVment7SVZBTFVFfX0iPk1vZGVsIDoge3tQUk9EVUNUX01PREVMfX08L2Rpdj48ZGl2IGNsYXNzPSJtZm9wZnloa2ZiIG1mb3BmeWhrZmJ7e0lWQUxVRX19Ij5CYXJjb2RlIDoge3tQUk9EVUNUX0JBUkNPREV9fTwvZGl2PjxkaXYgY2xhc3M9InBpdGxmYmRucmkgcGl0bGZiZG5yaXt7SVZBTFVFfX0iPkhTTiBDb2RlOiB7e0hTTl9DT0RFfX08L2Rpdj48ZGl2IGNsYXNzPSJqZGlvY3lnbGVyIGpkaW9jeWdsZXJ7e0lWQUxVRX19Ij5FeHRyYSBJbmZvcm1hdGlvbjoge3tQUk9EVUNUX0VYVFJBX0lORk9STUFUSU9OfX08L2Rpdj48L3RkPg0KICAgPHRkIGNsYXNzPSJ0ZXh0LWNlbnRlciBzeW1ib2wiPnt7UFJPRFVDVF9QUklDRX19PC90ZD4NCiAgIDx0ZCBjbGFzcz0idGV4dC1jZW50ZXIgIj57e1BST0RVQ1RfUVVBTlRJVFl9fTwvdGQ+DQogICA8dGQgY2xhc3M9InRleHQtY2VudGVyIj57e1BST0RVQ1RfRElTQ09VTlR9fTxicj48c3BhbiBjbGFzcz0ic3ltYm9sIj57e1BST0RVQ1RfRElTQ09VTlRfVkFMVUV9fTwvc3Bhbj48L3RkPg0KICAgPHRkIGNsYXNzPSJ0ZXh0LWNlbnRlciI+e3tQUk9EVUNUX1RBWF9IRUFESU5HfX08YnI+PHNwYW4gY2xhc3M9InN5bWJvbCI+e3tQUk9EVUNUX1RBWH19PC9zcGFuPjxicj48c3Bhbj57e1BST0RVQ1RfVEFYX1RZUEV9fTwvc3Bhbj48L3RkPg0KICAgPHRkIGNsYXNzPSJ0ZXh0LWVuZCBzeW1ib2wiPjxzdHJvbmc+e3tQUk9EVUNUX1RPVEFMfX08L3N0cm9uZz48L3RkPg0KPC90cj4=","LmR4cXpremFlZnosLm1mb3BmeWhrZmIsLmpkaW9jeWdsZXJ7DQogZm9udC1zaXplOjEycHg7DQpjb2xvcjojOTE5MTkxOw0KfQ0KIC5zeW1ib2w6OmJlZm9yZSB7DQogICAgICAgICBjb250ZW50OiAi4oK5IjsNCiAgICAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jazsNCiAgICAgICAgIG1hcmdpbi1yaWdodDogMnB4Ow0KICAgICAgICAgfQ0KLmNjZ2pkcnF6cmJfdG90YWwgdGR7DQpmb250LXNpemU6MTdweCAhaW1wb3J0YW50Ow0KfQ==","PHRyIGNsYXNzPSJ0cjIgY2NnamRycXpyYl97e0tFWUNMQVNTfX0iPg0KPHRkPjwvdGQ+DQo8dGQ+PC90ZD4NCiAgIDx0ZCBjbGFzcz0idGV4dC1yaWdodCIgY29sc3Bhbj0iMiI+PHN0cm9uZz57e0tFWX19PC9zdHJvbmc+PC90ZD4NCiAgIDx0ZCBjbGFzcz0idGV4dC1lbmQiIGNvbHNwYW49IjMiPjxzdHJvbmc+e3tWQUxVRX19PC9zdHJvbmc+PC90ZD4NCjwvdHI+","1");



DROP TABLE IF EXISTS languages;

CREATE TABLE `languages` (
  `languageId` int(11) NOT NULL AUTO_INCREMENT,
  `heading` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
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
  `softDelete` int(11) NOT NULL DEFAULT 0,
  `dateUpdated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL,
  PRIMARY KEY (`manufacturerId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

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
  `status` int(11) NOT NULL DEFAULT 1,
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp(),
  `dateUpdated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `insertedBy` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`menuId`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

INSERT INTO menus VALUES("1","Dashboard","/","","0","0","0","[\"1\",\"2\",\"3\"]","1","2024-02-07 15:58:02","2024-05-04 12:10:37","0");
INSERT INTO menus VALUES("2","Settings","","","0","0","100","[\"1\",\"2\"]","1","2024-02-08 15:58:02","2024-05-04 12:11:32","0");
INSERT INTO menus VALUES("3","Modules","modules","","0","13","100","[\"1\"]","0","2024-02-08 15:58:02","2024-05-04 12:39:18","0");
INSERT INTO menus VALUES("4","Global Setting","","","2","2","100","[\"1\"]","1","2024-02-08 15:58:02","2024-05-04 12:35:35","1");
INSERT INTO menus VALUES("5","Users","","","0","0","9","[\"1\"]","1","2024-02-08 15:58:02","2024-05-04 12:31:39","0");
INSERT INTO menus VALUES("6","Users","","","1","5","100","[\"1\",\"2\"]","1","2024-02-08 15:58:02","2024-05-04 12:38:01","1");
INSERT INTO menus VALUES("8","Manage","","","0","0","5","[\"1\",\"2\"]","1","2024-02-08 15:58:02","2024-05-04 12:32:31","0");
INSERT INTO menus VALUES("9","Templates","","","3","2","100","[\"1\"]","1","2024-02-08 15:58:02","2024-05-04 12:35:44","1");
INSERT INTO menus VALUES("11","Menus","","","5","13","100","[\"1\"]","1","2024-02-08 15:58:02","2024-05-04 12:39:24","1");
INSERT INTO menus VALUES("12","Database Backups","","","6","2","100","[\"1\"]","1","2024-02-08 15:58:02","2024-05-04 12:35:46","1");
INSERT INTO menus VALUES("13","Admin","","","0","0","100","[\"1\"]","1","2024-02-08 15:58:02","2024-05-04 12:32:42","0");
INSERT INTO menus VALUES("18","Filters","","","10","13","100","[\"1\"]","0","2024-02-08 15:58:02","2024-05-04 12:39:28","1");
INSERT INTO menus VALUES("19","Image Manager","","","11","8","100","[\"1\",\"2\",\"3\"]","1","2024-02-09 11:09:25","2024-07-20 12:32:33","1");
INSERT INTO menus VALUES("20","Admin Login History","","","12","13","100","[\"1\"]","1","2024-02-09 13:02:57","2024-05-04 12:39:31","1");
INSERT INTO menus VALUES("21","User Roles","userroles","","0","5","100","[\"1\"]","1","2024-02-08 15:58:02","2024-05-04 12:38:10","0");
INSERT INTO menus VALUES("22","Countries","","","13","2","100","[\"1\"]","1","2024-02-09 16:03:01","2024-05-04 12:35:51","1");
INSERT INTO menus VALUES("23","States","","","14","2","100","[\"1\"]","1","2024-02-09 16:26:43","2024-05-04 12:35:53","1");
INSERT INTO menus VALUES("24","Import/Export","","","0","0","7","[\"1\",\"2\"]","1","2024-02-08 15:58:02","2024-05-04 12:32:55","1");
INSERT INTO menus VALUES("25","Import Excel","import","","0","24","100","[\"1\",\"2\"]","1","2024-02-08 15:58:02","2024-05-04 12:39:39","1");
INSERT INTO menus VALUES("26","Export To Excel","import-export","","0","24","100","[\"1\",\"2\"]","1","2024-02-08 15:58:02","2024-05-04 12:39:41","1");
INSERT INTO menus VALUES("27","Upload Images","upload-images","","0","24","100","[\"1\",\"2\"]","1","2024-02-08 15:58:02","2024-05-04 12:39:44","1");
INSERT INTO menus VALUES("28","Customers","","","0","0","2","[\"1\",\"2\",\"3\"]","1","2024-02-15 09:14:58","2024-05-04 12:00:50","1");
INSERT INTO menus VALUES("29","Customer Group","","","15","28","100","[\"1\",\"2\"]","1","2024-02-15 09:15:12","2024-05-04 12:39:54","1");
INSERT INTO menus VALUES("30","Manage Stores","","","0","0","6","[\"1\",\"2\",\"3\"]","1","2024-02-15 14:02:45","2024-05-04 12:10:37","1");
INSERT INTO menus VALUES("31","Stores","","","16","8","100","[\"1\",\"2\"]","1","2024-02-15 14:11:33","2024-05-04 12:38:40","1");
INSERT INTO menus VALUES("32","Cities","","","17","2","100","[\"1\"]","1","2024-02-15 14:17:35","2024-05-04 12:35:55","1");
INSERT INTO menus VALUES("33","Taxes","","","18","2","100","[\"1\"]","1","2024-02-24 11:41:00","2024-05-04 12:35:58","1");
INSERT INTO menus VALUES("34","Units","","","19","2","100","[\"1\"]","1","2024-02-24 11:53:43","2024-05-04 12:36:00","1");
INSERT INTO menus VALUES("35","Vendors","","","20","73","100","[\"1\",\"2\",\"3\"]","1","2024-02-24 12:00:04","2024-05-04 05:03:37","1");
INSERT INTO menus VALUES("36","Customers","","","21","28","100","[\"1\",\"2\",\"3\"]","1","2024-02-24 14:01:44","2024-05-04 10:21:01","1");
INSERT INTO menus VALUES("37","Manufacturers","","","22","74","100","[\"1\",\"2\"]","1","2024-02-24 15:00:45","2024-05-04 14:50:36","1");
INSERT INTO menus VALUES("38","Categories","","","23","74","100","[\"1\",\"2\"]","1","2024-02-24 15:12:21","2024-05-04 14:50:39","2");
INSERT INTO menus VALUES("39","Products","","","24","30","0","[\"1\",\"2\",\"3\"]","1","2024-02-24 15:17:24","2024-10-02 09:31:31","2");
INSERT INTO menus VALUES("40","Sale Pos","","","0","0","1","[\"1\",\"2\",\"3\"]","1","2024-02-24 15:35:22","2024-05-18 09:20:23","1");
INSERT INTO menus VALUES("41","Pos","pos","","0","40","100","[\"1\",\"2\",\"3\"]","1","2024-02-24 15:36:18","2024-05-04 10:21:01","1");
INSERT INTO menus VALUES("42","Store Settings","","","25","8","100","[\"1\",\"2\"]","1","2024-02-24 15:44:55","2024-05-04 12:38:42","1");
INSERT INTO menus VALUES("43","Seating Tables","","","26","30","100","[\"1\",\"2\"]","1","2024-02-26 20:13:32","2024-05-04 12:40:02","2");
INSERT INTO menus VALUES("44","Languages","","","27","2","100","[\"1\"]","1","2024-02-27 09:34:31","2024-05-04 12:36:03","2");
INSERT INTO menus VALUES("45","Employees","","","28","30","100","[\"1\",\"2\",\"3\"]","1","2024-02-27 15:34:21","2024-05-04 12:10:37","2");
INSERT INTO menus VALUES("46","Payments","","","29","2","100","[\"1\"]","1","2024-03-01 10:17:44","2024-05-04 12:36:07","2");
INSERT INTO menus VALUES("47","Store Payments","","","30","8","100","[\"1\",\"2\"]","1","2024-03-01 10:50:42","2024-05-04 12:38:45","1");
INSERT INTO menus VALUES("48","Additional Charges","","","31","8","100","[\"1\",\"2\"]","1","2024-03-06 16:21:00","2024-05-04 12:38:49","2");
INSERT INTO menus VALUES("49","Invoice Template","","","32","2","100","[\"1\"]","1","2024-03-08 17:09:41","2024-05-04 12:36:13","2");
INSERT INTO menus VALUES("50","Order Status","","","33","2","100","[\"1\"]","1","2024-03-17 14:33:59","2024-05-04 12:36:17","2");
INSERT INTO menus VALUES("51","Purchase","purchases","","0","73","100","[\"1\",\"2\",\"3\"]","1","2024-03-20 15:50:14","2024-05-04 10:21:01","1");
INSERT INTO menus VALUES("52","Customer Pay In Out","","","34","30","100","[\"1\",\"2\",\"3\"]","1","2024-03-28 13:38:29","2024-05-04 12:00:24","2");
INSERT INTO menus VALUES("53","Customer Ledger Wallet","","","35","60","100","[\"1\",\"2\"]","1","2024-03-28 13:54:30","2024-05-04 14:50:09","2");
INSERT INTO menus VALUES("54","Codes","","","36","2","100","[\"1\",\"2\"]","1","2024-03-28 14:27:40","2024-05-04 12:36:28","2");
INSERT INTO menus VALUES("55","Customer Ledger Reward","","","37","60","100","[\"1\",\"2\"]","1","2024-03-28 15:31:42","2024-05-04 14:50:12","2");
INSERT INTO menus VALUES("56","Order","order","","0","57","100","[\"1\",\"2\",\"3\"]","1","2024-03-28 13:54:30","2024-05-04 10:21:01","2");
INSERT INTO menus VALUES("57","Orders","","","0","0","6","[\"1\",\"2\",\"3\"]","1","2024-03-29 11:57:12","2024-05-04 10:31:29","1");
INSERT INTO menus VALUES("58","Order History","","","38","57","100","[\"1\",\"2\",\"3\"]","1","2024-03-29 12:01:35","2024-05-04 10:21:01","1");
INSERT INTO menus VALUES("59","Kot","kot","","0","57","100","[\"1\",\"2\",\"3\"]","1","2024-03-29 13:37:15","2024-05-04 10:21:01","1");
INSERT INTO menus VALUES("60","Reports","","","0","0","8","[\"1\",\"2\"]","1","2024-03-30 11:21:34","2024-05-04 12:33:30","1");
INSERT INTO menus VALUES("61","Profit Report","profit-report","","0","60","100","[\"1\",\"2\"]","1","2024-03-30 11:22:22","2024-05-04 14:50:16","1");
INSERT INTO menus VALUES("62","Pos New Users","pos-users","","0","5","100","[\"1\"]","1","2024-04-08 09:24:51","2024-05-18 09:21:36","1");
INSERT INTO menus VALUES("63","Comment Master","","","39","8","100","[\"1\",\"2\"]","1","2024-04-13 12:38:26","2024-05-04 12:38:51","1");
INSERT INTO menus VALUES("64","Popup Message","popup-message","","0","2","100","[\"1\",\"2\"]","1","2024-04-16 13:22:27","2024-05-04 12:37:41","1");
INSERT INTO menus VALUES("65","Reward Otp Skip Reason","","","40","30","100","[\"1\",\"2\"]","1","2024-04-19 09:41:25","2024-05-04 12:40:13","1");
INSERT INTO menus VALUES("66","Reward Otp","","","41","30","100","[\"1\",\"2\"]","1","2024-04-19 09:59:56","2024-05-04 12:40:21","1");
INSERT INTO menus VALUES("67","Daily Sale Report","report/daily-sale-report","","0","60","100","[\"1\",\"2\"]","1","2024-04-19 11:10:21","2024-05-04 14:50:19","1");
INSERT INTO menus VALUES("68","Daily Payment Report","report/daily-payment-report","","0","60","100","[\"1\",\"2\"]","1","2024-04-22 04:30:00","2024-05-04 14:50:21","1");
INSERT INTO menus VALUES("69","Expense Categories","","","42","8","100","[\"1\",\"2\"]","1","2024-04-30 10:03:58","2024-05-04 12:38:57","1");
INSERT INTO menus VALUES("70","Expenses","","","43","8","100","[\"1\",\"2\",\"3\"]","1","2024-04-30 10:08:16","2024-05-04 10:21:01","1");
INSERT INTO menus VALUES("71","Daily Expense Report","report/daily-expense-report","","0","60","100","[\"1\",\"2\"]","1","2024-04-30 10:48:00","2024-05-04 14:50:23","1");
INSERT INTO menus VALUES("72","Daily Order Report","report/daily-order-report","","0","60","100","[\"1\",\"2\"]","1","2024-04-30 14:33:11","2024-05-04 14:50:27","1");
INSERT INTO menus VALUES("73","Purchases","","","0","0","4","[\"1\",\"2\",\"3\"]","1","2024-05-04 10:15:21","2024-05-04 10:23:18","1");
INSERT INTO menus VALUES("74","Products","","","0","0","3","[\"1\",\"2\",\"3\"]","1","2024-05-04 10:15:35","2024-05-04 10:23:17","1");
INSERT INTO menus VALUES("75","Language Words","language-message","","0","2","0","[\"1\",\"2\"]","1","2024-05-10 16:38:53","2024-05-10 11:08:53","1");
INSERT INTO menus VALUES("76","Hotel Rooms","","","44","30","0","[\"1\",\"2\"]","1","2024-06-04 14:24:26","2024-06-04 09:01:33","1");
INSERT INTO menus VALUES("77","Product Return","","","45","74","0","[\"1\",\"2\",\"3\"]","1","2024-06-29 11:40:36","2024-06-29 11:42:57","1");
INSERT INTO menus VALUES("78","Customer Amount Paid","","","46","28","0","[\"1\",\"2\",\"3\"]","1","2024-06-29 12:01:32","2024-06-29 13:12:08","1");
INSERT INTO menus VALUES("79","Purchase Order","purchase-order","","0","73","3","[\"1\",\"2\",\"3\"]","1","2024-07-20 13:51:58","2024-07-20 13:51:58","1");
INSERT INTO menus VALUES("80","Pos Simple","pos-simple","","0","40","0","[\"1\",\"2\",\"3\"]","1","2024-08-22 10:42:06","2024-08-22 10:42:06","1");
INSERT INTO menus VALUES("81","Currencies","","","47","2","0","[\"1\"]","1","2024-08-24 17:13:25","2024-08-24 17:15:00","1");
INSERT INTO menus VALUES("82","Product Category Wise","report/product-category-wise","","0","60","0","[\"1\",\"2\",\"3\"]","1","2024-08-26 10:58:10","2024-08-26 11:09:19","1");
INSERT INTO menus VALUES("83","Product Manufacturer Wise","report/product-manufacturer-wise","","0","60","0","[\"1\",\"2\",\"3\"]","1","2024-08-26 10:58:10","2024-08-26 11:09:19","1");
INSERT INTO menus VALUES("84","Testimonials","","","48","28","0","[\"1\"]","1","2024-09-10 21:59:41","2024-09-10 22:02:23","1");



DROP TABLE IF EXISTS messages;

CREATE TABLE `messages` (
  `messageId` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(255) NOT NULL,
  `hindi` varchar(255) DEFAULT NULL,
  `english` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`messageId`)
) ENGINE=InnoDB AUTO_INCREMENT=741 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO messages VALUES("1","Thank you for your enquiry. We will contact you as soon as possible.","?????? ?? ??? ???? ????????? ?? ????? ????? ?? ??? ???? ?????? ???????","this is a test message","1");
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
INSERT INTO messages VALUES("585","Pos New Users","","","1");
INSERT INTO messages VALUES("586","Pos Users","","","1");
INSERT INTO messages VALUES("587","Opening Balance","","","1");
INSERT INTO messages VALUES("588","Country Id","","","1");
INSERT INTO messages VALUES("589","Product Profit Report/Ledger","","","1");
INSERT INTO messages VALUES("590","Clear","","","1");
INSERT INTO messages VALUES("591","HSN Code","","","1");
INSERT INTO messages VALUES("592","Change Price During Billing","","","1");
INSERT INTO messages VALUES("593","Change Price","","","1");
INSERT INTO messages VALUES("594","Change","","","1");
INSERT INTO messages VALUES("595","Comment Master","","","1");
INSERT INTO messages VALUES("596","Store Closing Date","","","1");
INSERT INTO messages VALUES("597","Store Closing Date (Comma Seprated)","","","1");
INSERT INTO messages VALUES("598","2024-04-13,2024-04-20,2024-04-27","","","1");
INSERT INTO messages VALUES("599","Store Id","","","1");
INSERT INTO messages VALUES("600","Popup Message","","","1");
INSERT INTO messages VALUES("601","Subject","","","1");
INSERT INTO messages VALUES("602","For What","","","1");
INSERT INTO messages VALUES("603","For Whom","","","1");
INSERT INTO messages VALUES("604","Send OTP/Skip OTP","","","1");
INSERT INTO messages VALUES("605","Skip OTP","","","1");
INSERT INTO messages VALUES("606","Send OTP","","","1");
INSERT INTO messages VALUES("607","Enter OTP","","","1");
INSERT INTO messages VALUES("608","Submit OTP","","","1");
INSERT INTO messages VALUES("609","Reward Otp Skip Reason","","","1");
INSERT INTO messages VALUES("610","Reward Otp","","","1");
INSERT INTO messages VALUES("611","Total Sale Price","","","1");
INSERT INTO messages VALUES("612","Total Buying Cost","","","1");
INSERT INTO messages VALUES("613","Total Tax","","","1");
INSERT INTO messages VALUES("614","Total Discount","","","1");
INSERT INTO messages VALUES("615","Total Profit","","","1");
INSERT INTO messages VALUES("616","Total Buying Quantity","","","1");
INSERT INTO messages VALUES("617","Total Sale Quanitity","","","1");
INSERT INTO messages VALUES("618","Total Cost","","","1");
INSERT INTO messages VALUES("619","Total Sale","","","1");
INSERT INTO messages VALUES("620","Total Sale Quantity","","","1");
INSERT INTO messages VALUES("621","Daily Sale Report","","","1");
INSERT INTO messages VALUES("622","Daily Payment Report","","","1");
INSERT INTO messages VALUES("623","Payment Method","","","1");
INSERT INTO messages VALUES("624","Send Reminder To Customer","","","1");
INSERT INTO messages VALUES("625","Expense Categories","","","1");
INSERT INTO messages VALUES("626","Expenses","","","1");
INSERT INTO messages VALUES("627","Expense Category Id","","","1");
INSERT INTO messages VALUES("628","GST Number","","","1");
INSERT INTO messages VALUES("629","Daily Expense Report","","","1");
INSERT INTO messages VALUES("630","Category","","","1");
INSERT INTO messages VALUES("631","Daily Order Report","","","1");
INSERT INTO messages VALUES("632","Product Order Report","","","1");
INSERT INTO messages VALUES("633","Total Quantity Sold","","","1");
INSERT INTO messages VALUES("634","Order Total","","","1");
INSERT INTO messages VALUES("635","Product Detail","","","1");
INSERT INTO messages VALUES("636","Total Reward Used (In Rs)","","","1");
INSERT INTO messages VALUES("637","Total Sale Without Reward","","","1");
INSERT INTO messages VALUES("638","Purchases","","","1");
INSERT INTO messages VALUES("639","Customer Pay In Out","","","1");
INSERT INTO messages VALUES("640","Cities","","","1");
INSERT INTO messages VALUES("641","Codes","","","1");
INSERT INTO messages VALUES("642","Language Words","","","1");
INSERT INTO messages VALUES("643","2024-04-13,2024-04-20,2024-04-27","","","1");
INSERT INTO messages VALUES("644","Max Bills","","","1");
INSERT INTO messages VALUES("645","Required Otp For Reward Reedem","","","1");
INSERT INTO messages VALUES("646","Min Reward Points To Send Otp","","","1");
INSERT INTO messages VALUES("647","On Product Cllick Increase Pos Quantity","","","1");
INSERT INTO messages VALUES("648","Enable Light Box","","","1");
INSERT INTO messages VALUES("649","Fetch Cost In Purchase","","","1");
INSERT INTO messages VALUES("650","Orders Dashboard","","","1");
INSERT INTO messages VALUES("651","Order Hold","","","1");
INSERT INTO messages VALUES("652","HOLD","","","1");
INSERT INTO messages VALUES("653","2024-04-13,2024-04-20,2024-04-27","","","1");
INSERT INTO messages VALUES("654","Sale Pos","","","1");
INSERT INTO messages VALUES("655","Multiple Payment Method","","","1");
INSERT INTO messages VALUES("656","Credit Payment Method","","","1");
INSERT INTO messages VALUES("657","Return Payment Method","","","1");
INSERT INTO messages VALUES("658","Wallet Payment Method","","","1");
INSERT INTO messages VALUES("659","Gst API Key","","","1");
INSERT INTO messages VALUES("660","Gst Api","","","1");
INSERT INTO messages VALUES("661","Reward Points","","","1");
INSERT INTO messages VALUES("662","Customer Group Id","","","1");
INSERT INTO messages VALUES("663","Gst No","","","1");
INSERT INTO messages VALUES("664","Firm Name","","","1");
INSERT INTO messages VALUES("665","Firm Address","","","1");
INSERT INTO messages VALUES("666","2024-04-13,2024-04-20,2024-04-27","","","1");
INSERT INTO messages VALUES("667","Hotel Rooms","","","1");
INSERT INTO messages VALUES("668","Room No","","","1");
INSERT INTO messages VALUES("669","Capacity","","","1");
INSERT INTO messages VALUES("670","Room Booked Status","","","1");
INSERT INTO messages VALUES("671","2024-04-13,2024-04-20,2024-04-27","","","1");
INSERT INTO messages VALUES("672","Seating Tables Show","","","1");
INSERT INTO messages VALUES("673","Enable Customer Reminder ","","","1");
INSERT INTO messages VALUES("674","Print Kot And Bill Both","","","1");
INSERT INTO messages VALUES("675","2024-04-13,2024-04-20,2024-04-27","","","1");
INSERT INTO messages VALUES("676","Enable Hotel Room Mode","","","1");
INSERT INTO messages VALUES("677","2024-04-13,2024-04-20,2024-04-27","","","1");
INSERT INTO messages VALUES("678","2024-04-13,2024-04-20,2024-04-27","","","1");
INSERT INTO messages VALUES("679","2024-04-13,2024-04-20,2024-04-27","","","1");
INSERT INTO messages VALUES("680","No Room","","","1");
INSERT INTO messages VALUES("681","Hotel Room","","","1");
INSERT INTO messages VALUES("682","Attach Details","","","1");
INSERT INTO messages VALUES("683","Booked Hotels","","","1");
INSERT INTO messages VALUES("684","ID Proof","","","1");
INSERT INTO messages VALUES("685","Running","","","1");
INSERT INTO messages VALUES("686","Occupied","","","1");
INSERT INTO messages VALUES("687","Change Room","","","1");
INSERT INTO messages VALUES("688","Select Room","","","1");
INSERT INTO messages VALUES("689","Room Rent","","","1");
INSERT INTO messages VALUES("690","Order Hold/Running Status","","","1");
INSERT INTO messages VALUES("691","Return Product","","","1");
INSERT INTO messages VALUES("692","Select Customer","","","1");
INSERT INTO messages VALUES("693","Select Customer (Autosuggestive)","","","1");
INSERT INTO messages VALUES("694","Select Order ID","","","1");
INSERT INTO messages VALUES("695","Product Return","","","1");
INSERT INTO messages VALUES("696","Amount Paid To The Customer","","","1");
INSERT INTO messages VALUES("697","Customer Amount Paid","","","1");
INSERT INTO messages VALUES("698","Main Image","","","1");
INSERT INTO messages VALUES("699","Related Images","","","1");
INSERT INTO messages VALUES("700","Product Type","","","1");
INSERT INTO messages VALUES("701","Show Cancelled Orders","","","1");
INSERT INTO messages VALUES("702","Purchase Order","","","1");
INSERT INTO messages VALUES("703","Add Purchase Order","","","1");
INSERT INTO messages VALUES("704","Purchase Order Heading","","","1");
INSERT INTO messages VALUES("705","Purchase Order Status","","","1");
INSERT INTO messages VALUES("706","Send Purchase Order","","","1");
INSERT INTO messages VALUES("707","Vendor Email","","","1");
INSERT INTO messages VALUES("708","Send Mail","","","1");
INSERT INTO messages VALUES("709","Vendor Name","","","1");
INSERT INTO messages VALUES("710","Store Email","","","1");
INSERT INTO messages VALUES("711","2024-04-13,2024-04-20,2024-04-27","","","1");
INSERT INTO messages VALUES("712","2024-04-13,2024-04-20,2024-04-27","","","1");
INSERT INTO messages VALUES("713","2024-04-13,2024-04-20,2024-04-27","","","1");
INSERT INTO messages VALUES("714","Message","","","1");
INSERT INTO messages VALUES("715","2024-04-13,2024-04-20,2024-04-27","","","1");
INSERT INTO messages VALUES("716","2024-04-13,2024-04-20,2024-04-27","","","1");
INSERT INTO messages VALUES("717","2024-04-13,2024-04-20,2024-04-27","","","1");
INSERT INTO messages VALUES("718","2024-04-13,2024-04-20,2024-04-27","","","1");
INSERT INTO messages VALUES("719","2024-04-13,2024-04-20,2024-04-27","","","1");
INSERT INTO messages VALUES("720","2024-04-13,2024-04-20,2024-04-27","","","1");
INSERT INTO messages VALUES("721","Customer Name","","","1");
INSERT INTO messages VALUES("722","Customer Mobile","","","1");
INSERT INTO messages VALUES("723","Customer Wallet","","","1");
INSERT INTO messages VALUES("724","Customer Reward","","","1");
INSERT INTO messages VALUES("725","Sales Man","","","1");
INSERT INTO messages VALUES("726","Global Dicount","","","1");
INSERT INTO messages VALUES("727","Pos Simple","","","1");
INSERT INTO messages VALUES("728","Total Return Product","","","1");
INSERT INTO messages VALUES("729","Currencies","","","1");
INSERT INTO messages VALUES("730","Code","","","1");
INSERT INTO messages VALUES("731","Symbol","","","1");
INSERT INTO messages VALUES("732","Product Category Wise","","","1");
INSERT INTO messages VALUES("733","Total Stock Sale Price","","","1");
INSERT INTO messages VALUES("734","Total Quantity","","","1");
INSERT INTO messages VALUES("735","Product ID","","","1");
INSERT INTO messages VALUES("736","Product Manufacturer Wise","","","1");
INSERT INTO messages VALUES("737","Testimonials","","","1");
INSERT INTO messages VALUES("738","Start Date","","","1");
INSERT INTO messages VALUES("739","End Date","","","1");
INSERT INTO messages VALUES("740","Completed","","","1");



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
  `dateAdded` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`moduleId`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

INSERT INTO modules VALUES("1","Users","users","userId","Users","{\"moduleId\":\"1\",\"tableName\":\"users\",\"columnName\":[\"userId\",\"userName\",\"userEmail\",\"userPassword\",\"userMobile\",\"roleId\",\"superAdmin\",\"dataBaseName\",\"dbUser\",\"dbPass\",\"loginToken\",\"storeUserId\",\"storeId\",\"insertedBy\",\"status\"],\"columnCustomName\":[\"User Id\",\"User Name\",\"User Email\",\"User Password\",\"User Mobile\",\"Role Id\",\"Super Admin\",\"Data Base Name\",\"Db User\",\"Db Pass\",\"Login Token\",\"Store User Id\",\"Store Id\",\"Inserted By\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"\",\"4\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"5\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"password\",\"text\",\"select\",\"select\",\"select\"],\"fieldHeading\":[\"User Name\",\"User Email\",\"User Password\",\"User Mobile\",\"Status\",\"Role Id\",\"Store Id\"],\"fieldSortOrder\":[\"2\",\"3\",\"4\",\"5\",\"8\",\"6\",\"7\"],\"fieldColumn\":[\"6\",\"6\",\"6\",\"6\",\"12\",\"6\",\"6\"],\"fieldColumnName\":[\"userName\",\"userEmail\",\"userPassword\",\"userMobile\",\"status\",\"roleId\",\"storeId\"],\"fieldName\":[\"userName\",\"userEmail\",\"userPassword\",\"userMobile\",\"status\",\"roleId\",\"storeId\"],\"fieldId\":[\"userName\",\"userEmail\",\"userPassword\",\"userMobile\",\"status\",\"roleId\",\"storeId\"],\"fieldClass\":[\"userName\",\"userEmail\",\"userPassword\",\"userMobile\",\"status\",\"roleId\",\"storeId\"],\"fieldPlaceHolder\":[\"User Name\",\"User Email\",\"User Password\",\"User Mobile\",\"Status\",\"Role Id\",\"Store Id\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"1\",\"0\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"required\",\"required\",\"required\",\"\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"notRequiredInEdit\",\"\",\"\",\"removePleaseSelect\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\",\"Enable,Disable\",\"\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\",\"1,0\",\"\",\"\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\",\"\",\"roles\",\"stores\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\",\"\",\"roleId\",\"storeId\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\",\"\",\"heading\",\"name,tagline\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"\",\"null\",\"\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"userName\",\"userEmail\",\"userPassword\",\"userMobile\",\"status\",\"roleId\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"]}","5","0","0","0","0","0","","","","","","","","{{$controller::moduleShortCode(1)}}","","No","","","No","","","1","1","2022-03-25 05:19:04");
INSERT INTO modules VALUES("2","Settings","settings","settingId","Settings","{\"moduleId\":\"2\",\"tableName\":\"settings\",\"columnName\":[\"settingId\",\"websiteName\",\"websiteLogo\",\"allowedImageSize\",\"allowedFileSize\",\"metaTitle\",\"metaKeyword\",\"metaDescription\",\"adminEmail\",\"contactMobile\",\"contactEmail\",\"address\",\"mailJetUsername\",\"mailJetPassword\",\"mailjetEmail\",\"mailjetName\",\"facebook\",\"twitter\",\"linkedin\",\"instagram\",\"mergeLogin\",\"databaseBackup\",\"fieldsToSendValueOnMail\",\"filedsToReplaceOnMail\",\"filedsToUnsetOnMails\",\"hideAddEditDeleteIfNoStoreSelected\",\"multiplePaymentMethod\",\"creditPaymentMethod\",\"returnPaymentMethod\",\"walletPaymentMethod\",\"gstApi\",\"status\"],\"columnCustomName\":[\"Setting Id\",\"Website Name\",\"Website Logo\",\"Allowed Image Size\",\"Allowed File Size\",\"Meta Tags\",\"Meta Description\",\"Meta Keywords\",\"Admin Email\",\"Contact Mobile\",\"Contact Email\",\"Address\",\"Mail Jet Username\",\"Mail Jet Password\",\"Mailjet Email\",\"Mailjet Name\",\"Facebook\",\"Twitter\",\"Linkedin\",\"Instagram\",\"Merge Login\",\"Database Backup\",\"Fields To Send Value On Mail\",\"Fileds To Replace On Mail\",\"Fileds To Unset On Mails\",\"Hide Add Edit Delete If No Store Selected\",\"Multiple Payment Method\",\"Credit Payment Method\",\"Return Payment Method\",\"Wallet Payment Method\",\"Gst Api\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"type\":[\"\",\"\",\"image\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"3\",\"2\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"file\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"select\",\"select\",\"text\",\"text\",\"select\",\"select\",\"select\",\"select\",\"text\"],\"fieldHeading\":[\"Website Name\",\"Website Logo\",\"Allowed Image Size\",\"Allowed File Size\",\"Meta Tags\",\"Meta Description\",\"Meta Keywords\",\"Admin Email\",\"Contact Mobile\",\"Contact Email\",\"Address\",\"Mail Jet Username\",\"Mail Jet Password\",\"Facebook\",\"Twitter\",\"Linkedin\",\"Instagram\",\"Status\",\"Merge Login\",\"Mailjet Email\",\"Mailjet Name\",\"Multiple Payment Method\",\"Credit Payment Method\",\"Return Payment Method\",\"Wallet Payment Method\",\"Gst API Key\"],\"fieldSortOrder\":[\"1\",\"50\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"15\",\"16\",\"17\",\"18\",\"19\",\"20\",\"13\",\"14\",\"21\",\"22\",\"23\",\"24\",\"25\"],\"fieldColumn\":[\"4\",\"12\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"12\",\"3\",\"3\",\"3\",\"3\",\"3\",\"3\",\"6\",\"6\",\"3\",\"3\",\"3\",\"3\",\"3\",\"3\",\"12\"],\"fieldColumnName\":[\"websiteName\",\"websiteLogo\",\"allowedImageSize\",\"allowedFileSize\",\"metaTitle\",\"metaKeyword\",\"metaDescription\",\"adminEmail\",\"contactMobile\",\"contactEmail\",\"address\",\"mailJetUsername\",\"mailJetPassword\",\"facebook\",\"twitter\",\"linkedin\",\"instagram\",\"status\",\"mergeLogin\",\"mailjetEmail\",\"mailjetName\",\"multiplePaymentMethod\",\"creditPaymentMethod\",\"returnPaymentMethod\",\"walletPaymentMethod\",\"gstApi\"],\"fieldName\":[\"websiteName\",\"websiteLogo\",\"allowedImageSize\",\"allowedFileSize\",\"metaTitle\",\"metaKeyword\",\"metaDescription\",\"adminEmail\",\"contactMobile\",\"contactEmail\",\"address\",\"mailJetUsername\",\"mailJetPassword\",\"facebook\",\"twitter\",\"linkedin\",\"instagram\",\"status\",\"mergeLogin\",\"mailjetEmail\",\"mailjetName\",\"multiplePaymentMethod\",\"creditPaymentMethod\",\"returnPaymentMethod\",\"walletPaymentMethod\",\"gstApi\"],\"fieldId\":[\"websiteName\",\"websiteLogo\",\"allowedImageSize\",\"allowedFileSize\",\"metaTitle\",\"metaKeyword\",\"metaDescription\",\"adminEmail\",\"contactMobile\",\"contactEmail\",\"address\",\"mailJetUsername\",\"mailJetPassword\",\"facebook\",\"twitter\",\"linkedin\",\"instagram\",\"status\",\"mergeLogin\",\"mailjetEmail\",\"mailjetName\",\"multiplePaymentMethod\",\"creditPaymentMethod\",\"returnPaymentMethod\",\"walletPaymentMethod\",\"gstApi\"],\"fieldClass\":[\"websiteName\",\"websiteLogo\",\"allowedImageSize\",\"allowedFileSize\",\"metaTitle\",\"metaKeyword\",\"metaDescription\",\"adminEmail\",\"contactMobile\",\"contactEmail\",\"address\",\"mailJetUsername\",\"mailJetPassword\",\"facebook\",\"twitter\",\"linkedin\",\"instagram\",\"status\",\"mergeLogin\",\"mailjetEmail\",\"mailjetName\",\"multiplePaymentMethod\",\"creditPaymentMethod\",\"returnPaymentMethod\",\"walletPaymentMethod\",\"gstApi\"],\"fieldPlaceHolder\":[\"Website Name\",\"Website Logo\",\"Allowed Image Size\",\"Allowed File Size\",\"Meta Tags\",\"Meta Description\",\"Meta Keywords\",\"Admin Email\",\"Contact Mobile\",\"Contact Email\",\"Address\",\"Mail Jet Username\",\"Mail Jet Password\",\"Facebook\",\"Twitter\",\"Linkedin\",\"Instagram\",\"Status\",\"Merge Login\",\"Mailjet Email\",\"Mailjet Name\",\"Multiple Payment Method\",\"Credit Payment Method\",\"Return Payment Method\",\"Wallet Payment Method\",\"Gst Api\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"removePleaseSelect\",\"removePleaseSelect\",\"removePleaseSelect\",\"removePleaseSelect\",\"\"],\"fieldAdditionalAttribute2\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"showOnlyToSuperAdmin\",\"showOnlyToSuperAdmin\",\"showOnlyToSuperAdmin\",\"showOnlyToSuperAdmin\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"Enable,Disable\",\"No,Yes\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"1,0\",\"0,1\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"payments\",\"payments\",\"payments\",\"payments\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"paymentId\",\"paymentId\",\"paymentId\",\"paymentId\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"name\",\"name\",\"name\",\"name\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"websiteName\",\"websiteLogo\",\"allowedImageSize\",\"allowedFileSize\",\"metaTitle\",\"metaKeyword\",\"metaDescription\",\"adminEmail\",\"contactMobile\",\"contactEmail\",\"address\",\"mailJetUsername\",\"mailJetPassword\",\"facebook\",\"twitter\",\"linkedin\",\"instagram\",\"status\",\"mergeLogin\",\"mailjetEmail\",\"mailjetName\",\"gstApi\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"]}","2","0","1","0","1","0","","","","","","","","","","No","","","No","","","1","1","2022-03-25 07:52:07");
INSERT INTO modules VALUES("3","Templates","templates","templateId","Templates","{\"moduleId\":\"3\",\"tableName\":\"templates\",\"columnName\":[\"templateId\",\"subject\",\"template\",\"forWhat\",\"forWhom\",\"status\",\"dateAdded\"],\"columnCustomName\":[\"Template Id\",\"Subject\",\"Template\",\"For What\",\"For Whom\",\"Status\",\"Date Added\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"No\",\"Yes\",\"Yes\",\"Yes\",\"No\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"status\",\"\"],\"columnSortOrder\":[\"1\",\"2\",\"\",\"3\",\"4\",\"5\",\"\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"wysiwyg\",\"text\",\"select\",\"select\"],\"fieldHeading\":[\"Subject\",\"Template\",\"For What\",\"For Whom\",\"Status\"],\"fieldSortOrder\":[\"2\",\"3\",\"4\",\"5\",\"6\"],\"fieldColumn\":[\"3\",\"3\",\"3\",\"3\",\"3\"],\"fieldColumnName\":[\"subject\",\"template\",\"forWhat\",\"forWhom\",\"status\"],\"fieldName\":[\"subject\",\"template\",\"forWhat\",\"forWhom\",\"status\"],\"fieldId\":[\"subject\",\"template\",\"forWhat\",\"forWhom\",\"status\"],\"fieldClass\":[\"subject\",\"template\",\"forWhat\",\"forWhom\",\"status\"],\"fieldPlaceHolder\":[\"Subject\",\"Template\",\"For What\",\"For Whom\",\"Status\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"0\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"required\",\"\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"readonlyInEdit\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"Admin,User\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"Admin,User\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"\",\"\",\"\",\"\",\"\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"subject\",\"template\",\"forWhat\",\"forWhom\",\"status\"]}","10","0","1","0","1","0","","","","","","","","","","No","","","No","","","1","1","2022-05-01 11:30:12");
INSERT INTO modules VALUES("4","Contacts","contacts","contactId","Contacts","{\"moduleId\":\"4\",\"tableName\":\"contacts\",\"columnName\":[\"contactId\",\"name\",\"email\",\"mobile\",\"subject\",\"message\",\"status\",\"dateAdded\"],\"columnCustomName\":[\"Contact Id\",\"Name\",\"Email\",\"Mobile\",\"Subject\",\"Message\",\"Status\",\"Date Added\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"Yes\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"status\",\"\"],\"columnSortOrder\":[\"1\",\"2\",\"\",\"\",\"\",\"5\",\"\",\"4\"],\"tableColumnMerge\":[\"\",\"\",\"name\",\"name\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"text\",\"text\"],\"fieldHeading\":[\"Name\",\"Email\",\"Mobile\",\"Message\"],\"fieldSortOrder\":[\"2\",\"3\",\"4\",\"6\"],\"fieldColumn\":[\"4\",\"4\",\"4\",\"12\"],\"fieldColumnName\":[\"name\",\"email\",\"mobile\",\"message\"],\"fieldName\":[\"name\",\"email\",\"mobile\",\"message\"],\"fieldId\":[\"name\",\"email\",\"mobile\",\"message\"],\"fieldClass\":[\"name\",\"email\",\"mobile\",\"message\"],\"fieldPlaceHolder\":[\"Name\",\"Email\",\"Mobile\",\"Message\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"0\",\"1\"],\"fieldValidation\":[\"required\",\"required\",\"\",\"required\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"\",\"\",\"\",\"\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"name\",\"email\",\"mobile\",\"message\"]}","7","0","1","1","0","0","","","","","","","","","","No","","","No","","","1","1","2022-05-01 11:39:42");
INSERT INTO modules VALUES("5","Menus","menus","menuId","Menus","{\"moduleId\":\"5\",\"tableName\":\"menus\",\"columnName\":[\"menuId\",\"menuHeading\",\"link\",\"icon\",\"moduleId\",\"parentId\",\"sortOrder\",\"roleId\",\"status\",\"dateAdded\",\"dateUpdated\",\"insertedBy\"],\"columnCustomName\":[\"Menu Id\",\"Menu Heading\",\"Link\",\"Icon\",\"Module Id\",\"Parent Id\",\"Sort Order\",\"Role Id\",\"Status\",\"Date Added\",\"Date Updated\",\"Inserted By\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"menus\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"menuHeading\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\",\"menuId\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"No\",\"Yes\",\"Yes\",\"Yes\",\"No\",\"Yes\",\"No\",\"No\",\"No\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"sortOrderUpdateFromOutSide\",\"\",\"status\",\"\",\"\",\"\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"\",\"4\",\"5\",\"6\",\"\",\"7\",\"\",\"\",\"\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"OR\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"text\",\"select\",\"text\",\"select\",\"select\"],\"fieldHeading\":[\"Menu Heading\",\"Link\",\"Module Id\",\"Parent Id\",\"Sort Order\",\"Status\",\"Role Id (Show Menu) (Multiple)\"],\"fieldSortOrder\":[\"2\",\"3\",\"5\",\"6\",\"7\",\"8\",\"9\"],\"fieldColumn\":[\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"12\"],\"fieldColumnName\":[\"menuHeading\",\"link\",\"moduleId\",\"parentId\",\"sortOrder\",\"status\",\"roleId\"],\"fieldName\":[\"menuHeading\",\"link\",\"moduleId\",\"parentId\",\"sortOrder\",\"status\",\"roleId\"],\"fieldId\":[\"menuHeading\",\"link\",\"moduleId\",\"parentId\",\"sortOrder\",\"status\",\"roleId\"],\"fieldClass\":[\"menuHeading\",\"link\",\"moduleId\",\"parentId\",\"sortOrder\",\"status\",\"roleId\"],\"fieldPlaceHolder\":[\"Menu Heading\",\"Link\",\"Module Id\",\"Parent Id\",\"Sort Order\",\"Status\",\"Role Id\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\",\"0\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"multiple\"],\"fieldRequired\":[\"1\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"required\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\",\"\",\"Enable,Disable\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\",\"\",\"1,0\",\"\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"menus\",\"\",\"\",\"roles\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"menuId\",\"null\",\"\",\"roleId\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"menuHeading\",\"null\",\"\",\"heading\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"parentId\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"\",\"\",\"\",\"\",\"\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"0\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"menuHeading\",\"link\",\"moduleId\",\"parentId\",\"sortOrder\",\"status\",\"roleId\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"=\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"]}","2","0","0","0","0","0","","","","","","","","","","No","","","No","","","1","1","2022-05-01 11:39:42");
INSERT INTO modules VALUES("6","DatabaseBackups","databaseBackup","databaseBackupId","Database Backups","{\"moduleId\":\"6\",\"tableName\":\"databaseBackup\",\"columnName\":[\"databaseBackupId\",\"backUpName\",\"type\",\"status\",\"dateAdded\"],\"columnCustomName\":[\"Database Backup Id\",\"Back Up Name\",\"Type\",\"Status\",\"Date Added\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\"],\"linkType\":[\"\",\"\",\"\",\"\",\"\"],\"status\":[\"No\",\"No\",\"No\",\"No\",\"No\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"\",\"4\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\"],\"fieldType\":[\"text\",\"text\"],\"fieldHeading\":[\"Back Up Name\",\"Type\"],\"fieldSortOrder\":[\"2\",\"3\"],\"fieldColumn\":[\"3\",\"3\"],\"fieldColumnName\":[\"backUpName\",\"type\"],\"fieldName\":[\"backUpName\",\"type\"],\"fieldId\":[\"backUpName\",\"type\"],\"fieldClass\":[\"backUpName\",\"type\"],\"fieldPlaceHolder\":[\"Back Up Name\",\"Type\"],\"fieldDefaultValue\":[\"\",\"\"],\"fieldAttribute\":[\"\",\"\"],\"fieldRequired\":[\"1\",\"0\"],\"fieldValidation\":[\"required\",\"\"],\"fieldHeadingBefore\":[\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\"],\"fieldSelectTable\":[\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\"],\"fieldOrderBy\":[\"\",\"\"],\"fieldOrderByValue\":[\"\",\"\"],\"fieldSelectValue\":[\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\"],\"fieldTableColumn\":[\"backUpName\",\"type\"]}","2","0","1","1","0","0","","","PGEgY2xhc3M9ImJ0biBidG4tc3VjY2VzcyIgaHJlZj0iPD9waHAgZWNobyB1cmwoJy8nKTs/Pi88P3BocCBlY2hvICRyb3dbJ2JhY2tVcE5hbWUnXTs/PiIgc3R5bGU9Im1hcmdpbi1yaWdodDoxMHB4OyIgZGF0YS12YWx1ZT0iPD9waHAgZWNobyAkcm93WydiYWNrVXBOYW1lJ107Pz4iPkRvd25sb2FkPC9hPg0KPGRpdiBjbGFzcz0iYnRuIGJ0bi1pbmZvIGFqb3V2dmNvZmYiIHN0eWxlPSJtYXJnaW4tcmlnaHQ6MTBweDsiIGRhdGEtdmFsdWU9Ijw/cGhwIGVjaG8gJHJvd1snYmFja1VwTmFtZSddOz8+Ij5SZXN0b3JlPC9kaXY+","","","PD9waHANCmlmICgkX1BPU1RbJ3RhYmxlJ109PSJkYXRhYmFzZV9iYWNrdXAiKSB7DQogICAgJGZpbGUgPSAkdGhpcy0+Z2V0RGF0YVdoZXJlKCJkYXRhYmFzZV9iYWNrdXAiLCJkYXRhYmFzZUJhY2t1cElkIiwkX1BPU1RbJ2lkJ10pOw0KICAgIHVubGluaygkZmlsZVswXVsnYmFja1VwTmFtZSddKTsNCn0NCj8+","","","","No","","","No","","","1","1","2022-07-13 09:30:34");
INSERT INTO modules VALUES("9","Pages","pages","pageId","Pages","{\"moduleId\":\"9\",\"tableName\":\"pages\",\"columnName\":[\"pageId\",\"heading\",\"seo\",\"metaTitle\",\"metaKeyword\",\"metaDescription\",\"shortDescription\",\"description\",\"image\",\"status\"],\"columnCustomName\":[\"Page Id\",\"Heading\",\"Seo\",\"Meta Title\",\"Meta Keyword\",\"Meta Description\",\"Short Description\",\"Description\",\"Image\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"No\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"image\",\"status\"],\"columnSortOrder\":[\"1\",\"3\",\"\",\"\",\"\",\"\",\"\",\"\",\"2\",\"\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"fieldType\":[\"text\",\"text\",\"textarea\",\"textarea\",\"textarea\",\"wysiwyg\",\"wysiwyg\",\"file\",\"select\"],\"fieldHeading\":[\"Heading\",\"Seo\",\"Meta Title\",\"Meta Keyword\",\"Meta Description\",\"Short Description\",\"Description\",\"Image\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"9\",\"8\"],\"fieldColumn\":[\"6\",\"6\",\"4\",\"4\",\"4\",\"12\",\"12\",\"12\",\"12\"],\"fieldColumnName\":[\"heading\",\"seo\",\"metaTitle\",\"metaKeyword\",\"metaDescription\",\"shortDescription\",\"description\",\"image\",\"status\"],\"fieldName\":[\"heading\",\"seo\",\"metaTitle\",\"metaKeyword\",\"metaDescription\",\"shortDescription\",\"description\",\"image\",\"status\"],\"fieldId\":[\"heading\",\"seo\",\"metaTitle\",\"metaKeyword\",\"metaDescription\",\"shortDescription\",\"description\",\"image\",\"status\"],\"fieldClass\":[\"heading\",\"seo\",\"metaTitle\",\"metaKeyword\",\"metaDescription\",\"shortDescription\",\"description\",\"image\",\"status\"],\"fieldPlaceHolder\":[\"Heading\",\"Seo\",\"Meta Title\",\"Meta Keyword\",\"Meta Description\",\"Short Description\",\"Description\",\"Image\",\"Status\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"required\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"]}","8","0","0","0","0","0","","","","","","","","","","No","","{\"filterHeading\":[\"Contacts\",\"Hello\"],\"filterTable\":[\"contacts\",\"filter_types\"],\"filterGetColumnPrimaryId\":[\"contactId\",\"fiterTypeId\"],\"filterGetColumnFetchName\":[\"name\",\"email\",\"mobile\",\"heading\",\"status\"],\"filterFieldType\":[\"text\",\"text\"],\"filterSortOrder\":[\"0\",\"0\"],\"filterOrderBy\":[\"ColumnName_DESC \",\"ColumnName_DESC \"],\"filterSelectBoxCustomValue\":[\"1,2\",\"1,2\"],\"filterFieldAttributes\":[\"contacts,contacts,contacts\",\"filter types,filter types,filter types\"],\"filterFieldAdditionalAttributes\":[\"none\",\"none\",\"remove_please_select\",\"readonly\",\"multiple\"],\"filterLineNumber\":[\"2\",\"2\"],\"filterSelectBoxCustomHtml\":[\"3,4\",\"3,4\"]}","No","","","1","1","2023-05-06 02:50:49");
INSERT INTO modules VALUES("10","Filters","filters","filterId","Filters","{\"moduleId\":\"10\",\"tableName\":\"filters\",\"columnName\":[\"filterId\",\"heading\",\"getDataFrom\",\"primaryColumn\",\"columnToFetch\",\"fieldType\",\"sortOrder\",\"orderBy\",\"selectBoxValue\",\"selectBoxHtml\",\"fieldName\",\"fieldClass\",\"fieldId\",\"fieldIplaceHolder\",\"additionalAttribute\",\"lineNumber\",\"moduleId\",\"extra\",\"status\"],\"columnCustomName\":[\"Filter Id\",\"Heading\",\"Get Data From\",\"Primary Column\",\"Column To Fetch\",\"Field Type\",\"Sort Order\",\"Order By\",\"Select Box Value\",\"Select Box Html\",\"Field Name\",\"Field Class\",\"Field Id\",\"Field Iplace Holder\",\"Additional Attribute\",\"Line Number\",\"Show On Page\",\"Extra\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"modules\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"moduleName\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"moduleId\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"sortOrderUpdateFromOutSide\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"3\",\"\",\"4\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldType\":[\"text\",\"select\",\"select\",\"select\",\"select\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"select\",\"text\",\"select\",\"select\"],\"fieldHeading\":[\"Heading\",\"Get Data From (Table Name)\",\"Primary Column (First AutoInc Column)\",\"Column To Fetch (Multiple)\",\"Field Type\",\"Sort Order\",\"Order By (ColumnName_DESC || ColumnName_ASC)\",\"Select Box Value (Custom (Comma Seprated))\",\"Select Box Html (Custom (Comma Seprated))\",\"Field Name\",\"Field Class\",\"Field Id\",\"Field Place Holder\",\"Additional Attribute (Multiple)\",\"Line Number\",\"Show On Page\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"18\"],\"fieldColumn\":[\"12\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"6\",\"6\",\"3\",\"3\",\"3\",\"3\",\"4\",\"4\",\"4\",\"12\"],\"fieldColumnName\":[\"heading\",\"getDataFrom\",\"primaryColumn\",\"columnToFetch\",\"fieldType\",\"sortOrder\",\"orderBy\",\"selectBoxValue\",\"selectBoxHtml\",\"fieldName\",\"fieldClass\",\"fieldId\",\"fieldIplaceHolder\",\"additionalAttribute\",\"lineNumber\",\"moduleId\",\"status\"],\"fieldName\":[\"heading\",\"getDataFrom\",\"primaryColumn\",\"columnToFetch\",\"fieldType\",\"sortOrder\",\"orderBy\",\"selectBoxValue\",\"selectBoxHtml\",\"fieldName\",\"fieldClass\",\"fieldId\",\"fieldIplaceHolder\",\"additionalAttribute\",\"lineNumber\",\"moduleId\",\"status\"],\"fieldId\":[\"heading\",\"getDataFrom\",\"primaryColumn\",\"columnToFetch\",\"fieldType\",\"sortOrder\",\"orderBy\",\"selectBoxValue\",\"selectBoxHtml\",\"fieldName\",\"fieldClass\",\"fieldId\",\"fieldIplaceHolder\",\"additionalAttribute\",\"lineNumber\",\"moduleId\",\"status\"],\"fieldClass\":[\"heading tbngmkyqrt\",\"getDataFrom pmivrsdqty\",\"primaryColumn pxjqttrubu\",\"columnToFetch xkwhjswscp\",\"fieldType\",\"sortOrder\",\"orderBy\",\"selectBoxValue\",\"selectBoxHtml\",\"fieldName ubliuypnsy\",\"fieldClass jonnvaijjm\",\"fieldId nippwjswoi\",\"fieldIplaceHolder whaowmndwo\",\"additionalAttribute\",\"lineNumber\",\"moduleId\",\"status\"],\"fieldPlaceHolder\":[\"Heading\",\"Get Data From\",\"Primary Column\",\"Column To Fetch\",\"Field Type\",\"Sort Order\",\"Order By\",\"Select Box Value\",\"Select Box Html\",\"Field Name\",\"Field Class\",\"Field Id\",\"Field place Holder\",\"Additional Attribute\",\"Line Number\",\"Show On Page\",\"Status\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\",\"\",\"0\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"1\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"multiple\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"multiple\",\"\",\"\",\"\"],\"fieldRequired\":[\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"removePleaseSelect\",\"removePleaseSelect\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\",\"text,select,autosuggestive,date,datetime,tel,time\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"None,Remove Please Select,Readonly,Multiple,Disabled,Autosuggestive\",\"\",\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\",\"text,select,autosuggestive,date,datetime,tel,time\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"none,please_select,readonly,multiple,disabled,autosuggestive\",\"\",\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"tables\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"modules\",\"\"],\"fieldSelectIdColumn\":[\"\",\"tableName\",\"null\",\"null\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"moduleId\",\"null\"],\"fieldSelectMainColumn\":[\"\",\"tableName\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"moduleName\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"heading\",\"getDataFrom\",\"primaryColumn\",\"columnToFetch\",\"fieldType\",\"sortOrder\",\"orderBy\",\"selectBoxValue\",\"selectBoxHtml\",\"fieldName\",\"fieldClass\",\"fieldId\",\"fieldIplaceHolder\",\"additionalAttribute\",\"lineNumber\",\"status\"]}","13","0","0","0","0","0","","","","","","","","","","No","","","No","","","1","1","2024-01-25 06:09:05");
INSERT INTO modules VALUES("11","ImageManager","image_manager","imageManagerId","Image Manager","{\"moduleId\":\"11\",\"tableName\":\"image_manager\",\"columnName\":[\"imageManagerId\",\"image\",\"status\"],\"columnCustomName\":[\"Image Manager Id\",\"Image\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"No\"],\"type\":[\"\",\"image\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"\"],\"tableColumnMerge\":[\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"fieldType\":[\"file\"],\"fieldHeading\":[\"Image\"],\"fieldSortOrder\":[\"1\"],\"fieldColumn\":[\"12\"],\"fieldColumnName\":[\"image\"],\"fieldName\":[\"image\"],\"fieldId\":[\"image\"],\"fieldClass\":[\"image\"],\"fieldPlaceHolder\":[\"Image\"],\"fieldDefaultValue\":[\"\"],\"fieldAttribute\":[\"\"],\"fieldRequired\":[\"0\"],\"fieldValidation\":[\"\"],\"fieldHeadingBefore\":[\"\"],\"fieldAdditionalAttribute\":[\"\"],\"fieldSelectBoxText\":[\"\"],\"fieldSelectBoxValue\":[\"\"],\"fieldSelectTable\":[\"\"],\"fieldSelectIdColumn\":[\"\"],\"fieldSelectMainColumn\":[\"\"],\"fieldSelectWhere\":[\"\"],\"fieldOrderBy\":[\"\"],\"fieldOrderByValue\":[\"null\"],\"fieldSelectValue\":[\"\"],\"fieldSelectOperator\":[\"\"]}","8","0","0","0","0","0","","","","","","","","","","No","","","No","","","1","1","2024-02-09 05:39:25");
INSERT INTO modules VALUES("12","AdminLoginHistory","admin_login_history","adminLoginHistoryId","Admin Login History","{\"moduleId\":\"12\",\"tableName\":\"admin_login_history\",\"columnName\":[\"adminLoginHistoryId\",\"userId\",\"status\",\"dateAdded\"],\"columnCustomName\":[\"Admin Login History Id\",\"User Id\",\"Status\",\"Date Added\"],\"foreignColumnShow\":[\"No\",\"Yes\",\"No\",\"No\"],\"foreignTable\":[\"\",\"users\",\"\",\"\"],\"foreignColumn\":[\"\",\"userName\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"userId\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"status\",\"\"],\"columnSortOrder\":[\"1\",\"2\",\"\",\"3\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"fieldType\":[\"select\",\"select\",\"select\",\"text\"],\"fieldHeading\":[\"Admin Login History Id\",\"User Id\",\"Status\",\"Date Added\"],\"fieldSortOrder\":[\"0\",\"1\",\"2\",\"3\"],\"fieldColumn\":[\"4\",\"4\",\"4\",\"4\"],\"fieldColumnName\":[\"adminLoginHistoryId\",\"userId\",\"status\",\"dateAdded\"],\"fieldName\":[\"adminLoginHistoryId\",\"userId\",\"status\",\"dateAdded\"],\"fieldId\":[\"adminLoginHistoryId\",\"userId\",\"status\",\"dateAdded\"],\"fieldClass\":[\"adminLoginHistoryId\",\"userId\",\"status\",\"dateAdded\"],\"fieldPlaceHolder\":[\"Admin Login History Id\",\"User Id\",\"Status\",\"Date Added\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"0\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"adminLoginHistoryId\",\"userId\",\"status\",\"dateAdded\"]}","13","0","1","0","0","1","","","","","","","","","","No","","","No","","","1","1","2024-02-09 07:32:57");
INSERT INTO modules VALUES("13","Countries","countries","countryId","Countries","{\"moduleId\":\"13\",\"tableName\":\"countries\",\"columnName\":[\"countryId\",\"heading\",\"sortOrder\",\"softDelete\",\"dateAdded\",\"dateUpdated\",\"insertedBy\",\"updatedBy\",\"status\"],\"columnCustomName\":[\"Country Id\",\"Heading\",\"Sort Order\",\"Soft Delete\",\"Date Added\",\"Date Updated\",\"Inserted By\",\"Updated By\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"sortOrderUpdateFromOutSide\",\"\",\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"\",\"5\",\"\",\"\",\"\",\"4\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"select\"],\"fieldHeading\":[\"Heading\",\"Sort Order\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\",\"8\"],\"fieldColumn\":[\"12\",\"6\",\"6\"],\"fieldColumnName\":[\"heading\",\"sortOrder\",\"status\"],\"fieldName\":[\"heading\",\"sortOrder\",\"status\"],\"fieldId\":[\"heading\",\"sortOrder\",\"status\"],\"fieldClass\":[\"heading\",\"sortOrder\",\"status\"],\"fieldPlaceHolder\":[\"Heading\",\"Sort Order\",\"Status\"],\"fieldDefaultValue\":[\"\",\"0\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"0\"],\"fieldValidation\":[\"required\",\"numeric|required\",\"\"],\"fieldHeadingBefore\":[\"This is a module 13 heading\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\"],\"fieldTableColumn\":[\"heading\",\"sortOrder\",\"status\"],\"fieldSelectOperator\":[\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\"]}","2","0","0","0","0","0","","","","","","","","","","No","","","No","","","1","1","2024-02-09 10:33:01");
INSERT INTO modules VALUES("14","States","states","stateId","States","{\"moduleId\":\"14\",\"tableName\":\"states\",\"columnName\":[\"stateId\",\"heading\",\"countryId\",\"sortOrder\",\"image\",\"description\",\"softDelete\",\"updatedBy\",\"dateUpdated\",\"insertedBy\",\"dateAdded\",\"status\"],\"columnCustomName\":[\"State Id\",\"Heading\",\"Country Id\",\"Sort Order\",\"Image\",\"Description\",\"Soft Delete\",\"Updated By\",\"Date Updated\",\"Inserted By\",\"Date Added\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"countries\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"heading\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"countryId\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"sortOrderUpdateFromOutSide\",\"image\",\"\",\"\",\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"1\",\"\",\"\",\"\",\"\",\"\",\"6\",\"5\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"OR\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"select\",\"text\",\"select\",\"file\",\"wysiwyg\"],\"fieldHeading\":[\"Heading\",\"Country Id\",\"Sort Order\",\"Status\",\"Image\",\"Description\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"9\",\"10\",\"11\"],\"fieldColumn\":[\"12\",\"4\",\"4\",\"4\",\"12\",\"12\"],\"fieldColumnName\":[\"heading\",\"countryId\",\"sortOrder\",\"status\",\"image\",\"description\"],\"fieldName\":[\"heading\",\"countryId\",\"sortOrder\",\"status\",\"image\",\"description\"],\"fieldId\":[\"heading\",\"countryId\",\"sortOrder\",\"status\",\"image\",\"description\"],\"fieldClass\":[\"heading\",\"countryId\",\"sortOrder\",\"status\",\"image\",\"description\"],\"fieldPlaceHolder\":[\"Heading\",\"Country Id\",\"Sort Order\",\"Status\",\"Image\",\"Description\"],\"fieldDefaultValue\":[\"\",\"\",\"0\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"0\",\"1\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"required\",\"\",\"numeric|required\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"This is a module 14 heading\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"Enable,Disable\",\"\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"1,0\",\"\",\"\"],\"fieldSelectTable\":[\"\",\"countries\",\"\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"countryId\",\"null\",\"null\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"heading\",\"\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"heading\",\"countryId\",\"sortOrder\",\"status\",\"image\",\"description\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\",\"\"]}","2","0","0","0","0","0","","","","","","","","{{$controller::moduleShortCode(14)}}","thank-you","Yes","countryId-heading-countries","","No","","","1","1","2024-02-09 10:56:43");
INSERT INTO modules VALUES("15","CustomerGroup","customer_group","customerGroupId","Customer Group","{\"moduleId\":\"15\",\"tableName\":\"customer_group\",\"columnName\":[\"customerGroupId\",\"heading\",\"defaultDiscountPercent\",\"sortOrder\",\"default\",\"updatedBy\",\"insertedBy\",\"dateUpdated\",\"dateAdded\",\"softDelete\",\"storeId\",\"userId\",\"status\"],\"columnCustomName\":[\"Customer Group Id\",\"Heading\",\"Default Discount Percent\",\"Sort Order\",\"Default\",\"Updated By\",\"Inserted By\",\"Date Updated\",\"Date Added\",\"Soft Delete\",\"Store Id\",\"User Id\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"stores\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"name\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"storeId\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"Yes\",\"Yes\",\"No\",\"Yes\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"sortOrderUpdateFromOutSide\",\"makeDefault\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"7\",\"\",\"\",\"6\",\"7\",\"\",\"5\",\"\",\"8\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"text\",\"select\",\"select\"],\"fieldHeading\":[\"Heading\",\"Default Discount Percent\",\"Sort Order\",\"Status\",\"Make Default\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"12\",\"11\"],\"fieldColumn\":[\"4\",\"4\",\"4\",\"6\",\"6\"],\"fieldColumnName\":[\"heading\",\"defaultDiscountPercent\",\"sortOrder\",\"status\",\"default\"],\"fieldName\":[\"heading\",\"defaultDiscountPercent\",\"sortOrder\",\"status\",\"default\"],\"fieldId\":[\"heading\",\"defaultDiscountPercent\",\"sortOrder\",\"status\",\"default\"],\"fieldClass\":[\"heading\",\"defaultDiscountPercent\",\"sortOrder\",\"status\",\"default\"],\"fieldPlaceHolder\":[\"Heading\",\"Default Discount Percent\",\"Sort Order\",\"Status\",\"Default\"],\"fieldDefaultValue\":[\"\",\"0\",\"0\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"0\",\"1\",\"0\",\"0\"],\"fieldValidation\":[\"required\",\"\",\"required|numeric\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"Enable,Disable\",\"No,Yes\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"1,0\",\"No,Yes\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"heading\",\"defaultDiscountPercent\",\"sortOrder\",\"status\",\"default\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\"]}","28","0","0","0","0","0","","","","","PD9waHANCiRjaGVja0RlZmF1bHQgPSBEQjo6c2VsZWN0KCJTRUxFQ1QgKiBGUk9NIGN1c3RvbWVyX2dyb3VwIFdIRVJFIHN0b3JlSWQ9JyIuU2Vzc2lvbjo6Z2V0KCJzdG9yZUlkIikuIicgQU5EIHVzZXJJZD0nIi5TZXNzaW9uOjpnZXQoInVzZXJJZCIpLiInIik7DQokY2hlY2tEZWZhdWx0ID0gJHRoaXMtPmFycmF5Q29udmVydCgkY2hlY2tEZWZhdWx0KTsNCmlmKGNvdW50KCRjaGVja0RlZmF1bHQpPT0xKXsNCglEQjo6c2VsZWN0KCJVUERBVEUgY3VzdG9tZXJfZ3JvdXAgU0VUIGBkZWZhdWx0YCA9ICdZZXMnIFdIRVJFIGN1c3RvbWVyR3JvdXBJZD0nIi4kY2hlY2tEZWZhdWx0WzBdWydjdXN0b21lckdyb3VwSWQnXS4iJyIpOw0KfWVsc2V7DQoJREI6OnNlbGVjdCgiVVBEQVRFIGN1c3RvbWVyX2dyb3VwIFNFVCBgZGVmYXVsdGAgPSAnTm8nIFdIRVJFIHN0b3JlSWQ9JyIuU2Vzc2lvbjo6Z2V0KCJzdG9yZUlkIikuIiciKTsNCglpZihpc3NldCgkYXJyYXlbJ3VwZGF0ZV9pZCddKSBBTkQgJGFycmF5Wyd1cGRhdGVfaWQnXSA+IDApew0KCQlEQjo6c2VsZWN0KCJVUERBVEUgY3VzdG9tZXJfZ3JvdXAgU0VUIGBkZWZhdWx0YCA9ICdZZXMnIFdIRVJFIGN1c3RvbWVyR3JvdXBJZD0nIi4kYXJyYXlbJ3VwZGF0ZV9pZCddLiInIik7DQoJfWVsc2V7DQoJCURCOjpzZWxlY3QoIlVQREFURSBjdXN0b21lcl9ncm91cCBTRVQgYGRlZmF1bHRgID0gJ1llcycgV0hFUkUgY3VzdG9tZXJHcm91cElkPSciLiRyZXBseVsnaW5zZXJ0X2lkJ10uIiciKTsNCgl9DQp9DQo/Pg==","","","{{$controller::moduleShortCode(15)}}","","No","","","No","","","1","1","2024-02-15 03:45:11");
INSERT INTO modules VALUES("16","Stores","stores","storeId","Stores","{\"moduleId\":\"16\",\"tableName\":\"stores\",\"columnName\":[\"storeId\",\"name\",\"tagline\",\"email\",\"mobile\",\"address\",\"cityId\",\"stateId\",\"sortOrder\",\"userId\",\"softDelete\",\"updatedBy\",\"insertedBy\",\"dateUpdated\",\"dateAdded\",\"status\"],\"columnCustomName\":[\"Store Id\",\"Name\",\"Tagline\",\"Email\",\"Mobile\",\"Address\",\"City Id\",\"State Id\",\"Sort Order\",\"User Id\",\"Soft Delete\",\"Updated By\",\"Inserted By\",\"Date Updated\",\"Date Added\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"No\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"sortOrderUpdateFromOutSide\",\"\",\"\",\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"\",\"\",\"3\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"4\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"email\",\"text\",\"textarea\",\"select\",\"select\",\"text\",\"select\"],\"fieldHeading\":[\"Name\",\"Tagline\",\"Email\",\"Mobile\",\"Address\",\"City Id\",\"State Id\",\"Sort Order\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"15\"],\"fieldColumn\":[\"6\",\"6\",\"6\",\"6\",\"12\",\"4\",\"4\",\"4\",\"12\"],\"fieldColumnName\":[\"name\",\"tagline\",\"email\",\"mobile\",\"address\",\"cityId\",\"stateId\",\"sortOrder\",\"status\"],\"fieldName\":[\"name\",\"tagline\",\"email\",\"mobile\",\"address\",\"cityId\",\"stateId\",\"sortOrder\",\"status\"],\"fieldId\":[\"name\",\"tagline\",\"email\",\"mobile\",\"address\",\"cityId\",\"stateId\",\"sortOrder\",\"status\"],\"fieldClass\":[\"name\",\"tagline\",\"email\",\"mobile\",\"address\",\"cityId\",\"stateId\",\"sortOrder\",\"status\"],\"fieldPlaceHolder\":[\"Name\",\"Tagline\",\"Email\",\"Mobile\",\"Address\",\"City Id\",\"State Id\",\"Sort Order\",\"Status\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"0\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"0\",\"0\",\"1\",\"0\",\"1\",\"1\",\"1\",\"0\"],\"fieldValidation\":[\"required\",\"\",\"\",\"required|numeric|digits:10\",\"\",\"required\",\"required\",\"required|numeric\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\",\"\",\"cities\",\"states\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\",\"\",\"cityId\",\"stateId\",\"null\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\",\"\",\"heading\",\"heading\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"name\",\"tagline\",\"email\",\"mobile\",\"address\",\"cityId\",\"stateId\",\"sortOrder\",\"status\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"]}","30","0","0","0","0","0","","","","","","","","{{$controller::moduleShortCode(0)}}","","No","","","No","","","1","1","2024-02-15 08:41:32");
INSERT INTO modules VALUES("17","Cities","cities","cityId","Cities","{\"moduleId\":\"17\",\"tableName\":\"cities\",\"columnName\":[\"cityId\",\"heading\",\"stateId\",\"countryId\",\"status\"],\"columnCustomName\":[\"City Id\",\"Heading\",\"State Id\",\"Country Id\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"Yes\",\"Yes\",\"No\"],\"foreignTable\":[\"\",\"\",\"states\",\"countries\",\"\"],\"foreignColumn\":[\"\",\"\",\"heading\",\"heading\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"stateId\",\"countryId\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"5\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"select\",\"select\",\"select\"],\"fieldHeading\":[\"Heading\",\"State Id\",\"Country Id\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"4\"],\"fieldColumn\":[\"6\",\"6\",\"6\",\"6\"],\"fieldColumnName\":[\"heading\",\"stateId\",\"countryId\",\"status\"],\"fieldName\":[\"heading\",\"stateId\",\"countryId\",\"status\"],\"fieldId\":[\"heading\",\"stateId\",\"countryId\",\"status\"],\"fieldClass\":[\"heading\",\"stateId\",\"countryId\",\"status\"],\"fieldPlaceHolder\":[\"Heading\",\"State Id\",\"Country Id\",\"Status\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"1\",\"0\"],\"fieldValidation\":[\"required\",\"required\",\"required\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"states\",\"countries\",\"\"],\"fieldSelectIdColumn\":[\"\",\"stateId\",\"countryId\",\"null\"],\"fieldSelectMainColumn\":[\"\",\"heading\",\"heading\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"heading\",\"stateId\",\"countryId\",\"status\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\"]}","2","0","0","0","0","0","","","","","","","","{{$controller::moduleShortCode(0)}}","","No","","","No","","","1","1","2024-02-15 08:47:35");
INSERT INTO modules VALUES("18","Taxes","taxes","taxId","Taxes","{\"moduleId\":\"18\",\"tableName\":\"taxes\",\"columnName\":[\"taxId\",\"heading\",\"percent\",\"sortOrder\",\"status\"],\"columnCustomName\":[\"Tax Id\",\"Heading\",\"Percent\",\"Sort Order\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"sortOrderUpdateFromOutSide\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"5\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"text\",\"select\"],\"fieldHeading\":[\"Heading\",\"Percent\",\"Sort Order\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"4\"],\"fieldColumn\":[\"6\",\"6\",\"6\",\"6\"],\"fieldColumnName\":[\"heading\",\"percent\",\"sortOrder\",\"status\"],\"fieldName\":[\"heading\",\"percent\",\"sortOrder\",\"status\"],\"fieldId\":[\"heading\",\"percent\",\"sortOrder\",\"status\"],\"fieldClass\":[\"heading\",\"percent\",\"sortOrder\",\"status\"],\"fieldPlaceHolder\":[\"Heading\",\"Percent\",\"Sort Order\",\"Status\"],\"fieldDefaultValue\":[\"\",\"0\",\"0\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"1\",\"0\"],\"fieldValidation\":[\"required\",\"required\",\"required\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\"]}","2","0","0","0","0","0","","","","","","","","{{$controller::moduleShortCode(0)}}","","No","","","No","","","1","1","2024-02-24 06:10:59");
INSERT INTO modules VALUES("19","Units","units","unitId","Units","{\"moduleId\":\"19\",\"tableName\":\"units\",\"columnName\":[\"unitId\",\"heading\",\"unit\",\"sortOrder\",\"status\"],\"columnCustomName\":[\"Unit Id\",\"Heading\",\"Unit\",\"Sort Order\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"sortOrderUpdateFromOutSide\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"5\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"text\",\"select\"],\"fieldHeading\":[\"Heading\",\"Unit\",\"Sort Order\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"4\"],\"fieldColumn\":[\"6\",\"6\",\"6\",\"6\"],\"fieldColumnName\":[\"heading\",\"unit\",\"sortOrder\",\"status\"],\"fieldName\":[\"heading\",\"unit\",\"sortOrder\",\"status\"],\"fieldId\":[\"heading\",\"unit\",\"sortOrder\",\"status\"],\"fieldClass\":[\"heading\",\"unit\",\"sortOrder\",\"status\"],\"fieldPlaceHolder\":[\"Heading\",\"Unit\",\"Sort Order\",\"Status\"],\"fieldDefaultValue\":[\"\",\"\",\"0\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"1\",\"0\"],\"fieldValidation\":[\"required\",\"required\",\"required|numeric\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\"]}","2","0","0","0","0","0","","","","","","","","{{$controller::moduleShortCode(0)}}","","No","","","No","","","1","1","2024-02-24 06:23:43");
INSERT INTO modules VALUES("20","Vendors","vendors","vendorId","Vendors","{\"moduleId\":\"20\",\"tableName\":\"vendors\",\"columnName\":[\"vendorId\",\"heading\",\"mobile\",\"email\",\"gstNumber\",\"openingBalance\",\"cityId\",\"stateId\",\"countryId\",\"image\",\"storeId\",\"userId\",\"sorftDelete\",\"updatedBy\",\"insertedBy\",\"dateUpdated\",\"dateAdded\",\"status\"],\"columnCustomName\":[\"Vendor Id\",\"Heading\",\"Mobile\",\"Email\",\"Gst Number\",\"Opening Balance\",\"City Id\",\"State Id\",\"Country Id\",\"Image\",\"Store Id\",\"User Id\",\"Sorft Delete\",\"Updated By\",\"Inserted By\",\"Date Updated\",\"Date Added\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"cities\",\"\",\"\",\"\",\"stores\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"heading\",\"\",\"\",\"\",\"name\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"cityId\",\"\",\"\",\"\",\"storeId\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"No\",\"No\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"image\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"3\",\"\",\"\",\"\",\"\",\"4\",\"\",\"\",\"2\",\"5\",\"\",\"\",\"\",\"\",\"\",\"6\",\"7\"],\"tableColumnMerge\":[\"\",\"\",\"heading\",\"\",\"heading\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"email\",\"text\",\"select\",\"select\",\"select\",\"file\",\"select\",\"text\"],\"fieldHeading\":[\"Heading\",\"Mobile\",\"Email\",\"Opening Balance\",\"City Id\",\"State Id\",\"Country Id\",\"Image\",\"Status\",\"GST Number\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"8\",\"10\",\"9\",\"7\"],\"fieldColumn\":[\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"12\",\"4\",\"4\"],\"fieldColumnName\":[\"heading\",\"mobile\",\"email\",\"openingBalance\",\"cityId\",\"stateId\",\"countryId\",\"image\",\"status\",\"gstNumber\"],\"fieldName\":[\"heading\",\"mobile\",\"email\",\"openingBalance\",\"cityId\",\"stateId\",\"countryId\",\"image\",\"status\",\"gstNumber\"],\"fieldId\":[\"heading\",\"mobile\",\"email\",\"openingBalance\",\"cityId\",\"stateId\",\"countryId\",\"image\",\"status\",\"gstNumber\"],\"fieldClass\":[\"heading\",\"mobile\",\"email\",\"openingBalance\",\"cityId\",\"stateId\",\"countryId\",\"image\",\"status\",\"gstNumber\"],\"fieldPlaceHolder\":[\"Heading\",\"Mobile\",\"Email\",\"Opening Balance\",\"City Id\",\"State Id\",\"Country Id\",\"Image\",\"Status\",\"Gst Number\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"0\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"0\",\"1\",\"1\",\"1\",\"0\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"required\",\"required|numeric|digits:10\",\"\",\"required|numeric\",\"required\",\"required\",\"\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"Enable,Disable\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"1,0\",\"\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\",\"cities\",\"states\",\"countries\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\",\"cityId\",\"stateId\",\"countryId\",\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\",\"heading\",\"heading\",\"heading\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"heading\",\"mobile\",\"email\",\"openingBalance\",\"cityId\",\"stateId\",\"countryId\",\"image\",\"status\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"]}","30","0","0","0","0","0","","","","","","","","{{$controller::moduleShortCode(0)}}","","No","","","No","","","1","1","2024-02-24 06:30:04");
INSERT INTO modules VALUES("21","Customers","customers","customerId","Customers","{\"moduleId\":\"21\",\"tableName\":\"customers\",\"columnName\":[\"customerId\",\"name\",\"mobile\",\"email\",\"openingBalance\",\"walletBalance\",\"rewardPoints\",\"customerGroupId\",\"cityId\",\"stateId\",\"countryId\",\"gstNo\",\"firmName\",\"firmAddress\",\"storeId\",\"userId\",\"insertedBy\",\"updatedBy\",\"dateUpdated\",\"softDelete\",\"status\",\"dateAdded\"],\"columnCustomName\":[\"Customer Id\",\"Name\",\"Mobile\",\"Email\",\"Opening Balance\",\"Wallet Balance\",\"Reward Points\",\"Customer Group Id\",\"City Id\",\"State Id\",\"Country Id\",\"Gst No\",\"Firm Name\",\"Firm Address\",\"Store Id\",\"User Id\",\"Inserted By\",\"Updated By\",\"Date Updated\",\"Soft Delete\",\"Status\",\"Date Added\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"cities\",\"\",\"\",\"\",\"\",\"\",\"stores\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"heading\",\"\",\"\",\"\",\"\",\"\",\"name\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"cityId\",\"\",\"\",\"\",\"\",\"\",\"storeId\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"status\",\"\"],\"columnSortOrder\":[\"1\",\"2\",\"\",\"\",\"\",\"\",\"\",\"\",\"3\",\"\",\"\",\"\",\"\",\"\",\"4\",\"\",\"\",\"\",\"\",\"\",\"5\",\"6\"],\"tableColumnMerge\":[\"\",\"\",\"name\",\"name\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"email\",\"text\",\"text\",\"text\",\"select\",\"select\",\"select\",\"select\",\"select\",\"text\",\"text\",\"text\"],\"fieldHeading\":[\"Name\",\"Mobile\",\"Email\",\"Opening Balance\",\"Wallet Balance\",\"Reward Points\",\"Customer Group Id\",\"City Id\",\"State Id\",\"Country Id\",\"Status\",\"Gst Number\",\"Firm Address\",\"Firm Name\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"17\",\"11\",\"13\",\"12\"],\"fieldColumn\":[\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"3\",\"3\",\"3\",\"3\",\"12\",\"6\",\"12\",\"6\"],\"fieldColumnName\":[\"name\",\"mobile\",\"email\",\"openingBalance\",\"walletBalance\",\"rewardPoints\",\"customerGroupId\",\"cityId\",\"stateId\",\"countryId\",\"status\",\"gstNo\",\"firmAddress\",\"firmName\"],\"fieldName\":[\"name\",\"mobile\",\"email\",\"openingBalance\",\"walletBalance\",\"rewardPoints\",\"customerGroupId\",\"cityId\",\"stateId\",\"countryId\",\"status\",\"gstNo\",\"firmAddress\",\"firmName\"],\"fieldId\":[\"name\",\"mobile\",\"email\",\"openingBalance\",\"walletBalance\",\"rewardPoints\",\"customerGroupId\",\"cityId\",\"stateId\",\"countryId\",\"status\",\"gstNo\",\"firmAddress\",\"firmName\"],\"fieldClass\":[\"name\",\"mobile\",\"email\",\"openingBalance uoycoontir\",\"walletBalance\",\"rewardPoints\",\"customerGroupId\",\"cityId\",\"stateId\",\"countryId\",\"status\",\"gstNo ldqspskkad\",\"firmAddress\",\"firmName\"],\"fieldPlaceHolder\":[\"Name\",\"Mobile\",\"Email\",\"Opening Balance\",\"Wallet Balance\",\"Reward Points\",\"Customer Group Id\",\"City Id\",\"State Id\",\"Country Id\",\"Status\",\"Gst No\",\"Firm Address\",\"Firm Name\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"0\",\"0\",\"0\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"readonly\",\"readonly\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"0\",\"1\",\"1\",\"1\",\"0\",\"1\",\"1\",\"1\",\"0\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"required\",\"required|digits:10|numeric|unique:customers,mobile\",\"unique:customers,email\",\"required|numeric\",\"required|numeric\",\"numeric|required\",\"\",\"required\",\"required\",\"required\",\"\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"removePleaseSelect\",\"\",\"\",\"removePleaseSelect\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute2\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"Enable,Disable\",\"\",\"\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"1,0\",\"\",\"\",\"\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"customer_group\",\"cities\",\"states\",\"countries\",\"\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"customerGroupId\",\"cityId\",\"stateId\",\"countryId\",\"null\",\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"heading\",\"heading\",\"heading\",\"heading\",\"\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"name\",\"mobile\",\"email\",\"walletBalance\",\"rewardPoints\",\"customerGroupId\",\"cityId\",\"stateId\",\"countryId\",\"status\",\"gstNo\",\"firmAddress\",\"firmName\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"]}","28","0","0","0","0","0","","","","","PD9waHANCmlmKGlzc2V0KCRyZXBseVsnaW5zZXJ0X2lkJ10pIEFORCAkcmVwbHlbJ2luc2VydF9pZCddID4gMCl7DQoJREI6Omluc2VydCgiSU5TRVJUIElOVE8gY3VzdG9tZXJfbGVkZ2VyX3dhbGxldCBTRVQgDQoJCWN1c3RvbWVySWQ9JyIuJHJlcGx5WydpbnNlcnRfaWQnXS4iJywNCgkJYW1vdW50PSciLiRhcnJheVsnb3BlbmluZ0JhbGFuY2UnXS4iJywNCgkJYHR5cGVgPSdvcGVuaW5nJywNCgkJc3RvcmVJZD0nIi5TZXNzaW9uOjpnZXQoInN0b3JlSWQiKS4iJywNCgkJdXNlcklkPSciLlNlc3Npb246OmdldCgidXNlcklkIikuIiciKTsNCn0NCj8+","","","{{$controller::moduleShortCode(21)}}","","No","","","No","","","1","1","2024-02-24 08:31:44");
INSERT INTO modules VALUES("22","Manufacturers","manufacturers","manufacturerId","Manufacturers","{\"moduleId\":\"22\",\"tableName\":\"manufacturers\",\"columnName\":[\"manufacturerId\",\"heading\",\"image\",\"storeId\",\"userId\",\"softDelete\",\"dateUpdated\",\"dateAdded\",\"status\"],\"columnCustomName\":[\"Manufacturer Id\",\"Heading\",\"Image\",\"Store Id\",\"User Id\",\"Soft Delete\",\"Date Updated\",\"Date Added\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"stores\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"name\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"storeId\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"Yes\",\"Yes\"],\"type\":[\"\",\"\",\"image\",\"\",\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"3\",\"2\",\"4\",\"\",\"\",\"\",\"6\",\"5\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"file\",\"select\"],\"fieldHeading\":[\"Heading\",\"Image\",\"Status\"],\"fieldSortOrder\":[\"1\",\"3\",\"2\"],\"fieldColumn\":[\"12\",\"12\",\"12\"],\"fieldColumnName\":[\"heading\",\"image\",\"status\"],\"fieldName\":[\"heading\",\"image\",\"status\"],\"fieldId\":[\"heading\",\"image\",\"status\"],\"fieldClass\":[\"heading\",\"image\",\"status\"],\"fieldPlaceHolder\":[\"Heading\",\"Image\",\"Status\"],\"fieldDefaultValue\":[\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"0\",\"0\"],\"fieldValidation\":[\"required\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\"],\"fieldTableColumn\":[\"heading\",\"image\",\"status\"],\"fieldSelectOperator\":[\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\"]}","30","0","0","0","0","0","","","","","","","","{{$controller::moduleShortCode(0)}}","","No","","","No","","","1","1","2024-02-24 09:30:45");
INSERT INTO modules VALUES("23","Categories","categories","categoryId","Categories","{\"moduleId\":\"23\",\"tableName\":\"categories\",\"columnName\":[\"categoryId\",\"heading\",\"image\",\"parentId\",\"storeId\",\"userId\",\"updatedBy\",\"insertedBy\",\"dateUpdated\",\"dateAdded\",\"softDelete\",\"status\"],\"columnCustomName\":[\"Category Id\",\"Heading\",\"Image\",\"Parent Id\",\"Store Id\",\"User Id\",\"Updated By\",\"Inserted By\",\"Date Updated\",\"Date Added\",\"Soft Delete\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"categories\",\"stores\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"heading\",\"name\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"categoryId\",\"storeId\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"image\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"3\",\"2\",\"4\",\"5\",\"\",\"\",\"\",\"\",\"\",\"\",\"6\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"file\",\"select\",\"select\"],\"fieldHeading\":[\"Heading\",\"Image\",\"Parent Id\",\"Status\"],\"fieldSortOrder\":[\"1\",\"4\",\"2\",\"3\"],\"fieldColumn\":[\"4\",\"12\",\"4\",\"4\"],\"fieldColumnName\":[\"heading\",\"image\",\"parentId\",\"status\"],\"fieldName\":[\"heading\",\"image\",\"parentId\",\"status\"],\"fieldId\":[\"heading\",\"image\",\"parentId\",\"status\"],\"fieldClass\":[\"heading\",\"image\",\"parentId\",\"status\"],\"fieldPlaceHolder\":[\"Heading\",\"Image\",\"Parent Id\",\"Status\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"required\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\",\"categories\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"categoryId\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"heading\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"heading\",\"image\",\"parentId\",\"status\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\"]}","30","0","0","0","0","0","","","","","","","","{{$controller::moduleShortCode(0)}}","","No","","","No","","","1","2","2024-02-24 09:42:21");
INSERT INTO modules VALUES("24","Products","products","productId","Products","{\"moduleId\":\"24\",\"tableName\":\"products\",\"columnName\":[\"productId\",\"heading\",\"model\",\"barcode\",\"cost\",\"price\",\"percent\",\"manufacturerId\",\"categoryId\",\"vendorId\",\"unitId\",\"taxId\",\"taxType\",\"hsnCode\",\"quantity\",\"subtract\",\"changePriceDuringBilling\",\"image\",\"relatedImage\",\"showInPos\",\"productType\",\"softDelete\",\"storeId\",\"userId\",\"updatedBy\",\"insertedBy\",\"dateUpdated\",\"status\",\"dateAdded\"],\"columnCustomName\":[\"Product Id\",\"Heading\",\"Model\",\"Barcode\",\"Cost\",\"Price\",\"Percent\",\"Manufacturer Id\",\"Category Id\",\"Vendor Id\",\"Unit Id\",\"Tax Id\",\"Tax Type\",\"Hsn Code\",\"Quantity\",\"Subtract\",\"Change Price During Billing\",\"Image\",\"Related Image\",\"Show In Pos\",\"Product Type\",\"Soft Delete\",\"Store Id\",\"User Id\",\"Updated By\",\"Inserted By\",\"Date Updated\",\"Status\",\"Date Added\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"stores\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"name\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"storeId\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"No\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"image\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"status\",\"\"],\"columnSortOrder\":[\"1\",\"3\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"4\",\"\",\"\",\"2\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"6\",\"7\"],\"tableColumnMerge\":[\"\",\"\",\"heading\",\"heading\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"text\",\"select\",\"select\",\"select\",\"select\",\"select\",\"select\",\"text\",\"select\",\"file\",\"select\",\"select\",\"file\",\"text\",\"text\",\"text\",\"select\",\"select\"],\"fieldHeading\":[\"Heading\",\"Model\",\"Barcode\",\"Manufacturer Id\",\"Category Id\",\"Vendor Id\",\"Unit Id\",\"Tax Id\",\"Tax Type\",\"Quantity\",\"Subtract From Quantity\",\"Image\",\"Show In Pos\",\"Status\",\"Related Image\",\"Cost\",\"Price\",\"HSN Code\",\"Change Price During Billing\",\"Product Type\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"20\",\"14\",\"16\",\"21\",\"4\",\"5\",\"12\",\"15\",\"17\"],\"fieldColumn\":[\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"3\",\"3\",\"3\",\"3\",\"3\",\"6\",\"3\",\"6\",\"6\",\"6\",\"6\",\"3\",\"3\",\"6\"],\"fieldColumnName\":[\"heading\",\"model\",\"barcode\",\"manufacturerId\",\"categoryId\",\"vendorId\",\"unitId\",\"taxId\",\"taxType\",\"quantity\",\"subtract\",\"image\",\"showInPos\",\"status\",\"relatedImage\",\"cost\",\"price\",\"hsnCode\",\"changePriceDuringBilling\",\"\"],\"fieldName\":[\"heading\",\"model\",\"barcode\",\"manufacturerId\",\"categoryId\",\"vendorId\",\"unitId\",\"taxId\",\"taxType\",\"quantity\",\"subtract\",\"image\",\"showInPos\",\"status\",\"relatedImage\",\"cost\",\"price\",\"hsnCode\",\"changePriceDuringBilling\",\"\"],\"fieldId\":[\"heading\",\"model\",\"barcode\",\"manufacturerId\",\"categoryId\",\"vendorId\",\"unitId\",\"taxId\",\"taxType\",\"quantity\",\"subtract\",\"image\",\"showInPos\",\"status\",\"relatedImage\",\"cost\",\"price\",\"hsnCode\",\"changePriceDuringBilling\",\"productType\"],\"fieldClass\":[\"heading\",\"model\",\"barcode\",\"manufacturerId\",\"categoryId\",\"vendorId\",\"unitId\",\"taxId\",\"taxType\",\"quantity\",\"subtract\",\"image\",\"showInPos\",\"status\",\"relatedImage\",\"cost\",\"price\",\"hsnCode\",\"changePriceDuringBilling\",\"productType\"],\"fieldPlaceHolder\":[\"Heading\",\"Model\",\"Barcode\",\"Manufacturer Id\",\"Category Id\",\"Vendor Id\",\"Unit Id\",\"Tax Id\",\"Tax Type\",\"Quantity\",\"Subtract\",\"Image\",\"Show In Pos\",\"Status\",\"Related Image\",\"Cost\",\"Price\",\"Hsn Code\",\"Change Price During Billing\",\"Product Type\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"0\",\"\",\"\",\"\",\"\",\"\",\"0\",\"0\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"multiple\",\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"1\",\"0\",\"0\",\"0\",\"0\",\"0\",\"1\",\"1\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"required\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"required|numeric\",\"\",\"\",\"\",\"\",\"\",\"required|numeric\",\"required|numeric\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"hideThisFieldFrontend\",\"\",\"\",\"hideThisFieldFrontend\",\"\",\"\",\"\",\"\",\"removePleaseSelect\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"Exclusive,Inclusive\",\"\",\"Yes,No\",\"\",\"Yes,No\",\"Enable,Disable\",\"\",\"\",\"\",\"\",\"No,Yes\",\"Product,Hotel\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"Exclusive,Inclusive\",\"\",\"Yes,No\",\"\",\"1,0\",\"1,0\",\"\",\"\",\"\",\"\",\"0,1\",\"Product,Hotel\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"manufacturers\",\"categories\",\"vendors\",\"units\",\"taxes\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"manufacturerId\",\"categoryId\",\"vendorId\",\"unitId\",\"taxId\",\"null\",\"null\",\"null\",\"\",\"null\",\"null\",\"\",\"null\",\"\",\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"heading\",\"heading\",\"heading\",\"heading,unit\",\"heading,percent\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"heading\",\"model\",\"barcode\",\"manufacturerId\",\"categoryId\",\"vendorId\",\"unitId\",\"taxId\",\"taxType\",\"quantity\",\"subtract\",\"image\",\"showInPos\",\"status\",\"relatedImage\",\"cost\",\"price\",\"hsnCode\",\"changePriceDuringBilling\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"]}","30","0","0","0","0","0","Add Product","Copy Products","","PD9waHANCmlmKCRhcnJheVsnYmFyY29kZSddIT0nJyl7DQokYXJyYXlbJ2JhcmNvZGVUeXBlJ10gPSAndXNlckdlbmVyYXRlZCc7DQovKiRnZXRNYXggPSBEQjo6c2VsZWN0KCJTRUxFQ1QgTUFYKGJhcmNvZGUpIGFzIG1heCBGUk9NIGBwcm9kdWN0c2AgV0hFUkUgYmFyY29kZVR5cGU9J3VzZXJHZW5lcmF0ZWQnIEFORCBzdG9yZUlkPSciLlNlc3Npb246OmdldCgnc3RvcmVJZCcpLiInIik7DQppZihlbXB0eSgkZ2V0TWF4WzBdKSl7DQokYXJyYXlbJ2JhcmNvZGUnXSA9ICRhcnJheVsnYmFyY29kZSddOw0KfWVsc2V7DQokZ2V0TWF4ID0gJHRoaXMtPmFycmF5Q29udmVydCgkZ2V0TWF4KTsNCiRhcnJheVsnYmFyY29kZSddID0gJGdldE1heFswXVsnbWF4J10rMTsNCn0qLw0KfWVsc2V7DQokYXJyYXlbJ2JhcmNvZGVUeXBlJ10gPSAnc3lzdGVtR2VuZXJhdGVkJzsNCiRnZXRNYXggPSBEQjo6c2VsZWN0KCJTRUxFQ1QgTUFYKGJhcmNvZGUpIGFzIG1heCBGUk9NIGBwcm9kdWN0c2AgV0hFUkUgYmFyY29kZVR5cGU9J3N5c3RlbUdlbmVyYXRlZCcgQU5EIHN0b3JlSWQ9JyIuU2Vzc2lvbjo6Z2V0KCdzdG9yZUlkJykuIiciKTsNCmlmKGVtcHR5KCRnZXRNYXhbMF0pKXsNCiRhcnJheVsnYmFyY29kZSddID0gJHNldHRpbmdzWydzdGFydEJhcmNvZGVGcm9tJ107DQp9ZWxzZXsNCiRnZXRNYXggPSAkdGhpcy0+YXJyYXlDb252ZXJ0KCRnZXRNYXgpOw0KJGFycmF5WydiYXJjb2RlJ10gPSAkZ2V0TWF4WzBdWydtYXgnXSsxOw0KfQ0KfQ0KPz4=","","","","{{$controller::moduleShortCode(24)}}","","No","","","Yes","model,quantity,updatedBy,insertedBy,dateUpdated,dateAdded","barcode","1","2","2024-02-24 09:47:23");
INSERT INTO modules VALUES("25","StoreSettings","store_settings","storeSettingId","Store Settings","{\"moduleId\":\"25\",\"tableName\":\"store_settings\",\"columnName\":[\"storeSettingId\",\"websiteName\",\"websiteLogo\",\"adminEmail\",\"contactMobile\",\"contactEmail\",\"address\",\"mailJetUsername\",\"mailJetPassword\",\"mailJetEmail\",\"mailJetName\",\"mergeLogin\",\"databaseBackup\",\"fieldsToSendValueOnMail\",\"filedsToReplaceOnMail\",\"filedsToUnsetOnMails\",\"hideAddEditDeleteIfNoStoreSelected\",\"enableRewardPoints\",\"rewardOnDiscountedProduct\",\"minimumRewardPointsToReedem\",\"rewardPercentOnProduct\",\"walkInCustomerId\",\"invoicePrefix\",\"storeId\",\"userId\",\"updatedBy\",\"insertedBy\",\"status\",\"cartAppendStyle\",\"orderTypeRequired\",\"enableOrderType\",\"enableTaxes\",\"showStoreInfomation\",\"showExtraInformtionPopup\",\"showWalletBalance\",\"showRewardBalance\",\"showAddCustomerBottom\",\"salesPersonRequired\",\"showSalesPerson\",\"showQuickAdd\",\"restaurant\",\"showModal\",\"showBarcode\",\"showImage\",\"showManufacturers\",\"showCategories\",\"storeTerms\",\"invoiceHeaderText\",\"invoiceFooterText\",\"defaultInvoiceTemplate\",\"defaultPOTemplate\",\"defaultKotTemplate\",\"defaultOrderStatus\",\"cancelledOrderStatus\",\"runningOrderStatus\",\"deductFromStock\",\"startBarcodeFrom\",\"storeClosingDate\",\"maxBills\",\"requiredOtpForRewardReedem\",\"minRewardPointsToSendOtp\",\"onProductCllickIncreasePosQuantity\",\"enableLightBox\",\"fetchCostInPurchase\",\"enableSeatingTable\",\"enableCustomerReminder\",\"enableHotelRoomMode\",\"checkInTime\",\"printKotAndBillBoth\",\"showGstBreakups\",\"defaultTaxId\",\"defaultTaxType\"],\"columnCustomName\":[\"Store Setting Id\",\"Website Name\",\"Website Logo\",\"Admin Email\",\"Contact Mobile\",\"Contact Email\",\"Address\",\"Mail Jet Username\",\"Mail Jet Password\",\"Mail Jet Email\",\"Mail Jet Name\",\"Merge Login\",\"Database Backup\",\"Fields To Send Value On Mail\",\"Fileds To Replace On Mail\",\"Fileds To Unset On Mails\",\"Hide Add Edit Delete If No Store Selected\",\"Enable Reward Points\",\"Reward On Discounted Product\",\"Minimum Reward Points To Reedem\",\"Reward Percent On Product\",\"Walk In Customer Id\",\"Invoice Prefix\",\"Store Id\",\"User Id\",\"Updated By\",\"Inserted By\",\"Status\",\"Cart Append Style\",\"Order Type Required\",\"Enable Order Type\",\"Enable Taxes\",\"Show Store Infomation\",\"Show Extra Informtion Popup\",\"Show Wallet Balance\",\"Show Reward Balance\",\"Show Add Customer Bottom\",\"Sales Person Required\",\"Show Sales Person\",\"Show Quick Add\",\"Restaurant\",\"Show Modal\",\"Show Barcode\",\"Show Image\",\"Show Manufacturers\",\"Show Categories\",\"Store Terms\",\"Invoice Header Text\",\"Invoice Footer Text\",\"Default Invoice Template\",\"Default P O Template\",\"Default Kot Template\",\"Default Order Status\",\"Cancelled Order Status\",\"Running Order Status\",\"Deduct From Stock\",\"Start Barcode From\",\"Store Closing Date\",\"Max Bills\",\"Required Otp For Reward Reedem\",\"Min Reward Points To Send Otp\",\"On Product Cllick Increase Pos Quantity\",\"Enable Light Box\",\"Fetch Cost In Purchase\",\"Enable Seating Table\",\"Enable Customer Reminder\",\"Enable Hotel Room Mode\",\"Check In Time\",\"Print Kot And Bill Both\",\"Show Gst Breakups\",\"Default Tax Id\",\"Default Tax Type\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"type\":[\"\",\"\",\"image\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"status\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"columnSortOrder\":[\"1\",\"3\",\"2\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"file\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"text\",\"select\",\"select\",\"select\",\"text\",\"text\",\"select\",\"text\",\"select\",\"select\",\"select\",\"select\",\"select\",\"select\",\"select\",\"select\",\"select\",\"select\",\"select\",\"select\",\"select\",\"select\",\"select\",\"select\",\"select\",\"select\",\"wysiwyg\",\"wysiwyg\",\"wysiwyg\",\"select\",\"select\",\"select\",\"select\",\"select\",\"select\",\"text\",\"text\",\"text\",\"select\",\"text\",\"select\",\"select\",\"select\",\"select\",\"select\",\"select\",\"select\"],\"fieldHeading\":[\"Website Name\",\"Website Logo\",\"Admin Email\",\"Contact Mobile\",\"Contact Email\",\"Address\",\"Mail Jet Username\",\"Mail Jet Password\",\"Mailjet Email\",\"Mailjet Name\",\"Database Backup\",\"Enable Reward Points\",\"Reward On Discounted Product\",\"Minimum Reward Points To Reedem\",\"Reward Percent On Product\",\"Walk In Customer Id\",\"Invoice Prefix\",\"Cart Append Style\",\"Order Type Required\",\"Enable Order Type\",\"Enable Taxes\",\"Show Store Infomation\",\"Show Extra Informtion Popup\",\"Show Wallet Balance\",\"Show Reward Balance\",\"Show Add Customer Bottom\",\"Sales Person Required\",\"Show Sales Person\",\"Show Quick Add\",\"Restaurant\",\"Show Modal\",\"Show Barcode\",\"Show Image\",\"Show Manufacturers\",\"Show Categories\",\"Store Terms\",\"Invoice Header Text\",\"Invoice Footer Text\",\"Default Invoice Template\",\"Default Kot Template\",\"Default Order Status\",\"Cancelled Order Status\",\"Running Order Status\",\"Deduct From Stock\",\"Start Barcode From\",\"Store Closing Date (Comma Seprated)\",\"Max Bills\",\"Required Otp For Reward Reedem\",\"Min Reward Points To Send Otp\",\"On Product Cllick Increase Pos Quantity\",\"Enable Light Box\",\"Fetch Cost In Purchase\",\"Seating Tables Show\",\"Enable Customer Reminder \",\"Print Kot And Bill Both\",\"Enable Hotel Room Mode\"],\"fieldSortOrder\":[\"1\",\"100\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"12\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"28\",\"29\",\"30\",\"31\",\"32\",\"33\",\"34\",\"35\",\"36\",\"37\",\"38\",\"39\",\"40\",\"41\",\"42\",\"43\",\"44\",\"45\",\"95\",\"96\",\"97\",\"49\",\"50\",\"51\",\"52\",\"53\",\"54\",\"55\",\"56\",\"57\",\"58\",\"59\",\"60\",\"61\",\"62\",\"63\",\"64\",\"65\",\"66\"],\"fieldColumn\":[\"4\",\"12\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"12\",\"12\",\"12\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"3\",\"3\",\"3\",\"3\",\"4\",\"4\",\"4\"],\"fieldColumnName\":[\"websiteName\",\"websiteLogo\",\"adminEmail\",\"contactMobile\",\"contactEmail\",\"address\",\"mailJetUsername\",\"mailJetPassword\",\"mailjetEmail\",\"mailjetName\",\"databaseBackup\",\"enableRewardPoints\",\"rewardOnDiscountedProduct\",\"minimumRewardPointsToReedem\",\"rewardPercentOnProduct\",\"walkInCustomerId\",\"invoicePrefix\",\"cartAppendStyle\",\"orderTypeRequired\",\"enableOrderType\",\"enableTaxes\",\"showStoreInfomation\",\"showExtraInformtionPopup\",\"showWalletBalance\",\"showRewardBalance\",\"showAddCustomerBottom\",\"salesPersonRequired\",\"showSalesPerson\",\"showQuickAdd\",\"restaurant\",\"showModal\",\"showBarcode\",\"showImage\",\"showManufacturers\",\"showCategories\",\"storeTerms\",\"invoiceHeaderText\",\"invoiceFooterText\",\"defaultInvoiceTemplate\",\"defaultKotTemplate\",\"defaultOrderStatus\",\"cancelledOrderStatus\",\"runningOrderStatus\",\"deductFromStock\",\"startBarcodeFrom\",\"storeClosingDate\",\"maxBills\",\"requiredOtpForRewardReedem\",\"minRewardPointsToSendOtp\",\"onProductCllickIncreasePosQuantity\",\"enableLightBox\",\"fetchCostInPurchase\",\"enableSeatingTable\",\"enableCustomerReminder\",\"printKotAndBillBoth\",\"enableHotelRoomMode\"],\"fieldName\":[\"websiteName\",\"websiteLogo\",\"adminEmail\",\"contactMobile\",\"contactEmail\",\"address\",\"mailJetUsername\",\"mailJetPassword\",\"mailjetEmail\",\"mailjetName\",\"databaseBackup\",\"enableRewardPoints\",\"rewardOnDiscountedProduct\",\"minimumRewardPointsToReedem\",\"rewardPercentOnProduct\",\"walkInCustomerId\",\"invoicePrefix\",\"cartAppendStyle\",\"orderTypeRequired\",\"enableOrderType\",\"enableTaxes\",\"showStoreInfomation\",\"showExtraInformtionPopup\",\"showWalletBalance\",\"showRewardBalance\",\"showAddCustomerBottom\",\"salesPersonRequired\",\"showSalesPerson\",\"showQuickAdd\",\"restaurant\",\"showModal\",\"showBarcode\",\"showImage\",\"showManufacturers\",\"showCategories\",\"storeTerms\",\"invoiceHeaderText\",\"invoiceFooterText\",\"defaultInvoiceTemplate\",\"defaultKotTemplate\",\"defaultOrderStatus\",\"cancelledOrderStatus\",\"runningOrderStatus\",\"deductFromStock\",\"startBarcodeFrom\",\"storeClosingDate\",\"maxBills\",\"requiredOtpForRewardReedem\",\"minRewardPointsToSendOtp\",\"onProductCllickIncreasePosQuantity\",\"enableLightBox\",\"fetchCostInPurchase\",\"enableSeatingTable\",\"enableCustomerReminder\",\"printKotAndBillBoth\",\"enableHotelRoomMode\"],\"fieldId\":[\"websiteName\",\"websiteLogo\",\"adminEmail\",\"contactMobile\",\"contactEmail\",\"address\",\"mailJetUsername\",\"mailJetPassword\",\"mailjetEmail\",\"mailjetName\",\"databaseBackup\",\"enableRewardPoints\",\"rewardOnDiscountedProduct\",\"minimumRewardPointsToReedem\",\"rewardPercentOnProduct\",\"walkInCustomerId\",\"invoicePrefix\",\"cartAppendStyle\",\"orderTypeRequired\",\"enableOrderType\",\"enableTaxes\",\"showStoreInfomation\",\"showExtraInformtionPopup\",\"showWalletBalance\",\"showRewardBalance\",\"showAddCustomerBottom\",\"salesPersonRequired\",\"showSalesPerson\",\"showQuickAdd\",\"restaurant\",\"showModal\",\"showBarcode\",\"showImage\",\"showManufacturers\",\"showCategories\",\"storeTerms\",\"invoiceHeaderText\",\"invoiceFooterText\",\"defaultInvoiceTemplate\",\"defaultKotTemplate\",\"defaultOrderStatus\",\"cancelledOrderStatus\",\"runningOrderStatus\",\"deductFromStock\",\"startBarcodeFrom\",\"storeClosingDate\",\"maxBills\",\"requiredOtpForRewardReedem\",\"minRewardPointsToSendOtp\",\"onProductCllickIncreasePosQuantity\",\"enableLightBox\",\"fetchCostInPurchase\",\"enableSeatingTable\",\"enableCustomerReminder\",\"printKotAndBillBoth\",\"enableHotelRoomMode\"],\"fieldClass\":[\"websiteName\",\"websiteLogo\",\"adminEmail\",\"contactMobile\",\"contactEmail\",\"address\",\"mailJetUsername\",\"mailJetPassword\",\"mailjetEmail\",\"mailjetName\",\"databaseBackup\",\"enableRewardPoints\",\"rewardOnDiscountedProduct\",\"minimumRewardPointsToReedem\",\"rewardPercentOnProduct\",\"walkInCustomerId\",\"invoicePrefix\",\"cartAppendStyle\",\"orderTypeRequired\",\"enableOrderType\",\"enableTaxes\",\"showStoreInfomation\",\"showExtraInformtionPopup\",\"showWalletBalance\",\"showRewardBalance\",\"showAddCustomerBottom\",\"salesPersonRequired\",\"showSalesPerson\",\"showQuickAdd\",\"restaurant\",\"showModal\",\"showBarcode\",\"showImage\",\"showManufacturers\",\"showCategories\",\"storeTerms\",\"invoiceHeaderText\",\"invoiceFooterText\",\"defaultInvoiceTemplate\",\"defaultKotTemplate\",\"defaultOrderStatus\",\"cancelledOrderStatus\",\"runningOrderStatus\",\"deductFromStock\",\"startBarcodeFrom\",\"storeClosingDate\",\"maxBills\",\"requiredOtpForRewardReedem\",\"minRewardPointsToSendOtp\",\"onProductCllickIncreasePosQuantity\",\"enableLightBox\",\"fetchCostInPurchase\",\"enableSeatingTable\",\"enableCustomerReminder\",\"printKotAndBillBoth\",\"enableHotelRoomMode\"],\"fieldPlaceHolder\":[\"Website Name\",\"Website Logo\",\"Admin Email\",\"Contact Mobile\",\"Contact Email\",\"Address\",\"Mail Jet Username\",\"Mail Jet Password\",\"Mailjet Email\",\"Mailjet Name\",\"Database Backup\",\"Enable Reward Points\",\"Reward On Discounted Product\",\"Minimum Reward Points To Reedem\",\"Reward Percent On Product\",\"Walk In Customer Id\",\"Invoice Prefix\",\"Cart Append Style\",\"Order Type Required\",\"Enable Order Type\",\"Enable Taxes\",\"Show Store Infomation\",\"Show Extra Informtion Popup\",\"Show Wallet Balance\",\"Show Reward Balance\",\"Show Add Customer Bottom\",\"Sales Person Required\",\"Show Sales Person\",\"Show Quick Add\",\"Restaurant\",\"Show Modal\",\"Show Barcode\",\"Show Image\",\"Show Manufacturers\",\"Show Categories\",\"Store Terms\",\"Invoice Header Text\",\"Invoice Footer Text\",\"Default Invoice Template\",\"Default Kot Template\",\"Default Order Status\",\"Cancelled Order Status\",\"Running Order Status\",\"Deduct From Stock\",\"Start Barcode From\",\"2024-04-13,2024-04-20,2024-04-27\",\"Max Bills\",\"Required Otp For Reward Reedem\",\"Min Reward Points To Send Otp\",\"On Product Cllick Increase Pos Quantity\",\"Enable Light Box\",\"Fetch Cost In Purchase\",\"Enable Seating Table\",\"Enable Customer Reminder\",\"Print Kot And Bill Both\",\"Enable Hotel Room Mode\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"0\",\"\",\"0\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute2\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"showOnlyToSuperAdmin\",\"showOnlyToSuperAdmin\",\"showOnlyToSuperAdmin\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"Yes,No\",\"Yes,No\",\"No,Yes\",\"\",\"\",\"\",\"\",\"Append,Prepend\",\"Yes,No\",\"Yes,No\",\"Yes,No\",\"Yes,No\",\"Yes,No\",\"Yes,No\",\"Yes,No\",\"Yes,No\",\"Yes,No\",\"Yes,No\",\"Yes,No\",\"Yes,No\",\"Yes,No\",\"Yes,No\",\"Yes,No\",\"Yes,No\",\"Yes,No\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"Yes,No\",\"\",\"\",\"\",\"No,Yes\",\"\",\"No,Yes\",\"No,Yes\",\"No,Yes\",\"No,Yes\",\"No,Yes\",\"No,Yes\",\"No,Yes\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"1,0\",\"1,0\",\"No,Yes\",\"\",\"\",\"\",\"\",\"append,prepend\",\"1,0\",\"1,0\",\"1,0\",\"1,0\",\"1,0\",\"1,0\",\"1,0\",\"1,0\",\"1,0\",\"1,0\",\"1,0\",\"1,0\",\"1,0\",\"1,0\",\"1,0\",\"1,0\",\"1,0\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"1,0\",\"\",\"\",\"\",\"0,1\",\"\",\"0,1\",\"0,1\",\"0,1\",\"0,1\",\"0,1\",\"0,1\",\"0,1\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"customers\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"invoice_template\",\"invoice_template\",\"order_status\",\"order_status\",\"order_status\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"null\",\"null\",\"\",\"\",\"\",\"customerId\",\"\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"\",\"null\",\"invoiceTemplateId\",\"invoiceTemplateId\",\"orderStatusId\",\"orderStatusId\",\"orderStatusId\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"name,mobile,email\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"heading\",\"heading\",\"heading\",\"heading\",\"heading\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"contactMobile\",\"contactEmail\",\"address\",\"mailJetUsername\",\"mailJetPassword\",\"mailjetEmail\",\"mailjetName\",\"databaseBackup\",\"enableRewardPoints\",\"rewardOnDiscountedProduct\",\"minimumRewardPointsToReedem\",\"rewardPercentOnProduct\",\"walkInCustomerId\",\"invoicePrefix\",\"cartAppendStyle\",\"orderTypeRequired\",\"enableOrderType\",\"enableTaxes\",\"showStoreInfomation\",\"showExtraInformtionPopup\",\"showWalletBalance\",\"showRewardBalance\",\"showAddCustomerBottom\",\"salesPersonRequired\",\"showSalesPerson\",\"showQuickAdd\",\"restaurant\",\"showModal\",\"showBarcode\",\"showImage\",\"showManufacturers\",\"showCategories\",\"storeTerms\",\"invoiceHeaderText\",\"invoiceFooterText\",\"defaultInvoiceTemplate\",\"defaultKotTemplate\",\"defaultOrderStatus\",\"cancelledOrderStatus\",\"runningOrderStatus\",\"deductFromStock\",\"startBarcodeFrom\",\"storeClosingDate\",\"maxBills\",\"requiredOtpForRewardReedem\",\"minRewardPointsToSendOtp\",\"onProductCllickIncreasePosQuantity\",\"enableLightBox\",\"fetchCostInPurchase\",\"enableSeatingTable\",\"enableCustomerReminder\",\"printKotAndBillBoth\",\"enableHotelRoomMode\"]}","30","0","0","0","1","0","","","","","","","","{{$controller::moduleShortCode(25)}}","","No","","","No","","","1","1","2024-02-24 10:14:54");
INSERT INTO modules VALUES("26","SeatingTables","seating_tables","seatingTableId","Seating Tables","{\"moduleId\":\"26\",\"tableName\":\"seating_tables\",\"columnName\":[\"seatingTableId\",\"heading\",\"capacity\",\"storeId\",\"userId\",\"status\",\"dateUpdated\",\"dateAdded\"],\"columnCustomName\":[\"Seating Table Id\",\"Heading\",\"Capacity\",\"Store Id\",\"User Id\",\"Status\",\"Date Updated\",\"Date Added\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"Yes\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"status\",\"\",\"\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"\",\"\",\"4\",\"\",\"5\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"select\"],\"fieldHeading\":[\"Heading\",\"Capacity\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\",\"5\"],\"fieldColumn\":[\"4\",\"4\",\"4\"],\"fieldColumnName\":[\"heading\",\"capacity\",\"status\"],\"fieldName\":[\"heading\",\"capacity\",\"status\"],\"fieldId\":[\"heading\",\"capacity\",\"status\"],\"fieldClass\":[\"heading\",\"capacity\",\"status\"],\"fieldPlaceHolder\":[\"Heading\",\"Capacity\",\"Status\"],\"fieldDefaultValue\":[\"\",\"2\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"0\"],\"fieldValidation\":[\"required\",\"required|numeric\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\"]}","30","0","0","0","0","0","","","","","","","","{{$controller::moduleShortCode(0)}}","","No","","","No","","","1","2","2024-02-26 14:43:32");
INSERT INTO modules VALUES("27","Languages","languages","languageId","Languages","{\"moduleId\":\"27\",\"tableName\":\"languages\",\"columnName\":[\"languageId\",\"heading\",\"status\"],\"columnCustomName\":[\"Language Id\",\"Heading\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\"],\"type\":[\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"3\"],\"tableColumnMerge\":[\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"select\"],\"fieldHeading\":[\"Heading\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\"],\"fieldColumn\":[\"6\",\"6\"],\"fieldColumnName\":[\"heading\",\"status\"],\"fieldName\":[\"heading\",\"status\"],\"fieldId\":[\"heading\",\"status\"],\"fieldClass\":[\"heading\",\"status\"],\"fieldPlaceHolder\":[\"Heading\",\"Status\"],\"fieldDefaultValue\":[\"\",\"\"],\"fieldAttribute\":[\"\",\"\"],\"fieldRequired\":[\"1\",\"0\"],\"fieldValidation\":[\"required|unique:languages,heading\",\"\"],\"fieldHeadingBefore\":[\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\"],\"fieldOrderBy\":[\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\"],\"fieldCustomFields\":[\"\",\"\"],\"fieldTableColumn\":[\"status\"]}","2","0","0","0","0","0","","","","","PD9waHANCiAgICBEQjo6aW5zZXJ0KCJBTFRFUiBUQUJMRSBtZXNzYWdlcyBBREQgQ09MVU1OIGAiLnN0cnRvbG93ZXIoJGFycmF5WydoZWFkaW5nJ10pLiJgIFZBUkNIQVIoMjU1KSBOVUxMIEFGVEVSIG1lc3NhZ2UiKTsNCj8+","","","{{$controller::moduleShortCode(27)}}","","No","","","No","","","1","2","2024-02-27 04:04:30");
INSERT INTO modules VALUES("28","Employees","employees","employeeId","Employees","{\"moduleId\":\"28\",\"tableName\":\"employees\",\"columnName\":[\"employeeId\",\"name\",\"mobile\",\"email\",\"sallery\",\"dob\",\"storeId\",\"userId\",\"softDelete\",\"updatedBy\",\"insertedBy\",\"dateUpdated\",\"dateAdded\",\"status\"],\"columnCustomName\":[\"Employee Id\",\"Name\",\"Mobile\",\"Email\",\"Sallery\",\"Dob\",\"Store Id\",\"User Id\",\"Soft Delete\",\"Updated By\",\"Inserted By\",\"Date Updated\",\"Date Added\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"7\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"email\",\"text\",\"date\",\"select\"],\"fieldHeading\":[\"Name\",\"Mobile\",\"Email\",\"Sallery\",\"Dob\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"13\"],\"fieldColumn\":[\"4\",\"4\",\"4\",\"4\",\"4\",\"4\"],\"fieldColumnName\":[\"name\",\"mobile\",\"email\",\"sallery\",\"dob\",\"status\"],\"fieldName\":[\"name\",\"mobile\",\"email\",\"sallery\",\"dob\",\"status\"],\"fieldId\":[\"name\",\"mobile\",\"email\",\"sallery\",\"dob\",\"status\"],\"fieldClass\":[\"name\",\"mobile\",\"email\",\"sallery\",\"dob\",\"status\"],\"fieldPlaceHolder\":[\"Name\",\"Mobile\",\"Email\",\"Sallery\",\"Dob\",\"Status\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"0\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"0\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"required\",\"required|unique:employees,mobile|digits:10|numeric\",\"unique:employees,email\",\"numeric\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\",\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\",\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\",\"\"]}","30","0","0","0","0","0","","","","","","","","{{$controller::moduleShortCode(0)}}","","No","","","No","","","1","2","2024-02-27 10:04:21");
INSERT INTO modules VALUES("29","Payments","payments","paymentId","Payments","{\"moduleId\":\"29\",\"tableName\":\"payments\",\"columnName\":[\"paymentId\",\"name\",\"sortOrder\",\"softDelete\",\"status\"],\"columnCustomName\":[\"Payment Id\",\"Name\",\"Sort Order\",\"Soft Delete\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"sortOrderUpdateFromOutSide\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"\",\"4\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"select\"],\"fieldHeading\":[\"Name\",\"Sort Order\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\",\"4\"],\"fieldColumn\":[\"6\",\"6\",\"12\"],\"fieldColumnName\":[\"name\",\"sortOrder\",\"status\"],\"fieldName\":[\"name\",\"sortOrder\",\"status\"],\"fieldId\":[\"name\",\"sortOrder\",\"status\"],\"fieldClass\":[\"name\",\"sortOrder\",\"status\"],\"fieldPlaceHolder\":[\"Name\",\"Sort Order\",\"Status\"],\"fieldDefaultValue\":[\"\",\"0\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"0\"],\"fieldValidation\":[\"required\",\"required|numeric\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\"]}","2","0","0","0","0","0","","","","","","","","{{$controller::moduleShortCode(0)}}","","No","","","No","","","1","2","2024-03-01 04:47:44");
INSERT INTO modules VALUES("30","StorePayments","store_payments","storePaymentId","Store Payments","{\"moduleId\":\"30\",\"tableName\":\"store_payments\",\"columnName\":[\"storePaymentId\",\"payments\",\"default\",\"storeId\",\"userId\",\"status\"],\"columnCustomName\":[\"Store Payment Id\",\"Payments\",\"Default\",\"Store Id\",\"User Id\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"\",\"\",\"\",\"\",\"\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"select\",\"select\"],\"fieldHeading\":[\"Payments\",\"Default Payment Method\"],\"fieldSortOrder\":[\"1\",\"2\"],\"fieldColumn\":[\"12\",\"12\"],\"fieldColumnName\":[\"payments\",\"default\"],\"fieldName\":[\"payments\",\"default\"],\"fieldId\":[\"payments\",\"default\"],\"fieldClass\":[\"payments\",\"default\"],\"fieldPlaceHolder\":[\"Payments\",\"Default\"],\"fieldDefaultValue\":[\"\",\"\"],\"fieldAttribute\":[\"multiple\",\"\"],\"fieldRequired\":[\"1\",\"1\"],\"fieldValidation\":[\"required\",\"required\"],\"fieldHeadingBefore\":[\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\"],\"fieldSelectTable\":[\"payments\",\"payments\"],\"fieldSelectIdColumn\":[\"paymentId\",\"paymentId\"],\"fieldSelectMainColumn\":[\"name\",\"name\"],\"fieldSelectWhere\":[\"\",\"\"],\"fieldOrderBy\":[\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\"],\"fieldTableColumn\":[\"payments\"],\"fieldSelectOperator\":[\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\"],\"fieldCustomFields\":[\"\",\"\"]}","30","0","1","0","1","0","","","","","","","","{{$controller::moduleShortCode(30)}}","","No","","","No","","","1","1","2024-03-01 05:20:41");
INSERT INTO modules VALUES("31","AdditionalCharges","additional_charges","additionalChargeId","Additional Charges","{\"moduleId\":\"31\",\"tableName\":\"additional_charges\",\"columnName\":[\"additionalChargeId\",\"heading\",\"sortOrder\",\"storeId\",\"userId\",\"updatedBy\",\"insertedBy\",\"status\"],\"columnCustomName\":[\"Additional Charge Id\",\"Heading\",\"Sort Order\",\"Store Id\",\"User Id\",\"Updated By\",\"Inserted By\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"sortOrderUpdateFromOutSide\",\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"\",\"\",\"\",\"\",\"4\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"select\"],\"fieldHeading\":[\"Heading\",\"Sort Order\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\",\"7\"],\"fieldColumn\":[\"6\",\"6\",\"12\"],\"fieldColumnName\":[\"heading\",\"sortOrder\",\"status\"],\"fieldName\":[\"heading\",\"sortOrder\",\"status\"],\"fieldId\":[\"heading\",\"sortOrder\",\"status\"],\"fieldClass\":[\"heading\",\"sortOrder\",\"status\"],\"fieldPlaceHolder\":[\"Heading\",\"Sort Order\",\"Status\"],\"fieldDefaultValue\":[\"\",\"0\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"0\"],\"fieldValidation\":[\"required\",\"numeric|required\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\"]}","30","0","0","0","0","0","","","","","","","","{{$controller::moduleShortCode(0)}}","","No","","","No","","","1","2","2024-03-06 10:50:59");
INSERT INTO modules VALUES("32","InvoiceTemplate","invoice_template","invoiceTemplateId","Invoice Template","{\"moduleId\":\"32\",\"tableName\":\"invoice_template\",\"columnName\":[\"invoiceTemplateId\",\"heading\",\"template\",\"tableCode\",\"loopTrCode\",\"customCss\",\"subTotalTrLoop\",\"status\"],\"columnCustomName\":[\"Invoice Template Id\",\"Heading\",\"Template\",\"Table Code\",\"Loop Tr Code\",\"Custom Css\",\"Sub Total Tr Loop\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"\",\"\",\"\",\"\",\"\",\"3\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"wysiwyg\",\"select\",\"textarea\",\"textarea\",\"textarea\",\"textarea\"],\"fieldHeading\":[\"Heading\",\"Template\",\"Status\",\"Loop Tr Code\",\"Sub Total Tr Loop\",\"Custom Css\",\"Table Code\"],\"fieldSortOrder\":[\"1\",\"2\",\"7\",\"4\",\"5\",\"6\",\"3\"],\"fieldColumn\":[\"12\",\"12\",\"12\",\"12\",\"12\",\"12\",\"12\"],\"fieldColumnName\":[\"heading\",\"template\",\"status\",\"loopTrCode\",\"subTotalTrLoop\",\"customCss\",\"tableCode\"],\"fieldName\":[\"heading\",\"template\",\"status\",\"loopTrCode\",\"subTotalTrLoop\",\"customCss\",\"tableCode\"],\"fieldId\":[\"heading\",\"template\",\"status\",\"loopTrCode\",\"subTotalTrLoop\",\"customCss\",\"tableCode\"],\"fieldClass\":[\"heading\",\"template\",\"status\",\"loopTrCode tdetqzuqqe\",\"subTotalTrLoop tdetqzuqqe\",\"customCss tdetqzuqqe\",\"tableCode tdetqzuqqe\"],\"fieldPlaceHolder\":[\"Heading\",\"Template\",\"Status\",\"Loop Tr Code\",\"Sub Total Tr Loop\",\"Custom Css\",\"Table Code\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"0\",\"0\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"required\",\"required\",\"\",\"\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"Enable,Disable\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\",\"1,0\",\"\",\"\",\"\",\"\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"heading\",\"template\",\"status\",\"loopTrCode\",\"subTotalTrLoop\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"]}","2","0","0","0","0","0","","","","PD9waHANCiRhcnJheVsndGVtcGxhdGUnXSA9ICR0aGlzLT5lbmNyeXB0KCRhcnJheVsndGVtcGxhdGUnXSk7DQokYXJyYXlbJ2xvb3BUckNvZGUnXSA9ICR0aGlzLT5lbmNyeXB0KCRhcnJheVsnbG9vcFRyQ29kZSddKTsNCiRhcnJheVsnc3ViVG90YWxUckxvb3AnXSA9ICR0aGlzLT5lbmNyeXB0KCRhcnJheVsnc3ViVG90YWxUckxvb3AnXSk7DQokYXJyYXlbJ2N1c3RvbUNzcyddID0gJHRoaXMtPmVuY3J5cHQoJGFycmF5WydjdXN0b21Dc3MnXSk7DQokYXJyYXlbJ3RhYmxlQ29kZSddID0gJHRoaXMtPmVuY3J5cHQoJGFycmF5Wyd0YWJsZUNvZGUnXSk7DQo/Pg==","","","","{{$controller::moduleShortCode(32)}}","","No","","","No","","","1","2","2024-03-08 11:39:41");
INSERT INTO modules VALUES("33","OrderStatus","order_status","orderStatusId","Order Status","{\"moduleId\":\"33\",\"tableName\":\"order_status\",\"columnName\":[\"orderStatusId\",\"heading\",\"status\"],\"columnCustomName\":[\"Order Status Id\",\"Heading\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\"],\"type\":[\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"3\"],\"tableColumnMerge\":[\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"select\"],\"fieldHeading\":[\"Heading\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\"],\"fieldColumn\":[\"6\",\"6\"],\"fieldColumnName\":[\"heading\",\"status\"],\"fieldName\":[\"heading\",\"status\"],\"fieldId\":[\"heading\",\"status\"],\"fieldClass\":[\"heading\",\"status\"],\"fieldPlaceHolder\":[\"Heading\",\"Status\"],\"fieldDefaultValue\":[\"\",\"\"],\"fieldAttribute\":[\"\",\"\"],\"fieldRequired\":[\"1\",\"0\"],\"fieldValidation\":[\"required\",\"\"],\"fieldHeadingBefore\":[\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\"],\"fieldOrderBy\":[\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\"],\"fieldCustomFields\":[\"\",\"\"]}","2","0","0","0","0","0","","","","","","","","{{$controller::moduleShortCode(0)}}","","No","","","No","","","1","2","2024-03-17 09:03:59");
INSERT INTO modules VALUES("34","CustomerPayInOut","customer_pay_in_out","customerPayInOutId","Customer Pay In Out","{\"moduleId\":\"34\",\"tableName\":\"customer_pay_in_out\",\"columnName\":[\"customerPayInOutId\",\"customerId\",\"amount\",\"type\",\"storeId\",\"userId\",\"insertedBy\",\"dateUpdated\",\"dateAdded\"],\"columnCustomName\":[\"Customer Pay In Out Id\",\"Customer Id\",\"Amount\",\"Type\",\"Store Id\",\"User Id\",\"Inserted By\",\"Date Updated\",\"Date Added\"],\"foreignColumnShow\":[\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"customers\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"name\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"customerId\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"\",\"\",\"\",\"\",\"\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"select\",\"text\",\"select\"],\"fieldHeading\":[\"Customer Id\",\"Amount\",\"Type\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\"],\"fieldColumn\":[\"6\",\"6\",\"12\"],\"fieldColumnName\":[\"customerId\",\"amount\",\"type\"],\"fieldName\":[\"customerId\",\"amount\",\"type\"],\"fieldId\":[\"customerId\",\"amount\",\"type\"],\"fieldClass\":[\"customerId select2\",\"amount\",\"type\"],\"fieldPlaceHolder\":[\"Customer Id\",\"Amount\",\"Type\"],\"fieldDefaultValue\":[\"\",\"0\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"0\"],\"fieldValidation\":[\"required\",\"numeric|required\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"Credit (Payment IN),Debit (Payment OUT)\"],\"fieldSelectBoxValue\":[\"\",\"\",\"Credit,Debit\"],\"fieldSelectTable\":[\"customers\",\"\",\"\"],\"fieldSelectIdColumn\":[\"customerId\",\"null\",\"null\"],\"fieldSelectMainColumn\":[\"name,mobile,email\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\"],\"fieldTableColumn\":[\"customerId\",\"amount\"],\"fieldSelectOperator\":[\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\"]}","30","0","0","0","0","0","","","","","","","","{{$controller::moduleShortCode(0)}}","","No","","","No","","","1","2","2024-03-28 08:08:29");
INSERT INTO modules VALUES("35","CustomerLedgerWallet","customer_ledger_wallet","customerLedgerId","Customer Ledger Wallet","{\"moduleId\":\"35\",\"tableName\":\"customer_ledger_wallet\",\"columnName\":[\"customerLedgerId\",\"orderId\",\"customerId\",\"amount\",\"type\",\"paymentId\",\"remark\",\"payInOut\",\"status\",\"storeId\",\"userId\",\"softDelete\",\"dateAdded\"],\"columnCustomName\":[\"Customer Ledger Id\",\"Order Id\",\"Customer Id\",\"Amount\",\"Type\",\"Payment Id\",\"Remark\",\"Pay In Out\",\"Status\",\"Store Id\",\"User Id\",\"Soft Delete\",\"Date Added\"],\"foreignColumnShow\":[\"No\",\"No\",\"Yes\",\"No\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"customers\",\"\",\"\",\"payments\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"name\",\"\",\"\",\"name\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"customerId\",\"\",\"\",\"paymentId\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"No\",\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"status\",\"\",\"\",\"\",\"\"],\"columnSortOrder\":[\"1\",\"\",\"2\",\"3\",\"4\",\"5\",\"6\",\"\",\"\",\"\",\"\",\"\",\"7\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"select\",\"select\",\"text\",\"select\",\"select\",\"textarea\"],\"fieldHeading\":[\"Order Id\",\"Customer Id\",\"Amount\",\"Type\",\"Payment Id\",\"Remark\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\"],\"fieldColumn\":[\"6\",\"6\",\"4\",\"4\",\"4\",\"12\"],\"fieldColumnName\":[\"orderId\",\"customerId\",\"amount\",\"type\",\"paymentId\",\"remark\"],\"fieldName\":[\"orderId\",\"customerId\",\"amount\",\"type\",\"paymentId\",\"remark\"],\"fieldId\":[\"orderId\",\"customerId\",\"amount\",\"type\",\"paymentId\",\"remark\"],\"fieldClass\":[\"orderId jjkzafeiov\",\"customerId jjkzafeiov\",\"amount\",\"type\",\"paymentId jjkzafeiov\",\"remark\"],\"fieldPlaceHolder\":[\"Order Id\",\"Customer Id\",\"Amount\",\"Type\",\"Payment Id\",\"Remark\"],\"fieldDefaultValue\":[\"\",\"\",\"0\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"0\",\"1\",\"1\",\"0\",\"1\",\"0\"],\"fieldValidation\":[\"\",\"required\",\"required|numeric\",\"\",\"required\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"hideThisFieldFrontend\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute2\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"Credit (Payment IN),Debit (Payment OUT)\",\"\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"Credit,Debit\",\"\",\"\"],\"fieldSelectTable\":[\"order\",\"customers\",\"\",\"\",\"payments\",\"\"],\"fieldSelectIdColumn\":[\"orderId\",\"customerId\",\"null\",\"null\",\"paymentId\",\"null\"],\"fieldSelectMainColumn\":[\"orderId,name,email,mobile\",\"name,mobile,email\",\"\",\"\",\"name\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"amount\",\"type\",\"remark\"]}","30","0","0","1","0","0","","","","PD9waHANCmlmKCRhcnJheVsndHlwZSddID09ICdDcmVkaXQnKXsNCiAgICRhcnJheVsncGF5SW5PdXQnXSA9ICdQYXlJbic7DQp9ZWxzZXsNCiAgICRhcnJheVsncGF5SW5PdXQnXSA9ICdQYXlPdXQnOw0KfQ0KPz4=","PD9waHANCiR0aGlzLT51cGRhdGVDdXN0b21lcldhbGxldCgkYXJyYXlbJ2N1c3RvbWVySWQnXSk7DQo/Pg==","","","{{$controller::moduleShortCode(35)}}","","No","","","No","","","1","2","2024-03-28 08:24:30");
INSERT INTO modules VALUES("36","Codes","codes","codeId","Codes","{\"moduleId\":\"36\",\"tableName\":\"codes\",\"columnName\":[\"codeId\",\"alphabat\",\"number\",\"status\"],\"columnCustomName\":[\"Code Id\",\"Alphabat\",\"Number\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"4\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"select\"],\"fieldHeading\":[\"Alphabat\",\"Number\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\"],\"fieldColumn\":[\"4\",\"4\",\"4\"],\"fieldColumnName\":[\"alphabat\",\"number\",\"status\"],\"fieldName\":[\"alphabat\",\"number\",\"status\"],\"fieldId\":[\"alphabat\",\"number\",\"status\"],\"fieldClass\":[\"alphabat\",\"number\",\"status\"],\"fieldPlaceHolder\":[\"Alphabat\",\"Number\",\"Status\"],\"fieldDefaultValue\":[\"\",\"0\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"0\"],\"fieldValidation\":[\"required\",\"required|numeric\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\"]}","2","0","0","0","0","0","","","","","","","","{{$controller::moduleShortCode(0)}}","","No","","","No","","","1","2","2024-03-28 08:57:40");
INSERT INTO modules VALUES("37","CustomerLedgerReward","customer_ledger_reward","customerLedgerRewardId","Customer Ledger Reward","{\"moduleId\":\"37\",\"tableName\":\"customer_ledger_reward\",\"columnName\":[\"customerLedgerRewardId\",\"orderId\",\"customerId\",\"reward\",\"type\",\"paymentId\",\"remark\",\"status\",\"storeId\",\"userId\",\"softDelete\",\"dateAdded\"],\"columnCustomName\":[\"Customer Ledger Reward Id\",\"Order Id\",\"Customer Id\",\"Reward\",\"Type\",\"Payment Id\",\"Remark\",\"Status\",\"Store Id\",\"User Id\",\"Soft Delete\",\"Date Added\"],\"foreignColumnShow\":[\"No\",\"No\",\"Yes\",\"No\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"order\",\"customers\",\"\",\"\",\"payments\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"orderId\",\"name\",\"\",\"\",\"name\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"orderId\",\"customerId\",\"\",\"\",\"paymentId\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"status\",\"\",\"\",\"\",\"\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"\",\"\",\"\",\"\",\"8\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"select\",\"select\",\"text\",\"select\",\"select\",\"textarea\"],\"fieldHeading\":[\"Order Id\",\"Customer Id\",\"Reward\",\"Type\",\"Payment Id\",\"Remark\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\"],\"fieldColumn\":[\"6\",\"6\",\"4\",\"4\",\"4\",\"12\"],\"fieldColumnName\":[\"orderId\",\"customerId\",\"reward\",\"type\",\"paymentId\",\"remark\"],\"fieldName\":[\"orderId\",\"customerId\",\"reward\",\"type\",\"paymentId\",\"remark\"],\"fieldId\":[\"orderId\",\"customerId\",\"reward\",\"type\",\"paymentId\",\"remark\"],\"fieldClass\":[\"orderId\",\"customerId\",\"reward\",\"type\",\"paymentId\",\"remark\"],\"fieldPlaceHolder\":[\"Order Id\",\"Customer Id\",\"Reward\",\"Type\",\"Payment Id\",\"Remark\"],\"fieldDefaultValue\":[\"\",\"\",\"0\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"0\",\"1\",\"1\",\"0\",\"1\",\"0\"],\"fieldValidation\":[\"\",\"required\",\"numeric|required\",\"\",\"required\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"hideThisFieldFrontend\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"Credit,Debit\",\"\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"Credit,Debit\",\"\",\"\"],\"fieldSelectTable\":[\"order\",\"customers\",\"\",\"\",\"payments\",\"\"],\"fieldSelectIdColumn\":[\"orderId\",\"customerId\",\"null\",\"null\",\"paymentId\",\"\"],\"fieldSelectMainColumn\":[\"orderId,name,email,mobile\",\"name,mobile,email\",\"\",\"\",\"name\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"orderId\",\"customerId\",\"reward\",\"type\",\"paymentId\",\"remark\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\",\"\"]}","30","0","0","1","0","0","","","","PD9waHANCmlmKCRhcnJheVsndHlwZSddID09ICdDcmVkaXQnKXsNCiAgICRhcnJheVsncGF5SW5PdXQnXSA9ICdQYXlJbic7DQp9ZWxzZXsNCiAgICRhcnJheVsncGF5SW5PdXQnXSA9ICdQYXlPdXQnOw0KfQ0KPz4=","PD9waHANCiR0aGlzLT51cGRhdGVDdXN0b21lclJld2FyZCgkYXJyYXlbJ2N1c3RvbWVySWQnXSk7DQo/Pg==","","","{{$controller::moduleShortCode(37)}}","","No","","","No","","","1","2","2024-03-28 10:01:41");
INSERT INTO modules VALUES("38","OrderHistory","order_history","orderHistoryId","Order History","{\"moduleId\":\"38\",\"tableName\":\"order_history\",\"columnName\":[\"orderHistoryId\",\"orderId\",\"orderStatusId\",\"comment\",\"status\",\"storeId\",\"userId\",\"dateAdded\"],\"columnCustomName\":[\"Order History Id\",\"Order Id\",\"Order Status Id\",\"Comment\",\"Status\",\"Store Id\",\"User Id\",\"Date Added\"],\"foreignColumnShow\":[\"No\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"order_status\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"heading\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"orderStatusId\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"status\",\"\",\"\",\"\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"\",\"\",\"\",\"5\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"select\",\"select\",\"wysiwyg\"],\"fieldHeading\":[\"Order Id\",\"Order Status Id\",\"Comment\"],\"fieldSortOrder\":[\"1\",\"2\",\"5\"],\"fieldColumn\":[\"6\",\"6\",\"12\"],\"fieldColumnName\":[\"orderId\",\"orderStatusId\",\"comment\"],\"fieldName\":[\"orderId\",\"orderStatusId\",\"comment\"],\"fieldId\":[\"orderId\",\"orderStatusId\",\"comment\"],\"fieldClass\":[\"orderId\",\"orderStatusId\",\"comment\"],\"fieldPlaceHolder\":[\"Order Id\",\"Order Status Id\",\"Comment\"],\"fieldDefaultValue\":[\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"0\"],\"fieldValidation\":[\"required\",\"required\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"removePleaseSelect\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\"],\"fieldSelectTable\":[\"order\",\"order_status\",\"\"],\"fieldSelectIdColumn\":[\"orderId\",\"orderStatusId\",\"null\"],\"fieldSelectMainColumn\":[\"orderId,name,email,mobile\",\"heading\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\"],\"fieldTableColumn\":[\"orderId\",\"orderStatusId\",\"comment\"],\"fieldSelectOperator\":[\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\"]}","57","0","0","0","0","0","","","","","PD9waHANCmlmKCRzZXR0aW5nc1sncnVubmluZ09yZGVyU3RhdHVzJ10hPSRhcnJheVsnb3JkZXJTdGF0dXNJZCddKXsNCgkkb3JkZXJTdGF0dXNIZWFkaW5nID0gJHRoaXMtPmdldERhdGFXaGVyZSgnb3JkZXJfc3RhdHVzJywib3JkZXJTdGF0dXNJZCIsJGFycmF5WydvcmRlclN0YXR1c0lkJ10pWzBdWydoZWFkaW5nJ107DQoJREI6OnNlbGVjdCgiVVBEQVRFIGBvcmRlcmAgU0VUIG9yZGVyU3RhdHVzSWQ9JyIuJGFycmF5WydvcmRlclN0YXR1c0lkJ10uIicscnVubmluZ09yZGVyPTAsaG9sZD0wLG9yZGVyU3RhdHVzSGVhZGluZz0nIi4kb3JkZXJTdGF0dXNIZWFkaW5nLiInLGNoZWNrb3V0VHlwZT0nZmluYWxDaGVja291dCcscnVubmluZ09yZGVyPScwJyBXSEVSRSBvcmRlcklkPSciLiRhcnJheVsnb3JkZXJJZCddLiInIik7DQp9ZWxzZXsNCgkkb3JkZXJTdGF0dXNIZWFkaW5nID0gJHRoaXMtPmdldERhdGFXaGVyZSgnb3JkZXJfc3RhdHVzJywib3JkZXJTdGF0dXNJZCIsJGFycmF5WydvcmRlclN0YXR1c0lkJ10pWzBdWydoZWFkaW5nJ107DQoJREI6OnNlbGVjdCgiVVBEQVRFIGBvcmRlcmAgU0VUIG9yZGVyU3RhdHVzSWQ9JyIuJGFycmF5WydvcmRlclN0YXR1c0lkJ10uIicscnVubmluZ09yZGVyPTEsaG9sZD0xLG9yZGVyU3RhdHVzSGVhZGluZz0nIi4kb3JkZXJTdGF0dXNIZWFkaW5nLiInLGNoZWNrb3V0VHlwZT0nc2VuZFRvS290JyxydW5uaW5nT3JkZXI9JzEnIFdIRVJFIG9yZGVySWQ9JyIuJGFycmF5WydvcmRlcklkJ10uIiciKTsNCn0NCj8+","","","{{$controller::moduleShortCode(38)}}","","No","","","No","","","1","1","2024-03-29 06:31:34");
INSERT INTO modules VALUES("39","CommentMaster","comment_master","commentMasterId","Comment Master","{\"moduleId\":\"39\",\"tableName\":\"comment_master\",\"columnName\":[\"commentMasterId\",\"comment\",\"storeId\",\"userId\",\"status\"],\"columnCustomName\":[\"Comment Master Id\",\"Comment\",\"Store Id\",\"User Id\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"No\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"\",\"\",\"3\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"textarea\",\"select\"],\"fieldHeading\":[\"Comment\",\"Status\"],\"fieldSortOrder\":[\"1\",\"4\"],\"fieldColumn\":[\"12\",\"12\"],\"fieldColumnName\":[\"comment\",\"status\"],\"fieldName\":[\"comment\",\"status\"],\"fieldId\":[\"comment\",\"status\"],\"fieldClass\":[\"comment\",\"status\"],\"fieldPlaceHolder\":[\"Comment\",\"Status\"],\"fieldDefaultValue\":[\"\",\"\"],\"fieldAttribute\":[\"\",\"\"],\"fieldRequired\":[\"1\",\"0\"],\"fieldValidation\":[\"required\",\"\"],\"fieldHeadingBefore\":[\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\"],\"fieldOrderBy\":[\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\"],\"fieldCustomFields\":[\"\",\"\"]}","2","0","0","0","0","0","","","","","","","","{{$controller::moduleShortCode(0)}}","","No","","","No","","","1","1","2024-04-13 07:08:25");
INSERT INTO modules VALUES("40","RewardOtpSkipReason","reward_otp_skip_reason","rewardOtpSkipReasonId","Reward Otp Skip Reason","{\"moduleId\":\"40\",\"tableName\":\"reward_otp_skip_reason\",\"columnName\":[\"rewardOtpSkipReasonId\",\"customerId\",\"orderId\",\"reason\",\"storeId\",\"skipOtpToken\",\"status\",\"dateAdded\"],\"columnCustomName\":[\"Reward Otp Skip Reason Id\",\"Customer Id\",\"Order Id\",\"Reason\",\"Store Id\",\"Skip Otp Token\",\"Status\",\"Date Added\"],\"foreignColumnShow\":[\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"customers\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"name\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"customerId\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"status\",\"\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"\",\"\",\"\",\"5\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"select\",\"text\",\"select\",\"select\",\"text\"],\"fieldHeading\":[\"Customer Id\",\"Reason\",\"Store Id\",\"Status\",\"Date Added\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"5\"],\"fieldColumn\":[\"4\",\"4\",\"4\",\"4\",\"4\"],\"fieldColumnName\":[\"customerId\",\"reason\",\"storeId\",\"status\",\"dateAdded\"],\"fieldName\":[\"customerId\",\"reason\",\"storeId\",\"status\",\"dateAdded\"],\"fieldId\":[\"customerId\",\"reason\",\"storeId\",\"status\",\"dateAdded\"],\"fieldClass\":[\"customerId\",\"reason\",\"storeId\",\"status\",\"dateAdded\"],\"fieldPlaceHolder\":[\"Customer Id\",\"Reason\",\"Store Id\",\"Status\",\"Date Added\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"0\",\"0\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"\",\"\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\",\"\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"customerId\",\"reason\",\"storeId\",\"status\",\"dateAdded\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\"]}","30","0","1","1","0","0","","","","","","","","{{$controller::moduleShortCode(40)}}","","No","","","No","","","1","1","2024-04-19 04:11:25");
INSERT INTO modules VALUES("41","RewardOtp","reward_otp","rewardOtpId","Reward Otp","{\"moduleId\":\"41\",\"tableName\":\"reward_otp\",\"columnName\":[\"rewardOtpId\",\"customerId\",\"orderId\",\"otp\",\"storeId\",\"otpToken\",\"status\",\"dateAdded\"],\"columnCustomName\":[\"Reward Otp Id\",\"Customer Id\",\"Order Id\",\"Otp\",\"Store Id\",\"Otp Token\",\"Status\",\"Date Added\"],\"foreignColumnShow\":[\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"customers\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"name\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"customerId\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"status\",\"\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"\",\"\",\"\",\"5\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"select\",\"text\",\"select\",\"text\"],\"fieldHeading\":[\"Store Id\",\"Otp Token\",\"Status\",\"Date Added\"],\"fieldSortOrder\":[\"4\",\"5\",\"6\",\"7\"],\"fieldColumn\":[\"4\",\"4\",\"4\",\"4\"],\"fieldColumnName\":[\"storeId\",\"otpToken\",\"status\",\"dateAdded\"],\"fieldName\":[\"storeId\",\"otpToken\",\"status\",\"dateAdded\"],\"fieldId\":[\"storeId\",\"otpToken\",\"status\",\"dateAdded\"],\"fieldClass\":[\"storeId\",\"otpToken\",\"status\",\"dateAdded\"],\"fieldPlaceHolder\":[\"Store Id\",\"Otp Token\",\"Status\",\"Date Added\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"0\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"storeId\",\"otpToken\",\"status\",\"dateAdded\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\"]}","30","0","1","1","0","0","","","","","","","","{{$controller::moduleShortCode(0)}}","","No","","","No","","","1","1","2024-04-19 04:29:55");
INSERT INTO modules VALUES("42","ExpenseCategories","expense_categories","expenseCategoryId","Expense Categories","{\"moduleId\":\"42\",\"tableName\":\"expense_categories\",\"columnName\":[\"expenseCategoryId\",\"heading\",\"storeId\",\"userId\",\"status\"],\"columnCustomName\":[\"Expense Category Id\",\"Heading\",\"Store Id\",\"User Id\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"No\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"\",\"\",\"3\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"select\"],\"fieldHeading\":[\"Heading\",\"Status\"],\"fieldSortOrder\":[\"1\",\"4\"],\"fieldColumn\":[\"6\",\"6\"],\"fieldColumnName\":[\"heading\",\"status\"],\"fieldName\":[\"heading\",\"status\"],\"fieldId\":[\"heading\",\"status\"],\"fieldClass\":[\"heading\",\"status\"],\"fieldPlaceHolder\":[\"Heading\",\"Status\"],\"fieldDefaultValue\":[\"\",\"\"],\"fieldAttribute\":[\"\",\"\"],\"fieldRequired\":[\"1\",\"0\"],\"fieldValidation\":[\"required\",\"\"],\"fieldHeadingBefore\":[\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\"],\"fieldOrderBy\":[\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\"],\"fieldCustomFields\":[\"\",\"\"]}","8","0","0","0","0","0","","","","","","","","{{$controller::moduleShortCode(0)}}","","No","","","No","","","1","1","2024-04-30 04:33:58");
INSERT INTO modules VALUES("43","Expenses","expenses","expenseId","Expenses","{\"moduleId\":\"43\",\"tableName\":\"expenses\",\"columnName\":[\"expenseId\",\"heading\",\"amount\",\"vendorId\",\"expenseCategoryId\",\"relatedImage\",\"storeId\",\"userId\",\"status\",\"dateAdded\"],\"columnCustomName\":[\"Expense Id\",\"Heading\",\"Amount\",\"Vendor Id\",\"Expense Category Id\",\"Related Image\",\"Store Id\",\"User Id\",\"Status\",\"Date Added\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"vendors\",\"expense_categories\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"heading\",\"heading\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"vendorId\",\"expenseCategoryId\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"Yes\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"image\",\"\",\"\",\"status\",\"\"],\"columnSortOrder\":[\"1\",\"3\",\"4\",\"5\",\"6\",\"2\",\"\",\"\",\"7\",\"8\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"select\",\"select\",\"file\",\"select\"],\"fieldHeading\":[\"Heading\",\"Amount\",\"Vendor Id\",\"Expense Category Id\",\"Image\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"8\",\"5\"],\"fieldColumn\":[\"4\",\"4\",\"4\",\"6\",\"12\",\"6\"],\"fieldColumnName\":[\"heading\",\"amount\",\"vendorId\",\"expenseCategoryId\",\"relatedImage\",\"status\"],\"fieldName\":[\"heading\",\"amount\",\"vendorId\",\"expenseCategoryId\",\"relatedImage\",\"status\"],\"fieldId\":[\"heading\",\"amount\",\"vendorId\",\"expenseCategoryId\",\"relatedImage\",\"status\"],\"fieldClass\":[\"heading\",\"amount\",\"vendorId\",\"expenseCategoryId\",\"relatedImage\",\"status\"],\"fieldPlaceHolder\":[\"Heading\",\"Amount\",\"Vendor Id\",\"Expense Category Id\",\"Related Image\",\"Status\"],\"fieldDefaultValue\":[\"\",\"0\",\"\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"multiple\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"0\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"required\",\"required|numeric\",\"\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"removePleaseSelect\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\",\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\",\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\",\"vendors\",\"expense_categories\",\"\",\"\"],\"fieldSelectIdColumn\":[\"null\",\"null\",\"vendorId\",\"expenseCategoryId\",\"\",\"null\"],\"fieldSelectMainColumn\":[\"\",\"\",\"heading,mobile,email\",\"heading\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"heading\",\"amount\",\"vendorId\",\"expenseCategoryId\",\"relatedImage\",\"status\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\",\"\"]}","8","0","0","0","0","0","","","","","","","","{{$controller::moduleShortCode(0)}}","","No","","","No","","","1","1","2024-04-30 04:38:15");
INSERT INTO modules VALUES("44","HotelRooms","hotel_rooms","hotelRoomId","Hotel Rooms","{\"moduleId\":\"44\",\"tableName\":\"hotel_rooms\",\"columnName\":[\"hotelRoomId\",\"roomNo\",\"capacity\",\"roomStatus\",\"image\",\"relatedImages\",\"storeId\",\"userId\",\"status\"],\"columnCustomName\":[\"Hotel Room Id\",\"Room No\",\"Capacity\",\"Room Booked Status\",\"Image\",\"Related Images\",\"Store Id\",\"User Id\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"image\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"3\",\"4\",\"5\",\"2\",\"\",\"\",\"\",\"6\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"select\",\"select\",\"file\",\"file\"],\"fieldHeading\":[\"Room No\",\"Capacity\",\"Room Booked Status\",\"Status\",\"Main Image\",\"Related Image\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"6\",\"7\",\"8\"],\"fieldColumn\":[\"6\",\"6\",\"6\",\"6\",\"6\",\"6\"],\"fieldColumnName\":[\"roomNo\",\"capacity\",\"roomStatus\",\"status\",\"image\",\"relatedImages\"],\"fieldName\":[\"roomNo\",\"capacity\",\"roomStatus\",\"status\",\"image\",\"relatedImages\"],\"fieldId\":[\"roomNo\",\"capacity\",\"roomStatus\",\"status\",\"image\",\"relatedImages\"],\"fieldClass\":[\"roomNo\",\"capacity\",\"roomStatus\",\"status\",\"image\",\"relatedImages\"],\"fieldPlaceHolder\":[\"Room No\",\"Capacity\",\"Room Status\",\"Status\",\"Image\",\"Related Images\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"0\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"required|numeric\",\"required|numeric\",\"\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"No,Yes\",\"Enable,Disable\",\"\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\",\"No,Yes\",\"1,0\",\"\",\"\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"roomNo\",\"capacity\",\"roomStatus\",\"status\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\",\"\"]}","30","0","0","0","0","0","","","","","","","","{{$controller::moduleShortCode(0)}}","","No","","","No","","","1","1","2024-06-04 08:54:26");
INSERT INTO modules VALUES("45","ProductReturn","product_return","productReturnId","Product Return","{\"moduleId\":\"45\",\"tableName\":\"product_return\",\"columnName\":[\"productReturnId\",\"customerId\",\"orderId\",\"productId\",\"quantity\",\"total\",\"storeId\",\"userId\",\"status\",\"dateAdded\"],\"columnCustomName\":[\"Product Return Id\",\"Customer Id\",\"Order Id\",\"Product Id\",\"Quantity\",\"Total\",\"Store Id\",\"User Id\",\"Status\",\"Date Added\"],\"foreignColumnShow\":[\"No\",\"Yes\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"customers\",\"\",\"products\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"name\",\"\",\"heading\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"customerId\",\"\",\"productId\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"status\",\"\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"\",\"\",\"\",\"7\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"select\",\"select\",\"select\",\"text\",\"text\",\"select\",\"select\",\"select\",\"text\"],\"fieldHeading\":[\"Customer Id\",\"Order Id\",\"Product Id\",\"Quantity\",\"Total\",\"Store Id\",\"User Id\",\"Status\",\"Date Added\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\"],\"fieldColumn\":[\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\"],\"fieldColumnName\":[\"customerId\",\"orderId\",\"productId\",\"quantity\",\"total\",\"storeId\",\"userId\",\"status\",\"dateAdded\"],\"fieldName\":[\"customerId\",\"orderId\",\"productId\",\"quantity\",\"total\",\"storeId\",\"userId\",\"status\",\"dateAdded\"],\"fieldId\":[\"customerId\",\"orderId\",\"productId\",\"quantity\",\"total\",\"storeId\",\"userId\",\"status\",\"dateAdded\"],\"fieldClass\":[\"customerId\",\"orderId\",\"productId\",\"quantity\",\"total\",\"storeId\",\"userId\",\"status\",\"dateAdded\"],\"fieldPlaceHolder\":[\"Customer Id\",\"Order Id\",\"Product Id\",\"Quantity\",\"Total\",\"Store Id\",\"User Id\",\"Status\",\"Date Added\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\"],\"fieldValidation\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"customerId\",\"orderId\",\"productId\",\"quantity\",\"total\",\"storeId\",\"userId\",\"status\",\"dateAdded\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"]}","74","0","1","1","1","1","","","","","","","","{{$controller::moduleShortCode(0)}}","","No","","","No","","","1","1","2024-06-29 06:10:36");
INSERT INTO modules VALUES("46","CustomerAmountPaid","customer_amount_paid","customerAmountPaidId","Customer Amount Paid","{\"moduleId\":\"46\",\"tableName\":\"customer_amount_paid\",\"columnName\":[\"customerAmountPaidId\",\"orderId\",\"customerId\",\"amount\",\"paymentId\",\"remark\",\"storeId\",\"userId\",\"status\",\"dateAdded\"],\"columnCustomName\":[\"Customer Amount Paid Id\",\"Order Id\",\"Customer Id\",\"Amount\",\"Payment Id\",\"Remark\",\"Store Id\",\"User Id\",\"Status\",\"Date Added\"],\"foreignColumnShow\":[\"No\",\"No\",\"Yes\",\"No\",\"Yes\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"customers\",\"\",\"payments\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"name\",\"\",\"name\",\"\",\"\",\"\",\"\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"customerId\",\"\",\"paymentId\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"status\",\"\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"\",\"\",\"\",\"7\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"select\",\"text\",\"select\",\"text\",\"select\"],\"fieldHeading\":[\"Order Id\",\"Amount\",\"Payment Id\",\"Remark\",\"Customer Id\"],\"fieldSortOrder\":[\"1\",\"3\",\"4\",\"5\",\"2\"],\"fieldColumn\":[\"6\",\"6\",\"6\",\"12\",\"6\"],\"fieldColumnName\":[\"orderId\",\"amount\",\"paymentId\",\"remark\",\"customerId\"],\"fieldName\":[\"orderId\",\"amount\",\"paymentId\",\"remark\",\"customerId\"],\"fieldId\":[\"orderId\",\"amount\",\"paymentId\",\"remark\",\"customerId\"],\"fieldClass\":[\"orderId oaidkbieqj\",\"amount\",\"paymentId oaidkbieqj\",\"remark\",\"customerId oaidkbieqj\"],\"fieldPlaceHolder\":[\"Order Id\",\"Amount\",\"Payment Id\",\"Remark\",\"Customer Id\"],\"fieldDefaultValue\":[\"\",\"0\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"0\",\"1\",\"1\",\"0\",\"0\"],\"fieldValidation\":[\"\",\"required\",\"required\",\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute2\":[\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"\",\"\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"\",\"\"],\"fieldSelectTable\":[\"order\",\"\",\"payments\",\"\",\"customers\"],\"fieldSelectIdColumn\":[\"orderId\",\"null\",\"paymentId\",\"\",\"customerId\"],\"fieldSelectMainColumn\":[\"orderId\",\"\",\"name\",\"\",\"name,mobile,email\"],\"fieldSelectWhere\":[\"\",\"\",\"name,name,name,name\",\"\",\"\"],\"fieldOrderBy\":[\"orderId\",\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"DESC\",\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"Credit,Multiple,Return,Wallet\",\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\",\"!=\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\",\"\"],\"fieldTableColumn\":[\"amount\",\"paymentId\",\"remark\",\"customerId\"]}","28","0","0","0","0","0","","","","","PD9waHANCiRuZXdEYXRhWydvcmRlcklkJ10gPSAkYXJyYXlbJ29yZGVySWQnXTsNCiRuZXdEYXRhWydjdXN0b21lcklkJ10gPSAkYXJyYXlbJ2N1c3RvbWVySWQnXTsNCiRuZXdEYXRhWydhbW91bnQnXSA9ICRhcnJheVsnYW1vdW50J107DQokbmV3RGF0YVsndHlwZSddID0gJ0RlYml0JzsNCiRuZXdEYXRhWydyZW1hcmsnXSA9ICAkYXJyYXlbJ3JlbWFyayddOw0KJG5ld0RhdGFbJ3BheW1lbnRJZCddID0gICRhcnJheVsncGF5bWVudElkJ107DQokbmV3RGF0YVsnc3RvcmVJZCddID0gU2Vzc2lvbjo6Z2V0KCdzdG9yZUlkJyk7DQokbmV3RGF0YVsndXNlcklkJ10gPSBTZXNzaW9uOjpnZXQoJ3VzZXJJZCcpOw0KJHRoaXMtPnNldERhdGEoImN1c3RvbWVyX2xlZGdlcl93YWxsZXQiLCRuZXdEYXRhKTsNCiR0aGlzLT51cGRhdGVDdXN0b21lcldhbGxldCgkYXJyYXlbJ2N1c3RvbWVySWQnXSk7DQo/Pg==","","","{{$controller::moduleShortCode(46)}}","","No","","","No","","","1","1","2024-06-29 06:31:32");
INSERT INTO modules VALUES("47","Currencies","currencies","currencyId","Currencies","{\"moduleId\":\"47\",\"tableName\":\"currencies\",\"columnName\":[\"currencyId\",\"heading\",\"code\",\"symbol\",\"storeId\",\"userId\",\"status\"],\"columnCustomName\":[\"Currency Id\",\"Heading\",\"Code\",\"Symbol\",\"Store Id\",\"User Id\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"No\",\"No\",\"No\",\"No\",\"No\"],\"foreignTable\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"foreignColumn\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\",\"No\",\"No\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"4\",\"\",\"\",\"5\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"text\",\"text\",\"select\"],\"fieldHeading\":[\"Heading\",\"Code\",\"Symbol\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\",\"3\",\"6\"],\"fieldColumn\":[\"4\",\"4\",\"4\",\"12\"],\"fieldColumnName\":[\"heading\",\"code\",\"symbol\",\"status\"],\"fieldName\":[\"heading\",\"code\",\"symbol\",\"status\"],\"fieldId\":[\"heading\",\"code\",\"symbol\",\"status\"],\"fieldClass\":[\"heading\",\"code\",\"symbol\",\"status\"],\"fieldPlaceHolder\":[\"Heading\",\"Code\",\"Symbol\",\"Status\"],\"fieldDefaultValue\":[\"\",\"\",\"\",\"\"],\"fieldAttribute\":[\"\",\"\",\"\",\"\"],\"fieldRequired\":[\"1\",\"1\",\"1\",\"0\"],\"fieldValidation\":[\"required\",\"required\",\"required\",\"\"],\"fieldHeadingBefore\":[\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\",\"\",\"\"],\"fieldAdditionalAttribute2\":[\"\",\"\",\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"\",\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"\",\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\",\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\",\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\",\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\",\"\",\"\"],\"fieldOrderBy\":[\"\",\"\",\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\",\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\",\"\",\"\"],\"fieldSelectOperator\":[\"\",\"\",\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\",\"\",\"\"],\"fieldCustomFields\":[\"\",\"\",\"\",\"\"]}","2","0","0","0","0","0","","","","","","","","{{$controller::moduleShortCode(0)}}","","No","","","No","","","1","1","2024-08-24 11:43:25");
INSERT INTO modules VALUES("48","Testimonials","testimonials","testimonialId","Testimonials","{\"moduleId\":\"48\",\"tableName\":\"testimonials\",\"columnName\":[\"testimonialId\",\"heading\",\"userId\",\"status\"],\"columnCustomName\":[\"Testimonial Id\",\"Heading\",\"User Id\",\"Status\"],\"foreignColumnShow\":[\"No\",\"No\",\"Yes\",\"No\"],\"foreignTable\":[\"\",\"\",\"users\",\"\"],\"foreignColumn\":[\"\",\"\",\"userName\",\"\"],\"foreignTableFirstColumn\":[\"\",\"\",\"userId\",\"\"],\"showInList\":[\"Yes\",\"Yes\",\"Yes\",\"Yes\"],\"type\":[\"\",\"\",\"\",\"status\"],\"columnSortOrder\":[\"1\",\"2\",\"3\",\"4\"],\"tableColumnMerge\":[\"\",\"\",\"\",\"\"],\"filterWorkingCondition\":\"\",\"listViewSortOrder\":\"\",\"listViewSoftDelete\":\"No\",\"fieldType\":[\"text\",\"select\"],\"fieldHeading\":[\"Heading\",\"Status\"],\"fieldSortOrder\":[\"1\",\"2\"],\"fieldColumn\":[\"12\",\"12\"],\"fieldColumnName\":[\"heading\",\"status\"],\"fieldName\":[\"heading\",\"status\"],\"fieldId\":[\"heading\",\"status\"],\"fieldClass\":[\"heading\",\"status\"],\"fieldPlaceHolder\":[\"Heading\",\"Status\"],\"fieldDefaultValue\":[\"\",\"\"],\"fieldAttribute\":[\"\",\"\"],\"fieldRequired\":[\"0\",\"0\"],\"fieldValidation\":[\"\",\"\"],\"fieldHeadingBefore\":[\"\",\"\"],\"fieldAdditionalAttribute\":[\"\",\"\"],\"fieldAdditionalAttribute2\":[\"\",\"\"],\"fieldSelectBoxText\":[\"\",\"Enable,Disable\"],\"fieldSelectBoxValue\":[\"\",\"1,0\"],\"fieldSelectTable\":[\"\",\"\"],\"fieldSelectIdColumn\":[\"\",\"\"],\"fieldSelectMainColumn\":[\"\",\"\"],\"fieldSelectWhere\":[\"\",\"\"],\"fieldOrderBy\":[\"\",\"\"],\"fieldOrderByValue\":[\"null\",\"null\"],\"fieldSelectValue\":[\"\",\"\"],\"fieldTableColumn\":[\"heading\",\"status\"],\"fieldSelectOperator\":[\"\",\"\"],\"fieldCustomQuery\":[\"\",\"\"],\"fieldCustomFields\":[\"\",\"\"]}","28","0","0","0","0","0","","","","","","","","{{$controller::moduleShortCode(0)}}","","No","","","No","","","1","1","2024-09-10 16:29:41");



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
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

INSERT INTO order VALUES("87","1","103","INV-2024-","Suresh","","9314077851","500.00","0.00","0.00","[]","null","8","Cash","","500.00","50","0","","sendToKot","0","Zcwn4Q2DCYEdnZKiPC8k2smDpGtf1e20k8MOsTgqEYUU2FEBhXSTgbMU2Ay50lmF5gk8o6T4dFPPyKS8IEXkoQ7saknpfWT6arEZRAeqxVzMB3JxDqCMBKcOdLHMKHeUfi4vcMuNIUlQrQO4ittmnMSiC51x0AYj6lMooAN6sQP4lPTssmwo333hcNs5mmx9DePFtKNK3TQGcc8MnS5XiaHUrkhZt8UK5YRu2898E4Of9ILZDT1Wql7ZcSSICsW","0","","0","1","Completed","[{\"productId\":102,\"heading\":\"Hotel Room 1\",\"model\":\"Hotel\",\"barcode\":98321014,\"barcodeType\":\"\",\"cost\":500,\"price\":500,\"percent\":0,\"manufacturerId\":2,\"categoryId\":2,\"vendorId\":0,\"unitId\":0,\"taxId\":0,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":0,\"changePriceDuringBilling\":0,\"image\":\"public\\/assets\\/uploads\\/ship_shop_pos_default\\/693478300.jpeg\",\"relatedImage\":\"[\\\"public\\\\\\/assets\\\\\\/uploads\\\\\\/ship_shop_pos_default\\\\\\/419239602.jpeg\\\"]\",\"showInPos\":1,\"productType\":\"Hotel\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":1,\"dateUpdated\":\"2025-01-28 22:25:02\",\"status\":1,\"dateAdded\":\"2024-07-02 11:43:02\",\"taxHeading\":\"\",\"taxPercent\":0,\"taxExclusiveValue\":0,\"taxInclusiveValue\":0,\"tax\":0,\"basePriceCost\":0,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":500,\"profit\":-500,\"rewardPoints\":50,\"sentToKot\":1,\"kotViewed\":0}]","","0","","","","2","1","1","0","","1","2","1","0","2","2025-01-29 20:57:27");
INSERT INTO order VALUES("88","2","103","INV-2024-","Suresh","","9314077851","500.00","0.00","0.00","[]","null","8","Cash","","500.00","50","0","","sendToKot","0","JPhjfn19XfdPk24Zn004eh4XJMYeie03IrjJvfF3Thd2TRr3i77t1SK7dLyQHI3dk9TwdVIwg5t9REeXzMt9jGhYETE4Fv2yaYe94ILbfbOwqmoTh3c4FJFcYFV6mOoDC6lI2kphjKrk4aJxoc1eaV3hv9jmf9mfIY1mbYzlWnEHsjUQtYXyHpO10MDON1ku5HbcoFG4tPyayuKd9CZ55YD9KgDhagADG2maW2nfD5h6Vue8tlz3iZR5uwsQFWP","0","","0","1","Completed","[{\"productId\":103,\"heading\":\"Hotel Room 2\",\"model\":\"Hotel\",\"barcode\":98321014,\"barcodeType\":\"\",\"cost\":500,\"price\":500,\"percent\":0,\"manufacturerId\":2,\"categoryId\":2,\"vendorId\":0,\"unitId\":0,\"taxId\":0,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":0,\"changePriceDuringBilling\":0,\"image\":\"public\\/assets\\/uploads\\/ship_shop_pos_default\\/693478300.jpeg\",\"relatedImage\":\"[\\\"public\\\\\\/assets\\\\\\/uploads\\\\\\/ship_shop_pos_default\\\\\\/419239602.jpeg\\\"]\",\"showInPos\":1,\"productType\":\"Hotel\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":1,\"dateUpdated\":\"2025-01-24 13:11:45\",\"status\":1,\"dateAdded\":\"2024-07-02 11:43:02\",\"taxHeading\":\"\",\"taxPercent\":0,\"taxExclusiveValue\":0,\"taxInclusiveValue\":0,\"tax\":0,\"basePriceCost\":0,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":500,\"profit\":-500,\"rewardPoints\":50,\"sentToKot\":1,\"kotViewed\":0}]","","0","","","","1","1","1","0","","1","1","1","0","1","2025-01-30 21:26:27");
INSERT INTO order VALUES("89","3","103","INV-2024-","Suresh","","9314077851","500.00","0.00","0.00","[]","null","8","Cash","","500.00","50","0","","sendToKot","0","NLOzfeIm3BMQUje7quGaHaLRFsC43cVMuDBEP72wXL0YxGMZ3iUo5UT5KPmUoS4qaMOhLcsUscMC2TKdhTMOyeRBIXSKXDmZPxhds6Ibo2lJ0vxbg8xCjALViAYlPngfVzGLtRDf7nsEBQbPkb0BuzRnBaTshjt35Gd40ohAut4218CKWMlfE4UvYVBZBLbecW0uJmQMXoY5H9IcjCrqDCppIz4KXOqrUxjOVvNlqPCt69dCsiRhyKhWadMiUy3","0","","0","1","Completed","[{\"productId\":102,\"heading\":\"Hotel Room 1\",\"model\":\"Hotel\",\"barcode\":98321014,\"barcodeType\":\"\",\"cost\":500,\"price\":500,\"percent\":0,\"manufacturerId\":2,\"categoryId\":2,\"vendorId\":0,\"unitId\":0,\"taxId\":0,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":0,\"changePriceDuringBilling\":0,\"image\":\"public\\/assets\\/uploads\\/ship_shop_pos_default\\/693478300.jpeg\",\"relatedImage\":\"[\\\"public\\\\\\/assets\\\\\\/uploads\\\\\\/ship_shop_pos_default\\\\\\/419239602.jpeg\\\"]\",\"showInPos\":1,\"productType\":\"Hotel\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":1,\"dateUpdated\":\"2025-01-29 20:57:27\",\"status\":1,\"dateAdded\":\"2024-07-02 11:43:02\",\"taxHeading\":\"\",\"taxPercent\":0,\"taxExclusiveValue\":0,\"taxInclusiveValue\":0,\"tax\":0,\"basePriceCost\":0,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":500,\"profit\":-500,\"rewardPoints\":50,\"sentToKot\":1,\"kotViewed\":0}]","","0","","","","1","1","1","0","","1","1","1","0","1","2025-02-01 13:13:51");
INSERT INTO order VALUES("90","4","102","INV-2024-","Priyavrat Sehrawat","pkv172019@gmail.com","8285187287","262418.00","8277.30","0.00","[]","null","8","Cash","","270695.00","26241","0","","finalCheckout","0","eIFIxOPvAXFnxWtqFC8VJWcLHSCKuaf2mmMhybZqvhCMtzdvJGqdcAW0vETaal9byr5gPt52WNz8Id6o6NgrMNbr43k7Z2jYDLZ4E6bAYsJXDnDeG0zM7f3w5ZFbfFV3iNNsNhKZt44qdf1ueQovxJ5f0RwkDFaKK6T9fWaw9HEEnw1jEzFTh1CQObVCJFf4YQEcFtFx89jBImXDWa3MDCJ0ZtlDKyhPQ6ElAkwTqyH4inlfrMxlmoHwCoHMRbs","1","Table No 1","0","1","Completed","[{\"productId\":103,\"heading\":\"Hotel Room 2\",\"model\":\"Hotel\",\"barcode\":98321014,\"barcodeType\":\"\",\"cost\":500,\"price\":500,\"percent\":0,\"manufacturerId\":2,\"categoryId\":2,\"vendorId\":0,\"unitId\":0,\"taxId\":0,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":0,\"changePriceDuringBilling\":0,\"image\":\"public\\/assets\\/uploads\\/ship_shop_pos_default\\/693478300.jpeg\",\"relatedImage\":\"[\\\"public\\\\\\/assets\\\\\\/uploads\\\\\\/ship_shop_pos_default\\\\\\/419239602.jpeg\\\"]\",\"showInPos\":1,\"productType\":\"Hotel\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":1,\"dateUpdated\":\"2025-01-30 21:27:08\",\"status\":1,\"dateAdded\":\"2024-07-02 11:43:02\",\"taxHeading\":\"\",\"taxPercent\":0,\"taxExclusiveValue\":0,\"taxInclusiveValue\":0,\"tax\":0,\"basePriceCost\":0,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":500,\"profit\":-500,\"rewardPoints\":50},{\"productId\":220,\"heading\":\"Mrs. Vanessa Berge I\",\"model\":\"i1TWGLB2cl\",\"barcode\":22117112,\"barcodeType\":\"\",\"cost\":34587,\"price\":69174,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":2,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"productType\":\"\",\"softDelete\":0,\"storeId\":1,\"userId\":2,\"updatedBy\":0,\"insertedBy\":2,\"dateUpdated\":\"2025-01-24 13:03:21\",\"status\":1,\"dateAdded\":\"2025-01-15 22:52:05\",\"taxHeading\":\"GST 5%\",\"taxPercent\":5,\"taxExclusiveValue\":3458.7000000000003,\"taxInclusiveValue\":0,\"tax\":3458.7000000000003,\"basePriceCost\":69174,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":69174,\"profit\":34587,\"rewardPoints\":6917.400000000001},{\"productId\":219,\"heading\":\"Oceane Nicolas\",\"model\":\"mzllEDdug4\",\"barcode\":99920598,\"barcodeType\":\"\",\"cost\":96372,\"price\":192744,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":1,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"productType\":\"\",\"softDelete\":0,\"storeId\":1,\"userId\":2,\"updatedBy\":0,\"insertedBy\":2,\"dateUpdated\":\"2025-01-17 22:36:40\",\"status\":1,\"dateAdded\":\"2025-01-15 22:52:05\",\"taxHeading\":\"CGST 2.5%\",\"taxPercent\":2.5,\"taxExclusiveValue\":4818.6,\"taxInclusiveValue\":0,\"tax\":4818.6,\"basePriceCost\":192744,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":192744,\"profit\":96372,\"rewardPoints\":19274.4}]","","0","","","","1","3","3","0","","1","1","1","0","1","2025-02-01 13:18:04");
INSERT INTO order VALUES("91","5","1","INV-2024-","Walk In Customer","","0000000000","275640.00","28029.48","0.00","[]","null","8","Cash","","303669.00","27564","0","","sendToKot","1","uPljgitT1xa5WjjNCjD8mZqBJX4JMv7EuHZDWG4MmK8mKVWshahMDjtxDl7kVH1nfP0dCLeaNv7D3U1li9sQXUV2qT8fyph8gdZs8OgJU1tR1xu8Oo7YWxyGNp52XamgH50rq5QgirJg9meWfzmmBpX8JjEbY2iwVdUlPOFIPDVjk1IrRuYCVIfzLdDWvMl69JwpviNSjgrJIwBHIURJrV2qr7rlvrbnYVmo3q7ayEY7en38aoN6YTfJiCr5uvI","2","Table No 2","1","1","Completed","[{\"productId\":219,\"heading\":\"Oceane Nicolas\",\"model\":\"mzllEDdug4\",\"barcode\":99920598,\"barcodeType\":\"\",\"cost\":96372,\"price\":192744,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":1,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"productType\":\"\",\"softDelete\":0,\"storeId\":1,\"userId\":2,\"updatedBy\":0,\"insertedBy\":2,\"dateUpdated\":\"2025-02-01 13:18:04\",\"status\":1,\"dateAdded\":\"2025-01-15 22:52:05\",\"taxHeading\":\"CGST 2.5%\",\"taxPercent\":2.5,\"taxExclusiveValue\":4818.6,\"taxInclusiveValue\":0,\"tax\":4818.6,\"basePriceCost\":192744,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":192744,\"profit\":96372,\"rewardPoints\":19274.4,\"sentToKot\":1,\"kotViewed\":0},{\"productId\":215,\"heading\":\"Sterling Jast DVM\",\"model\":\"nxm8dhg4a7\",\"barcode\":87033348,\"barcodeType\":\"\",\"cost\":41448,\"price\":82896,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":5,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"productType\":\"\",\"softDelete\":0,\"storeId\":1,\"userId\":2,\"updatedBy\":0,\"insertedBy\":2,\"dateUpdated\":\"2025-02-01 22:36:15\",\"status\":1,\"dateAdded\":\"2025-01-15 22:52:05\",\"taxHeading\":\"GST 28%\",\"taxPercent\":28,\"taxExclusiveValue\":23210.88,\"taxInclusiveValue\":0,\"tax\":23210.88,\"basePriceCost\":82896,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":82896,\"profit\":41448,\"rewardPoints\":8289.6,\"sentToKot\":1,\"kotViewed\":0}]","","0","","","","1","2","2","0","","1","1","1","0","1","2025-02-01 13:18:26");
INSERT INTO order VALUES("92","6","1","INV-2024-","Walk In Customer","","0000000000","69174.00","3458.70","0.00","[]","null","8","Cash","","72633.00","6917","0","","sendToKot","1","XernyHWi1ec0BSHJuSSaeMs4JU2bzPpLMN7q2YBIt9vkxSOR7NqnPrI1QjEMhgdz63wsMR1OwKj4EzT48zZoepn6KoecF5CEuu82dJzGwgsvNWqsLJuyds1oS0GH7mO10DjilTcFgq4Bf8j2iBF9f7nOv1XdKUFlW7RB16UlBrx2gt1cZrYriuMTy6Xsdi8ONAyu6p43WnQj2ywwuL6Z2myHKt3Igc7oRHliCBpyDIR0eSl42aIB8VEI2lki7eG","2","Table No 2","1","1","Completed","[{\"productId\":220,\"heading\":\"Mrs. Vanessa Berge I\",\"model\":\"i1TWGLB2cl\",\"barcode\":22117112,\"barcodeType\":\"\",\"cost\":34587,\"price\":69174,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":2,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"productType\":\"\",\"softDelete\":0,\"storeId\":1,\"userId\":2,\"updatedBy\":0,\"insertedBy\":2,\"dateUpdated\":\"2025-02-01 13:18:04\",\"status\":1,\"dateAdded\":\"2025-01-15 22:52:05\",\"taxHeading\":\"GST 5%\",\"taxPercent\":5,\"taxExclusiveValue\":3458.7000000000003,\"taxInclusiveValue\":0,\"tax\":3458.7000000000003,\"basePriceCost\":69174,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":69174,\"profit\":34587,\"rewardPoints\":6917.400000000001,\"sentToKot\":1,\"kotViewed\":0}]","","0","","","","1","1","1","0","","1","1","1","0","1","2025-02-01 13:18:57");
INSERT INTO order VALUES("93","7","1","INV-2024-","Walk In Customer","","0000000000","180906.00","9045.30","0.00","[]","null","8","Cash","","189951.00","18091","0","","finalCheckout","0","GZlxr7SsbNAMwXKJ22xhifwqNYZs6LqkgECnQv1mtoRhESS5JV1hjK7L2cQyAhtQxWmhm8OUFVthYYMQ4PzeNYgiMw2GhhiSxRkaI72TpI1TL8nGzHOnwSR8De59C4sjpUCFxa3wWSgUYxpdtgu4j8T3ADUS43OJd76bBYpfc8mfzdGmcnnH0G1XRpYCs0XxzxDZmzeks3icx06WxK0BK1u7f9t2cuR2WQdqunAJesWGQx3EhCwZIVK8BKtuY9n","2","Table No 2","0","1","Completed","[{\"productId\":216,\"heading\":\"Ms. Maximillia Schulist\",\"model\":\"b3UGA8kegx\",\"barcode\":96288245,\"barcodeType\":\"\",\"cost\":90453,\"price\":180906,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":2,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"productType\":\"\",\"softDelete\":0,\"storeId\":1,\"userId\":2,\"updatedBy\":0,\"insertedBy\":2,\"dateUpdated\":\"2025-01-19 20:55:59\",\"status\":1,\"dateAdded\":\"2025-01-15 22:52:05\",\"taxHeading\":\"GST 5%\",\"taxPercent\":5,\"taxExclusiveValue\":9045.300000000001,\"taxInclusiveValue\":0,\"tax\":9045.300000000001,\"basePriceCost\":180906,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":180906,\"profit\":90453,\"rewardPoints\":18090.600000000002}]","","0","","","","1","1","1","0","","1","1","1","0","1","2025-02-01 13:19:21");
INSERT INTO order VALUES("94","8","1","INV-2024-","Walk In Customer","","0000000000","636416.00","67977.00","0.00","[]","null","8","Cash","","704393.00","63642","0","","finalCheckout","0","ema96XwiP0fRdfSgt69xQCD5yXoFLe8ZSBQsEySXYCJ8Lpu0LIIGbvxSqvNlzAiR5lQGLfhUKzJQeT7MtmczLQVK5Vis7I7rwtekr2NEY7rKaYYyLnwVPH83sDb82np1skQXNg28NywZrf0lCwC8Xak8t9HfsvUxLNLbCNxNJ1jHSi0rvnil9egCwU9k9sTI3te0Z0tuUp2uLLKvdMZHjeFRLYTkxAapYgSnr8L6X2Y5YIN0q826tz6Dh1derfh","5","Table No 5","0","1","Completed","[{\"productId\":216,\"heading\":\"Ms. Maximillia Schulist\",\"model\":\"b3UGA8kegx\",\"barcode\":96288245,\"barcodeType\":\"\",\"cost\":90453,\"price\":180906,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":2,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"productType\":\"\",\"softDelete\":0,\"storeId\":1,\"userId\":2,\"updatedBy\":0,\"insertedBy\":2,\"dateUpdated\":\"2025-02-01 13:19:21\",\"status\":1,\"dateAdded\":\"2025-01-15 22:52:05\",\"taxHeading\":\"GST 5%\",\"taxPercent\":5,\"taxExclusiveValue\":9045.300000000001,\"taxInclusiveValue\":0,\"tax\":9045.300000000001,\"basePriceCost\":180906,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":180906,\"profit\":90453,\"rewardPoints\":18090.600000000002,\"sentToKot\":1,\"kotViewed\":0},{\"productId\":215,\"heading\":\"Sterling Jast DVM\",\"model\":\"nxm8dhg4a7\",\"barcode\":87033348,\"barcodeType\":\"\",\"cost\":41448,\"price\":82896,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":5,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"productType\":\"\",\"softDelete\":0,\"storeId\":1,\"userId\":2,\"updatedBy\":0,\"insertedBy\":2,\"dateUpdated\":\"2025-01-19 21:03:03\",\"status\":1,\"dateAdded\":\"2025-01-15 22:52:05\",\"taxHeading\":\"GST 28%\",\"taxPercent\":28,\"taxExclusiveValue\":23210.88,\"taxInclusiveValue\":0,\"tax\":23210.88,\"basePriceCost\":82896,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":82896,\"profit\":41448,\"rewardPoints\":8289.6,\"sentToKot\":1,\"kotViewed\":0},{\"productId\":212,\"heading\":\"Gay Fay\",\"model\":\"3q1nI6m7tj\",\"barcode\":52134951,\"barcodeType\":\"\",\"cost\":52942,\"price\":105884,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":1,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"productType\":\"\",\"softDelete\":0,\"storeId\":1,\"userId\":2,\"updatedBy\":0,\"insertedBy\":2,\"dateUpdated\":\"2025-01-15 22:52:05\",\"status\":1,\"dateAdded\":\"2025-01-15 22:52:05\",\"taxHeading\":\"CGST 2.5%\",\"taxPercent\":2.5,\"taxExclusiveValue\":2647.1000000000004,\"taxInclusiveValue\":0,\"tax\":2647.1000000000004,\"basePriceCost\":105884,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":105884,\"profit\":52942,\"rewardPoints\":10588.400000000001,\"sentToKot\":1,\"kotViewed\":0},{\"productId\":203,\"heading\":\"Katharina Dickens\",\"model\":\"3MeN2frILy\",\"barcode\":17861458,\"barcodeType\":\"\",\"cost\":42907,\"price\":85814,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":5,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"productType\":\"\",\"softDelete\":0,\"storeId\":1,\"userId\":2,\"updatedBy\":0,\"insertedBy\":2,\"dateUpdated\":\"2025-01-15 22:52:05\",\"status\":1,\"dateAdded\":\"2025-01-15 22:52:05\",\"taxHeading\":\"GST 28%\",\"taxPercent\":28,\"taxExclusiveValue\":24027.920000000002,\"taxInclusiveValue\":0,\"tax\":24027.920000000002,\"basePriceCost\":85814,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":85814,\"profit\":42907,\"rewardPoints\":8581.4,\"sentToKot\":1,\"kotViewed\":0},{\"productId\":200,\"heading\":\"Dr. Howell Hegmann MD\",\"model\":\"yBW7ZvPKdd\",\"barcode\":29893416,\"barcodeType\":\"\",\"cost\":90458,\"price\":180916,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":2,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"productType\":\"\",\"softDelete\":0,\"storeId\":1,\"userId\":2,\"updatedBy\":0,\"insertedBy\":2,\"dateUpdated\":\"2025-01-15 22:52:05\",\"status\":1,\"dateAdded\":\"2025-01-15 22:52:05\",\"taxHeading\":\"GST 5%\",\"taxPercent\":5,\"taxExclusiveValue\":9045.800000000001,\"taxInclusiveValue\":0,\"tax\":9045.800000000001,\"basePriceCost\":180916,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":180916,\"profit\":90458,\"rewardPoints\":18091.600000000002,\"sentToKot\":1,\"kotViewed\":0}]","","0","","","","1","5","5","0","","1","1","1","0","1","2025-02-01 13:35:01");
INSERT INTO order VALUES("95","9","103","INV-2024-","Suresh","","9314077851","189280.00","25857.98","0.00","[]","null","8","Cash","","215138.00","18928","0","","finalCheckout","0","JMTdw1IHBNRdpPaVcZM9HuCYRzxDl9clWPoVOQpLjZoVdfiDF44L08olhlQerYv29TE0KnHl9fDRKt1iJ9yCWJjHMzZXkcp08BKFMP4Uw4V2pqDNVIogbaYazg5nYP1Qkq0n9YJZz0pjlRCiytP1XeJk4glhjlFXJohPOZc3gVzHme3k6RyDEvag4HJteWZacLKhH58FCgUvDdJvjUAn2irlev0dz5zYaTnZiTEVizp4gxxNEMbaF35K2YmbUfg","3","Table No 3","0","1","Completed","[{\"productId\":103,\"heading\":\"Hotel Room 2\",\"model\":\"Hotel\",\"barcode\":98321014,\"barcodeType\":\"\",\"cost\":500,\"price\":500,\"percent\":0,\"manufacturerId\":2,\"categoryId\":2,\"vendorId\":0,\"unitId\":0,\"taxId\":0,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":0,\"changePriceDuringBilling\":0,\"image\":\"public\\/assets\\/uploads\\/ship_shop_pos_default\\/693478300.jpeg\",\"relatedImage\":\"[\\\"public\\\\\\/assets\\\\\\/uploads\\\\\\/ship_shop_pos_default\\\\\\/419239602.jpeg\\\"]\",\"showInPos\":1,\"productType\":\"Hotel\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":1,\"dateUpdated\":\"2025-02-01 13:18:04\",\"status\":1,\"dateAdded\":\"2024-07-02 11:43:02\",\"taxHeading\":\"\",\"taxPercent\":0,\"taxExclusiveValue\":0,\"taxInclusiveValue\":0,\"tax\":0,\"basePriceCost\":0,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":500,\"profit\":-500,\"rewardPoints\":50,\"sentToKot\":1,\"kotViewed\":0},{\"productId\":215,\"heading\":\"Sterling Jast DVM\",\"model\":\"nxm8dhg4a7\",\"barcode\":87033348,\"barcodeType\":\"\",\"cost\":41448,\"price\":82896,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":5,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"productType\":\"\",\"softDelete\":0,\"storeId\":1,\"userId\":2,\"updatedBy\":0,\"insertedBy\":2,\"dateUpdated\":\"2025-02-01 22:37:14\",\"status\":1,\"dateAdded\":\"2025-01-15 22:52:05\",\"taxHeading\":\"GST 28%\",\"taxPercent\":28,\"taxExclusiveValue\":23210.88,\"taxInclusiveValue\":0,\"tax\":23210.88,\"basePriceCost\":82896,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":82896,\"profit\":41448,\"rewardPoints\":8289.6,\"sentToKot\":1,\"kotViewed\":0},{\"productId\":212,\"heading\":\"Gay Fay\",\"model\":\"3q1nI6m7tj\",\"barcode\":52134951,\"barcodeType\":\"\",\"cost\":52942,\"price\":105884,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":1,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"productType\":\"\",\"softDelete\":0,\"storeId\":1,\"userId\":2,\"updatedBy\":0,\"insertedBy\":2,\"dateUpdated\":\"2025-02-01 22:36:15\",\"status\":1,\"dateAdded\":\"2025-01-15 22:52:05\",\"taxHeading\":\"CGST 2.5%\",\"taxPercent\":2.5,\"taxExclusiveValue\":2647.1000000000004,\"taxInclusiveValue\":0,\"tax\":2647.1000000000004,\"basePriceCost\":105884,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":105884,\"profit\":52942,\"rewardPoints\":10588.400000000001,\"sentToKot\":1,\"kotViewed\":0}]","","0","","","","1","3","3","0","","1","1","1","0","1","2025-02-01 22:39:06");



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
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO order_history VALUES("1","22","3","","1","1","1","2024-07-18 15:22:22");
INSERT INTO order_history VALUES("2","21","3","","1","1","1","2024-07-18 15:30:58");
INSERT INTO order_history VALUES("3","23","3","","1","1","1","2024-07-19 13:47:10");
INSERT INTO order_history VALUES("4","23","1","","1","1","1","2024-07-19 13:59:53");
INSERT INTO order_history VALUES("5","23","1","","1","1","1","2024-07-19 14:00:50");
INSERT INTO order_history VALUES("6","23","1","","1","1","1","2024-07-19 14:01:31");
INSERT INTO order_history VALUES("7","24","1","","1","1","1","2024-07-19 14:03:29");
INSERT INTO order_history VALUES("8","26","1","","1","1","1","2024-07-19 14:30:44");
INSERT INTO order_history VALUES("9","26","1","","1","1","1","2024-07-19 14:33:24");
INSERT INTO order_history VALUES("10","26","1","","1","1","1","2024-07-19 14:35:49");
INSERT INTO order_history VALUES("11","26","3","","1","1","1","2024-07-19 14:37:24");
INSERT INTO order_history VALUES("12","27","1","","1","1","1","2024-08-17 13:14:17");
INSERT INTO order_history VALUES("13","28","1","","1","1","1","2024-08-17 13:15:07");
INSERT INTO order_history VALUES("14","29","1","","1","1","1","2024-08-17 13:15:35");
INSERT INTO order_history VALUES("15","30","1","","1","1","1","2024-08-20 11:35:21");
INSERT INTO order_history VALUES("16","31","1","","1","1","1","2024-08-20 19:27:47");
INSERT INTO order_history VALUES("17","32","1","","1","1","1","2024-08-20 19:34:52");
INSERT INTO order_history VALUES("18","33","1","","1","1","1","2024-08-20 21:15:35");
INSERT INTO order_history VALUES("19","34","1","","1","1","1","2024-08-22 10:43:00");
INSERT INTO order_history VALUES("20","35","1","","1","1","1","2024-08-22 17:28:40");
INSERT INTO order_history VALUES("21","36","1","","1","1","1","2024-08-22 17:50:03");
INSERT INTO order_history VALUES("22","37","1","","1","1","1","2024-08-24 10:42:44");
INSERT INTO order_history VALUES("23","38","1","","1","1","1","2024-08-24 14:26:54");
INSERT INTO order_history VALUES("24","39","1","","1","1","1","2024-08-24 14:27:16");
INSERT INTO order_history VALUES("25","40","1","","1","1","1","2024-08-24 14:28:44");
INSERT INTO order_history VALUES("26","41","1","","1","1","1","2024-08-24 14:58:57");
INSERT INTO order_history VALUES("27","42","1","","1","1","1","2024-08-24 14:59:42");
INSERT INTO order_history VALUES("28","43","1","","1","1","1","2024-08-24 15:43:16");
INSERT INTO order_history VALUES("29","44","1","","1","1","1","2024-08-24 15:47:48");
INSERT INTO order_history VALUES("30","45","1","","1","1","1","2024-08-24 16:01:16");
INSERT INTO order_history VALUES("31","46","1","","1","1","1","2024-08-24 16:07:45");
INSERT INTO order_history VALUES("32","47","1","","1","1","1","2024-08-24 16:10:36");
INSERT INTO order_history VALUES("33","48","1","","1","1","1","2024-10-02 10:08:19");
INSERT INTO order_history VALUES("34","49","1","","1","1","1","2024-10-02 10:10:33");
INSERT INTO order_history VALUES("35","50","1","","1","1","1","2024-10-02 10:13:48");
INSERT INTO order_history VALUES("36","51","1","","1","1","1","2024-10-02 10:24:01");
INSERT INTO order_history VALUES("37","52","1","","1","1","1","2024-10-02 10:24:49");
INSERT INTO order_history VALUES("38","53","1","","1","1","1","2024-10-02 10:45:14");
INSERT INTO order_history VALUES("39","53","3","","1","1","1","2024-10-02 11:13:40");
INSERT INTO order_history VALUES("40","54","1","","1","1","1","2024-10-20 15:55:50");
INSERT INTO order_history VALUES("41","55","1","","1","1","1","2024-10-20 17:13:10");
INSERT INTO order_history VALUES("42","56","1","","1","1","1","2024-12-08 19:09:08");
INSERT INTO order_history VALUES("43","57","1","","1","1","1","2024-12-08 19:09:16");
INSERT INTO order_history VALUES("44","58","1","","1","1","1","2024-12-08 19:09:26");
INSERT INTO order_history VALUES("45","59","1","","1","1","1","2024-12-08 19:16:13");
INSERT INTO order_history VALUES("46","60","1","","1","1","1","2024-12-08 19:16:15");
INSERT INTO order_history VALUES("47","61","1","","1","1","1","2024-12-08 19:17:55");
INSERT INTO order_history VALUES("48","62","1","","1","1","1","2024-12-08 19:19:52");
INSERT INTO order_history VALUES("49","63","1","","1","1","1","2024-12-22 16:02:10");
INSERT INTO order_history VALUES("50","64","1","","1","1","1","2024-12-22 20:05:14");
INSERT INTO order_history VALUES("51","65","1","","1","1","1","2024-12-22 20:09:21");
INSERT INTO order_history VALUES("52","66","1","","1","1","1","2024-12-22 20:10:03");
INSERT INTO order_history VALUES("53","67","1","","1","1","1","2024-12-22 20:10:33");
INSERT INTO order_history VALUES("54","68","1","","1","1","1","2024-12-22 21:12:10");
INSERT INTO order_history VALUES("55","69","1","","1","1","1","2024-12-22 22:14:54");
INSERT INTO order_history VALUES("56","70","1","","1","1","1","2024-12-23 09:56:18");
INSERT INTO order_history VALUES("57","71","1","","1","1","1","2025-01-15 23:00:16");
INSERT INTO order_history VALUES("58","72","1","","1","1","1","2025-01-15 23:00:39");
INSERT INTO order_history VALUES("59","73","1","","1","1","1","2025-01-17 22:26:24");
INSERT INTO order_history VALUES("60","74","1","","1","1","1","2025-01-17 22:28:47");
INSERT INTO order_history VALUES("61","75","1","","1","1","1","2025-01-17 22:54:36");
INSERT INTO order_history VALUES("62","76","1","","1","1","1","2025-01-17 23:00:47");
INSERT INTO order_history VALUES("63","77","1","","1","1","1","2025-01-17 23:01:02");
INSERT INTO order_history VALUES("64","78","1","","1","1","1","2025-01-17 23:04:52");
INSERT INTO order_history VALUES("65","79","1","","1","1","1","2025-01-19 19:48:06");
INSERT INTO order_history VALUES("66","80","1","","1","1","1","2025-01-19 20:42:44");
INSERT INTO order_history VALUES("67","81","1","","1","1","1","2025-01-19 21:03:52");
INSERT INTO order_history VALUES("68","82","1","","1","1","1","2025-01-19 23:01:30");
INSERT INTO order_history VALUES("69","83","1","","1","1","1","2025-01-21 21:24:35");
INSERT INTO order_history VALUES("70","84","1","","1","1","1","2025-01-24 13:02:45");
INSERT INTO order_history VALUES("71","85","1","","1","1","1","2025-01-24 13:11:45");
INSERT INTO order_history VALUES("72","86","1","","1","1","3","2025-01-28 22:25:02");
INSERT INTO order_history VALUES("73","87","1","","1","1","2","2025-01-29 20:57:27");
INSERT INTO order_history VALUES("74","88","1","","1","1","1","2025-01-30 21:26:28");
INSERT INTO order_history VALUES("75","89","1","","1","1","1","2025-02-01 13:13:51");
INSERT INTO order_history VALUES("76","90","1","","1","1","1","2025-02-01 13:18:04");
INSERT INTO order_history VALUES("77","91","1","","1","1","1","2025-02-01 13:18:26");
INSERT INTO order_history VALUES("78","92","1","","1","1","1","2025-02-01 13:18:57");
INSERT INTO order_history VALUES("79","93","1","","1","1","1","2025-02-01 13:19:21");
INSERT INTO order_history VALUES("80","94","1","","1","1","1","2025-02-01 13:35:01");
INSERT INTO order_history VALUES("81","95","1","","1","1","1","2025-02-01 22:39:06");



DROP TABLE IF EXISTS order_hotel_room;

CREATE TABLE `order_hotel_room` (
  `orderHotelRoomId` int(11) NOT NULL AUTO_INCREMENT,
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
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`orderHotelRoomId`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO order_hotel_room VALUES("42","0","102","{\"personName\":[\"Suresh Singh\"],\"personId\":[\"\"]}","20:56","","2025-01-29","","0","{\"productId\":102,\"heading\":\"Hotel Room 1\",\"model\":\"Hotel\",\"barcode\":98321014,\"barcodeType\":\"\",\"cost\":500,\"price\":500,\"percent\":0,\"manufacturerId\":2,\"categoryId\":2,\"vendorId\":0,\"unitId\":0,\"taxId\":0,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":989,\"subtract\":0,\"changePriceDuringBilling\":0,\"image\":\"public\\/assets\\/uploads\\/ship_shop_pos_default\\/693478300.jpeg\",\"relatedImage\":\"[\\\"public\\\\\\/assets\\\\\\/uploads\\\\\\/ship_shop_pos_default\\\\\\/419239602.jpeg\\\"]\",\"showInPos\":1,\"productType\":\"Hotel\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":1,\"dateUpdated\":\"2025-01-28 22:25:02\",\"status\":1,\"dateAdded\":\"2024-07-02 11:43:02\"}","l51OhqtWq6DmJtsGlkxQ17bYfbIo6eHT7uL2egG5m1XP1WLwKR","0","0","1","2025-01-29 20:56:25");
INSERT INTO order_hotel_room VALUES("43","87","102","{\"personName\":[\"\"],\"personId\":[\"\"]}","20:56","","2025-01-29","2025-01-30","0","{\"productId\":102,\"heading\":\"Hotel Room 1\",\"model\":\"Hotel\",\"barcode\":98321014,\"barcodeType\":\"\",\"cost\":500,\"price\":500,\"percent\":0,\"manufacturerId\":2,\"categoryId\":2,\"vendorId\":0,\"unitId\":0,\"taxId\":0,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":989,\"subtract\":0,\"changePriceDuringBilling\":0,\"image\":\"public\\/assets\\/uploads\\/ship_shop_pos_default\\/693478300.jpeg\",\"relatedImage\":\"[\\\"public\\\\\\/assets\\\\\\/uploads\\\\\\/ship_shop_pos_default\\\\\\/419239602.jpeg\\\"]\",\"showInPos\":1,\"productType\":\"Hotel\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":1,\"dateUpdated\":\"2025-01-28 22:25:02\",\"status\":1,\"dateAdded\":\"2024-07-02 11:43:02\"}","7jMueFj9yWV6sxSVRuL4fzwwAHVTrvqawppsK4AL2YfTtDL9tS","1","2","1","2025-01-29 20:57:17");
INSERT INTO order_hotel_room VALUES("44","88","103","{\"personName\":[\"\"],\"personId\":[\"\"]}","20:58","21:29","2025-01-30","2025-01-30","1","{\"productId\":103,\"heading\":\"Hotel Room 2\",\"model\":\"Hotel\",\"barcode\":98321014,\"barcodeType\":\"\",\"cost\":500,\"price\":500,\"percent\":0,\"manufacturerId\":2,\"categoryId\":2,\"vendorId\":0,\"unitId\":0,\"taxId\":0,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":992,\"subtract\":0,\"changePriceDuringBilling\":0,\"image\":\"public\\/assets\\/uploads\\/ship_shop_pos_default\\/693478300.jpeg\",\"relatedImage\":\"[\\\"public\\\\\\/assets\\\\\\/uploads\\\\\\/ship_shop_pos_default\\\\\\/419239602.jpeg\\\"]\",\"showInPos\":1,\"productType\":\"Hotel\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":1,\"dateUpdated\":\"2025-01-24 13:11:45\",\"status\":1,\"dateAdded\":\"2024-07-02 11:43:02\"}","ZLcCvmCXEVKGheSyT83MIgSKWDZXpnATAyt7ADjLHPlYPbfKr8","1","1","1","2025-01-30 21:20:52");
INSERT INTO order_hotel_room VALUES("45","0","102","{\"personName\":[\"Surersh\"],\"personId\":[\"\"]}","13:11","","2025-02-01","","0","{\"productId\":102,\"heading\":\"Hotel Room 1\",\"model\":\"Hotel\",\"barcode\":98321014,\"barcodeType\":\"\",\"cost\":500,\"price\":500,\"percent\":0,\"manufacturerId\":2,\"categoryId\":2,\"vendorId\":0,\"unitId\":0,\"taxId\":0,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":988,\"subtract\":0,\"changePriceDuringBilling\":0,\"image\":\"public\\/assets\\/uploads\\/ship_shop_pos_default\\/693478300.jpeg\",\"relatedImage\":\"[\\\"public\\\\\\/assets\\\\\\/uploads\\\\\\/ship_shop_pos_default\\\\\\/419239602.jpeg\\\"]\",\"showInPos\":1,\"productType\":\"Hotel\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":1,\"dateUpdated\":\"2025-01-29 20:57:27\",\"status\":1,\"dateAdded\":\"2024-07-02 11:43:02\"}","jHeTIsh6ynDGRYMDbmGg5WEUjjg6PQKpaZUSAUk69gZVZqvsbP","0","0","1","2025-02-01 13:11:59");
INSERT INTO order_hotel_room VALUES("46","89","102","{\"personName\":[\"Surersh\"],\"personId\":[\"\"]}","13:11","","2025-02-01","","0","{\"productId\":102,\"heading\":\"Hotel Room 1\",\"model\":\"Hotel\",\"barcode\":98321014,\"barcodeType\":\"\",\"cost\":500,\"price\":500,\"percent\":0,\"manufacturerId\":2,\"categoryId\":2,\"vendorId\":0,\"unitId\":0,\"taxId\":0,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":988,\"subtract\":0,\"changePriceDuringBilling\":0,\"image\":\"public\\/assets\\/uploads\\/ship_shop_pos_default\\/693478300.jpeg\",\"relatedImage\":\"[\\\"public\\\\\\/assets\\\\\\/uploads\\\\\\/ship_shop_pos_default\\\\\\/419239602.jpeg\\\"]\",\"showInPos\":1,\"productType\":\"Hotel\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":1,\"dateUpdated\":\"2025-01-29 20:57:27\",\"status\":1,\"dateAdded\":\"2024-07-02 11:43:02\"}","AB7w7cO5F5T6DrkXeSQbGZGSf3x1bL9Pwyxn50gNSm0iMowOJD","1","1","1","2025-02-01 13:12:29");
INSERT INTO order_hotel_room VALUES("47","0","103","{\"personName\":[\"Yogi\"],\"personId\":[\"\"]}","13:15","","2025-02-01","","0","{\"productId\":103,\"heading\":\"Hotel Room 2\",\"model\":\"Hotel\",\"barcode\":98321014,\"barcodeType\":\"\",\"cost\":500,\"price\":500,\"percent\":0,\"manufacturerId\":2,\"categoryId\":2,\"vendorId\":0,\"unitId\":0,\"taxId\":0,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":991,\"subtract\":0,\"changePriceDuringBilling\":0,\"image\":\"public\\/assets\\/uploads\\/ship_shop_pos_default\\/693478300.jpeg\",\"relatedImage\":\"[\\\"public\\\\\\/assets\\\\\\/uploads\\\\\\/ship_shop_pos_default\\\\\\/419239602.jpeg\\\"]\",\"showInPos\":1,\"productType\":\"Hotel\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":1,\"dateUpdated\":\"2025-01-30 21:27:08\",\"status\":1,\"dateAdded\":\"2024-07-02 11:43:02\"}","KritjzqdddQAq0JamWArhy1cxMSdM9OcWf6Cr5dn3cOwfDPXb7","0","0","1","2025-02-01 13:15:57");
INSERT INTO order_hotel_room VALUES("48","90","0","","13:17","","2025-02-01","","0","{\"productId\":103,\"heading\":\"Hotel Room 2\",\"model\":\"Hotel\",\"barcode\":98321014,\"barcodeType\":\"\",\"cost\":500,\"price\":500,\"percent\":0,\"manufacturerId\":2,\"categoryId\":2,\"vendorId\":0,\"unitId\":0,\"taxId\":0,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":991,\"subtract\":0,\"changePriceDuringBilling\":0,\"image\":\"public\\/assets\\/uploads\\/ship_shop_pos_default\\/693478300.jpeg\",\"relatedImage\":\"[\\\"public\\\\\\/assets\\\\\\/uploads\\\\\\/ship_shop_pos_default\\\\\\/419239602.jpeg\\\"]\",\"showInPos\":1,\"productType\":\"Hotel\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":1,\"dateUpdated\":\"2025-01-30 21:27:08\",\"status\":1,\"dateAdded\":\"2024-07-02 11:43:02\"}","5KzVm55DZeygr9X2rKWGQNd6nqydfJ7d9mklnBXvCBKkJflt5v","1","1","1","2025-02-01 13:17:14");
INSERT INTO order_hotel_room VALUES("49","0","103","{\"personName\":[\"Lalit\"],\"personId\":[\"\"]}","13:24","","2025-02-01","","0","{\"productId\":103,\"heading\":\"Hotel Room 2\",\"model\":\"Hotel\",\"barcode\":98321014,\"barcodeType\":\"\",\"cost\":500,\"price\":500,\"percent\":0,\"manufacturerId\":2,\"categoryId\":2,\"vendorId\":0,\"unitId\":0,\"taxId\":0,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":990,\"subtract\":0,\"changePriceDuringBilling\":0,\"image\":\"public\\/assets\\/uploads\\/ship_shop_pos_default\\/693478300.jpeg\",\"relatedImage\":\"[\\\"public\\\\\\/assets\\\\\\/uploads\\\\\\/ship_shop_pos_default\\\\\\/419239602.jpeg\\\"]\",\"showInPos\":1,\"productType\":\"Hotel\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":1,\"dateUpdated\":\"2025-02-01 13:18:04\",\"status\":1,\"dateAdded\":\"2024-07-02 11:43:02\"}","OzcC60ywbkp2X0VthQQYkx5vEUME6C5pYj07uXVFizK3SYQ9JN","0","0","1","2025-02-01 13:27:26");
INSERT INTO order_hotel_room VALUES("50","0","103","{\"personName\":[\"ay\"],\"personId\":[\"\"]}","22:37","","2025-02-01","","0","{\"productId\":103,\"heading\":\"Hotel Room 2\",\"model\":\"Hotel\",\"barcode\":98321014,\"barcodeType\":\"\",\"cost\":500,\"price\":500,\"percent\":0,\"manufacturerId\":2,\"categoryId\":2,\"vendorId\":0,\"unitId\":0,\"taxId\":0,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":990,\"subtract\":0,\"changePriceDuringBilling\":0,\"image\":\"public\\/assets\\/uploads\\/ship_shop_pos_default\\/693478300.jpeg\",\"relatedImage\":\"[\\\"public\\\\\\/assets\\\\\\/uploads\\\\\\/ship_shop_pos_default\\\\\\/419239602.jpeg\\\"]\",\"showInPos\":1,\"productType\":\"Hotel\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":1,\"dateUpdated\":\"2025-02-01 13:18:04\",\"status\":1,\"dateAdded\":\"2024-07-02 11:43:02\"}","7xULU39r4A7v2GSKYjWe2EjVI9eJTxVRCwfLlq4sFLz5e1E2Wh","0","0","1","2025-02-01 22:38:18");
INSERT INTO order_hotel_room VALUES("51","95","103","{\"personName\":[\"\"],\"personId\":[\"\"]}","22:37","22:40","2025-02-01","2025-02-01","1","{\"productId\":103,\"heading\":\"Hotel Room 2\",\"model\":\"Hotel\",\"barcode\":98321014,\"barcodeType\":\"\",\"cost\":500,\"price\":500,\"percent\":0,\"manufacturerId\":2,\"categoryId\":2,\"vendorId\":0,\"unitId\":0,\"taxId\":0,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":990,\"subtract\":0,\"changePriceDuringBilling\":0,\"image\":\"public\\/assets\\/uploads\\/ship_shop_pos_default\\/693478300.jpeg\",\"relatedImage\":\"[\\\"public\\\\\\/assets\\\\\\/uploads\\\\\\/ship_shop_pos_default\\\\\\/419239602.jpeg\\\"]\",\"showInPos\":1,\"productType\":\"Hotel\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":1,\"dateUpdated\":\"2025-02-01 13:18:04\",\"status\":1,\"dateAdded\":\"2024-07-02 11:43:02\"}","4KJ2Z6Lqd9rxISqnFfUwkEcr58HwyUNziskWmeagF7L547N5gy","1","1","1","2025-02-01 22:38:31");
INSERT INTO order_hotel_room VALUES("52","0","103","{\"personName\":[\"suresh\"],\"personId\":[\"\"]}","22:27","","2025-02-05","","0","{\"productId\":103,\"heading\":\"Hotel Room 2\",\"model\":\"Hotel\",\"barcode\":98321014,\"barcodeType\":\"\",\"cost\":500,\"price\":500,\"percent\":0,\"manufacturerId\":2,\"categoryId\":2,\"vendorId\":0,\"unitId\":0,\"taxId\":0,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":989,\"subtract\":0,\"changePriceDuringBilling\":0,\"image\":\"public\\/assets\\/uploads\\/ship_shop_pos_default\\/693478300.jpeg\",\"relatedImage\":\"[\\\"public\\\\\\/assets\\\\\\/uploads\\\\\\/ship_shop_pos_default\\\\\\/419239602.jpeg\\\"]\",\"showInPos\":1,\"productType\":\"Hotel\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":1,\"dateUpdated\":\"2025-02-01 22:41:26\",\"status\":1,\"dateAdded\":\"2024-07-02 11:43:02\"}","XjIQBXeEK8rD10B7N4PFSR6CNQxKsZaChkqK7ZJ64B15KDPPoJ","0","0","1","2025-02-05 22:27:59");
INSERT INTO order_hotel_room VALUES("53","0","103","{\"personName\":[\"suresh\"],\"personId\":[\"\"]}","22:27","","2025-02-05","","0","{\"productId\":103,\"heading\":\"Hotel Room 2\",\"model\":\"Hotel\",\"barcode\":98321014,\"barcodeType\":\"\",\"cost\":500,\"price\":500,\"percent\":0,\"manufacturerId\":2,\"categoryId\":2,\"vendorId\":0,\"unitId\":0,\"taxId\":0,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":989,\"subtract\":0,\"changePriceDuringBilling\":0,\"image\":\"public\\/assets\\/uploads\\/ship_shop_pos_default\\/693478300.jpeg\",\"relatedImage\":\"[\\\"public\\\\\\/assets\\\\\\/uploads\\\\\\/ship_shop_pos_default\\\\\\/419239602.jpeg\\\"]\",\"showInPos\":1,\"productType\":\"Hotel\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":1,\"dateUpdated\":\"2025-02-01 22:41:26\",\"status\":1,\"dateAdded\":\"2024-07-02 11:43:02\"}","hcUAu4iiDpyukJyZLjvPZzMHeDWm4i5eKSKDrXOj1xfGiM3IsI","1","1","1","2025-02-05 22:28:24");



DROP TABLE IF EXISTS order_product;

CREATE TABLE `order_product` (
  `orderProductId` int(11) NOT NULL AUTO_INCREMENT,
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
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`orderProductId`)
) ENGINE=InnoDB AUTO_INCREMENT=220 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO order_product VALUES("186","87","102","Hotel Room 1","Hotel","98321014","","0","","Exclusive","0","0","1","0","0","50","500","500","0.00","500","","0","","1","2","0","2","2025-01-29 20:57:28","2025-01-29 20:57:28","Zcwn4Q2DCYEdnZKiPC8k2smDpGtf1e20k8MOsTgqEYUU2FEBhXSTgbMU2Ay50lmF5gk8o6T4dFPPyKS8IEXkoQ7saknpfWT6arEZRAeqxVzMB3JxDqCMBKcOdLHMKHeUfi4vcMuNIUlQrQO4ittmnMSiC51x0AYj6lMooAN6sQP4lPTssmwo333hcNs5mmx9DePFtKNK3TQGcc8MnS5XiaHUrkhZt8UK5YRu2898E4Of9ILZDT1Wql7ZcSSICsW","1","0","0","0.00","0.00","0.00","-500.00","0","1");
INSERT INTO order_product VALUES("188","88","103","Hotel Room 2","Hotel","98321014","","0","","Exclusive","0","0","1","0","0","50","500","500","0.00","500","","0","","1","1","0","1","2025-01-30 21:27:08","2025-01-30 21:27:08","gpFJNi3sNKfOQUTmyWHZInz1j9mtQRpTkOslGGAGnUfj7RRreYizy3nWSdUT8jmfYDxM7N160Q8SDQPgP9Exg8O3eUQDrwy2lZdl3TPQ6r2pHUfrufl8FjFTNqYD6kDJt86vXDrrpUugd9qlvi619JlsnN4mpx4RPuhia7katTUyhFE5gjDzd00bE04Brgm3yWSx6d8rGmoz9lXIMbJjLSRf4ZFP2mFjy5KS0hVqUd1PN03u4WAf404KmpHDML0","1","0","0","0.00","0.00","0.00","-500.00","0","1");
INSERT INTO order_product VALUES("189","89","102","Hotel Room 1","Hotel","98321014","","0","","Exclusive","0","0","1","0","0","50","500","500","0.00","500","","0","","1","1","0","1","2025-02-01 13:13:52","2025-02-01 13:13:52","NLOzfeIm3BMQUje7quGaHaLRFsC43cVMuDBEP72wXL0YxGMZ3iUo5UT5KPmUoS4qaMOhLcsUscMC2TKdhTMOyeRBIXSKXDmZPxhds6Ibo2lJ0vxbg8xCjALViAYlPngfVzGLtRDf7nsEBQbPkb0BuzRnBaTshjt35Gd40ohAut4218CKWMlfE4UvYVBZBLbecW0uJmQMXoY5H9IcjCrqDCppIz4KXOqrUxjOVvNlqPCt69dCsiRhyKhWadMiUy3","1","0","0","0.00","0.00","0.00","-500.00","0","1");
INSERT INTO order_product VALUES("190","90","103","Hotel Room 2","Hotel","98321014","","0","","Exclusive","0","0","1","0","0","50","500","500","0.00","500","","0","","1","1","0","1","2025-02-01 13:18:06","2025-02-01 13:18:06","eIFIxOPvAXFnxWtqFC8VJWcLHSCKuaf2mmMhybZqvhCMtzdvJGqdcAW0vETaal9byr5gPt52WNz8Id6o6NgrMNbr43k7Z2jYDLZ4E6bAYsJXDnDeG0zM7f3w5ZFbfFV3iNNsNhKZt44qdf1ueQovxJ5f0RwkDFaKK6T9fWaw9HEEnw1jEzFTh1CQObVCJFf4YQEcFtFx89jBImXDWa3MDCJ0ZtlDKyhPQ6ElAkwTqyH4inlfrMxlmoHwCoHMRbs","0","0","0","0.00","0.00","0.00","-500.00","0","1");
INSERT INTO order_product VALUES("191","90","220","Mrs. Vanessa Berge I","i1TWGLB2cl","22117112","","2","GST 5%","Exclusive","5","3458.7","1","0","0","6917","34587","69174","0.00","69174","","0","","1","1","0","1","2025-02-01 13:18:06","2025-02-01 13:18:06","eIFIxOPvAXFnxWtqFC8VJWcLHSCKuaf2mmMhybZqvhCMtzdvJGqdcAW0vETaal9byr5gPt52WNz8Id6o6NgrMNbr43k7Z2jYDLZ4E6bAYsJXDnDeG0zM7f3w5ZFbfFV3iNNsNhKZt44qdf1ueQovxJ5f0RwkDFaKK6T9fWaw9HEEnw1jEzFTh1CQObVCJFf4YQEcFtFx89jBImXDWa3MDCJ0ZtlDKyhPQ6ElAkwTqyH4inlfrMxlmoHwCoHMRbs","0","0","0","0.00","3458.70","69174.00","34587.00","0","1");
INSERT INTO order_product VALUES("192","90","219","Oceane Nicolas","mzllEDdug4","99920598","","1","CGST 2.5%","Exclusive","2.5","4818.6","1","0","0","19274","96372","192744","0.00","192744","","0","","1","1","0","1","2025-02-01 13:18:06","2025-02-01 13:18:06","eIFIxOPvAXFnxWtqFC8VJWcLHSCKuaf2mmMhybZqvhCMtzdvJGqdcAW0vETaal9byr5gPt52WNz8Id6o6NgrMNbr43k7Z2jYDLZ4E6bAYsJXDnDeG0zM7f3w5ZFbfFV3iNNsNhKZt44qdf1ueQovxJ5f0RwkDFaKK6T9fWaw9HEEnw1jEzFTh1CQObVCJFf4YQEcFtFx89jBImXDWa3MDCJ0ZtlDKyhPQ6ElAkwTqyH4inlfrMxlmoHwCoHMRbs","0","0","0","0.00","4818.60","192744.00","96372.00","0","1");
INSERT INTO order_product VALUES("194","92","220","Mrs. Vanessa Berge I","i1TWGLB2cl","22117112","","2","GST 5%","Exclusive","5","3458.7","1","0","0","6917","34587","69174","0.00","69174","","0","","1","1","0","1","2025-02-01 13:18:58","2025-02-01 13:18:58","XernyHWi1ec0BSHJuSSaeMs4JU2bzPpLMN7q2YBIt9vkxSOR7NqnPrI1QjEMhgdz63wsMR1OwKj4EzT48zZoepn6KoecF5CEuu82dJzGwgsvNWqsLJuyds1oS0GH7mO10DjilTcFgq4Bf8j2iBF9f7nOv1XdKUFlW7RB16UlBrx2gt1cZrYriuMTy6Xsdi8ONAyu6p43WnQj2ywwuL6Z2myHKt3Igc7oRHliCBpyDIR0eSl42aIB8VEI2lki7eG","1","0","0","0.00","3458.70","69174.00","34587.00","0","1");
INSERT INTO order_product VALUES("195","93","216","Ms. Maximillia Schulist","b3UGA8kegx","96288245","","2","GST 5%","Exclusive","5","9045.3","1","0","0","18091","90453","180906","0.00","180906","","0","","1","1","0","1","2025-02-01 13:19:22","2025-02-01 13:19:22","GZlxr7SsbNAMwXKJ22xhifwqNYZs6LqkgECnQv1mtoRhESS5JV1hjK7L2cQyAhtQxWmhm8OUFVthYYMQ4PzeNYgiMw2GhhiSxRkaI72TpI1TL8nGzHOnwSR8De59C4sjpUCFxa3wWSgUYxpdtgu4j8T3ADUS43OJd76bBYpfc8mfzdGmcnnH0G1XRpYCs0XxzxDZmzeks3icx06WxK0BK1u7f9t2cuR2WQdqunAJesWGQx3EhCwZIVK8BKtuY9n","0","0","0","0.00","9045.30","180906.00","90453.00","0","1");
INSERT INTO order_product VALUES("206","94","216","Ms. Maximillia Schulist","b3UGA8kegx","96288245","","2","GST 5%","Exclusive","5","9045.3","1","0","0","18091","90453","180906","0.00","180906","","0","","1","1","0","1","2025-02-01 22:36:17","2025-02-01 22:36:17","aSwe7rC3Nr53bc6Dm5yqupCgwUx5GASGh9NAxp3liHaidDx7dPMN9QkNOySxgRrvP2M4skYWbEboPwY4C96sckl4OejM21CmR75tYUCPZ8JWUkRkt0oeerkTwTdva5MrqZtL8kkxYxiLkXXa91ODgikoUWOOupnwTtk58evTfrBrysW0lHS3IIqgktxAPiO0e1xd6lUM65MIGVzCPwlDKreBlhii3L2VfM3UDNecdmkqRsvDc25y4fYIwDJ6P86","1","0","0","0.00","9045.30","180906.00","90453.00","0","1");
INSERT INTO order_product VALUES("207","94","215","Sterling Jast DVM","nxm8dhg4a7","87033348","","5","GST 28%","Exclusive","28","23210.88","1","0","0","8290","41448","82896","0.00","82896","","0","","1","1","0","1","2025-02-01 22:36:17","2025-02-01 22:36:17","aSwe7rC3Nr53bc6Dm5yqupCgwUx5GASGh9NAxp3liHaidDx7dPMN9QkNOySxgRrvP2M4skYWbEboPwY4C96sckl4OejM21CmR75tYUCPZ8JWUkRkt0oeerkTwTdva5MrqZtL8kkxYxiLkXXa91ODgikoUWOOupnwTtk58evTfrBrysW0lHS3IIqgktxAPiO0e1xd6lUM65MIGVzCPwlDKreBlhii3L2VfM3UDNecdmkqRsvDc25y4fYIwDJ6P86","1","0","0","0.00","23210.88","82896.00","41448.00","0","1");
INSERT INTO order_product VALUES("208","94","212","Gay Fay","3q1nI6m7tj","52134951","","1","CGST 2.5%","Exclusive","2.5","2647.1","1","0","0","10588","52942","105884","0.00","105884","","0","","1","1","0","1","2025-02-01 22:36:18","2025-02-01 22:36:18","rtT4z34rqlw6bvKehVLY0bff3yOQ42K0MO91bJa7wU7B6nWuw0PYdezvKrwO3Nv42fc5V61sQLXPjNmvQSIHckXJcl2cdydGymT8JFPuwi7sQjQC5BN3jmDJ9cbXxej4tJ3bM2Vu8c8TgHR9bDcd3EgSnfBJdK7ScSZRnMsnI1W7E3nsueaTOjJWs0MchkdGbhJ4PqvdHjT7ErY6HbojaLAtuBBxs5J6luqBdM5NFXkFVF4BvKBQF1RKcsSZ78w","1","0","0","0.00","2647.10","105884.00","52942.00","0","1");
INSERT INTO order_product VALUES("209","94","203","Katharina Dickens","3MeN2frILy","17861458","","5","GST 28%","Exclusive","28","24027.92","1","0","0","8581","42907","85814","0.00","85814","","0","","1","1","0","1","2025-02-01 22:36:18","2025-02-01 22:36:18","FX9xJ1uikwCntXZrP7ql6ti6VKyyarKLrglii9chsh0iUUWYwZLIZJ9oE1fY0GYbzvjU5llOXZo0H8KcILITHcsDCoHHDrYU4nCOqJEFpbBHWvWhx2TdEcs87MIShYtePQpspV42G7TxqIt9En6o1WLdBhGKWRQwvRBhyJ7NgLDqHlcMAljHMaiennwfXidbqZLZ7an3cZQHtDiFqRtXVu932Y3Y31rZsnb6OPKNu8cyWwFpf0Wd2iMSPW0HHmv","1","0","0","0.00","24027.92","85814.00","42907.00","0","1");
INSERT INTO order_product VALUES("210","94","200","Dr. Howell Hegmann MD","yBW7ZvPKdd","29893416","","2","GST 5%","Exclusive","5","9045.8","1","0","0","18092","90458","180916","0.00","180916","","0","","1","1","0","1","2025-02-01 22:36:18","2025-02-01 22:36:18","FX9xJ1uikwCntXZrP7ql6ti6VKyyarKLrglii9chsh0iUUWYwZLIZJ9oE1fY0GYbzvjU5llOXZo0H8KcILITHcsDCoHHDrYU4nCOqJEFpbBHWvWhx2TdEcs87MIShYtePQpspV42G7TxqIt9En6o1WLdBhGKWRQwvRBhyJ7NgLDqHlcMAljHMaiennwfXidbqZLZ7an3cZQHtDiFqRtXVu932Y3Y31rZsnb6OPKNu8cyWwFpf0Wd2iMSPW0HHmv","1","0","0","0.00","9045.80","180916.00","90458.00","0","1");
INSERT INTO order_product VALUES("211","91","219","Oceane Nicolas","mzllEDdug4","99920598","","1","CGST 2.5%","Exclusive","2.5","4818.6","1","0","0","19274","96372","192744","0.00","192744","","0","","1","1","0","1","2025-02-01 22:37:15","2025-02-01 22:37:15","7lmTKl5JEFN9rbU8fFxryAUa9Jfe54CtUrdQMmpIndSs0Q4UxEesmOUWqZ2fQftXjZwTuSxCmo7Ub9mcKG71oIFdgjCAMUzxhKQD7xNe5R15YQ7xawedjz4xUDMULwt3zwH3gdfxsvpprzGZ0BucCAosOwGcMxCozJymPoXYKyldAXJm2JzAI0nPabKGAtROL4gia2IfLbG8TBPmqwi7Il4gaJ4ybTNqxqOCuZxmZfTTCaFSHwgOv93kwAuynaS","1","0","0","0.00","4818.60","192744.00","96372.00","0","1");
INSERT INTO order_product VALUES("212","91","215","Sterling Jast DVM","nxm8dhg4a7","87033348","","5","GST 28%","Exclusive","28","23210.88","1","0","0","8290","41448","82896","0.00","82896","","0","","1","1","0","1","2025-02-01 22:37:15","2025-02-01 22:37:15","uPljgitT1xa5WjjNCjD8mZqBJX4JMv7EuHZDWG4MmK8mKVWshahMDjtxDl7kVH1nfP0dCLeaNv7D3U1li9sQXUV2qT8fyph8gdZs8OgJU1tR1xu8Oo7YWxyGNp52XamgH50rq5QgirJg9meWfzmmBpX8JjEbY2iwVdUlPOFIPDVjk1IrRuYCVIfzLdDWvMl69JwpviNSjgrJIwBHIURJrV2qr7rlvrbnYVmo3q7ayEY7en38aoN6YTfJiCr5uvI","1","0","0","0.00","23210.88","82896.00","41448.00","0","1");
INSERT INTO order_product VALUES("217","95","103","Hotel Room 2","Hotel","98321014","","0","","Exclusive","0","0","1","0","0","50","500","500","0.00","500","","0","","1","1","0","1","2025-02-01 22:41:27","2025-02-01 22:41:27","0hLAdTa0xxYhr4maMI3LjBB5u7naw8xLSkwYVP2fZ6FNWUFA70u8F1akZQcTLGDl5oKnqSAhrjCfzzRpiwNqxGcDlnNdt9sUDe6FKq075o94ndCnvJaNSbiBABnjUcdIK4G0kuWqy1iXJhHXiBzHrujLvBDuCnXjq7uNBqiPBkSIUElux3UOFO2FLR7h0ZKTre8QlqjFnsjytLu0D4rjnyWKmrpND3MIoiuybbUDhMLd0VFczbTKNC8go359vvm","1","0","0","0.00","0.00","0.00","-500.00","0","1");
INSERT INTO order_product VALUES("218","95","215","Sterling Jast DVM","nxm8dhg4a7","87033348","","5","GST 28%","Exclusive","28","23210.88","1","0","0","8290","41448","82896","0.00","82896","","0","","1","1","0","1","2025-02-01 22:41:27","2025-02-01 22:41:27","5DRlJLRHsKxyn5inofUL39syYpGfJceuIkEUpxUjJ0HQYlqyQdDNoQO2sG69BQ8ueyIfbRobaynRtkeJJcXWWEKhYOl6KhUrPoXSvUJI0pJRNn69iT769w8bV5Tli2yzUuOln9pzWueO58gjxoX40WY3LULSvCUSfPAELB1AfdGmcNNVM4Aob3BaNIVlkRQ0EzUVSaIKPyrbfM68fZkKgg92tNs7JOLDs3IkUr7ONXCosHZ3A0BlZvVvd4FpkXB","1","0","0","0.00","23210.88","82896.00","41448.00","0","1");
INSERT INTO order_product VALUES("219","95","212","Gay Fay","3q1nI6m7tj","52134951","","1","CGST 2.5%","Exclusive","2.5","2647.1","1","0","0","10588","52942","105884","0.00","105884","","0","","1","1","0","1","2025-02-01 22:41:27","2025-02-01 22:41:27","5DRlJLRHsKxyn5inofUL39syYpGfJceuIkEUpxUjJ0HQYlqyQdDNoQO2sG69BQ8ueyIfbRobaynRtkeJJcXWWEKhYOl6KhUrPoXSvUJI0pJRNn69iT769w8bV5Tli2yzUuOln9pzWueO58gjxoX40WY3LULSvCUSfPAELB1AfdGmcNNVM4Aob3BaNIVlkRQ0EzUVSaIKPyrbfM68fZkKgg92tNs7JOLDs3IkUr7ONXCosHZ3A0BlZvVvd4FpkXB","1","0","0","0.00","2647.10","105884.00","52942.00","0","1");



DROP TABLE IF EXISTS order_status;

CREATE TABLE `order_status` (
  `orderStatusId` int(11) NOT NULL AUTO_INCREMENT,
  `heading` varchar(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
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
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`orderTotalId`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO order_total VALUES("1","1","{\"totalItemsInCart\":0,\"totalQuantityInCart\":0,\"roomRent\":0,\"subTotal\":100,\"tax\":0,\"productDiscount\":0,\"rewardEarned\":0,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":100}","1");
INSERT INTO order_total VALUES("2","2","{\"totalItemsInCart\":0,\"totalQuantityInCart\":0,\"roomRent\":0,\"subTotal\":200,\"tax\":0,\"productDiscount\":0,\"rewardEarned\":0,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":200}","1");
INSERT INTO order_total VALUES("3","3","{\"totalItemsInCart\":0,\"totalQuantityInCart\":0,\"roomRent\":400,\"subTotal\":400,\"tax\":0,\"productDiscount\":0,\"rewardEarned\":0,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":400}","1");
INSERT INTO order_total VALUES("4","4","{\"totalItemsInCart\":1,\"totalQuantityInCart\":1,\"roomRent\":0,\"subTotal\":57848,\"tax\":12654.25,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":5785,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":70502}","1");
INSERT INTO order_total VALUES("5","5","{\"totalItemsInCart\":1,\"totalQuantityInCart\":1,\"roomRent\":0,\"subTotal\":64562,\"tax\":3228.1000000000004,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":6456,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":67790}","1");
INSERT INTO order_total VALUES("6","6","{\"totalItemsInCart\":1,\"totalQuantityInCart\":1,\"roomRent\":0,\"subTotal\":184372,\"tax\":33186.96,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":18437,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":217559}","1");
INSERT INTO order_total VALUES("7","7","{\"totalItemsInCart\":2,\"totalQuantityInCart\":2,\"roomRent\":0,\"subTotal\":333982,\"tax\":37675.26,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":33398,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":371657}","1");
INSERT INTO order_total VALUES("8","8","{\"totalItemsInCart\":1,\"totalQuantityInCart\":1,\"roomRent\":600,\"subTotal\":150210,\"tax\":4488.3,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":14961,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":154698}","1");
INSERT INTO order_total VALUES("9","9","{\"totalItemsInCart\":4,\"totalQuantityInCart\":6,\"roomRent\":0,\"subTotal\":879716,\"tax\":85938.12000000001,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":87971,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":965654}","1");
INSERT INTO order_total VALUES("10","10","{\"totalItemsInCart\":2,\"totalQuantityInCart\":3,\"roomRent\":0,\"subTotal\":426592,\"tax\":79028.17,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":42659,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":505620}","1");
INSERT INTO order_total VALUES("11","11","{\"totalItemsInCart\":2,\"totalQuantityInCart\":2,\"roomRent\":500,\"subTotal\":207958,\"tax\":17142.55,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":20746,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":225101}","1");
INSERT INTO order_total VALUES("12","12","{\"totalItemsInCart\":1,\"totalQuantityInCart\":1,\"roomRent\":0,\"subTotal\":500,\"tax\":0,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":50,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":500}","1");
INSERT INTO order_total VALUES("13","13","{\"totalItemsInCart\":1,\"totalQuantityInCart\":1,\"roomRent\":0,\"subTotal\":500,\"tax\":0,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":50,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":500}","1");
INSERT INTO order_total VALUES("14","14","{\"totalItemsInCart\":3,\"totalQuantityInCart\":3,\"roomRent\":0,\"subTotal\":211958,\"tax\":17142.55,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":21196,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":229101}","1");
INSERT INTO order_total VALUES("15","15","{\"totalItemsInCart\":1,\"totalQuantityInCart\":1,\"roomRent\":0,\"subTotal\":184372,\"tax\":33186.96,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":18437,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":217559}","1");
INSERT INTO order_total VALUES("16","16","{\"totalItemsInCart\":5,\"totalQuantityInCart\":6,\"roomRent\":0,\"subTotal\":880388,\"tax\":119135.25,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":88039,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":999523}","1");
INSERT INTO order_total VALUES("17","17","{\"totalItemsInCart\":9,\"totalQuantityInCart\":9,\"roomRent\":0,\"subTotal\":1142664,\"tax\":137904.14999999997,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":114267,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":1280568}","1");
INSERT INTO order_total VALUES("18","18","{\"totalItemsInCart\":2,\"totalQuantityInCart\":2,\"roomRent\":0,\"subTotal\":242220,\"tax\":45841.21,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":24222,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":288061}","1");
INSERT INTO order_total VALUES("19","19","{\"totalItemsInCart\":2,\"totalQuantityInCart\":2,\"roomRent\":0,\"subTotal\":242220,\"tax\":45841.21,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":24222,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":288061}","1");
INSERT INTO order_total VALUES("20","20","{\"totalItemsInCart\":1,\"totalQuantityInCart\":1,\"roomRent\":0,\"subTotal\":57848,\"tax\":12654.25,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":5785,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":70502}","1");
INSERT INTO order_total VALUES("21","21","{\"totalItemsInCart\":3,\"totalQuantityInCart\":3,\"roomRent\":0,\"subTotal\":306782,\"tax\":49069.31,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":30678,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":355851}","1");
INSERT INTO order_total VALUES("22","22","{\"totalItemsInCart\":1,\"totalQuantityInCart\":1,\"roomRent\":0,\"subTotal\":57848,\"tax\":12654.25,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":5785,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":70502}","1");
INSERT INTO order_total VALUES("23","23","{\"totalItemsInCart\":2,\"totalQuantityInCart\":4,\"roomRent\":0,\"subTotal\":484440,\"tax\":91682.42,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":48444,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":576122}","1");
INSERT INTO order_total VALUES("24","24","{\"totalItemsInCart\":2,\"totalQuantityInCart\":2,\"roomRent\":0,\"subTotal\":242220,\"tax\":45841.21,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":24222,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":288061}","1");
INSERT INTO order_total VALUES("25","25","{\"totalItemsInCart\":2,\"totalQuantityInCart\":2,\"roomRent\":0,\"subTotal\":242220,\"tax\":45841.21,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":24222,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":288061}","1");
INSERT INTO order_total VALUES("26","26","{\"totalItemsInCart\":2,\"totalQuantityInCart\":2,\"roomRent\":0,\"subTotal\":242220,\"tax\":45841.21,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":24222,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":288061}","1");
INSERT INTO order_total VALUES("27","27","{\"totalItemsInCart\":2,\"totalQuantityInCart\":2,\"roomRent\":0,\"subTotal\":58348,\"tax\":16197.440000000002,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":5835,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":74545}","1");
INSERT INTO order_total VALUES("28","28","{\"totalItemsInCart\":1,\"totalQuantityInCart\":2,\"roomRent\":0,\"subTotal\":1000,\"tax\":0,\"productDiscount\":100,\"additionalCharges\":\"[]\",\"rewardEarned\":0,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":900}","1");
INSERT INTO order_total VALUES("29","29","{\"totalItemsInCart\":1,\"totalQuantityInCart\":1,\"roomRent\":0,\"subTotal\":57848,\"tax\":16197.440000000002,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":0,\"rewardUsed\":0,\"globalDiscount\":\"{\\\"discount\\\":\\\"10%\\\",\\\"discountValue\\\":5784.8}\",\"total\":68261}","1");
INSERT INTO order_total VALUES("30","30","{\"totalItemsInCart\":4,\"totalQuantityInCart\":4,\"roomRent\":0,\"subTotal\":7,\"tax\":0,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":0,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":7}","1");
INSERT INTO order_total VALUES("31","31","{\"totalItemsInCart\":2,\"totalQuantityInCart\":2,\"roomRent\":0,\"subTotal\":57851,\"tax\":16197.440000000002,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":5785,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":74048}","1");
INSERT INTO order_total VALUES("32","32","{\"totalItemsInCart\":1,\"totalQuantityInCart\":1,\"roomRent\":0,\"subTotal\":3,\"tax\":0,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":0,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":3}","1");
INSERT INTO order_total VALUES("33","33","{\"totalItemsInCart\":1,\"totalQuantityInCart\":1,\"roomRent\":0,\"subTotal\":57848,\"tax\":16197.440000000002,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":5785,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":74045}","1");
INSERT INTO order_total VALUES("34","34","{\"totalItemsInCart\":3,\"totalQuantityInCart\":3,\"roomRent\":0,\"subTotal\":4,\"tax\":0,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":0,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":4}","1");
INSERT INTO order_total VALUES("35","35","{\"totalItemsInCart\":1,\"totalQuantityInCart\":1,\"roomRent\":0,\"subTotal\":57848,\"tax\":16197.440000000002,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":5785,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":74045}","1");
INSERT INTO order_total VALUES("36","36","{\"totalItemsInCart\":1,\"totalQuantityInCart\":1,\"roomRent\":0,\"subTotal\":57848,\"tax\":16197.440000000002,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":5785,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":74045}","1");
INSERT INTO order_total VALUES("37","37","{\"totalItemsInCart\":1,\"totalQuantityInCart\":1,\"roomRent\":0,\"subTotal\":57848,\"tax\":16197.440000000002,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":5785,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":74045}","1");
INSERT INTO order_total VALUES("38","38","{\"totalItemsInCart\":1,\"totalQuantityInCart\":1,\"roomRent\":0,\"subTotal\":57848,\"tax\":16197.440000000002,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":0,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":74045}","1");
INSERT INTO order_total VALUES("39","39","{\"totalItemsInCart\":1,\"totalQuantityInCart\":1,\"roomRent\":0,\"subTotal\":57848,\"tax\":16197.440000000002,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":0,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":74045}","1");
INSERT INTO order_total VALUES("40","40","{\"totalItemsInCart\":1,\"totalQuantityInCart\":1,\"roomRent\":0,\"subTotal\":57848,\"tax\":16197.440000000002,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":5785,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":74045}","1");
INSERT INTO order_total VALUES("41","41","{\"totalItemsInCart\":1,\"totalQuantityInCart\":1,\"roomRent\":0,\"subTotal\":57848,\"tax\":16197.440000000002,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":5785,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":74045}","1");
INSERT INTO order_total VALUES("42","42","{\"totalItemsInCart\":1,\"totalQuantityInCart\":2,\"roomRent\":0,\"subTotal\":115696,\"tax\":32394.880000000005,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":11570,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":148091}","1");
INSERT INTO order_total VALUES("43","43","{\"totalItemsInCart\":1,\"totalQuantityInCart\":2,\"roomRent\":0,\"subTotal\":115696,\"tax\":32394.880000000005,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":11570,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":148091}","1");
INSERT INTO order_total VALUES("44","44","{\"totalItemsInCart\":1,\"totalQuantityInCart\":3,\"roomRent\":0,\"subTotal\":173544,\"tax\":48592.32000000001,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":17354,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":222136}","1");
INSERT INTO order_total VALUES("45","45","{\"totalItemsInCart\":1,\"totalQuantityInCart\":2,\"roomRent\":0,\"subTotal\":115696,\"tax\":32394.880000000005,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":11570,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":148091}","1");
INSERT INTO order_total VALUES("46","46","{\"totalItemsInCart\":1,\"totalQuantityInCart\":1,\"roomRent\":0,\"subTotal\":57848,\"tax\":16197.440000000002,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":5785,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":74045}","1");
INSERT INTO order_total VALUES("47","47","{\"totalItemsInCart\":1,\"totalQuantityInCart\":1,\"roomRent\":0,\"subTotal\":57848,\"tax\":16197.440000000002,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":5785,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":74045}","1");
INSERT INTO order_total VALUES("48","48","{\"totalItemsInCart\":7,\"totalQuantityInCart\":7,\"roomRent\":0,\"subTotal\":58356,\"tax\":16197.440000000002,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":5835,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":74553}","1");
INSERT INTO order_total VALUES("49","49","{\"totalItemsInCart\":7,\"totalQuantityInCart\":7,\"roomRent\":0,\"subTotal\":58356,\"tax\":16197.440000000002,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":5835,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":74553}","1");
INSERT INTO order_total VALUES("50","50","{\"totalItemsInCart\":7,\"totalQuantityInCart\":7,\"roomRent\":0,\"subTotal\":58356,\"tax\":16197.440000000002,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":5835,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":74553}","1");
INSERT INTO order_total VALUES("51","51","{\"totalItemsInCart\":7,\"totalQuantityInCart\":7,\"roomRent\":0,\"subTotal\":58356,\"tax\":16197.440000000002,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":5835,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":74553}","1");
INSERT INTO order_total VALUES("52","52","{\"totalItemsInCart\":1,\"totalQuantityInCart\":1,\"roomRent\":0,\"subTotal\":57848,\"tax\":16197.440000000002,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":0,\"rewardUsed\":\"0\",\"globalDiscount\":\"{\\\"discount\\\":\\\"10%\\\",\\\"discountValue\\\":5784.8}\",\"total\":68261}","1");
INSERT INTO order_total VALUES("53","53","{\"totalItemsInCart\":1,\"totalQuantityInCart\":1,\"roomRent\":0,\"subTotal\":57848,\"tax\":16197.440000000002,\"productDiscount\":11569.6,\"additionalCharges\":\"[]\",\"rewardEarned\":0,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":62476}","1");
INSERT INTO order_total VALUES("54","54","{\"totalItemsInCart\":1,\"totalQuantityInCart\":1,\"roomRent\":0,\"subTotal\":1,\"tax\":\"0.00\",\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":0,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":1}","1");
INSERT INTO order_total VALUES("55","55","{\"totalItemsInCart\":6,\"totalQuantityInCart\":6,\"roomRent\":0,\"subTotal\":578029,\"tax\":\"68162.75\",\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":57802,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":578029}","1");
INSERT INTO order_total VALUES("56","62","{\"totalItemsInCart\":0,\"totalQuantityInCart\":0,\"roomRent\":0,\"subTotal\":0,\"tax\":0,\"productDiscount\":0,\"rewardEarned\":0,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":0}","1");
INSERT INTO order_total VALUES("57","63","{\"totalItemsInCart\":0,\"totalQuantityInCart\":0,\"roomRent\":0,\"subTotal\":0,\"tax\":0,\"productDiscount\":0,\"rewardEarned\":0,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":0}","1");
INSERT INTO order_total VALUES("58","64","{\"totalItemsInCart\":0,\"totalQuantityInCart\":0,\"roomRent\":0,\"subTotal\":0,\"tax\":0,\"productDiscount\":0,\"rewardEarned\":0,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":0}","1");
INSERT INTO order_total VALUES("59","65","{\"totalItemsInCart\":0,\"totalQuantityInCart\":0,\"roomRent\":0,\"subTotal\":0,\"tax\":0,\"productDiscount\":0,\"rewardEarned\":0,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":0}","1");
INSERT INTO order_total VALUES("60","66","{\"totalItemsInCart\":0,\"totalQuantityInCart\":0,\"roomRent\":0,\"subTotal\":0,\"tax\":0,\"productDiscount\":0,\"rewardEarned\":0,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":0}","1");
INSERT INTO order_total VALUES("61","67","{\"totalItemsInCart\":0,\"totalQuantityInCart\":0,\"roomRent\":0,\"subTotal\":0,\"tax\":0,\"productDiscount\":0,\"rewardEarned\":0,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":0}","1");
INSERT INTO order_total VALUES("62","68","{\"totalItemsInCart\":0,\"totalQuantityInCart\":0,\"roomRent\":0,\"subTotal\":0,\"tax\":0,\"productDiscount\":0,\"rewardEarned\":0,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":0}","1");
INSERT INTO order_total VALUES("63","69","{\"totalItemsInCart\":0,\"totalQuantityInCart\":0,\"roomRent\":0,\"subTotal\":0,\"tax\":0,\"productDiscount\":0,\"rewardEarned\":0,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":0}","1");
INSERT INTO order_total VALUES("64","70","{\"totalItemsInCart\":3,\"totalQuantityInCart\":3,\"roomRent\":0,\"subTotal\":5,\"tax\":0,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":0,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":5}","1");
INSERT INTO order_total VALUES("65","71","{\"totalItemsInCart\":2,\"totalQuantityInCart\":2,\"roomRent\":0,\"subTotal\":215538,\"tax\":10776.900000000001,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":21554,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":226315}","1");
INSERT INTO order_total VALUES("66","72","{\"totalItemsInCart\":1,\"totalQuantityInCart\":1,\"roomRent\":0,\"subTotal\":145238,\"tax\":3630.9500000000003,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":14524,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":148869}","1");
INSERT INTO order_total VALUES("67","73","{\"totalItemsInCart\":2,\"totalQuantityInCart\":2,\"roomRent\":0,\"subTotal\":337982,\"tax\":8449.550000000001,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":33798,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":346432}","1");
INSERT INTO order_total VALUES("68","74","{\"totalItemsInCart\":1,\"totalQuantityInCart\":1,\"roomRent\":0,\"subTotal\":500,\"tax\":0,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":50,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":500}","1");
INSERT INTO order_total VALUES("69","75","{\"totalItemsInCart\":1,\"totalQuantityInCart\":1,\"roomRent\":0,\"subTotal\":500,\"tax\":0,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":50,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":500}","1");
INSERT INTO order_total VALUES("70","76","{\"totalItemsInCart\":1,\"totalQuantityInCart\":1,\"roomRent\":0,\"subTotal\":500,\"tax\":0,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":50,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":500}","1");
INSERT INTO order_total VALUES("71","77","{\"totalItemsInCart\":3,\"totalQuantityInCart\":3,\"roomRent\":0,\"subTotal\":152570,\"tax\":26669.58,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":15257,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":179240}","1");
INSERT INTO order_total VALUES("72","78","{\"totalItemsInCart\":1,\"totalQuantityInCart\":1,\"roomRent\":0,\"subTotal\":500,\"tax\":0,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":50,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":500}","1");
INSERT INTO order_total VALUES("73","79","{\"totalItemsInCart\":3,\"totalQuantityInCart\":3,\"roomRent\":0,\"subTotal\":228634,\"tax\":26841.83,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":22864,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":255476}","1");
INSERT INTO order_total VALUES("74","80","{\"totalItemsInCart\":1,\"totalQuantityInCart\":1,\"roomRent\":0,\"subTotal\":500,\"tax\":0,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":50,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":500}","1");
INSERT INTO order_total VALUES("75","81","{\"totalItemsInCart\":1,\"totalQuantityInCart\":1,\"roomRent\":0,\"subTotal\":500,\"tax\":0,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":50,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":500}","1");
INSERT INTO order_total VALUES("76","82","{\"totalItemsInCart\":1,\"totalQuantityInCart\":1,\"roomRent\":0,\"subTotal\":500,\"tax\":0,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":50,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":500}","1");
INSERT INTO order_total VALUES("77","83","{\"totalItemsInCart\":1,\"totalQuantityInCart\":1,\"roomRent\":0,\"subTotal\":500,\"tax\":0,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":50,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":500}","1");
INSERT INTO order_total VALUES("78","84","{\"totalItemsInCart\":2,\"totalQuantityInCart\":2,\"roomRent\":0,\"subTotal\":69674,\"tax\":3458.7000000000003,\"productDiscount\":10,\"additionalCharges\":\"[]\",\"rewardEarned\":6917,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":73123}","1");
INSERT INTO order_total VALUES("79","85","{\"totalItemsInCart\":1,\"totalQuantityInCart\":1,\"roomRent\":0,\"subTotal\":500,\"tax\":0,\"productDiscount\":10,\"additionalCharges\":\"[]\",\"rewardEarned\":0,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":490}","1");
INSERT INTO order_total VALUES("80","86","{\"totalItemsInCart\":1,\"totalQuantityInCart\":1,\"roomRent\":0,\"subTotal\":500,\"tax\":0,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":50,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":500}","1");
INSERT INTO order_total VALUES("81","87","{\"totalItemsInCart\":1,\"totalQuantityInCart\":1,\"roomRent\":0,\"subTotal\":500,\"tax\":0,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":50,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":500}","1");
INSERT INTO order_total VALUES("82","88","{\"totalItemsInCart\":1,\"totalQuantityInCart\":1,\"roomRent\":0,\"subTotal\":500,\"tax\":0,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":50,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":500}","1");
INSERT INTO order_total VALUES("83","89","{\"totalItemsInCart\":1,\"totalQuantityInCart\":1,\"roomRent\":0,\"subTotal\":500,\"tax\":0,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":50,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":500}","1");
INSERT INTO order_total VALUES("84","90","{\"totalItemsInCart\":3,\"totalQuantityInCart\":3,\"roomRent\":0,\"subTotal\":262418,\"tax\":8277.300000000001,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":26241,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":270695}","1");
INSERT INTO order_total VALUES("85","91","{\"totalItemsInCart\":2,\"totalQuantityInCart\":2,\"roomRent\":0,\"subTotal\":275640,\"tax\":28029.480000000003,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":27564,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":303669}","1");
INSERT INTO order_total VALUES("86","92","{\"totalItemsInCart\":1,\"totalQuantityInCart\":1,\"roomRent\":0,\"subTotal\":69174,\"tax\":3458.7000000000003,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":6917,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":72633}","1");
INSERT INTO order_total VALUES("87","93","{\"totalItemsInCart\":1,\"totalQuantityInCart\":1,\"roomRent\":0,\"subTotal\":180906,\"tax\":9045.300000000001,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":18091,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":189951}","1");
INSERT INTO order_total VALUES("88","94","{\"totalItemsInCart\":5,\"totalQuantityInCart\":5,\"roomRent\":0,\"subTotal\":636416,\"tax\":67977,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":63642,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":704393}","1");
INSERT INTO order_total VALUES("89","95","{\"totalItemsInCart\":3,\"totalQuantityInCart\":3,\"roomRent\":0,\"subTotal\":189280,\"tax\":25857.980000000003,\"productDiscount\":0,\"additionalCharges\":\"[]\",\"rewardEarned\":18928,\"rewardUsed\":0,\"globalDiscount\":\"null\",\"total\":215138}","1");



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
  `status` int(11) NOT NULL DEFAULT 1,
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
  `softDelete` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`paymentId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

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




DROP TABLE IF EXISTS popup_message;

CREATE TABLE `popup_message` (
  `popupMessageId` int(11) NOT NULL AUTO_INCREMENT,
  `heading` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `userId` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`popupMessageId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO popup_message VALUES("1","SMP 35 Protein","<p>hjgkghj</p>
","1","1");
INSERT INTO popup_message VALUES("2","SMP 35 Protein","<p>hjgkghj</p>
","2","1");
INSERT INTO popup_message VALUES("3","hjkgjhk","<p>hjkjhkhj</p>
","2","1");
INSERT INTO popup_message VALUES("4","SMP 35 Protein","<p>asdas</p>
","2","1");
INSERT INTO popup_message VALUES("5","SMP 35 Protein","<p>sfasd</p>
","2","1");
INSERT INTO popup_message VALUES("6","SMP 35 Protein","<p>fghfgh</p>
","2","1");
INSERT INTO popup_message VALUES("7","ghjghj","<p>ghjfghj</p>
","2","1");
INSERT INTO popup_message VALUES("8","ghjf","<p>gfjh</p>
","2","1");
INSERT INTO popup_message VALUES("9","SMP 35 Protein","<p>SMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 Protein</p>
","6","1");
INSERT INTO popup_message VALUES("10","SMP 35 Protein","<p>SMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 Protein</p>
","6","1");
INSERT INTO popup_message VALUES("11","SMP 35 Protein","<p>SMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 Protein</p>
","6","1");
INSERT INTO popup_message VALUES("12","SMP 35 Protein","<p>SMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 Protein</p>
","6","1");



DROP TABLE IF EXISTS popup_message_list;

CREATE TABLE `popup_message_list` (
  `popupMessageListId` int(11) NOT NULL AUTO_INCREMENT,
  `heading` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `userId` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `viewed` int(11) NOT NULL DEFAULT 0,
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`popupMessageListId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO popup_message_list VALUES("1","0","<p>fghfgh</p>
","2","1","1","2024-04-18 10:08:23");
INSERT INTO popup_message_list VALUES("2","ghjf","<p>gfjh</p>
","1","1","1","2024-04-18 10:11:04");
INSERT INTO popup_message_list VALUES("3","SMP 35 Protein","<p>SMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 Protein</p>
","8","1","0","2024-04-18 16:42:07");
INSERT INTO popup_message_list VALUES("4","SMP 35 Protein","<p>SMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 Protein</p>
","8","1","0","2024-04-18 16:44:37");
INSERT INTO popup_message_list VALUES("5","SMP 35 Protein","<p>SMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 ProteinSMP 35 Protein</p>
","8","1","0","2024-04-18 16:44:57");



DROP TABLE IF EXISTS product_return;

CREATE TABLE `product_return` (
  `productReturnId` int(11) NOT NULL AUTO_INCREMENT,
  `customerId` int(11) NOT NULL,
  `orderId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `rewardPoints` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `storeId` int(11) NOT NULL DEFAULT 0,
  `userId` int(11) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 1,
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`productReturnId`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO product_return VALUES("34","1","20","100","1","0","57848","1","1","1","2024-08-22 15:08:49");
INSERT INTO product_return VALUES("35","1","40","100","1","0","57848","1","1","1","2024-08-24 14:52:54");
INSERT INTO product_return VALUES("36","1","41","100","1","5785","57848","1","1","1","2024-08-24 14:59:20");
INSERT INTO product_return VALUES("37","1","42","100","1","11570","57848","1","1","1","2024-08-24 15:00:20");
INSERT INTO product_return VALUES("38","1","43","100","1","66932450","57848","1","1","1","2024-08-24 15:44:45");
INSERT INTO product_return VALUES("39","1","44","100","2","100387105","115696","1","1","1","2024-08-24 15:49:00");
INSERT INTO product_return VALUES("40","1","44","100","2","11569","115696","1","1","1","2024-08-24 15:52:33");
INSERT INTO product_return VALUES("41","1","44","100","2","11569","115696","1","1","1","2024-08-24 15:57:46");
INSERT INTO product_return VALUES("42","1","44","100","2","11569","115696","1","1","1","2024-08-24 16:00:18");
INSERT INTO product_return VALUES("43","1","45","100","2","11570","115696","1","1","1","2024-08-24 16:01:34");



DROP TABLE IF EXISTS products;

CREATE TABLE `products` (
  `productId` int(11) NOT NULL AUTO_INCREMENT,
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
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`productId`)
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

INSERT INTO products VALUES("1","Mrs. Kiara Terry V","H3x4hrTsyz","75927996","","54689","109378","0.00","1","1","0","0","1","Exclusive","456987","37","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:28:46","1","2024-03-31 16:26:10");
INSERT INTO products VALUES("2","Oscar Quitzon","NyynIlInx8","90188470","","58016","116032","0.00","1","1","0","0","4","Exclusive","","34","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:28:46","1","2024-03-31 16:26:10");
INSERT INTO products VALUES("3","Sandra Quigley","6EyDYMD3pg","19700880","","73039","146078","0.00","1","1","0","0","1","Exclusive","","40","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:28:46","1","2024-03-31 16:26:11");
INSERT INTO products VALUES("4","Camren Murray","dOeXtkoZOO","82528466","","20089","40178","0.00","1","1","0","0","2","Exclusive","","64","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:28:46","1","2024-03-31 16:26:11");
INSERT INTO products VALUES("5","Connie Hagenes","CrA5qgIR8G","89971679","","55769","111538","0.00","1","1","0","0","1","Exclusive","","22","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:28:46","1","2024-03-31 16:26:11");
INSERT INTO products VALUES("6","Jacey Sporer","3w4LPRirQc","59981534","","99152","198304","0.00","1","1","0","0","4","Exclusive","","51","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:28:46","1","2024-03-31 16:26:11");
INSERT INTO products VALUES("7","Ms. Eldora Stehr","GqSDRV2xlA","45972043","","62399","124798","0.00","1","1","0","0","1","Exclusive","","79","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:28:46","1","2024-03-31 16:26:11");
INSERT INTO products VALUES("8","Dr. Laurel Goyette","gm2mUyq4vV","26471494","","74194","148388","0.00","1","1","0","0","5","Exclusive","","86","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:28:46","1","2024-03-31 16:26:12");
INSERT INTO products VALUES("9","Julie Deckow","Np9R8trWl5","15887785","","72087","144174","0.00","1","1","0","0","2","Exclusive","","54","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:28:46","1","2024-03-31 16:26:12");
INSERT INTO products VALUES("10","Margarette Frami","2GwyuRXZgo","87915669","","77011","154022","0.00","1","1","0","0","4","Exclusive","","86","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:28:46","1","2024-03-31 16:26:12");
INSERT INTO products VALUES("11","Alene Cummings","ZemyGhf1GB","43466861","","51039","102078","0.00","1","1","0","0","4","Exclusive","","15","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:28:46","1","2024-03-31 16:26:12");
INSERT INTO products VALUES("12","Vena Wilkinson","WTxmUYcZrl","31599466","","84148","168296","0.00","1","1","0","0","4","Exclusive","","90","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:28:46","1","2024-03-31 16:26:12");
INSERT INTO products VALUES("13","Jasen Wuckert","vmEdULa7WN","20592623","","95222","190444","0.00","1","1","0","0","5","Exclusive","","47","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:28:46","1","2024-03-31 16:26:13");
INSERT INTO products VALUES("14","Rex Lehner","Q4cK7F2FWU","59490595","","51833","103666","0.00","1","1","0","0","4","Exclusive","","76","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:28:46","1","2024-03-31 16:26:13");
INSERT INTO products VALUES("15","Ms. Alysson Thompson PhD","YO1rEK9TFB","94786476","","51943","103886","0.00","1","1","0","0","2","Exclusive","","42","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:28:46","1","2024-03-31 16:26:13");
INSERT INTO products VALUES("16","Shannon Williamson","IUyndzd6Uf","37114935","","26979","53958","0.00","1","1","0","0","1","Exclusive","","42","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:28:46","1","2024-03-31 16:26:13");
INSERT INTO products VALUES("17","Tavares Kris","sm9sKi5xcX","40274330","","36166","72332","0.00","1","1","0","0","3","Exclusive","","22","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:28:46","1","2024-03-31 16:26:13");
INSERT INTO products VALUES("18","Dominic Huels","NqCpDCxFHG","13752380","","33633","67266","0.00","1","1","0","0","4","Exclusive","","59","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:28:46","1","2024-03-31 16:26:14");
INSERT INTO products VALUES("19","Rashawn Abbott","gbunjAghF2","83624681","","49993","99986","0.00","1","1","0","0","3","Exclusive","","68","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:28:46","1","2024-03-31 16:26:14");
INSERT INTO products VALUES("20","Prof. Dawson Schmeler III","7LyYSB5vyq","18734193","","19302","38604","0.00","1","1","0","0","5","Exclusive","","34","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:28:46","1","2024-03-31 16:26:14");
INSERT INTO products VALUES("21","Judson Ankunding I","bGcGZswCPm","71837871","","21060","42120","0.00","1","1","0","0","1","Exclusive","","95","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:28:46","1","2024-03-31 16:26:14");
INSERT INTO products VALUES("22","Aric Schinner","mvDjp8D7gf","18037857","","44498","88996","0.00","1","1","0","0","2","Exclusive","","87","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:28:46","1","2024-03-31 16:26:14");
INSERT INTO products VALUES("23","Prof. Taylor Bayer DDS","F6mAvzpysj","52007728","","40504","81008","0.00","1","1","0","0","5","Exclusive","","75","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:28:46","1","2024-03-31 16:26:14");
INSERT INTO products VALUES("24","Dr. Manuel Cartwright","P3EG2sZ1pP","46575751","","59031","118062","0.00","1","1","0","0","1","Exclusive","","17","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:28:46","1","2024-03-31 16:26:15");
INSERT INTO products VALUES("25","Dr. Garnet Weber","JLNbAZyzKs","44415819","","73650","147300","0.00","1","1","0","0","2","Exclusive","","41","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:28:46","1","2024-03-31 16:26:15");
INSERT INTO products VALUES("26","Kenyon Zemlak","wV73ywHM7R","86466874","","37207","74414","0.00","1","1","0","0","4","Exclusive","","46","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:28:46","1","2024-03-31 16:26:15");
INSERT INTO products VALUES("27","Alexandro Baumbach","5wijfL7GBn","45004320","","74514","149028","0.00","1","1","0","0","4","Exclusive","","19","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:28:46","1","2024-03-31 16:26:15");
INSERT INTO products VALUES("28","Gerhard Mueller","zNMAmVzN01","21437782","","24253","48506","0.00","1","1","0","0","2","Exclusive","","75","1","0","","","1","Product","0","1","2","0","2","2025-01-15 23:00:16","1","2024-03-31 16:26:15");
INSERT INTO products VALUES("29","Destini Paucek","Davvp3mUTX","32675878","","82993","165986","0.00","1","1","0","0","6","Exclusive","","83","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:28:46","1","2024-03-31 16:26:15");
INSERT INTO products VALUES("30","Hassie Tremblay III","qUCmvEcS0J","28790554","","19650","39300","0.00","1","1","0","0","1","Exclusive","","77","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:28:46","1","2024-03-31 16:26:16");
INSERT INTO products VALUES("31","Pedro Greenfelder","b5dXiuiiBC","97222801","","88737","177474","0.00","1","1","0","0","1","Exclusive","","15","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:28:46","1","2024-03-31 16:26:16");
INSERT INTO products VALUES("32","Jayne Flatley","8Il3iAihX5","86408733","","26005","52010","0.00","1","1","0","0","4","Exclusive","","75","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:28:46","1","2024-03-31 16:26:16");
INSERT INTO products VALUES("33","Leonor Conroy","zDQlYul91r","75459366","","35468","70936","0.00","1","1","0","0","1","Exclusive","","17","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:28:46","1","2024-03-31 16:26:16");
INSERT INTO products VALUES("34","Prof. Bartholome Altenwerth","wwOrzczK0a","82980324","","43648","87296","0.00","1","1","0","0","4","Exclusive","","90","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:28:46","1","2024-03-31 16:26:16");
INSERT INTO products VALUES("35","Clay Prosacco","ClCy2qug3y","42856274","","13303","26606","0.00","1","1","0","0","5","Exclusive","","18","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:28:46","1","2024-03-31 16:26:16");
INSERT INTO products VALUES("36","Assunta Heller IV","iTjViRkzis","31712293","","95864","191728","0.00","1","1","0","0","3","Exclusive","","38","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:28:46","1","2024-03-31 16:26:17");
INSERT INTO products VALUES("37","Walker Buckridge","VBZ35s3RXi","37889386","","88520","177040","0.00","1","1","0","0","1","Exclusive","","28","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:28:46","1","2024-03-31 16:26:17");
INSERT INTO products VALUES("38","Mr. Donato McClure II","EE1J5lkjKx","92166634","","32796","65592","0.00","1","1","0","0","1","Exclusive","","15","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:28:46","1","2024-03-31 16:26:17");
INSERT INTO products VALUES("39","Petra Sawayn","HlV4Up9b4w","56139865","","62555","125110","0.00","1","1","0","0","3","Exclusive","","34","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:28:46","1","2024-03-31 16:26:17");
INSERT INTO products VALUES("40","Ibrahim Koss","o9goCd5p1G","91896284","","12019","24038","0.00","1","1","0","0","1","Exclusive","","87","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:28:46","1","2024-03-31 16:26:17");
INSERT INTO products VALUES("41","Danial Yost","Zl2V62FiUb","76937111","","28428","56856","0.00","1","1","0","0","6","Exclusive","","56","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:28:46","1","2024-03-31 16:26:18");
INSERT INTO products VALUES("42","Prof. Alysha Wisozk","n6zhAHvQKe","51807323","","59300","118600","0.00","1","1","0","0","3","Exclusive","","93","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:28:46","1","2024-03-31 16:26:18");
INSERT INTO products VALUES("43","Isom McGlynn Sr.","2vOznkvLti","66415470","","23057","46114","0.00","1","1","0","0","6","Exclusive","","71","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:28:46","1","2024-03-31 16:26:18");
INSERT INTO products VALUES("44","Martine McClure","34aglzTeaY","91652201","","66576","133152","0.00","1","1","0","0","5","Exclusive","","73","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:28:46","1","2024-03-31 16:26:18");
INSERT INTO products VALUES("45","Furman Boyle","6Dst5yL3mP","30724157","","31947","63894","0.00","1","1","0","0","5","Exclusive","","15","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:28:46","1","2024-03-31 16:26:18");
INSERT INTO products VALUES("46","Dr. Dagmar Bahringer PhD","oxpcRwQzIF","80814465","","71243","142486","0.00","1","1","0","0","3","Exclusive","","12","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:28:46","1","2024-03-31 16:26:19");
INSERT INTO products VALUES("47","Kale Sauer","7Xk9ie4k7D","61734311","","16248","32496","0.00","1","1","0","0","3","Exclusive","","52","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:28:46","1","2024-03-31 16:26:19");
INSERT INTO products VALUES("48","Felipa Nolan","A7e77n6wqz","51930282","","76073","152146","0.00","1","1","0","0","5","Exclusive","","28","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:28:46","1","2024-03-31 16:26:19");
INSERT INTO products VALUES("49","Rachelle O\'Conner","ECf8umrx0R","14689212","","76407","152814","0.00","1","1","0","0","1","Exclusive","","19","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:28:46","1","2024-03-31 16:26:19");
INSERT INTO products VALUES("50","Ms. Eve O\'Hara","NizFLdPts5","15431119","","40725","81450","0.00","1","1","0","0","5","Exclusive","","24","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:28:46","1","2024-03-31 16:26:20");
INSERT INTO products VALUES("51","Prof. Kailey Bailey DDS","kbWvpgwtZX","22271066","","82096","164192","0.00","2","2","0","0","4","Exclusive","","49","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:29:00","1","2024-03-31 16:26:20");
INSERT INTO products VALUES("52","Jamil Barrows","tSLVUjlPpP","52227351","","99569","199138","0.00","2","2","0","0","4","Exclusive","","31","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:29:00","1","2024-03-31 16:26:20");
INSERT INTO products VALUES("53","Alberto Feeney","DfOYGQK3O5","79066005","","97784","195568","0.00","2","2","0","0","2","Exclusive","","93","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:29:00","1","2024-03-31 16:26:20");
INSERT INTO products VALUES("54","Mr. Travis Kovacek Sr.","3PrY7722i3","14081152","","29404","58808","0.00","2","2","0","0","1","Exclusive","","20","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:29:00","1","2024-03-31 16:26:20");
INSERT INTO products VALUES("55","Heidi Steuber","KqqV4eQDEn","20287219","","65701","131402","0.00","2","2","0","0","6","Exclusive","","34","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:29:00","1","2024-03-31 16:26:21");
INSERT INTO products VALUES("56","Destinee Zulauf","ptBnPojWc4","90874461","","97358","194716","0.00","2","2","0","0","2","Exclusive","","49","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:29:00","1","2024-03-31 16:26:21");
INSERT INTO products VALUES("57","Lea Pfannerstill","GIdQR0VFEQ","59098820","","85399","170798","0.00","2","2","0","0","1","Exclusive","","57","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:29:00","1","2024-03-31 16:26:21");
INSERT INTO products VALUES("58","Coralie Ullrich","9uifoxxjUt","61911501","","21269","42538","0.00","2","2","0","0","1","Exclusive","","56","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:29:00","1","2024-03-31 16:26:21");
INSERT INTO products VALUES("59","Dr. Kevon Frami MD","cWOqCz35KO","29488801","","52979","105958","0.00","2","2","0","0","6","Exclusive","","73","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:29:00","1","2024-03-31 16:26:21");
INSERT INTO products VALUES("60","Naomie Hill Sr.","rVyQUcJqcW","43210110","","87848","175696","0.00","2","2","0","0","6","Exclusive","","92","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:29:00","1","2024-03-31 16:26:21");
INSERT INTO products VALUES("61","Billie Gutkowski","4SuGA8MbbD","50342040","","79446","158892","0.00","2","2","0","0","6","Exclusive","","56","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:29:00","1","2024-03-31 16:26:22");
INSERT INTO products VALUES("62","Buck Howe","6XWzkOlMKI","49180812","","31513","63026","0.00","2","2","0","0","5","Exclusive","","33","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:29:00","1","2024-03-31 16:26:22");
INSERT INTO products VALUES("63","Alana Nitzsche","foNozRRG52","58162953","","38579","77158","0.00","2","2","0","0","1","Exclusive","","45","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:29:00","1","2024-03-31 16:26:22");
INSERT INTO products VALUES("64","Adrain Schmitt MD","QRMDLfig7O","30768930","","96385","192770","0.00","2","2","0","0","4","Exclusive","","66","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:29:00","1","2024-03-31 16:26:22");
INSERT INTO products VALUES("65","Lillie Muller","8xZW95nc5M","44944936","","67358","134716","0.00","2","2","0","0","2","Exclusive","","53","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:29:00","1","2024-03-31 16:26:22");
INSERT INTO products VALUES("66","Cathy Kutch","9K4ffs6pAU","15395725","","35745","71490","0.00","2","2","0","0","6","Exclusive","","35","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:29:00","1","2024-03-31 16:26:23");
INSERT INTO products VALUES("67","Peggie Raynor","3zsPIwfw36","72466524","","74660","149320","0.00","2","2","0","0","6","Exclusive","","22","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:29:00","1","2024-03-31 16:26:23");
INSERT INTO products VALUES("68","Deron Windler","86TaS7B3eQ","36462366","","15716","31432","0.00","2","2","0","0","1","Exclusive","","92","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:29:00","1","2024-03-31 16:26:23");
INSERT INTO products VALUES("69","Rhianna Kovacek","bQMBgtImdm","90981422","","13157","26314","0.00","2","2","0","0","2","Exclusive","","79","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:29:00","1","2024-03-31 16:26:23");
INSERT INTO products VALUES("70","Annabel Hickle","o8jqdXuYuY","98321007","","75377","150754","0.00","2","2","0","0","5","Exclusive","","32","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:29:00","1","2024-03-31 16:26:23");
INSERT INTO products VALUES("71","Wilfredo Hyatt","8l0tTWlCIK","20037374","","44292","88584","0.00","2","2","0","0","4","Exclusive","","96","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:29:00","1","2024-03-31 16:26:24");
INSERT INTO products VALUES("72","Maryjane Dooley","YJpvDYx5s6","52662065","","96056","192112","0.00","2","2","0","0","1","Exclusive","","61","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:29:00","1","2024-03-31 16:26:24");
INSERT INTO products VALUES("73","Nayeli Raynor","PdHY8J7k1d","54642262","","80406","160812","0.00","2","2","0","0","1","Exclusive","","34","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:29:00","1","2024-03-31 16:26:24");
INSERT INTO products VALUES("74","Dustin Wehner","1oenpoNjFc","80492721","","18379","36758","0.00","2","2","0","0","6","Exclusive","","51","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:29:00","1","2024-03-31 16:26:24");
INSERT INTO products VALUES("75","Malika Bogan","fmG1yH2KgZ","92343230","","58382","116764","0.00","2","2","0","0","6","Exclusive","","87","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:29:00","1","2024-03-31 16:26:24");
INSERT INTO products VALUES("76","Bobby Jast","ie40ESV2zg","30378500","","94767","189534","0.00","2","2","0","0","4","Exclusive","","32","1","0","","","1","Product","0","1","2","0","2","2024-10-20 17:13:10","1","2024-03-31 16:26:25");
INSERT INTO products VALUES("77","Dr. Theron Yost II","P6cn7vsmUo","63585421","","74557","149114","0.00","2","2","0","0","1","Exclusive","","73","1","0","","","1","Product","0","1","2","0","2","2024-10-20 17:13:10","1","2024-03-31 16:26:25");
INSERT INTO products VALUES("78","Dr. Kenna Cremin IV","HEHTkTH3Px","78050597","","99784","199568","0.00","2","2","0","0","3","Exclusive","","84","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:29:00","1","2024-03-31 16:26:25");
INSERT INTO products VALUES("79","Micheal Kerluke IV","RgYwH1hWdg","32484560","","29439","58878","0.00","2","2","0","0","3","Exclusive","","23","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:29:00","1","2024-03-31 16:26:25");
INSERT INTO products VALUES("80","Justus Stroman MD","stvHd5Syx2","41524268","","62716","125432","0.00","2","2","0","0","6","Exclusive","","50","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:29:00","1","2024-03-31 16:26:26");
INSERT INTO products VALUES("81","Alicia Mosciski","F1wxRsSMiA","14980483","","48415","96830","0.00","2","2","0","0","4","Exclusive","","84","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:29:00","1","2024-03-31 16:26:26");
INSERT INTO products VALUES("82","Watson Koelpin","WTOrKk97ka","72308943","","30512","61024","0.00","2","2","0","0","6","Exclusive","","28","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:29:00","1","2024-03-31 16:26:26");
INSERT INTO products VALUES("83","Dr. Maximus O\'Kon","VctMlkKVZd","44309514","","36622","73244","0.00","2","2","0","0","1","Exclusive","","38","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:29:00","1","2024-03-31 16:26:26");
INSERT INTO products VALUES("84","Miss Alexandra Schumm DDS","9m4wihFuGj","18172731","","85629","171258","0.00","2","2","0","0","5","Exclusive","","60","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:29:00","1","2024-03-31 16:26:26");
INSERT INTO products VALUES("85","Mrs. Coralie Deckow","tmkCH2UbOZ","56941793","","98488","196976","0.00","2","2","0","0","3","Exclusive","","66","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:29:00","1","2024-03-31 16:26:27");
INSERT INTO products VALUES("86","Dr. Nils O\'Hara","uGC5nj5wFD","63589949","","31887","63774","0.00","2","2","0","0","3","Exclusive","","30","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:29:00","1","2024-03-31 16:26:27");
INSERT INTO products VALUES("87","Dr. Leanna O\'Conner","glHBtmrjm1","80244841","","86668","173336","0.00","2","2","0","0","2","Exclusive","","72","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:29:00","1","2024-03-31 16:26:27");
INSERT INTO products VALUES("88","Lily Friesen","EblwIOsmA0","78163971","","35556","71112","0.00","2","2","0","0","1","Exclusive","","58","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:29:00","1","2024-03-31 16:26:27");
INSERT INTO products VALUES("89","Daphne Sanford","pHxBuTLVSi","94431310","","18599","37198","0.00","2","2","0","0","2","Exclusive","","28","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:29:00","1","2024-03-31 16:26:27");
INSERT INTO products VALUES("90","Mr. Drake Adams V","RPREOvhdfV","53681511","","51639","103278","0.00","2","2","0","0","4","Exclusive","","49","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:29:00","1","2024-03-31 16:26:27");
INSERT INTO products VALUES("91","Destini Dach III","aMGhdlOf5x","13338465","","41190","82380","0.00","2","2","0","0","1","Exclusive","","89","1","0","","","1","Product","0","1","2","0","2","2024-10-20 17:13:10","1","2024-03-31 16:26:28");
INSERT INTO products VALUES("92","Jordi Gottlieb","4SEmGmB2V0","91524823","","68479","136958","0.00","2","2","0","0","2","Exclusive","","13","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:29:00","1","2024-03-31 16:26:28");
INSERT INTO products VALUES("93","Therese Hauck","OA8reSsZWg","34167244","","75497","150994","0.00","2","2","0","0","4","Exclusive","","85","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:29:00","1","2024-03-31 16:26:28");
INSERT INTO products VALUES("94","Dina Bogan","iUuzL6troJ","97953843","","66236","132472","0.00","2","2","0","0","5","Exclusive","","16","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:29:00","1","2024-03-31 16:26:28");
INSERT INTO products VALUES("95","Milford Herman","5K1IvC7bgF","84439094","","78498","156996","0.00","2","2","0","0","4","Exclusive","","27","1","0","","","1","Product","0","1","2","0","2","2024-10-20 17:13:10","1","2024-03-31 16:26:29");
INSERT INTO products VALUES("96","Tressa Wisozk","YDJ5ntBuK1","78676059","","74805","149610","0.00","2","2","0","0","6","Exclusive","","88","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:29:00","1","2024-03-31 16:26:29");
INSERT INTO products VALUES("97","Dr. Estell Cummings IV","Fwh6tO8IA6","94433959","","73595","147190","0.00","2","2","0","0","2","Exclusive","","48","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:29:00","1","2024-03-31 16:26:29");
INSERT INTO products VALUES("98","Jaida Grimes","lUnUIsoJZX","88180650","","32281","64562","0.00","2","2","0","0","2","Exclusive","","55","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:29:00","1","2024-03-31 16:26:29");
INSERT INTO products VALUES("99","Angel Hills","q8qHbH3aUV","19919785","","92186","184372","0.00","2","2","0","0","4","Exclusive","","86","1","0","","","1","Product","0","1","2","0","2","2024-08-26 12:29:00","1","2024-03-31 16:26:29");
INSERT INTO products VALUES("100","Eldora Hackett III","EtfkfhSgZJ","98321009","","1000","57848","0.00","2","2","0","0","5","Exclusive","","82","0","1","","\"\"","1","Product","0","1","1","1","2","2024-10-02 11:13:40","1","2024-03-31 16:26:30");
INSERT INTO products VALUES("101","SMP 35 Protein","","98321011","","10","20","100.00","2","2","0","0","3","Exclusive","","0","0","0","public/assets/uploads/ship_shop_default/252036007.jpeg","[\"public\\/assets\\/uploads\\/ship_shop_default\\/282712764.jpeg\",\"public\\/assets\\/uploads\\/ship_shop_default\\/305529164.jpeg\",\"public\\/assets\\/uploads\\/ship_shop_default\\/801164683.jpeg\",\"public\\/assets\\/uploads\\/ship_shop_default\\/744894189.jpeg\",\"public\\/assets\\/uploads\\/ship_shop_default\\/411498000.jpeg\"]","1","Product","0","1","1","1","1","2024-08-26 12:29:00","1","2024-04-13 11:46:28");
INSERT INTO products VALUES("102","Hotel Room 1","Hotel","98321014","","500","500","0.00","2","2","0","0","0","Exclusive","","987","0","0","public/assets/uploads/ship_shop_pos_default/693478300.jpeg","[\"public\\/assets\\/uploads\\/ship_shop_pos_default\\/419239602.jpeg\"]","1","Hotel","0","1","1","1","1","2025-02-01 13:13:51","1","2024-07-02 11:43:02");
INSERT INTO products VALUES("103","Hotel Room 2","Hotel","98321014","","500","500","0.00","2","2","0","0","0","Exclusive","","989","0","0","public/assets/uploads/ship_shop_pos_default/693478300.jpeg","[\"public\\/assets\\/uploads\\/ship_shop_pos_default\\/419239602.jpeg\"]","1","Hotel","0","1","1","1","1","2025-02-01 22:41:26","1","2024-07-02 11:43:02");
INSERT INTO products VALUES("104","Hotel Room 3","Hotel","98321014","","500","500","0.00","2","2","0","0","0","Exclusive","","999","0","0","public/assets/uploads/ship_shop_pos_default/693478300.jpeg","[\"public\\/assets\\/uploads\\/ship_shop_pos_default\\/419239602.jpeg\"]","1","Hotel","0","1","1","1","1","2025-01-17 23:00:47","1","2024-07-02 11:43:02");
INSERT INTO products VALUES("105","aerare","sdgagfs","98321015","","23423","2322","0.00","2","2","0","0","0","Exclusive","sdfsd","1","1","0","","","1","","0","1","1","0","1","2024-08-26 12:29:00","1","2024-08-20 11:09:57");
INSERT INTO products VALUES("106","asdasd","asdasda","98321016","","1","1","0.00","2","2","1","0","0","Exclusive","sdf","0","1","0","","","1","","0","1","1","0","1","2024-10-20 15:55:50","1","2024-08-20 11:15:25");
INSERT INTO products VALUES("107","asdasd","asdasda","98321017","","1","1","0.00","2","2","1","0","0","Exclusive","sdf","1","1","0","","","1","","0","1","1","0","1","2024-08-26 12:29:00","1","2024-08-20 11:15:58");
INSERT INTO products VALUES("108","dfsdf","sdfsd","98321018","","1","1","0.00","2","2","1","0","0","Exclusive","1","1","1","0","","","1","","0","1","1","0","1","2024-08-26 12:29:00","1","2024-08-20 11:17:15");
INSERT INTO products VALUES("109","dfsdf","sdfsd","98321019","","1","1","0.00","2","2","1","0","0","Exclusive","1","0","1","0","","","1","","0","1","1","0","1","2024-12-23 10:03:32","1","2024-08-20 11:17:39");
INSERT INTO products VALUES("110","asdas","sdf","98321020","","1","1","0.00","2","2","1","0","0","Exclusive","1","1","1","0","","","1","","0","1","1","0","1","2024-08-26 12:29:00","1","2024-08-20 11:18:53");
INSERT INTO products VALUES("111","asdasd","1","98321021","","1","1","0.00","2","2","1","0","0","Exclusive","1","1","1","0","","","1","","0","1","1","0","1","2024-08-26 12:29:00","1","2024-08-20 11:19:33");
INSERT INTO products VALUES("112","asdas","df","98321022","","1","1","0.00","2","2","1","0","0","Exclusive","1","1","1","0","","","1","","0","1","1","0","1","2024-08-26 12:29:00","1","2024-08-20 11:22:50");
INSERT INTO products VALUES("113","dsfs","1","98321023","","1","1","0.00","2","2","1","0","0","Exclusive","1","1","1","0","","","1","","0","1","1","0","1","2024-08-26 12:29:00","1","2024-08-20 11:25:15");
INSERT INTO products VALUES("114","asdfas","1","98321024","","1","1","0.00","2","2","1","0","0","Exclusive","1","1","1","0","","","1","","0","1","1","0","1","2024-08-26 12:29:00","1","2024-08-20 11:27:26");
INSERT INTO products VALUES("115","sdf","1","98321025","","1","1","0.00","2","2","1","0","0","Exclusive","1","0","1","0","","","1","","0","1","1","0","1","2024-12-23 10:03:32","1","2024-08-20 11:28:14");
INSERT INTO products VALUES("116","dfs","1","98321026","","1","1","0.00","2","2","1","0","0","Exclusive","1","0","1","0","","","1","","0","1","1","0","1","2024-10-02 10:24:01","1","2024-08-20 11:29:33");
INSERT INTO products VALUES("117","dfs","1","98321027","","1","1","0.00","2","2","1","0","0","Exclusive","1","0","1","0","","","1","","0","1","1","0","1","2024-10-02 10:24:01","1","2024-08-20 11:29:43");
INSERT INTO products VALUES("118","sfdfg","1","98321028","","1","1","0.00","2","2","1","0","0","Exclusive","1","-3","1","0","","","1","","0","1","1","0","1","2024-10-02 10:24:01","1","2024-08-20 11:31:26");
INSERT INTO products VALUES("119","sdgdfshgf","2","98321029","","2","2","0.00","2","2","1","0","0","Exclusive","2","0","1","0","","","1","","0","1","1","0","1","2024-10-20 17:13:10","1","2024-08-20 11:33:53");
INSERT INTO products VALUES("120","sadgfg","3","98321030","","3","3","0.00","2","2","1","0","0","Exclusive","3","0","1","0","","","1","","0","1","1","0","1","2024-12-23 10:03:32","1","2024-08-20 11:35:00");
INSERT INTO products VALUES("121","Loyal Howe","xf57DIDGMK","19653956","","76204","152408","0.00","0","0","0","0","2","Exclusive","","84","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:04","1","2025-01-15 22:52:04");
INSERT INTO products VALUES("122","Ima Denesik","WjbrC34C4S","99590488","","95297","190594","0.00","0","0","0","0","1","Exclusive","","61","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:04","1","2025-01-15 22:52:04");
INSERT INTO products VALUES("123","Carrie Gerlach","SJdqp5NzjX","74875945","","67647","135294","0.00","0","0","0","0","6","Exclusive","","79","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:04","1","2025-01-15 22:52:04");
INSERT INTO products VALUES("124","Ms. Katrina Greenfelder IV","RASVxD4mDV","94622745","","81989","163978","0.00","0","0","0","0","3","Exclusive","","33","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:04","1","2025-01-15 22:52:04");
INSERT INTO products VALUES("125","Coleman Rippin","T8qg6rXeia","75850858","","98770","197540","0.00","0","0","0","0","6","Exclusive","","42","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:04","1","2025-01-15 22:52:04");
INSERT INTO products VALUES("126","Novella Cruickshank","LtoEIgTBup","95948280","","99448","198896","0.00","0","0","0","0","6","Exclusive","","84","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:04","1","2025-01-15 22:52:04");
INSERT INTO products VALUES("127","Ken Murray","xi1jVGzLMq","25522512","","12017","24034","0.00","0","0","0","0","6","Exclusive","","76","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:04","1","2025-01-15 22:52:04");
INSERT INTO products VALUES("128","Dr. Therese Zulauf","XC7zBrsIy7","88686068","","39268","78536","0.00","0","0","0","0","4","Exclusive","","68","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:04","1","2025-01-15 22:52:04");
INSERT INTO products VALUES("129","Ellie Bahringer","heGrS9KsTQ","78452140","","98017","196034","0.00","0","0","0","0","2","Exclusive","","80","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:04","1","2025-01-15 22:52:04");
INSERT INTO products VALUES("130","Ronny Hayes","17hNUXF0bd","39963872","","94562","189124","0.00","0","0","0","0","1","Exclusive","","51","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:04","1","2025-01-15 22:52:04");
INSERT INTO products VALUES("131","Edmond Heller","gGUIYT4zdK","38766311","","58966","117932","0.00","0","0","0","0","2","Exclusive","","17","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:04","1","2025-01-15 22:52:04");
INSERT INTO products VALUES("132","Michaela Watsica","RgIfOkH4rf","82016670","","91236","182472","0.00","0","0","0","0","2","Exclusive","","47","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:04","1","2025-01-15 22:52:04");
INSERT INTO products VALUES("133","Torrance Oberbrunner","TiqMA4l6IJ","24383591","","82491","164982","0.00","0","0","0","0","6","Exclusive","","60","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:04","1","2025-01-15 22:52:04");
INSERT INTO products VALUES("134","Ashley Donnelly","HnGRPGfTyk","27796240","","65364","130728","0.00","0","0","0","0","4","Exclusive","","42","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:04","1","2025-01-15 22:52:04");
INSERT INTO products VALUES("135","Miss Hallie Champlin","1JsVPzMtwV","46971077","","27356","54712","0.00","0","0","0","0","3","Exclusive","","79","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:04","1","2025-01-15 22:52:04");
INSERT INTO products VALUES("136","Conrad Howe Jr.","msipf1ltAC","97725768","","26472","52944","0.00","0","0","0","0","1","Exclusive","","21","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:04","1","2025-01-15 22:52:04");
INSERT INTO products VALUES("137","Mr. Thomas Rosenbaum","dn1HqWGYlR","77877370","","28808","57616","0.00","0","0","0","0","2","Exclusive","","62","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:04","1","2025-01-15 22:52:04");
INSERT INTO products VALUES("138","Judah Reichel","wvC9xruXAH","82754350","","41097","82194","0.00","0","0","0","0","2","Exclusive","","86","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:04","1","2025-01-15 22:52:04");
INSERT INTO products VALUES("139","Karlie Thompson","ldcCS7eTJO","48989879","","68347","136694","0.00","0","0","0","0","3","Exclusive","","34","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:04","1","2025-01-15 22:52:04");
INSERT INTO products VALUES("140","Rosendo Schneider DVM","BFRFgKXzHX","92381336","","67649","135298","0.00","0","0","0","0","6","Exclusive","","42","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:04","1","2025-01-15 22:52:04");
INSERT INTO products VALUES("141","Prof. Uriah Berge","TkroQ6Vg8X","46776889","","27325","54650","0.00","0","0","0","0","4","Exclusive","","22","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:04","1","2025-01-15 22:52:04");
INSERT INTO products VALUES("142","Presley Kulas MD","J081vpgUtc","96370448","","84877","169754","0.00","0","0","0","0","6","Exclusive","","27","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:04","1","2025-01-15 22:52:04");
INSERT INTO products VALUES("143","Mrs. Haylie Wilderman","07qHIa9D5o","32230523","","60660","121320","0.00","0","0","0","0","6","Exclusive","","65","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:04","1","2025-01-15 22:52:04");
INSERT INTO products VALUES("144","Ms. Zoey Rath","XVnOxpglbK","44087632","","90528","181056","0.00","0","0","0","0","6","Exclusive","","56","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:04","1","2025-01-15 22:52:04");
INSERT INTO products VALUES("145","Harry Abshire","38kmg6RdUv","88581934","","99426","198852","0.00","0","0","0","0","2","Exclusive","","12","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:04","1","2025-01-15 22:52:04");
INSERT INTO products VALUES("146","Cleveland Bins","A7UeW6gfUx","79284805","","15608","31216","0.00","0","0","0","0","1","Exclusive","","79","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:04","1","2025-01-15 22:52:04");
INSERT INTO products VALUES("147","Prof. Alexzander Torp","9YWor3G2QS","83038581","","31261","62522","0.00","0","0","0","0","2","Exclusive","","76","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:04","1","2025-01-15 22:52:04");
INSERT INTO products VALUES("148","Melany Walter","BFiegHaqf9","21249427","","61911","123822","0.00","0","0","0","0","3","Exclusive","","40","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:04","1","2025-01-15 22:52:04");
INSERT INTO products VALUES("149","Missouri Lebsack","bzsfl3auXk","83724396","","69878","139756","0.00","0","0","0","0","1","Exclusive","","55","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:04","1","2025-01-15 22:52:04");
INSERT INTO products VALUES("150","Kayli Russel","amRgwgoUBt","93536513","","87993","175986","0.00","0","0","0","0","2","Exclusive","","92","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:05","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("151","Cecilia Hickle","lpNb182PAd","58849662","","67374","134748","0.00","0","0","0","0","5","Exclusive","","49","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:05","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("152","Earlene Corwin","GsihS3cfOc","97932284","","73367","146734","0.00","0","0","0","0","3","Exclusive","","28","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:05","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("153","Neva Barton V","Ev3ojrcXc4","58614678","","51536","103072","0.00","0","0","0","0","5","Exclusive","","55","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:05","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("154","Forest Murphy","1sLrdxzcSi","77558088","","83795","167590","0.00","0","0","0","0","2","Exclusive","","18","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:05","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("155","Prof. Grayce O\'Keefe","o2bQVEzNxK","28375940","","19721","39442","0.00","0","0","0","0","1","Exclusive","","50","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:05","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("156","Domenica Hettinger","2KO0wtQsRE","62235969","","68174","136348","0.00","0","0","0","0","6","Exclusive","","73","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:05","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("157","Russ Schultz Sr.","TP80zqcpPS","14592175","","90224","180448","0.00","0","0","0","0","3","Exclusive","","31","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:05","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("158","Tony Wehner","GUfVjeq0PD","95963512","","25875","51750","0.00","0","0","0","0","6","Exclusive","","82","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:05","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("159","Alaina Eichmann II","xRCmWFySdG","49041854","","36948","73896","0.00","0","0","0","0","6","Exclusive","","82","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:05","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("160","Dr. Tyrel Bergstrom","cWoSxMmCde","13289369","","67927","135854","0.00","0","0","0","0","1","Exclusive","","35","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:05","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("161","Ms. Maybell Franecki III","TrQzMvnEjV","12383971","","21300","42600","0.00","0","0","0","0","4","Exclusive","","76","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:05","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("162","Mario Mertz","VQvkqcyRPv","20727927","","86377","172754","0.00","0","0","0","0","2","Exclusive","","51","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:05","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("163","Jocelyn Douglas","UwHJZP4arj","97317451","","76601","153202","0.00","0","0","0","0","2","Exclusive","","67","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:05","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("164","Dr. Gust Dietrich Sr.","P1yf2o9QPF","43817697","","42222","84444","0.00","0","0","0","0","6","Exclusive","","46","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:05","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("165","Leonard Torphy","Hh6gWzUp2w","61552610","","88173","176346","0.00","0","0","0","0","3","Exclusive","","92","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:05","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("166","Orin Goyette","xHzVtslFcU","79412826","","64977","129954","0.00","0","0","0","0","2","Exclusive","","81","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:05","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("167","Rafael Hilpert","OlPbZL0SSP","80608427","","66035","132070","0.00","0","0","0","0","2","Exclusive","","55","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:05","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("168","Edythe Orn V","yq1skcB8fd","48129094","","35164","70328","0.00","0","0","0","0","6","Exclusive","","99","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:05","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("169","Jaren Boyer","Ku8nKJq8ol","16963471","","40043","80086","0.00","0","0","0","0","2","Exclusive","","73","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:05","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("170","Mr. Arthur Cronin I","43iWbioxCL","68721655","","24741","49482","0.00","0","0","0","0","3","Exclusive","","84","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:05","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("171","Lolita Stehr","q7SKDOYdRE","34418911","","61679","123358","0.00","0","0","0","0","2","Exclusive","","44","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:05","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("172","Maggie Murazik","Pr6FtRr4LQ","31931762","","29204","58408","0.00","0","0","0","0","4","Exclusive","","75","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:05","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("173","Jamir Cole MD","WosNWsPjQP","70699321","","62347","124694","0.00","0","0","0","0","2","Exclusive","","53","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:05","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("174","Pauline Grady","07lzpD7fQJ","96032010","","78409","156818","0.00","0","0","0","0","6","Exclusive","","27","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:05","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("175","Darrell Reynolds","a0zcaJY3aR","78825899","","24860","49720","0.00","0","0","0","0","4","Exclusive","","52","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:05","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("176","Prof. Donny Jacobson","alWfSrwTng","84002178","","88482","176964","0.00","0","0","0","0","3","Exclusive","","37","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:05","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("177","Gwendolyn Gorczany","c09E6NuSkc","36149996","","43699","87398","0.00","0","0","0","0","1","Exclusive","","66","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:05","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("178","Rae Dibbert","9oefM7oilo","16778846","","77065","154130","0.00","0","0","0","0","5","Exclusive","","33","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:05","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("179","Joany Boehm V","lCSMJOAptT","26567840","","85582","171164","0.00","0","0","0","0","1","Exclusive","","44","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:05","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("180","Nikko Jenkins","1io9wgKpQ1","36283634","","76499","152998","0.00","0","0","0","0","1","Exclusive","","31","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:05","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("181","Miss Lurline Kuphal PhD","AuOB60rCSK","35073473","","34522","69044","0.00","0","0","0","0","2","Exclusive","","39","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:05","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("182","Blaze Gaylord","Cc7MsISRWz","17510371","","86392","172784","0.00","0","0","0","0","5","Exclusive","","23","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:05","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("183","Elise Senger","Rcz9byHjIC","87692529","","19269","38538","0.00","0","0","0","0","5","Exclusive","","92","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:05","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("184","Cassandre Mosciski","7WflpkLfQP","26877991","","94723","189446","0.00","0","0","0","0","2","Exclusive","","42","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:05","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("185","Kathryne Hane DDS","6NLHYyupek","94921416","","67893","135786","0.00","0","0","0","0","2","Exclusive","","27","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:05","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("186","Erin Green","JVFf1q8MCo","16211752","","39636","79272","0.00","0","0","0","0","6","Exclusive","","14","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:05","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("187","Josh McDermott","Ty1eJlTFVo","29878644","","13885","27770","0.00","0","0","0","0","4","Exclusive","","97","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:05","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("188","Prof. Isobel Treutel","FHu5TjUyk2","36479949","","25986","51972","0.00","0","0","0","0","3","Exclusive","","80","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:05","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("189","Danial Stanton","AjgFlUkhKU","76174644","","33605","67210","0.00","0","0","0","0","2","Exclusive","","16","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:05","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("190","Eldridge McGlynn","lpXHrLY7fu","50319849","","92170","184340","0.00","0","0","0","0","3","Exclusive","","58","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:05","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("191","Evans Farrell","aiz6Px2nZ1","83559327","","55222","110444","0.00","0","0","0","0","4","Exclusive","","13","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:05","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("192","Mrs. Larissa Yundt","LBfHfSakeg","30836993","","53445","106890","0.00","0","0","0","0","4","Exclusive","","94","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:05","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("193","Dr. Jordan Schoen","skLXqoqwYR","57003862","","65626","131252","0.00","0","0","0","0","6","Exclusive","","46","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:05","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("194","Garnet Senger II","YlhpKlvycg","95062259","","15266","30532","0.00","0","0","0","0","2","Exclusive","","88","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:05","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("195","Kaci Fay","2rhr5rMnlg","42714190","","97359","194718","0.00","0","0","0","0","3","Exclusive","","34","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:05","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("196","Prof. Kristoffer Mann","mUN8NH8mtl","80651553","","77315","154630","0.00","0","0","0","0","4","Exclusive","","62","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:05","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("197","Mr. Louvenia Bartoletti","eThe2j29Bo","66537495","","66865","133730","0.00","0","0","0","0","3","Exclusive","","42","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:05","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("198","Marlee Kessler","wWX6yNjdWU","21420529","","78083","156166","0.00","0","0","0","0","1","Exclusive","","54","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:05","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("199","Al Pouros","cLSySXTeTy","29108016","","83516","167032","0.00","0","0","0","0","2","Exclusive","","54","1","0","","","1","","0","1","2","0","2","2025-01-15 23:00:16","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("200","Dr. Howell Hegmann MD","yBW7ZvPKdd","29893416","","90458","180916","0.00","0","0","0","0","2","Exclusive","","27","1","0","","","1","","0","1","2","0","2","2025-02-01 22:36:15","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("201","Dr. Bella Schumm II","2fmCZICslx","25088885","","70452","140904","0.00","0","0","0","0","4","Exclusive","","23","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:05","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("202","Mr. Maximo Kiehn","85955toYIk","25652278","","78325","156650","0.00","0","0","0","0","5","Exclusive","","34","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:05","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("203","Katharina Dickens","3MeN2frILy","17861458","","42907","85814","0.00","0","0","0","0","5","Exclusive","","79","1","0","","","1","","0","1","2","0","2","2025-02-01 22:36:15","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("204","Dr. Lyla Kutch MD","AKorGBNzSG","32547494","","57081","114162","0.00","0","0","0","0","5","Exclusive","","25","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:05","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("205","Dr. Emil Beer","zbvqqxzYHO","79962534","","40630","81260","0.00","0","0","0","0","6","Exclusive","","96","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:05","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("206","Maurine Grimes MD","TZ5YOV6ENZ","83122937","","31563","63126","0.00","0","0","0","0","6","Exclusive","","88","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:05","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("207","Miss Madaline Fisher","zhYZ1OPJwY","51716912","","44013","88026","0.00","0","0","0","0","2","Exclusive","","55","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:05","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("208","Miss Emmie Bogan","yogyi3kI3D","90224953","","19739","39478","0.00","0","0","0","0","1","Exclusive","","20","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:05","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("209","Angelo Stiedemann","hV6xJ2ZHHR","84601746","","81439","162878","0.00","0","0","0","0","1","Exclusive","","64","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:05","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("210","Wilfredo Labadie DVM","xZU281GTTQ","88887457","","92531","185062","0.00","0","0","0","0","4","Exclusive","","99","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:05","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("211","Dr. Leopoldo Block","y0948QzEvA","80709622","","60915","121830","0.00","0","0","0","0","1","Exclusive","","15","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:05","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("212","Gay Fay","3q1nI6m7tj","52134951","","52942","105884","0.00","0","0","0","0","1","Exclusive","","88","1","0","","","1","","0","1","2","0","2","2025-02-01 22:41:26","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("213","Grant Schmidt PhD","FD5QVJbPOF","81818755","","30053","60106","0.00","0","0","0","0","4","Exclusive","","63","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:05","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("214","Effie Reynolds DDS","qMEqOLLGO6","98250324","","97072","194144","0.00","0","0","0","0","3","Exclusive","","78","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:05","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("215","Sterling Jast DVM","nxm8dhg4a7","87033348","","41448","82896","0.00","0","0","0","0","5","Exclusive","","81","1","0","","","1","","0","1","2","0","2","2025-02-01 22:41:26","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("216","Ms. Maximillia Schulist","b3UGA8kegx","96288245","","90453","180906","0.00","0","0","0","0","2","Exclusive","","36","1","0","","","1","","0","1","2","0","2","2025-02-01 22:36:15","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("217","Nicholas Streich","ZvPJl3Xszt","79482851","","56881","113762","0.00","0","0","0","0","5","Exclusive","","12","1","0","","","1","","0","1","2","0","2","2025-01-15 22:52:05","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("218","Leanna Kreiger","30lElrIVjF","92267481","","72619","145238","0.00","0","0","0","0","1","Exclusive","","58","1","0","","","1","","0","1","2","0","2","2025-01-19 21:03:03","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("219","Oceane Nicolas","mzllEDdug4","99920598","","96372","192744","0.00","0","0","0","0","1","Exclusive","","91","1","0","","","1","","0","1","2","0","2","2025-02-01 22:37:14","1","2025-01-15 22:52:05");
INSERT INTO products VALUES("220","Mrs. Vanessa Berge I","i1TWGLB2cl","22117112","","34587","69174","0.00","0","0","0","0","2","Exclusive","","31","1","0","","","1","","0","1","2","0","2","2025-02-01 13:18:57","1","2025-01-15 22:52:05");



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
  `status` int(11) NOT NULL DEFAULT 1,
  `dateAdded` varchar(20) NOT NULL,
  PRIMARY KEY (`profitReportId`)
) ENGINE=InnoDB AUTO_INCREMENT=376 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;




DROP TABLE IF EXISTS purchase_orders;

CREATE TABLE `purchase_orders` (
  `purchaseOrderId` int(11) NOT NULL AUTO_INCREMENT,
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
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`purchaseOrderId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO purchase_orders VALUES("1","1","Test Purchase Orders","","1","2024-07-20","1","[{\"productId\":100,\"heading\":\"Eldora Hackett III\",\"model\":\"EtfkfhSgZJ\",\"barcode\":98321009,\"cost\":\"2000\",\"price\":57848,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":\"1\",\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":\"3\",\"subtract\":0,\"changePriceDuringBilling\":1,\"image\":null,\"relatedImage\":\"\\\"\\\"\",\"showInPos\":1,\"productType\":\"Product\",\"softDelete\":0,\"storeId\":1,\"userId\":1,\"updatedBy\":1,\"insertedBy\":2,\"dateUpdated\":\"2024-07-20 14:19:57\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:30\",\"taxHeading\":\"CGST 2.5%\",\"taxPercent\":2.5,\"taxExclusiveValue\":150,\"taxInclusiveValue\":0,\"tax\":150,\"basePriceCost\":\"2000\",\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":6000,\"rewardPoints\":100}]","3","Test Purchas order","6000","150.00","6150","0","1","1","0","1","2024-07-20 15:21:16","1","1","2024-07-20 14:29:12");



DROP TABLE IF EXISTS purchases;

CREATE TABLE `purchases` (
  `purchaseId` int(11) NOT NULL AUTO_INCREMENT,
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
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`purchaseId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO purchases VALUES("1","1","Purchase Heading","","1","2024-04-12","1","[
    {
        \"productId\": 100,
        \"heading\": \"Eldora Hackett III\",
        \"model\": \"EtfkfhSgZJ\",
        \"barcode\": 98321008,
        \"cost\": 28924,
        \"price\": 57848,
        \"percent\": 0,
        \"manufacturerId\": 1,
        \"categoryId\": 1,
        \"vendorId\": 1,
        \"unitId\": 1,
        \"taxId\": 5,
        \"taxType\": \"Inclusive\",
        \"quantity\": 1,
        \"subtract\": 0,
        \"image\": null,
        \"relatedImage\": \"\\\"\\\"\",
        \"showInPos\": 1,
        \"softDelete\": 0,
        \"storeId\": 1,
        \"userId\": 2,
        \"updatedBy\": 2,
        \"insertedBy\": 2,
        \"dateUpdated\": \"2024-04-01 16:52:19\",
        \"status\": 1,
        \"dateAdded\": \"2024-03-31 16:26:30\",
        \"taxHeading\": \"GST 28%\",
        \"taxPercent\": 28,
        \"taxExclusiveValue\": 0,
        \"taxInclusiveValue\": 6327.125,
        \"tax\": 6327.125,
        \"basePriceCost\": 22596.875,
        \"discount\": 0,
        \"discountValue\": 0,
        \"extraInformation\": \"\",
        \"total\": 28924,
        \"rewardPoints\": 2892.4
    },
    {
        \"productId\": 101,
        \"heading\": \"Nimbus 3000\",
        \"model\": \"NimbusZ\",
        \"barcode\": 98321009,
        \"cost\": 35000,
        \"price\": 70000,
        \"percent\": 0,
        \"manufacturerId\": 2,
        \"categoryId\": 2,
        \"vendorId\": 2,
        \"unitId\": 2,
        \"taxId\": 6,
        \"taxType\": \"Inclusive\",
        \"quantity\": 2,
        \"subtract\": 0,
        \"image\": null,
        \"relatedImage\": \"\\\"\\\"\",
        \"showInPos\": 1,
        \"softDelete\": 0,
        \"storeId\": 1,
        \"userId\": 3,
        \"updatedBy\": 3,
        \"insertedBy\": 3,
        \"dateUpdated\": \"2024-04-02 16:52:19\",
        \"status\": 1,
        \"dateAdded\": \"2024-04-01 16:26:30\",
        \"taxHeading\": \"GST 18%\",
        \"taxPercent\": 18,
        \"taxExclusiveValue\": 0,
        \"taxInclusiveValue\": 10000,
        \"tax\": 10000,
        \"basePriceCost\": 29500,
        \"discount\": 0,
        \"discountValue\": 0,
        \"extraInformation\": \"\",
        \"total\": 35000,
        \"rewardPoints\": 3500.0
    },
    {
        \"productId\": 102,
        \"heading\": \"Time Turner\",
        \"model\": \"TTurner\",
        \"barcode\": 98321010,
        \"cost\": 15000,
        \"price\": 30000,
        \"percent\": 0,
        \"manufacturerId\": 3,
        \"categoryId\": 3,
        \"vendorId\": 3,
        \"unitId\": 3,
        \"taxId\": 7,
        \"taxType\": \"Exclusive\",
        \"quantity\": 1,
        \"subtract\": 0,
        \"image\": null,
        \"relatedImage\": \"\\\"\\\"\",
        \"showInPos\": 1,
        \"softDelete\": 0,
        \"storeId\": 1,
        \"userId\": 4,
        \"updatedBy\": 4,
        \"insertedBy\": 4,
        \"dateUpdated\": \"2024-04-03 16:52:19\",
        \"status\": 1,
        \"dateAdded\": \"2024-04-02 16:26:30\",
        \"taxHeading\": \"GST 12%\",
        \"taxPercent\": 12,
        \"taxExclusiveValue\": 0,
        \"taxInclusiveValue\": 3600,
        \"tax\": 3600,
        \"basePriceCost\": 12000,
        \"discount\": 0,
        \"discountValue\": 0,
        \"extraInformation\": \"\",
        \"total\": 15000,
        \"rewardPoints\": 1500.0
    },
    {
        \"productId\": 103,
        \"heading\": \"Invisibility Cloak\",
        \"model\": \"InvisCloak\",
        \"barcode\": 98321011,
        \"cost\": 50000,
        \"price\": 100000,
        \"percent\": 0,
        \"manufacturerId\": 4,
        \"categoryId\": 4,
        \"vendorId\": 4,
        \"unitId\": 4,
        \"taxId\": 8,
        \"taxType\": \"Inclusive\",
        \"quantity\": 1,
        \"subtract\": 0,
        \"image\": null,
        \"relatedImage\": \"\\\"\\\"\",
        \"showInPos\": 1,
        \"softDelete\": 0,
        \"storeId\": 1,
        \"userId\": 5,
        \"updatedBy\": 5,
        \"insertedBy\": 5,
        \"dateUpdated\": \"2024-04-04 16:52:19\",
        \"status\": 1,
        \"dateAdded\": \"2024-04-03 16:26:30\",
        \"taxHeading\": \"GST 28%\",
        \"taxPercent\": 28,
        \"taxExclusiveValue\": 0,
        \"taxInclusiveValue\": 14000,
        \"tax\": 14000,
        \"basePriceCost\": 45000,
        \"discount\": 0,
        \"discountValue\": 0,
        \"extraInformation\": \"\",
        \"total\": 50000,
        \"rewardPoints\": 5000.0
    }
]
","1","","28924","6327.12","28924","1","1","1","0","1","2024-10-06 14:00:27","1","1","2024-04-12 11:08:46");
INSERT INTO purchases VALUES("2","2","Purchase Heading 2","","1","2024-04-11","1","[{\"productId\":99,\"heading\":\"Angel Hills\",\"model\":\"q8qHbH3aUV\",\"barcode\":19919785,\"cost\":92186,\"price\":184372,\"percent\":0,\"manufacturerId\":0,\"categoryId\":0,\"vendorId\":0,\"unitId\":0,\"taxId\":4,\"taxType\":\"Exclusive\",\"hsnCode\":\"\",\"quantity\":1,\"subtract\":1,\"changePriceDuringBilling\":0,\"image\":null,\"relatedImage\":\"\",\"showInPos\":1,\"softDelete\":0,\"storeId\":1,\"userId\":2,\"updatedBy\":0,\"insertedBy\":2,\"dateUpdated\":\"2024-04-01 16:52:19\",\"status\":1,\"dateAdded\":\"2024-03-31 16:26:29\",\"taxHeading\":\"GST 18%\",\"taxPercent\":18,\"taxExclusiveValue\":16593.48,\"taxInclusiveValue\":0,\"tax\":16593.48,\"basePriceCost\":92186,\"discount\":0,\"discountValue\":0,\"extraInformation\":\"\",\"total\":92186,\"rewardPoints\":9218.6}]","1","","92186","16593.48","108779","1","1","1","0","1","2024-10-06 16:47:35","1","1","2024-10-07 12:48:28");



DROP TABLE IF EXISTS reward_otp;

CREATE TABLE `reward_otp` (
  `rewardOtpId` int(11) NOT NULL AUTO_INCREMENT,
  `customerId` int(11) NOT NULL,
  `orderId` int(11) NOT NULL,
  `otp` text NOT NULL,
  `storeId` int(11) NOT NULL,
  `otpToken` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`rewardOtpId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO reward_otp VALUES("1","102","0","294992","1","kaS0Ldn7DeLk0OyeZqsUmJBC4qrmPEm7tukyKWiFkpBTQtErWo","1","2024-04-19 10:11:09");
INSERT INTO reward_otp VALUES("2","102","0","550918","1","aduvIlaphoNemRVuqSq2BlQ6TdRDNAtJyqLxECfUIj2VtbFOzI","1","2024-04-19 10:11:38");
INSERT INTO reward_otp VALUES("3","102","0","287040","1","0M6RUpzAZzhLNKL9FncZsjekypFZQ7ENs0oxHjOPBCphnJTQRO","1","2024-04-19 10:12:34");
INSERT INTO reward_otp VALUES("4","102","0","63799","1","LcD44LxXJX5k9ZsKH6HGKjvSJxc1Y8BaHPtZz7VPY3oB3sHVoR","1","2024-04-19 10:13:22");
INSERT INTO reward_otp VALUES("5","102","0","814840","1","lqsuJMrrezkdd3LiPcO65zhocaoiJWqoYhQWUTsPXUh1Y603Nm","1","2024-04-19 10:22:28");
INSERT INTO reward_otp VALUES("6","102","0","858158","1","aDL3sqmgqlF5KOT4dKJnbgAAPWm8ywbRWUfFkaGWiwuYmYnbHp","1","2024-04-19 10:24:30");
INSERT INTO reward_otp VALUES("7","102","0","221853","1","R8Zwfpkt9aU9WNm62PMuDNQQYCKiVj3Y5smwliL32PpuqycBrY","1","2024-04-19 10:28:06");
INSERT INTO reward_otp VALUES("8","102","0","899388","1","e56OSxTlAZGyj8Tp8kLKlKdx2KmGBjxB6fnLiFD9EB0Qu348FH","1","2024-04-19 10:29:44");
INSERT INTO reward_otp VALUES("9","102","0","677318","1","SACXziKIPSUgAd4aSPojBYvWJLQxSS75z8g384c7t4jnqkp91K","1","2024-04-19 10:30:54");
INSERT INTO reward_otp VALUES("10","102","11","205791","1","DHxD5c0UkMz4MlweyCnTFvhenHmtp1z9e0YjnIEvXjd1nlZ8bC","1","2024-04-19 10:31:48");



DROP TABLE IF EXISTS reward_otp_skip_reason;

CREATE TABLE `reward_otp_skip_reason` (
  `rewardOtpSkipReasonId` int(11) NOT NULL AUTO_INCREMENT,
  `customerId` int(11) NOT NULL,
  `orderId` int(11) NOT NULL,
  `reason` text NOT NULL,
  `storeId` int(11) NOT NULL,
  `skipOtpToken` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`rewardOtpSkipReasonId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO reward_otp_skip_reason VALUES("1","1","0","fgd","1","","1","2024-04-19 09:36:06");
INSERT INTO reward_otp_skip_reason VALUES("2","1","0","asdf","1","","1","2024-04-19 09:36:29");
INSERT INTO reward_otp_skip_reason VALUES("3","102","0","testing","1","","1","2024-04-19 09:39:56");
INSERT INTO reward_otp_skip_reason VALUES("4","102","10","This is a test Skipi","1","QL3TOUx5SOdnRxaVVWizNb8GPVxtLWOeUVrk10goiyW2drCWPS","1","2024-04-19 09:50:20");
INSERT INTO reward_otp_skip_reason VALUES("5","102","0","asdasd","1","jLq47lU4U3BWMS5J8nfmlqof5O9Jyj3IqIaVNppGoZcS33eYbQ","1","2024-05-01 13:10:51");
INSERT INTO reward_otp_skip_reason VALUES("6","102","28","asdas","1","hOOgCsP9VxZrBS7W3GkXYJmdZxwTSEtcEfOqo6urLTvA7T4IaU","1","2024-05-01 13:14:52");
INSERT INTO reward_otp_skip_reason VALUES("7","102","0","Sk","1","3B38d90dVev133DtDwQE0jR09GOkX0hsKqOymbhu9z4iCCIxP0","1","2024-05-01 13:45:13");



DROP TABLE IF EXISTS roles;

CREATE TABLE `roles` (
  `roleId` int(11) NOT NULL AUTO_INCREMENT,
  `heading` varchar(50) NOT NULL,
  `permission` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `insertedBy` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`roleId`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO roles VALUES("1","Super Administrator","{\"view\":[\"1\",\"28\",\"78\",\"84\",\"29\",\"36\",\"77\",\"37\",\"38\",\"39\",\"79\",\"35\",\"51\",\"8\",\"19\",\"31\",\"42\",\"47\",\"48\",\"63\",\"69\",\"70\",\"30\",\"76\",\"43\",\"45\",\"65\",\"66\",\"57\",\"56\",\"58\",\"24\",\"25\",\"26\",\"27\",\"60\",\"82\",\"83\",\"53\",\"55\",\"61\",\"67\",\"68\",\"71\",\"72\",\"5\",\"6\",\"21\",\"2\",\"75\",\"81\",\"4\",\"9\",\"12\",\"22\",\"23\",\"32\",\"33\",\"34\",\"44\",\"46\",\"49\",\"50\",\"54\",\"64\",\"13\",\"11\",\"20\"],\"edit\":[\"1\",\"28\",\"78\",\"84\",\"29\",\"36\",\"77\",\"37\",\"38\",\"39\",\"79\",\"35\",\"51\",\"8\",\"19\",\"31\",\"42\",\"47\",\"48\",\"63\",\"69\",\"70\",\"30\",\"76\",\"43\",\"45\",\"65\",\"66\",\"57\",\"56\",\"58\",\"24\",\"25\",\"26\",\"27\",\"60\",\"82\",\"83\",\"53\",\"55\",\"61\",\"67\",\"68\",\"71\",\"72\",\"5\",\"6\",\"21\",\"2\",\"75\",\"81\",\"4\",\"9\",\"12\",\"22\",\"23\",\"32\",\"33\",\"34\",\"44\",\"46\",\"49\",\"50\",\"54\",\"64\",\"13\",\"11\",\"20\"]}","1","1");
INSERT INTO roles VALUES("2","Pos Owner","{\"view\":[\"1\",\"28\",\"78\",\"29\",\"36\",\"77\",\"37\",\"38\",\"39\",\"79\",\"35\",\"51\",\"8\",\"31\",\"42\",\"47\",\"48\",\"63\",\"69\",\"70\",\"30\",\"76\",\"43\",\"45\",\"65\",\"66\",\"57\",\"56\",\"58\",\"60\",\"82\",\"83\",\"53\",\"55\",\"61\",\"67\",\"68\",\"71\",\"72\",\"5\",\"6\"],\"edit\":[\"1\",\"28\",\"78\",\"29\",\"36\",\"77\",\"37\",\"38\",\"39\",\"79\",\"35\",\"51\",\"8\",\"31\",\"42\",\"47\",\"48\",\"63\",\"69\",\"70\",\"30\",\"76\",\"43\",\"45\",\"65\",\"66\",\"57\",\"56\",\"58\",\"60\",\"82\",\"83\",\"53\",\"55\",\"61\",\"67\",\"68\",\"71\",\"72\",\"5\",\"6\"]}","1","1");
INSERT INTO roles VALUES("3","Pos User","{\"view\":[\"1\",\"28\",\"78\",\"29\",\"36\",\"77\",\"37\",\"38\",\"39\",\"79\",\"35\",\"51\",\"8\",\"31\",\"63\",\"69\",\"70\",\"30\",\"43\",\"52\",\"65\",\"57\",\"56\",\"58\",\"25\",\"26\",\"27\",\"82\",\"83\",\"53\",\"55\",\"5\",\"6\",\"2\",\"9\",\"32\",\"33\",\"34\"],\"edit\":[\"1\",\"28\",\"78\",\"29\",\"36\",\"77\",\"37\",\"38\",\"39\",\"79\",\"35\",\"51\",\"8\",\"31\",\"63\",\"69\",\"70\",\"30\",\"43\",\"52\",\"65\",\"57\",\"56\",\"58\",\"25\",\"26\",\"27\",\"82\",\"83\",\"53\",\"55\",\"5\",\"6\",\"2\",\"9\",\"32\",\"33\",\"34\"]}","1","1");



DROP TABLE IF EXISTS seating_tables;

CREATE TABLE `seating_tables` (
  `seatingTableId` int(11) NOT NULL AUTO_INCREMENT,
  `heading` varchar(50) NOT NULL,
  `capacity` int(11) NOT NULL,
  `storeId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
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
  `status` int(11) NOT NULL DEFAULT 1,
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
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`settingId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

INSERT INTO settings VALUES("1","Admin Panel","public/assets/uploads/705853563.png","1024000","1024000","Admin Panel","Admin Panel","Admin Panel","pkv172019@gmail.com","","","","6678bd56cba1c932705fcec18ddf06f0","4f1c0a54fb8f4fc9bd8670abb8311ceb","sehrawat899@gmail.com","Priyavrat","#","#","#","#","0","0","ContactAgent","customerGroupId-heading-customer_group,customerId-name-customers,propertyId-heading-properties,cityId-heading-cities,stateId-heading-states,countryId-heading-countries,paymentId-name-payments","","customer_group,vendors,customers,manufacturers,products,seating_tables,employees,store_payments,purchases","2","1","3","9","c22f33b373fa2561c2bd7bc93ae6e3ee","1","1");



DROP TABLE IF EXISTS states;

CREATE TABLE `states` (
  `stateId` int(11) NOT NULL AUTO_INCREMENT,
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
  `status` int(11) NOT NULL,
  PRIMARY KEY (`stateId`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO states VALUES("1","ANDHRA PRADESH","2","0","","","0","0","2024-07-25 10:15:18","0","2024-05-18 10:54:55","1");
INSERT INTO states VALUES("2","ASSAM","1","0","","","0","0","2024-07-25 10:15:20","0","2024-05-18 10:54:55","1");
INSERT INTO states VALUES("3","ARUNACHAL PRADESH","1","0","","","0","0","2024-05-18 10:54:55","0","2024-05-18 10:54:55","0");
INSERT INTO states VALUES("4","BIHAR","1","0","","","0","0","2024-05-18 10:54:55","0","2024-05-18 10:54:55","0");
INSERT INTO states VALUES("5","GUJRAT","1","0","","","0","0","2024-05-18 10:54:55","0","2024-05-18 10:54:55","0");
INSERT INTO states VALUES("6","HARYANA","1","0","","","0","0","2024-05-18 10:54:55","0","2024-05-18 10:54:55","0");
INSERT INTO states VALUES("7","HIMACHAL PRADESH","1","0","","","0","0","2024-05-18 10:54:55","0","2024-05-18 10:54:55","0");
INSERT INTO states VALUES("8","JAMMU & KASHMIR","1","0","","","0","0","2024-05-18 10:54:55","0","2024-05-18 10:54:55","0");
INSERT INTO states VALUES("9","KARNATAKA","1","0","","","0","0","2024-05-18 10:54:55","0","2024-05-18 10:54:55","0");
INSERT INTO states VALUES("10","KERALA","1","0","","","0","0","2024-05-18 10:54:55","0","2024-05-18 10:54:55","0");
INSERT INTO states VALUES("11","MADHYA PRADESH","1","0","","","0","0","2024-05-18 10:54:55","0","2024-05-18 10:54:55","0");
INSERT INTO states VALUES("12","MAHARASHTRA","1","0","","","0","0","2024-05-18 10:54:55","0","2024-05-18 10:54:55","0");
INSERT INTO states VALUES("13","MANIPUR","1","0","","","0","0","2024-05-18 10:54:55","0","2024-05-18 10:54:55","0");
INSERT INTO states VALUES("14","MEGHALAYA","1","0","","","0","0","2024-05-18 10:54:55","0","2024-05-18 10:54:55","0");
INSERT INTO states VALUES("15","MIZORAM","1","0","","","0","0","2024-05-18 10:54:55","0","2024-05-18 10:54:55","0");
INSERT INTO states VALUES("16","NAGALAND","1","0","","","0","0","2024-05-18 10:54:55","0","2024-05-18 10:54:55","0");
INSERT INTO states VALUES("17","ORISSA","1","0","","","0","0","2024-05-18 10:54:55","0","2024-05-18 10:54:55","0");
INSERT INTO states VALUES("18","PUNJAB","1","0","","","0","0","2024-05-18 10:54:55","0","2024-05-18 10:54:55","0");
INSERT INTO states VALUES("19","RAJASTHAN","1","0","","","0","0","2024-05-18 10:54:55","0","2024-05-18 10:54:55","0");
INSERT INTO states VALUES("20","SIKKIM","1","0","","","0","0","2024-05-18 10:54:55","0","2024-05-18 10:54:55","0");
INSERT INTO states VALUES("21","TAMIL NADU","1","0","","","0","0","2024-05-18 10:54:55","0","2024-05-18 10:54:55","0");
INSERT INTO states VALUES("22","TRIPURA","1","0","","","0","0","2024-05-18 10:54:55","0","2024-05-18 10:54:55","0");
INSERT INTO states VALUES("23","UTTAR PRADESH","1","0","","","0","0","2024-05-18 10:54:55","0","2024-05-18 10:54:55","0");
INSERT INTO states VALUES("24","WEST BENGAL","1","0","","","0","0","2024-05-18 10:54:55","0","2024-05-18 10:54:55","0");
INSERT INTO states VALUES("25","DELHI","1","0","","","0","0","2024-05-18 10:54:55","0","2024-05-18 10:54:55","0");
INSERT INTO states VALUES("26","GOA","1","0","","","0","0","2024-05-18 10:54:55","0","2024-05-18 10:54:55","0");
INSERT INTO states VALUES("27","PONDICHERY","1","0","","","0","0","2024-05-18 10:54:55","0","2024-05-18 10:54:55","0");
INSERT INTO states VALUES("28","LAKSHDWEEP","1","0","","","0","0","2024-05-18 10:54:55","0","2024-05-18 10:54:55","0");
INSERT INTO states VALUES("29","DAMAN & DIU","1","0","","","0","0","2024-05-18 10:54:55","0","2024-05-18 10:54:55","0");
INSERT INTO states VALUES("30","DADRA & NAGAR","1","0","","","0","0","2024-05-18 10:54:55","0","2024-05-18 10:54:55","0");
INSERT INTO states VALUES("31","CHANDIGARH","1","0","","","0","0","2024-05-18 10:54:55","0","2024-05-18 10:54:55","0");
INSERT INTO states VALUES("32","ANDAMAN & NICOBAR","1","0","","","0","0","2024-05-18 10:54:55","0","2024-05-18 10:54:55","0");
INSERT INTO states VALUES("33","UTTARANCHAL","1","0","","","0","0","2024-05-18 10:54:55","0","2024-05-18 10:54:55","0");
INSERT INTO states VALUES("34","JHARKHAND","1","0","","","0","0","2024-05-18 10:54:55","0","2024-05-18 10:54:55","0");
INSERT INTO states VALUES("35","CHATTISGARH","1","0","","","0","0","2024-05-18 10:54:55","0","2024-05-18 10:54:55","0");



DROP TABLE IF EXISTS store_payments;

CREATE TABLE `store_payments` (
  `storePaymentId` int(11) NOT NULL AUTO_INCREMENT,
  `payments` varchar(255) NOT NULL,
  `default` int(11) NOT NULL,
  `storeId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
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
  `rewardPointsOnCredit` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`storeSettingId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

INSERT INTO store_settings VALUES("1","Default New Shop","public/assets/uploads/662747144.png","pkv172019@gmail.com","7878787878","","Your address goes here","6678bd56cba1c932705fcec18ddf06f0","4f1c0a54fb8f4fc9bd8670abb8311ceb","","","0","1","ContactAgent","customerId-fullName-customers,propertyId-heading-properties","","customer_group,vendors,customers,manufacturers,products,additional_charges","1","0","0","10","1","INV-2024-","1","1","1","1","1","append","1","0","1","1","1","1","1","0","0","1","1","1","1","1","1","1","1","<p>This article will get you started with creating your own custom Terms and Conditions agreement. We&#39;ve also put together a Sample Terms and Conditions Template that you can use to help you write your own.</p>
","","","1","4","3","1","3","2","1","0","2024-04-16,2024-04-20,2024-04-27","0","1","24000","1","0","1","1","1","1","12:00","1","0","4","Exclusive","0");



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
  `softDelete` int(11) NOT NULL DEFAULT 0,
  `updatedBy` int(11) NOT NULL,
  `insertedBy` int(11) NOT NULL DEFAULT 0,
  `dateUpdated` datetime NOT NULL,
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`storeId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO stores VALUES("1","Default Shop","Default Shop","demo@gmail.com","999999999","Your address goes here","1","17","0","2","c5ece30951ad35ae51ffd02754ee9f9c874942ef","0","0","2","0000-00-00 00:00:00","2024-03-26 09:42:26","1");



DROP TABLE IF EXISTS tables;

CREATE TABLE `tables` (
  `tableId` int(11) NOT NULL AUTO_INCREMENT,
  `tableName` varchar(50) NOT NULL,
  `primaryKeyName` varchar(50) NOT NULL,
  `columns` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`tableId`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO tables VALUES("1","contacts","contactId","[{\"Field\":\"contactId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"name\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"email\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"mobile\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"subject\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"message\",\"Type\":\"mediumtext\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("2","databaseBackup","databaseBackupId","[{\"Field\":\"databaseBackupId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"backUpName\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"type\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("3","filters","filterId","[{\"Field\":\"filterId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"filterModuleId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"filtertableName\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"fieldNameReadonly\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"tableName\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"tableFirstColumn\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"tableColumn\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"fieldHeading\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"fieldType\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"fieldName\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"fieldClass\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"fieldId\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"fieldPlaceholder\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"selectBoxValue\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"selectBoxHtml\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"orderBy\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"whereColumn\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"sortOrder\",\"Type\":\"int(11)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"lineNo\",\"Type\":\"int(11)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"additionalAttributes\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"rowColumnSize\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateBetweenFilter\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"filterWorkingCondition\",\"Type\":\"varchar(3)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"OR\",\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("4","filters_old","filterId","[{\"Field\":\"filterId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"type\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"name\",\"Type\":\"varchar(50)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"class\",\"Type\":\"varchar(50)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"id\",\"Type\":\"varchar(50)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"value\",\"Type\":\"varchar(50)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"tableName\",\"Type\":\"varchar(50)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"selectIdColumn\",\"Type\":\"varchar(50)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"selectHeadingColumn\",\"Type\":\"varchar(50)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"idValue\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"headingValue\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"defaultValue\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"filterTypeId\",\"Type\":\"int(11)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"line\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"forWhat\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"orderByColumn\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"sortOrder\",\"Type\":\"varchar(11)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("5","filter_types","fiterTypeId","[{\"Field\":\"fiterTypeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("6","inner_banner","innerBannerId","[{\"Field\":\"innerBannerId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"page\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"heading\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"image\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("7","menus","menuId","[{\"Field\":\"menuId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"menuHeading\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"link\",\"Type\":\"varchar(100)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"icon\",\"Type\":\"varchar(100)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"moduleId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"parentId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"sortOrder\",\"Type\":\"int(11)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"roleId\",\"Type\":\"varchar(30)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"},{\"Field\":\"dateUpdated\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"on update current_timestamp()\"},{\"Field\":\"insertedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("8","messages","messageId","[{\"Field\":\"messageId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"message\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"hindi\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"english\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("9","modules","moduleId","[{\"Field\":\"moduleId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"moduleName\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"moduleTable\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"moduleFirstColumn\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"pageHeading\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"moduleData\",\"Type\":\"mediumtext\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"parentMenu\",\"Type\":\"varchar(30)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"sortOrder\",\"Type\":\"int(11)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"hideAdd\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"hideEdit\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"hideDelete\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"hideAction\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"addButtonText\",\"Type\":\"varchar(30)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"copyButtonText\",\"Type\":\"varchar(30)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"extraButtons\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"submitCodeBefore\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"submitCodeAfter\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"extraActionOnDeleteButton\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"additionalText\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"shortCode\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"frontendRedirectPage\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"sendMailToAdmin\",\"Type\":\"varchar(3)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"No\",\"Extra\":\"\"},{\"Field\":\"filedsToReplaceOnMail\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"filters\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"copyTable\",\"Type\":\"varchar(3)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"No\",\"Extra\":\"\"},{\"Field\":\"dataOfColumnToSkip\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"autoIncreamentColumn\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int(11)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"timestamp\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("10","pages","pageId","[{\"Field\":\"pageId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"seo\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"metaTitle\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"metaKeyword\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"metaDescription\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"shortDescription\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"description\",\"Type\":\"mediumtext\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"image\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("11","seo","seoId","[{\"Field\":\"seoId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"pageName\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"metaTitle\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"metaKeyword\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"metaDescription\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("12","settings","settingId","[{\"Field\":\"settingId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"websiteName\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"websiteLogo\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"allowedImageSize\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"allowedFileSize\",\"Type\":\"varchar(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"metaTitle\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"metaKeyword\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"metaDescription\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"adminEmail\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"contactMobile\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"contactEmail\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"address\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"mailJetUsername\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"mailJetPassword\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"mailjetEmail\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"mailjetName\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"facebook\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"twitter\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"linkedin\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"instagram\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"mergeLogin\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"databaseBackup\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"fieldsToSendValueOnMail\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"filedsToReplaceOnMail\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"filedsToUnsetOnMails\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"hideAddEditDeleteIfNoStoreSelected\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"multiplePaymentMethod\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"creditPaymentMethod\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"returnPaymentMethod\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"walletPaymentMethod\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"gstApi\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"defaultCurrency\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("13","tables","tableId","[{\"Field\":\"tableId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"tableName\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"primaryKeyName\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"columns\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("14","templates","templateId","[{\"Field\":\"templateId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"subject\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"template\",\"Type\":\"mediumtext\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"forWhat\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"forWhom\",\"Type\":\"varchar(10)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("15","users","userId","[{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"userName\",\"Type\":\"varchar(30)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userEmail\",\"Type\":\"varchar(100)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":\"NULL\",\"Extra\":\"\"},{\"Field\":\"userPassword\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userMobile\",\"Type\":\"varchar(30)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"roleId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"superAdmin\",\"Type\":\"varchar(3)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"No\",\"Extra\":\"\"},{\"Field\":\"dataBaseName\",\"Type\":\"varchar(30)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dbUser\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dbPass\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"loginToken\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeUserId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("16","admin_login_history","adminLoginHistoryId","[{\"Field\":\"adminLoginHistoryId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("17","image_manager","imageManagerId","[{\"Field\":\"imageManagerId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"image\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("18","countries","countryId","[{\"Field\":\"countryId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"sortOrder\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"softDelete\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"updatedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"dateUpdated\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"on update current_timestamp()\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("19","roles","roleId","[{\"Field\":\"roleId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"permission\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("20","states","stateId","[{\"Field\":\"stateId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"countryId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"sortOrder\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"image\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"description\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"softDelete\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"updatedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateUpdated\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"on update current_timestamp()\"},{\"Field\":\"insertedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("21","stores","storeId","[{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"name\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"tagline\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"email\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"mobile\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"address\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"cityId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"stateId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"sortOrder\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"storeToken\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"softDelete\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"updatedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"dateUpdated\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("22","customer_group","customerGroupId","[{\"Field\":\"customerGroupId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"defaultDiscountPercent\",\"Type\":\"varchar(10)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"sortOrder\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"default\",\"Type\":\"varchar(10)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"softDelete\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"updatedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"dateUpdated\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("23","cities","cityId","[{\"Field\":\"cityId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"stateId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"countryId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("24","taxes","taxId","[{\"Field\":\"taxId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"percent\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"sortOrder\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("25","units","unitId","[{\"Field\":\"unitId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"unit\",\"Type\":\"varchar(10)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"sortOrder\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("26","vendors","vendorId","[{\"Field\":\"vendorId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"mobile\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"email\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"gstNumber\",\"Type\":\"varchar(30)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"openingBalance\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"cityId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"stateId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"countryId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"image\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"sorftDelete\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"updatedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateUpdated\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"on update current_timestamp()\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("27","customers","customerId","[{\"Field\":\"customerId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"name\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"mobile\",\"Type\":\"varchar(20)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"email\",\"Type\":\"varchar(100)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"openingBalance\",\"Type\":\"int(11)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"walletBalance\",\"Type\":\"int(11)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"rewardPoints\",\"Type\":\"int(11)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"customerGroupId\",\"Type\":\"int(11)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"cityId\",\"Type\":\"varchar(50)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"stateId\",\"Type\":\"int(11)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"countryId\",\"Type\":\"int(11)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"gstNo\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"firmName\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"firmAddress\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"updatedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateUpdated\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"on update current_timestamp()\"},{\"Field\":\"softDelete\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("28","customer_ledger","customerLedgerId","[{\"Field\":\"customerLedgerId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"orderId\",\"Type\":\"int(11)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"customerId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"amount\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"type\",\"Type\":\"varchar(10)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"paymentId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"remark\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"softDelete\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("29","categories","categoryId","[{\"Field\":\"categoryId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"image\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"parentId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"updatedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateUpdated\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"on update current_timestamp()\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"},{\"Field\":\"softDelete\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("30","manufacturers","manufacturerId","[{\"Field\":\"manufacturerId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"image\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"softDelete\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"dateUpdated\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"on update current_timestamp()\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("31","products","productId","[{\"Field\":\"productId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"model\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"barcode\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"barcodeType\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"cost\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"price\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"percent\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"manufacturerId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"categoryId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"vendorId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"unitId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"taxId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"taxType\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"Exclusive\",\"Extra\":\"\"},{\"Field\":\"hsnCode\",\"Type\":\"varchar(30)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"quantity\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"subtract\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"changePriceDuringBilling\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"image\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"relatedImage\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"showInPos\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"productType\",\"Type\":\"varchar(10)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"softDelete\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"updatedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateUpdated\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"on update current_timestamp()\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("32","store_settings","storeSettingId","[{\"Field\":\"storeSettingId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"websiteName\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"websiteLogo\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"adminEmail\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"contactMobile\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"contactEmail\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"address\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"mailJetUsername\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"mailJetPassword\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"mailJetEmail\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"mailJetName\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"mergeLogin\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"databaseBackup\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"fieldsToSendValueOnMail\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"filedsToReplaceOnMail\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"filedsToUnsetOnMails\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"hideAddEditDeleteIfNoStoreSelected\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"enableRewardPoints\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"rewardOnDiscountedProduct\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"minimumRewardPointsToReedem\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"rewardPercentOnProduct\",\"Type\":\"varchar(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"walkInCustomerId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"invoicePrefix\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"updatedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"cartAppendStyle\",\"Type\":\"varchar(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"orderTypeRequired\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"enableOrderType\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"enableTaxes\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"showStoreInfomation\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"showExtraInformtionPopup\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"showWalletBalance\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"showRewardBalance\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"showAddCustomerBottom\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"salesPersonRequired\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"showSalesPerson\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"showQuickAdd\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"restaurant\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"showModal\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"showBarcode\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"showImage\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"showManufacturers\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"showCategories\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeTerms\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"invoiceHeaderText\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"invoiceFooterText\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"defaultInvoiceTemplate\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"defaultPOTemplate\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"defaultKotTemplate\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"defaultOrderStatus\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"cancelledOrderStatus\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"runningOrderStatus\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"deductFromStock\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"startBarcodeFrom\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeClosingDate\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"maxBills\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"requiredOtpForRewardReedem\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"minRewardPointsToSendOtp\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"onProductCllickIncreasePosQuantity\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"enableLightBox\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"fetchCostInPurchase\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"enableSeatingTable\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"enableCustomerReminder\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"enableHotelRoomMode\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"checkInTime\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"printKotAndBillBoth\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"showGstBreakups\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"defaultTaxId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"defaultTaxType\",\"Type\":\"varchar(10)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"rewardPointsOnCredit\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("33","seating_tables","seatingTableId","[{\"Field\":\"seatingTableId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"capacity\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"dateUpdated\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"on update current_timestamp()\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("34","languages","languageId","[{\"Field\":\"languageId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("35","employees","employeeId","[{\"Field\":\"employeeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"name\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"mobile\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"email\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"sallery\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dob\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"softDelete\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"updatedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateUpdated\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"on update current_timestamp()\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("36","payments","paymentId","[{\"Field\":\"paymentId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"name\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"sortOrder\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"softDelete\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("37","store_payments","storePaymentId","[{\"Field\":\"storePaymentId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"payments\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"default\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("38","order","orderId","[{\"Field\":\"orderId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"sno\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"customerId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"invoicePrefix\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"name\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"email\",\"Type\":\"varchar(50)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"mobile\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"subTotal\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"tax\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"productDiscount\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"additionalCharges\",\"Type\":\"text\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"globalDiscount\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"paymentId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"paymentMethod\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"multiplePaymentData\",\"Type\":\"text\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"total\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"rewardEarned\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"rewardUsed\",\"Type\":\"varchar(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"orderType\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"checkoutType\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"runningOrder\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"kotToken\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"seatingTableId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"seatingTableHeading\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"hold\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"orderStatusId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"orderStatusHeading\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"orderProduct\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"orderTotal\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"employeeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"posComment\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"posImage\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"deliveryDate\",\"Type\":\"varchar(30)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"salesUserId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"totalItemsInCart\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"totalQuantityInCart\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"hotel\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"hotelToken\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"softDelete\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("39","order_kot","orderKotId","[{\"Field\":\"orderKotId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"orderId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"kotToken\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("40","order_product","orderProductId","[{\"Field\":\"orderProductId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"orderId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"productId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"heading\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"model\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"barcode\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"barcodeType\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"taxId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"taxHeading\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"taxType\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"taxPercent\",\"Type\":\"varchar(5)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"tax\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"quantity\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"discount\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"discountValue\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"rewardPoints\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"cost\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"price\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"percent\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"total\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"hsnCode\",\"Type\":\"varchar(30)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"changePriceDuringBilling\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"extraInformation\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"updatedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateModified\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"on update current_timestamp()\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"},{\"Field\":\"kotToken\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"sentToKot\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"kotViewed\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"kotViewedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"taxInclusiveValue\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"taxExclusiveValue\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"basePriceCost\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"profit\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"return\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("41","order_total","orderTotalId","[{\"Field\":\"orderTotalId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"orderId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"orderTotal\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("42","additional_charges","additionalChargeId","[{\"Field\":\"additionalChargeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"sortOrder\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"updatedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("43","invoice_template","invoiceTemplateId","[{\"Field\":\"invoiceTemplateId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"template\",\"Type\":\"mediumtext\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"tableCode\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"loopTrCode\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"customCss\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"subTotalTrLoop\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("44","customer_ledger_reward","customerLedgerRewardId","[{\"Field\":\"customerLedgerRewardId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"orderId\",\"Type\":\"int(11)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"customerId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"reward\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"type\",\"Type\":\"varchar(10)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"paymentId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"remark\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"payInOut\",\"Type\":\"varchar(10)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"softDelete\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("45","customer_ledger_wallet","customerLedgerId","[{\"Field\":\"customerLedgerId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"orderId\",\"Type\":\"int(11)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"customerId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"amount\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"type\",\"Type\":\"varchar(10)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"paymentId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"remark\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"payInOut\",\"Type\":\"varchar(10)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"softDelete\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("46","order_status","orderStatusId","[{\"Field\":\"orderStatusId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("47","purchases","purchaseId","[{\"Field\":\"purchaseId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"sno\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"heading\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"refrence\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"vendorId\",\"Type\":\"varchar(11)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"date\",\"Type\":\"varchar(20)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"billType\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"products\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"quantity\",\"Type\":\"float\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"comment\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"subTotal\",\"Type\":\"float\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"tax\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"total\",\"Type\":\"float\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"purchaseStatus\",\"Type\":\"varchar(1)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"softDelete\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"updatedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateUpdated\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"on update current_timestamp()\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("48","migrations","id","[{\"Field\":\"id\",\"Type\":\"int(10) unsigned\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"migration\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"batch\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("49","personal_access_tokens","id","[{\"Field\":\"id\",\"Type\":\"bigint(20) unsigned\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"tokenable_type\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"MUL\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"tokenable_id\",\"Type\":\"bigint(20) unsigned\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"name\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"token\",\"Type\":\"varchar(64)\",\"Null\":\"NO\",\"Key\":\"UNI\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"abilities\",\"Type\":\"text\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"last_used_at\",\"Type\":\"timestamp\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"created_at\",\"Type\":\"timestamp\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"updated_at\",\"Type\":\"timestamp\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("50","customer_pay_in_out","customerPayInOutId","[{\"Field\":\"customerPayInOutId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"customerId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"amount\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"type\",\"Type\":\"varchar(10)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateUpdated\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"on update current_timestamp()\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("51","codes","codeId","[{\"Field\":\"codeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"alphabat\",\"Type\":\"varchar(10)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"number\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("52","order_history","orderHistoryId","[{\"Field\":\"orderHistoryId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"orderId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"orderStatusId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"comment\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("53","profit_report","profitReportId","[{\"Field\":\"profitReportId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"type\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"id\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"costPrice\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"quantity\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"tax\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"taxType\",\"Type\":\"varchar(10)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"taxPercent\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"discount\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"total\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"profit\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"finalAmount\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"basePriceCost\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("54","comment_master","commentMasterId","[{\"Field\":\"commentMasterId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"comment\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("55","popup_message","popupMessageId","[{\"Field\":\"popupMessageId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"message\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("56","popup_message_list","popupMessageListId","[{\"Field\":\"popupMessageListId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"message\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"viewed\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("57","reward_otp","rewardOtpId","[{\"Field\":\"rewardOtpId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"customerId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"orderId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"otp\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"otpToken\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("58","reward_otp_skip_reason","rewardOtpSkipReasonId","[{\"Field\":\"rewardOtpSkipReasonId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"customerId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"orderId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"reason\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"skipOtpToken\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("59","expenses","expenseId","[{\"Field\":\"expenseId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"amount\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"vendorId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"expenseCategoryId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"relatedImage\",\"Type\":\"varchar(1000)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("60","expense_categories","expenseCategoryId","[{\"Field\":\"expenseCategoryId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("61","hotel_rooms","hotelRoomId","[{\"Field\":\"hotelRoomId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"roomNo\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"capacity\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"roomCharges\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"roomStatus\",\"Type\":\"varchar(3)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"No\",\"Extra\":\"\"},{\"Field\":\"image\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"relatedImages\",\"Type\":\"varchar(500)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("62","order_hotel_room","orderHotelRoomId","[{\"Field\":\"orderHotelRoomId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"orderId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"productId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"customerData\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"timeCheckIn\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"timeCheckOut\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateCheckIn\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateCheckOut\",\"Type\":\"varchar(20)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"totalNoOfDays\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"hotel\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"hotelToken\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("63","product_return","productReturnId","[{\"Field\":\"productReturnId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"customerId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"orderId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"productId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"quantity\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"rewardPoints\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"total\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("64","customer_amount_paid","customerAmountPaidId","[{\"Field\":\"customerAmountPaidId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"orderId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"customerId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"amount\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"paymentId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"remark\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("65","purchase_orders","purchaseOrderId","[{\"Field\":\"purchaseOrderId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"sno\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"heading\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"refrence\",\"Type\":\"varchar(255)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"vendorId\",\"Type\":\"varchar(11)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"date\",\"Type\":\"varchar(20)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"billType\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"products\",\"Type\":\"text\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"quantity\",\"Type\":\"float\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"comment\",\"Type\":\"varchar(255)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"subTotal\",\"Type\":\"float\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"tax\",\"Type\":\"float(11,2)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"total\",\"Type\":\"float\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"purchaseOrderStatus\",\"Type\":\"varchar(1)\",\"Null\":\"YES\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"softDelete\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"updatedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"dateUpdated\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"on update current_timestamp()\"},{\"Field\":\"status\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"},{\"Field\":\"insertedBy\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"dateAdded\",\"Type\":\"datetime\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"current_timestamp()\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("66","currencies","currencyId","[{\"Field\":\"currencyId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(50)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"code\",\"Type\":\"varchar(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"symbol\",\"Type\":\"varchar(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"storeId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"0\",\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]","1");
INSERT INTO tables VALUES("67","testimonials","testimonialId","[{\"Field\":\"testimonialId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"PRI\",\"Default\":null,\"Extra\":\"auto_increment\"},{\"Field\":\"heading\",\"Type\":\"varchar(100)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"userId\",\"Type\":\"int(11)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":null,\"Extra\":\"\"},{\"Field\":\"status\",\"Type\":\"int(1)\",\"Null\":\"NO\",\"Key\":\"\",\"Default\":\"1\",\"Extra\":\"\"}]","1");



DROP TABLE IF EXISTS taxes;

CREATE TABLE `taxes` (
  `taxId` int(11) NOT NULL AUTO_INCREMENT,
  `heading` varchar(50) NOT NULL,
  `percent` float(11,2) NOT NULL,
  `sortOrder` int(11) NOT NULL,
  `status` int(11) NOT NULL,
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
  `status` int(11) NOT NULL DEFAULT 1,
  `dateAdded` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`templateId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

INSERT INTO templates VALUES("1","Your Amount Is Pending","<p>Hi {NAME},</p>

<p>Your Amount is pending {WALLETBALANCE} Please pay this amount as soon as possible.</p>

<p>Regards {WEBSITENAME}</p>
","WalletBalance","User","1","2022-05-01 20:45:05");
INSERT INTO templates VALUES("7","Customer Data Added/Updated","<p>Hi {NAME},</p>

<p>Customer Data has been added/updated</p>
<p>{CONTENT}</p>
<p>Regards {WEBSITENAME}</p>
","CustomerAddedUpdated","Admin","1","2022-05-01 20:45:05");
INSERT INTO templates VALUES("8","Purchase","<p>Hi {NAME},</p>

<p>Purchase has been added/updated</p>
<p>{CONTENT}</p>
<p>Regards {WEBSITENAME}</p>
","Purchase","Admin","1","2022-05-01 20:45:05");
INSERT INTO templates VALUES("9","Purchase Approved","<p>Hi {NAME},</p>

<p>Purchase has been approved</p>
<p>{CONTENT}</p>
<p>Regards {WEBSITENAME}</p>
","PurchaseApproved","Admin","1","2022-05-01 20:45:05");
INSERT INTO templates VALUES("10","Purchase DisApproved","<p>Hi {NAME},</p>

<p>Purchase has been disapproved</p>
<p>{CONTENT}</p>
<p>Regards {WEBSITENAME}</p>
","PurchaseDisApproved","Admin","1","2022-05-01 20:45:05");
INSERT INTO templates VALUES("11","Payment In/Out","<p>Hi {NAME},</p>

<p>A new payment In/Out Entry found</p>
<p>{CONTENT}</p>
<p>Regards {WEBSITENAME}</p>
","PaymentInOut","Admin","1","2022-05-01 20:45:05");
INSERT INTO templates VALUES("12","Payment In/Out","<p>Hi {NAME},</p>

<p>A new payment In/Out Entry found</p>
<p>{CONTENT}</p>
<p>Regards {WEBSITENAME}</p>
","PaymentInOut","User","1","2022-05-01 20:45:05");



DROP TABLE IF EXISTS testimonials;

CREATE TABLE `testimonials` (
  `testimonialId` int(11) NOT NULL AUTO_INCREMENT,
  `heading` varchar(100) NOT NULL,
  `userId` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`testimonialId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO testimonials VALUES("1","Testing Testimonial","1","1");



DROP TABLE IF EXISTS units;

CREATE TABLE `units` (
  `unitId` int(11) NOT NULL AUTO_INCREMENT,
  `heading` varchar(50) NOT NULL,
  `unit` varchar(10) NOT NULL,
  `sortOrder` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`unitId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

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
  `dbUser` varchar(100) NOT NULL,
  `dbPass` varchar(100) NOT NULL,
  `loginToken` varchar(255) NOT NULL,
  `storeUserId` int(11) NOT NULL,
  `storeId` int(11) NOT NULL,
  `insertedBy` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

INSERT INTO users VALUES("1","admin","admin@admin.com","a346bc80408d9b2a5063fd1bddb20e2d5586ec30","8285187287","1","Yes","ship_shop_default","root","","","0","0","1","1");
INSERT INTO users VALUES("2","Suresh","hsureshsingh@gmail.com","90b9aa7e25f80cf4f64e990b78a9fc5ebd6cecad","1234567890","2","No","","","","","0","1","1","1");
INSERT INTO users VALUES("3","yogi","yogi@gmail.com","a346bc80408d9b2a5063fd1bddb20e2d5586ec30","1234567890","3","No","","","","","0","1","1","1");



DROP TABLE IF EXISTS vendors;

CREATE TABLE `vendors` (
  `vendorId` int(11) NOT NULL AUTO_INCREMENT,
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
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`vendorId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO vendors VALUES("1","Vendor 1","8595899103","owner@admin.com","22AAAAA0000A1Z5","0","1","6","1","","1","1","0","1","1","2024-04-30 05:16:39","2024-04-12 11:08:28","1");



