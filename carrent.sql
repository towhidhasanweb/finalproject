-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2025 at 06:58 AM
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
-- Database: `carrent`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `car_type` enum('SUV','Sedan','Electric','Coupe') NOT NULL,
  `daily_rent_price` decimal(10,2) NOT NULL,
  `weekly_rent_price` decimal(10,2) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `availability` enum('Available','Not Available') NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `name`, `brand`, `model`, `year`, `car_type`, `daily_rent_price`, `weekly_rent_price`, `status`, `availability`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Hyundai Creta', 'Hyundai', 'SUV', '2020', 'SUV', 15.00, 70.00, 1, 'Available', 'cars/67b84643dc044.png', '2025-02-21 03:20:15', '2025-02-21 03:24:19'),
(2, 'Voyager Hybrid', 'Voyager', 'Hybrid', '2021', 'Electric', 20.00, 120.00, 1, 'Available', 'cars/67badd1c61f3e.png', '2025-02-23 02:32:28', '2025-02-23 02:33:33'),
(3, 'Rolls Royce Ghost 3', 'Rolls Royce', 'Ghost 3', '2022', 'Coupe', 100.00, 620.00, 1, 'Available', 'cars/67baded3dd25e.jpg', '2025-02-23 02:39:47', '2025-02-23 02:39:47'),
(4, 'Range Rover Evoque', 'Range Rover', 'Evoque', '2023', 'Sedan', 90.00, 600.00, 1, 'Available', 'cars/67badf5740f48.jpg', '2025-02-23 02:41:59', '2025-02-23 02:41:59'),
(6, 'asdfasdf', 'Voyager', 'Hybrida', '2021', 'Sedan', 20.00, 150.00, 1, 'Available', 'cars/67bc06270d2c4.jpg', '2025-02-23 23:39:51', '2025-02-23 23:39:51');

-- --------------------------------------------------------

--
-- Table structure for table `car_details`
--

CREATE TABLE `car_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `car_id` bigint(20) UNSIGNED NOT NULL,
  `short_description` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `seats` int(11) NOT NULL,
  `fuel_type` enum('Petrol','Diesel','CNG','Electric') NOT NULL DEFAULT 'CNG',
  `mileage` decimal(8,2) DEFAULT NULL,
  `transmission` enum('Manual','Automatic') NOT NULL DEFAULT 'Manual',
  `air_conditioning` tinyint(1) NOT NULL DEFAULT 1,
  `gps` tinyint(1) NOT NULL DEFAULT 0,
  `bluetooth` tinyint(1) NOT NULL DEFAULT 0,
  `usb_port` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `car_details`
--

INSERT INTO `car_details` (`id`, `car_id`, `short_description`, `description`, `seats`, `fuel_type`, `mileage`, `transmission`, `air_conditioning`, `gps`, `bluetooth`, `usb_port`, `created_at`, `updated_at`) VALUES
(1, 1, 'This mid-size SUV looks premium with consistent quality. Its cabin is spacious and gets modern equipment as well. It drives well whether one chooses the petrol or diesel engine powertrain with smooth gearboxes.', 'This mid-size SUV looks premium with consistent quality. Its cabin is spacious and gets modern equipment as well. It drives well whether one chooses the petrol or diesel engine powertrain with smooth gearboxes.', 4, 'Petrol', 15.00, 'Automatic', 1, 1, 1, 1, '2025-02-21 03:21:11', '2025-02-21 03:21:11'),
(2, 2, 'Lorem pretium fermentum quam, sit amet cursus ante sollicitudin velen morbi consesua the miss sustion consation porttitor orci sit amet iaculis nisan.', 'Lorem pretium fermentum quam, sit amet cursus ante sollicitudin velen morbi consesua the miss sustion consation porttitor orci sit amet iaculis nisan. Lorem pretium fermentum quam sit amet cursus ante sollicitudin velen fermen morbinetion consesua the risus consequation the porttiton.', 2, 'Petrol', 14.00, 'Automatic', 1, 1, 1, 1, '2025-02-23 02:34:43', '2025-02-23 02:34:43'),
(3, 3, 'Leather Seats, LED Lighting, Audio system, rain sensors, air conditioning, panoramic roof', 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo laborum consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla est pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id.', 3, 'Petrol', 10.00, 'Automatic', 1, 1, 1, 1, '2025-02-23 02:40:39', '2025-02-23 02:40:39'),
(4, 4, 'Leather Seats, LED Lighting, Audio system, rain sensors, air conditioning, panoramic roof', 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo laborum consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla est pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id.', 3, 'Petrol', 6.00, 'Automatic', 1, 1, 1, 1, '2025-02-23 02:42:27', '2025-02-23 02:42:27'),
(6, 6, 'Leather Seats, LED Lighting, Audio system, rain sensors, air conditioning, panoramic roof', 'Leather Seats, LED Lighting, Audio system, rain sensors, air conditioning, panoramic roof Leather Seats, LED Lighting, Audio system, rain sensors, air conditioning, panoramic roof', 3, 'Petrol', 15.00, 'Automatic', 1, 1, 1, 1, '2025-02-23 23:40:24', '2025-02-23 23:40:24');

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '2025_02_14_081622_create_cars_table', 1),
(4, '2025_02_14_163551_create_rentals_table', 1),
(5, '2025_02_15_090714_create_car_details_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rentals`
--

