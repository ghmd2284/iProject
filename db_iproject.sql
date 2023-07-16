-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2023 at 08:42 AM
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
-- Database: `db_iproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `address` text DEFAULT NULL,
  `phone` varchar(13) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_06_28_132107_create_orders_table', 1),
(6, '2023_06_28_132502_create_products_table', 1),
(7, '2023_06_28_144518_create_customers_table', 1),
(8, '2023_07_02_075952_create_order_items_table', 1),
(9, '2023_07_02_080627_create_transactions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customers_id` int(11) NOT NULL,
  `code` int(11) DEFAULT NULL,
  `order_date` date NOT NULL,
  `status` varchar(255) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_amount_items` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `price` double NOT NULL,
  `description` text NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `stock` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `description`, `gambar`, `stock`, `created_at`, `updated_at`) VALUES
(1, 'iPhone 6 Dark Grey 32 GB', 2800000, 'Apple iPhone 6\r\nDark Grey \r\n32 GB', 'AZrX3V1Z0WJVtchE5QayhUa9fWSvg2oO3EwI5x6W.jpg', 10, '2023-07-13 01:00:53', '2023-07-16 03:17:53'),
(2, 'iPhone 6 Gold 32 GB', 2800000, 'Apple iPhone 6 \r\nGold \r\n32 GB', 'E3QMaZPPX5hKZmFtHNcWmUTs3jxkfwXuNL66rYGd.jpg', 3, '2023-07-13 01:41:13', '2023-07-15 07:10:20'),
(3, 'iPhone 6 Grey 64 GB', 3000000, 'Apple iPhone 6 \r\nGrey \r\n64 GB', '5pan5LU03Kayg7Bzg2j5RGWSsrad5nTfBSUh0yTF.jpg', 10, '2023-07-13 02:12:34', '2023-07-13 02:12:34'),
(6, 'iPhone 6s Plus Grey 32 GB', 3600000, 'Apple iPhone 6s Plus \r\nGrey \r\n32 GB', '6oecA907VI21G7z77dpKJFSJvwBYsWhjuwWXoUlc.png', 5, '2023-07-13 02:16:33', '2023-07-13 02:16:33'),
(7, 'iPhone 6s Plus Gold 64 GB', 3750000, 'iPhone 6s Plus \r\nGold \r\n32 GB', 'oDvV2WVk2LKFpKRbG2owc1IGdpF8x5kUXtGZ3o6x.jpg', 12, '2023-07-13 02:17:10', '2023-07-13 02:17:10'),
(8, 'iPhone 7 Black 32 GB', 3600000, 'Apple iPhone 7 \r\nBlack \r\n32 GB', 'vwP43mh0LuSGemKvE2dAteCez5tmMhmtJ6xsN87p.jpg', 3, '2023-07-13 02:18:06', '2023-07-15 11:02:13'),
(9, 'iPhone 7 Rose Gold 32 GB', 3600000, 'Apple iPhone 7 \r\nRose Gold \r\n32 GB', '0b6MRDqGu39hOjz4QqiAmzIGOxApyfOU2bTldLkc.jpg', 8, '2023-07-13 02:19:16', '2023-07-13 02:19:16'),
(11, 'iPhone 7 Plus Gold 32 GB', 3900000, 'Apple iPhone 7 Plus \r\nGold \r\n32 GB', 'wdWdOYnEkKW1fTAsG5pQUXSIXZsON08apxKGcTHU.jpg', 2, '2023-07-13 02:21:24', '2023-07-13 02:21:24'),
(12, 'iPhone 7 Plus Black 32 GB', 3900000, 'Apple iPhone 7 Plus \r\nBlack \r\n32 GB', 'uYUAgIn68NIcOkCe0lQEQgpO3Bwoq6o5c1IeX7eg.jpg', 6, '2023-07-13 02:21:59', '2023-07-13 02:21:59'),
(13, 'iPhone 7 Plus Red 64 GB', 4100000, 'Apple iPhone 7 Plus \r\nRed \r\n64 GB', 'kRK3Olu6PYK23BNkMuJJe6dUZoKUAQX3yRUFMuWP.jpg', 9, '2023-07-13 02:22:49', '2023-07-13 02:22:49'),
(14, 'iPhone 8 Black 32 GB', 3900000, 'Apple iPhone 8 \r\nBlack \r\n32 GB', 'FVneb0tRg9x5nCm38tVZ2Uxn6PMhRHzEIFoSyKj2.png', 7, '2023-07-13 02:23:57', '2023-07-13 02:24:58'),
(15, 'iPhone 8 Red 64 GB', 3900000, 'Apple iPhone 8 \r\nRed \r\n64 GB', '9P7TJ62xn0psF83Xzgy11dkQfTL2FtzzhlPpw1OZ.jpg', 3, '2023-07-13 02:25:34', '2023-07-13 02:25:34'),
(16, 'iPhone 8 Plus White 32 GB', 4300000, 'Apple iPhone 8 Plus \r\nWhite \r\n32 GB', '7FLalUDHfavfrMFm5kQlitAaIRwb2nX9IFpRN1Gh.jpg', 2, '2023-07-13 02:26:37', '2023-07-13 02:27:40'),
(17, 'iPhone 8 Plus Black 64 GB', 4400000, 'Apple iPhone 8 Plus \r\nBlack \r\n32 GB', 'MZRXSziPiQXPZVJ0P3TO2rgLRK4JJ8p9y5gAxbwR.jpg', 9, '2023-07-13 02:28:15', '2023-07-13 02:28:15'),
(18, 'iPhone X White 32 GB', 4700000, 'Apple iPhone X \r\nWhite \r\n32 GB', '8Tc5yWuUZBI1RXNHYS2J9zsUKu8kOIRE0iRobJNS.jpg', 5, '2023-07-13 02:29:14', '2023-07-13 02:29:14'),
(19, 'iPhone X White 64 GB', 4850000, 'Apple iPhone X \r\nWhite \r\n32 GB', 'IV6j2wchjqL8OhO0qvCAdzGzYVtWJl02erpuYZ73.jpg', 5, '2023-07-13 02:29:51', '2023-07-13 02:29:51'),
(20, 'iPhone XR Yellow 32 GB', 4900000, 'Apple iPhone XR \r\nYellow \r\n32 GB', 'DVfygt4l3pmSAmYqKVMSXNesvqRsZfFbbrLp4Cet.jpg', 5, '2023-07-13 02:30:44', '2023-07-13 02:30:44'),
(21, 'iPhone XR Blue 32 GB', 4900000, 'Apple iPhone XR \r\nBlue \r\n32 GB', 'xPRRv6LWjH2HgJwTrku0LHQeLgD1AK8Bow19K72h.jpg', 5, '2023-07-13 02:31:38', '2023-07-13 02:31:38'),
(24, 'iPhone XS Black 64 GB', 5300000, 'Apple iPhone XR \r\nBlack \r\n64 GB', 'cm8twbZvDYyh0GhGcKoKGrbybsaUciBYQ3HyIL5D.jpg', 6, '2023-07-13 02:33:28', '2023-07-13 02:33:28'),
(25, 'iPhone XS Gold 64 GB', 5300000, 'Apple iPhone XR \r\nGold \r\n64 GB', '6qlqCsTRRNU3xykgCGZuIOOr8m1YAIAPrwAjN1lu.jpg', 7, '2023-07-13 02:34:47', '2023-07-13 02:34:47'),
(26, 'iPhone 11 White 64 GB', 5800000, 'Apple iPhone 11 \r\nWhite \r\n64 GB', '2b049Jiz6gwrkh2ZQduzbjf4CZS8Na9baq3iHkzc.jpg', 5, '2023-07-13 02:35:45', '2023-07-13 02:35:45'),
(27, 'iPhone 11 Purple 64 GB', 5800000, 'Apple iPhone 11 \r\nPurple \r\n64 GB', 'iEV9Gv0oQOsOWOCA1jmVJamXyiK98hwHTsCEpM40.png', 5, '2023-07-13 02:36:37', '2023-07-13 02:36:54'),
(28, 'iPhone 11 Yellow 128 GB', 6000000, 'Apple iPhone 11 \r\nYellow \r\n128 GB', 'fJejG15768ELcO1U9BADhvZknToBOwBqq71XjbAR.png', 5, '2023-07-13 02:37:42', '2023-07-13 02:37:42'),
(29, 'iPhone 11 Pro Gold 64 GB', 6700000, 'Apple iPhone 11 Pro \r\nGold \r\n64 GB', 'sZMUw8jPLPaAmYba5ftHhsH3shRifM1Q2R0gRwCF.jpg', 5, '2023-07-13 02:39:36', '2023-07-13 02:39:36'),
(30, 'iPhone 11 Pro White 128 GB', 6900000, 'iPhone 11 Pro \r\nWhite\r\n128 GB', '3P7iknVyfXJJbZnWPe9qX47vMXGQCsVsIfFF0bWK.png', 6, '2023-07-13 02:40:23', '2023-07-13 02:40:23'),
(31, 'iPhone 11 Pro Max Midnight Green 64 GB', 7500000, 'Apple iPhone 11 Pro Max \r\nMidnight Green \r\n64 GB', '3VBDDnaW25PhCzP6INw6iyRntJ5M6ZG9mLzOghiJ.png', 7, '2023-07-13 02:41:11', '2023-07-13 02:41:28'),
(32, 'iPhone 11 Pro Max Gold 256 GB', 7900000, 'Apple iPhone 11 Pro Max \r\nGold \r\n256 GB', 'dstdIH9cLM5E015Luj5whiYruXN8KfDajVylvlvL.png', 4, '2023-07-13 02:42:05', '2023-07-13 02:42:05'),
(33, 'iPhone 12 White 128 GB', 8200000, 'Apple iPhone 12 \r\nWhite \r\n128 GB', 'q6IeZvFqM3sN8XUTLvOTFrR5PShN2AwnuMrj1cwD.png', 5, '2023-07-13 02:43:16', '2023-07-13 02:43:16'),
(34, 'iPhone 12 Purple 256 GB', 8500000, 'Apple iPhone 12 \r\nPurple \r\n512 GB', 'RjvSjqPO2KfBzownBAJC1Sb91jh9UvFVOpu7nqyG.png', 4, '2023-07-13 02:44:07', '2023-07-13 02:44:07'),
(35, 'iPhone 12 Green 512 GB', 8900000, 'Apple iPhone 12 \r\nGreen \r\n256 GB', 'MSzR7zeZkuSgEVIroJ1KBYgjYGOYlSGFgIDjdrTP.png', 4, '2023-07-13 02:44:44', '2023-07-13 02:44:44'),
(36, 'iPhone 12 Pro White 256 GB', 9500000, 'Apple iPhone 12 Pro \r\nWhite \r\n256 GB', 'IindXfxFRTdIYpv5eqijVOhsnjLtM50CF3yNggm1.jpg', 5, '2023-07-13 02:46:13', '2023-07-13 02:46:13'),
(37, 'iPhone 12 Pro Graphite 512 GB', 9800000, 'Apple iPhone 12 Pro \r\nGraphite \r\n256 GB', 'QMxhik3vsQyNeKX7MvB3jfPywumKMhDG1QbmCWlI.png', 4, '2023-07-13 02:46:55', '2023-07-13 02:46:55'),
(38, 'iPhone 12 Pro Max White 256 GB', 10500000, 'Apple iPhone 12 Pro Max \r\nWhite \r\n256 GB', 'HlxbAj3joWcUacIAbHGiYKBVdkApwGOngRk3yxCQ.png', 4, '2023-07-13 02:53:22', '2023-07-13 02:53:22'),
(39, 'iPhone 12 Pro Max Graphite 512 GB', 10900000, 'Apple iPhone 12 Pro Max \r\nGraphite \r\n256 GB', 'ob7hbOCdrKXWAG5eGkcCcgyRxeMYFRjzRmgyxIxH.png', 5, '2023-07-13 02:54:02', '2023-07-13 02:54:02'),
(40, 'iPhone 13 Rose Gold 256 GB', 12700000, 'Apple iPhone 13 \r\nRose Gold \r\n256 GB', 'ZAjMPwoB21Io0oJIHIIphIFN1AW9vesKs3aAE1JR.png', 5, '2023-07-13 03:00:44', '2023-07-13 03:00:44'),
(41, 'iPhone 13 Red 512 GB', 13000000, 'Apple iPhone 13 \r\nRed \r\n512 GB', 'cfCU3e7q1gjdwAVQGPxulboeAV8uHzRbzSzM0CMi.jpg', 6, '2023-07-13 03:02:50', '2023-07-13 03:02:50'),
(42, 'iPhone 13 Pro White 256 GB', 13700000, 'Apple iPhone 13 Pro \r\nWhite \r\n256 GB', 'XVJccHAPVA8LnWIKVhUU29X5Ak3MQbZY3qTw3zH2.jpg', 2, '2023-07-13 03:03:49', '2023-07-13 03:03:49'),
(43, 'iPhone 13 Pro Blue 512 GB', 14100000, 'Apple iPhone 13 Pro \r\nBlue \r\n256 GB', 's0xIGQA8qOI1paDyljWr2P7Qbrh4IeqDWOXux8Eo.jpg', 4, '2023-07-13 03:04:25', '2023-07-13 03:04:25');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `transaction_date` date NOT NULL,
  `amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('admin','customer') NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '2023-07-13 20:52:10', '$2y$10$jWowaKpht6zM/zKQi4FEoOXkEvvrKaNYEpRMLhhLmyp8oAYsjB2FC', 'admin', 'RkgCs4uZ1KgW9K2vJQHBa0UDIJAJ3SBh2Vhq8qdD80NicFKJhe0TyvAMIFj1', '2023-07-13 20:52:10', '2023-07-13 20:52:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
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
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
