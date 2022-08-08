-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 08, 2022 at 07:39 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodorder_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `quantity` int(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `name`, `price`, `image`, `quantity`) VALUES
(19, 'fruits', '9', 'i9.png', 1),
(20, 'chezzy pizza', '30', 'food-2.png', 3),
(21, 'hamburger', '25', 'food-3.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
CREATE TABLE IF NOT EXISTS `order` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(255) NOT NULL,
  `method` varchar(100) NOT NULL,
  `flat` varchar(100) NOT NULL,
  `street` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `province` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `postal_code` int(10) NOT NULL,
  `total_products` varchar(255) NOT NULL,
  `total_price` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `name`, `number`, `email`, `method`, `flat`, `street`, `city`, `province`, `country`, `postal_code`, `total_products`, `total_price`) VALUES
(1, 'chalana', '12345', 'chalana@gmail.com', 'paypal', '123', 'ambalantota', 'hambantota', 'Southern', 'Sri Lanka', 82100, 'chezzy pizza (1) , chips (1) , hamburger (1) ', '65'),
(2, 'chalana', '12345', 'chalana@gmail.com', 'credit card', '123', 'ambalantota', 'hambantota', 'Southern', 'Sri Lanka', 82100, 'chezzy pizza (1) , chips (1) , hamburger (1) ', '65'),
(3, 'chalana', '12345', 'chalana@gmail.com', 'credit card', '123', 'ambalantota', 'hambantota', 'Southern', 'Sri Lanka', 82100, 'chezzy pizza (1) , chips (1) , hamburger (1) ', '65'),
(4, 'chalana', '12345', 'chalana@gmail.com', 'credit card', '123', 'ambalantota', 'hambantota', 'Southern', 'Sri Lanka', 82100, 'chezzy pizza (1) , chips (1) , hamburger (1) ', '65'),
(5, 'chalana', '12345', 'chalana@gmail.com', 'credit card', '123', 'ambalantota', 'hambantota', 'Southern', 'Sri Lanka', 82100, 'chezzy pizza (1) , chips (1) , hamburger (1) ', '65'),
(6, 'chalana', '111', 'chalana@gmail.com', 'credit card', '123', 'ambalantota', 'hambantota', 'Southern', 'Sri Lanka', 82100, 'hamburger (1) , chips (1) ', '35');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`) VALUES
(10, 'hamburger', '25', 'food-3.png'),
(9, 'chips', '10', 'food-6.png'),
(8, 'chezzy pizza', '30', 'food-2.png'),
(7, 'cold drink', '10', 'food-5.png'),
(12, 'fruits', '9', 'i9.png'),
(13, 'fruits', '67', 'food-1.png'),
(14, 'mango', '12', 'food-6.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
