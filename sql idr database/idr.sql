-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2018 at 10:37 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `idr`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `company` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL DEFAULT 'n/a',
  `phone_number` varchar(250) NOT NULL,
  `vat_number` varchar(250) NOT NULL,
  `address` varchar(200) NOT NULL DEFAULT 'n/a'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `firstname`, `lastname`, `company`, `email`, `phone_number`, `vat_number`, `address`) VALUES
(1, 'kostas', 'zotos', 'mediterraneo', 'kzwtos@gmail.com', '', '', ''),
(2, 'nick', 'kekk', 'Medicon', 'nikkeek@gmail.com', '', '', ''),
(3, 'test1', 'test', 'IBM', 'test1@gmail.com', '', '', ''),
(4, 'steve', 'jobs', 'APPLE', 'stevejobs@gmail.com', '', '', ''),
(5, 'bill', 'gates', 'MISCROSOFT', 'billgates@gmail.com', '', '', ''),
(6, 'asdsad', 'asdsad', 'asd', 'asd', 'asd', 'asd', 'asd'),
(7, 'sdfgsdgsdgf', 'sdfsd', 'fsdf', 'fsdf', 'sdfsdfsdfsd', 'sdf', 'sdf'),
(8, 'David', 'och', 'Cardiff', 'ghtest@gmail.com', '+3012345435', '123455678', 'wall street 223');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(11) NOT NULL,
  `product` varchar(250) NOT NULL,
  `description` varchar(250) NOT NULL,
  `serial_number` varchar(250) NOT NULL DEFAULT 'n/a',
  `total_price` double DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `total_packages` int(11) DEFAULT NULL,
  `register_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `product`, `description`, `serial_number`, `total_price`, `stock`, `total_packages`, `register_date`) VALUES
(2, 'asus1', 'motherboard', 'n/a', 299, 5, 0, '2018-11-14 07:14:12'),
(3, 'asus2', 'motherboard', 'n/a', 299.99, 5, 0, '2018-11-27 04:00:12'),
(4, '4444444nvidia444', '444444444motherboard44', 'n/a', 299, 5, 0, '2017-02-08 06:16:31'),
(5, 'nvidia2555555', 'motherboard5555', 'n/a', 299, 5, 0, '2018-07-19 10:24:24'),
(6, 'nvidia3', 'motherboard', 'n/a', 299, 5, 0, '2018-09-12 09:18:00'),
(9, 'intel pro 1.1', 'cpu 4.5Ghz i7', 'n/a', 455.33, 5, 0, '2018-10-08 06:20:00'),
(10, 'hp proliant', 'server 128Gb RAM', 'n/a', 2100.99, 5, 2, '2018-09-04 07:17:19'),
(20, 'asdasd', 'aasd', 'SERSDAF-32423-4NNN', 12.99, 0, 0, '2018-11-04 16:08:32'),
(21, 'asdasd', 'aasd', 'SERSDAF-32423-4NNN', 12.99, 0, 0, '2018-11-04 16:09:26'),
(23, 'asus1', 'motherboard', 'n/a', 299, 5, 0, '2018-11-14 07:14:12'),
(24, 'asus2', 'motherboard', 'n/a', 299.99, 5, 0, '2018-11-27 04:00:12'),
(25, 'nvidia', 'motherboard', 'n/a', 299, 5, 0, '2017-02-08 06:16:31'),
(26, 'nvidia2', 'motherboard', 'n/a', 299, 5, 0, '2018-07-19 10:24:24'),
(27, 'nvidia3', 'motherboard', 'n/a', 299, 5, 0, '2018-09-12 09:18:00'),
(28, 'intel pro 1.1', 'cpu 4.5Ghz i7', 'n/a', 455.33, 5, 0, '2018-10-08 06:20:00'),
(29, 'hp proliant', 'server 128Gb RAM', 'n/a', 2100.99, 5, 2, '2018-09-04 07:17:19'),
(30, 'asdasd', 'aasd', 'SERSDAF-32423-4NNN', 12.99, 0, 0, '2018-11-04 16:08:32'),
(31, 'asdasd', 'aasd', 'SERSDAF-32423-4NNN', 12.99, 0, 0, '2018-11-04 16:09:26'),
(32, 'testest22323', 'cityunitytest', 'asdasd324-123', 455.33, 5, 0, '2018-11-04 17:17:39'),
(35, 'asdsad', 'asdsad', 'javax.swing.JTextField[,137,139,200x25,layout=javax.swing.plaf.basic.BasicTextUI$UpdateHandler,alignmentX=0.0,alignmentY=0.0,border=javax.swing.plaf.BorderUIResource$CompoundBorderUIResource@25e17d0a,flags=296,maximumSize=,minimumSize=,preferredSize=', 0, 0, 0, '2018-11-06 23:35:26'),
(36, 'asdasdsad', 'asdsadasdasdsad', 'asdasd324324-234234sad', 3214, 32, 123, '2018-11-06 23:36:29'),
(37, 'sadasd', 'asd', '', 0, 0, 0, '2018-11-06 23:40:38'),
(38, 'cccccccccc', 'cc', 'c', 0, 0, 0, '2018-11-06 23:41:40'),
(39, 'vvvvvvvvvvvv', 'vv', '', 0, 0, 0, '2018-11-06 23:42:05'),
(40, 'bbb', 'bb', '', 0, 0, 0, '2018-11-06 23:43:50'),
(41, 'zzzz', 'zzz', 'zz', 0, 0, 0, '2018-11-06 23:46:09'),
(42, 'bbbbbbb', 'bb', '', 0, 0, 0, '2018-11-06 23:47:59'),
(45, 'asdasdsad', 'asdasd', 'asd', 0, 0, 0, '2018-11-06 23:52:31'),
(46, 'asdsadsad', 'asdasd', '', 0, 0, 0, '2018-11-06 23:53:34'),
(47, 'asdasdasd', 'asdasd', '', 0, 0, 0, '2018-11-06 23:54:57'),
(48, 'sadasdasd', 'cascasc', 'ascsac', 0, 0, 0, '2018-11-06 23:55:20'),
(49, 'bbbbbbvbvbvbvbvvb', 'vb', 'vbvbvb', 0, 0, 0, '2018-11-06 23:56:38'),
(50, 'asdsadasdsad', 'asdasd', '', 0, 0, 0, '2018-11-06 23:57:07'),
(51, 'asdsadsad', 'adasd', 'sad', 0, 0, 0, '2018-11-06 23:57:42'),
(52, '', '', '', 0, 0, 0, '2018-11-06 23:58:39'),
(53, '', '', '', 0, 0, 0, '2018-11-07 00:10:49'),
(54, '', '', '', 0, 0, 0, '2018-11-08 17:52:13'),
(56, '', '', '', 0, 0, 0, '2018-11-08 17:58:34'),
(57, '', '', '', 0, 0, 0, '2018-11-08 17:58:57'),
(58, '', '', '', 0, 0, 0, '2018-11-08 17:58:59'),
(59, '', '', '', 0, 0, 0, '2018-11-08 17:59:26'),
(60, '', '', '', 0, 0, 0, '2018-11-08 17:59:48'),
(61, 'asd', '', '', 0, 0, 0, '2018-11-08 18:01:38'),
(62, 'asd', '', '', 0, 0, 0, '2018-11-08 18:01:46'),
(63, 'asd', '', '', 0, 0, 0, '2018-11-08 18:08:16'),
(64, 'dfsdf', 'sadsadsad', 'xcvxcv', 0, 0, 0, '2018-11-08 18:14:39'),
(65, 'sadasd', 'asd', 's', 0, 0, 0, '2018-11-08 18:30:34'),
(66, 'asd', 'asd', 'asdsads', 0, 0, 0, '2018-11-08 18:30:55'),
(67, 'asd', 'asd', 'asdsads', 0, 0, 0, '2018-11-08 18:30:56'),
(68, 'sad', 's', 's', 0, 0, 0, '2018-11-08 18:31:16'),
(69, 'sad', 's', 's', 0, 0, 0, '2018-11-08 18:31:17'),
(70, 'sad', 's', 's', 0, 0, 0, '2018-11-08 18:31:18'),
(71, 's', 's', 's', 0, 0, 0, '2018-11-08 18:32:17'),
(72, 's', 's', 's', 0, 0, 0, '2018-11-08 18:33:02'),
(73, 's', 's', 's', 0, 0, 0, '2018-11-08 18:34:36'),
(74, 's', 's', 's', 0, 0, 0, '2018-11-08 18:35:30'),
(75, 's', 's', 's', 0, 0, 0, '2018-11-08 18:35:40'),
(76, 's', 's', 's', 0, 0, 0, '2018-11-08 18:35:43'),
(78, 's', 's', 's', 0, 0, 0, '2018-11-08 18:35:53'),
(79, 'v', 'v', 'vs', 0, 0, 0, '2018-11-08 18:36:05'),
(80, 'jj', 'jj', 'jj', 0, 0, 0, '2018-11-08 18:36:16'),
(81, 'k', 'k', 'k', 0, 0, 0, '2018-11-08 18:36:26'),
(82, 'vvvvvvvvvvvvv', 'v', 'v', 0, 0, 0, '2018-11-08 18:39:41'),
(83, 'nnnnnnn', 'n', 'n', 0, 0, 0, '2018-11-08 18:40:45'),
(84, 'ssss', 's', 's', 0, 0, 0, '2018-11-08 18:41:46'),
(85, 'bbbbbb', 'b', 'b', 0, 0, 0, '2018-11-08 18:42:08'),
(86, 'v', 'v', 'v', 0, 0, 0, '2018-11-08 18:43:02'),
(87, 'asdsad', 'asd', 'asd', 0, 0, 0, '2018-11-08 18:44:45'),
(89, 'cvbcvbcvb', 'cvb', 'cvb', 0, 0, 0, '2018-11-08 18:47:51'),
(90, 'asd', 'asd', 'asd', 0, 0, 0, '2018-11-08 18:48:54'),
(91, 'asd', 'asd', 'asd', 0, 0, 0, '2018-11-08 18:49:16'),
(92, 's', 's', 's', 0, 0, 0, '2018-11-08 18:56:52'),
(93, 's', 's', 's', 0, 0, 0, '2018-11-08 18:57:08'),
(94, 'sad', 's', 's', 0, 0, 0, '2018-11-08 18:57:50'),
(95, 'asd', 'asd', 'asdasd', 0, 0, 0, '2018-11-08 18:58:32'),
(96, 'errrrrrrr', 'r', 'r', 0, 0, 0, '2018-11-08 19:20:00'),
(97, 'tttttttttttt', 't', 't', 0, 0, 0, '2018-11-08 19:21:02'),
(98, 'tttttttttttt', 't', 't', 0, 0, 0, '2018-11-08 19:21:05'),
(99, 'hhh', 'h', 'h', 0, 0, 0, '2018-11-08 19:27:54'),
(100, 'hhh', 'h', 'h', 0, 0, 0, '2018-11-08 19:27:56'),
(101, 'jjj', 'j', 'j', 0, 0, 0, '2018-11-08 19:28:25'),
(102, 'jjj', 'j', 'j', 0, 0, 0, '2018-11-08 19:28:26'),
(103, 'aaaaaaaaaaa', 'a', 'a', 0, 0, 0, '2018-11-08 19:29:53'),
(104, 'fdg', 'dfg', 'dfg', 0, 0, 0, '2018-11-08 22:03:48'),
(105, 'sssssssssss', 's', 's', 0, 0, 0, '2018-11-08 22:09:10'),
(106, 'sad', 'asd', 'asd', 0, 0, 0, '2018-11-08 22:10:32'),
(107, 'sad', 'sd', 's', 0, 0, 0, '2018-11-08 22:11:06'),
(108, 'asdasd', 'asd', 'asd', 0, 0, 0, '2018-11-08 22:11:39'),
(109, 'asd', 'asd', 'asd', 0, 0, 0, '2018-11-08 22:12:05'),
(110, 'ss', 's', 's', 0, 0, 0, '2018-11-08 22:13:05'),
(111, 'ffgfg', 'fg', 'fg', 0, 0, 0, '2018-11-24 12:39:10'),
(112, 'one', 'one', '3444444', 555, 3, 10, '2018-12-08 09:36:00'),
(113, 'd', 'd', 'd', 0, 0, 0, '2018-12-09 12:22:50'),
(114, 'Kostas', 'City', 'Unity', 2222.66, 1, 1, '2018-12-09 13:00:33'),
(115, 'asdasd1123', 'asdasd123213', 'asdasdasd123', 0.01, 1, 1, '2018-12-10 21:48:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `time`) VALUES
(4, 'admin', 'admin', '2018-10-22 19:52:54'),
(6, 'employee', 'employee', '2018-10-22 19:57:57'),
(7, 'supervisor', 'supervisor', '2018-11-04 16:01:27'),
(8, 'internship', 'internship', '2018-11-04 16:02:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
