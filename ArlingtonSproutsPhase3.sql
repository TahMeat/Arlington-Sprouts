-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2023 at 02:15 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sprouts`
--

-- --------------------------------------------------------

--
-- Table structure for table `contract`
--

CREATE TABLE `contract` (
  `vId` int(11) NOT NULL,
  `ctId` int(11) NOT NULL,
  `Sdate` date NOT NULL,
  `Ctime` time NOT NULL,
  `Ctname` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contract`
--

INSERT INTO `contract` (`vId`, `ctId`, `Sdate`, `Ctime`, `Ctname`) VALUES
(2, 1, '2024-06-24', '13:00:00', 'Sprout Buddies'),
(2, 2, '2024-07-01', '13:00:00', 'Sprout Buddies'),
(2, 3, '2024-07-07', '13:00:00', 'Sprout Buddies'),
(2, 4, '2024-07-14', '14:00:00', 'Sprout Sandwich'),
(3, 1, '2024-06-25', '15:00:00', 'Sprout Greens'),
(4, 1, '2024-06-25', '16:00:00', 'Sprout Certific'),
(4, 2, '2024-06-26', '16:00:00', 'Sprout Certific'),
(5, 1, '2024-07-26', '13:00:00', 'Sprout Certific'),
(5, 2, '2024-07-26', '14:00:00', 'Sprout Buddies'),
(5, 3, '2024-07-26', '15:00:00', 'Sprout Sandwich'),
(5, 4, '2024-07-26', '16:00:00', 'Sprout Sandwich'),
(5, 5, '2024-07-26', '17:00:00', 'Microgreens');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cId` int(11) NOT NULL,
  `Cname` varchar(30) NOT NULL,
  `Street` varchar(30) NOT NULL,
  `City` varchar(30) NOT NULL,
  `StateAb` varchar(2) NOT NULL,
  `ZipCode` varchar(11) NOT NULL,
  `CTelNo` bigint(15) NOT NULL,
  `Cdob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cId`, `Cname`, `Street`, `City`, `StateAb`, `ZipCode`, `CTelNo`, `Cdob`) VALUES
(1, 'Abed Abdi', '309 Hcounty Road', 'Abbott', 'TX', '76621-0057', 5046218927, '1998-02-01'),
(2, 'Ismail Gulg', '405 E Mesquite Street', 'Abbott', 'TX', '76621-0057', 8102929388, '1996-12-22'),
(3, 'Shakir Ali', '5000 Spectrum Street', 'Addison', 'TX', '75001-6880', 8566368749, '1992-06-07'),
(4, 'Abdur Rahman', '1000 County Road', 'Bradley', 'OK', '73011-0121', 9073854412, '1989-08-03'),
(5, 'Kalipada Ghoshal', 'Boundary Road', 'Bradley', 'OK', '73011-9600', 5135701893, '1995-04-02'),
(6, 'Manishi Dey', '450 Main Street', 'Mound City', 'KS', '66056-0001', 4195032484, '1983-09-25'),
(7, 'Nandalal Bose', 'S Metcalf Road', 'Louisburg', 'KS', '66053-0541', 7735736914, '1999-10-21'),
(8, 'Raja Ravi Varma', '2000 Forest Grove blvd', 'Allen', 'TX', '75002-8811', 4087523500, '1999-02-19'),
(9, 'Sunil Das', '4000 Woodcreek Road', 'Carrollton', 'TX', '75006-1911', 6054142147, '1982-04-01'),
(10, 'Jasper Johns', '2500 Sunset Ridge Drive', 'Rockwall', 'TX', '75032-0006', 4106558723, '1973-05-08'),
(11, 'Winslow Homer', '11300 Juniper Lane', 'Irving', 'TX', '75039-0101', 2158741229, '1968-07-18'),
(12, 'Albert Bierstadt', '400 Spruce Street', 'Leavenworth', 'KS', '66048-0001', 6313353414, '2000-11-27'),
(13, 'Edward Hopper', '1500 255th Street', 'Hillsdale', 'KS', '66036-0061', 3104985651, '1966-03-05'),
(14, 'Georgia O\'Keeffe', '3000 Weiss Lane', 'Irving', 'TX', '75039-0006', 4407808425, '1963-04-02'),
(15, 'Modupeola Fadugba', '1112 18TH Street', 'Plano', 'TX', '75086-0019', 9565376195, '2000-05-10'),
(16, 'Ekene Maduka', '15TH Street', 'Plano', 'TX', '75086-0015', 6022774385, '1994-03-21'),
(17, 'Olu Amoda', '200 Travis Street', 'Sherman', 'TX', '75090-0005', 9313139635, '1999-06-12'),
(18, 'Koki Tanaka', '5000 W Holiday Road', 'Fate', 'TX', '75087-2136', 4146619598, '1999-09-09'),
(19, 'Tatsuo Miyajima', 'Bella Ranch Drive', 'Choctaw', 'OK', '73020-0017', 3132887937, '2002-02-10'),
(20, 'Li Chen', '2090 County Road', 'Cement', 'OK', '73017-1100', 8158282147, '1963-07-08'),
(21, 'Zhan Wang', '1600 N Santa Fe', 'Edmond', 'OK', '73003-3661', 6105453615, '1984-09-10');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `sId` int(11) NOT NULL,
  `SSN` int(11) NOT NULL,
  `Ename` varchar(30) NOT NULL,
  `Street` varchar(30) NOT NULL,
  `City` varchar(30) NOT NULL,
  `StateAb` varchar(2) NOT NULL,
  `Zipcode` varchar(11) NOT NULL,
  `Etype` char(1) NOT NULL,
  `Bdate` date NOT NULL,
  `Sdate` date NOT NULL,
  `Edate` date DEFAULT NULL,
  `eLevel` varchar(15) DEFAULT NULL,
  `Asalary` int(11) DEFAULT NULL,
  `Agency` varchar(15) DEFAULT NULL,
  `Hsalary` int(11) DEFAULT NULL,
  `Institute` varchar(30) DEFAULT NULL,
  `Itype` char(1) DEFAULT NULL,
  `TelNo` bigint(11) NOT NULL,
  `Email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`sId`, `SSN`, `Ename`, `Street`, `City`, `StateAb`, `Zipcode`, `Etype`, `Bdate`, `Sdate`, `Edate`, `eLevel`, `Asalary`, `Agency`, `Hsalary`, `Institute`, `Itype`, `TelNo`, `Email`) VALUES
