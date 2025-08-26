-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2025 at 07:31 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `product_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `description`, `price`, `created_at`, `product_image`) VALUES
(1, 'ข้าวผัด', 'ข้าวผัดกับไข่และผักรวม', 50.00, '2025-06-25 06:29:41', 'fried-rice-1762493_1280.jpg'),
(3, 'ต้มยำกุ้ง', 'ต้มยำกุ้งรสจัดจ้านด้วยสมุนไพรสด', 120.00, '2025-06-25 06:29:41', 'spicy-prawn-soup-2251015_1280.jpg'),
(4, 'ส้มตำ', 'ส้มตำไทยรสเผ็ดพร้อมข้าวเหนียว', 40.00, '2025-06-25 06:29:41', 'food-715533_1280.jpg'),
(5, 'แกงเขียวหวานไก่', 'แกงเขียวหวานรสเผ็ดทานคู่ข้าวสวย', 80.00, '2025-06-25 06:29:41', 'green-curry-3604721_1280.jpg'),
(6, 'หมูสะเต๊ะ', 'หมูสะเต๊ะเสียบไม้ย่างราดซอสถั่ว', 70.00, '2025-06-25 06:29:41', 'istockphoto-697667690-1024x1024.jpg'),
(7, 'ขนมจีนน้ำยา', 'ขนมจีนเส้นสดกับน้ำยาปลาราด', 50.00, '2025-06-25 06:29:41', 'noodles-cleaners-pu-2238304_1280.jpg'),
(10, 'ก๋วยเตี๋ยวเรือ', 'ก๋วยเตี๋ยวเรือรสชาติกลมกล่อม', 55.00, '2025-06-25 06:29:41', 'R.jpg'),
(11, 'ผัดไทย', 'อาหร่อยยยยยยยยยย', 50.00, '2025-07-16 07:33:12', 'thai-food-518035_1280.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
