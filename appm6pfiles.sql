-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2023 at 05:39 PM
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
-- Database: `appm6pfiles`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'Health', '2023-11-06 14:50:31', '2023-11-06 14:50:31'),
(2, 'Education', '2023-11-06 14:50:31', '2023-11-06 14:50:31'),
(3, 'Literature', '2023-11-06 14:51:08', '2023-11-06 14:51:08'),
(4, 'Science and Technology', '2023-11-06 14:51:08', '2023-11-06 14:51:08'),
(5, 'Programming', '2023-11-06 14:51:45', '2023-11-06 14:51:45'),
(6, 'Textbooks', '2023-11-06 14:51:45', '2023-11-06 14:51:45');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `cust_id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `location` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`cust_id`, `first_name`, `last_name`, `email`, `location`, `created_at`, `updated_at`) VALUES
(202301, 'John', 'Doe', 'johndoe@mail.com', 'New York, USA', '2023-11-06 15:44:30', '2023-11-06 15:44:30'),
(202302, 'Jimmy', 'Doe', 'jimmydoe@mail.com', 'Washington DC, USA', '2023-11-06 15:44:30', '2023-11-06 15:44:30'),
(202303, 'Jane', 'Doe', 'janedoe@mail.com', 'California, USA', '2023-11-06 15:44:30', '2023-11-06 15:44:30'),
(202304, 'Emma', 'Watson', 'emmawatson@mail.com', 'Las Vegas, USA', '2023-11-06 15:44:30', '2023-11-06 15:44:30'),
(202305, 'Daniel', 'Radcliff', 'daniel@radcliff.com', 'East London, UK', '2023-11-06 15:44:30', '2023-11-06 15:44:30'),
(202306, 'Rupert', 'Grint', 'rupert.grint@hotmail.com', 'Manchester, UK', '2023-11-06 15:44:30', '2023-11-06 15:44:30');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `total_amount` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_id`, `order_date`, `total_amount`, `created_at`, `updated_at`) VALUES
(20231012, 202305, '2023-11-06 15:56:03', 1500, '2023-11-06 15:56:03', '2023-11-06 15:56:03'),
(20231013, 202306, '2023-11-06 15:56:03', 1203, '2023-11-06 15:56:03', '2023-11-06 15:56:03'),
(20231015, 202303, '2023-11-06 15:56:03', 1456, '2023-11-06 15:56:03', '2023-11-06 15:56:03');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `orders_id` bigint(20) UNSIGNED DEFAULT NULL,
  `prod_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` bigint(20) NOT NULL,
  `unit_price` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`order_item_id`, `orders_id`, `prod_id`, `quantity`, `unit_price`, `created_at`, `updated_at`) VALUES
(1456, 20231012, 15, 2, 450, '2023-11-06 15:58:44', '2023-11-06 15:58:44'),
(1457, 20231013, 22, 2, 156, '2023-11-06 15:58:44', '2023-11-06 15:58:44'),
(1459, 20231015, 21, 6, 450, '2023-11-06 15:58:44', '2023-11-06 15:58:44'),
(1460, 20231013, 16, 5, 120, '2023-11-06 15:58:44', '2023-11-06 15:58:44'),
(1461, 20231013, 17, 2, 890, '2023-11-06 15:58:44', '2023-11-06 15:58:44');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_description` text DEFAULT NULL,
  `price` bigint(20) DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_description`, `price`, `category_id`, `created_at`, `updated_at`) VALUES
(15, 'JavaScript Learning', 'A complete guide for the learners of JavaScript.', 560, 5, '2023-11-06 15:54:32', '2023-11-06 15:54:32'),
(16, 'ABC of English Literature', 'A comprehensive book for the students of English literature.', 140, 6, '2023-11-06 15:54:32', '2023-11-06 15:54:32'),
(17, 'Lowland', 'A novel by Jhumpa Lahiri.', 480, 3, '2023-11-06 15:54:32', '2023-11-06 15:54:32'),
(20, 'A Comprehensive Guide to English Literature', 'A book for having a good command over the syllabus of NTRCA tests.', NULL, NULL, '2023-11-06 15:54:32', '2023-11-06 15:54:32'),
(21, 'Alim Communicative English 1st Paper', 'A complete guide with solutions for the students of Alim.', 580, 6, '2023-11-06 15:54:32', '2023-11-06 15:54:32'),
(22, 'Programming with Java', 'A beginners guide to Java programming.', 840, 5, '2023-11-06 15:54:32', '2023-11-06 15:54:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `orders_id` (`orders_id`),
  ADD KEY `prod_id` (`prod_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `cust_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202307;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20231016;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1462;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`cust_id`) ON UPDATE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`prod_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`cat_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