(1, 123456666, 'Olampiosi Pi', '100 Varsity Circle', 'Arlington', 'TX', '76019-1111', 'T', '2005-02-01', '2023-01-20', NULL, NULL, NULL, 'Top Performers', 10, NULL, NULL, 4145737719, 'olampiosi.pi@gmail.com'),
(1, 123456777, 'Radha Gupta', '200 Nedderman Dr', 'Arlington', 'TX', '76019-1111', 'T', '2005-01-20', '2023-01-20', NULL, NULL, 20000, 'AR Manpower', 10, NULL, NULL, 3038745160, 'radhagupta@gmail.com'),
(1, 123456780, 'Cao Peng', '12 W. Mitchell St.', 'Arlington', 'TX', '76019-1111', 'I', '2008-01-20', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'UTA', 'U', 2124629157, 'pengcao@gmil.com'),
(1, 123456781, 'Giun Seong', '12 S. Pecan St.', 'Arlington', 'TX', '76019-1111', 'I', '2007-01-01', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'Arlington High School ', 'S', 9078732882, 'giun.seong@gmail.com'),
(1, 123456788, 'Christian Cart', '20 Main Street', 'Arlington', 'TX', '76019-1111', 'F', '2001-01-02', '2023-01-20', NULL, 'Associate 1', 25000, NULL, NULL, NULL, NULL, 5128613814, 'christian.cart@gmail.com'),
(1, 123456789, 'Mary Durer', '11 Cooper Street', 'Arlington', 'TX', '76019-1111', 'F', '2000-01-20', '2023-01-20', NULL, 'Associate 2', 30000, NULL, NULL, NULL, NULL, 7329042931, 'marydurer@gmail.com');

-- --------------------------------------------------------

