-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2019 at 10:42 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hackaton`
--

-- --------------------------------------------------------

--
-- Table structure for table `badges`
--

CREATE TABLE `badges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `badges`
--

INSERT INTO `badges` (`id`, `path`, `created_at`, `updated_at`) VALUES
(1, 'badge1.png', '2019-11-02 20:49:05', '2019-11-02 20:49:05'),
(2, 'badge2.png', '2019-11-02 20:49:05', '2019-11-02 20:49:05'),
(3, 'badge3.png', '2019-11-02 20:57:30', '2019-11-02 20:57:30');

-- --------------------------------------------------------

--
-- Table structure for table `badge_users`
--

CREATE TABLE `badge_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `badge_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `badge_users`
--

INSERT INTO `badge_users` (`id`, `user_id`, `badge_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2019-11-02 17:04:26', '2019-11-02 17:04:26'),
(2, 1, 1, '2019-11-02 21:14:04', '2019-11-02 21:14:04'),
(3, 1, 2, '2019-11-02 21:14:04', '2019-11-02 21:14:04');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_11_02_115538_create_u-cats_table', 1),
(3, '2019_11_02_115651_create_organisations_table', 1),
(4, '2019_11_02_122826_create_transactions_table', 1),
(5, '2019_11_02_125839_create_o-cats_table', 1),
(6, '2019_11_02_133255_create_badge_users_table', 1),
(7, '2019_11_02_133355_create_badges_table', 1),
(8, '2019_11_02_172735_add_amount_to_transactions', 2);

-- --------------------------------------------------------

--
-- Table structure for table `organisations`
--

CREATE TABLE `organisations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `accountnumber` int(11) NOT NULL,
  `o_cat_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `organisations`
--

INSERT INTO `organisations` (`id`, `name`, `address`, `accountnumber`, `o_cat_id`, `created_at`, `updated_at`) VALUES
(1, 'ganvdevnot eshmaki robinzonis sxeulidan', 'aleqsidze 10', 11122333, 1, '2019-11-02 17:44:57', '2019-11-02 17:44:57');

-- --------------------------------------------------------

--
-- Table structure for table `o_cats`
--

CREATE TABLE `o_cats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `o_cats`
--

INSERT INTO `o_cats` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'bavshvebi', '2019-11-02 17:45:19', '2019-11-02 17:45:19');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `organisation_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `organisation_id`, `created_at`, `updated_at`, `amount`) VALUES
(1, 1, 1, '2019-11-02 14:33:27', '2019-11-02 14:33:27', 23),
(2, 1, 1, '2019-11-02 14:34:57', '2019-11-02 14:34:57', 97),
(5, 1, 1, '2019-11-02 14:52:33', '2019-11-02 14:52:33', 15),
(6, 1, 1, '2019-11-02 14:54:31', '2019-11-02 14:54:31', 70),
(19, 1, 1, '2019-11-02 15:09:03', '2019-11-02 15:09:03', 40),
(20, 1, 1, '2019-11-02 15:09:59', '2019-11-02 15:09:59', 400),
(21, 1, 1, '2019-11-02 15:10:19', '2019-11-02 15:10:19', 500),
(24, 1, 1, '2019-11-02 15:20:49', '2019-11-02 15:20:49', 4),
(25, 1, 1, '2019-11-02 15:21:31', '2019-11-02 15:21:31', 4),
(26, 1, 1, '2019-11-02 15:23:47', '2019-11-02 15:23:47', 400),
(30, 1, 1, '2019-11-02 15:33:59', '2019-11-02 15:33:59', 100),
(31, 1, 1, '2019-11-02 15:34:20', '2019-11-02 15:34:20', 100),
(32, 1, 1, '2019-11-02 15:38:33', '2019-11-02 15:38:33', 100),
(34, 1, 1, '2019-11-02 15:42:12', '2019-11-02 15:42:12', 100),
(39, 1, 1, '2019-11-02 15:58:36', '2019-11-02 15:58:36', 90),
(40, 1, 1, '2019-11-02 15:59:04', '2019-11-02 15:59:04', 400),
(41, 2, 1, '2019-11-02 17:04:26', '2019-11-02 17:04:26', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paid_in_charity` decimal(8,2) NOT NULL DEFAULT '0.00',
  `u_cat_id` int(11) NOT NULL DEFAULT '1',
  `level` int(11) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `paid_in_charity`, `u_cat_id`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nika Jamburia', 'nika@gmail.com', NULL, '$2y$10$XQx64A41WZdGj3wNS3QLSeezaELOfmvdaBSCOililFLF0eB8vBWW2', '405.00', 2, 11, NULL, '2019-11-02 13:04:55', '2019-11-02 15:59:04'),
(2, 'Nika Jamburia2', 'nika2@gmail.com', NULL, '$2y$10$Uzv.cFuMx0w88GLYWF.K6OYgDyGxdvOAeLzyxjKN1H5bGYj9ffC.O', '0.50', 1, 0, NULL, '2019-11-02 17:03:41', '2019-11-02 17:04:26');

-- --------------------------------------------------------

--
-- Table structure for table `u_cats`
--

CREATE TABLE `u_cats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_level` int(11) NOT NULL,
  `max_level` int(11) NOT NULL,
  `step` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `u_cats`
--

INSERT INTO `u_cats` (`id`, `name`, `min_level`, `max_level`, `step`, `created_at`, `updated_at`) VALUES
(1, 'Kategoria_1', 0, 10, 100, '2019-11-02 16:59:04', '2019-11-02 16:59:04'),
(2, 'Kategoria_2', 11, 20, 500, '2019-11-02 17:03:23', '2019-11-02 17:03:23'),
(3, 'kategoria_3', 21, 30, 1000, '2019-11-02 17:03:23', '2019-11-02 17:03:23'),
(4, 'Vip', 31, 100, 1000, '2019-11-02 17:03:54', '2019-11-02 17:03:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `badges`
--
ALTER TABLE `badges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `badge_users`
--
ALTER TABLE `badge_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organisations`
--
ALTER TABLE `organisations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `o_cats`
--
ALTER TABLE `o_cats`
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
-- Indexes for table `u_cats`
--
ALTER TABLE `u_cats`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `badges`
--
ALTER TABLE `badges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `badge_users`
--
ALTER TABLE `badge_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `organisations`
--
ALTER TABLE `organisations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `o_cats`
--
ALTER TABLE `o_cats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `u_cats`
--
ALTER TABLE `u_cats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