CREATE TABLE `rentals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `car_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `total_cost` decimal(10,2) NOT NULL,
  `status` enum('Pending','Ongoing','Completed','Cancelled') NOT NULL DEFAULT 'Pending',
  `pickup_location` varchar(255) DEFAULT NULL,
  `drop_off_location` varchar(255) DEFAULT NULL,
  `pickup_time` varchar(255) DEFAULT NULL,
  `drop_off_time` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rentals`
--

INSERT INTO `rentals` (`id`, `user_id`, `car_id`, `name`, `phone`, `start_date`, `end_date`, `total_cost`, `status`, `pickup_location`, `drop_off_location`, `pickup_time`, `drop_off_time`, `created_at`, `updated_at`) VALUES
(5, 4, 1, NULL, NULL, '2025-02-25', '2025-02-26', 15.00, 'Cancelled', 'asdfasfd', 'adsfasfd', '9:30', '20:30', '2025-02-23 23:41:23', '2025-02-23 23:41:59'),
(6, 4, 2, NULL, NULL, '2025-02-25', '2025-02-26', 20.00, 'Ongoing', 'dfasdf', 'asdfasfd', '9', '10', '2025-02-23 23:42:26', '2025-02-23 23:42:48'),
(7, 4, 1, NULL, NULL, '2025-02-27', '2025-02-28', 15.00, 'Pending', 'asdfasfd', 'asdfasfd', '10', '11', '2025-02-23 23:43:40', '2025-02-23 23:43:40');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('HySv5msQdbo0rV9MzmVKG2hES5RKGHMb6l9Ru6MH', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiMURMZDJPWVMwd0FmUmpIRnlkWklXekJ6U0xJOUVrQWhGUkI2N2NwOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTU6ImxvZ2luX2N1c3RvbWVyXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NDtzOjUyOiJsb2dpbl9hZG1pbl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1740375834);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` enum('admin','customer') NOT NULL DEFAULT 'customer',
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `password`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(1, 'towhid', 'admin@web-towhid.com', 'admin', '$2y$12$PjRnKH.3UVf4RAnDvaEMpeQhU./WDkeCKgfQ9VFaILOf/XoZIrS7a', '01750513317', 'ruhea', '2025-02-21 08:45:41', '2025-02-21 02:46:16'),
(4, 'towhid hasan', 'towhidhasan5@gmail.com', 'customer', '$2y$12$xPfoKGbI2f.RAktITvG1V.sCS0QkIpzVoysUOq/pm5.pUE0v25N4m', '01745475626', 'asdfasfd', '2025-02-23 23:40:59', '2025-02-23 23:40:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car_details`
--
ALTER TABLE `car_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `car_details_car_id_foreign` (`car_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rentals`
--
ALTER TABLE `rentals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rentals_user_id_foreign` (`user_id`),
  ADD KEY `rentals_car_id_foreign` (`car_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `car_details`
--
ALTER TABLE `car_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rentals`
--
ALTER TABLE `rentals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `car_details`
--
ALTER TABLE `car_details`
  ADD CONSTRAINT `car_details_car_id_foreign` FOREIGN KEY (`car_id`) REFERENCES `cars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rentals`
--
ALTER TABLE `rentals`
  ADD CONSTRAINT `rentals_car_id_foreign` FOREIGN KEY (`car_id`) REFERENCES `cars` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rentals_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
