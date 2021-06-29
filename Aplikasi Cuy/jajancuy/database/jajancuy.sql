-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2021 at 07:06 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alvistore`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `pass` varchar(40) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `pass`) VALUES
('admin', 'd033e22ae348aeb5660fc2140aec35850c4da997');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_isbn` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `book_title` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `book_author` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `book_image` varchar(40) COLLATE latin1_general_ci DEFAULT NULL,
  `book_descr` text COLLATE latin1_general_ci,
  `book_price` decimal(6,2) NOT NULL,
  `publisherid` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_isbn`, `book_title`, `book_author`, `book_image`, `book_descr`, `book_price`, `publisherid`) VALUES
('978-0-321-94786-4', 'Krupuk Udang Barbeque', 'PANGERAN KEMBAR', 'mobile_app.jpg', '100% Halal Exp. 7 Maret 2022', '1.00', 6),
('978-0-7303-1484-4', 'Cuanki Dower', 'HATUKI', 'doing_good.jpg', '100% Halal Exp. 7 Maret 2022', '1.00', 2),
('978-1-118-94924-5', 'Cuanki Wildan Frozen Edition', 'WILDAN', 'logic_program.jpg', '100% Halal Exp. 7 Maret 2022', '1.00', 2),
('978-1-1180-2669-4', 'Seblak Asgar', 'ASGAR', 'pro_js.jpg', '100% Halal Exp. 7 Maret 2022', '1.00', 1),
('978-1-44937-019-0', 'Baso Aci BAPER Tulang Rangu', 'BASO ACI BAPER', 'web_app_dev.jpg', '100% Halal Exp. 7 Maret 2022', '1.00', 3),
('978-1-44937-075-6', 'BOKIR Bakso Aci Syakir', 'SYAKIR', 'beauty_js.jpg', '100% Halal Exp. 7 Maret 2022', '1.00', 3),
('978-1-4571-0402-2', 'Seblak Semaput', 'FUUTO', 'pro_asp4.jpg', '100% Halal Exp. 7 Maret 2022', '1.00', 1),
('978-1-484216-40-8', 'MADEJUL Makaroni', 'MADEJUL', 'android_studio.jpg', '100% Halal Exp. 7 Maret 2022', '1.00', 4),
('978-1-484217-26-9', 'MIE OSYIN The Best Mie Lidi', 'OSYIN', 'c_14_quick.jpg', '100% Halal Exp. 7 Maret 2022', '1.00', 4),
('978-1-49192-706-9', 'BASRANGER Baso Aci Ekstra Pedas', 'BASRANGER', 'c_sharp_6.jpg', '100% Halal\r\nExp. 7 Maret 2022', '1.00', 3);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customerid` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE latin1_general_ci NOT NULL,
  `address` varchar(80) COLLATE latin1_general_ci NOT NULL,
  `city` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `zip_code` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `country` varchar(60) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerid`, `name`, `address`, `city`, `zip_code`, `country`) VALUES
(1, 'a', 'a', 'a', 'a', 'a'),
(2, 'b', 'b', 'b', 'b', 'b'),
(3, 'test', '123 test', '12121', 'test', 'test'),
(4, 'dfsd', 'dfsd', 'dfsdf', 'df', 'sdasd'),
(5, 'ifan', 'dukuhtengah', '345234', 'brebes', 'jawa tengah'),
(6, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderid` int(10) UNSIGNED NOT NULL,
  `customerid` int(10) UNSIGNED NOT NULL,
  `amount` decimal(6,2) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ship_name` char(60) COLLATE latin1_general_ci NOT NULL,
  `ship_address` char(80) COLLATE latin1_general_ci NOT NULL,
  `ship_city` char(30) COLLATE latin1_general_ci NOT NULL,
  `ship_zip_code` char(10) COLLATE latin1_general_ci NOT NULL,
  `ship_country` char(20) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderid`, `customerid`, `amount`, `date`, `ship_name`, `ship_address`, `ship_city`, `ship_zip_code`, `ship_country`) VALUES
(1, 1, '60.00', '2015-12-03 13:30:12', 'a', 'a', 'a', 'a', 'a'),
(2, 2, '60.00', '2015-12-03 13:31:12', 'b', 'b', 'b', 'b', 'b'),
(3, 3, '20.00', '2015-12-03 19:34:21', 'test', '123 test', '12121', 'test', 'test'),
(4, 1, '20.00', '2015-12-04 10:19:14', 'a', 'a', 'a', 'a', 'a'),
(5, 4, '3.00', '2021-06-29 11:07:59', 'dfsd', 'dfsd', 'dfsdf', 'df', 'sdasd'),
(6, 5, '7.00', '2021-06-29 11:53:07', 'ifan', 'dukuhtengah', '345234', 'brebes', 'jawa tengah'),
(7, 6, '0.00', '2021-06-29 11:53:37', '', '', '', '', ''),
(8, 6, '0.00', '2021-06-29 11:54:41', '', '', '', '', ''),
(9, 6, '0.00', '2021-06-29 11:54:44', '', '', '', '', ''),
(10, 5, '1.00', '2021-06-29 11:55:41', 'ifan', 'dukuhtengah', '345234', 'brebes', 'jawa tengah'),
(11, 5, '1.00', '2021-06-29 11:59:03', 'ifan', 'dukuhtengah', '345234', 'brebes', 'jawa tengah'),
(12, 5, '1.00', '2021-06-29 12:02:47', 'ifan', 'dukuhtengah', '345234', 'brebes', 'jawa tengah'),
(13, 6, '0.00', '2021-06-29 12:04:37', '', '', '', '', ''),
(14, 5, '1.00', '2021-06-29 12:05:00', 'ifan', 'dukuhtengah', '345234', 'brebes', 'jawa tengah');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `orderid` int(10) UNSIGNED NOT NULL,
  `book_isbn` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `item_price` decimal(6,2) NOT NULL,
  `quantity` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`orderid`, `book_isbn`, `item_price`, `quantity`) VALUES
(1, '978-1-118-94924-5', '20.00', 1),
(1, '978-1-44937-019-0', '20.00', 1),
(1, '978-1-49192-706-9', '20.00', 1),
(2, '978-1-118-94924-5', '20.00', 1),
(2, '978-1-44937-019-0', '20.00', 1),
(2, '978-1-49192-706-9', '20.00', 1),
(3, '978-0-321-94786-4', '20.00', 1),
(1, '978-1-49192-706-9', '20.00', 1),
(5, '978-1-484216-40-8', '1.00', 3),
(6, '978-0-7303-1484-4', '1.00', 7),
(6, '978-0-7303-1484-4', '1.00', 1),
(6, '978-1-118-94924-5', '1.00', 1),
(6, '978-1-484216-40-8', '1.00', 1),
(6, '978-1-118-94924-5', '1.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `publisherid` int(10) UNSIGNED NOT NULL,
  `publisher_name` varchar(60) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`publisherid`, `publisher_name`) VALUES
(1, 'Seblak'),
(2, 'Cuanki'),
(3, 'Baso Aci'),
(4, 'Makaroni'),
(5, 'Keripik'),
(6, 'Kerupuk');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`name`,`pass`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_isbn`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`publisherid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customerid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `publisherid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
