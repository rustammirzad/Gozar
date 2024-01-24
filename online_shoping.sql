-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2024 at 12:34 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_shoping`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(50) DEFAULT NULL,
  `item_info` varchar(200) DEFAULT NULL,
  `province` varchar(60) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `dates` date DEFAULT current_timestamp(),
  `images` varchar(100) DEFAULT NULL,
  `video_url` varchar(100) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `kind_money` varchar(3) DEFAULT NULL,
  `sale_or` int(11) DEFAULT NULL,
  `kind_trande` varchar(10) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`item_id`, `item_name`, `item_info`, `province`, `address`, `dates`, `images`, `video_url`, `price`, `kind_money`, `sale_or`, `kind_trande`, `userid`) VALUES
(1, 'خانه', 'خانه عصری داری چهار اوطاق و دو حمام عصری و دو تشناب ', 'کابل', 'کارته 4 سرک سوم   سرکت دوم پهلوی جوزه پنجم', '2023-12-24', 'images.jpg', 'l3zipB6nek8', 5000, '$', 0, 'فروشی', 20),
(2, 'دوکان', 'خانه عصری داری چهار اوطاق و دو حمام عصری و دو تشناب ', 'بلخ', 'ناحیه چهارم کارته مولانا', '2023-12-24', 'img.jpg', 'l3zipB6nek8', 7000, 'AF', 0, 'فروشی', 10),
(3, 'زمین', 'خانه عصری داری چهار اوطاق و دو حمام عصری و دو تشناب ', 'بلخ', 'ناحیه چهارم کارته مولانا', '2023-12-24', 'dark.jpg', 'l3zipB6nek8', 7000, 'AF', 0, 'فروشی', 10),
(4, 'زمین', 'خانه عصری داری چهار اوطاق و دو حمام عصری و دو تشناب ', 'بلخ', 'ناحیه چهارم کارته مولانا', '2023-12-24', 'dark.jpg', 'l3zipB6nek8', 7000, 'AF', 0, 'فروشی', 10),
(5, 'زمین', 'خانه عصری داری چهار اوطاق و دو حمام عصری و دو تشناب ', 'بلخ', 'ناحیه چهارم کارته مولانا', '2023-12-24', 'dark.jpg', 'l3zipB6nek8', 7000, 'AF', 0, 'فروشی', 10),
(15, 'car', '2000 white', 'کابل', 'کارته سوم', '2024-01-09', 'dark.jpg', 'l3zipB6nek8', 50000, 'AF', 0, 'فروشی', 10),
(19, 'ریکشاه', 'ریکشاه هندی ', 'بلخ', 'کارته مولانا', '2024-01-09', 'img.jpg', 'l3zipB6nek8', 5000, '$', 0, 'فروشی', 14),
(20, 'ریکشاه', 'ریکشاه هندی ', 'بلخ', 'کارته مولانا', '0000-00-00', 'dark.jpg', 'l3zipB6nek8', 5000, '$', 0, 'فروشی', 14),
(22, 'car', 'mudeal 2004', 'کابل', 'کارته چهارم', '0000-00-00', 'img.jpg', 'l3zipB6nek8', 5000, 'AF', 0, 'کرایی', 14),
(23, 'خانه', 'داری 4 تشناب عصری', 'بلخ', 'کارته مولانا', '0000-00-00', 'img.jpg', 'l3zipB6nek8', 5000, 'AF', 0, 'کرایی', 14),
(24, 'دوکان', 'گلان', 'بلخ', 'کارته مولانا', '0000-00-00', 'img.jpg', 'l3zipB6nek8', 5000, 'AF', 0, 'گروی', 14);

-- --------------------------------------------------------

--
-- Table structure for table `login_info`
--

CREATE TABLE `login_info` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `dates` date DEFAULT NULL,
  `ip` int(11) DEFAULT NULL,
  `device_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `quntity` int(11) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `dates` datetime DEFAULT current_timestamp(),
  `user_id` int(11) DEFAULT NULL,
  `prodect_id` int(11) DEFAULT NULL,
  `confirm` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `resive` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `quntity`, `price`, `dates`, `user_id`, `prodect_id`, `confirm`, `size_id`, `resive`) VALUES
