-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2020 at 11:41 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos_system`
--
CREATE DATABASE IF NOT EXISTS `pos_system` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pos_system`;

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `account_id` varchar(10) NOT NULL,
  `level_access_access_id` varchar(10) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`account_id`, `level_access_access_id`, `username`, `password`) VALUES
('A0001', 'L0001', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `customer_id` varchar(10) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `customer_email` varchar(45) NOT NULL,
  `customer_phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `customer_email`, `customer_phone`) VALUES
('C0001', 'Bambang Praja', 'bbg@mail.com', '+62-813-555-959'),
('C0002', 'Joko Siahaan', 'jks@mail.com', '+62-814-555-061'),
('C0003', 'Billy Simpson', 'bls@mail.com', '+62-898-555-020');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `employee_id` varchar(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `account_account_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `name`, `phone`, `account_account_id`) VALUES
('E0001', 'Admin', '081234567890', 'A0001');

-- --------------------------------------------------------

--
-- Table structure for table `level_access`
--

DROP TABLE IF EXISTS `level_access`;
CREATE TABLE `level_access` (
  `access_id` varchar(10) NOT NULL,
  `access_name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `level_access`
--

INSERT INTO `level_access` (`access_id`, `access_name`) VALUES
('L0001', 'Administrator'),
('L0002', 'User');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `menu_id` varchar(10) NOT NULL,
  `menu_name` varchar(45) NOT NULL,
  `menu_price` decimal(10,2) NOT NULL,
  `menu_description` text NOT NULL,
  `menu_category_menu_category_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_name`, `menu_price`, `menu_description`, `menu_category_menu_category_id`) VALUES
('M001', 'Ketoprak', '25000.00', 'Ketoprak dengan bumbu rahasia', 'C001'),
('M002', 'Rujak Cingur', '20000.00', 'Rujak dengan buah-buahan segar', 'C001'),
('M003', 'Gado-gado', '30000.00', 'Gado-gado dengan sayur-sayuran segar', 'C001'),
('M004', 'Cireng Keju', '25000.00', 'Cireng dengan lelehan keju mozarella', 'C001'),
('M005', 'Pecel', '15000.00', 'Pecel dengan bumbu berkualitas', 'C001'),
('M006', 'Es Cendol', '20000.00', 'Perpaduan nikmat antara tepung beras, gula merah, dan es parut', 'C005'),
('M007', 'Sekoteng', '40000.00', 'Minuman dengan cita rasa khas jahe', 'C005'),
('M008', 'Es Selendang Mayang', '20000.00', 'Perpaduan nikmat antara santan, sirup, dan susu', 'C005'),
('M009', 'Es Doger', '30000.00', 'Es yang populer nan manis', 'C005'),
('M010', 'Air putih', '10000.00', 'Air tawar', 'C005'),
('M011', 'Teh', '15000.00', 'Teh', 'C005'),
('M012', 'Martabak Manis', '30000.00', 'Martabak dengan beragam isian', 'C004'),
('M013', 'Pukis Keju', '40000.00', 'Kue pukis berselimutkan keju swiss', 'C004'),
('M014', 'Pisang Goreng', '20000.00', 'Pisang goreng dengan tepung krispy', 'C004'),
('M015', 'Klepon', '30000.00', 'Klepon kenyal dengan ledakan gula merah lumer', 'C004'),
('M016', 'Naga Sari', '30000.00', 'Perpaduan tepung beras lembut dengan manisnya buah pisang', 'C004'),
('M017', 'Bandeng Kuah Kuning', '90000.00', 'Bandeng kuah kuning dengan rasa asam dan pedas', 'C003'),
('M018', 'Asian Shrimp and Asparagus', '100000.00', 'Perpaduan rasa udang dengan sup asparagus', 'C003'),
('M019', 'Ayam Bumbu Rujak', '80000.00', 'Ayam panggang dengan olesan bumbu rujak spesial', 'C003'),
('M020', 'Ayam Lada Hitam', '80000.00', 'Ayam dengan siraman saus lada hitam khas nusantara', 'C003'),
('M021', 'Bakmie Goreng Seafood', '70000.00', 'Bakmie goreng dengan topping seafood komplit', 'C003'),
('M022', 'Nasi Putih', '20000.00', 'Nasi putih hangat nan nikmat', 'C003'),
('M023', 'Nasi Goreng', '40000.00', 'Nasi goreng dengan bumubu rahasia', 'C003'),
('M024', 'Sop Tunjang', '40000.00', 'Sop Tunjang dengan kaki sapi muda', 'C002'),
('M025', 'Sop Buntut', '45000.00', 'Sop Buntut yang diburu para turis', 'C002'),
('M026', 'Sop Konro', '40000.00', 'Sop Konro khas Sulawesi Selatan', 'C002'),
('M027', 'Sop Sayur Asam', '40000.00', 'Sop Sayur Asem yang kaya akan cita rasa', 'C002'),
('M028', 'Mie Sop Medan', '30000.00', 'Mie Sop Medan perpaduan antara mie dengan kuah sop istimewa', 'C002');

-- --------------------------------------------------------

--
-- Table structure for table `menu_category`
--

DROP TABLE IF EXISTS `menu_category`;
CREATE TABLE `menu_category` (
  `menu_category_id` varchar(10) NOT NULL,
  `menu_category_name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu_category`
--

INSERT INTO `menu_category` (`menu_category_id`, `menu_category_name`) VALUES
('C001', 'Appetizer'),
('C002', 'Soup'),
('C003', 'Main Course'),
('C004', 'Dessert'),
('C005', 'Beverage');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `order_id` varchar(10) NOT NULL,
  `date_time` datetime NOT NULL,
  `is_take_away` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_id`, `date_time`, `is_take_away`) VALUES