--
-- Stand-in structure for view `employeefromuta`
-- (See below for the actual view)
--
CREATE TABLE `employeefromuta` (
`Ename` varchar(30)
,`Sdate` date
,`TelNo` bigint(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `cId` int(11) NOT NULL,
  `rId` int(11) NOT NULL,
  `Rating` int(11) NOT NULL,
  `Comments` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`cId`, `rId`, `Rating`, `Comments`) VALUES
(1, 1, 4, 'Sprouts varieties are good'),
(1, 2, 5, 'Brasil Sprouts are very fresh'),
(1, 3, 2, 'Kale sprouts are very expensive and not even fresh'),
(2, 1, 3, 'Few sprouts are not fresh'),
(2, 2, 4, 'Employees are well-behaved and most of the items are of very good quality '),
(3, 1, 5, 'Excellent Quality and varieties'),
(4, 1, 1, 'High prices and very less quantity'),
(4, 2, 2, 'Not fresh'),
(5, 1, 3, 'Fresh and Healthy sprouts'),
(5, 2, 4, 'Good'),
(6, 1, 5, 'Good Quality. Will buy more.'),
(17, 1, 5, 'Fresh'),
(18, 1, 2, 'Lentil sprouts are not fresh'),
(18, 2, 4, 'Liked Chickpeas Sprouts'),
(21, 1, 5, 'Really worth it.'),
(21, 2, 4, 'Good Varieties of sprouts but little expensive on Kale sprouts'),
(21, 3, 4, 'Definitely recommend everyone to buy.'),
(21, 4, 3, 'Need to maintain more stock on Brasil sprouts.');

-- --------------------------------------------------------

--
-- Stand-in structure for view `feedbackordergiven`
-- (See below for the actual view)
--
CREATE TABLE `feedbackordergiven` (
`CID` int(11)
,`Cname` varchar(30)
,`City` varchar(30)
,`Telephone` bigint(15)
);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `iId` int(11) NOT NULL,
  `Iname` varchar(20) NOT NULL,
  `Sprice` int(11) NOT NULL,
  `Idescription` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`iId`, `Iname`, `Sprice`, `Idescription`) VALUES
(1, 'Broccoli Sprouts', 3, ' Vitamin A,C,K'),
(2, 'Kale Sprouts', 3, ' Vitamin A,C,K'),
(3, 'Alfalfa Sprouts', 3, 'Vitamin A,C,K'),
(4, 'Mung Sprouts', 4, 'Vitamin C,K'),
(5, 'Chickpeas Sprouts', 4, 'Vitamin C,K'),
(6, 'Onion Sprouts', 4, ' Vitamin C,K'),
(7, 'Soyabean Sprouts', 5, 'Vitamin C,K'),
(8, 'Clover Sprouts', 3, 'Vitamin A,C,K'),
(9, 'Kidney Beans Sprouts', 4, 'Vitamin C,K'),
(10, 'Adzuki Bean Sprouts', 4, 'Vitamin A,C,K'),
(11, 'Beet Sprouts', 5, 'Vitamin A,C'),
(12, 'Green Pea Sprouts', 5, 'Vitamin A,C,K'),
(13, 'Radish Sprouts', 6, 'Vitamin A,C,K'),
(14, 'Lentil Sprouts', 4, 'Vitamin A,C,K');

-- --------------------------------------------------------