(179, 1, 500, '2023-12-19 19:06:26', 15, 23, 0, 5, 0),
(180, 2, 300, '2023-12-19 19:07:09', 15, 24, 0, 5, 0),
(181, 2, 500, '2023-12-19 19:08:39', 15, 23, 0, 5, 0),
(183, 1, 500, '2023-12-19 19:16:27', 14, 23, 0, 5, 0),
(184, 1, 300, '2023-12-19 19:16:36', 14, 24, 0, 5, 0),
(185, 2, 320, '2023-12-19 19:16:45', 14, 25, 0, 5, 0),
(187, 2, 300, '2023-12-20 20:05:36', 15, 24, 0, 5, 0),
(188, 2, 300, '2023-12-21 10:44:36', 14, 24, 0, 5, 0),
(189, 1, 500, '2023-12-21 15:02:14', 15, 23, 0, 5, 0);

-- --------------------------------------------------------

--
-- Stand-in structure for view `order_info`
-- (See below for the actual view)
--
CREATE TABLE `order_info` (
`order_id` int(11)
,`quntity` int(11)
,`price` int(11)
,`dates` datetime
,`user_id` int(11)
,`prodect_id` int(11)
,`confirm` int(11)
,`size_id` int(11)
,`resive` int(11)
,`name` varchar(70)
,`info` varchar(150)
,`images` varchar(150)
,`user_name` varchar(60)
,`last_name` varchar(60)
,`user_email` varchar(80)
,`user_phone` varchar(13)
,`user_images` varchar(100)
);

-- --------------------------------------------------------

--
-- Table structure for table `prodects`
--

