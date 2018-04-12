-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2018 at 10:06 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinestore`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(3, '2017_09_26_073020_create_products_table', 1),
(4, '2017_09_26_082221_create_user_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `imagePath` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `created_at`, `updated_at`, `imagePath`, `title`, `description`, `price`) VALUES
(1, '2017-09-27 05:47:19', '2017-09-27 05:47:19', 'https://rukminim1.flixcart.com/image/312/312/helmet/z/q/g/1-vega-off-road-gangster-original-imadt2nnrazqnx4m.jpeg?q=70', 'Monster helmet', 'Super cool helmet', 55),
(2, '2017-09-27 05:47:19', '2017-09-27 05:47:19', 'https://ae01.alicdn.com/kf/HTB1ywRhJVXXXXb7XpXXq6xXFXXXd/Free-shipping-special-promotions-Arai-font-b-helmet-b-font-font-b-motorcycle-b-font-font.jpg', 'Popular skul helmet', 'Super cool and scary helmet', 89),
(3, '2017-09-27 05:47:19', '2017-09-27 05:47:19', 'https://i.pinimg.com/736x/0c/bc/be/0cbcbec94dd7c0beff3d7ba6662311d2--full-face-motorcycle-helmets-bike-helmets.jpg', 'Full face helmet', 'Evolution Carbon Fiber Dual Sport Naked Full Face Motorcycle Helmet', 290),
(4, '2017-09-27 05:47:19', '2017-09-27 05:47:19', 'https://i.pinimg.com/736x/cf/27/bd/cf27bdd6b6156501e90231258ade0a5b--motorcycle-clothes-full-face-motorcycle-helmets.jpg', 'Full Face Motorcycle Helmet', 'Bell Sports Full Face Motorcycle Helmet - Arrow Dull Black', 270),
(5, '2017-09-27 05:47:19', '2017-09-27 05:47:19', 'https://images-na.ssl-images-amazon.com/images/I/41a4gL-qwoL._SL500_.jpg', 'Harley Cruiser Motorcycle Helmet', 'Bell Rogue Open Face Harley Cruiser Motorcycle Helmet - Matte Black / Large', 180),
(6, '2017-09-27 05:47:19', '2017-09-27 05:47:19', 'http://badasshelmetstore.com/wp-content/uploads/Bobafett-HJC-rpha11-Motorcycle-Helmet-3.jpg', 'Badass Motorcycle Helmets', 'Badass Motorcycle Helmets', 55);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `created_at`, `updated_at`, `email`, `password`, `remember_token`) VALUES
(1, '2017-09-27 05:47:51', '2017-09-27 05:47:51', 'test@test.com', '$2y$10$FvHQCqpM.6aCIePtC61OMelGq7nAV1ew8.bKbkCEpyIusb.gEz/Pa', 'zYjxmTBYdOsQMQBfm1felMz0xnyoKDwxbZRAICOHT0qFnqWrlskCt6Xwwoo2'),
(2, '2017-09-27 06:25:04', '2017-09-27 06:25:04', 'test1@test.com', '$2y$10$tRxDVfXoGpUNQAjM9HvFse60ap7mpf5aKAiRzs2dxMDyvpfBcznu6', 'SJeplWAEFemNytFTo2zc7JvIJnsKBtk9HlgAtCNGrHK0DYfbVQqXWkf4eMiK');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