--
-- Stand-in structure for view `itemsnotwanted`
-- (See below for the actual view)
--
CREATE TABLE `itemsnotwanted` (
`Iname` varchar(20)
);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `oId` int(11) NOT NULL,
  `sId` int(11) NOT NULL,
  `cId` int(11) NOT NULL,
  `Odate` date NOT NULL,
  `Ddate` date NOT NULL,
  `Amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`oId`, `sId`, `cId`, `Odate`, `Ddate`, `Amount`) VALUES
(1, 1, 1, '2023-01-20', '2023-01-21', 3),
(2, 1, 2, '2023-01-20', '2023-01-21', 3),
(3, 1, 3, '2023-01-20', '2023-01-21', 4),
(4, 1, 4, '2023-01-20', '2023-01-25', 12),
(5, 1, 5, '2023-01-20', '2023-01-21', 4),
(6, 1, 6, '2023-01-20', '2023-01-21', 27),
(7, 1, 7, '2023-01-20', '2023-01-21', 4),
(8, 1, 8, '2023-01-20', '2023-01-21', 5),
(9, 1, 9, '2023-01-20', '2023-01-21', 5),
(10, 1, 10, '2023-01-20', '2023-01-21', 5),
(11, 1, 11, '2023-01-20', '2023-01-21', 3),
(12, 1, 12, '2023-01-25', '2023-01-26', 4),
(13, 1, 13, '2023-01-25', '2023-01-26', 4),
(14, 1, 14, '2023-01-25', '2023-01-27', 4),
(15, 1, 2, '2023-01-25', '2023-01-26', 22),
(16, 1, 5, '2023-01-25', '2023-01-26', 5),
(17, 1, 9, '2023-01-25', '2023-01-26', 6),
(18, 1, 15, '2023-01-30', '2023-01-31', 6),
(19, 1, 16, '2023-01-30', '2023-01-31', 3),
(20, 1, 17, '2023-01-30', '2023-02-01', 3),
(21, 1, 2, '2023-01-30', '2023-01-31', 4),
(22, 1, 9, '2023-01-30', '2023-01-31', 4),
(23, 1, 18, '2023-02-05', '2023-02-06', 4),
(24, 1, 19, '2023-02-05', '2023-02-07', 4),
(25, 1, 20, '2023-02-05', '2023-02-08', 4),
(26, 1, 21, '2023-02-10', '2023-02-13', 4),
(27, 1, 21, '2023-02-12', '2023-02-13', 4);

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `oId` int(11) NOT NULL,
  `sId` int(11) NOT NULL,
  `iId` int(11) NOT NULL,
  `Icount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_item`
--

INSERT INTO `order_item` (`oId`, `sId`, `iId`, `Icount`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 1),
(3, 1, 4, 1),
(4, 1, 5, 1),
(4, 1, 6, 2),
(5, 1, 5, 1),
(6, 1, 5, 1),
(6, 1, 6, 2),
(6, 1, 7, 3),
(7, 1, 6, 1),
(8, 1, 7, 1),
(9, 1, 7, 1),
(10, 1, 7, 1),
(11, 1, 8, 1),
(12, 1, 9, 1),
(13, 1, 10, 1),
(14, 1, 10, 1),
(15, 1, 4, 1),
(15, 1, 5, 1),
(15, 1, 6, 1),
(15, 1, 7, 2),
(16, 1, 12, 1),
(17, 1, 13, 1),
(18, 1, 13, 1),
(19, 1, 1, 1),
(20, 1, 2, 1),
(21, 1, 4, 1),
(22, 1, 4, 1),
(23, 1, 4, 1),
(24, 1, 4, 1),
(25, 1, 5, 1),
(26, 1, 5, 1),
(27, 1, 14, 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `specificsdate`
-- (See below for the actual view)
--
CREATE TABLE `specificsdate` (
`Vname` varchar(30)
,`City` varchar(15)
,`Ctname` varchar(15)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `spentmore10`
-- (See below for the actual view)
--
CREATE TABLE `spentmore10` (
`Cname` varchar(30)
,`TotalAmount` varchar(12)
);

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `sId` int(9) NOT NULL,
  `Sname` varchar(30) NOT NULL,
  `Street` varchar(30) NOT NULL,
  `City` varchar(30) NOT NULL,
  `StateAb` varchar(2) NOT NULL,
  `ZipCode` varchar(9) NOT NULL,
  `Sdate` date NOT NULL,
  `Telno` bigint(10) NOT NULL,
  `URL` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`sId`, `Sname`, `Street`, `City`, `StateAb`, `ZipCode`, `Sdate`, `Telno`, `URL`) VALUES
(1, 'Arlington Sprouts-1', '1 Cooper Street', 'Arlington', 'TX', '76019-001', '2023-01-10', 8172721111, 'www.ArlingtonSprouts-1.com');

-- --------------------------------------------------------

--
-- Table structure for table `store_customer`
--

CREATE TABLE `store_customer` (
  `sId` int(11) NOT NULL,
  `cId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store_customer`
--

INSERT INTO `store_customer` (`sId`, `cId`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21);

-- --------------------------------------------------------

--
-- Table structure for table `store_item`
--

CREATE TABLE `store_item` (
  `sId` int(11) NOT NULL,
  `iId` int(11) NOT NULL,
  `Scount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store_item`
--

INSERT INTO `store_item` (`sId`, `iId`, `Scount`) VALUES
(1, 1, 10),
(1, 2, 10),
(1, 3, 10),
(1, 4, 10),
(1, 5, 10),
(1, 6, 10),
(1, 7, 10),
(1, 8, 10),
(1, 9, 10),
(1, 10, 12),
(1, 11, 13),
(1, 12, 10),
(1, 13, 16),
(1, 14, 15);

-- --------------------------------------------------------

--
-- Stand-in structure for view `topcities`
-- (See below for the actual view)
--
CREATE TABLE `topcities` (
`City` varchar(30)
,`StateAb` varchar(2)
,`OrderCount` bigint(21)
);

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `vId` int(11) NOT NULL,
  `Vname` varchar(30) NOT NULL,
  `Street` varchar(30) NOT NULL,
  `City` varchar(15) NOT NULL,
  `StateAb` varchar(2) NOT NULL,
  `ZipCode` varchar(11) NOT NULL,
  `Vemail` varchar(30) NOT NULL,
  `VTelNo` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`vId`, `Vname`, `Street`, `City`, `StateAb`, `ZipCode`, `Vemail`, `VTelNo`) VALUES
(1, 'Organic Nature', '1500 E Exchange Road', 'Allen', 'TX', '75002-4504', 'organic.nature@gmail.com', 9127731567),
(2, 'Green Valley', '1405 Julian Street', 'Addison', 'TX', '75001-4633', 'green.valley@gmail.com', 8659432879),
(3, 'Green Mountains', '800 Preston Road', 'Gunter', 'TX', '75058-0001', 'green.mountains@gmail.com', 4695308000),
(4, 'Whole Foods', '1010 Spicewood Drive', 'Garland', 'TX', '75044-2569', 'whole.foods@gmail.com', 3129874562),
(5, 'LA Queen', '500 Angi Road', 'Minden', 'LA', '71055-1004', 'la.queen@gmail.com', 5429873904),
(6, 'Castor Sprouts', '100 New Ramah Road', 'Castor', 'LA', '71016-2402', 'castor.sprouts@gmail.com', 6700042715);

-- --------------------------------------------------------

--
-- Table structure for table `vendor_item`
--

CREATE TABLE `vendor_item` (
  `vId` int(11) NOT NULL,
  `iId` int(11) NOT NULL,
  `Vprice` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vendor_item`