CREATE TABLE `prodects` (
  `id` int(11) NOT NULL,
  `name` varchar(70) DEFAULT NULL,
  `info` varchar(150) DEFAULT NULL,
  `images` varchar(150) DEFAULT NULL,
  `unit_type_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prodects`
--

INSERT INTO `prodects` (`id`, `name`, `info`, `images`, `unit_type_id`, `category_id`) VALUES
(23, 'ژل لوبر یکانت کدکس', 'محصول بهداشتی و جنسی', 'IMG-20231206-WA0002.jpg', NULL, 11),
(24, 'کریم مطوب کننده', 'کریم مطوب کننده حاوی ویتامین  C , E ', 'oil.jpg', NULL, 11),
(25, 'دستمال مرطوب پاک کننده رنگ ناخون', 'دستمال مرطوب پاک کننده رنگ ناخون ', 'peaper.jpg', NULL, 11),
(26, 'شامپو موی تقویت کننده ', 'شامپو موی تقویت کننده  رشد مو ماینو کسیدل پنج', 'shampoo.jpg', NULL, 11);

-- --------------------------------------------------------

--
-- Table structure for table `prodect_category`
--

CREATE TABLE `prodect_category` (
  `caid` int(11) NOT NULL,
  `caname` varchar(30) DEFAULT NULL,
  `type_category` varchar(30) DEFAULT NULL,
  `caimage` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prodect_category`
--

INSERT INTO `prodect_category` (`caid`, `caname`, `type_category`, `caimage`) VALUES
(11, 'لوازم بهداشتی', 'محصول بهداشتی و جنسی', 'images.png'),
(12, 'لباس زنانه', '', '4483612.png'),
(13, 'لباس زنانه', '', '4483612.png');

-- --------------------------------------------------------

--
-- Stand-in structure for view `prodect_info`
-- (See below for the actual view)
--
CREATE TABLE `prodect_info` (
`rela_size_id` int(11)
,`prodect_id` int(11)
,`size_id` int(11)
,`price` int(11)
,`id` int(11)
,`name` varchar(70)
,`info` varchar(150)
,`images` varchar(150)
,`unit_type_id` int(11)
,`category_id` int(11)
,`sid` int(11)
,`sname` varchar(30)
);

-- --------------------------------------------------------

--
-- Table structure for table `prodect_size`
--

CREATE TABLE `prodect_size` (
  `sid` int(11) NOT NULL,
  `sname` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prodect_size`
--

INSERT INTO `prodect_size` (`sid`, `sname`) VALUES
(1, 'small'),
(2, 'mediam'),
(3, 'large'),
(4, 'خوراک'),
(5, 'دانه');

-- --------------------------------------------------------

--
-- Table structure for table `relation_prodect_size`
--

CREATE TABLE `relation_prodect_size` (
  `rela_size_id` int(11) NOT NULL,
  `prodect_id` int(11) DEFAULT NULL,
  `size_id` int(11) DEFAULT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `relation_prodect_size`
--

INSERT INTO `relation_prodect_size` (`rela_size_id`, `prodect_id`, `size_id`, `price`) VALUES
(19, 23, 5, 500),
(20, 24, 5, 300),
(21, 26, 5, 250),
(22, 25, 5, 320);

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `user_email` varchar(30) NOT NULL,
  `password` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`user_email`, `password`) VALUES
('ali@gmail.com', '01');

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

CREATE TABLE `transport` (
  `car_id` int(11) NOT NULL,
  `driver_name` varchar(50) DEFAULT NULL,
  `driver_phone` varchar(13) DEFAULT NULL,
  `start_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transport`
--

INSERT INTO `transport` (`car_id`, `driver_name`, `driver_phone`, `start_date`) VALUES
(1584, 'رستم مهرزاد', '0799108490', '2023-11-20');

-- --------------------------------------------------------

--
-- Table structure for table `transport_order`
--

CREATE TABLE `transport_order` (
  `id` int(11) NOT NULL,
  `carId` int(11) DEFAULT NULL,
  `orderId` int(11) DEFAULT NULL,
  `give_dates` datetime DEFAULT current_timestamp(),
  `live_let` double DEFAULT NULL,
  `live_geo` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `unit_type`
--

CREATE TABLE `unit_type` (
  `unit_id` int(11) NOT NULL,
  `unit_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(60) DEFAULT NULL,
  `last_name` varchar(60) DEFAULT NULL,
  `user_phone` varchar(13) DEFAULT NULL,
  `user_email` varchar(80) DEFAULT NULL,
  `address` varchar(80) DEFAULT NULL,
  `leg_location` double DEFAULT NULL,
  `geo_location` double DEFAULT NULL,
  `password` varchar(15) NOT NULL,
  `user_type` varchar(30) NOT NULL,
  `images` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `last_name`, `user_phone`, `user_email`, `address`, `leg_location`, `geo_location`, `password`, `user_type`, `images`) VALUES
(10, 'ali akber', '', '0799108490', 'aliakber@gmail.com', '', 0, 0, '12', 'user', ''),
(14, 'ali', 'jan', '0794537000', 'ali@gmail.com', '', 0, 0, '01', 'admin', ''),
(15, 'Rustam', 'Mehrzad', '0729297841', 'rustam6@gmail.com', 'مزار شریف', 0, 0, '12', 'user', '20231030_120108.jpg'),
(20, 'Omer', '0', '0798108490', 'Omer@gmail.com', '0', 0, 0, '123', 'user', '0');

-- --------------------------------------------------------

--
-- Structure for view `order_info`
--
DROP TABLE IF EXISTS `order_info`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `order_info`  AS SELECT `orders`.`order_id` AS `order_id`, `orders`.`quntity` AS `quntity`, `orders`.`price` AS `price`, `orders`.`dates` AS `dates`, `orders`.`user_id` AS `user_id`, `orders`.`prodect_id` AS `prodect_id`, `orders`.`confirm` AS `confirm`, `orders`.`size_id` AS `size_id`, `orders`.`resive` AS `resive`, `prodects`.`name` AS `name`, `prodects`.`info` AS `info`, `prodects`.`images` AS `images`, `users`.`user_name` AS `user_name`, `users`.`last_name` AS `last_name`, `users`.`user_email` AS `user_email`, `users`.`user_phone` AS `user_phone`, `users`.`images` AS `user_images` FROM ((`orders` join `prodects` on(`orders`.`prodect_id` = `prodects`.`id`)) join `users` on(`orders`.`user_id` = `users`.`user_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `prodect_info`
--
DROP TABLE IF EXISTS `prodect_info`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `prodect_info`  AS SELECT `relation_prodect_size`.`rela_size_id` AS `rela_size_id`, `relation_prodect_size`.`prodect_id` AS `prodect_id`, `relation_prodect_size`.`size_id` AS `size_id`, `relation_prodect_size`.`price` AS `price`, `prodects`.`id` AS `id`, `prodects`.`name` AS `name`, `prodects`.`info` AS `info`, `prodects`.`images` AS `images`, `prodects`.`unit_type_id` AS `unit_type_id`, `prodects`.`category_id` AS `category_id`, `prodect_size`.`sid` AS `sid`, `prodect_size`.`sname` AS `sname` FROM ((`prodects` left join `relation_prodect_size` on(`relation_prodect_size`.`prodect_id` = `prodects`.`id`)) left join `prodect_size` on(`relation_prodect_size`.`size_id` = `prodect_size`.`sid`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `login_info`
--
ALTER TABLE `login_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `prodect_id` (`prodect_id`);

--
-- Indexes for table `prodects`
--
ALTER TABLE `prodects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unit_type_id` (`unit_type_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `prodect_category`
--
ALTER TABLE `prodect_category`
  ADD PRIMARY KEY (`caid`);

--
-- Indexes for table `prodect_size`
--
ALTER TABLE `prodect_size`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `relation_prodect_size`
--
ALTER TABLE `relation_prodect_size`
  ADD PRIMARY KEY (`rela_size_id`),
  ADD KEY `prodect_id` (`prodect_id`),
  ADD KEY `size_id` (`size_id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`user_email`);

--
-- Indexes for table `transport`
--
ALTER TABLE `transport`
  ADD PRIMARY KEY (`car_id`);

--
-- Indexes for table `transport_order`
--
ALTER TABLE `transport_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carId` (`carId`),
  ADD KEY `orderId` (`orderId`);

--
-- Indexes for table `unit_type`
--
ALTER TABLE `unit_type`
  ADD PRIMARY KEY (`unit_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `constraint_email` (`user_email`),
  ADD UNIQUE KEY `constraint_phone` (`user_phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT for table `prodects`
--
ALTER TABLE `prodects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `prodect_category`
--
ALTER TABLE `prodect_category`
  MODIFY `caid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `prodect_size`
--
ALTER TABLE `prodect_size`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `relation_prodect_size`
--
ALTER TABLE `relation_prodect_size`
  MODIFY `rela_size_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `transport_order`
--
ALTER TABLE `transport_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `unit_type`
--
ALTER TABLE `unit_type`
  MODIFY `unit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `login_info`
--
ALTER TABLE `login_info`
  ADD CONSTRAINT `login_info_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`prodect_id`) REFERENCES `prodects` (`id`);

--
-- Constraints for table `prodects`
--
ALTER TABLE `prodects`
  ADD CONSTRAINT `prodects_ibfk_1` FOREIGN KEY (`unit_type_id`) REFERENCES `unit_type` (`unit_id`),
  ADD CONSTRAINT `prodects_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `prodect_category` (`caid`);

--
-- Constraints for table `relation_prodect_size`
--
ALTER TABLE `relation_prodect_size`
  ADD CONSTRAINT `relation_prodect_size_ibfk_1` FOREIGN KEY (`prodect_id`) REFERENCES `prodects` (`id`),
  ADD CONSTRAINT `relation_prodect_size_ibfk_2` FOREIGN KEY (`size_id`) REFERENCES `prodect_size` (`sid`);

--
-- Constraints for table `transport_order`
--
ALTER TABLE `transport_order`
  ADD CONSTRAINT `transport_order_ibfk_1` FOREIGN KEY (`carId`) REFERENCES `transport` (`car_id`),
  ADD CONSTRAINT `transport_order_ibfk_2` FOREIGN KEY (`orderId`) REFERENCES `orders` (`order_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
