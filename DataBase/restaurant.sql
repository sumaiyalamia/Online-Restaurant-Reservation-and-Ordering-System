-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2017 at 03:51 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `a_name` varchar(255) NOT NULL,
  `a_pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `a_name`, `a_pass`) VALUES
(1, 'Admin', '2637a5c30af69a7bad877fdb65fbd78b');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `message` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `main_menu`
--

CREATE TABLE `main_menu` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `main_menu`
--

INSERT INTO `main_menu` (`item_id`, `item_name`) VALUES
(2, 'salads'),
(3, 'Soups'),
(4, 'Indian Drinks Recipes'),
(5, 'Indian Dessert Recipes'),
(6, 'Side Dish'),
(7, 'Indian Appetizer Recipes');

-- --------------------------------------------------------

--
-- Table structure for table `order_menu`
--

CREATE TABLE `order_menu` (
  `order_id` int(11) NOT NULL,
  `cust_id` varchar(255) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reserve_table`
--

CREATE TABLE `reserve_table` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(255) NOT NULL,
  `table_no` varchar(255) NOT NULL,
  `no_of_people` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `addr` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_menu`
--

CREATE TABLE `sub_menu` (
  `sub_item_id` int(11) NOT NULL,
  `menu_item` varchar(255) NOT NULL,
  `sub_menu_item` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_menu`
--

INSERT INTO `sub_menu` (`sub_item_id`, `menu_item`, `sub_menu_item`, `price`) VALUES
(1, 'Soups', 'Tom Yum Soup', 160),
(2, 'Soups', 'Baby Corn Soup', 200),
(3, 'salads', 'Indian Salad', 200),
(4, 'salads', 'Fresh Fruit Salad', 100),
(5, 'Indian Drinks Recipes', 'Sugar-Free Cardamom-Mango Smoothie', 450),
(6, 'Indian Drinks Recipes', 'Indian Lassi', 100),
(7, 'Indian Drinks Recipes', 'Mango-Mint Lassi with Indian Sweet Spices', 250),
(8, 'Indian Drinks Recipes', 'Slow Cooker Chai', 150),
(9, 'Indian Drinks Recipes', 'Haldi Ka Doodh (Hot Turmeric Milk)', 400),
(10, 'Indian Drinks Recipes', 'Savory Lassi', 225),
(11, 'Indian Drinks Recipes', 'Mango Lassi II', 300),
(12, 'Indian Dessert Recipes', 'Gulab Jamun', 350),
(13, 'Indian Dessert Recipes', 'Besan Laddu', 100),
(14, 'Indian Dessert Recipes', 'Rasgullas', 250),
(15, 'Indian Dessert Recipes', 'Besan (Gram Flour) Halwa', 650),
(16, 'Indian Dessert Recipes', 'Rose Ice Cream', 175),
(17, 'Side Dish', 'Cholay (Curried Chickpeas)', 300),
(18, 'Side Dish', 'Indian-Style Rice with Cashews, Raisins and Turmeric', 250),
(19, 'Side Dish', 'Paneer (Home Made)', 250),
(20, 'Side Dish', 'Quick and Easy Indian-Style Okra', 350),
(21, 'Indian Appetizer Recipes', 'Green Chutney', 500);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_menu`
--
ALTER TABLE `main_menu`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `order_menu`
--
ALTER TABLE `order_menu`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `reserve_table`
--
ALTER TABLE `reserve_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_menu`
--
ALTER TABLE `sub_menu`
  ADD PRIMARY KEY (`sub_item_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_menu`
--
ALTER TABLE `main_menu`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `order_menu`
--
ALTER TABLE `order_menu`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reserve_table`
--
ALTER TABLE `reserve_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_menu`
--
ALTER TABLE `sub_menu`
  MODIFY `sub_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;




INSERT INTO `sub_menu` (`sub_item_id`, `menu_item`, `sub_menu_item`, `price`) VALUES
(1, 'Appetizers', 'Mozzarella Sticks','img_1.jpg', 130 tk),
(2, 'Appetizers', 'Garlic Cheese Bread','img_2.jpg', 160 tk),
(3, 'Appetizers', 'Chicken Tomato Soup','img_3.jpg', 140 tk),
(4, 'Main Course', 'Pasta Carbonara','img_4.jpg', 215 tk),
(5, 'Main Course', 'Spaghetti','img_5.jpg', 190 tk),
(6, 'Main Course', 'Kebab Pizza','img_6.jpg', 340 tk),
(7, 'Main Course', 'Crispy Chicken Salad','img_7.jpg', 320 tk),
(8, 'Main Course', 'Oven Baked Pasta','img_8.jpg', 320 tk),
(9, 'Main Course', 'Neopolitan Pizza','img_9.jpg', 300 tk),
(10, 'Desserts', 'Apple Pie with Ice Cream','img_10.jpg', 110 tk),
(11, 'Desserts', 'Cheesecake','img_11.jpg', 200 tk),
(12, 'Desserts', 'Tiramisu','img_12.jpg', 120 tk),
(13, 'Drinks', 'Lemonade','img_13.jpg', 120 tk),
(14, 'Drinks', 'Soft Drinks','img_14.jpg', 50 tk),
(15, 'Drinks', 'Water','img_15.jpg', 20 tk);