--

INSERT INTO `vendor_item` (`vId`, `iId`, `Vprice`) VALUES
(1, 1, 2),
(1, 2, 2),
(1, 3, 1),
(1, 14, 1),
(2, 4, 3),
(2, 5, 2),
(2, 6, 2),
(2, 13, 4),
(3, 7, 3),
(3, 8, 2),
(3, 9, 2),
(3, 10, 2),
(4, 11, 3),
(4, 12, 3),
(4, 13, 2),
(4, 14, 2),
(5, 7, 3),
(5, 11, 2),
(5, 13, 5),
(5, 14, 3),
(6, 7, 2),
(6, 8, 1),
(6, 9, 3),
(6, 10, 4);

-- --------------------------------------------------------

--
-- Table structure for table `vendor_store`
--

CREATE TABLE `vendor_store` (
  `vId` int(11) NOT NULL,
  `sId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vendor_store`
--

INSERT INTO `vendor_store` (`vId`, `sId`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1);

-- --------------------------------------------------------

--
-- Structure for view `employeefromuta`
--
DROP TABLE IF EXISTS `employeefromuta`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `employeefromuta`  AS SELECT `e`.`Ename` AS `Ename`, `e`.`Sdate` AS `Sdate`, `e`.`TelNo` AS `TelNo` FROM `employee` AS `e` WHERE `e`.`Etype` = 'I' AND `e`.`Institute` = 'UTA' ;

-- --------------------------------------------------------

--
-- Structure for view `feedbackordergiven`
--
DROP TABLE IF EXISTS `feedbackordergiven`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `feedbackordergiven`  AS SELECT DISTINCT `c`.`cId` AS `CID`, `c`.`Cname` AS `Cname`, `c`.`City` AS `City`, `c`.`CTelNo` AS `Telephone` FROM ((`customer` `c` join `orders` `o` on(`c`.`cId` = `o`.`cId`)) join `feedback` `f` on(`o`.`cId` = `f`.`cId`)) ;

-- --------------------------------------------------------

--
-- Structure for view `itemsnotwanted`
--
DROP TABLE IF EXISTS `itemsnotwanted`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `itemsnotwanted`  AS SELECT `i`.`Iname` AS `Iname` FROM `item` AS `i` WHERE !(`i`.`iId` in (select `i`.`iId` from (`item` `i` join `order_item` `o` on(`i`.`iId` = `o`.`iId`)))) ;

-- --------------------------------------------------------

--
-- Structure for view `specificsdate`
--
DROP TABLE IF EXISTS `specificsdate`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `specificsdate`  AS SELECT `v`.`Vname` AS `Vname`, `v`.`City` AS `City`, `c`.`Ctname` AS `Ctname` FROM (`vendor` `v` join `contract` `c` on(`v`.`vId` = `c`.`vId`)) WHERE `c`.`Sdate` = '6/25/2024' ;

-- --------------------------------------------------------

--
-- Structure for view `spentmore10`
--
DROP TABLE IF EXISTS `spentmore10`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `spentmore10`  AS SELECT `c`.`Cname` AS `Cname`, concat('$',`o`.`Amount`) AS `TotalAmount` FROM (`customer` `c` join `orders` `o`) WHERE `c`.`cId` = `o`.`cId` AND `o`.`Amount` > 10 ;

-- --------------------------------------------------------

--
-- Structure for view `topcities`
--
DROP TABLE IF EXISTS `topcities`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `topcities`  AS SELECT DISTINCT `c`.`City` AS `City`, `c`.`StateAb` AS `StateAb`, count(`c`.`City`) AS `OrderCount` FROM (`orders` `o` join `customer` `c` on(`o`.`cId` = `c`.`cId`)) GROUP BY `c`.`City` ORDER BY count(`c`.`City`) DESC LIMIT 0, 2 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contract`
--
ALTER TABLE `contract`
  ADD PRIMARY KEY (`vId`,`ctId`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cId`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`SSN`),
  ADD KEY `sId` (`sId`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`cId`,`rId`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`iId`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`oId`,`sId`),
  ADD KEY `sId` (`sId`),
  ADD KEY `cId` (`cId`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`oId`,`sId`,`iId`),
  ADD KEY `sId` (`sId`),
  ADD KEY `iId` (`iId`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`sId`),
  ADD UNIQUE KEY `sId` (`sId`),
  ADD UNIQUE KEY `sId_2` (`sId`),
  ADD UNIQUE KEY `sId_3` (`sId`);

