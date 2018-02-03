-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 07, 2017 at 03:18 AM
-- Server version: 5.6.34-log
-- PHP Version: 7.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grocery1`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(200) NOT NULL,
  `brand_title` text NOT NULL,
  `brand_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`, `brand_description`) VALUES
(401, 'GreatValue', ''),
(402, 'Dannon', 'famous for milk'),
(403, 'Kroggers', 'kroggers '),
(404, 'Aveeno', 'Aveeno'),
(405, 'Target', 'Target'),
(406, 'walgreens', 'walgreens'),
(410, 'Jersey', 'jersey'),
(411, 'Pepsi', 'Pepsi');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(200) NOT NULL,
  `product_id` varchar(200) NOT NULL,
  `ip-address` varchar(100) NOT NULL,
  `username` varchar(200) NOT NULL,
  `product_title` varchar(200) NOT NULL,
  `product_image` text NOT NULL,
  `quantity` int(100) NOT NULL,
  `price` int(100) NOT NULL,
  `total_amount` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `product_id`, `ip-address`, `username`, `product_title`, `product_image`, `quantity`, `price`, `total_amount`) VALUES
(50, '103', '0', '', 'Grapes', 'grapes.jpg', 1, 16, 16),
(51, '103', '0', '', 'Grapes', 'grapes.jpg', 1, 16, 16);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(200) NOT NULL,
  `cat_title` text NOT NULL,
  `category_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `category_description`) VALUES
(201, 'fruits', 'fruits'),
(202, 'vegetables', 'vegetables'),
(203, 'bread', 'bread'),
(204, 'beverages', 'bevarages'),
(205, 'Health & Beauty', 'Health & Beauty'),
(206, 'dairy', 'dairy');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `total_amount` int(200) NOT NULL,
  `order_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `username`, `total_amount`, `order_date`) VALUES
(1, 'Sushma', 94, '2017-12-04'),
(2, 'Sushma', 4, '2017-12-04'),
(3, 'Sushma', 22, '2017-12-04'),
(4, 'Sushma', 1, '2017-12-04'),
(5, 'Sushma', 6, '2017-12-04'),
(6, 'Sushma', 6, '2017-12-04'),
(7, 'Sushma', 6, '2017-12-04'),
(8, 'Sushma', 48, '2017-12-04'),
(9, 'Sushma', 1600, '2017-12-04'),
(10, 'Sushma', 16, '2017-12-04'),
(11, 'Sushma', 32, '2017-12-06'),
(12, 'Rahul', 160, '2017-12-06'),
(13, 'Sushma', 62, '2017-12-07');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `flag` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`order_id`, `product_id`, `product_price`, `product_quantity`, `flag`) VALUES
(1, 103, 16, 3, 0),
(1, 107, 6, 7, 0),
(1, 110, 4, 1, 1),
(2, 110, 4, 1, 1),
(3, 103, 16, 1, 0),
(3, 107, 6, 1, 0),
(4, 121, 1, 1, 0),
(5, 111, 6, 1, 0),
(6, 111, 6, 1, 0),
(7, 111, 6, 1, 0),
(8, 103, 16, 1, 0),
(9, 103, 16, 100, 0),
(10, 103, 16, 1, 0),
(11, 103, 16, 2, 0),
(12, 103, 16, 10, 0),
(13, 110, 8, 7, 1),
(13, 112, 6, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_title` varchar(100) NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `product_img` text NOT NULL,
  `product_keywords` varchar(200) NOT NULL,
  `product_brand` int(200) NOT NULL,
  `product_quantity` varchar(200) NOT NULL,
  `product_flag` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_title`, `product_price`, `product_img`, `product_keywords`, `product_brand`, `product_quantity`, `product_flag`) VALUES
(103, 201, 'Grapes', '16', 'grapes.jpg', 'esejk', 402, '-28', 0),
(105, 201, 'Apple', '10', 'apples.jpg', 'Fruits fruits greatvalue Apple', 401, '100', 0),
(106, 202, 'Beans', '5', 'beans.jpg', 'Beans Bean vegetable', 403, '100', 0),
(107, 202, 'Carrots', '6', 'carrots.jpg', 'vegetables Carrots', 405, '90', 0),
(108, 203, 'Rolls', '10', 'rolls.jpg', 'Breads rolls', 405, '100', 0),
(109, 203, 'tortillos', '11', 'tortillos.jpg', 'Breads tortillos', 402, '99', 0),
(110, 204, 'Coffee', '8', 'coffee.jpg', 'Cofee beverages', 401, '-7', 1),
(111, 204, '7up', '6', '7up.jpg', 'beverages 7up', 403, '92', 0),
(112, 202, 'Tomatoes', '6', 'tomatoes.jpg', 'vegetables tomatoes red', 401, '92', 1),
(113, 204, 'Vaseline1', '120', 'Vaseline.jpg', 'Aveeno Vaseline', 404, '110', 1),
(114, 206, 'Yogurt', '5', 'yogurt.jpg', 'Yogurt curd dairy', 402, '100', 1),
(115, 201, 'Oranges', '8', 'oranges.jpg', 'fruits Oranges', 403, '100', 1),
(116, 206, 'Butter', '3', 'butter.jpg', 'butter cheese GreatValue dairy', 401, '100', 0),
(118, 205, 'Vaseline', '10', 'lipbalms.jpg', 'balm', 404, '100', 0),
(121, 203, 'Great Value Bread', '1.48', 'GVBread.jpeg', 'Bread', 401, '0', 0),
(122, 203, 'Rolls', '5', 'rolls.jpg', 'rolls', 401, '5', 0),
(123, 203, 'Great Value Bread', '2', 'GVBread.jpeg', 'bread', 401, '5', 0),
(124, 0, 'Organic Apples', '2', 'apples.jpg', 'Apple', 405, '100', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(200) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `first_name`, `last_name`, `email`, `password`) VALUES
('admin', 'admin', 'admin', 'admin@gmail.com', 'admin123'),
('Rahul', 'Rahul', 'Komatineni', 'rahulk.utd@gmail.com', '4fd3253034f6c666dae832746c98ac5e'),
('Sushma', 'Sushma', 'Challa', 'sushmareddy588@gmail.com', 'c219d1f4e717380d0775b87fca844d89');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`order_id`,`product_id`),
  ADD KEY `product_fk` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=412;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_id` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_fk` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
