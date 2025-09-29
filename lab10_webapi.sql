-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 29, 2025 at 05:14 AM
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
-- Database: `lab10_webapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) NOT NULL,
  `title` varchar(150) NOT NULL,
  `brand` varchar(80) NOT NULL,
  `category` varchar(80) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `color` varchar(80) DEFAULT NULL,
  `sizes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`sizes`)),
  `thumbnail` varchar(255) DEFAULT NULL,
  `images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`images`)),
  `rating` decimal(3,2) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `brand`, `category`, `description`, `price`, `stock`, `color`, `sizes`, `thumbnail`, `images`, `rating`, `is_active`, `created_at`, `updated_at`) VALUES
(2, 'Ultraboost Light', 'adidas', 'Running Shoes', 'โฟมนุ่ม เด้ง น้ำหนักเบา วิ่งไกลสบาย', 7000.00, 12, 'Core Black', '[39, 40, 41, 42, 43, 44]', NULL, '[]', 4.60, 1, '2025-09-29 02:40:31', NULL),
(3, 'Chuck Taylor All Star High', 'Converse', 'Lifestyle Shoes', 'ผ้าแคนวาสคลาสสิก หุ้มข้อ', 2300.00, 30, 'Black/White', '[36, 37, 38, 39, 40, 41, 42, 43]', NULL, '[]', 4.50, 1, '2025-09-29 02:40:31', NULL),
(4, 'Old Skool', 'Vans', 'Skate Shoes', 'หนังกลับ/ผ้า ใส่ง่าย ทนทาน', 2500.00, 20, 'Black/White', '[36, 37, 38, 39, 40, 41, 42, 43, 44]', NULL, '[]', 4.40, 1, '2025-09-29 02:40:31', NULL),
(5, '530', 'New Balance', 'Lifestyle Shoes', 'สไตล์ยุค 2000 พร้อมโฟม ABZORB', 3990.00, 16, 'Silver/Green', '[38, 39, 40, 41, 42, 43, 44]', NULL, '[]', 4.50, 1, '2025-09-29 02:40:31', NULL),
(6, 'Gel-Kayano 30', 'ASICS', 'Running Shoes', 'ซัพพอร์ตดีสำหรับ overpronation', 6900.00, 10, 'Black/Graphite', '[40, 41, 42, 43, 44]', NULL, '[]', 4.80, 1, '2025-09-29 02:40:31', NULL),
(7, 'Clifton 9', 'HOKA', 'Running Shoes', 'เบา หนา นุ่ม สำหรับวิ่งทุกวัน', 5990.00, 8, 'Ice Water/Shadow', '[37, 38, 39, 40, 41]', NULL, '[]', 4.70, 1, '2025-09-29 02:40:31', NULL),
(8, 'Cloud 5', 'On', 'Lifestyle Shoes', 'พื้น CloudTec ใส่สบาย เดินทั้งวัน', 5490.00, 14, 'Glacier/White', '[38, 39, 40, 41, 42, 43]', NULL, '[]', 4.60, 1, '2025-09-29 02:40:31', NULL),
(9, '1461 Smooth', 'Dr. Martens', 'Boots', 'หนังเรียบคลาสสิก พื้นเย็บเหลือง', 6900.00, 6, 'Black Smooth', '[39, 40, 41, 42, 43, 44]', NULL, '[]', 4.60, 1, '2025-09-29 02:40:31', NULL),
(10, 'Suede Classic XXI', 'PUMA', 'Lifestyle Shoes', 'หนังกลับนุ่ม สตรีทคลาสสิก', 2900.00, 18, 'Black/White', '[38, 39, 40, 41, 42, 43, 44]', NULL, '[]', 4.40, 1, '2025-09-29 02:40:31', NULL),
(11, 'Wave Rider 27', 'Mizuno', 'Running Shoes', 'พื้น Enerzy เด้งบาลานซ์ดี', 4990.00, 9, 'Sky/White', '[40, 41, 42, 43, 44]', NULL, '[]', 4.50, 1, '2025-09-29 02:40:31', NULL),
(12, 'Pegasus 41', 'Nike', 'Running Shoes', 'รองเท้าวิ่งสารพัดประโยชน์', 4800.00, 15, 'Platinum/Violet', '[37, 38, 39, 40, 41]', NULL, '[]', 4.50, 1, '2025-09-29 02:40:31', NULL),
(13, 'Arizona EVA', 'Birkenstock', 'Sandals', 'EVA กันน้ำ น้ำหนักเบา', 1790.00, 25, 'Khaki', '[36, 37, 38, 39, 40, 41, 42, 43, 44]', NULL, '[]', 4.30, 1, '2025-09-29 02:40:31', NULL),
(14, 'Classic Clog', 'Crocs', 'Sandals', 'ใส่ง่าย สบาย ระบายอากาศดี', 1690.00, 40, 'Navy', '[36, 37, 38, 39, 40, 41, 42, 43, 44]', NULL, '[]', 4.20, 1, '2025-09-29 02:40:31', NULL),
(15, 'Court Vision Low', 'Nike', 'Lifestyle Shoes', 'ลุคบาสยุค 80s สะอาด เรียบง่าย', 2290.00, 22, 'White/Midnight Navy', '[38, 39, 40, 41, 42, 43, 44]', NULL, '[]', 4.20, 1, '2025-09-29 02:40:31', NULL),
(16, 'ZoomX Vaporfly 3', 'Nike', 'Racing Shoes', 'โฟม ZoomX + carbon plate สำหรับทำเวลา', 8900.00, 7, 'Bright Crimson', '[40, 41, 42, 43, 44]', NULL, '[]', 4.90, 1, '2025-09-29 02:40:31', NULL),
(17, 'Adizero Adios Pro 3', 'adidas', 'Racing Shoes', 'Lightstrike Pro + energy rods', 9500.00, 5, 'Lucid Lemon', '[40, 41, 42, 43]', NULL, '[]', 4.80, 1, '2025-09-29 02:40:31', NULL),
(18, 'Fresh Foam 1080v13', 'New Balance', 'Running Shoes', 'นุ่มสบายสำหรับวิ่งระยะไกล', 6900.00, 11, 'Light Blue', '[39, 40, 41, 42, 43, 44]', NULL, '[]', 4.60, 1, '2025-09-29 02:40:31', NULL),
(19, 'Speedgoat 5', 'HOKA', 'Trail Shoes', 'เกาะถนน/เทรลดี Vibram Megagrip', 5900.00, 9, 'Blue/Orange', '[40, 41, 42, 43, 44]', NULL, '[]', 4.70, 1, '2025-09-29 02:40:31', NULL),
(20, 'Gel-Nimbus 26', 'ASICS', 'Running Shoes', 'นุ่มเด้ง FF Blast+ อัปเดตใหม่', 7200.00, 10, 'White/Black', '[39, 40, 41, 42, 43, 44]', NULL, '[]', 4.70, 1, '2025-09-29 02:40:31', NULL),
(21, 'XC-72', 'New Balance', 'Lifestyle Shoes', 'ลุคเรโทร-ฟิวเจอร์', 4500.00, 13, 'Grey/Black', '[38, 39, 40, 41, 42, 43, 44]', NULL, '[]', 4.30, 1, '2025-09-29 02:40:31', NULL),
(22, 'Slip-On', 'Vans', 'Skate Shoes', 'ใส่ง่าย คลาสสิกลายตารางหมากรุก', 2200.00, 28, 'Checkerboard', '[36, 37, 38, 39, 40, 41, 42, 43]', NULL, '[]', 4.40, 1, '2025-09-29 02:40:31', NULL),
(23, 'Gazelle', 'adidas', 'Lifestyle Shoes', 'หนังกลับสไตล์วินเทจ', 3500.00, 19, 'Blue/White', '[38, 39, 40, 41, 42, 43, 44]', NULL, '[]', 4.50, 1, '2025-09-29 02:40:31', NULL),
(24, 'Rider FV', 'PUMA', 'Lifestyle Shoes', 'สตรีทโฉบเฉี่ยว น้ำหนักเบา', 3200.00, 17, 'Grey/Green', '[38, 39, 40, 41, 42, 43, 44]', NULL, '[]', 4.20, 1, '2025-09-29 02:40:31', NULL),
(25, 'Stan Smith', 'adidas', 'Lifestyle Shoes', NULL, 2990.00, 20, 'White/Green', '[38,39,40,41,42]', NULL, NULL, NULL, 1, '2025-09-29 02:59:29', NULL),
(26, 'Stan Smith', 'adidas', 'Lifestyle Shoes', NULL, 2990.00, 20, 'White/Green', '[38,39,40,41,42]', NULL, NULL, NULL, 1, '2025-09-29 03:00:42', NULL);

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