--
-- Indexes for table `store_customer`
--
ALTER TABLE `store_customer`
  ADD PRIMARY KEY (`sId`,`cId`),
  ADD KEY `cId` (`cId`);

--
-- Indexes for table `store_item`
--
ALTER TABLE `store_item`
  ADD PRIMARY KEY (`sId`,`iId`),
  ADD KEY `iId` (`iId`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`vId`);

--
-- Indexes for table `vendor_item`
--
ALTER TABLE `vendor_item`
  ADD PRIMARY KEY (`vId`,`iId`),
  ADD KEY `iId` (`iId`);

--
-- Indexes for table `vendor_store`
--
ALTER TABLE `vendor_store`
  ADD PRIMARY KEY (`vId`,`sId`),
  ADD KEY `sId` (`sId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `vId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contract`
--
ALTER TABLE `contract`
  ADD CONSTRAINT `contract_ibfk_1` FOREIGN KEY (`vId`) REFERENCES `vendor` (`vId`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`sId`) REFERENCES `store` (`sId`);

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`cId`) REFERENCES `customer` (`cId`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`sId`) REFERENCES `store` (`sId`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`cId`) REFERENCES `customer` (`cId`);

--
-- Constraints for table `order_item`
--
ALTER TABLE `order_item`
  ADD CONSTRAINT `order_item_ibfk_1` FOREIGN KEY (`sId`) REFERENCES `store` (`sId`),
  ADD CONSTRAINT `order_item_ibfk_2` FOREIGN KEY (`oId`) REFERENCES `orders` (`oId`),
  ADD CONSTRAINT `order_item_ibfk_3` FOREIGN KEY (`iId`) REFERENCES `item` (`iId`);

--
-- Constraints for table `store_customer`
--
ALTER TABLE `store_customer`
  ADD CONSTRAINT `store_customer_ibfk_1` FOREIGN KEY (`sId`) REFERENCES `store` (`sId`),
  ADD CONSTRAINT `store_customer_ibfk_2` FOREIGN KEY (`cId`) REFERENCES `customer` (`cId`);

--
-- Constraints for table `store_item`
--
ALTER TABLE `store_item`
  ADD CONSTRAINT `store_item_ibfk_1` FOREIGN KEY (`sId`) REFERENCES `store` (`sId`),
  ADD CONSTRAINT `store_item_ibfk_2` FOREIGN KEY (`iId`) REFERENCES `item` (`iId`);

--
-- Constraints for table `vendor_item`
--
ALTER TABLE `vendor_item`
  ADD CONSTRAINT `vendor_item_ibfk_1` FOREIGN KEY (`vId`) REFERENCES `vendor` (`vId`),
  ADD CONSTRAINT `vendor_item_ibfk_2` FOREIGN KEY (`iId`) REFERENCES `item` (`iId`);

--
-- Constraints for table `vendor_store`
--
ALTER TABLE `vendor_store`
  ADD CONSTRAINT `vendor_store_ibfk_1` FOREIGN KEY (`vId`) REFERENCES `vendor` (`vId`),
  ADD CONSTRAINT `vendor_store_ibfk_2` FOREIGN KEY (`sId`) REFERENCES `store` (`sId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