('O202011001', '2020-11-29 07:31:06', 0),
('O202011002', '2020-11-29 07:32:09', 0),
('O202011003', '2020-11-29 07:32:16', 0),
('O202011004', '2020-11-29 07:32:29', 0),
('O202011005', '2020-11-29 11:06:16', 0),
('O202011006', '2020-11-29 11:06:33', 0),
('O202011007', '2020-11-29 01:43:23', 0),
('O202011008', '2020-11-29 02:18:48', 0),
('O202011009', '2020-11-29 03:21:39', 0),
('O202011010', '2020-11-29 08:51:51', 0),
('O202011011', '2020-11-29 10:35:58', 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail` (
  `menu_menu_id` varchar(10) NOT NULL,
  `order_order_id` varchar(10) NOT NULL,
  `quantity` int(11) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`menu_menu_id`, `order_order_id`, `quantity`, `subtotal`) VALUES
('M001', 'O202011011', 1, '25000.00'),
('M002', 'O202011001', 1, '20000.00'),
('M005', 'O202011001', 1, '15000.00'),
('M006', 'O202011002', 1, '20000.00'),
('M006', 'O202011005', 1, '20000.00'),
('M007', 'O202011001', 4, '160000.00'),
('M007', 'O202011006', 1, '40000.00'),
('M007', 'O202011007', 1, '40000.00'),
('M007', 'O202011008', 1, '40000.00'),
('M007', 'O202011010', 1, '40000.00'),
('M008', 'O202011001', 1, '20000.00'),
('M009', 'O202011003', 1, '30000.00'),
('M010', 'O202011011', 1, '10000.00'),
('M011', 'O202011003', 19, '285000.00'),
('M013', 'O202011001', 1, '40000.00'),
('M013', 'O202011011', 1, '40000.00'),
('M016', 'O202011009', 1, '30000.00'),
('M018', 'O202011003', 4, '400000.00'),
('M018', 'O202011004', 5, '500000.00'),
('M020', 'O202011001', 1, '80000.00'),
('M025', 'O202011001', 1, '45000.00');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
CREATE TABLE `reservation` (
  `reservation_id` varchar(10) NOT NULL,
  `date_time` datetime NOT NULL,
  `customer_customer_id` varchar(10) NOT NULL,
  `table_table_number` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`reservation_id`, `date_time`, `customer_customer_id`, `table_table_number`) VALUES
('R0000001', '2020-11-04 20:00:00', 'C0001', 'T004');

-- --------------------------------------------------------

--
-- Table structure for table `table`
--

DROP TABLE IF EXISTS `table`;
CREATE TABLE `table` (
  `table_number` varchar(10) NOT NULL,
  `capacity` int(11) NOT NULL,
  `floor` int(11) NOT NULL,
  `availability` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table`
--

INSERT INTO `table` (`table_number`, `capacity`, `floor`, `availability`) VALUES
('T001', 2, 1, 1),
('T002', 2, 1, 1),
('T003', 2, 1, 1),
('T004', 2, 1, 1),
('T005', 2, 1, 1),
('T006', 4, 1, 1),
('T007', 4, 1, 1),
('T008', 4, 1, 1),
('T009', 4, 2, 1),
('T010', 4, 2, 1),
('T011', 4, 2, 1),
('T012', 6, 2, 1),
('T013', 6, 2, 1),
('T014', 8, 2, 1),
('T015', 8, 2, 1),
('T016', 10, 2, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`account_id`),
  ADD KEY `level_access_access_id` (`level_access_access_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`),
  ADD KEY `account_account_id` (`account_account_id`);

--
-- Indexes for table `level_access`
--
ALTER TABLE `level_access`
  ADD PRIMARY KEY (`access_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`),
  ADD KEY `menu_category_menu_category_id` (`menu_category_menu_category_id`);

--
-- Indexes for table `menu_category`
--
ALTER TABLE `menu_category`
  ADD PRIMARY KEY (`menu_category_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`menu_menu_id`,`order_order_id`),
  ADD KEY `order_order_id` (`order_order_id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`reservation_id`),
  ADD KEY `customer_customer_id` (`customer_customer_id`),
  ADD KEY `table_table_number` (`table_table_number`);

--
-- Indexes for table `table`
--
ALTER TABLE `table`
  ADD PRIMARY KEY (`table_number`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `account_ibfk_1` FOREIGN KEY (`level_access_access_id`) REFERENCES `level_access` (`access_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`account_account_id`) REFERENCES `account` (`account_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`menu_category_menu_category_id`) REFERENCES `menu_category` (`menu_category_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`menu_menu_id`) REFERENCES `menu` (`menu_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `order_detail_ibfk_2` FOREIGN KEY (`order_order_id`) REFERENCES `order` (`order_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`customer_customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`table_table_number`) REFERENCES `table` (`table_number`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
