-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 06, 2023 at 02:09 PM
-- Server version: 10.5.20-MariaDB-cll-lve
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `koruwpbe_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

CREATE TABLE `addons` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `unique_identifier` varchar(255) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `activated` int(1) NOT NULL DEFAULT 1,
  `image` varchar(1000) DEFAULT NULL,
  `purchase_code` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `country_id` int(20) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `state_id` int(20) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `city_id` int(20) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `default_shipping` int(1) NOT NULL DEFAULT 0,
  `default_billing` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `user_id`, `address`, `country`, `country_id`, `state`, `state_id`, `city`, `city_id`, `postal_code`, `phone`, `default_shipping`, `default_billing`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 'dassdasd', 'Saudi Arabia', 1, 'Riyadh', 1, 'Al-Dawadmi', 3, '2321', '321321321', 1, 1, '2023-04-25 23:22:55', '2023-04-25 23:23:57', NULL),
(2, 2, 'fdsfsd', 'Saudi Arabia', 1, 'Madinah', 3, 'Al-Mahd', 31, '312321', '32132131', 0, 0, '2023-04-25 23:24:14', '2023-04-25 23:24:14', NULL),
(3, 2, 'dsadsa', 'Saudi Arabia', 1, 'Najran', 12, 'Yedemah', 108, '23213', '221312', 0, 0, '2023-04-25 23:33:08', '2023-04-25 23:33:08', NULL),
(4, 2, 'dsa', 'Saudi Arabia', 1, 'Makkah', 2, 'Jeddah', 18, '213312', '3213213', 0, 0, '2023-04-25 23:38:15', '2023-04-25 23:38:15', NULL),
(5, 81, 'جده الحمجانية', 'Saudi Arabia', 1, 'Makkah', 2, 'Jeddah', 18, '12520', '0509617973', 1, 1, '2023-04-27 11:38:21', '2023-04-27 11:38:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'color', '2023-04-08 09:09:54', '2023-04-08 09:09:54');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_category`
--

CREATE TABLE `attribute_category` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attribute_translations`
--

CREATE TABLE `attribute_translations` (
  `id` bigint(20) NOT NULL,
  `attribute_id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `lang` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attribute_translations`
--

INSERT INTO `attribute_translations` (`id`, `attribute_id`, `name`, `lang`, `created_at`, `updated_at`) VALUES
(1, 1, 'color', 'en', '2023-04-08 09:09:54', '2023-04-08 09:09:54');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_values`
--

CREATE TABLE `attribute_values` (
  `id` bigint(20) NOT NULL,
  `attribute_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attribute_value_translations`
--

CREATE TABLE `attribute_value_translations` (
  `id` bigint(20) NOT NULL,
  `attribute_value_id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `lang` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `short_description` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `banner` int(11) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_img` int(11) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_category_translations`
--

CREATE TABLE `blog_category_translations` (
  `id` int(11) NOT NULL,
  `blog_category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `lang` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_translations`
--

CREATE TABLE `blog_translations` (
  `id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `short_description` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `lang` varchar(100) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `sales_amount` double(20,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brand_translations`
--

CREATE TABLE `brand_translations` (
  `id` bigint(20) NOT NULL,
  `brand_id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `lang` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `temp_user_id` varchar(255) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_variation_id` int(20) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `temp_user_id`, `product_id`, `product_variation_id`, `quantity`, `created_at`, `updated_at`) VALUES
(157, NULL, '-984822833', 10, 10, 4, '2023-04-28 07:39:13', '2023-04-28 07:39:17'),
(158, NULL, '-822205741', 26, 24, 1, '2023-04-30 04:49:25', '2023-04-30 04:49:25'),
(159, NULL, '1682461213271', 18, 16, 2, '2023-04-30 04:51:28', '2023-05-01 14:02:39'),
(160, NULL, '1682461213271', 25, 23, 1, '2023-05-01 14:02:42', '2023-05-01 14:02:42'),
(163, NULL, '688923286', 25, 23, 1, '2023-05-17 16:34:58', '2023-05-17 16:34:58'),
(164, NULL, '688923286', 45, 43, 2, '2023-05-17 16:37:31', '2023-05-17 16:37:31'),
(165, NULL, '893316722', 36, 34, 1, '2023-05-20 01:21:31', '2023-05-20 01:21:31'),
(166, NULL, '976733598', 18, 16, 1, '2023-05-21 00:31:46', '2023-05-21 00:31:46');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) NOT NULL,
  `parent_id` int(11) DEFAULT 0,
  `level` int(11) NOT NULL DEFAULT 0,
  `name` varchar(50) NOT NULL,
  `order_level` int(11) NOT NULL DEFAULT 0,
  `banner` int(11) DEFAULT NULL,
  `icon` int(11) DEFAULT NULL,
  `featured` int(1) NOT NULL DEFAULT 0,
  `top` int(1) NOT NULL DEFAULT 0,
  `slug` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_image` int(20) DEFAULT NULL,
  `sales_amount` double(20,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `level`, `name`, `order_level`, `banner`, `icon`, `featured`, `top`, `slug`, `meta_title`, `meta_description`, `meta_image`, `sales_amount`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, 0, 'البهارات', 1, 93, NULL, 0, 0, 'spices-vceku', 'spices Mets', 'spices description', 52, 4872.87, '2023-06-22 16:44:16', '2023-06-22 23:44:16', NULL),
(2, 0, 0, 'الشاي', 1, 91, NULL, 0, 0, 'tea', 'الشاي', 'META DES', 54, 18145.74, '2023-05-24 12:12:47', '2023-05-24 19:12:47', NULL),
(3, 0, 0, 'الصحة والتجميل', 1, 89, NULL, 0, 0, 'health-and-beauty', 'الصحة والتجميل.', NULL, 53, 0.00, '2023-05-03 17:48:52', '2023-05-04 00:48:52', NULL),
(4, 0, 0, 'مكسرات وفواكه مجففة', 1, 90, NULL, 0, 0, 'mksrat-ofoakh-mgff-lz8yk', 'مكسرات وفواكه مجففة', NULL, NULL, 0.00, '2023-05-03 17:46:17', '2023-05-04 00:46:17', NULL),
(5, 0, 0, 'الزيوت', 1, 92, NULL, 0, 0, 'oils', 'الزيوت', NULL, NULL, 0.00, '2023-05-03 17:47:19', '2023-05-04 00:47:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category_translations`
--

CREATE TABLE `category_translations` (
  `id` bigint(20) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `lang` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category_translations`
--

INSERT INTO `category_translations` (`id`, `category_id`, `name`, `lang`, `created_at`, `updated_at`) VALUES
(1, 1, 'spices', 'en', '2023-04-06 07:40:43', '2023-04-06 07:40:43'),
(2, 2, 'tea', 'en', '2023-04-08 08:35:50', '2023-04-08 08:35:50'),
(3, 2, 'الشاي', 'ar', '2023-04-08 08:36:57', '2023-04-09 06:18:13'),
(4, 1, 'البهارات', 'ar', '2023-04-09 06:16:49', '2023-04-28 06:34:52'),
(5, 3, 'الصحة والتجميل', 'ar', '2023-04-09 06:18:54', '2023-04-28 22:58:26'),
(6, 4, 'مكسرات وفواكه مجففة', 'ar', '2023-04-28 06:36:31', '2023-04-28 06:36:31'),
(7, 5, 'الزيوت', 'ar', '2023-04-28 06:36:47', '2023-04-28 06:36:47');

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `chat_thread_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `message` text DEFAULT NULL,
  `attachment` varchar(191) DEFAULT NULL,
  `seen_by_customer` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`id`, `chat_thread_id`, `user_id`, `message`, `attachment`, `seen_by_customer`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 2, 73, 'hı', NULL, 1, '2023-04-08 10:01:55', '2023-04-08 10:05:48', NULL),
(3, 2, 73, 'nı', NULL, 1, '2023-04-08 10:02:18', '2023-04-08 10:05:48', NULL),
(4, 2, 1, 'hh', NULL, 1, '2023-04-08 10:02:31', '2023-04-08 10:05:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chat_threads`
--

CREATE TABLE `chat_threads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `last_message_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chat_threads`
--

INSERT INTO `chat_threads` (`id`, `user_id`, `last_message_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 73, '2023-04-08 10:02:31', '2023-04-08 10:01:55', '2023-04-08 10:02:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `state_id` int(11) NOT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `state_id`, `zone_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Al-Dereiyah', 1, 1, 1, '2023-04-24 17:13:22', '2023-04-25 23:40:08', NULL),
(2, 'Al-Kharj', 1, 1, 1, '2023-04-24 17:13:22', '2023-04-25 23:40:08', NULL),
(3, 'Al-Dawadmi', 1, 1, 1, '2023-04-24 17:13:22', '2023-04-25 23:40:08', NULL),
(4, 'Al-Majma\'a', 1, 1, 1, '2023-04-24 17:13:22', '2023-04-25 23:40:08', NULL),
(5, 'Wadil-Dawaser', 1, 1, 1, '2023-04-24 17:13:22', '2023-04-25 23:40:08', NULL),
(6, 'Al-Queyah', 1, 1, 1, '2023-04-24 17:13:22', '2023-04-25 23:40:08', NULL),
(7, 'Shagraa', 1, 1, 1, '2023-04-24 17:13:22', '2023-04-25 23:40:08', NULL),
(8, 'Hutat-bani-Tameem', 1, 1, 1, '2023-04-24 17:13:22', '2023-04-25 23:40:08', NULL),
(9, 'Afeef', 1, 1, 1, '2023-04-24 17:13:22', '2023-04-25 23:40:08', NULL),
(10, 'Al-Selail', 1, 1, 1, '2023-04-24 17:13:22', '2023-04-25 23:40:08', NULL),
(11, 'Darmah', 1, 1, 1, '2023-04-24 17:13:22', '2023-04-25 23:40:08', NULL),
(12, ' Al-Muzahmiya', 1, 1, 1, '2023-04-24 17:13:22', '2023-04-25 23:40:08', NULL),
(13, 'Rumah', 1, 1, 1, '2023-04-24 17:13:22', '2023-04-25 23:40:08', NULL),
(14, 'Thadeg', 1, 1, 1, '2023-04-24 17:13:22', '2023-04-25 23:40:08', NULL),
(15, 'Huraimelaa', 1, 1, 1, '2023-04-24 17:13:22', '2023-04-25 23:40:08', NULL),
(16, 'Al-Hareeg', 1, 1, 1, '2023-04-24 17:13:22', '2023-04-25 23:40:08', NULL),
(17, 'Al-Gatt', 1, 1, 1, '2023-04-24 17:13:22', '2023-04-25 23:40:08', NULL),
(18, 'Jeddah', 2, 1, 1, '2023-04-24 17:13:22', '2023-04-25 23:41:22', NULL),
(19, 'Al-Tayef', 2, 1, 1, '2023-04-24 17:13:22', '2023-04-25 23:40:08', NULL),
(20, 'Al-Gunfudah', 2, 1, 1, '2023-04-24 17:13:22', '2023-04-25 23:40:08', NULL),
(21, 'Al-laith', 2, 1, 1, '2023-04-24 17:13:22', '2023-04-25 23:40:08', NULL),
(22, 'Rabehg', 2, 1, 1, '2023-04-25 01:09:47', '2023-04-25 23:40:08', NULL),
(23, 'Al-Jammom', 2, 1, 1, '2023-04-25 03:13:08', '2023-04-25 23:40:08', NULL),
(24, 'Al-Kamel', 2, 1, 1, '2023-04-25 03:13:51', '2023-04-25 23:40:08', NULL),
(25, 'Al-Muwayh', 2, 1, 1, '2023-04-25 03:14:40', '2023-04-25 23:40:08', NULL),
(26, 'Al-Maysan', 2, 1, 1, '2023-04-25 03:14:40', '2023-04-25 23:40:08', NULL),
(27, 'Adham', 2, 1, 1, '2023-04-25 03:14:40', '2023-04-25 23:40:08', NULL),
(28, 'Bahra', 2, 1, 1, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(29, 'Yanbu', 3, 1, 1, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(30, 'Al-Ola', 3, 1, 1, '2023-04-24 17:13:22', '2023-04-25 23:40:08', NULL),
(31, 'Al-Mahd', 3, 1, 1, '2023-04-24 17:13:22', '2023-04-25 23:40:08', NULL),
(32, 'Badr', 3, 1, 1, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(33, 'Khaibar', 3, 1, 1, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(34, 'Al-Hannakiyah', 3, 1, 1, '2023-04-24 17:13:22', '2023-04-25 23:40:08', NULL),
(35, 'Hafrel-Batin', 3, 1, 1, '2023-04-24 17:13:22', '2023-04-25 23:40:08', NULL),
(36, 'Al-Jubail', 3, 1, 1, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(37, 'Al-Qateef', 3, 1, 1, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(38, 'Al-Khubar', 3, 1, 1, '2023-04-24 17:13:22', '2023-04-25 23:40:08', NULL),
(39, 'Al-Khafji', 3, 1, 1, '2023-04-24 17:13:22', '2023-04-25 23:40:08', NULL),
(40, 'Rastannorah', 3, 1, 1, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(41, 'Abgeeg', 3, 1, 1, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(42, 'Al-Neairiyah', 3, 1, 1, '2023-04-24 17:13:22', '2023-04-25 23:40:08', NULL),
(43, 'Gariat-Alolaiya', 3, 1, 1, '2023-04-24 17:13:22', '2023-04-25 23:40:08', NULL),
(44, 'Onaizah', 4, 1, 1, '2023-04-24 17:13:22', '2023-04-25 23:40:08', NULL),
(45, 'Rass', 4, 1, 1, '2023-04-24 17:13:22', '2023-04-25 23:40:08', NULL),
(46, 'Al-Mithnab', 4, 1, 1, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(47, 'Al-Bukayriyah', 4, 1, 1, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(48, 'Khamis-Al-Badai', 4, 1, 1, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(49, 'Khamis-Mushait', 5, 1, 1, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(50, 'Besha', 5, 1, 1, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(51, 'Al-Namas', 5, 1, 1, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(52, 'Muhayil', 5, 1, 1, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(53, 'Dhahran Al-Janoub', 5, 1, 1, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(54, 'Tathleeth', 5, 1, 1, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(55, 'Sarat Ubaidah', 5, 1, 1, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(56, 'Rijal Almaa', 5, 1, 1, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(57, 'Balqarn', 5, 1, 1, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(58, 'Ahad Rufaidah', 5, 1, 1, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(59, 'Al-Majardah', 5, 1, 1, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(60, 'Al-Barak', 5, 1, 1, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(61, 'Bariq', 5, 1, 1, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(62, 'Tanumah', 5, 1, 1, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(63, 'Al-Harjah', 5, 1, 1, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(64, 'Tareeb', 5, 1, 1, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(65, 'Al-Amwa', 5, 1, 1, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(66, 'Bagaa', 6, 1, 1, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(67, 'Al-Ghazala', 6, 1, 1, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(68, 'Al-Shanan', 6, 1, 1, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(69, 'Al-Sulaimi', 6, 1, 1, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(70, 'Al-Shamli', 6, 1, 1, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(71, 'Muwaqq', 6, 1, 1, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(72, 'Samira', 7, 1, 1, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(73, 'Al Wajh', 7, 1, 1, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(74, 'Debaa', 7, 1, 1, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(75, 'Taima', 7, 1, 1, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(76, 'Amluj', 7, 1, 1, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(77, 'Hagl', 7, 1, 1, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(78, 'Al-Bida', 7, 1, 1, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(79, 'Bulgurashi', 8, 1, 1, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(80, 'Al-Mendaq', 8, 1, 1, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(81, 'Al-Mekhat', 8, 1, 1, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(82, 'Al-Ageeg', 8, 1, 1, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(83, 'Galwah', 8, 1, 1, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(84, 'Al-Qura', 8, 1, 1, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(85, 'Ghamid Zinad', 8, 1, 1, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(86, 'Bani Hassan', 8, 1, 1, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(87, 'Al-Hajrah', 8, 1, 1, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(88, 'Rafha', 9, 1, 1, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(89, 'Tareef', 9, 1, 1, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(90, 'Al-Awqaila', 9, 1, 1, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(91, 'Al-Qurayyat', 10, 1, 1, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(92, 'Domat-aljandal', 10, 1, 1, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(93, 'Tabarjal', 10, 1, 1, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(94, 'Sabya', 11, 1, 0, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(95, 'Abu-Areesh', 11, 1, 0, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(96, 'Samta', 11, 1, 0, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(97, 'Al-Harth', 11, 1, 0, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(98, 'Damad', 11, 1, 0, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(99, 'Al-Raith', 11, 1, 0, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(100, 'Farasan', 11, 1, 0, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(101, 'Al-Dayer', 11, 1, 0, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(102, 'Ahad-Almasarha', 11, 1, 0, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(103, 'Al-Aardah', 11, 1, 0, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(104, 'Al-Aidabi', 11, 1, 0, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(105, 'Sharora', 12, 1, 1, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(106, 'Habuna', 12, 1, 1, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(107, 'Badrel-Janoub', 12, 1, 1, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(108, 'Yedemah', 12, 1, 1, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(109, 'Thar', 12, 1, 1, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL),
(110, 'Khabbash', 12, 1, 1, '2023-04-25 03:14:41', '2023-04-25 23:40:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `city_translations`
--

CREATE TABLE `city_translations` (
  `id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `lang` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `city_translations`
--

INSERT INTO `city_translations` (`id`, `city_id`, `name`, `lang`, `created_at`, `updated_at`) VALUES
(1, 1, 'Al-Dereiyah', 'en', '2023-04-25 00:52:52', '2023-04-25 00:52:52'),
(2, 1, 'الدرعية', 'ar', '2023-04-25 00:52:52', '2023-04-25 00:52:52'),
(3, 2, 'Al-Kharj', 'en', '2023-04-25 00:52:52', '2023-04-25 00:52:52'),
(4, 2, 'الخرج', 'ar', '2023-04-25 00:52:52', '2023-04-25 00:52:52'),
(5, 3, 'Al-Dawadmi', 'en', '2023-04-25 00:52:52', '2023-04-25 00:52:52'),
(6, 3, 'الدوادمي', 'ar', '2023-04-25 00:52:52', '2023-04-25 00:52:52'),
(7, 4, 'Al-Majma\'a', 'en', '2023-04-25 00:52:52', '2023-04-25 00:52:52'),
(8, 4, 'المجمعة', 'ar', '2023-04-25 00:52:52', '2023-04-25 00:52:52'),
(9, 5, 'Wadil-Dawaser', 'en', '2023-04-25 00:56:24', '2023-04-25 00:56:24'),
(10, 5, 'وادي الدواسر', 'ar', '2023-04-25 00:56:24', '2023-04-25 00:56:24'),
(11, 6, 'Al-Queyah', 'en', '2023-04-25 00:59:19', '2023-04-25 00:59:19'),
(12, 6, 'القوية', 'ar', '2023-04-25 00:59:19', '2023-04-25 00:59:19'),
(13, 7, 'Shagraa', 'en', '2023-04-25 00:59:19', '2023-04-25 00:59:19'),
(14, 7, 'شقراء', 'ar', '2023-04-25 00:59:19', '2023-04-25 00:59:19'),
(15, 8, 'Hutat-bani-Tameem', 'en', '2023-04-25 00:59:19', '2023-04-25 00:59:19'),
(16, 8, 'حوطة بني تميم', 'ar', '2023-04-25 00:59:19', '2023-04-25 00:59:19'),
(17, 9, 'Afeef', 'en', '2023-04-25 00:59:19', '2023-04-25 00:59:19'),
(18, 9, 'عفيف', 'ar', '2023-04-25 00:59:19', '2023-04-25 00:59:19'),
(19, 10, 'Al-Selail', 'en', '2023-04-25 01:02:31', '2023-04-25 01:02:31'),
(20, 10, 'السليل', 'ar', '2023-04-25 01:02:31', '2023-04-25 01:02:31'),
(21, 11, 'Darmah', 'en', '2023-04-25 01:02:31', '2023-04-25 01:02:31'),
(22, 11, 'ضرماء', 'ar', '2023-04-25 01:02:31', '2023-04-25 01:02:31'),
(23, 12, ' Al-Muzahmiya', 'en', '2023-04-25 01:02:31', '2023-04-25 01:02:31'),
(24, 12, 'المزاحمية', 'ar', '2023-04-25 01:02:31', '2023-04-25 01:02:31'),
(25, 13, 'Rumah', 'en', '2023-04-25 01:02:31', '2023-04-25 01:02:31'),
(26, 13, 'رماح', 'ar', '2023-04-25 01:02:31', '2023-04-25 01:02:31'),
(27, 14, 'Thadeg', 'en', '2023-04-25 01:06:12', '2023-04-25 01:06:12'),
(28, 14, 'ثادق', 'ar', '2023-04-25 01:06:12', '2023-04-25 01:06:12'),
(29, 15, 'Huraimelaa', 'en', '2023-04-25 01:06:12', '2023-04-25 01:06:12'),
(30, 15, 'حريملاء', 'ar', '2023-04-25 01:06:12', '2023-04-25 01:06:12'),
(31, 16, ' Al-Hareeg', 'en', '2023-04-25 01:06:12', '2023-04-25 01:06:12'),
(32, 16, 'الحريق', 'ar', '2023-04-25 01:06:12', '2023-04-25 01:06:12'),
(33, 17, 'Al-Gatt', 'en', '2023-04-25 01:06:12', '2023-04-25 01:06:12'),
(34, 17, 'الرين', 'ar', '2023-04-25 01:06:12', '2023-04-25 01:06:12'),
(35, 18, 'Jeddah', 'en', '2023-04-25 01:10:37', '2023-04-25 01:10:37'),
(36, 18, 'جدة', 'ar', '2023-04-25 01:10:37', '2023-04-25 01:10:37'),
(37, 19, 'Al-Tayef', 'en', '2023-04-25 01:10:37', '2023-04-25 01:10:37'),
(38, 19, 'الطائف', 'ar', '2023-04-25 01:10:37', '2023-04-25 01:10:37'),
(39, 20, ' Al-Gunfudah', 'en', '2023-04-25 01:10:37', '2023-04-25 01:10:37'),
(40, 20, 'القنفذة', 'ar', '2023-04-25 01:10:37', '2023-04-25 01:10:37'),
(41, 21, 'Al-laith', 'en', '2023-04-25 01:10:37', '2023-04-25 01:10:37'),
(42, 21, 'الليث', 'ar', '2023-04-25 01:10:37', '2023-04-25 01:10:37'),
(43, 22, 'Rabehg', 'en', '2023-04-25 01:10:37', '2023-04-25 01:10:37'),
(44, 22, 'رابغ', 'ar', '2023-04-25 01:10:37', '2023-04-25 01:10:37'),
(45, 23, 'Al-Jammom', 'en', '2023-04-25 03:12:09', '2023-04-25 03:12:09'),
(46, 23, 'الجموم', 'ar', '2023-04-25 03:12:09', '2023-04-25 03:12:09'),
(47, 23, 'Al-Jammom', 'en', '2023-04-25 03:12:37', '2023-04-25 03:12:37'),
(48, 23, 'الجموم', 'ar', '2023-04-25 03:12:37', '2023-04-25 03:12:37'),
(49, 24, 'Al-Kamel', 'en', '2023-04-25 03:12:37', '2023-04-25 03:12:37'),
(50, 24, 'الكامل', 'ar', '2023-04-25 03:12:37', '2023-04-25 03:12:37'),
(51, 25, ' Al-Muwayh', 'en', '2023-04-25 03:12:38', '2023-04-25 03:12:38'),
(52, 25, 'المويه', 'ar', '2023-04-25 03:12:38', '2023-04-25 03:12:38'),
(53, 26, 'Al-Maysan', 'en', '2023-04-25 03:12:38', '2023-04-25 03:12:38'),
(54, 21, 'الميسان', 'ar', '2023-04-25 03:12:38', '2023-04-25 03:12:38'),
(55, 27, 'Adham ', 'en', '2023-04-25 03:12:38', '2023-04-25 03:12:38'),
(56, 27, 'أضم', 'ar', '2023-04-25 03:12:38', '2023-04-25 03:12:38'),
(57, 28, 'Bahra ', 'en', '2023-04-25 03:12:38', '2023-04-25 03:12:38'),
(58, 28, 'بحرة', 'ar', '2023-04-25 03:12:38', '2023-04-25 03:12:38'),
(59, 29, 'ينبع', 'ar', '2023-04-25 03:12:38', '2023-04-25 03:12:38'),
(60, 29, 'Yanbu', 'en', '2023-04-25 03:12:38', '2023-04-25 03:12:38'),
(61, 30, 'Al-Ola', 'en', '2023-04-25 03:23:53', '2023-04-25 03:23:53'),
(62, 30, 'العلا', 'ar', '2023-04-25 03:23:53', '2023-04-25 03:23:53'),
(63, 30, 'Al-Mahd', 'en', '2023-04-25 03:23:53', '2023-04-25 03:23:53'),
(64, 30, 'المهد', 'ar', '2023-04-25 03:23:53', '2023-04-25 03:23:53'),
(65, 31, ' Badr', 'en', '2023-04-25 03:23:53', '2023-04-25 03:23:53'),
(66, 31, 'بدر', 'ar', '2023-04-25 03:23:53', '2023-04-25 03:23:53'),
(67, 32, 'Khaibar', 'en', '2023-04-25 03:23:53', '2023-04-25 03:23:53'),
(68, 32, 'خيبر', 'ar', '2023-04-25 03:23:53', '2023-04-25 03:23:53'),
(69, 33, 'Al-Hannakiyah ', 'en', '2023-04-25 03:23:53', '2023-04-25 03:23:53'),
(70, 33, 'الحناكية', 'ar', '2023-04-25 03:23:53', '2023-04-25 03:23:53'),
(71, 34, 'Al-Ahsa', 'en', '2023-04-25 03:35:35', '2023-04-25 03:35:35'),
(72, 34, 'الأحساء', 'ar', '2023-04-25 03:35:35', '2023-04-25 03:35:35'),
(73, 35, 'Hafrel-Batin', 'en', '2023-04-25 03:35:35', '2023-04-25 03:35:35'),
(74, 35, 'حفر الباطن', 'ar', '2023-04-25 03:35:35', '2023-04-25 03:35:35'),
(75, 36, ' Al-Jubail', 'en', '2023-04-25 03:35:35', '2023-04-25 03:35:35'),
(76, 36, 'الجبيل', 'ar', '2023-04-25 03:35:35', '2023-04-25 03:35:35'),
(77, 37, 'Al-Qateef', 'en', '2023-04-25 03:35:35', '2023-04-25 03:35:35'),
(78, 37, 'القطيف', 'ar', '2023-04-25 03:35:35', '2023-04-25 03:35:35'),
(79, 38, 'Al-Khubar ', 'en', '2023-04-25 03:35:35', '2023-04-25 03:35:35'),
(80, 38, 'الخبر', 'ar', '2023-04-25 03:35:35', '2023-04-25 03:35:35'),
(81, 39, 'Al-Khafji', 'en', '2023-04-25 03:35:35', '2023-04-25 03:35:35'),
(82, 39, 'الخفجي', 'ar', '2023-04-25 03:35:35', '2023-04-25 03:35:35'),
(83, 40, 'Rastannorah', 'en', '2023-04-25 03:35:35', '2023-04-25 03:35:35'),
(84, 40, 'رأس تنورة', 'ar', '2023-04-25 03:35:35', '2023-04-25 03:35:35'),
(85, 41, 'Abgeeg', 'en', '2023-04-25 03:35:35', '2023-04-25 03:35:35'),
(86, 41, 'ابقيق', 'ar', '2023-04-25 03:35:35', '2023-04-25 03:35:35'),
(87, 42, 'Al-Neairiyah', 'en', '2023-04-25 03:35:35', '2023-04-25 03:35:35'),
(88, 42, 'النعيرية', 'ar', '2023-04-25 03:35:35', '2023-04-25 03:35:35'),
(89, 43, 'Gariat-Alolaiya', 'en', '2023-04-25 03:35:36', '2023-04-25 03:35:36'),
(90, 43, 'قرية العليا', 'ar', '2023-04-25 03:35:36', '2023-04-25 03:35:36'),
(91, 44, 'عنيزة', 'ar', '2023-04-25 03:47:43', '2023-04-25 03:47:43'),
(92, 44, 'Onaizah', 'en', '2023-04-25 03:47:43', '2023-04-25 03:47:43'),
(95, 45, 'الرس', 'ar', '2023-04-25 03:50:27', '2023-04-25 03:50:27'),
(96, 45, 'Al-Rass', 'en', '2023-04-25 03:50:27', '2023-04-25 03:50:27'),
(97, 46, 'المذنب', 'ar', '2023-04-25 03:50:28', '2023-04-25 03:50:28'),
(98, 46, 'Al-Mithnab', 'en', '2023-04-25 03:50:28', '2023-04-25 03:50:28'),
(99, 47, 'البكيرية', 'ar', '2023-04-25 03:50:28', '2023-04-25 03:50:28'),
(100, 47, 'Al-Bukayriyah', 'en', '2023-04-25 03:50:28', '2023-04-25 03:50:28'),
(101, 48, 'البدائع', 'ar', '2023-04-25 03:50:28', '2023-04-25 03:50:28'),
(102, 48, 'Al-Badai', 'en', '2023-04-25 03:50:28', '2023-04-25 03:50:28'),
(103, 49, 'خميس مشيط', 'ar', '2023-04-25 04:20:58', '2023-04-25 04:20:58'),
(104, 49, 'Khamis-Mushait', 'en', '2023-04-25 04:20:58', '2023-04-25 04:20:58'),
(105, 50, 'بيشة', 'ar', '2023-04-25 04:20:58', '2023-04-25 04:20:58'),
(106, 50, 'Besha', 'en', '2023-04-25 04:20:58', '2023-04-25 04:20:58'),
(107, 51, 'النماص', 'ar', '2023-04-25 04:20:58', '2023-04-25 04:20:58'),
(108, 51, 'Al-Namas', 'en', '2023-04-25 04:20:58', '2023-04-25 04:20:58'),
(109, 52, 'محايل', 'ar', '2023-04-25 04:20:58', '2023-04-25 04:20:58'),
(110, 52, 'Muhayil', 'en', '2023-04-25 04:20:58', '2023-04-25 04:20:58'),
(111, 53, 'ظهران الجنوب', 'ar', '2023-04-25 04:20:59', '2023-04-25 04:20:59'),
(112, 53, 'Dhahran Al-Janoub', 'en', '2023-04-25 04:20:59', '2023-04-25 04:20:59'),
(113, 54, 'تثليث', 'ar', '2023-04-25 04:20:59', '2023-04-25 04:20:59'),
(114, 54, 'Tathleeth', 'en', '2023-04-25 04:20:59', '2023-04-25 04:20:59'),
(115, 55, 'سراة عبيدة', 'ar', '2023-04-25 04:29:23', '2023-04-25 04:29:23'),
(116, 55, 'Sarat Ubaidah', 'en', '2023-04-25 04:29:23', '2023-04-25 04:29:23'),
(117, 56, 'رجال ألمع', 'ar', '2023-04-25 04:29:23', '2023-04-25 04:29:23'),
(118, 56, 'Rijal Almaa', 'en', '2023-04-25 04:29:23', '2023-04-25 04:29:23'),
(119, 57, 'بلقرن', 'ar', '2023-04-25 04:29:23', '2023-04-25 04:29:23'),
(120, 57, 'Balqarn', 'en', '2023-04-25 04:29:23', '2023-04-25 04:29:23'),
(121, 58, ' أحد رفيدة', 'ar', '2023-04-25 04:29:23', '2023-04-25 04:29:23'),
(122, 58, 'Ahad Rufaidah', 'en', '2023-04-25 04:29:23', '2023-04-25 04:29:23'),
(123, 59, 'المجاردة', 'ar', '2023-04-25 04:29:23', '2023-04-25 04:29:23'),
(124, 59, 'Al-Majardah', 'en', '2023-04-25 04:29:23', '2023-04-25 04:29:23'),
(125, 60, 'البرك', 'ar', '2023-04-25 04:29:23', '2023-04-25 04:29:23'),
(126, 60, 'Al-Barak', 'en', '2023-04-25 04:29:23', '2023-04-25 04:29:23'),
(127, 61, 'بارق', 'ar', '2023-04-25 04:29:23', '2023-04-25 04:29:23'),
(128, 61, 'Bariq', 'en', '2023-04-25 04:29:23', '2023-04-25 04:29:23'),
(129, 62, 'تنومة', 'ar', '2023-04-25 04:29:23', '2023-04-25 04:29:23'),
(130, 62, 'Tanumah', 'en', '2023-04-25 04:29:23', '2023-04-25 04:29:23'),
(131, 63, 'الحرجه', 'ar', '2023-04-25 04:29:24', '2023-04-25 04:29:24'),
(132, 63, 'Al-Harjah', 'en', '2023-04-25 04:29:24', '2023-04-25 04:29:24'),
(133, 64, 'طريب', 'ar', '2023-04-25 04:29:24', '2023-04-25 04:29:24'),
(134, 64, 'Tareeb', 'en', '2023-04-25 04:29:24', '2023-04-25 04:29:24'),
(135, 65, 'الامواه', 'ar', '2023-04-25 04:29:24', '2023-04-25 04:29:24'),
(136, 65, 'Al-Amwa', 'en', '2023-04-25 04:29:24', '2023-04-25 04:29:24'),
(137, 66, 'بقعاء', 'ar', '2023-04-25 04:53:59', '2023-04-25 04:53:59'),
(138, 66, 'Bagaa', 'en', '2023-04-25 04:53:59', '2023-04-25 04:53:59'),
(139, 67, 'الغزالة', 'ar', '2023-04-25 04:53:59', '2023-04-25 04:53:59'),
(140, 67, 'Al-Ghazala', 'en', '2023-04-25 04:53:59', '2023-04-25 04:53:59'),
(141, 68, 'الشنان', 'ar', '2023-04-25 04:53:59', '2023-04-25 04:53:59'),
(142, 68, 'Al-Shanan', 'en', '2023-04-25 04:53:59', '2023-04-25 04:53:59'),
(143, 69, 'السليمي', 'ar', '2023-04-25 04:53:59', '2023-04-25 04:53:59'),
(144, 69, 'Al-Sulaimi', 'en', '2023-04-25 04:53:59', '2023-04-25 04:53:59'),
(145, 70, 'الشملي', 'ar', '2023-04-25 04:53:59', '2023-04-25 04:53:59'),
(146, 70, 'Al-Shamli', 'en', '2023-04-25 04:53:59', '2023-04-25 04:53:59'),
(147, 71, 'موقق', 'ar', '2023-04-25 04:53:59', '2023-04-25 04:53:59'),
(148, 71, 'Muwaqq', 'en', '2023-04-25 04:53:59', '2023-04-25 04:53:59'),
(149, 61, 'سميراء', 'ar', '2023-04-25 04:54:00', '2023-04-25 04:54:00'),
(150, 72, 'Samira', 'en', '2023-04-25 04:54:00', '2023-04-25 04:54:00'),
(151, 73, 'الوجه', 'ar', '2023-04-25 04:54:00', '2023-04-25 04:54:00'),
(152, 73, 'Al Wajh', 'en', '2023-04-25 04:54:00', '2023-04-25 04:54:00'),
(153, 74, 'ضباء', 'ar', '2023-04-25 04:54:00', '2023-04-25 04:54:00'),
(154, 74, 'Debaa', 'en', '2023-04-25 04:54:00', '2023-04-25 04:54:00'),
(155, 75, 'تيماء', 'ar', '2023-04-25 04:54:00', '2023-04-25 04:54:00'),
(156, 75, 'Taima', 'en', '2023-04-25 04:54:00', '2023-04-25 04:54:00'),
(157, 76, 'أملج', 'ar', '2023-04-25 04:54:00', '2023-04-25 04:54:00'),
(158, 76, 'Amluj', 'en', '2023-04-25 04:54:00', '2023-04-25 04:54:00'),
(159, 77, 'حقل', 'ar', '2023-04-25 04:54:00', '2023-04-25 04:54:00'),
(160, 77, 'Hagl', 'en', '2023-04-25 04:54:00', '2023-04-25 04:54:00'),
(161, 78, 'البدع', 'ar', '2023-04-25 04:54:00', '2023-04-25 04:54:00'),
(162, 78, 'Al-Bida', 'en', '2023-04-25 04:54:00', '2023-04-25 04:54:00'),
(163, 79, 'بلجرشي', 'ar', '2023-04-25 05:10:19', '2023-04-25 05:10:19'),
(164, 79, 'Bulgurashi', 'en', '2023-04-25 05:10:19', '2023-04-25 05:10:19'),
(165, 80, 'المندق', 'ar', '2023-04-25 05:10:19', '2023-04-25 05:10:19'),
(166, 80, 'Al-Mendaq', 'en', '2023-04-25 05:10:19', '2023-04-25 05:10:19'),
(167, 81, 'المخواة', 'ar', '2023-04-25 05:10:19', '2023-04-25 05:10:19'),
(168, 81, 'Al-Mekhat', 'en', '2023-04-25 05:10:19', '2023-04-25 05:10:19'),
(169, 82, 'العقيق', 'ar', '2023-04-25 05:10:19', '2023-04-25 05:10:19'),
(170, 82, 'Al-Ageeg', 'en', '2023-04-25 05:10:19', '2023-04-25 05:10:19'),
(171, 83, 'قلوة', 'ar', '2023-04-25 05:10:19', '2023-04-25 05:10:19'),
(172, 83, 'Galwah', 'en', '2023-04-25 05:10:19', '2023-04-25 05:10:19'),
(173, 84, 'القرى', 'ar', '2023-04-25 05:10:20', '2023-04-25 05:10:20'),
(174, 84, 'Al-Qura', 'en', '2023-04-25 05:10:20', '2023-04-25 05:10:20'),
(175, 85, 'غامد الزناد', 'ar', '2023-04-25 05:10:20', '2023-04-25 05:10:20'),
(176, 85, 'Ghamid-Zinad', 'en', '2023-04-25 05:10:20', '2023-04-25 05:10:20'),
(177, 86, 'بني حسن', 'ar', '2023-04-25 05:10:20', '2023-04-25 05:10:20'),
(178, 86, 'Bani Hassan', 'en', '2023-04-25 05:10:20', '2023-04-25 05:10:20'),
(179, 87, 'الحجرة', 'ar', '2023-04-25 05:10:20', '2023-04-25 05:10:20'),
(180, 87, 'Al-Hajrah', 'en', '2023-04-25 05:10:20', '2023-04-25 05:10:20'),
(181, 88, 'رفحاء', 'ar', '2023-04-25 05:20:07', '2023-04-25 05:20:07'),
(182, 88, 'Rafha', 'en', '2023-04-25 05:20:07', '2023-04-25 05:20:07'),
(183, 89, 'طريف', 'ar', '2023-04-25 05:20:07', '2023-04-25 05:20:07'),
(184, 89, 'Tareef', 'en', '2023-04-25 05:20:07', '2023-04-25 05:20:07'),
(185, 90, 'العويقلية', 'ar', '2023-04-25 05:20:07', '2023-04-25 05:20:07'),
(186, 90, 'Al-Awqaila', 'en', '2023-04-25 05:20:07', '2023-04-25 05:20:07'),
(187, 91, 'القريات', 'ar', '2023-04-25 05:20:07', '2023-04-25 05:20:07'),
(188, 91, ' Al-Qurayyat', 'en', '2023-04-25 05:20:07', '2023-04-25 05:20:07'),
(189, 92, 'دومة الجندل', 'ar', '2023-04-25 05:20:07', '2023-04-25 05:20:07'),
(190, 92, 'Domat-aljandal', 'en', '2023-04-25 05:20:07', '2023-04-25 05:20:07'),
(191, 93, 'طبرجل', 'ar', '2023-04-25 05:20:07', '2023-04-25 05:20:07'),
(192, 93, 'Tabarjal', 'en', '2023-04-25 05:20:07', '2023-04-25 05:20:07'),
(193, 94, 'صبياء', 'ar', '2023-04-25 05:33:20', '2023-04-25 05:33:20'),
(194, 94, 'Sabya', 'en', '2023-04-25 05:33:20', '2023-04-25 05:33:20'),
(195, 95, 'أبو عريش', 'ar', '2023-04-25 05:33:20', '2023-04-25 05:33:20'),
(196, 95, 'Abu-Areesh', 'en', '2023-04-25 05:33:20', '2023-04-25 05:33:20'),
(197, 96, 'صامطة', 'ar', '2023-04-25 05:33:20', '2023-04-25 05:33:20'),
(198, 96, 'Samta', 'en', '2023-04-25 05:33:20', '2023-04-25 05:33:20'),
(199, 97, 'الحرث', 'ar', '2023-04-25 05:33:20', '2023-04-25 05:33:20'),
(200, 97, ' Al-Harth', 'en', '2023-04-25 05:33:20', '2023-04-25 05:33:20'),
(201, 98, 'ضمد', 'ar', '2023-04-25 05:33:21', '2023-04-25 05:33:21'),
(202, 98, 'Damad', 'en', '2023-04-25 05:33:21', '2023-04-25 05:33:21'),
(203, 99, 'الريث', 'ar', '2023-04-25 05:33:21', '2023-04-25 05:33:21'),
(204, 99, 'Al-Raith', 'en', '2023-04-25 05:33:21', '2023-04-25 05:33:21'),
(205, 100, 'جزر فرسان', 'ar', '2023-04-25 05:33:21', '2023-04-25 05:33:21'),
(206, 100, 'Farasan', 'en', '2023-04-25 05:33:21', '2023-04-25 05:33:21'),
(207, 101, 'الدائر', 'ar', '2023-04-25 05:33:21', '2023-04-25 05:33:21'),
(208, 101, 'Al-Dayer', 'en', '2023-04-25 05:33:21', '2023-04-25 05:33:21'),
(209, 102, 'أحد المسارحة', 'ar', '2023-04-25 05:33:21', '2023-04-25 05:33:21'),
(210, 102, 'Ahad-Almasarha', 'en', '2023-04-25 05:33:21', '2023-04-25 05:33:21'),
(211, 103, 'العارضة', 'ar', '2023-04-25 05:33:21', '2023-04-25 05:33:21'),
(212, 103, 'Al-Aardah', 'en', '2023-04-25 05:33:21', '2023-04-25 05:33:21'),
(213, 104, 'العيدابي', 'ar', '2023-04-25 05:33:21', '2023-04-25 05:33:21'),
(214, 104, 'Al-Aidabi', 'en', '2023-04-25 05:33:21', '2023-04-25 05:33:21'),
(215, 105, 'شرورة', 'ar', '2023-04-25 05:39:46', '2023-04-25 05:39:46'),
(216, 105, 'Sharora', 'en', '2023-04-25 05:39:46', '2023-04-25 05:39:46'),
(217, 106, 'حبونا', 'ar', '2023-04-25 05:39:46', '2023-04-25 05:39:46'),
(218, 106, 'Habuna', 'en', '2023-04-25 05:39:46', '2023-04-25 05:39:46'),
(219, 107, ' بدر الجنوب', 'ar', '2023-04-25 05:39:46', '2023-04-25 05:39:46'),
(220, 107, 'Badrel-Janoub', 'en', '2023-04-25 05:39:46', '2023-04-25 05:39:46'),
(221, 108, 'يدمة', 'ar', '2023-04-25 05:39:46', '2023-04-25 05:39:46'),
(222, 108, 'Yedemah', 'en', '2023-04-25 05:39:46', '2023-04-25 05:39:46'),
(223, 109, 'ثار', 'ar', '2023-04-25 05:39:46', '2023-04-25 05:39:46'),
(224, 109, 'Thar', 'en', '2023-04-25 05:39:46', '2023-04-25 05:39:46'),
(225, 110, 'خباش', 'ar', '2023-04-25 05:39:46', '2023-04-25 05:39:46'),
(226, 110, 'Khabbash', 'en', '2023-04-25 05:39:46', '2023-04-25 05:39:46');

-- --------------------------------------------------------

--
-- Table structure for table `club_points`
--

CREATE TABLE `club_points` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `points` double(18,2) NOT NULL,
  `combined_order_id` int(11) NOT NULL,
  `convert_status` int(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `club_point_details`
--

CREATE TABLE `club_point_details` (
  `id` int(11) NOT NULL,
  `club_point_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `point` double(8,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `combined_orders`
--

CREATE TABLE `combined_orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `guest_id` int(11) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `shipping_address` longtext DEFAULT NULL,
  `billing_address` longtext DEFAULT NULL,
  `grand_total` double(20,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `combined_orders`
--

INSERT INTO `combined_orders` (`id`, `user_id`, `guest_id`, `code`, `shipping_address`, `billing_address`, `grand_total`, `created_at`, `updated_at`) VALUES
(135, 2, NULL, '20230426-02521438', '{\"id\":4,\"user_id\":2,\"address\":\"dsa\",\"country\":\"Saudi Arabia\",\"country_id\":1,\"state\":\"Makkah\",\"state_id\":2,\"city\":\"Jeddah\",\"city_id\":18,\"postal_code\":\"213312\",\"phone\":\"3213213\",\"default_shipping\":0,\"default_billing\":0,\"created_at\":\"2023-04-25T23:38:15.000000Z\",\"updated_at\":\"2023-04-25T23:38:15.000000Z\",\"deleted_at\":null}', '{\"id\":4,\"user_id\":2,\"address\":\"dsa\",\"country\":\"Saudi Arabia\",\"country_id\":1,\"state\":\"Makkah\",\"state_id\":2,\"city\":\"Jeddah\",\"city_id\":18,\"postal_code\":\"213312\",\"phone\":\"3213213\",\"default_shipping\":0,\"default_billing\":0,\"created_at\":\"2023-04-25T23:38:15.000000Z\",\"updated_at\":\"2023-04-25T23:38:15.000000Z\",\"deleted_at\":null}', 331.25, '2023-04-25 23:52:14', '2023-04-25 23:52:16'),
(136, 81, NULL, '20230427-07390048', '{\"id\":5,\"user_id\":\"81\",\"address\":\"\\u062c\\u062f\\u0647 \\u0627\\u0644\\u062d\\u0645\\u062c\\u0627\\u0646\\u064a\\u0629\",\"country\":\"Saudi Arabia\",\"country_id\":\"1\",\"state\":\"Makkah\",\"state_id\":\"2\",\"city\":\"Jeddah\",\"city_id\":\"18\",\"postal_code\":\"12520\",\"phone\":\"0509617973\",\"default_shipping\":\"1\",\"default_billing\":\"1\",\"created_at\":\"2023-04-27T04:38:21.000000Z\",\"updated_at\":\"2023-04-27T04:38:21.000000Z\",\"deleted_at\":null}', '{\"id\":5,\"user_id\":\"81\",\"address\":\"\\u062c\\u062f\\u0647 \\u0627\\u0644\\u062d\\u0645\\u062c\\u0627\\u0646\\u064a\\u0629\",\"country\":\"Saudi Arabia\",\"country_id\":\"1\",\"state\":\"Makkah\",\"state_id\":\"2\",\"city\":\"Jeddah\",\"city_id\":\"18\",\"postal_code\":\"12520\",\"phone\":\"0509617973\",\"default_shipping\":\"1\",\"default_billing\":\"1\",\"created_at\":\"2023-04-27T04:38:21.000000Z\",\"updated_at\":\"2023-04-27T04:38:21.000000Z\",\"deleted_at\":null}', 135.75, '2023-04-27 11:39:00', '2023-04-27 11:39:01'),
(137, 81, NULL, '20230427-07401540', '{\"id\":5,\"user_id\":\"81\",\"address\":\"\\u062c\\u062f\\u0647 \\u0627\\u0644\\u062d\\u0645\\u062c\\u0627\\u0646\\u064a\\u0629\",\"country\":\"Saudi Arabia\",\"country_id\":\"1\",\"state\":\"Makkah\",\"state_id\":\"2\",\"city\":\"Jeddah\",\"city_id\":\"18\",\"postal_code\":\"12520\",\"phone\":\"0509617973\",\"default_shipping\":\"1\",\"default_billing\":\"1\",\"created_at\":\"2023-04-27T04:38:21.000000Z\",\"updated_at\":\"2023-04-27T04:38:21.000000Z\",\"deleted_at\":null}', '{\"id\":5,\"user_id\":\"81\",\"address\":\"\\u062c\\u062f\\u0647 \\u0627\\u0644\\u062d\\u0645\\u062c\\u0627\\u0646\\u064a\\u0629\",\"country\":\"Saudi Arabia\",\"country_id\":\"1\",\"state\":\"Makkah\",\"state_id\":\"2\",\"city\":\"Jeddah\",\"city_id\":\"18\",\"postal_code\":\"12520\",\"phone\":\"0509617973\",\"default_shipping\":\"1\",\"default_billing\":\"1\",\"created_at\":\"2023-04-27T04:38:21.000000Z\",\"updated_at\":\"2023-04-27T04:38:21.000000Z\",\"deleted_at\":null}', 127.50, '2023-04-27 11:40:15', '2023-04-27 11:40:16'),
(138, 81, NULL, '20230427-07525488', '{\"id\":5,\"user_id\":\"81\",\"address\":\"\\u062c\\u062f\\u0647 \\u0627\\u0644\\u062d\\u0645\\u062c\\u0627\\u0646\\u064a\\u0629\",\"country\":\"Saudi Arabia\",\"country_id\":\"1\",\"state\":\"Makkah\",\"state_id\":\"2\",\"city\":\"Jeddah\",\"city_id\":\"18\",\"postal_code\":\"12520\",\"phone\":\"0509617973\",\"default_shipping\":\"1\",\"default_billing\":\"1\",\"created_at\":\"2023-04-27T04:38:21.000000Z\",\"updated_at\":\"2023-04-27T04:38:21.000000Z\",\"deleted_at\":null}', '{\"id\":5,\"user_id\":\"81\",\"address\":\"\\u062c\\u062f\\u0647 \\u0627\\u0644\\u062d\\u0645\\u062c\\u0627\\u0646\\u064a\\u0629\",\"country\":\"Saudi Arabia\",\"country_id\":\"1\",\"state\":\"Makkah\",\"state_id\":\"2\",\"city\":\"Jeddah\",\"city_id\":\"18\",\"postal_code\":\"12520\",\"phone\":\"0509617973\",\"default_shipping\":\"1\",\"default_billing\":\"1\",\"created_at\":\"2023-04-27T04:38:21.000000Z\",\"updated_at\":\"2023-04-27T04:38:21.000000Z\",\"deleted_at\":null}', 171.49, '2023-04-27 11:52:54', '2023-04-27 11:52:55'),
(139, 81, NULL, '20230427-07535225', '{\"id\":5,\"user_id\":\"81\",\"address\":\"\\u062c\\u062f\\u0647 \\u0627\\u0644\\u062d\\u0645\\u062c\\u0627\\u0646\\u064a\\u0629\",\"country\":\"Saudi Arabia\",\"country_id\":\"1\",\"state\":\"Makkah\",\"state_id\":\"2\",\"city\":\"Jeddah\",\"city_id\":\"18\",\"postal_code\":\"12520\",\"phone\":\"0509617973\",\"default_shipping\":\"1\",\"default_billing\":\"1\",\"created_at\":\"2023-04-27T04:38:21.000000Z\",\"updated_at\":\"2023-04-27T04:38:21.000000Z\",\"deleted_at\":null}', '{\"id\":5,\"user_id\":\"81\",\"address\":\"\\u062c\\u062f\\u0647 \\u0627\\u0644\\u062d\\u0645\\u062c\\u0627\\u0646\\u064a\\u0629\",\"country\":\"Saudi Arabia\",\"country_id\":\"1\",\"state\":\"Makkah\",\"state_id\":\"2\",\"city\":\"Jeddah\",\"city_id\":\"18\",\"postal_code\":\"12520\",\"phone\":\"0509617973\",\"default_shipping\":\"1\",\"default_billing\":\"1\",\"created_at\":\"2023-04-27T04:38:21.000000Z\",\"updated_at\":\"2023-04-27T04:38:21.000000Z\",\"deleted_at\":null}', 141.50, '2023-04-27 11:53:52', '2023-04-27 11:53:54'),
(140, 81, NULL, '20230507-10310885', '{\"id\":5,\"user_id\":\"81\",\"address\":\"\\u062c\\u062f\\u0647 \\u0627\\u0644\\u062d\\u0645\\u062c\\u0627\\u0646\\u064a\\u0629\",\"country\":\"Saudi Arabia\",\"country_id\":\"1\",\"state\":\"Makkah\",\"state_id\":\"2\",\"city\":\"Jeddah\",\"city_id\":\"18\",\"postal_code\":\"12520\",\"phone\":\"0509617973\",\"default_shipping\":\"1\",\"default_billing\":\"1\",\"created_at\":\"2023-04-27T04:38:21.000000Z\",\"updated_at\":\"2023-04-27T04:38:21.000000Z\",\"deleted_at\":null}', '{\"id\":5,\"user_id\":\"81\",\"address\":\"\\u062c\\u062f\\u0647 \\u0627\\u0644\\u062d\\u0645\\u062c\\u0627\\u0646\\u064a\\u0629\",\"country\":\"Saudi Arabia\",\"country_id\":\"1\",\"state\":\"Makkah\",\"state_id\":\"2\",\"city\":\"Jeddah\",\"city_id\":\"18\",\"postal_code\":\"12520\",\"phone\":\"0509617973\",\"default_shipping\":\"1\",\"default_billing\":\"1\",\"created_at\":\"2023-04-27T04:38:21.000000Z\",\"updated_at\":\"2023-04-27T04:38:21.000000Z\",\"deleted_at\":null}', 142.97, '2023-05-07 14:31:08', '2023-05-07 14:31:09'),
(141, 81, NULL, '20230524-15124789', '{\"id\":5,\"user_id\":\"81\",\"address\":\"\\u062c\\u062f\\u0647 \\u0627\\u0644\\u062d\\u0645\\u062c\\u0627\\u0646\\u064a\\u0629\",\"country\":\"Saudi Arabia\",\"country_id\":\"1\",\"state\":\"Makkah\",\"state_id\":\"2\",\"city\":\"Jeddah\",\"city_id\":\"18\",\"postal_code\":\"12520\",\"phone\":\"0509617973\",\"default_shipping\":\"1\",\"default_billing\":\"1\",\"created_at\":\"2023-04-27T04:38:21.000000Z\",\"updated_at\":\"2023-04-27T04:38:21.000000Z\",\"deleted_at\":null}', '{\"id\":5,\"user_id\":\"81\",\"address\":\"\\u062c\\u062f\\u0647 \\u0627\\u0644\\u062d\\u0645\\u062c\\u0627\\u0646\\u064a\\u0629\",\"country\":\"Saudi Arabia\",\"country_id\":\"1\",\"state\":\"Makkah\",\"state_id\":\"2\",\"city\":\"Jeddah\",\"city_id\":\"18\",\"postal_code\":\"12520\",\"phone\":\"0509617973\",\"default_shipping\":\"1\",\"default_billing\":\"1\",\"created_at\":\"2023-04-27T04:38:21.000000Z\",\"updated_at\":\"2023-04-27T04:38:21.000000Z\",\"deleted_at\":null}', 148.49, '2023-05-24 19:12:47', '2023-05-24 19:12:48'),
(142, 2, NULL, '20230622-19441632', '{\"id\":4,\"user_id\":\"2\",\"address\":\"dsa\",\"country\":\"Saudi Arabia\",\"country_id\":\"1\",\"state\":\"Makkah\",\"state_id\":\"2\",\"city\":\"Jeddah\",\"city_id\":\"18\",\"postal_code\":\"213312\",\"phone\":\"3213213\",\"default_shipping\":\"0\",\"default_billing\":\"0\",\"created_at\":\"2023-04-25T16:38:15.000000Z\",\"updated_at\":\"2023-04-25T16:38:15.000000Z\",\"deleted_at\":null}', '{\"id\":4,\"user_id\":\"2\",\"address\":\"dsa\",\"country\":\"Saudi Arabia\",\"country_id\":\"1\",\"state\":\"Makkah\",\"state_id\":\"2\",\"city\":\"Jeddah\",\"city_id\":\"18\",\"postal_code\":\"213312\",\"phone\":\"3213213\",\"default_shipping\":\"0\",\"default_billing\":\"0\",\"created_at\":\"2023-04-25T16:38:15.000000Z\",\"updated_at\":\"2023-04-25T16:38:15.000000Z\",\"deleted_at\":null}', 256.50, '2023-06-22 23:44:16', '2023-06-22 23:44:17');

-- --------------------------------------------------------

--
-- Table structure for table `commission_histories`
--

CREATE TABLE `commission_histories` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `shop_id` int(11) NOT NULL,
  `admin_commission` double(20,2) NOT NULL DEFAULT 0.00,
  `seller_earning` double(20,2) NOT NULL DEFAULT 0.00,
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Added' COMMENT 'Added/Deducted',
  `details` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `title` varchar(1000) DEFAULT NULL,
  `sender_viewed` int(1) NOT NULL DEFAULT 1,
  `receiver_viewed` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `code` varchar(2) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `code`, `name`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'SA', 'Saudi Arabia', 1, '2021-04-06 07:06:30', '2023-04-24 17:01:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `country_translations`
--

CREATE TABLE `country_translations` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `country_translations`
--

INSERT INTO `country_translations` (`id`, `country_id`, `name`, `lang`, `created_at`, `updated_at`) VALUES
(1, 1, 'السعودية', 'ar', '2023-04-24 19:09:03', '2023-04-24 19:09:03'),
(2, 1, 'Saudi Arabia', 'en', '2023-04-24 19:09:03', '2023-04-24 19:09:03');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `banner` int(11) DEFAULT NULL,
  `details` longtext NOT NULL,
  `discount` double(8,2) NOT NULL,
  `discount_type` varchar(100) NOT NULL,
  `start_date` int(15) NOT NULL,
  `end_date` int(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `shop_id`, `type`, `code`, `banner`, `details`, `discount`, `discount_type`, `start_date`, `end_date`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 6, 'product_base', '1020', 9, '[{\"product_id\":\"1\"}]', 20.00, 'percent', 1680901200, 1681246800, '2023-04-08 09:44:13', '2023-04-08 09:45:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupon_usages`
--

CREATE TABLE `coupon_usages` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `symbol` varchar(255) NOT NULL,
  `exchange_rate` double(10,5) NOT NULL,
  `status` int(10) NOT NULL DEFAULT 0,
  `code` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`, `exchange_rate`, `status`, `code`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'U.S. Dollar', '$', 1.00000, 1, 'USD', '2018-10-09 11:35:08', '2018-10-17 05:50:52', NULL),
(30, 'ريال سعودي', 'ريال', 3.75000, 1, 'SR', '2023-04-08 09:53:50', '2023-04-09 02:03:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `flag` varchar(10) DEFAULT NULL,
  `code` varchar(100) NOT NULL,
  `rtl` int(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `flag`, `code`, `rtl`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'English', 'en', 'en', 0, 1, '2019-01-20 12:13:20', '2019-01-20 12:13:20', NULL),
(7, 'Arabic', 'sa', 'ar', 1, 1, '2021-09-15 05:49:25', '2021-10-25 06:42:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `manual_payment_methods`
--

CREATE TABLE `manual_payment_methods` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `heading` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `bank_info` text DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `conversation_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 3),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 3),
(6, '2016_06_01_000004_create_oauth_clients_table', 3),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 3),
(8, '2021_10_27_093231_create_permission_tables', 3);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0b4f1be6c1bd83490a7661217e26a2f45f68a2d41006c2245665332028b4d0733f119cff758239cf', 71, 1, NULL, '[]', 0, '2023-04-09 09:01:45', '2023-04-09 09:01:45', '2024-04-09 12:01:45'),
('12ef109af5687fa0a95b5f168ca173520019b6c58ae588b3f5536fb9e10f802958e4d04deeae18a7', 74, 1, NULL, '[]', 0, '2023-04-09 03:32:29', '2023-04-09 03:32:29', '2024-04-09 06:32:29'),
('2526a4d3e9fced1be8dc7091b48c8b9370d13b75fdedd7566f699c4d785be6b204ff6672a98b654b', 2, 1, 'Personal Access Token', '[]', 0, '2023-06-22 23:44:01', '2023-06-22 16:44:01', '2025-05-22 19:44:01'),
('397c70380a5c78652b871242858b333b219629c3b6e11457c35ecb3053ce7d718e7adced9671895a', 78, 1, 'Personal Access Token', '[]', 0, '2023-04-24 00:44:34', '2023-04-24 00:44:34', '2025-03-24 03:44:34'),
('39fbadf2ad97f6fe2f84d7ff817a35d8403ee169c779c7ffed61195bc7f1ad0ad5e2bd867ed1fd89', 71, 1, 'Personal Access Token', '[]', 0, '2023-04-09 17:37:52', '2023-04-09 17:37:52', '2025-03-09 20:37:52'),
('3baa043d17134d2cd482a4c416e45eeed632b7c425ce9337e33823a5781f63476abab593149835b7', 81, 1, 'Personal Access Token', '[]', 0, '2023-05-24 19:11:22', '2023-05-24 12:11:22', '2025-04-23 15:11:22'),
('4a1e880126a997239d1e5951db5d61bba7b948a8bc110cc4c5620af54e8c3e3848333b2edafd88c6', 73, 1, 'Personal Access Token', '[]', 0, '2023-04-08 09:23:29', '2023-04-08 02:23:29', '2025-03-08 05:23:29'),
('56ed4e17d5be189df17ccfdd5b0d41e8f91d6262a084e6011c42d0298813dfea40bb6c1e023ba52f', 72, 1, 'Personal Access Token', '[]', 0, '2023-04-06 11:20:07', '2023-04-06 04:20:07', '2025-03-06 07:20:07'),
('5df3f0dc125e6b0cccb5266c665a128ec600d68125b34a60c3a3d085b67979438d6512ffe40fe56c', 81, 1, 'Personal Access Token', '[]', 0, '2023-04-27 11:37:29', '2023-04-27 04:37:29', '2025-03-27 07:37:29'),
('7a11062881c19349527b5d3c7a855d4fda78d871b05c82c2580fe001988cf6faa2fd6ad364368137', 81, 1, 'Personal Access Token', '[]', 0, '2023-05-07 14:30:19', '2023-05-07 07:30:19', '2025-04-06 10:30:19'),
('88e659104a1ea8bbd17a6f0ac3f9ca65f59cf81c3f7303e80c5dbcfb999eaa32aa872153050f75a7', 71, 1, NULL, '[]', 0, '2023-04-06 11:00:16', '2023-04-06 11:00:16', '2024-04-06 07:00:16'),
('96c91f6b0f372487cf162066544a9b1f191450635f36006000734b579c768f0fb71447c726206f54', 72, 1, NULL, '[]', 0, '2023-04-06 11:04:53', '2023-04-06 11:04:53', '2024-04-06 07:04:53'),
('b4f935263e319404387358ee1f1290a64502b317a590ac860e17238b26c0314531a4b00089bff7a2', 71, 1, 'Personal Access Token', '[]', 0, '2023-04-19 19:40:19', '2023-04-19 19:40:19', '2025-03-19 22:40:19'),
('c1a122261281f3070ed7fb18dd702cff3bac9fb42933bd41ce6ad716044a68f4faca23f9bd820554', 71, 1, NULL, '[]', 0, '2023-04-09 16:31:52', '2023-04-09 16:31:52', '2024-04-09 19:31:52'),
('d3af95c65738619e6c488c71f5617d5391946651d85ef51182bca4f9afe58a0d24a7421fa0e5d5cb', 71, 1, 'Personal Access Token', '[]', 0, '2023-04-09 17:37:57', '2023-04-09 17:37:57', '2025-03-09 20:37:57'),
('d3bc4e79200668c9c05a8335014fadd842c82afc6372152c3ae229927c07bf01b5a9651901db25e1', 78, 1, 'Personal Access Token', '[]', 0, '2023-04-23 23:16:26', '2023-04-23 23:16:27', '2025-03-24 02:16:27'),
('f81873e4a1629e3222296f8e188188c5827b06b678715b462c127db83f561b4efa2970f7abdbbe18', 71, 1, 'Personal Access Token', '[]', 0, '2023-04-09 21:16:51', '2023-04-09 21:16:51', '2025-03-10 00:16:51'),
('fe6ce372457de57459cf492513d6cca6deb54db444f976f34f53738f0c50a22549849ba1d3e7d88d', 71, 1, 'Personal Access Token', '[]', 0, '2023-04-20 02:08:28', '2023-04-20 02:08:28', '2025-03-20 05:08:28'),
('ffa483015dd71e4f4f994227978d804bb9d63abb857c06cc7b22edeb59a5750952295bb965ff554e', 72, 1, NULL, '[]', 0, '2023-04-06 11:02:10', '2023-04-06 11:02:10', '2024-04-06 07:02:10');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(191) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'The Shop Personal Access Client', 'vDrB9A0n0FNZwYPPvRtNjUItpRGG1CTTdGC5izif', NULL, 'http://localhost', 1, 0, 0, '2021-10-28 07:02:35', '2021-10-28 07:02:35'),
(2, NULL, 'The Shop Password Grant Client', '9EOpYdZQI7uIo68SyI2wBXflyNCzj9sVLwtxFWvb', 'users', 'http://localhost', 0, 1, 0, '2021-10-28 07:02:35', '2021-10-28 07:02:35');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-10-28 07:02:35', '2021-10-28 07:02:35');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `start_date` int(20) DEFAULT NULL,
  `end_date` int(20) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `banner` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `title`, `start_date`, `end_date`, `status`, `banner`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'عرض', 1680901200, 1682197140, 1, '8', 'عرض-ehjxw', '2023-04-08 09:16:14', '2023-04-08 09:16:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `offer_products`
--

CREATE TABLE `offer_products` (
  `id` int(11) NOT NULL,
  `offer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `combined_order_id` int(11) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `shipping_address` longtext DEFAULT NULL,
  `billing_address` longtext DEFAULT NULL,
  `shipping_cost` double(20,2) NOT NULL DEFAULT 0.00,
  `delivery_type` varchar(50) DEFAULT NULL,
  `delivery_status` varchar(50) DEFAULT 'order_placed',
  `payment_type` varchar(20) DEFAULT NULL,
  `manual_payment` int(1) NOT NULL DEFAULT 0,
  `manual_payment_data` text DEFAULT NULL,
  `payment_status` varchar(20) DEFAULT 'unpaid',
  `payment_details` longtext DEFAULT NULL,
  `grand_total` double(20,2) DEFAULT 0.00,
  `admin_commission` double(20,2) NOT NULL DEFAULT 0.00,
  `seller_earning` double(20,2) NOT NULL DEFAULT 0.00,
  `commission_percentage` double(20,2) DEFAULT 0.00,
  `coupon_code` varchar(255) DEFAULT NULL,
  `coupon_discount` double(20,2) NOT NULL DEFAULT 0.00,
  `commission_calculated` tinyint(4) NOT NULL DEFAULT 0,
  `refund_status` varchar(50) DEFAULT NULL COMMENT 'null, fully_refunded, partially_refunded',
  `refund_amount` double(20,2) DEFAULT 0.00,
  `courier_name` varchar(255) DEFAULT NULL,
  `tracking_number` varchar(255) DEFAULT NULL,
  `tracking_url` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `shop_id`, `combined_order_id`, `code`, `shipping_address`, `billing_address`, `shipping_cost`, `delivery_type`, `delivery_status`, `payment_type`, `manual_payment`, `manual_payment_data`, `payment_status`, `payment_details`, `grand_total`, `admin_commission`, `seller_earning`, `commission_percentage`, `coupon_code`, `coupon_discount`, `commission_calculated`, `refund_status`, `refund_amount`, `courier_name`, `tracking_number`, `tracking_url`, `created_at`, `updated_at`, `deleted_at`) VALUES
(101, 2, 6, 135, '1', '{\"id\":4,\"user_id\":2,\"address\":\"dsa\",\"country\":\"Saudi Arabia\",\"country_id\":1,\"state\":\"Makkah\",\"state_id\":2,\"city\":\"Jeddah\",\"city_id\":18,\"postal_code\":\"213312\",\"phone\":\"3213213\",\"default_shipping\":0,\"default_billing\":0,\"created_at\":\"2023-04-25T23:38:15.000000Z\",\"updated_at\":\"2023-04-25T23:38:15.000000Z\",\"deleted_at\":null}', '{\"id\":4,\"user_id\":2,\"address\":\"dsa\",\"country\":\"Saudi Arabia\",\"country_id\":1,\"state\":\"Makkah\",\"state_id\":2,\"city\":\"Jeddah\",\"city_id\":18,\"postal_code\":\"213312\",\"phone\":\"3213213\",\"default_shipping\":0,\"default_billing\":0,\"created_at\":\"2023-04-25T23:38:15.000000Z\",\"updated_at\":\"2023-04-25T23:38:15.000000Z\",\"deleted_at\":null}', 15.00, 'standard', 'order_placed', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 331.25, 0.00, 331.25, 0.00, NULL, 0.00, 0, NULL, 0.00, NULL, NULL, NULL, '2023-04-25 23:52:14', '2023-04-25 23:52:16', NULL),
(102, 81, 6, 136, '1', '{\"id\":5,\"user_id\":\"81\",\"address\":\"\\u062c\\u062f\\u0647 \\u0627\\u0644\\u062d\\u0645\\u062c\\u0627\\u0646\\u064a\\u0629\",\"country\":\"Saudi Arabia\",\"country_id\":\"1\",\"state\":\"Makkah\",\"state_id\":\"2\",\"city\":\"Jeddah\",\"city_id\":\"18\",\"postal_code\":\"12520\",\"phone\":\"0509617973\",\"default_shipping\":\"1\",\"default_billing\":\"1\",\"created_at\":\"2023-04-27T04:38:21.000000Z\",\"updated_at\":\"2023-04-27T04:38:21.000000Z\",\"deleted_at\":null}', '{\"id\":5,\"user_id\":\"81\",\"address\":\"\\u062c\\u062f\\u0647 \\u0627\\u0644\\u062d\\u0645\\u062c\\u0627\\u0646\\u064a\\u0629\",\"country\":\"Saudi Arabia\",\"country_id\":\"1\",\"state\":\"Makkah\",\"state_id\":\"2\",\"city\":\"Jeddah\",\"city_id\":\"18\",\"postal_code\":\"12520\",\"phone\":\"0509617973\",\"default_shipping\":\"1\",\"default_billing\":\"1\",\"created_at\":\"2023-04-27T04:38:21.000000Z\",\"updated_at\":\"2023-04-27T04:38:21.000000Z\",\"deleted_at\":null}', 15.00, 'standard', 'order_placed', 'mada', 0, NULL, 'unpaid', NULL, 135.75, 0.00, 135.75, 0.00, NULL, 0.00, 0, NULL, 0.00, NULL, NULL, NULL, '2023-04-27 11:39:00', '2023-04-27 11:39:01', NULL),
(103, 81, 6, 137, '1', '{\"id\":5,\"user_id\":\"81\",\"address\":\"\\u062c\\u062f\\u0647 \\u0627\\u0644\\u062d\\u0645\\u062c\\u0627\\u0646\\u064a\\u0629\",\"country\":\"Saudi Arabia\",\"country_id\":\"1\",\"state\":\"Makkah\",\"state_id\":\"2\",\"city\":\"Jeddah\",\"city_id\":\"18\",\"postal_code\":\"12520\",\"phone\":\"0509617973\",\"default_shipping\":\"1\",\"default_billing\":\"1\",\"created_at\":\"2023-04-27T04:38:21.000000Z\",\"updated_at\":\"2023-04-27T04:38:21.000000Z\",\"deleted_at\":null}', '{\"id\":5,\"user_id\":\"81\",\"address\":\"\\u062c\\u062f\\u0647 \\u0627\\u0644\\u062d\\u0645\\u062c\\u0627\\u0646\\u064a\\u0629\",\"country\":\"Saudi Arabia\",\"country_id\":\"1\",\"state\":\"Makkah\",\"state_id\":\"2\",\"city\":\"Jeddah\",\"city_id\":\"18\",\"postal_code\":\"12520\",\"phone\":\"0509617973\",\"default_shipping\":\"1\",\"default_billing\":\"1\",\"created_at\":\"2023-04-27T04:38:21.000000Z\",\"updated_at\":\"2023-04-27T04:38:21.000000Z\",\"deleted_at\":null}', 15.00, 'standard', 'order_placed', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 127.50, 0.00, 127.50, 0.00, NULL, 0.00, 0, NULL, 0.00, NULL, NULL, NULL, '2023-04-27 11:40:15', '2023-04-27 11:40:16', NULL),
(104, 81, 6, 138, '1', '{\"id\":5,\"user_id\":\"81\",\"address\":\"\\u062c\\u062f\\u0647 \\u0627\\u0644\\u062d\\u0645\\u062c\\u0627\\u0646\\u064a\\u0629\",\"country\":\"Saudi Arabia\",\"country_id\":\"1\",\"state\":\"Makkah\",\"state_id\":\"2\",\"city\":\"Jeddah\",\"city_id\":\"18\",\"postal_code\":\"12520\",\"phone\":\"0509617973\",\"default_shipping\":\"1\",\"default_billing\":\"1\",\"created_at\":\"2023-04-27T04:38:21.000000Z\",\"updated_at\":\"2023-04-27T04:38:21.000000Z\",\"deleted_at\":null}', '{\"id\":5,\"user_id\":\"81\",\"address\":\"\\u062c\\u062f\\u0647 \\u0627\\u0644\\u062d\\u0645\\u062c\\u0627\\u0646\\u064a\\u0629\",\"country\":\"Saudi Arabia\",\"country_id\":\"1\",\"state\":\"Makkah\",\"state_id\":\"2\",\"city\":\"Jeddah\",\"city_id\":\"18\",\"postal_code\":\"12520\",\"phone\":\"0509617973\",\"default_shipping\":\"1\",\"default_billing\":\"1\",\"created_at\":\"2023-04-27T04:38:21.000000Z\",\"updated_at\":\"2023-04-27T04:38:21.000000Z\",\"deleted_at\":null}', 15.00, 'standard', 'order_placed', 'mada', 0, NULL, 'unpaid', NULL, 171.49, 0.00, 171.49, 0.00, NULL, 0.00, 0, NULL, 0.00, NULL, NULL, NULL, '2023-04-27 11:52:54', '2023-04-27 11:52:55', NULL),
(105, 81, 6, 139, '1', '{\"id\":5,\"user_id\":\"81\",\"address\":\"\\u062c\\u062f\\u0647 \\u0627\\u0644\\u062d\\u0645\\u062c\\u0627\\u0646\\u064a\\u0629\",\"country\":\"Saudi Arabia\",\"country_id\":\"1\",\"state\":\"Makkah\",\"state_id\":\"2\",\"city\":\"Jeddah\",\"city_id\":\"18\",\"postal_code\":\"12520\",\"phone\":\"0509617973\",\"default_shipping\":\"1\",\"default_billing\":\"1\",\"created_at\":\"2023-04-27T04:38:21.000000Z\",\"updated_at\":\"2023-04-27T04:38:21.000000Z\",\"deleted_at\":null}', '{\"id\":5,\"user_id\":\"81\",\"address\":\"\\u062c\\u062f\\u0647 \\u0627\\u0644\\u062d\\u0645\\u062c\\u0627\\u0646\\u064a\\u0629\",\"country\":\"Saudi Arabia\",\"country_id\":\"1\",\"state\":\"Makkah\",\"state_id\":\"2\",\"city\":\"Jeddah\",\"city_id\":\"18\",\"postal_code\":\"12520\",\"phone\":\"0509617973\",\"default_shipping\":\"1\",\"default_billing\":\"1\",\"created_at\":\"2023-04-27T04:38:21.000000Z\",\"updated_at\":\"2023-04-27T04:38:21.000000Z\",\"deleted_at\":null}', 15.00, 'standard', 'confirmed', 'cash_on_delivery', 0, NULL, 'paid', NULL, 141.50, 0.00, 141.50, 0.00, NULL, 0.00, 1, NULL, 0.00, NULL, NULL, NULL, '2023-04-27 11:53:53', '2023-04-28 03:30:47', NULL),
(106, 81, 6, 140, '1', '{\"id\":5,\"user_id\":\"81\",\"address\":\"\\u062c\\u062f\\u0647 \\u0627\\u0644\\u062d\\u0645\\u062c\\u0627\\u0646\\u064a\\u0629\",\"country\":\"Saudi Arabia\",\"country_id\":\"1\",\"state\":\"Makkah\",\"state_id\":\"2\",\"city\":\"Jeddah\",\"city_id\":\"18\",\"postal_code\":\"12520\",\"phone\":\"0509617973\",\"default_shipping\":\"1\",\"default_billing\":\"1\",\"created_at\":\"2023-04-27T04:38:21.000000Z\",\"updated_at\":\"2023-04-27T04:38:21.000000Z\",\"deleted_at\":null}', '{\"id\":5,\"user_id\":\"81\",\"address\":\"\\u062c\\u062f\\u0647 \\u0627\\u0644\\u062d\\u0645\\u062c\\u0627\\u0646\\u064a\\u0629\",\"country\":\"Saudi Arabia\",\"country_id\":\"1\",\"state\":\"Makkah\",\"state_id\":\"2\",\"city\":\"Jeddah\",\"city_id\":\"18\",\"postal_code\":\"12520\",\"phone\":\"0509617973\",\"default_shipping\":\"1\",\"default_billing\":\"1\",\"created_at\":\"2023-04-27T04:38:21.000000Z\",\"updated_at\":\"2023-04-27T04:38:21.000000Z\",\"deleted_at\":null}', 15.00, 'standard', 'order_placed', 'mada', 0, NULL, 'unpaid', NULL, 142.97, 0.00, 142.97, 0.00, NULL, 0.00, 0, NULL, 0.00, NULL, NULL, NULL, '2023-05-07 14:31:08', '2023-05-07 14:31:09', NULL),
(107, 81, 6, 141, '1', '{\"id\":5,\"user_id\":\"81\",\"address\":\"\\u062c\\u062f\\u0647 \\u0627\\u0644\\u062d\\u0645\\u062c\\u0627\\u0646\\u064a\\u0629\",\"country\":\"Saudi Arabia\",\"country_id\":\"1\",\"state\":\"Makkah\",\"state_id\":\"2\",\"city\":\"Jeddah\",\"city_id\":\"18\",\"postal_code\":\"12520\",\"phone\":\"0509617973\",\"default_shipping\":\"1\",\"default_billing\":\"1\",\"created_at\":\"2023-04-27T04:38:21.000000Z\",\"updated_at\":\"2023-04-27T04:38:21.000000Z\",\"deleted_at\":null}', '{\"id\":5,\"user_id\":\"81\",\"address\":\"\\u062c\\u062f\\u0647 \\u0627\\u0644\\u062d\\u0645\\u062c\\u0627\\u0646\\u064a\\u0629\",\"country\":\"Saudi Arabia\",\"country_id\":\"1\",\"state\":\"Makkah\",\"state_id\":\"2\",\"city\":\"Jeddah\",\"city_id\":\"18\",\"postal_code\":\"12520\",\"phone\":\"0509617973\",\"default_shipping\":\"1\",\"default_billing\":\"1\",\"created_at\":\"2023-04-27T04:38:21.000000Z\",\"updated_at\":\"2023-04-27T04:38:21.000000Z\",\"deleted_at\":null}', 15.00, 'standard', 'order_placed', 'cash_on_delivery', 0, NULL, 'unpaid', NULL, 148.49, 0.00, 148.49, 0.00, NULL, 0.00, 0, NULL, 0.00, NULL, NULL, NULL, '2023-05-24 19:12:47', '2023-05-24 19:12:48', NULL),
(108, 2, 6, 142, '1', '{\"id\":4,\"user_id\":\"2\",\"address\":\"dsa\",\"country\":\"Saudi Arabia\",\"country_id\":\"1\",\"state\":\"Makkah\",\"state_id\":\"2\",\"city\":\"Jeddah\",\"city_id\":\"18\",\"postal_code\":\"213312\",\"phone\":\"3213213\",\"default_shipping\":\"0\",\"default_billing\":\"0\",\"created_at\":\"2023-04-25T16:38:15.000000Z\",\"updated_at\":\"2023-04-25T16:38:15.000000Z\",\"deleted_at\":null}', '{\"id\":4,\"user_id\":\"2\",\"address\":\"dsa\",\"country\":\"Saudi Arabia\",\"country_id\":\"1\",\"state\":\"Makkah\",\"state_id\":\"2\",\"city\":\"Jeddah\",\"city_id\":\"18\",\"postal_code\":\"213312\",\"phone\":\"3213213\",\"default_shipping\":\"0\",\"default_billing\":\"0\",\"created_at\":\"2023-04-25T16:38:15.000000Z\",\"updated_at\":\"2023-04-25T16:38:15.000000Z\",\"deleted_at\":null}', 15.00, 'standard', 'order_placed', 'mada', 0, NULL, 'unpaid', NULL, 256.50, 0.00, 256.50, 0.00, NULL, 0.00, 0, NULL, 0.00, NULL, NULL, NULL, '2023-06-22 23:44:16', '2023-06-22 23:44:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `product_variation_id` int(20) DEFAULT NULL,
  `price` double(20,2) DEFAULT 0.00,
  `tax` double(20,2) NOT NULL DEFAULT 0.00,
  `total` double(20,2) NOT NULL DEFAULT 0.00,
  `quantity` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_variation_id`, `price`, `tax`, `total`, `quantity`, `created_at`, `updated_at`, `deleted_at`) VALUES
(112, 101, 3, 3, 55.00, 8.25, 316.25, 5, '2023-04-25 23:52:15', '2023-04-25 23:52:15', NULL),
(113, 102, 2, 2, 35.00, 5.25, 120.75, 3, '2023-04-27 11:39:00', '2023-04-27 11:39:00', NULL),
(114, 103, 10, 10, 32.61, 4.89, 112.50, 3, '2023-04-27 11:40:15', '2023-04-27 11:40:15', NULL),
(115, 104, 8, 8, 26.08, 3.91, 29.99, 1, '2023-04-27 11:52:54', '2023-04-27 11:52:54', NULL),
(116, 104, 3, 3, 55.00, 8.25, 126.50, 2, '2023-04-27 11:52:54', '2023-04-27 11:52:54', NULL),
(117, 105, 3, 3, 55.00, 8.25, 126.50, 2, '2023-04-27 11:53:53', '2023-04-27 11:53:53', NULL),
(118, 106, 18, 16, 27.82, 4.17, 31.99, 1, '2023-05-07 14:31:08', '2023-05-07 14:31:08', NULL),
(119, 106, 18, 16, 27.82, 4.17, 95.98, 3, '2023-05-07 14:31:08', '2023-05-07 14:31:08', NULL),
(120, 107, 16, 14, 30.00, 4.50, 103.50, 3, '2023-05-24 19:12:47', '2023-05-24 19:12:47', NULL),
(121, 107, 8, 8, 26.08, 3.91, 29.99, 1, '2023-05-24 19:12:47', '2023-05-24 19:12:47', NULL),
(122, 108, 25, 23, 30.00, 4.50, 241.50, 7, '2023-06-22 23:44:16', '2023-06-22 23:44:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_updates`
--

CREATE TABLE `order_updates` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_updates`
--

INSERT INTO `order_updates` (`id`, `order_id`, `user_id`, `note`, `created_at`, `updated_at`) VALUES
(111, 101, 2, 'Order has been placed.', '2023-04-25 23:52:16', '2023-04-25 23:52:16'),
(112, 102, 81, 'Order has been placed.', '2023-04-27 11:39:01', '2023-04-27 11:39:01'),
(113, 103, 81, 'Order has been placed.', '2023-04-27 11:40:16', '2023-04-27 11:40:16'),
(114, 104, 81, 'Order has been placed.', '2023-04-27 11:52:55', '2023-04-27 11:52:55'),
(115, 105, 81, 'Order has been placed.', '2023-04-27 11:53:54', '2023-04-27 11:53:54'),
(116, 105, 1, 'Payment status updated to paid.', '2023-04-28 03:30:39', '2023-04-28 03:30:39'),
(117, 105, 1, 'Order status updated to confirmed.', '2023-04-28 03:30:47', '2023-04-28 03:30:47'),
(118, 106, 81, 'Order has been placed.', '2023-05-07 14:31:09', '2023-05-07 14:31:09'),
(119, 107, 81, 'Order has been placed.', '2023-05-24 19:12:48', '2023-05-24 19:12:48'),
(120, 108, 2, 'Order has been placed.', '2023-06-22 23:44:17', '2023-06-22 23:44:17');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `meta_title` text DEFAULT NULL,
  `meta_description` varchar(1000) DEFAULT NULL,
  `keywords` varchar(1000) DEFAULT NULL,
  `meta_image` int(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `type`, `title`, `slug`, `content`, `meta_title`, `meta_description`, `keywords`, `meta_image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'home_page', 'Home Page', 'home', NULL, NULL, NULL, NULL, NULL, '2020-11-04 10:13:20', '2020-11-04 10:13:20', NULL),
(2, 'return_policy', 'Return Policy', 'return-policy', NULL, NULL, NULL, NULL, NULL, '2020-11-04 10:14:41', '2021-11-18 15:58:46', NULL),
(3, 'warranty_policy', 'Warranty Policy', 'warranty-policy', NULL, NULL, NULL, NULL, NULL, '2020-11-04 10:14:41', '2021-11-07 02:51:21', NULL),
(4, 'terms_conditions', 'Term and Conditions', 'terms-and-conditions', NULL, NULL, NULL, NULL, NULL, '2020-11-04 10:14:59', '2021-10-06 07:02:54', NULL),
(5, 'privacy_policy', 'Privacy Policy', 'privacy-policy', 'Privacy Policy', NULL, NULL, NULL, NULL, '2020-11-04 10:15:29', '2023-04-08 10:18:31', NULL),
(7, 'custom_page', 'About Us', 'about-us', NULL, 'About us', NULL, NULL, NULL, '2021-04-13 03:44:16', '2021-11-18 16:02:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `page_translations`
--

CREATE TABLE `page_translations` (
  `id` bigint(20) NOT NULL,
  `page_id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `lang` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `page_translations`
--

INSERT INTO `page_translations` (`id`, `page_id`, `title`, `content`, `lang`, `created_at`, `updated_at`) VALUES
(1, 5, 'Privacy Policy', 'Privacy Policy', 'en', '2023-04-08 10:18:31', '2023-04-08 10:18:31');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `parent` varchar(255) DEFAULT NULL,
  `guard_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `parent`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'show_staff_roles', 'role', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(2, 'add_staff_roles', 'role', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(3, 'edit_staff_roles', 'role', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(4, 'delete_staff_roles', 'role', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(5, 'show_staffs', 'staff', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(6, 'add_staffs', 'staff', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(7, 'edit_staffs', 'staff', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(8, 'delete_staffs', 'staff', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(9, 'show_dashboard', 'dashboard', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(10, 'show_products', 'product', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(11, 'add_products', 'product', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(12, 'edit_products', 'product', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(13, 'duplicate_products', 'product', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(14, 'delete_products', 'product', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(15, 'show_categories', 'category', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(16, 'add_categories', 'category', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(17, 'edit_categories', 'category', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(18, 'delete_categories', 'category', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(19, 'show_brands', 'brand', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(20, 'add_brands', 'brand', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(22, 'edit_brands', 'brand', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(23, 'delete_brands', 'brand', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(24, 'show_attributes', 'attribute', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(25, 'add_attributes', 'attribute', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(26, 'configure_attributes', 'attribute', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(27, 'edit_attributes', 'attribute', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(28, 'show_reviews', 'review', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(29, 'show_orders', 'order', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(30, 'view_orders', 'order', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(31, 'invoice_download', 'order', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(32, 'delete_orders', 'order', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(33, 'show_customers', 'customer', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(34, 'delete_customers', 'customer', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(35, 'show_offers', 'offer', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(36, 'add_offers', 'offer', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(37, 'edit_offers', 'offer', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(38, 'delete_offers', 'offer', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(39, 'send_newsletters', 'newsletter', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(40, 'show_subscribers', 'subscriber', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(41, 'show_coupons', 'coupon', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(42, 'add_coupons', 'coupon', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(43, 'edit_coupons', 'coupon', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(44, 'delete_coupons', 'coupon', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(45, 'show_uploaded_files', 'uploaded file', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(46, 'show_chats', 'chat', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(47, 'website_setup', 'website setup', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(48, 'show_general_setting', 'setting', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(49, 'show_languages', 'setting', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(50, 'add_languages', 'setting', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(51, 'edit_languages', 'setting', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(52, 'delete_languages', 'setting', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(53, 'show_currencies', 'setting', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(54, 'add_currencies', 'setting', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(55, 'edit_currencies', 'setting', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(56, 'smtp_setting', 'setting', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(57, 'payment_method', 'setting', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(58, 'file_system', 'setting', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(59, 'social_media_login', 'setting', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(60, 'third_party_setting', 'setting', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(61, 'shipping_configuration', 'setting', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(62, 'show_taxes', 'setting', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(63, 'add_taxes', 'setting', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(64, 'edit_taxes', 'setting', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(65, 'delete_taxes', 'setting', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(66, 'system_update', 'system', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(67, 'server_status', 'system', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(68, 'show_addons', 'addon', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(69, 'show_messages', 'chat', 'web', '2021-10-26 22:36:42', '2021-10-26 22:36:42'),
(70, 'show_seller_products', 'multivendor', 'web', NULL, '2022-10-17 12:29:03'),
(71, 'show_seller_orders', 'multivendor', 'web', NULL, '2022-10-17 12:29:03'),
(72, 'show_sellers', 'multivendor', 'web', NULL, '2022-10-17 12:29:03'),
(73, 'show_payouts', 'multivendor', 'web', NULL, '2022-10-17 12:29:03'),
(74, 'show_payout_requests', 'multivendor', 'web', NULL, '2022-10-17 12:29:03'),
(75, 'show_commission_log', 'multivendor', 'web', NULL, '2022-10-17 12:29:03'),
(76, 'show_seller_packages', 'multivendor', 'web', NULL, '2022-10-17 12:29:03'),
(77, 'show_seller_package_payments', 'multivendor', 'web', NULL, '2022-10-17 12:29:03'),
(78, 'show_shop_setting', 'multivendor', 'web', NULL, '2022-10-17 12:29:03'),
(79, 'show_refund_requests', 'refund', 'web', NULL, '2022-10-17 12:29:03'),
(80, 'show_refund_settings', 'refund', 'web', NULL, '2022-10-17 12:29:03'),
(81, 'product_query', 'product_query', 'web', NULL, '2022-10-17 12:29:03'),
(82, 'pos_manager', 'pos', 'web', '2022-06-21 23:02:50', '2022-06-21 23:02:50'),
(83, 'pos_configuration', 'pos', 'web', '2022-06-21 23:02:50', '2022-06-21 23:02:50'),
(84, 'view_all_blogs', 'blog', 'web', '2022-06-21 23:02:50', '2022-06-21 23:02:50'),
(85, 'add_blog', 'blog', 'web', '2022-06-21 23:02:50', '2022-06-21 23:02:50'),
(86, 'edit_blog', 'blog', 'web', '2022-06-21 23:02:50', '2022-06-21 23:02:50'),
(87, 'delete_blog', 'blog', 'web', '2022-06-21 23:02:50', '2022-06-21 23:02:50'),
(88, 'publish_blog', 'blog', 'web', '2022-06-21 23:02:50', '2022-06-21 23:02:50'),
(89, 'view_blog_categories', 'blog', 'web', '2022-06-21 23:02:50', '2022-06-21 23:02:50'),
(90, 'add_blog_category', 'blog', 'web', '2022-06-21 23:02:50', '2022-06-21 23:02:50'),
(91, 'edit_blog_category', 'blog', 'web', '2022-06-21 23:02:50', '2022-06-21 23:02:50'),
(92, 'delete_blog_category', 'blog', 'web', '2022-06-21 23:02:50', '2022-06-21 23:02:50'),
(93, 'sms_settings', 'setting', 'web', '2022-06-21 23:02:50', '2022-06-21 23:02:50'),
(94, 'view_all_manual_payment_methods', 'offline_payment', 'web', '2022-06-21 23:02:50', '2022-06-21 23:02:50'),
(95, 'add_manual_payment_method', 'offline_payment', 'web', '2022-06-21 23:03:25', '2022-06-21 23:03:25'),
(96, 'edit_manual_payment_method', 'offline_payment', 'web', '2022-06-21 23:03:56', '2022-06-21 23:03:56'),
(97, 'delete_manual_payment_method', 'offline_payment', 'web', '2022-06-21 23:04:10', '2022-06-21 23:04:10'),
(98, 'view_all_offline_wallet_recharges', 'offline_payment', 'web', '2022-06-21 23:09:09', '2022-06-21 23:09:09'),
(99, 'approve_offline_wallet_recharge', 'offline_payment', 'web', '2022-06-21 23:11:29', '2022-06-21 23:11:29'),
(100, 'view_all_offline_seller_package_payments', 'offline_payment', 'web', '2022-06-21 23:14:02', '2022-06-21 23:14:02'),
(101, 'approve_offline_seller_package_payment', 'offline_payment', 'web', '2022-06-21 23:14:29', '2022-06-21 23:14:29');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) NOT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `name` varchar(200) NOT NULL,
  `brand_id` bigint(20) DEFAULT NULL,
  `photos` varchar(2000) DEFAULT NULL,
  `thumbnail_img` varchar(100) DEFAULT NULL,
  `tags` mediumtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `lowest_price` double(20,2) NOT NULL DEFAULT 0.00,
  `highest_price` double(20,2) NOT NULL DEFAULT 0.00,
  `discount` double(20,2) NOT NULL DEFAULT 0.00,
  `discount_type` varchar(10) NOT NULL DEFAULT 'flat',
  `discount_start_date` int(20) DEFAULT NULL,
  `discount_end_date` int(20) DEFAULT NULL,
  `stock` tinyint(1) NOT NULL DEFAULT 1,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `unit` varchar(20) DEFAULT NULL,
  `min_qty` int(11) NOT NULL DEFAULT 1,
  `max_qty` int(11) NOT NULL DEFAULT 0,
  `is_variant` tinyint(1) NOT NULL DEFAULT 0,
  `has_warranty` tinyint(1) NOT NULL DEFAULT 0,
  `tax` mediumtext DEFAULT NULL,
  `standard_delivery_time` int(11) NOT NULL DEFAULT 24,
  `express_delivery_time` int(11) NOT NULL DEFAULT 24,
  `weight` double(20,2) NOT NULL DEFAULT 0.00,
  `height` double(20,2) NOT NULL DEFAULT 0.00,
  `length` double(20,2) NOT NULL DEFAULT 0.00,
  `width` double(20,2) NOT NULL DEFAULT 0.00,
  `meta_title` mediumtext DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL,
  `meta_image` int(20) DEFAULT NULL,
  `slug` mediumtext NOT NULL,
  `rating` double(8,2) NOT NULL DEFAULT 0.00,
  `num_of_sale` int(20) NOT NULL DEFAULT 0,
  `earn_point` double(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `shop_id`, `name`, `brand_id`, `photos`, `thumbnail_img`, `tags`, `description`, `lowest_price`, `highest_price`, `discount`, `discount_type`, `discount_start_date`, `discount_end_date`, `stock`, `published`, `unit`, `min_qty`, `max_qty`, `is_variant`, `has_warranty`, `tax`, `standard_delivery_time`, `express_delivery_time`, `weight`, `height`, `length`, `width`, `meta_title`, `meta_description`, `meta_image`, `slug`, `rating`, `num_of_sale`, `earn_point`, `created_at`, `updated_at`, `deleted_at`) VALUES
(7, 6, 'شاي أخضر', NULL, '46,39', '39', 'شاي,اخضر,تركيا,بهارات,قرنفلة', '<p><b>يعتبر الشاي الأخضر منتجاً طبيعياً وصحياً يتميز بنكهته المميزة وفوائده الصحية العديدة. يتم جمع أوراق الشاي الأخضر من المزارع العضوية المختارة بعناية، ويتم تجفيفها بطريقة خاصة للحفاظ على النكهة والفوائد الغذائية.</b></p><p><b><br></b></p><p><b>يحتوي الشاي الأخضر على العديد من المركبات النباتية المفيدة للجسم، مثل الكاتيكينات والبوليفينولات والأحماض الأمينية. يعتبر هذا الشاي مضاداً للأكسدة الطبيعي القوي الذي يساعد في مكافحة الجذور الحرة التي تسبب تلفاً في الخلايا وتساعد في الحفاظ على صحة القلب والأوعية الدموية وخفض مستوى الكوليسترول في الدم.</b></p><p><b><br></b></p><p><b>بالإضافة إلى فوائده الصحية، يتمتع الشاي الأخضر بنكهة منعشة ومناسبة للشرب في أي وقت من اليوم. ويمكن تقديمه ساخناً أو بارداً، ويتميز بقدرته على تحسين الهضم والتخلص من السموم في الجسم.</b></p><p><b><br></b></p><p><b>يقدم متجر قرنفلة مع الشاي الأخضر مجموعة واسعة من المنتجات بتشكيلة متنوعة من النكهات المختلفة لتناسب جميع الأذواق. وتتميز هذه المنتجات بجودتها العالية والنكهة الفريدة التي لا يمكن الحصول عليها من أي نوع آخر من الشاي.</b></p><p><b><br></b></p><p><b>باختصار، يعد الشاي الأخضر منتجاً صحياً ولذيذاً يتمتع بفوائد صحية عديدة ونكهة منعشة، ويتوفر بتشكيلة واسعة من المنتجات التي تناسب جميع الأذواق</b></p>', 26.08, 26.08, 0.00, 'flat', NULL, NULL, 1, 1, '250gr', 1, 0, 0, 0, NULL, 192, 120, 0.00, 0.00, 0.00, 0.00, 'شاي اخضر', 'يعتبر الشاي الأخضر منتجاً طبيعياً وصحياً يتميز بنكهته المميزة وفوائده الصحية العديدة. يتم جمع أوراق الشاي الأخضر من المزارع العضوية المختارة بعناية، ويتم تجفيفها بطريقة خاصة للحفاظ على النكهة والفوائد الغذائية.يحتوي الشاي الأخضر على العديد من المركبات النباتية المفيدة للجسم، مثل الكاتيكينات والبوليفينولات والأحماض الأمينية. يعتبر هذا الشاي مضاداً للأكسدة الطبيعي القوي الذي يساعد في مكافحة الجذور الحرة التي تسبب تلفاً في الخلايا وتساعد في الحفاظ على صحة القلب والأوعية الدموية وخفض مستوى الكوليسترول في الدم.بالإضافة إلى فوائده الصحية، يتمتع الشاي الأخضر بنكهة منعشة ومناسبة للشرب في أي وقت من اليوم. ويمكن تقديمه ساخناً أو بارداً، ويتميز بقدرته على تحسين الهضم والتخلص من السموم في الجسم.يقدم متجر قرنفلة مع الشاي الأخضر مجموعة واسعة من المنتجات بتشكيلة متنوعة من النكهات المختلفة لتناسب جميع الأذواق. وتتميز هذه المنتجات بجودتها العالية والنكهة الفريدة التي لا يمكن الحصول عليها من أي نوع آخر من الشاي.باختصار، يعد الشاي الأخضر منتجاً صحياً ولذيذاً يتمتع بفوائد صحية عديدة ونكهة منعشة، ويتوفر بتشكيلة واسعة من المنتجات التي تناسب جميع الأذواق', 39, 'shay-akhdr-lb0od', 0.00, 0, 0.00, '2023-04-14 20:54:14', '2023-04-28 06:13:43', NULL),
(8, 6, 'شاي عثماني', NULL, '28', '28', 'شاي,عثماني,تركيا,بهارات,قرنفلة', '<p><b>تقدم منتجات الشاي العثماني تجربة شاي لا مثيل لها، حيث يتم تحضير الشاي بأفضل المكونات والتوابل الطبيعية لضمان الحصول على مذاق رائع وعطري. يتم تجفيف الأوراق بعناية ويتم اختيارها بعناية من المناطق المثالية لزراعة الشاي، لتكون النتيجة شاي ذو جودة عالية ومتميز بالنكهة الفريدة.</b></p><p><b><br></b></p><p><b>يقدم متجر قرنفلة مجموعة متنوعة من المنتجات بما في ذلك شاي الأعشاب والشاي الأسود والأخضر والشاي المميز بنكهة الفواكه. كما تتوفر المجموعة بتصاميم عصرية وأنيقة لتناسب جميع الأذواق والمناسبات.</b></p><p><b><br></b></p><p><b>يتم تغليف المنتجات بأكياس محكمة للحفاظ على الجودة والنكهة الطازجة. وبفضل السهولة في التحضير، يمكن للمستهلكين الاستمتاع بشاي العثماني في أي وقت وفي أي مكان.</b></p><p><b><br></b></p><p><b>باختصار، فإن منتجات الشاي العثماني توفر للمستهلكين تجربة شاي فريدة وذات جودة عالية، وتتوفر بتشكيلة واسعة من الأصناف والتصاميم لتناسب جميع الأذواق والمناسبات</b></p>', 26.08, 26.08, 0.00, 'flat', NULL, NULL, 1, 1, '250gr', 1, 0, 0, 0, NULL, 192, 96, 0.00, 0.00, 0.00, 0.00, 'شاي عثماني', 'تقدم منتجات الشاي العثماني تجربة شاي لا مثيل لها، حيث يتم تحضير الشاي بأفضل المكونات والتوابل الطبيعية لضمان الحصول على مذاق رائع وعطري. يتم تجفيف الأوراق بعناية ويتم اختيارها بعناية من المناطق المثالية لزراعة الشاي، لتكون النتيجة شاي ذو جودة عالية ومتميز بالنكهة الفريدة.يقدم متجر قرنفلة مجموعة متنوعة من المنتجات بما في ذلك شاي الأعشاب والشاي الأسود والأخضر والشاي المميز بنكهة الفواكه. كما تتوفر المجموعة بتصاميم عصرية وأنيقة لتناسب جميع الأذواق والمناسبات.يتم تغليف المنتجات بأكياس محكمة للحفاظ على الجودة والنكهة الطازجة. وبفضل السهولة في التحضير، يمكن للمستهلكين الاستمتاع بشاي العثماني في أي وقت وفي أي مكان.باختصار، فإن منتجات الشاي العثماني توفر للمستهلكين تجربة شاي فريدة وذات جودة عالية، وتتوفر بتشكيلة واسعة من الأصناف والتصاميم لتناسب جميع الأذواق والمناسبات', 28, 'shay-aathmany-6dazg', 0.00, 2, 0.00, '2023-04-19 21:38:11', '2023-05-24 19:12:47', NULL),
(10, 6, 'شاي الشتاء', NULL, '23', '23', 'شاي,عطارة,تركيا,قرنفلة,بهارات,جدة', '<p>شاي الشتاء هو منتج شاي رائع  ينحدر من الشاي العثماني ويتميز بمذاق دافئ ومنعش يناسب فصل الشتاء والأجواء الباردة. يتم تحضيره من مزيج من الأعشاب والتوابل المميزة مثل الزنجبيل والقرفة والهيل واليانسون وغيرها، مع إضافة الشاي الأسود النقي لتعزيز النكهة والرائحة.\r\n</p><p>يعتبر شاي الشتاء مشروبًا مثاليًا للاستمتاع به في فصل الشتاء، حيث يوفر الدفء والراحة للجسم والنفس، ويمكن تناوله في أي وقت من اليوم سواء في الصباح أو المساء أو قبل النوم. كما أنه يحتوي على خصائص صحية عديدة، حيث يساعد في تقوية جهاز المناعة وتحسين الهضم وتخفيف الصداع والتهاب الحلق والسعال.\r\n</p><p>يأتي شاي الشتاء عادة في عبوات تحتوي على مزيج من الأعشاب والتوابل الطبيعية المجففة، مما يجعله سهل التخزين والاستخدام في أي وقت. كما يمكن تناوله بشكل مستقل أو مع إضافة الحليب أو السكر أو العسل حسب الرغبة الشخصية.\r\n</p><p>بشكل عام، يعتبر شاي الشتاء منتجًا رائعًا يتميز بمذاقه الرائع وفوائده الصحية، ويمكن الاستمتاع به في أيام الشتاء الباردة والماطرة لتدفئة الجسم والنفس.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', 32.61, 32.61, 0.00, 'percent', NULL, NULL, 1, 1, '250gr', 1, 50, 0, 0, NULL, 192, 96, 0.00, 0.00, 0.00, 0.00, 'شاي الشتاء', 'يعتبر شاي الشتاء مشروبًا مثاليًا للاستمتاع به في فصل الشتاء، حيث يوفر الدفء والراحة للجسم والنفس، ويمكن تناوله في أي وقت من اليوم سواء في الصباح أو المساء أو قبل النوم. كما أنه يحتوي على خصائص صحية عديدة، حيث يساعد في تقوية جهاز المناعة وتحسين الهضم وتخفيف الصداع والتهاب الحلق والسعال.', 23, 'shay-alshtaaa-o5dcd', 0.00, 3, 0.00, '2023-04-19 21:49:10', '2023-04-29 07:53:14', NULL),
(14, 6, 'شاي البابونج', NULL, '30', '30', '', NULL, 30.00, 30.00, 0.00, 'percent', NULL, NULL, 1, 1, '250gr', 1, 0, 0, 0, NULL, 192, 120, 0.00, 0.00, 0.00, 0.00, 'شاي البابونج', '', 30, 'shay-albabong-ygc8h', 0.00, 0, 0.00, '2023-04-28 06:17:54', '2023-04-28 06:17:54', NULL),
(15, 6, 'شاي التفاح', NULL, '42', '42', 'شاي,التفاح,تركيا,جدة,قرنفلة,اسطنبول', NULL, 30.00, 30.00, 0.00, 'percent', NULL, NULL, 1, 1, '250gr', 1, 0, 0, 0, NULL, 192, 120, 0.00, 0.00, 0.00, 0.00, 'شاي التفاح', '', 42, 'shay-altfah-9aspa', 0.00, 0, 0.00, '2023-04-28 06:25:41', '2023-04-28 06:26:36', NULL),
(16, 6, 'شاي اخضر بالياسمين', NULL, '43', '43', 'شاي,اخضر,بالياسمين,جدة,قرنفلة,بهارات,اسطنبول,تركيا,السعودية', NULL, 30.00, 30.00, 0.00, 'percent', NULL, NULL, 1, 1, '250gr', 1, 0, 0, 0, NULL, 192, 120, 0.00, 0.00, 0.00, 0.00, 'شاي اخضر بالياسمين', '', 43, 'shay-akhdr-balyasmyn-z12ij', 0.00, 3, 0.00, '2023-04-28 06:32:14', '2023-05-24 19:12:47', NULL),
(17, 6, 'ِشاي الرمان', NULL, '47', '47', 'شاي,الرمان,جدة,قرنفلة,بهارات,شاهي,تركي,تركيا', NULL, 40.00, 40.00, 0.00, 'percent', NULL, NULL, 1, 1, '250gr', 1, 0, 0, 0, NULL, 192, 120, 0.00, 0.00, 0.00, 0.00, 'ِشاي الرمان', '', 47, 'shay-alrman-kx7ni', 0.00, 0, 0.00, '2023-04-28 08:47:36', '2023-04-28 08:47:36', NULL),
(18, 6, 'بهارات الكفتة', NULL, '48', '48', 'بهارات,كفتة,لحم,تركيا,قرنفلة,تركي,شاي,بهار', NULL, 27.82, 27.82, 0.00, 'percent', NULL, NULL, 1, 1, '250gr', 1, 0, 0, 0, NULL, 192, 150, 0.00, 0.00, 0.00, 0.00, 'بهارات الكفتة', '', 48, 'bharat-alkft-thkns', 0.00, 4, 0.00, '2023-04-28 08:52:37', '2023-05-07 14:31:08', NULL),
(19, 6, 'كور الياسمين', NULL, '56', '56', 'كور,الياسمين,شاي', NULL, 30.00, 30.00, 0.00, 'percent', NULL, NULL, 1, 1, '250gr', 1, 0, 0, 0, NULL, 192, 150, 0.00, 0.00, 0.00, 0.00, 'كور الياسمين', '', 56, 'kor-alyasmyn-hiizw', 0.00, 0, 0.00, '2023-04-28 23:17:50', '2023-04-29 07:51:28', NULL),
(20, 6, 'شاي زهرة الزيزفون', NULL, '61', '61', 'ihlamur,اهلامور,زيزفون,زهرة,شاي', NULL, 30.00, 30.00, 0.00, 'percent', NULL, NULL, 1, 1, '250gr', 1, 0, 0, 0, NULL, 192, 150, 0.00, 0.00, 0.00, 0.00, 'شاي زهرة الزيزفون', '', 61, 'shay-zhr-alzyzfon-uwoya', 0.00, 0, 0.00, '2023-04-28 23:19:54', '2023-04-29 07:50:35', NULL),
(21, 6, 'كركديه', NULL, NULL, NULL, 'كركديه,شاي,تركي,تركيا,قرنفلة,جدة,اسطنبول', NULL, 30.00, 30.00, 0.00, 'percent', NULL, NULL, 1, 1, '250gr', 1, 0, 0, 0, NULL, 192, 150, 0.00, 0.00, 0.00, 0.00, 'كركديه', '', NULL, 'krkdyh-pex2f', 0.00, 0, 0.00, '2023-04-28 23:21:08', '2023-04-28 23:21:08', NULL),
(22, 6, 'شاي المرمية', NULL, '60', '60', 'شاي,المرمية,مرمية', NULL, 30.00, 30.00, 0.00, 'percent', NULL, NULL, 1, 1, '250gr', 1, 0, 0, 0, NULL, 192, 150, 0.00, 0.00, 0.00, 0.00, 'شاي المرمية', '', 60, 'shay-almrmy-h4coo', 0.00, 0, 0.00, '2023-04-28 23:22:14', '2023-04-29 07:49:27', NULL),
(23, 6, 'شاي الفواكه الإستوائية', NULL, NULL, '59', 'شاي,الفواكه,الإستوائية', NULL, 30.00, 30.00, 0.00, 'percent', NULL, NULL, 1, 1, '250gr', 1, 0, 0, 0, NULL, 192, 150, 0.00, 0.00, 0.00, 0.00, 'شاي الفواكه الإستوائية', '', 59, 'shay-alfoakh-alastoayy-r5ban', 0.00, 0, 0.00, '2023-04-28 23:23:30', '2023-04-29 07:48:27', NULL),
(24, 6, 'شاي الزنجبيل بالبرتقال', NULL, '58', '58', 'شاي,زنجبيل,برتقال', NULL, 30.00, 30.00, 0.00, 'percent', NULL, NULL, 1, 1, '250gr', 1, 0, 0, 0, NULL, 192, 150, 0.00, 0.00, 0.00, 0.00, 'شاي الزنجبيل بالبرتقال', '', 58, 'shay-alzngbyl-balbrtkal-6ajzr', 0.00, 0, 0.00, '2023-04-28 23:24:54', '2023-04-29 07:47:43', NULL),
(25, 6, 'بهارات السلطة', NULL, '57', '57', 'بهارات,السلطة,بهار', NULL, 30.00, 30.00, 0.00, 'percent', NULL, NULL, 1, 1, '250gr', 1, 0, 0, 0, NULL, 192, 150, 0.00, 0.00, 0.00, 0.00, 'بهارات السلطة', '', 57, 'bharat-alslt-zzxyg', 0.00, 7, 0.00, '2023-04-28 23:34:10', '2023-06-22 23:44:16', NULL),
(26, 6, 'بهارات الشوربة', NULL, '55', '55', 'بهار,بهارات,الشوربة,الشوربه', NULL, 30.00, 30.00, 0.00, 'percent', NULL, NULL, 1, 1, '250gr', 1, 0, 0, 0, NULL, 192, 150, 0.00, 0.00, 0.00, 0.00, 'بهارات الشوربة', '', 55, 'bharat-alshorb-5odg6', 0.00, 0, 0.00, '2023-04-28 23:36:28', '2023-04-29 07:45:57', NULL),
(27, 6, 'قرام ماسالا', NULL, '71', '71', 'بهارات,بهار,قرام,ماسالا,مسالا', NULL, 30.00, 30.00, 0.00, 'percent', NULL, NULL, 1, 1, '250gr', 1, 0, 0, 0, NULL, 192, 150, 0.00, 0.00, 0.00, 0.00, 'قرام ماسالا', '', 71, 'kram-masala-knodr', 0.00, 0, 0.00, '2023-04-29 07:55:25', '2023-04-29 08:06:49', NULL),
(28, 6, 'فلفل احمر حلو', NULL, '70', '70', 'فلفل,احمر,حلو,مجروش', NULL, 1.00, 1.00, 0.00, 'percent', NULL, NULL, 1, 1, '250gr', 1, 0, 0, 0, NULL, 192, 150, 0.00, 0.00, 0.00, 0.00, 'فلفل احمر حلو', '', 70, 'flfl-ahmr-hlo-8uxny', 0.00, 0, 0.00, '2023-04-29 08:09:44', '2023-04-29 08:09:44', NULL),
(29, 6, 'فلفل احمر حار اكسترا', NULL, '65', '65', 'فلفل,احمر,حار,اكسترا,مجروش', NULL, 30.00, 30.00, 0.00, 'percent', NULL, NULL, 1, 1, NULL, 1, 0, 0, 0, NULL, 192, 150, 0.00, 0.00, 0.00, 0.00, 'فلفل احمر حار اكسترا', '', 65, 'flfl-ahmr-har-akstra-irf4w', 0.00, 0, 0.00, '2023-04-29 08:11:30', '2023-04-29 08:11:31', NULL),
(30, 6, 'فلفل أحمر بالزيت', NULL, '67', '67', 'فلفل,أحمر,احمر,بالزيت', NULL, 30.00, 30.00, 0.00, 'percent', NULL, NULL, 1, 1, '250gr', 1, 0, 0, 0, NULL, 192, 150, 0.00, 0.00, 0.00, 0.00, 'فلفل أحمر بالزيت', '', 67, 'flfl-ahmr-balzyt-oxx1g', 0.00, 0, 0.00, '2023-04-29 08:13:57', '2023-04-29 08:13:57', NULL),
(31, 6, 'فلفل أحمر وسط', NULL, '68', '68', 'فلفل,أحمر,احمر,وسط', NULL, 1.00, 1.00, 0.00, 'percent', NULL, NULL, 1, 1, '250gr', 1, 0, 0, 0, NULL, 24, 24, 0.00, 0.00, 0.00, 0.00, 'فلفل أحمر وسط', '', 68, 'flfl-ahmr-ost-y2gmb', 0.00, 0, 0.00, '2023-04-29 08:15:59', '2023-04-29 08:15:59', NULL),
(32, 6, 'بهارات الباربكيو', NULL, '69', '69', 'بهارات,بهار,الشواء,الباربكيو,باربكيو', '<p>بهارات الباربكيو</p>', 1.00, 1.00, 0.00, 'percent', NULL, NULL, 1, 1, '250gr', 1, 0, 0, 0, NULL, 192, 150, 0.00, 0.00, 0.00, 0.00, 'بهارات الشواء', 'بهارات الباربكيو', 69, 'bharat-alshoaaa-obea3', 0.00, 0, 0.00, '2023-04-29 08:17:52', '2023-06-25 17:58:56', NULL),
(33, 6, 'بهارات السمك', NULL, '66', '66', 'بهارات,السمك,بهار,سمك', NULL, 26.08, 26.08, 0.00, 'percent', NULL, NULL, 1, 1, '250gr', 1, 0, 0, 0, NULL, 192, 120, 0.00, 0.00, 0.00, 0.00, 'بهارات السمك', '', 66, 'bharat-alsmk-bapql', 0.00, 0, 0.00, '2023-04-29 08:19:24', '2023-04-30 08:18:22', NULL),
(34, 6, 'الحبة السوداء', NULL, '64', '64', 'الحبة,السوداء,حبة,حبه,البركه,البركة', NULL, 1.00, 1.00, 0.00, 'percent', NULL, NULL, 1, 1, '250gr', 1, 0, 0, 0, NULL, 192, 150, 0.00, 0.00, 0.00, 0.00, 'الحبة السوداء', '', 64, 'alhb-alsodaaa-rf1fz', 0.00, 0, 0.00, '2023-04-29 08:21:36', '2023-04-29 08:21:36', NULL),
(35, 6, 'سماق حب', NULL, '63', '63', 'سماق,حب', NULL, 1.00, 1.00, 0.00, 'percent', NULL, NULL, 1, 0, '250gr', 1, 0, 0, 0, NULL, 24, 24, 0.00, 0.00, 0.00, 0.00, 'سماق حب', '', 63, 'smak-hb-uohso', 0.00, 0, 0.00, '2023-04-29 08:23:04', '2023-06-25 17:57:39', NULL),
(36, 6, 'سماق مطحون', NULL, '62', '62', 'سماق,مطحون', NULL, 1.00, 1.00, 0.00, 'percent', NULL, NULL, 1, 0, '250gr', 1, 0, 0, 0, NULL, 24, 24, 0.00, 0.00, 0.00, 0.00, 'سماق مطحون', '', 62, 'smak-mthon-sjdra', 0.00, 0, 0.00, '2023-04-29 08:24:10', '2023-06-25 17:57:37', NULL),
(37, 6, 'بهار الكاري', NULL, '66', '66', 'كاري,بهار,بهارات,الكاري', NULL, 30.00, 30.00, 0.00, 'percent', NULL, NULL, 1, 0, '250gr', 1, 0, 0, 0, NULL, 24, 24, 0.00, 0.00, 0.00, 0.00, 'بهار الكاري', '', 66, 'bhar-alkary-6agnp', 0.00, 0, 0.00, '2023-04-29 08:25:21', '2023-06-25 17:57:34', NULL),
(38, 6, 'بهار الكاري', NULL, '66', '66', 'كاري,بهار,بهارات,الكاري', NULL, 30.00, 30.00, 0.00, 'percent', NULL, NULL, 1, 1, '250gr', 1, 0, 0, 0, NULL, 24, 24, 0.00, 0.00, 0.00, 0.00, 'بهار الكاري', '', 66, 'bhar-alkary-hd3zp', 0.00, 0, 0.00, '2023-04-29 08:27:36', '2023-04-29 08:27:36', NULL),
(39, 6, 'سماق مطحون', NULL, '62', '62', 'سماق,مطحون', NULL, 1.00, 1.00, 0.00, 'percent', NULL, NULL, 1, 1, '250gr', 1, 0, 0, 0, NULL, 24, 24, 0.00, 0.00, 0.00, 0.00, 'سماق مطحون', '', 62, 'smak-mthon-h5kjm', 0.00, 0, 0.00, '2023-04-29 08:29:30', '2023-04-29 08:29:30', NULL),
(40, 6, 'لوز', NULL, '78', '78', 'لوز', NULL, 26.08, 26.08, 0.00, 'percent', NULL, NULL, 1, 1, '250gr', 1, 0, 0, 0, NULL, 192, 120, 0.00, 0.00, 0.00, 0.00, 'لوز', '', 78, 'loz-l1kiu', 0.00, 0, 0.00, '2023-04-29 08:51:08', '2023-04-29 09:04:40', NULL),
(41, 6, 'جوز', NULL, '88', '81', 'جوز,عين,جمل', NULL, 26.99, 26.99, 0.00, 'percent', NULL, NULL, 1, 1, '250gr', 1, 0, 0, 0, NULL, 192, 120, 0.00, 0.00, 0.00, 0.00, 'جوز', '', 88, 'goz-ztsy6', 0.00, 0, 0.00, '2023-04-29 08:53:03', '2023-04-29 09:05:27', NULL),
(42, 6, 'فستق عنتابي', NULL, '84', '74', 'فستق,عنتابي', NULL, 26.08, 26.08, 0.00, 'percent', NULL, NULL, 1, 1, '250gr', 1, 0, 0, 0, NULL, 192, 120, 0.00, 0.00, 0.00, 0.00, 'فستق عنتابي', '', 74, 'fstk-aantaby-j82ch', 0.00, 0, 0.00, '2023-04-29 08:55:53', '2023-04-29 09:05:43', NULL),
(43, 6, 'كاجو', NULL, '80', '80', 'كاجو', NULL, 30.00, 30.00, 0.00, 'percent', NULL, NULL, 1, 1, '250gr', 1, 0, 0, 0, NULL, 192, 120, 0.00, 0.00, 0.00, 0.00, 'كاجو', '', 80, 'kago-lo084', 0.00, 0, 0.00, '2023-04-29 08:57:03', '2023-04-29 09:06:14', NULL),
(44, 6, 'بندق', NULL, '79,73', '73', 'بندق', NULL, 26.00, 26.00, 0.00, 'percent', NULL, NULL, 1, 1, '250gr', 1, 0, 0, 0, NULL, 192, 120, 0.00, 0.00, 0.00, 0.00, 'بندق', '', 73, 'bndk-hxpgd', 0.00, 0, 0.00, '2023-04-29 08:58:20', '2023-04-29 09:06:47', NULL),
(45, 6, 'تين مجفف', NULL, '87,82', '82', 'تين,مجفف', NULL, 30.00, 30.00, 0.00, 'percent', NULL, NULL, 1, 1, '250gr', 1, 0, 0, 0, NULL, 192, 120, 0.00, 0.00, 0.00, 0.00, 'تين مجفف', '', 82, 'tyn-mgff-aevjs', 0.00, 0, 0.00, '2023-04-29 08:59:32', '2023-04-29 09:04:09', NULL),
(46, 6, 'مشمش أصفر مجفف', NULL, '85,75', '75', 'تين,أصفر,مجفف,مشمش', NULL, 26.08, 26.08, 0.00, 'percent', NULL, NULL, 1, 1, '250gr', 1, 0, 0, 0, NULL, 192, 120, 0.00, 0.00, 0.00, 0.00, 'مشمش أصفر مجفف', '', 75, 'mshmsh-asfr-mgff-rlsc4', 0.00, 0, 0.00, '2023-04-29 09:00:54', '2023-04-29 09:07:31', NULL),
(47, 6, 'مشمش أسود مجفف', NULL, '77,86', '77', 'تين,أصفر,مجفف,مشمش', NULL, 26.09, 26.09, 0.00, 'percent', NULL, NULL, 1, 1, '250gr', 1, 0, 0, 0, NULL, 192, 120, 0.00, 0.00, 0.00, 0.00, 'مشمش أصفر مجفف', '', 75, 'mshmsh-asfr-mgff-h8qjn', 0.00, 0, 0.00, '2023-04-29 09:01:06', '2023-04-29 09:07:47', NULL),
(49, 6, 'بهارات السمك', NULL, '66', '66', 'بهارات,السمك,بهار,سمك', NULL, 33.75, 33.75, 0.00, 'percent', NULL, NULL, 1, 1, '250gr', 1, 0, 0, 0, NULL, 192, 150, 0.00, 0.00, 0.00, 0.00, 'بهارات السمك korunfula', '', 66, 'bharat-alsmk-v2gno', 0.00, 0, 0.00, '2023-04-30 08:16:50', '2023-05-30 21:06:01', NULL),
(50, 6, 'صابون بذور العنب الأسود', NULL, '106', '106', '', NULL, 29.00, 29.00, 0.00, 'percent', NULL, NULL, 1, 1, '1', 1, 50, 0, 0, NULL, 72, 24, 0.00, 0.00, 0.00, 0.00, 'صابون بذور العنب الأسود', '', 106, 'sabon-bthor-alaanb-alasod-faouk', 0.00, 0, 0.00, '2023-06-12 05:30:41', '2023-06-12 05:34:04', NULL),
(51, 6, 'صابون حليب الحمار', NULL, '94', '94', '', NULL, 29.00, 29.00, 0.00, 'percent', NULL, NULL, 1, 1, '1', 1, 50, 0, 0, NULL, 72, 24, 0.00, 0.00, 0.00, 0.00, 'صابون حليب الحمار', '', 94, 'sabon-hlyb-alhmar-hdhq9', 0.00, 0, 0.00, '2023-06-12 05:35:57', '2023-06-12 05:35:57', NULL),
(52, 6, 'صابون الورد', NULL, '105', '105', 'صابون,الورد,تركيا', NULL, 29.00, 29.00, 0.00, 'percent', NULL, NULL, 1, 1, '1', 1, 50, 0, 0, NULL, 27, 24, 0.00, 0.00, 0.00, 0.00, 'صابون الورد', '', 105, 'sabon-alord-sewtt', 0.00, 0, 0.00, '2023-06-12 05:43:55', '2023-06-12 05:43:55', NULL),
(53, 6, 'صابون الأرغان', NULL, '96', '96', 'صابون,تركيا,قرنفلة,الارغان,ارغان', '<p><br></p>', 29.00, 29.00, 0.00, 'percent', NULL, NULL, 1, 1, '1', 1, 50, 0, 0, NULL, 72, 24, 0.00, 0.00, 0.00, 0.00, 'صابون الأرغان', '', 105, 'sabon-alarghan-pjhie', 0.00, 0, 0.00, '2023-06-12 05:46:45', '2023-06-12 05:55:47', NULL),
(54, 6, 'بذور الشيا', NULL, NULL, NULL, '', NULL, 1.00, 1.00, 0.00, 'percent', NULL, NULL, 1, 1, NULL, 1, 0, 0, 0, NULL, 24, 24, 0.00, 0.00, 0.00, 0.00, 'بذور الشيا', '', NULL, 'bthor-alshya-joqby', 0.00, 0, 0.00, '2023-06-25 17:23:38', '2023-06-25 17:23:38', NULL),
(55, 6, 'بهارات الشواء', NULL, '69', '69', 'بهارات,بهار,الشواء,الباربكيو,باربكيو', '<p>بهارات الباربكيو</p>', 1.00, 1.00, 0.00, 'percent', NULL, NULL, 1, 1, '250gr', 1, 0, 0, 0, NULL, 192, 150, 0.00, 0.00, 0.00, 0.00, 'بهارات الشواء', 'بهارات الباربكيو', 69, 'bharat-alshoaaa-87ue6', 0.00, 0, 0.00, '2023-06-25 17:57:53', '2023-06-25 17:57:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` int(20) NOT NULL,
  `product_id` int(20) NOT NULL,
  `attribute_id` int(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_attribute_values`
--

CREATE TABLE `product_attribute_values` (
  `id` int(20) NOT NULL,
  `product_id` int(20) NOT NULL,
  `attribute_id` int(20) NOT NULL,
  `attribute_value_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(20) NOT NULL,
  `product_id` int(20) NOT NULL,
  `category_id` int(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `product_id`, `category_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 10, 2, '2023-04-26 03:18:24', '2023-04-26 03:18:24', NULL),
(5, 8, 2, '2023-04-27 23:10:49', '2023-04-27 23:10:49', NULL),
(6, 7, 2, '2023-04-27 23:13:43', '2023-04-27 23:13:43', NULL),
(7, 14, 2, '2023-04-27 23:18:39', '2023-04-27 23:18:39', NULL),
(8, 15, 2, '2023-04-27 23:26:36', '2023-04-27 23:26:36', NULL),
(9, 16, 2, '2023-04-27 23:32:14', '2023-04-27 23:32:14', NULL),
(10, 17, 2, '2023-04-28 01:47:36', '2023-04-28 01:47:36', NULL),
(11, 18, 1, '2023-04-28 01:52:37', '2023-04-28 01:52:37', NULL),
(12, 19, 2, '2023-04-28 16:17:50', '2023-04-28 16:17:50', NULL),
(13, 20, 2, '2023-04-28 16:19:54', '2023-04-28 16:19:54', NULL),
(14, 21, 2, '2023-04-28 16:21:08', '2023-04-28 16:21:08', NULL),
(15, 22, 2, '2023-04-28 16:22:14', '2023-04-28 16:22:14', NULL),
(16, 23, 2, '2023-04-28 16:23:30', '2023-04-28 16:23:30', NULL),
(17, 24, 2, '2023-04-28 16:24:54', '2023-04-28 16:24:54', NULL),
(18, 25, 1, '2023-04-28 16:34:11', '2023-04-28 16:34:11', NULL),
(19, 26, 1, '2023-04-28 16:36:28', '2023-04-28 16:36:28', NULL),
(20, 27, 1, '2023-04-29 00:55:25', '2023-04-29 00:55:25', NULL),
(21, 28, 1, '2023-04-29 01:09:44', '2023-04-29 01:09:44', NULL),
(22, 29, 1, '2023-04-29 01:11:30', '2023-04-29 01:11:30', NULL),
(23, 30, 1, '2023-04-29 01:13:57', '2023-04-29 01:13:57', NULL),
(24, 31, 1, '2023-04-29 01:15:59', '2023-04-29 01:15:59', NULL),
(25, 32, 1, '2023-04-29 01:17:52', '2023-04-29 01:17:52', NULL),
(26, 33, 1, '2023-04-29 01:19:25', '2023-04-29 01:19:25', NULL),
(27, 34, 1, '2023-04-29 01:21:36', '2023-04-29 01:21:36', NULL),
(28, 35, 1, '2023-04-29 01:23:04', '2023-04-29 01:23:04', NULL),
(29, 36, 1, '2023-04-29 01:24:10', '2023-04-29 01:24:10', NULL),
(30, 37, 1, '2023-04-29 01:25:21', '2023-04-29 01:25:21', NULL),
(31, 38, 1, '2023-04-29 08:27:36', '2023-04-29 08:27:36', NULL),
(32, 39, 1, '2023-04-29 08:29:30', '2023-04-29 08:29:30', NULL),
(33, 40, 4, '2023-04-29 01:51:08', '2023-04-29 01:51:08', NULL),
(34, 41, 4, '2023-04-29 01:53:03', '2023-04-29 01:53:03', NULL),
(35, 42, 4, '2023-04-29 01:55:53', '2023-04-29 01:55:53', NULL),
(36, 43, 4, '2023-04-29 01:57:03', '2023-04-29 01:57:03', NULL),
(37, 44, 4, '2023-04-29 01:58:20', '2023-04-29 01:58:20', NULL),
(38, 45, 4, '2023-04-29 01:59:32', '2023-04-29 01:59:32', NULL),
(39, 46, 4, '2023-04-29 02:00:54', '2023-04-29 02:00:54', NULL),
(40, 47, 4, '2023-04-29 09:01:06', '2023-04-29 09:01:06', NULL),
(42, 49, 1, '2023-04-30 08:16:50', '2023-04-30 08:16:50', NULL),
(43, 50, 3, '2023-06-11 22:34:04', '2023-06-11 22:34:04', NULL),
(44, 51, 3, '2023-06-11 22:35:57', '2023-06-11 22:35:57', NULL),
(45, 52, 3, '2023-06-11 22:43:55', '2023-06-11 22:43:55', NULL),
(46, 53, 3, '2023-06-11 22:46:45', '2023-06-11 22:46:45', NULL),
(47, 54, 3, '2023-06-25 10:23:38', '2023-06-25 10:23:38', NULL),
(48, 55, 1, '2023-06-25 17:57:53', '2023-06-25 17:57:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_taxes`
--

CREATE TABLE `product_taxes` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `tax_id` int(11) NOT NULL,
  `tax` double(20,2) NOT NULL,
  `tax_type` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `product_taxes`
--

INSERT INTO `product_taxes` (`id`, `product_id`, `tax_id`, `tax`, `tax_type`, `created_at`, `updated_at`) VALUES
(7, 7, 1, 15.00, 'percent', '2023-04-14 13:54:14', '2023-04-14 13:54:14'),
(8, 8, 1, 15.00, 'percent', '2023-04-19 21:38:11', '2023-04-19 21:38:11'),
(10, 10, 1, 15.00, 'percent', '2023-04-19 14:49:10', '2023-04-19 14:49:10'),
(11, 14, 1, 15.00, 'percent', '2023-04-27 23:17:54', '2023-04-27 23:17:54'),
(12, 15, 1, 15.00, 'percent', '2023-04-27 23:25:41', '2023-04-27 23:25:41'),
(13, 16, 1, 15.00, 'percent', '2023-04-27 23:32:14', '2023-04-27 23:32:14'),
(14, 17, 1, 15.00, 'percent', '2023-04-28 01:47:36', '2023-04-28 01:47:36'),
(15, 18, 1, 15.00, 'percent', '2023-04-28 01:52:37', '2023-04-28 01:52:37'),
(16, 19, 1, 15.00, 'percent', '2023-04-28 16:17:50', '2023-04-28 16:17:50'),
(17, 20, 1, 15.00, 'percent', '2023-04-28 16:19:54', '2023-04-28 16:19:54'),
(18, 21, 1, 15.00, 'percent', '2023-04-28 16:21:08', '2023-04-28 16:21:08'),
(19, 22, 1, 15.00, 'percent', '2023-04-28 16:22:14', '2023-04-28 16:22:14'),
(20, 23, 1, 15.00, 'percent', '2023-04-28 16:23:30', '2023-04-28 16:23:30'),
(21, 24, 1, 15.00, 'percent', '2023-04-28 16:24:54', '2023-04-28 16:24:54'),
(22, 25, 1, 15.00, 'percent', '2023-04-28 16:34:11', '2023-04-28 16:34:11'),
(23, 26, 1, 15.00, 'percent', '2023-04-28 16:36:28', '2023-04-28 16:36:28'),
(24, 27, 1, 15.00, 'percent', '2023-04-29 00:55:25', '2023-04-29 00:55:25'),
(25, 28, 1, 15.00, 'percent', '2023-04-29 01:09:44', '2023-04-29 01:09:44'),
(26, 29, 1, 15.00, 'percent', '2023-04-29 01:11:31', '2023-04-29 01:11:31'),
(27, 30, 1, 15.00, 'percent', '2023-04-29 01:13:57', '2023-04-29 01:13:57'),
(28, 31, 1, 15.00, 'percent', '2023-04-29 01:15:59', '2023-04-29 01:15:59'),
(29, 32, 1, 15.00, 'percent', '2023-04-29 01:17:52', '2023-04-29 01:17:52'),
(30, 33, 1, 15.00, 'percent', '2023-04-29 01:19:25', '2023-04-29 01:19:25'),
(31, 34, 1, 15.00, 'percent', '2023-04-29 01:21:36', '2023-04-29 01:21:36'),
(32, 35, 1, 15.00, 'percent', '2023-04-29 01:23:04', '2023-04-29 01:23:04'),
(33, 36, 1, 15.00, 'percent', '2023-04-29 01:24:10', '2023-04-29 01:24:10'),
(34, 37, 1, 15.00, 'percent', '2023-04-29 01:25:21', '2023-04-29 01:25:21'),
(35, 38, 1, 15.00, 'percent', '2023-04-29 08:27:36', '2023-04-29 08:27:36'),
(36, 39, 1, 15.00, 'percent', '2023-04-29 08:29:30', '2023-04-29 08:29:30'),
(37, 40, 1, 15.00, 'percent', '2023-04-29 01:51:08', '2023-04-29 01:51:08'),
(38, 41, 1, 15.00, 'percent', '2023-04-29 01:53:03', '2023-04-29 01:53:03'),
(39, 42, 1, 15.00, 'percent', '2023-04-29 01:55:54', '2023-04-29 01:55:54'),
(40, 43, 1, 15.00, 'percent', '2023-04-29 01:57:03', '2023-04-29 01:57:03'),
(41, 44, 1, 15.00, 'percent', '2023-04-29 01:58:20', '2023-04-29 01:58:20'),
(42, 45, 1, 15.00, 'percent', '2023-04-29 01:59:32', '2023-04-29 01:59:32'),
(43, 46, 1, 15.00, 'percent', '2023-04-29 02:00:54', '2023-04-29 02:00:54'),
(44, 47, 1, 15.00, 'percent', '2023-04-29 09:01:06', '2023-04-29 09:01:06'),
(46, 49, 1, 15.00, 'percent', '2023-04-30 08:16:50', '2023-04-30 08:16:50'),
(47, 50, 1, 15.00, 'percent', '2023-06-11 22:30:41', '2023-06-11 22:30:41'),
(48, 51, 1, 15.00, 'percent', '2023-06-11 22:35:57', '2023-06-11 22:35:57'),
(49, 52, 1, 15.00, 'percent', '2023-06-11 22:43:55', '2023-06-11 22:43:55'),
(50, 53, 1, 15.00, 'percent', '2023-06-11 22:46:45', '2023-06-11 22:46:45'),
(51, 54, 1, 15.00, 'percent', '2023-06-25 10:23:38', '2023-06-25 10:23:38'),
(52, 55, 1, 15.00, 'percent', '2023-06-25 17:57:53', '2023-06-25 17:57:53');

-- --------------------------------------------------------

--
-- Table structure for table `product_translations`
--

CREATE TABLE `product_translations` (
  `id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `unit` varchar(20) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `lang` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_translations`
--

INSERT INTO `product_translations` (`id`, `product_id`, `name`, `unit`, `description`, `lang`, `created_at`, `updated_at`, `deleted_at`) VALUES
(7, 7, 'شاي أخضر', '250gr', '<p><b>يعتبر الشاي الأخضر منتجاً طبيعياً وصحياً يتميز بنكهته المميزة وفوائده الصحية العديدة. يتم جمع أوراق الشاي الأخضر من المزارع العضوية المختارة بعناية، ويتم تجفيفها بطريقة خاصة للحفاظ على النكهة والفوائد الغذائية.</b></p><p><b><br></b></p><p><b>يحتوي الشاي الأخضر على العديد من المركبات النباتية المفيدة للجسم، مثل الكاتيكينات والبوليفينولات والأحماض الأمينية. يعتبر هذا الشاي مضاداً للأكسدة الطبيعي القوي الذي يساعد في مكافحة الجذور الحرة التي تسبب تلفاً في الخلايا وتساعد في الحفاظ على صحة القلب والأوعية الدموية وخفض مستوى الكوليسترول في الدم.</b></p><p><b><br></b></p><p><b>بالإضافة إلى فوائده الصحية، يتمتع الشاي الأخضر بنكهة منعشة ومناسبة للشرب في أي وقت من اليوم. ويمكن تقديمه ساخناً أو بارداً، ويتميز بقدرته على تحسين الهضم والتخلص من السموم في الجسم.</b></p><p><b><br></b></p><p><b>يقدم متجر قرنفلة مع الشاي الأخضر مجموعة واسعة من المنتجات بتشكيلة متنوعة من النكهات المختلفة لتناسب جميع الأذواق. وتتميز هذه المنتجات بجودتها العالية والنكهة الفريدة التي لا يمكن الحصول عليها من أي نوع آخر من الشاي.</b></p><p><b><br></b></p><p><b>باختصار، يعد الشاي الأخضر منتجاً صحياً ولذيذاً يتمتع بفوائد صحية عديدة ونكهة منعشة، ويتوفر بتشكيلة واسعة من المنتجات التي تناسب جميع الأذواق</b></p>', 'ar', '2023-04-14 20:54:14', '2023-04-14 20:56:24', NULL),
(9, 8, 'شاي عثماني', '250gr', '<p><b>تقدم منتجات الشاي العثماني تجربة شاي لا مثيل لها، حيث يتم تحضير الشاي بأفضل المكونات والتوابل الطبيعية لضمان الحصول على مذاق رائع وعطري. يتم تجفيف الأوراق بعناية ويتم اختيارها بعناية من المناطق المثالية لزراعة الشاي، لتكون النتيجة شاي ذو جودة عالية ومتميز بالنكهة الفريدة.</b></p><p><b><br></b></p><p><b>يقدم متجر قرنفلة مجموعة متنوعة من المنتجات بما في ذلك شاي الأعشاب والشاي الأسود والأخضر والشاي المميز بنكهة الفواكه. كما تتوفر المجموعة بتصاميم عصرية وأنيقة لتناسب جميع الأذواق والمناسبات.</b></p><p><b><br></b></p><p><b>يتم تغليف المنتجات بأكياس محكمة للحفاظ على الجودة والنكهة الطازجة. وبفضل السهولة في التحضير، يمكن للمستهلكين الاستمتاع بشاي العثماني في أي وقت وفي أي مكان.</b></p><p><b><br></b></p><p><b>باختصار، فإن منتجات الشاي العثماني توفر للمستهلكين تجربة شاي فريدة وذات جودة عالية، وتتوفر بتشكيلة واسعة من الأصناف والتصاميم لتناسب جميع الأذواق والمناسبات</b></p>', 'ar', '2023-04-19 21:38:11', '2023-04-19 21:38:11', NULL),
(11, 10, 'شاي الشتاء', '250gr', '<p>شاي الشتاء هو منتج شاي رائع  ينحدر من الشاي العثماني ويتميز بمذاق دافئ ومنعش يناسب فصل الشتاء والأجواء الباردة. يتم تحضيره من مزيج من الأعشاب والتوابل المميزة مثل الزنجبيل والقرفة والهيل واليانسون وغيرها، مع إضافة الشاي الأسود النقي لتعزيز النكهة والرائحة.\r\n</p><p>يعتبر شاي الشتاء مشروبًا مثاليًا للاستمتاع به في فصل الشتاء، حيث يوفر الدفء والراحة للجسم والنفس، ويمكن تناوله في أي وقت من اليوم سواء في الصباح أو المساء أو قبل النوم. كما أنه يحتوي على خصائص صحية عديدة، حيث يساعد في تقوية جهاز المناعة وتحسين الهضم وتخفيف الصداع والتهاب الحلق والسعال.\r\n</p><p>يأتي شاي الشتاء عادة في عبوات تحتوي على مزيج من الأعشاب والتوابل الطبيعية المجففة، مما يجعله سهل التخزين والاستخدام في أي وقت. كما يمكن تناوله بشكل مستقل أو مع إضافة الحليب أو السكر أو العسل حسب الرغبة الشخصية.\r\n</p><p>بشكل عام، يعتبر شاي الشتاء منتجًا رائعًا يتميز بمذاقه الرائع وفوائده الصحية، ويمكن الاستمتاع به في أيام الشتاء الباردة والماطرة لتدفئة الجسم والنفس.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', 'ar', '2023-04-19 21:49:10', '2023-04-19 21:49:56', NULL),
(12, 14, 'شاي البابونج', '250gr', NULL, 'ar', '2023-04-28 06:17:54', '2023-04-28 06:17:54', NULL),
(13, 15, 'شاي التفاح', '250gr', NULL, 'ar', '2023-04-28 06:25:41', '2023-04-28 06:25:41', NULL),
(14, 16, 'شاي اخضر بالياسمين', '250gr', NULL, 'ar', '2023-04-28 06:32:14', '2023-04-28 06:32:14', NULL),
(15, 17, 'ِشاي الرمان', '250gr', NULL, 'ar', '2023-04-28 08:47:36', '2023-04-28 08:47:36', NULL),
(16, 18, 'بهارات الكفتة', '250gr', NULL, 'ar', '2023-04-28 08:52:37', '2023-04-28 08:52:37', NULL),
(17, 19, 'كور الياسمين', '250gr', NULL, 'ar', '2023-04-28 23:17:50', '2023-04-28 23:17:50', NULL),
(18, 20, 'شاي زهرة الزيزفون', '250gr', NULL, 'ar', '2023-04-28 23:19:54', '2023-04-28 23:19:54', NULL),
(19, 21, 'كركديه', '250gr', NULL, 'ar', '2023-04-28 23:21:08', '2023-04-28 23:21:08', NULL),
(20, 22, 'شاي المرمية', '250gr', NULL, 'ar', '2023-04-28 23:22:14', '2023-04-28 23:22:14', NULL),
(21, 23, 'شاي الفواكه الإستوائية', '250gr', NULL, 'ar', '2023-04-28 23:23:30', '2023-04-28 23:23:30', NULL),
(22, 24, 'شاي الزنجبيل بالبرتقال', '250gr', NULL, 'ar', '2023-04-28 23:24:54', '2023-04-28 23:24:54', NULL),
(23, 25, 'بهارات السلطة', '250gr', NULL, 'ar', '2023-04-28 23:34:11', '2023-04-28 23:34:11', NULL),
(24, 26, 'بهارات الشوربة', '250gr', NULL, 'ar', '2023-04-28 23:36:28', '2023-04-28 23:36:28', NULL),
(25, 27, 'قرام ماسالا', '250gr', NULL, 'ar', '2023-04-29 07:55:25', '2023-04-29 07:55:25', NULL),
(26, 28, 'فلفل احمر حلو', '250gr', NULL, 'ar', '2023-04-29 08:09:44', '2023-04-29 08:09:44', NULL),
(27, 29, 'فلفل احمر حار اكسترا', NULL, NULL, 'ar', '2023-04-29 08:11:30', '2023-04-29 08:11:30', NULL),
(28, 30, 'فلفل أحمر بالزيت', '250gr', NULL, 'ar', '2023-04-29 08:13:57', '2023-04-29 08:13:57', NULL),
(29, 31, 'فلفل أحمر وسط', '250gr', NULL, 'ar', '2023-04-29 08:15:59', '2023-04-29 08:15:59', NULL),
(30, 32, 'بهارات الباربكيو', '250gr', '<p>بهارات الباربكيو</p>', 'ar', '2023-04-29 08:17:52', '2023-06-25 17:58:56', NULL),
(31, 33, 'بهارات السمك', '250gr', NULL, 'ar', '2023-04-29 08:19:25', '2023-04-29 08:19:25', NULL),
(32, 34, 'الحبة السوداء', '250gr', NULL, 'ar', '2023-04-29 08:21:36', '2023-04-29 08:21:36', NULL),
(33, 35, 'سماق حب', '250gr', NULL, 'ar', '2023-04-29 08:23:04', '2023-04-29 08:23:04', NULL),
(34, 36, 'سماق مطحون', '250gr', NULL, 'ar', '2023-04-29 08:24:10', '2023-04-29 08:24:10', NULL),
(35, 37, 'بهار الكاري', '250gr', NULL, 'ar', '2023-04-29 08:25:21', '2023-04-29 08:25:21', NULL),
(36, 38, 'بهار الكاري', '250gr', NULL, 'ar', '2023-04-29 08:27:36', '2023-04-29 08:27:36', NULL),
(37, 39, 'سماق مطحون', '250gr', NULL, 'ar', '2023-04-29 08:29:30', '2023-04-29 08:29:30', NULL),
(38, 40, 'لوز', '250gr', NULL, 'ar', '2023-04-29 08:51:08', '2023-04-29 08:51:08', NULL),
(39, 41, 'جوز', '250gr', NULL, 'ar', '2023-04-29 08:53:03', '2023-04-29 08:53:03', NULL),
(40, 42, 'فستق عنتابي', '250gr', NULL, 'ar', '2023-04-29 08:55:53', '2023-04-29 08:55:53', NULL),
(41, 43, 'كاجو', '250gr', NULL, 'ar', '2023-04-29 08:57:03', '2023-04-29 08:57:03', NULL),
(42, 44, 'بندق', '250gr', NULL, 'ar', '2023-04-29 08:58:20', '2023-04-29 08:58:20', NULL),
(43, 45, 'تين مجفف', '250gr', NULL, 'ar', '2023-04-29 08:59:32', '2023-04-29 08:59:32', NULL),
(44, 46, 'مشمش أصفر مجفف', '250gr', NULL, 'ar', '2023-04-29 09:00:54', '2023-04-29 09:00:54', NULL),
(45, 47, 'مشمش أسود مجفف', '250gr', NULL, 'ar', '2023-04-29 09:01:06', '2023-04-29 09:01:46', NULL),
(47, 49, 'بهارات السمك', '250gr', NULL, 'ar', '2023-04-30 08:16:50', '2023-04-30 08:16:50', NULL),
(48, 50, 'صابون بذور العنب الأسود', '1', NULL, 'ar', '2023-06-12 05:30:41', '2023-06-12 05:30:41', NULL),
(49, 51, 'صابون حليب الحمار', '1', NULL, 'ar', '2023-06-12 05:35:57', '2023-06-12 05:35:57', NULL),
(50, 52, 'صابون الورد', '1', NULL, 'ar', '2023-06-12 05:43:55', '2023-06-12 05:43:55', NULL),
(51, 53, 'صابون الأرغان', '1', '<p><br></p>', 'ar', '2023-06-12 05:46:45', '2023-06-12 05:46:45', NULL),
(52, 54, 'بذور الشيا', NULL, NULL, 'ar', '2023-06-25 17:23:38', '2023-06-25 17:23:38', NULL),
(53, 55, 'بهارات الشواء', '250gr', '<p>بهارات الباربكيو</p>', 'ar', '2023-06-25 17:57:53', '2023-06-25 17:57:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_variations`
--

CREATE TABLE `product_variations` (
  `id` int(20) NOT NULL,
  `product_id` int(20) NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `sku` varchar(100) DEFAULT NULL,
  `price` double(20,2) NOT NULL DEFAULT 0.00,
  `stock` tinyint(1) NOT NULL DEFAULT 1,
  `img` int(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variations`
--

INSERT INTO `product_variations` (`id`, `product_id`, `code`, `sku`, `price`, `stock`, `img`, `created_at`, `updated_at`) VALUES
(7, 7, NULL, NULL, 26.08, 1, NULL, '2023-04-06 07:46:16', '2023-04-25 22:56:20'),
(8, 8, NULL, NULL, 26.08, 1, NULL, '2023-04-08 09:03:43', '2023-04-25 22:56:15'),
(10, 10, NULL, 'sar', 32.61, 1, NULL, '2023-04-09 02:18:34', '2023-04-25 22:56:11'),
(12, 14, NULL, NULL, 30.00, 1, NULL, '2023-04-28 06:17:54', '2023-04-28 06:17:54'),
(13, 15, NULL, NULL, 30.00, 1, NULL, '2023-04-28 06:25:41', '2023-04-28 06:26:36'),
(14, 16, NULL, NULL, 30.00, 1, NULL, '2023-04-28 06:32:14', '2023-04-28 06:32:14'),
(15, 17, NULL, NULL, 40.00, 1, NULL, '2023-04-28 08:47:36', '2023-04-28 08:47:36'),
(16, 18, NULL, NULL, 27.82, 1, NULL, '2023-04-28 08:52:37', '2023-04-28 08:52:37'),
(17, 19, NULL, NULL, 30.00, 1, NULL, '2023-04-28 23:17:50', '2023-04-28 23:17:50'),
(18, 20, NULL, NULL, 30.00, 1, NULL, '2023-04-28 23:19:54', '2023-04-28 23:19:54'),
(19, 21, NULL, NULL, 30.00, 1, NULL, '2023-04-28 23:21:08', '2023-04-28 23:21:08'),
(20, 22, NULL, NULL, 30.00, 1, NULL, '2023-04-28 23:22:14', '2023-04-28 23:22:14'),
(21, 23, NULL, NULL, 30.00, 1, NULL, '2023-04-28 23:23:30', '2023-04-28 23:23:30'),
(22, 24, NULL, NULL, 30.00, 1, NULL, '2023-04-28 23:24:54', '2023-04-28 23:24:54'),
(23, 25, NULL, NULL, 30.00, 1, NULL, '2023-04-28 23:34:11', '2023-04-28 23:34:11'),
(24, 26, NULL, NULL, 30.00, 1, NULL, '2023-04-28 23:36:28', '2023-04-28 23:36:28'),
(25, 27, NULL, NULL, 30.00, 1, NULL, '2023-04-29 07:55:25', '2023-04-29 07:55:25'),
(26, 28, NULL, NULL, 1.00, 1, NULL, '2023-04-29 08:09:44', '2023-04-29 08:09:44'),
(27, 29, NULL, NULL, 30.00, 1, NULL, '2023-04-29 08:11:31', '2023-04-29 08:11:31'),
(28, 30, NULL, NULL, 30.00, 1, NULL, '2023-04-29 08:13:57', '2023-04-29 08:13:57'),
(29, 31, NULL, NULL, 1.00, 1, NULL, '2023-04-29 08:15:59', '2023-04-29 08:15:59'),
(30, 32, NULL, NULL, 1.00, 1, NULL, '2023-04-29 08:17:52', '2023-04-29 08:17:52'),
(31, 33, NULL, NULL, 26.08, 1, NULL, '2023-04-29 08:19:25', '2023-04-30 08:18:22'),
(32, 34, NULL, NULL, 1.00, 1, NULL, '2023-04-29 08:21:36', '2023-04-29 08:21:36'),
(33, 35, NULL, NULL, 1.00, 1, NULL, '2023-04-29 08:23:04', '2023-04-29 08:23:04'),
(34, 36, NULL, NULL, 1.00, 1, NULL, '2023-04-29 08:24:10', '2023-04-29 08:24:10'),
(35, 37, NULL, NULL, 30.00, 1, NULL, '2023-04-29 08:25:21', '2023-04-29 08:25:21'),
(36, 38, NULL, NULL, 30.00, 1, NULL, '2023-04-29 08:27:36', '2023-04-29 08:27:36'),
(37, 39, NULL, NULL, 1.00, 1, NULL, '2023-04-29 08:29:30', '2023-04-29 08:29:30'),
(38, 40, NULL, NULL, 26.08, 1, NULL, '2023-04-29 08:51:08', '2023-04-29 08:51:08'),
(39, 41, NULL, NULL, 26.99, 1, NULL, '2023-04-29 08:53:03', '2023-04-29 09:05:27'),
(40, 42, NULL, NULL, 26.08, 1, NULL, '2023-04-29 08:55:54', '2023-04-29 08:55:54'),
(41, 43, NULL, NULL, 30.00, 1, NULL, '2023-04-29 08:57:03', '2023-04-29 08:57:03'),
(42, 44, NULL, NULL, 26.00, 1, NULL, '2023-04-29 08:58:20', '2023-04-29 08:58:20'),
(43, 45, NULL, NULL, 30.00, 1, NULL, '2023-04-29 08:59:32', '2023-04-29 08:59:32'),
(44, 46, NULL, NULL, 26.08, 1, NULL, '2023-04-29 09:00:54', '2023-04-29 09:00:54'),
(45, 47, NULL, NULL, 26.09, 1, NULL, '2023-04-29 09:01:06', '2023-04-29 09:07:47'),
(47, 49, NULL, NULL, 33.75, 1, NULL, '2023-04-30 08:16:50', '2023-04-30 08:34:41'),
(48, 50, NULL, NULL, 29.00, 1, NULL, '2023-06-12 05:30:41', '2023-06-12 05:30:41'),
(49, 51, NULL, NULL, 29.00, 1, NULL, '2023-06-12 05:35:57', '2023-06-12 05:35:57'),
(50, 52, NULL, NULL, 29.00, 1, NULL, '2023-06-12 05:43:55', '2023-06-12 05:43:55'),
(51, 53, NULL, NULL, 29.00, 1, NULL, '2023-06-12 05:46:45', '2023-06-12 05:46:45'),
(52, 54, NULL, NULL, 1.00, 1, NULL, '2023-06-25 17:23:38', '2023-06-25 17:23:38'),
(53, 55, NULL, NULL, 1.00, 1, NULL, '2023-06-25 17:57:53', '2023-06-25 17:57:53');

-- --------------------------------------------------------

--
-- Table structure for table `product_variation_combinations`
--

CREATE TABLE `product_variation_combinations` (
  `id` int(20) NOT NULL,
  `product_id` int(20) NOT NULL,
  `product_variation_id` int(20) NOT NULL,
  `attribute_id` int(20) NOT NULL,
  `attribute_value_id` int(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `refund_requests`
--

CREATE TABLE `refund_requests` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `admin_approval` int(1) NOT NULL DEFAULT 0 COMMENT '0= Pending,\r\n1= Accepted,\r\n2= Rejected',
  `seller_approval` int(1) NOT NULL DEFAULT 0 COMMENT '0= Pending,\r\n1= Accepted,\r\n2= Rejected',
  `amount` double(20,2) NOT NULL DEFAULT 0.00,
  `reasons` text DEFAULT NULL,
  `refund_note` text DEFAULT NULL,
  `attachments` varchar(2000) DEFAULT NULL,
  `payment_type` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `refund_request_items`
--

CREATE TABLE `refund_request_items` (
  `id` int(11) NOT NULL,
  `refund_request_id` int(11) NOT NULL,
  `order_detail_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL DEFAULT 0,
  `comment` mediumtext NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `viewed` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'web', '2021-10-27 09:37:56', '2021-10-27 09:37:59'),
(10, 'SALES', 'web', '2023-04-06 11:22:25', '2023-04-06 11:22:25');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(9, 10),
(10, 10),
(11, 10),
(12, 10),
(13, 10),
(14, 10),
(15, 10),
(17, 10),
(24, 10),
(28, 10),
(30, 10),
(33, 10),
(35, 10),
(39, 10),
(40, 10),
(41, 10),
(42, 10);

-- --------------------------------------------------------

--
-- Table structure for table `searches`
--

CREATE TABLE `searches` (
  `id` int(11) NOT NULL,
  `query` varchar(1000) NOT NULL,
  `count` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seller_packages`
--

CREATE TABLE `seller_packages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `amount` double(11,2) NOT NULL DEFAULT 0.00,
  `commission` double(15,2) NOT NULL,
  `product_upload_limit` int(11) NOT NULL DEFAULT 0,
  `logo` varchar(255) DEFAULT NULL,
  `duration` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seller_package_payments`
--

CREATE TABLE `seller_package_payments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `seller_package_id` int(11) NOT NULL,
  `amount` double(20,2) NOT NULL DEFAULT 0.00,
  `payment_method` varchar(255) NOT NULL,
  `payment_details` longtext DEFAULT NULL,
  `approval` int(1) NOT NULL,
  `offline_payment` int(1) NOT NULL COMMENT '1=offline payment\r\n2=online paymnet',
  `reciept` varchar(150) NOT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seller_package_translations`
--

CREATE TABLE `seller_package_translations` (
  `id` bigint(20) NOT NULL,
  `seller_package_id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `lang` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seller_payouts`
--

CREATE TABLE `seller_payouts` (
  `id` bigint(20) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `status` varchar(20) DEFAULT 'requested',
  `requested_amount` double(20,2) NOT NULL DEFAULT 0.00,
  `paid_amount` double(20,2) NOT NULL DEFAULT 0.00,
  `seller_note` longtext DEFAULT NULL,
  `payment_details` longtext DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `txn_code` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `type` varchar(256) NOT NULL,
  `value` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `type`, `value`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'system_default_currency', '30', '2018-10-16 01:36:58', '2023-04-09 02:05:31', NULL),
(3, 'decimal_separator', '1', '2018-10-17 03:01:59', '2021-10-14 06:16:53', NULL),
(4, 'symbol_format', '1', '2018-10-17 03:01:59', '2021-10-11 08:10:16', NULL),
(5, 'no_of_decimals', '2', '2018-10-17 03:01:59', '2021-10-12 01:43:16', NULL),
(9, 'paypal_payment', '1', '2018-10-28 07:45:16', '2023-04-25 06:26:28', NULL),
(10, 'stripe_payment', '0', '2018-10-28 07:45:47', '2023-04-09 17:52:33', NULL),
(11, 'cash_payment', '1', '2018-10-28 07:46:05', '2023-04-25 06:29:06', NULL),
(14, 'paypal_sandbox', '1', '2019-01-16 12:44:18', '2019-01-16 12:44:18', NULL),
(15, 'sslcommerz_sandbox', '0', '2019-01-16 12:44:18', '2023-04-25 23:25:57', NULL),
(16, 'sslcommerz_payment', '0', '2019-01-24 09:39:07', '2023-04-09 09:00:47', NULL),
(19, 'google_analytics', '0', '2019-02-06 12:22:35', '2019-02-06 12:22:35', NULL),
(20, 'facebook_login', '0', '2019-02-07 12:51:59', '2023-04-23 23:59:51', NULL),
(21, 'google_login', '1', '2019-02-07 12:52:10', '2021-10-10 05:06:43', NULL),
(22, 'twitter_login', '0', '2019-02-07 12:52:20', '2023-04-23 23:59:52', NULL),
(36, 'facebook_chat', '0', '2019-04-15 11:45:04', '2020-12-09 03:44:36', NULL),
(37, 'email_verification', '0', '2019-04-30 07:30:07', '2021-11-02 13:20:42', NULL),
(38, 'wallet_system', '0', '2019-05-19 08:05:44', '2023-04-09 02:07:57', NULL),
(40, 'current_version', '2.4', '2019-06-11 09:46:18', '2019-06-11 09:46:18', NULL),
(44, 'paystack', '0', '2019-07-21 13:00:38', '2019-07-21 13:00:38', NULL),
(53, 'facebook_pixel', '0', '2020-01-22 11:43:58', '2020-01-22 11:43:58', NULL),
(64, 'header_logo', '22', '2020-11-16 07:26:36', '2023-04-20 22:44:47', NULL),
(68, 'footer_logo', NULL, '2020-11-16 07:26:36', '2023-04-10 01:16:18', NULL),
(69, 'about_us_description', NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36', NULL),
(70, 'contact_address', 'Jeddah', '2020-11-16 07:26:36', '2023-04-08 10:14:05', NULL),
(71, 'contact_phone', '+9665', '2020-11-16 07:26:36', '2023-04-08 10:14:05', NULL),
(72, 'contact_email', 'support@korunfula.com', '2020-11-16 07:26:36', '2023-04-08 10:14:05', NULL),
(76, 'frontend_copyright_text', '<p><b>THE Korunfula SHOP CMS</b></p><p><font color=\"#9c9c94\">© Ahmed</font></p>', '2020-11-16 07:26:36', '2023-04-09 09:29:35', NULL),
(95, 'site_icon', '24', '2020-11-16 07:26:36', '2023-04-27 12:00:02', NULL),
(96, 'base_color', '#581f18', '2020-11-16 07:26:36', '2023-04-12 01:04:36', NULL),
(98, 'meta_title', 'متجر قرنفلة || korunfula store', '2020-11-16 07:26:36', '2023-04-09 19:06:51', NULL),
(99, 'meta_description', 'اكتشف أفضل تشكيلة من التوابل والشاي الفاخر من تركيا في متجرنا بالسعودية. استمتع بتجربة طعم لذيذة مع منتجاتنا الأصيلة والمختارة بعناية. تسوق الآن لتنطلق في رحلة طهي فريدة من نوعها.', '2020-11-16 07:26:36', '2023-05-30 21:04:20', NULL),
(100, 'meta_keywords', 'التوابل الفاخرة , الشاي التركي , متجر التوابل والشاي , النكهات التركية , الطهي التركي', '2020-11-16 07:26:36', '2023-05-30 21:04:20', NULL),
(101, 'meta_image', '24', '2020-11-16 07:26:36', '2023-04-27 12:00:13', NULL),
(102, 'site_name', 'korunfula', '2020-11-16 07:26:36', '2023-04-06 07:53:36', NULL),
(103, 'system_logo_white', NULL, '2020-11-16 07:26:36', '2023-04-10 01:25:33', NULL),
(104, 'system_logo_black', NULL, '2020-11-16 07:26:36', '2023-04-10 01:25:33', NULL),
(105, 'timezone', NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36', NULL),
(106, 'admin_login_background', NULL, '2020-11-16 07:26:36', '2021-10-10 01:09:33', NULL),
(107, 'weight_unit', 'gm', '2021-07-28 08:41:47', '2021-07-28 08:43:06', NULL),
(108, 'dimension_unit', 'cm', '2021-07-28 08:41:47', '2021-07-28 08:41:47', NULL),
(109, 'home_slider_1_img', '61', '2021-09-26 23:50:45', '2021-10-16 20:27:07', NULL),
(110, 'home_slider_1_link', '/category/demo-category-2', '2021-09-26 23:50:45', '2021-10-12 00:08:57', NULL),
(111, 'home_slider_2_img', '62', '2021-09-26 23:50:45', '2021-10-16 20:27:07', NULL),
(112, 'home_slider_2_link', '/category/demo-category-2', '2021-09-26 23:50:45', '2021-10-12 00:08:57', NULL),
(113, 'home_slider_3_img', '63', '2021-09-26 23:51:43', '2021-10-16 20:27:07', NULL),
(114, 'home_slider_3_link', '/category/demo-category-2', '2021-09-26 23:51:43', '2021-10-12 00:08:57', NULL),
(115, 'home_slider_4_img', '64', '2021-09-26 23:51:43', '2021-10-16 20:27:07', NULL),
(116, 'home_slider_4_link', '/category/demo-category-2', '2021-09-26 23:51:43', '2021-10-12 00:08:57', NULL),
(117, 'home_popular_categories', '[\"1\",\"2\"]', '2021-09-27 01:22:03', '2023-04-28 08:04:37', NULL),
(118, 'home_banner_1_img', '847', '2021-09-27 07:08:53', '2021-10-28 20:52:41', NULL),
(119, 'home_banner_1_link', '/category/demo-category-2', '2021-09-27 07:08:53', '2021-10-12 00:09:08', NULL),
(120, 'home_product_section_1_title', NULL, '2021-09-27 07:51:40', '2023-04-28 07:57:02', NULL),
(121, 'home_product_section_1_products', '[\"3\"]', '2021-09-27 07:51:40', '2023-04-28 07:57:02', NULL),
(123, 'home_product_section_2_title', NULL, '2021-09-29 02:02:13', '2023-04-28 07:56:24', NULL),
(124, 'home_product_section_2_products', '[\"3\"]', '2021-09-29 02:02:13', '2023-04-10 01:39:16', NULL),
(125, 'home_banner_2_img', '852', '2021-09-29 02:12:28', '2021-10-28 20:54:34', NULL),
(126, 'home_banner_2_link', '#', '2021-09-29 02:12:28', '2021-09-29 02:12:28', NULL),
(127, 'home_banner_3_img', '851', '2021-09-29 02:12:28', '2021-10-28 20:54:34', NULL),
(128, 'home_banner_3_link', '#', '2021-09-29 02:12:28', '2021-09-29 02:12:28', NULL),
(129, 'home_product_section_3_title', 'منتجات تصلك اليوم', '2021-09-29 03:35:24', '2023-04-09 08:10:24', NULL),
(130, 'home_banner_4_img', '685', '2021-09-29 03:35:24', '2021-10-27 16:05:51', NULL),
(131, 'home_banner_4_link', '#', '2021-09-29 03:35:24', '2021-09-29 03:35:24', NULL),
(132, 'home_product_section_3_products', '[\"3\"]', '2021-09-29 03:35:24', '2023-04-09 08:10:33', NULL),
(133, 'home_banner_5_img', '70', '2021-09-29 03:56:27', '2021-10-16 20:38:55', NULL),
(134, 'home_banner_5_link', '#', '2021-09-29 03:56:27', '2021-09-29 03:56:27', NULL),
(135, 'home_banner_6_img', '71', '2021-09-29 03:56:27', '2021-10-16 20:38:55', NULL),
(136, 'home_banner_6_link', '#', '2021-09-29 03:56:27', '2021-09-29 03:56:27', NULL),
(137, 'home_banner_7_img', '72', '2021-09-29 03:56:27', '2021-10-16 20:38:55', NULL),
(138, 'home_banner_7_link', '#', '2021-09-29 03:56:27', '2021-09-29 03:56:27', NULL),
(139, 'home_product_section_4_title', NULL, '2021-09-29 04:05:34', '2023-04-28 07:59:44', NULL),
(140, 'home_product_section_4_products', NULL, '2021-09-29 04:05:34', '2023-04-28 07:59:44', NULL),
(141, 'home_product_section_5_title', NULL, '2021-09-29 04:11:34', '2023-04-28 07:59:58', NULL),
(142, 'home_product_section_5_products', NULL, '2021-09-29 04:11:34', '2023-04-28 07:59:58', NULL),
(143, 'home_banner_8_img', '790', '2021-09-29 04:24:09', '2021-10-28 13:33:14', NULL),
(144, 'home_banner_8_link', '#', '2021-09-29 04:24:09', '2021-09-29 04:24:09', NULL),
(145, 'home_banner_9_img', '792', '2021-09-29 04:24:09', '2021-10-28 13:33:14', NULL),
(146, 'home_banner_10_link', '#', '2021-09-29 04:24:09', '2021-09-29 04:24:09', NULL),
(147, 'home_banner_11_img', '849', '2021-09-29 04:24:09', '2021-10-28 20:55:21', NULL),
(148, 'home_banner_11_link', '#', '2021-09-29 04:24:09', '2021-09-29 04:24:09', NULL),
(149, 'home_banner_12_img', '850', '2021-09-29 04:24:09', '2021-10-28 20:54:17', NULL),
(150, 'home_banner_12_link', '#', '2021-09-29 04:24:09', '2021-09-29 04:24:09', NULL),
(151, 'home_product_section_6_title', NULL, '2021-09-29 04:25:05', '2023-04-28 08:00:24', NULL),
(152, 'home_banner_13_img', '46', '2021-09-29 04:25:05', '2021-09-29 04:25:05', NULL),
(153, 'home_banner_13_link', '#', '2021-09-29 04:25:05', '2021-09-29 04:25:05', NULL),
(154, 'home_product_section_6_products', NULL, '2021-09-29 04:25:05', '2023-04-28 08:00:24', NULL),
(155, 'home_banner_9_link', '#', '2021-09-29 04:35:03', '2021-09-29 04:35:03', NULL),
(156, 'home_banner_10_img', '789', '2021-09-29 04:35:03', '2021-10-28 13:33:14', NULL),
(157, 'home_about_us', '<h1><font color=\"#9c9c94\"><b>متجر قرنفلة || هو مكانك المثالي لشراء منتجات العطارة التركية عالية الجودة. نحن نقدم تشكيلة واسعة من الأعشاب والتوابل والشاي التركي التقليدي. تسوق معنا اليوم واستمتع بنكهات فريدة ومنتجات طازجة!</b></font></h1><div>\r\n</div><div>\r\n</div><div>\r\n</div><div>\r\n</div><div>\r\n</div><div>\r\n</div><div>\r\n</div>', '2021-09-29 05:41:11', '2023-04-28 08:01:34', NULL),
(158, 'footer_link_one_title', 'useful_Links', '2021-09-30 01:15:42', '2023-04-09 09:17:54', NULL),
(159, 'footer_link_one_labels', '[\"home\",\"all_categories\",\"all_products\",\"offers\"]', '2021-09-30 01:15:42', '2023-04-09 09:28:16', NULL),
(160, 'footer_link_one_links', '[\"\\/\",\"\\/all-categories\",\"\\/shop\",\"\\/products-delivered-today\"]', '2021-09-30 01:15:42', '2023-04-10 01:17:04', NULL),
(161, 'footer_link_two_title', 'my_account', '2021-09-30 01:18:04', '2023-04-09 09:18:58', NULL),
(162, 'footer_link_two_labels', '[\"login\",\"wishlist\",\"track_order\",\"my_account\"]', '2021-09-30 01:18:04', '2023-04-09 09:24:19', NULL),
(163, 'footer_link_two_links', '[\"\\/user\\/login\",\"\\/user\\/wishlist\",\"\\/track-order\",\"\\/user\\/profile\"]', '2021-09-30 01:18:04', '2023-04-09 09:24:19', NULL),
(164, 'play_store_link', NULL, '2021-09-30 01:18:49', '2023-04-10 01:17:23', NULL),
(165, 'app_store_link', NULL, '2021-09-30 01:18:49', '2023-04-10 01:17:23', NULL),
(166, 'footer_menu_labels', '[\"\\u0627\\u0644\\u0628\\u0646\\u0648\\u062f \\u0648\\u0627\\u0644\\u0634\\u0631\\u0648\\u0637\",\"\\u0633\\u064a\\u0627\\u0633\\u064a\\u0629 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639\",\"\\u0633\\u064a\\u0627\\u0633\\u0629 \\u0627\\u0644\\u0636\\u0645\\u0627\\u0646\",\"\\u0633\\u064a\\u0627\\u0633\\u0629 \\u0627\\u0644\\u062e\\u0635\\u0648\\u0635\\u064a\\u0629\"]', '2021-09-30 05:51:13', '2023-04-09 09:29:35', NULL),
(167, 'footer_menu_links', '[\"\\/terms-and-conditions\",\"\\/return-policy\",\"\\/warranty-policy\",\"\\/privacy-policy\"]', '2021-09-30 05:51:13', '2021-10-13 04:31:48', NULL),
(168, 'footer_social_link', '{\"instagram\":\"#\",\"whatsapp\":\"#\"}', '2021-09-30 06:25:39', '2023-04-12 03:38:20', NULL),
(169, 'topbar_banner', NULL, '2021-10-03 01:27:32', '2023-04-10 01:18:59', NULL),
(170, 'topbar_banner_link', NULL, '2021-10-03 01:27:32', '2023-04-10 01:18:59', NULL),
(171, 'topbar_play_store_link', '#', '2021-10-03 02:09:56', '2021-10-03 02:18:46', NULL),
(172, 'topbar_app_store_link', '#', '2021-10-03 02:09:56', '2021-10-03 02:09:56', NULL),
(173, 'topbar_helpline_number', '+966 50 691 7973', '2021-10-03 02:09:56', '2023-04-08 10:05:38', NULL),
(174, 'header_menu_labels', '[\"\\u0627\\u0644\\u0628\\u0647\\u0627\\u0631\\u0627\\u062a\",\"\\u0627\\u0644\\u0634\\u0627\\u064a\",\"\\u0627\\u0644\\u0635\\u062d\\u0629 \\u0648\\u0627\\u0644\\u062a\\u062c\\u0645\\u064a\\u0644\",\"\\u0645\\u0643\\u0633\\u0631\\u0627\\u062a \\u0648\\u0641\\u0648\\u0627\\u0643\\u0647 \\u0645\\u062c\\u0641\\u0641\\u0629\",\"\\u0627\\u0644\\u0632\\u064a\\u0648\\u062a\"]', '2021-10-03 02:09:56', '2023-05-28 18:58:23', NULL),
(175, 'header_menu_links', '[\"\\/category\\/spices-vceku\\/\",\"\\/category\\/tea\\/\",\"\\/category\\/health-and-beauty\\/\",\"\\/category\\/mksrat-ofoakh-mgff-lz8yk\\/\",\"\\/category\\/oils\\/\"]', '2021-10-03 02:09:56', '2023-05-28 19:36:56', NULL),
(176, 'customer_chat_feature', 'on', '2021-10-03 06:52:18', '2021-10-04 00:08:06', NULL),
(177, 'customer_chat_logo', '895', '2021-10-03 06:52:18', '2021-11-02 09:56:37', NULL),
(178, 'customer_chat_name', 'The korunfula Support', '2021-10-03 06:52:18', '2023-04-08 08:55:39', NULL),
(189, 'invoice_logo', '19', '2021-10-10 00:35:29', '2023-04-10 01:31:47', NULL),
(190, 'invoice_address', 'ksa', '2021-10-10 01:12:52', '2023-04-08 06:54:15', NULL),
(191, 'invoice_email', 'support@korunfula.com', '2021-10-10 01:12:52', '2023-04-08 06:54:15', NULL),
(192, 'invoice_phone', '+966509617973', '2021-10-10 01:12:52', '2023-04-08 06:54:15', NULL),
(193, 'home_slider_1_images', '[null,null,null]', '2021-10-25 17:21:54', '2023-04-11 20:41:02', NULL),
(194, 'home_slider_1_links', '[\"\\/all-categories\",\"\\/all-categories\",\"\\/all-categories\"]', '2021-10-25 17:21:54', '2021-11-07 18:47:38', NULL),
(195, 'home_slider_2_images', '[null,\"1039\",\"1040\"]', '2021-10-25 17:21:54', '2023-04-11 20:41:02', NULL),
(196, 'home_slider_2_links', '[\"\\/all-categories\",\"\\/all-categories\",\"\\/all-categories\"]', '2021-10-25 17:21:54', '2021-11-07 18:51:09', NULL),
(197, 'home_slider_3_images', '[null,\"1042\",\"1043\"]', '2021-10-25 17:21:54', '2023-04-11 20:41:02', NULL),
(198, 'home_slider_3_links', '[\"\\/all-categories\",\"\\/all-categories\",\"\\/all-categories\"]', '2021-10-25 17:21:54', '2021-11-07 18:51:09', NULL),
(199, 'home_slider_4_images', '[\"1044\",\"1045\",\"1046\"]', '2021-10-25 17:21:54', '2021-11-07 18:51:09', NULL),
(200, 'home_slider_4_links', '[\"\\/all-categories\",\"\\/all-categories\",\"\\/all-categories\"]', '2021-10-25 17:21:54', '2021-11-07 18:51:09', NULL),
(201, 'force_cache_clear_version', 'tvuaj5u09ocxgewo7gfanx2rid2kwg', '2021-11-02 13:20:32', '2023-04-26 03:21:19', NULL),
(202, 'login_page_banner', NULL, '2021-11-02 10:02:16', '2023-04-26 03:21:14', NULL),
(203, 'login_page_banner_link', '/all-categories', '2021-11-02 10:02:16', '2021-11-03 02:45:01', NULL),
(204, 'registration_page_banner', '1058', '2021-11-02 10:02:16', '2021-11-07 18:58:27', NULL),
(205, 'registration_page_banner_link', '/all-categories', '2021-11-02 10:02:16', '2021-11-03 02:45:01', NULL),
(206, 'forgot_page_banner', '1060', '2021-11-02 10:02:16', '2021-11-07 18:58:27', NULL),
(207, 'forgot_page_banner_link', '/all-categories', '2021-11-02 10:02:16', '2021-11-03 02:45:01', NULL),
(208, 'listing_page_banner', '904', '2021-11-02 10:02:16', '2021-11-02 11:19:41', NULL),
(209, 'listing_page_banner_link', '/all-categories', '2021-11-02 10:02:16', '2021-11-03 02:45:01', NULL),
(210, 'product_page_banner', '1061', '2021-11-02 10:02:16', '2021-11-07 18:58:27', NULL),
(211, 'product_page_banner_link', '/all-categories', '2021-11-02 10:02:16', '2021-11-03 02:45:01', NULL),
(212, 'checkout_page_banner', '1062', '2021-11-02 10:02:16', '2021-11-07 18:58:27', NULL),
(213, 'checkout_page_banner_link', '/all-categories', '2021-11-02 10:02:16', '2021-11-03 02:45:01', NULL),
(214, 'dashboard_page_top_banner', '938', '2021-11-02 10:02:16', '2021-11-02 11:19:07', NULL),
(215, 'dashboard_page_top_banner_link', '/user/dashboard', '2021-11-02 10:02:16', '2021-11-03 02:45:01', NULL),
(216, 'dashboard_page_bottom_banner', '1063', '2021-11-02 10:02:16', '2021-11-07 18:58:27', NULL),
(217, 'dashboard_page_bottom_banner_link', '/all-offers', '2021-11-02 10:02:16', '2021-11-03 02:45:01', NULL),
(218, 'home_banner_1_images', '[\"1047\"]', '2021-11-02 10:13:37', '2021-11-07 18:52:02', NULL),
(219, 'home_banner_1_links', '[\"\\/all-offers\"]', '2021-11-02 10:13:37', '2021-11-03 02:26:17', NULL),
(220, 'home_banner_2_images', NULL, '2021-11-02 10:15:02', '2023-04-09 08:14:55', NULL),
(221, 'home_banner_2_links', NULL, '2021-11-02 10:15:02', '2023-04-09 08:14:55', NULL),
(222, 'home_banner_3_images', NULL, '2021-11-02 10:15:53', '2023-04-09 08:11:08', NULL),
(223, 'home_banner_3_links', NULL, '2021-11-02 10:15:53', '2023-04-09 08:11:08', NULL),
(224, 'home_product_section_3_banner_img', NULL, '2021-11-02 10:16:51', '2023-04-28 07:59:11', NULL),
(225, 'home_product_section_3_banner_link', '/products-delivered-today', '2021-11-02 10:16:51', '2023-04-10 01:53:00', NULL),
(226, 'home_banner_4_images', NULL, '2021-11-02 10:18:56', '2023-04-09 08:14:44', NULL),
(227, 'home_banner_4_links', NULL, '2021-11-02 10:18:56', '2023-04-09 08:14:44', NULL),
(228, 'home_product_section_6_banner_img', NULL, '2021-11-02 10:19:43', '2023-04-28 08:00:24', NULL),
(229, 'home_product_section_6_banner_link', '/category', '2021-11-02 10:19:43', '2023-04-09 08:12:07', NULL),
(230, 'paystack_payment', '0', '2021-11-08 18:25:19', '2023-04-09 17:52:37', NULL),
(231, 'flutterwave_payment', '0', '2021-11-08 18:25:20', '2023-04-09 17:52:36', NULL),
(232, 'paytm_payment', '0', '2021-11-08 18:25:21', '2023-04-09 17:52:38', NULL),
(233, 'refund_request_time_period', '30', '2022-03-13 10:55:42', '2022-03-13 10:55:42', NULL),
(234, 'refund_request_order_status', '[\"delivered\"]', '2022-03-13 10:55:42', '2022-03-13 10:55:42', NULL),
(235, 'refund_reason_types', '[\"Ordered the wrong product\",\"The merchant shipped the wrong product\",\"The product is damaged or defective\",\"The product arrived too late\",\"The product do not match the description\"]', '2022-03-13 10:55:42', '2022-03-13 10:55:42', NULL),
(236, 'customer_login_with', 'email', '2022-03-29 12:40:59', '2023-04-13 02:57:33', NULL),
(237, 'customer_otp_with', 'email', '2022-03-29 12:40:59', '2023-04-23 23:15:13', NULL),
(238, 'offline_payment', '0', '2022-03-29 12:40:59', '2023-04-09 02:08:04', NULL),
(239, 'min_withdrawal_amount', '0', '2023-04-04 09:04:07', '2023-04-04 09:04:07', NULL),
(240, 'iyzico_sandbox', '1', '2023-04-04 09:04:08', '2023-04-04 09:04:08', NULL),
(241, 'active_sms_gateway', 'twilio', '2023-04-06 10:59:12', '2023-04-13 02:14:14', NULL),
(242, 'maintenance_mode', '0', '2023-04-06 11:21:07', '2023-04-08 08:55:14', NULL),
(243, 'shop_registration_message_title', NULL, '2023-04-08 06:55:04', '2023-04-08 06:55:04', NULL),
(244, 'shop_registration_message_content', NULL, '2023-04-08 06:55:04', '2023-04-08 06:55:04', NULL),
(245, 'show_language_switcher', 'on', '2023-04-08 10:05:38', '2023-04-08 10:05:38', NULL),
(246, 'show_topbar_play_store_link', NULL, '2023-04-08 10:05:38', '2023-04-08 10:05:38', NULL),
(247, 'show_topbar_app_store_link', NULL, '2023-04-08 10:05:38', '2023-04-08 10:05:38', NULL),
(248, 'sticky_header', '1', '2023-04-09 02:08:12', '2023-04-09 02:08:12', NULL),
(249, 'mada_payment', '1', '2018-10-28 07:45:16', '2023-04-25 06:29:05', NULL),
(250, 'product_comparison', '0', '2023-04-11 20:26:59', '2023-04-11 23:12:17', NULL),
(251, 'mada_sandbox', '1', '2019-01-16 12:44:18', '2019-01-16 12:44:18', NULL),
(252, 'web_custom_css', NULL, '2023-04-28 06:38:50', '2023-04-28 06:38:50', NULL),
(253, 'header_script', NULL, '2023-04-28 06:38:50', '2023-04-28 06:38:50', NULL),
(254, 'footer_script', NULL, '2023-04-28 06:38:50', '2023-04-28 06:38:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `approval` tinyint(1) NOT NULL DEFAULT 0,
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(200) DEFAULT NULL,
  `logo` int(11) DEFAULT NULL,
  `min_order` double(20,2) NOT NULL DEFAULT 0.00,
  `rating` double(8,2) NOT NULL DEFAULT 0.00,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `banners` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `featured_products` varchar(255) DEFAULT NULL,
  `products_banners` text DEFAULT NULL,
  `banners_1` text DEFAULT NULL,
  `banners_2` text DEFAULT NULL,
  `banners_3` text DEFAULT NULL,
  `banners_4` text DEFAULT NULL,
  `seller_package_id` int(11) DEFAULT NULL,
  `product_upload_limit` int(11) NOT NULL DEFAULT 0,
  `commission` double(15,2) DEFAULT 0.00,
  `package_invalid_at` date DEFAULT NULL,
  `current_balance` double(20,2) NOT NULL DEFAULT 0.00,
  `cash_payout_status` int(1) NOT NULL DEFAULT 0,
  `bank_payout_status` int(1) NOT NULL DEFAULT 0,
  `bank_name` varchar(255) DEFAULT NULL,
  `bank_acc_name` varchar(255) DEFAULT NULL,
  `bank_acc_no` varchar(50) DEFAULT NULL,
  `bank_routing_no` int(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`id`, `user_id`, `approval`, `published`, `name`, `logo`, `min_order`, `rating`, `phone`, `address`, `banners`, `slug`, `meta_title`, `meta_description`, `featured_products`, `products_banners`, `banners_1`, `banners_2`, `banners_3`, `banners_4`, `seller_package_id`, `product_upload_limit`, `commission`, `package_invalid_at`, `current_balance`, `cash_payout_status`, `bank_payout_status`, `bank_name`, `bank_acc_name`, `bank_acc_no`, `bank_routing_no`, `created_at`, `updated_at`, `deleted_at`) VALUES
(6, 1, 1, 1, 'Inhouse Shop', NULL, 100.00, 0.00, NULL, NULL, NULL, 'inhouse-shop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0.00, NULL, 0.00, 0, 0, NULL, NULL, NULL, NULL, '2023-04-06 07:35:34', '2023-04-08 09:48:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shop_brands`
--

CREATE TABLE `shop_brands` (
  `id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop_categories`
--

CREATE TABLE `shop_categories` (
  `id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shop_categories`
--

INSERT INTO `shop_categories` (`id`, `shop_id`, `category_id`, `created_at`, `updated_at`) VALUES
(80, 6, 1, '2023-04-06 03:46:16', '2023-04-06 03:46:16'),
(81, 6, 2, '2023-04-08 19:18:34', '2023-04-08 19:18:34'),
(82, 6, 4, '2023-04-29 01:51:08', '2023-04-29 01:51:08'),
(83, 6, 3, '2023-06-11 22:34:04', '2023-06-11 22:34:04');

-- --------------------------------------------------------

--
-- Table structure for table `shop_followers`
--

CREATE TABLE `shop_followers` (
  `id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `country_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `country_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Riyadh', 1, 1, '2023-04-24 17:01:07', '2023-04-25 23:31:33', NULL),
(2, 'Makkah', 1, 1, '2023-04-24 17:01:07', '2023-04-24 17:13:10', NULL),
(3, 'Madinah', 1, 1, '2023-04-25 03:17:01', '2023-04-25 03:17:01', NULL),
(4, 'Qaseem', 1, 1, '2023-04-25 03:54:58', '2023-04-25 03:55:06', NULL),
(5, 'Abha', 1, 1, '2023-04-25 04:03:03', '2023-04-25 04:03:03', NULL),
(6, 'Hail', 1, 1, '2023-04-25 04:03:03', '2023-04-25 04:03:03', NULL),
(7, 'Tabouk', 1, 1, '2023-04-25 04:03:03', '2023-04-25 04:03:03', NULL),
(8, 'Al-Baha', 1, 1, '2023-04-25 04:03:03', '2023-04-25 04:03:03', NULL),
(9, 'Arar', 1, 1, '2023-04-25 05:14:46', '2023-04-25 05:14:46', NULL),
(10, 'Sakaka', 1, 1, '2023-04-25 05:21:16', '2023-04-25 05:21:16', NULL),
(11, 'Jazan', 1, 0, '2023-04-25 05:26:09', '2023-04-25 23:31:45', NULL),
(12, 'Najran', 1, 1, '2023-04-25 05:26:09', '2023-04-25 05:26:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `state_translations`
--

CREATE TABLE `state_translations` (
  `id` int(11) NOT NULL,
  `state_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `state_translations`
--

INSERT INTO `state_translations` (`id`, `state_id`, `name`, `lang`, `created_at`, `updated_at`) VALUES
(3, 1, 'Riyadh', 'en', '2023-04-25 00:13:40', '2023-04-25 00:13:40'),
(4, 1, 'الرياض', 'ar', '2023-04-25 00:13:55', '2023-04-25 00:13:55'),
(5, 2, 'Makkah', 'en', '2023-04-25 00:13:40', '2023-04-25 00:13:40'),
(6, 2, 'مكة', 'ar', '2023-04-25 00:13:55', '2023-04-25 00:13:55'),
(7, 3, 'Al-Madinah', 'en', '2023-04-25 00:13:40', '2023-04-25 00:13:40'),
(8, 3, 'المدينة المنورة', 'ar', '2023-04-25 00:13:55', '2023-04-25 00:13:55'),
(9, 4, 'Buraydah', 'en', '2023-04-25 00:13:40', '2023-04-25 00:13:40'),
(10, 4, 'بريدة', 'ar', '2023-04-25 00:13:55', '2023-04-25 00:13:55'),
(11, 5, 'Abha', 'en', '2023-04-25 00:13:40', '2023-04-25 00:13:40'),
(12, 5, 'أبها', 'ar', '2023-04-25 00:13:55', '2023-04-25 00:13:55'),
(13, 6, 'Hail', 'en', '2023-04-25 00:13:40', '2023-04-25 00:13:40'),
(14, 6, 'حائل', 'ar', '2023-04-25 00:13:55', '2023-04-25 00:13:55'),
(15, 7, 'Tabouk', 'en', '2023-04-25 00:13:40', '2023-04-25 00:13:40'),
(16, 7, 'تبوك', 'ar', '2023-04-25 00:13:55', '2023-04-25 00:13:55'),
(17, 8, 'Al-Baha', 'en', '2023-04-25 00:13:40', '2023-04-25 00:13:40'),
(18, 8, 'الباحة', 'ar', '2023-04-25 00:13:55', '2023-04-25 00:13:55'),
(19, 9, 'Arar', 'en', '2023-04-25 00:13:40', '2023-04-25 00:13:40'),
(20, 9, 'عرعر', 'ar', '2023-04-25 00:13:55', '2023-04-25 00:13:55'),
(21, 10, 'Sakaka', 'en', '2023-04-25 00:13:40', '2023-04-25 00:13:40'),
(22, 10, 'سكاكا', 'ar', '2023-04-25 00:13:55', '2023-04-25 00:13:55'),
(23, 11, 'Jazan', 'en', '2023-04-25 00:13:40', '2023-04-25 00:13:40'),
(24, 11, 'جازان', 'ar', '2023-04-25 00:13:55', '2023-04-25 00:13:55'),
(25, 12, 'Najran', 'en', '2023-04-25 00:13:40', '2023-04-25 00:13:40'),
(26, 12, 'نجران', 'ar', '2023-04-25 00:13:55', '2023-04-25 00:13:55');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'laurel.cremin@wls1.com', '2023-04-07 13:17:00', '2023-04-07 13:17:00', NULL),
(2, 'brandonfarmer75@outlook.com', '2023-04-07 13:17:48', '2023-04-07 13:17:48', NULL),
(3, 'keithbarrows88@aol.com', '2023-04-07 13:18:33', '2023-04-07 13:18:33', NULL),
(4, 'daniel.andreassen@wls1.com', '2023-04-07 13:20:42', '2023-04-07 13:20:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'SaudiTax', '2023-04-08 09:47:10', '2023-04-08 09:47:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(11) NOT NULL,
  `lang` varchar(10) DEFAULT NULL,
  `lang_key` text DEFAULT NULL,
  `lang_value` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `lang`, `lang_key`, `lang_value`, `created_at`, `updated_at`) VALUES
(1, 'en', 'all_products', 'All products\r\n', '2021-10-31 07:41:09', '2021-10-31 07:45:41'),
(2, 'en', 'add_new_product', 'Add New Product', '2021-10-31 07:41:09', '2021-10-31 07:41:09'),
(3, 'en', 'sort_by', 'Sort by\r\n', '2021-10-31 07:41:09', '2021-10-31 07:45:41'),
(4, 'en', 'rating_high__low', 'Rating (High > Low)', '2021-10-31 07:41:09', '2021-10-31 07:41:09'),
(5, 'en', 'rating_low__high', 'Rating (Low > High)', '2021-10-31 07:41:09', '2021-10-31 07:41:09'),
(6, 'en', 'num_of_sale_high__low', 'Num of Sale (High > Low)', '2021-10-31 07:41:09', '2021-10-31 07:41:09'),
(7, 'en', 'num_of_sale_low__high', 'Num of Sale (Low > High)', '2021-10-31 07:41:09', '2021-10-31 07:41:09'),
(8, 'en', 'base_price_high__low', 'Base Price (High > Low)', '2021-10-31 07:41:09', '2021-10-31 07:41:09'),
(9, 'en', 'base_price_low__high', 'Base Price (Low > High)', '2021-10-31 07:41:09', '2021-10-31 07:41:09'),
(10, 'en', 'type__enter', 'Type & Enter', '2021-10-31 07:41:09', '2021-10-31 07:41:09'),
(11, 'en', 'name', 'Name\r\n', '2021-10-31 07:41:09', '2021-10-31 07:45:41'),
(12, 'en', 'info', 'Info\r\n', '2021-10-31 07:41:09', '2023-04-06 07:35:35'),
(13, 'en', 'categories', 'Categories\r\n', '2021-10-31 07:41:09', '2021-10-31 07:45:41'),
(14, 'en', 'brand', 'Brand', '2021-10-31 07:41:09', '2021-10-31 07:41:09'),
(15, 'en', 'published', 'Published', '2021-10-31 07:41:09', '2021-10-31 07:41:09'),
(16, 'en', 'options', 'Options\r\n', '2021-10-31 07:41:09', '2021-10-31 07:45:43'),
(17, 'en', 'rating', 'Rating\r\n', '2021-10-31 07:41:09', '2021-10-31 07:45:44'),
(18, 'en', 'toal_sold', 'Toal Sold', '2021-10-31 07:41:09', '2021-10-31 07:41:09'),
(19, 'en', 'price', 'Price\r\n', '2021-10-31 07:41:09', '2021-10-31 07:45:41'),
(20, 'en', 'edit', 'Edit\r\n', '2021-10-31 07:41:09', '2021-10-31 07:45:43'),
(21, 'en', 'duplicate', 'Duplicate', '2021-10-31 07:41:09', '2021-10-31 07:41:09'),
(22, 'en', 'delete', 'Delete\r\n', '2021-10-31 07:41:09', '2021-10-31 07:45:43'),
(23, 'en', 'delete_confirmation', 'Delete Confirmation', '2021-10-31 07:41:09', '2021-10-31 07:41:09'),
(24, 'en', 'are_you_sure_to_delete_this', 'Are you sure to delete this?', '2021-10-31 07:41:09', '2021-10-31 07:41:09'),
(25, 'en', 'all_data_related_to_this_will_be_deleted', 'All data related to this will be deleted.', '2021-10-31 07:41:09', '2021-10-31 07:41:09'),
(26, 'en', 'cancel', 'Cancel\r\n', '2021-10-31 07:41:09', '2021-10-31 07:45:42'),
(27, 'en', 'yes_delete', 'Yes, Delete', '2021-10-31 07:41:09', '2021-10-31 07:41:09'),
(28, 'en', 'published_products_updated_successfully', 'Published products updated successfully', '2021-10-31 07:41:09', '2021-10-31 07:41:09'),
(29, 'en', 'something_went_wrong', 'Something went wrong\r\n', '2021-10-31 07:41:09', '2021-11-03 08:08:21'),
(30, 'en', 'nothing_selected', 'Nothing selected', '2021-10-31 07:41:09', '2021-10-31 07:41:09'),
(31, 'en', 'nothing_found', 'Nothing found', '2021-10-31 07:41:09', '2021-10-31 07:41:09'),
(32, 'en', 'choose_file', 'Choose file', '2021-10-31 07:41:09', '2021-10-31 07:41:09'),
(33, 'en', 'file_selected', 'File selected', '2021-10-31 07:41:09', '2021-10-31 07:41:09'),
(34, 'en', 'files_selected', 'Files selected', '2021-10-31 07:41:09', '2021-10-31 07:41:09'),
(35, 'en', 'add_more_files', 'Add more files', '2021-10-31 07:41:09', '2021-10-31 07:41:09'),
(36, 'en', 'adding_more_files', 'Adding more files', '2021-10-31 07:41:09', '2021-10-31 07:41:09'),
(37, 'en', 'drop_files_here_paste_or', 'Drop files here, paste or', '2021-10-31 07:41:09', '2021-10-31 07:41:09'),
(38, 'en', 'browse', 'Browse', '2021-10-31 07:41:09', '2021-10-31 07:41:09'),
(39, 'en', 'upload_complete', 'Upload complete', '2021-10-31 07:41:09', '2021-10-31 07:41:09'),
(40, 'en', 'upload_paused', 'Upload paused', '2021-10-31 07:41:09', '2021-10-31 07:41:09'),
(41, 'en', 'resume_upload', 'Resume upload', '2021-10-31 07:41:09', '2021-10-31 07:41:09'),
(42, 'en', 'pause_upload', 'Pause upload', '2021-10-31 07:41:09', '2021-10-31 07:41:09'),
(43, 'en', 'retry_upload', 'Retry upload', '2021-10-31 07:41:09', '2021-10-31 07:41:09'),
(44, 'en', 'cancel_upload', 'Cancel upload', '2021-10-31 07:41:09', '2021-10-31 07:41:09'),
(45, 'en', 'uploading', 'Uploading', '2021-10-31 07:41:09', '2021-10-31 07:41:09'),
(46, 'en', 'processing', 'Processing', '2021-10-31 07:41:09', '2021-10-31 07:41:09'),
(47, 'en', 'complete', 'Complete', '2021-10-31 07:41:09', '2021-10-31 07:41:09'),
(48, 'en', 'file', 'File', '2021-10-31 07:41:09', '2021-10-31 07:41:09'),
(49, 'en', 'files', 'Files', '2021-10-31 07:41:09', '2021-10-31 07:41:09'),
(50, 'en', 'dashboard', 'Dashboard\r\n', '2021-10-31 07:41:09', '2021-10-31 07:45:41'),
(51, 'en', 'product', 'Product\r\n', '2021-10-31 07:41:09', '2021-10-31 07:45:41'),
(52, 'en', 'products', 'products\r\n', '2021-10-31 07:41:09', '2021-10-31 07:45:41'),
(53, 'en', 'category', 'Category', '2021-10-31 07:41:09', '2021-10-31 07:41:09'),
(54, 'en', 'attributes', 'Attributes', '2021-10-31 07:41:09', '2021-10-31 07:41:09'),
(55, 'en', 'reviews', 'Reviews', '2021-10-31 07:41:09', '2021-10-31 07:41:09'),
(56, 'en', 'orders', 'Orders', '2021-10-31 07:41:09', '2021-10-31 07:41:09'),
(57, 'en', 'customers', 'Customers', '2021-10-31 07:41:09', '2021-10-31 07:41:09'),
(58, 'en', 'marketing', 'Marketing', '2021-10-31 07:41:09', '2021-10-31 07:41:09'),
(59, 'en', 'offers', 'Products delivered today', '2021-10-31 07:41:09', '2023-04-09 07:43:49'),
(60, 'en', 'newsletters', 'Newsletters', '2021-10-31 07:41:09', '2021-10-31 07:41:09'),
(61, 'en', 'subscribers', 'Subscribers', '2021-10-31 07:41:09', '2021-10-31 07:41:09'),
(62, 'en', 'coupon', 'Coupon', '2021-10-31 07:41:09', '2021-10-31 07:41:09'),
(63, 'en', 'uploaded_files', 'Uploaded Files', '2021-10-31 07:41:09', '2021-10-31 07:41:09'),
(64, 'en', 'support', 'Support', '2021-10-31 07:41:09', '2021-10-31 07:41:09'),
(65, 'en', 'website_setup', 'Website Setup', '2021-10-31 07:41:09', '2021-10-31 07:41:09'),
(66, 'en', 'header', 'Header', '2021-10-31 07:41:09', '2021-10-31 07:41:09'),
(67, 'en', 'footer', 'Footer', '2021-10-31 07:41:09', '2021-10-31 07:41:09'),
(68, 'en', 'banners', 'Banners', '2021-10-31 07:41:09', '2021-10-31 07:41:09'),
(69, 'en', 'pages', 'Pages', '2021-10-31 07:41:09', '2021-10-31 07:41:09'),
(70, 'en', 'appearance', 'Appearance', '2021-10-31 07:41:10', '2021-10-31 07:41:10'),
(71, 'en', 'settings', 'Settings', '2021-10-31 07:41:10', '2021-10-31 07:41:10'),
(72, 'en', 'general_settings', 'General Settings', '2021-10-31 07:41:10', '2021-10-31 07:41:10'),
(73, 'en', 'languages', 'Languages', '2021-10-31 07:41:10', '2021-10-31 07:41:10'),
(74, 'en', 'currency', 'Currency', '2021-10-31 07:41:10', '2021-10-31 07:41:10'),
(75, 'en', 'smtp_settings', 'SMTP Settings', '2021-10-31 07:41:10', '2021-10-31 07:41:10'),
(76, 'en', 'payment_methods', 'Payment Methods', '2021-10-31 07:41:10', '2021-10-31 07:41:10'),
(77, 'en', 'file_system_configuration', 'File System Configuration', '2021-10-31 07:41:10', '2021-10-31 07:41:10'),
(78, 'en', 'social_media_logins', 'Social media Logins', '2021-10-31 07:41:10', '2021-10-31 07:41:10'),
(79, 'en', 'third_party_settings', 'Third Party Settings', '2021-10-31 07:41:10', '2021-10-31 07:41:10'),
(80, 'en', 'shipping', 'Shipping', '2021-10-31 07:41:10', '2021-10-31 07:41:10'),
(81, 'en', 'shipping_countries', 'Shipping Countries', '2021-10-31 07:41:10', '2021-10-31 07:41:10'),
(82, 'en', 'shipping_states', 'Shipping States', '2021-10-31 07:41:10', '2021-10-31 07:41:10'),
(83, 'en', 'shipping_cities', 'Shipping Cities', '2021-10-31 07:41:10', '2021-10-31 07:41:10'),
(84, 'en', 'shipping_zones', 'Shipping Zones', '2021-10-31 07:41:10', '2021-10-31 07:41:10'),
(85, 'en', 'tax', 'Tax\r\n', '2021-10-31 07:41:10', '2021-10-31 07:45:42'),
(86, 'en', 'staffs', 'Staffs', '2021-10-31 07:41:10', '2021-10-31 07:41:10'),
(87, 'en', 'all_staffs', 'All Staffs', '2021-10-31 07:41:10', '2021-10-31 07:41:10'),
(88, 'en', 'roles', 'Roles', '2021-10-31 07:41:10', '2021-10-31 07:41:10'),
(89, 'en', 'system', 'System', '2021-10-31 07:41:10', '2021-10-31 07:41:10'),
(90, 'en', 'update', 'Update\r\n', '2021-10-31 07:41:10', '2021-10-31 07:45:42'),
(91, 'en', 'server_status', 'Server status', '2021-10-31 07:41:10', '2021-10-31 07:41:10'),
(92, 'en', 'addon_manager', 'Addon Manager', '2021-10-31 07:41:10', '2021-10-31 07:41:10'),
(93, 'en', 'browse_website', 'Browse Website', '2021-10-31 07:41:10', '2021-10-31 07:41:10'),
(94, 'en', 'add_new', 'Add New\r\n', '2021-10-31 07:41:10', '2021-10-31 07:45:42'),
(95, 'en', 'add_new_coupon', 'Add new coupon', '2021-10-31 07:41:10', '2021-10-31 07:41:10'),
(96, 'en', 'add_new_offer', 'Add New Offer', '2021-10-31 07:41:10', '2021-10-31 07:41:10'),
(97, 'en', 'add_new_staff', 'Add New Staff', '2021-10-31 07:41:10', '2021-10-31 07:41:10'),
(98, 'en', 'notifications', 'Notifications', '2021-10-31 07:41:10', '2021-10-31 07:41:10'),
(99, 'en', 'new_notification', 'New Notification', '2021-10-31 07:41:10', '2021-10-31 07:41:10'),
(100, 'en', 'profile', 'Profile\r\n', '2021-10-31 07:41:10', '2021-10-31 07:45:43'),
(101, 'en', 'logout', 'Logout\r\n', '2021-10-31 07:41:10', '2021-10-31 07:45:41'),
(102, 'en', 'edit_product', 'Edit Product', '2021-10-31 07:41:32', '2021-10-31 07:41:32'),
(103, 'en', 'product_information', 'Product Information', '2021-10-31 07:41:32', '2021-10-31 07:41:32'),
(104, 'en', 'product_name', 'Product Name\r\n', '2021-10-31 07:41:32', '2023-04-06 07:35:35'),
(105, 'en', 'translatable', 'Translatable', '2021-10-31 07:41:32', '2021-10-31 07:41:32'),
(106, 'en', 'unit', 'Unit', '2021-10-31 07:41:32', '2021-10-31 07:41:32'),
(107, 'en', 'unit_eg_500_gram_2_litre_5_pc_etc', 'Unit (e.g. 500 Gram, 2 Litre, 5 Pc etc)', '2021-10-31 07:41:32', '2021-10-31 07:41:32'),
(108, 'en', 'minimum_purchase_qty', 'Minimum Purchase Qty', '2021-10-31 07:41:32', '2021-10-31 07:41:32'),
(109, 'en', 'customer_need_to_purchase_this_minimum_quatity_for_this_product_minimum_should_be_1', 'Customer need to purchase this minimum quatity for this product. Minimum should be 1.', '2021-10-31 07:41:32', '2021-10-31 07:41:32'),
(110, 'en', 'maximum_purchase_qty', 'Maximum Purchase Qty', '2021-10-31 07:41:32', '2021-10-31 07:41:32'),
(111, 'en', 'customer_will_be_able_to_purchase_this_maximum_quatity_for_this_product_default_0_for_unlimited', 'Customer will be able to purchase this maximum quatity for this product. Default 0 for unlimited.', '2021-10-31 07:41:32', '2021-10-31 07:41:32'),
(112, 'en', 'product_images', 'Product Images', '2021-10-31 07:41:32', '2021-10-31 07:41:32'),
(113, 'en', 'thumbnail_image', 'Thumbnail Image', '2021-10-31 07:41:32', '2021-10-31 07:41:32'),
(114, 'en', 'this_image_is_visible_in_all_product_box_use_300x300_sizes_image_keep_some_blank_space_around_the_main_object_of_your_image_as_we_had_to_crop_some_edge_in_different_devices_to_make_it_responsive', 'This image is visible in all product box. Use 300x300 sizes image. Keep some blank space around the main object of your image as we had to crop some edge in different devices to make it responsive.', '2021-10-31 07:41:32', '2021-10-31 07:41:32'),
(115, 'en', 'gallery_images', 'Gallery Images', '2021-10-31 07:41:32', '2021-10-31 07:41:32'),
(116, 'en', 'these_images_are_visible_in_the_product_details_page_gallery_use_600x600_or_higher_sizes_images_for_better_quality_but_try_to_keep_file_size_low_as_itll_increase_page_load_time', 'These images are visible in the product details page gallery. Use 600x600 or higher sizes images for better quality. But try to keep file size low as it\'ll increase page load time.', '2021-10-31 07:41:33', '2021-10-31 07:41:33'),
(117, 'en', 'product_price_stock', 'Product price, stock', '2021-10-31 07:41:33', '2021-10-31 07:41:33'),
(118, 'en', 'variant_product', 'Variant Product', '2021-10-31 07:41:33', '2021-10-31 07:41:33'),
(119, 'en', 'regular_price', 'Regular price', '2021-10-31 07:41:33', '2021-10-31 07:41:33'),
(120, 'en', 'sku', 'SKU', '2021-10-31 07:41:33', '2021-10-31 07:41:33'),
(121, 'en', 'stock', 'Stock', '2021-10-31 07:41:33', '2021-10-31 07:41:33'),
(122, 'en', 'in_stock', 'In Stock\r\n', '2021-10-31 07:41:33', '2021-10-31 07:45:42'),
(123, 'en', 'out_of_stock', 'Out of Stock\r\n', '2021-10-31 07:41:33', '2021-10-31 07:45:42'),
(124, 'en', 'select_an_option_for_this_product_and_then_select_choices_of_each_option_max_3_options', 'Select an option for this product and then select choices of each option. Max 3 options', '2021-10-31 07:41:33', '2021-10-31 07:41:33'),
(125, 'en', 'select_an_option', 'Select an option', '2021-10-31 07:41:33', '2021-10-31 07:41:33'),
(126, 'en', 'variant', 'Variant', '2021-10-31 07:41:33', '2021-10-31 07:41:33'),
(127, 'en', 'variant_price', 'Variant Price', '2021-10-31 07:41:33', '2021-10-31 07:41:33'),
(128, 'en', 'image', 'Image', '2021-10-31 07:41:33', '2021-10-31 07:41:33'),
(129, 'en', 'product_discount', 'Product Discount', '2021-10-31 07:41:33', '2021-10-31 07:41:33'),
(130, 'en', 'discount_date_range', 'Discount Date Range', '2021-10-31 07:41:33', '2021-10-31 07:41:33'),
(131, 'en', 'discount', 'Discount\r\n', '2021-10-31 07:41:33', '2021-10-31 07:45:42'),
(132, 'en', 'flat', 'Flat', '2021-10-31 07:41:33', '2021-10-31 07:41:33'),
(133, 'en', 'percent', 'Percent', '2021-10-31 07:41:33', '2021-10-31 07:41:33'),
(134, 'en', 'shipping_information', 'Shipping Information', '2021-10-31 07:41:33', '2021-10-31 07:41:33'),
(135, 'en', 'standard_delivery_time', 'Standard delivery time', '2021-10-31 07:41:33', '2021-10-31 07:41:33'),
(136, 'en', 'express_delivery_time', 'Express delivery time', '2021-10-31 07:41:33', '2021-10-31 07:41:33'),
(137, 'en', 'weight', 'Weight', '2021-10-31 07:41:33', '2021-10-31 07:41:33'),
(138, 'en', 'height', 'Height', '2021-10-31 07:41:33', '2021-10-31 07:41:33'),
(139, 'en', 'length', 'Length', '2021-10-31 07:41:33', '2021-10-31 07:41:33'),
(140, 'en', 'width', 'Width', '2021-10-31 07:41:33', '2021-10-31 07:41:33'),
(141, 'en', 'product_description', 'Product Description', '2021-10-31 07:41:33', '2021-10-31 07:41:33'),
(142, 'en', 'description', 'Description\r\n', '2021-10-31 07:41:33', '2021-10-31 07:45:43'),
(143, 'en', 'product_attributes', 'Product attributes', '2021-10-31 07:41:33', '2021-10-31 07:41:33'),
(144, 'en', 'add_new_attribute', 'Add new attribute', '2021-10-31 07:41:33', '2021-10-31 07:41:33'),
(145, 'en', 'these_attributes_will_be_used_only_for_filtering', 'These attributes will be used only for filtering.', '2021-10-31 07:41:33', '2021-10-31 07:41:33'),
(146, 'en', 'seo_meta_tags', 'SEO Meta Tags', '2021-10-31 07:41:33', '2021-10-31 07:41:33'),
(147, 'en', 'meta_title', 'Meta Title', '2021-10-31 07:41:33', '2021-10-31 07:41:33'),
(148, 'en', 'meta_image', 'Meta Image', '2021-10-31 07:41:33', '2021-10-31 07:41:33'),
(149, 'en', 'slug', 'Slug', '2021-10-31 07:41:33', '2021-10-31 07:41:33'),
(150, 'en', 'product_status', 'Product Status', '2021-10-31 07:41:33', '2021-10-31 07:41:33'),
(151, 'en', 'draft', 'Draft', '2021-10-31 07:41:33', '2021-10-31 07:41:33'),
(152, 'en', 'product_brand', 'Product Brand', '2021-10-31 07:41:33', '2021-10-31 07:41:33'),
(153, 'en', 'select_brand', 'Select Brand', '2021-10-31 07:41:33', '2021-10-31 07:41:33'),
(154, 'en', 'product_category', 'Product Category', '2021-10-31 07:41:33', '2021-10-31 07:41:33'),
(155, 'en', 'product_tags', 'Product Tags', '2021-10-31 07:41:33', '2021-10-31 07:41:33'),
(156, 'en', 'type_and_hit_enter_to_add_a_tag', 'Type and hit enter to add a tag', '2021-10-31 07:41:33', '2021-10-31 07:41:33'),
(157, 'en', 'these_will_be_used_for_product_search', 'These will be used for product search.', '2021-10-31 07:41:33', '2021-10-31 07:41:33'),
(158, 'en', 'vat__tax', 'VAT & Tax', '2021-10-31 07:41:33', '2021-10-31 07:41:33'),
(159, 'en', 'sorry_for_the_inconvenience_but_were_working_on_it', 'Sorry for the inconvenience, but we\'re working on it.', '2021-10-31 07:41:33', '2021-10-31 07:41:33'),
(160, 'en', 'error_code', 'Error code', '2021-10-31 07:41:33', '2021-10-31 07:41:33'),
(161, 'en', 'warranty', 'Warranty', '2021-10-31 07:43:59', '2021-10-31 07:43:59'),
(162, 'en', 'warranty_available_for_this_product', 'Warranty available for this product?', '2021-10-31 07:43:59', '2021-10-31 07:43:59'),
(163, 'en', 'update_product', 'Update Product', '2021-10-31 07:43:59', '2021-10-31 07:43:59'),
(164, 'en', 'please_select_an_attribute', 'Please select an attribute.', '2021-10-31 07:43:59', '2021-10-31 07:43:59'),
(165, 'en', 'no_more_arrtribute_found', 'No more arrtribute found.', '2021-10-31 07:43:59', '2021-10-31 07:43:59'),
(166, 'en', 'maximum_option_limit_reached', 'Maximum option limit reached.', '2021-10-31 07:43:59', '2021-10-31 07:43:59'),
(167, 'en', 'please_select_an_option', 'Please select an option.', '2021-10-31 07:43:59', '2021-10-31 07:43:59'),
(168, 'en', 'no_more_option_found', 'No more option found.', '2021-10-31 07:43:59', '2021-10-31 07:43:59'),
(169, 'en', 'product_has_been_updated_successfully', 'Product has been updated successfully', '2021-10-31 07:44:08', '2021-10-31 07:44:08'),
(170, 'en', 'product_not_found', 'Product not found', '2021-10-31 07:45:19', '2021-10-31 07:45:19'),
(171, 'en', 'popular_categories', 'Popular Categories\r\n', '2021-10-31 07:45:41', '2021-10-31 07:45:41'),
(172, 'en', 'todays_deal', 'Todays Deal\r\n', '2021-10-31 07:45:41', '2021-10-31 07:45:41'),
(173, 'en', 'get_your_special_offers_coupons__more', 'Get your special offers, Coupons & More...\r\n', '2021-10-31 07:45:41', '2021-10-31 07:45:41'),
(174, 'en', 'contact_us', 'Contact Us\r\n', '2021-10-31 07:45:41', '2021-10-31 07:45:41'),
(175, 'en', 'mobile_apps', 'Mobile Apps\r\n', '2021-10-31 07:45:41', '2021-10-31 07:45:41'),
(176, 'en', 'address', 'Address\r\n', '2021-10-31 07:45:41', '2021-10-31 07:45:41'),
(177, 'en', 'email', 'Email\r\n', '2021-10-31 07:45:41', '2021-10-31 07:45:41'),
(178, 'en', 'phone', 'Phone\r\n', '2021-10-31 07:45:41', '2021-10-31 07:45:41'),
(179, 'en', 'subscribe', 'Subscribe\r\n', '2021-10-31 07:45:41', '2021-10-31 07:45:41'),
(180, 'en', 'your_email_address', 'Your email address\r\n', '2021-10-31 07:45:41', '2021-10-31 07:45:41'),
(181, 'en', 'forgot_password', 'forgot password\r\n', '2021-10-31 07:45:41', '2021-10-31 07:45:41'),
(182, 'en', 'or', 'or\r\n', '2021-10-31 07:45:41', '2023-04-06 07:35:34'),
(183, 'en', 'play_store', 'Play Store\r\n', '2021-10-31 07:45:41', '2021-10-31 07:45:41'),
(184, 'en', 'app_store', 'App Store\r\n', '2021-10-31 07:45:41', '2021-10-31 07:45:41'),
(185, 'en', 'track_order', 'Track Order\r\n', '2021-10-31 07:45:41', '2021-10-31 07:45:41'),
(186, 'en', 'help_line', 'Help Line\r\n', '2021-10-31 07:45:41', '2021-10-31 07:45:41'),
(187, 'en', 'wishlist', 'Wishlist\r\n', '2021-10-31 07:45:41', '2021-10-31 07:45:41'),
(188, 'en', 'search', 'Search\r\n', '2021-10-31 07:45:41', '2021-10-31 07:45:41'),
(189, 'en', 'login', 'Login\r\n', '2021-10-31 07:45:41', '2021-10-31 07:45:41'),
(190, 'en', 'registration', 'Registration\r\n', '2021-10-31 07:45:41', '2021-10-31 07:45:41'),
(191, 'en', 'register', 'Register\r\n', '2021-10-31 07:45:41', '2021-10-31 07:45:41'),
(192, 'en', 'talk_with_us', 'Talk With Us\r\n', '2021-10-31 07:45:41', '2021-10-31 07:45:41'),
(193, 'en', 'you_have_to', 'You have to\r\n', '2021-10-31 07:45:41', '2021-10-31 07:45:41'),
(194, 'en', 'as_a_customer_to_contact_us', 'as a customer to contact us\r\n', '2021-10-31 07:45:41', '2021-10-31 07:45:41'),
(195, 'en', 'most_popular', 'Most popular\r\n', '2021-10-31 07:45:41', '2021-10-31 07:45:41'),
(196, 'en', 'latest_first', 'Latest first\r\n', '2021-10-31 07:45:41', '2021-10-31 07:45:41'),
(197, 'en', 'oldest_first', 'Oldest first\r\n', '2021-10-31 07:45:41', '2021-10-31 07:45:41'),
(198, 'en', 'higher_price_first', 'Higher price first\r\n', '2021-10-31 07:45:41', '2021-10-31 07:45:41'),
(199, 'en', 'lower_price_first', 'Lower price first\r\n', '2021-10-31 07:45:41', '2021-10-31 07:45:41'),
(200, 'en', 'higher_rating_first', 'Higher rating first\r\n', '2021-10-31 07:45:41', '2021-10-31 07:45:41'),
(201, 'en', 'lower_rating_first', 'Lower rating first\r\n', '2021-10-31 07:45:41', '2021-10-31 07:45:41'),
(202, 'en', 'all_star', 'All Star\r\n', '2021-10-31 07:45:41', '2021-10-31 07:45:41'),
(203, 'en', 'star', 'star\r\n', '2021-10-31 07:45:41', '2021-10-31 07:45:41'),
(204, 'en', 'total', 'Total\r\n', '2021-10-31 07:45:41', '2021-10-31 07:45:41'),
(205, 'en', 'products_found', 'products found\r\n', '2021-10-31 07:45:41', '2021-10-31 07:45:41'),
(206, 'en', 'search_results_for', 'Search results for\r\n', '2021-10-31 07:45:41', '2021-10-31 07:45:41'),
(207, 'en', 'no_product_found', 'No product found\r\n', '2021-10-31 07:45:41', '2021-10-31 07:45:41'),
(208, 'en', 'min_price', 'min price\r\n', '2021-10-31 07:45:41', '2021-10-31 07:45:41'),
(209, 'en', 'max_price', 'max price\r\n', '2021-10-31 07:45:41', '2021-10-31 07:45:41'),
(210, 'en', 'go', 'Go\r\n', '2021-10-31 07:45:41', '2021-10-31 07:45:41'),
(211, 'en', 'filters', 'Filters\r\n', '2021-10-31 07:45:41', '2021-10-31 07:45:41'),
(212, 'en', 'unit_price', 'Unit price\r\n', '2021-10-31 07:45:41', '2021-10-31 07:45:41'),
(213, 'en', 'discounted_price', 'Discounted price\r\n', '2021-10-31 07:45:41', '2021-10-31 07:45:41'),
(214, 'en', 'total_price', 'Total Price\r\n', '2021-10-31 07:45:41', '2021-10-31 07:45:41'),
(215, 'en', 'brands', 'Brands\r\n', '2021-10-31 07:45:41', '2021-10-31 07:45:41'),
(216, 'en', 'order_code', 'Order Code\r\n', '2021-10-31 07:45:41', '2023-04-06 07:35:35'),
(217, 'en', 'track', 'Track\r\n', '2021-10-31 07:45:41', '2021-10-31 07:45:41'),
(218, 'en', 'all_categories', 'All categories\r\n', '2021-10-31 07:45:41', '2021-10-31 07:45:41'),
(219, 'en', 'all_brands', 'All brands\r\n', '2021-10-31 07:45:41', '2021-10-31 07:45:41'),
(220, 'en', 'all_offers', 'All Prodcuts\n', '2021-10-31 07:45:41', '2023-04-09 07:46:29'),
(221, 'en', 'estimated_delivery_time', 'Estimated delivery time\r\n', '2021-10-31 07:45:41', '2021-10-31 07:45:41'),
(222, 'en', 'days', 'days\r\n', '2021-10-31 07:45:41', '2021-10-31 07:45:41'),
(223, 'en', 'view_other_products', 'View other products\r\n', '2021-10-31 07:45:41', '2021-10-31 07:45:41'),
(224, 'en', 'add_to_cart', 'Add to Cart\r\n', '2021-10-31 07:45:41', '2021-10-31 07:45:41'),
(225, 'en', 'view_all', 'View All\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(226, 'en', 'a_verification_code_has_been_sent_to_your_email', 'A verification code has been sent to your email.\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(227, 'en', 'payment_failed', 'Payment failed!!\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(228, 'en', 'your_order_has_been_placed_but_failed_to_complete_the_payment_please_try_again_or_contact_our_support', 'Your order has been placed. But failed to complete the payment. Please try again or contact our support.\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(229, 'en', 'try_again', 'Try again\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(230, 'en', 'close', 'Close\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(231, 'en', 'addresses', 'Addresses\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(232, 'en', 'postal_code', 'Postal Code\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(233, 'en', 'country', 'Country\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(234, 'en', 'state', 'State\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(235, 'en', 'select_country', 'Select country\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(236, 'en', 'phone_number', 'Phone Number\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(237, 'en', 'select_a_city', 'Select a city\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(238, 'en', 'select_a_state', 'Select a state\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(239, 'en', 'this_field_is_required', 'This field is required.\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(240, 'en', 'this_field_is_required_a_valid_email', 'This field is required a valid email.\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(241, 'en', 'password_must_be_minimum_6_characters', 'Password must be minimum 6 characters.\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(242, 'en', 'password_and_confirm_password_should_match', 'Password and confirm password should match.\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(243, 'en', 'login_with', 'Login with\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(244, 'en', 'account', 'Account\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(245, 'en', 'email_address', 'Email address\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(246, 'en', 'signup', 'Signup\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(247, 'en', 'dont_have_an_account', 'Don\'t have an account\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(248, 'en', 'search_for_products_brands_and_more', 'Search for products, brands and more...\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(249, 'en', 'no', 'No\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(250, 'en', 'yes', 'Yes\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(251, 'en', 'items', 'item(s)\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(252, 'en', 'have_a_code', 'Have a code?\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(253, 'en', 'change', 'Change\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(254, 'en', 'apply', 'Apply\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(255, 'en', 'checkout', 'Checkout\n', '2021-10-31 07:45:42', '2023-04-09 16:21:13'),
(256, 'en', 'please_select_a_cart_product', 'Please select a cart product\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(257, 'en', 'order_placed', 'Order Placed\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(258, 'en', 'confirmed', 'Confirmed\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(259, 'en', 'shipped', 'Shipped\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(260, 'en', 'delivered', 'Delivered\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(261, 'en', 'order_summary', 'Order Summary\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(262, 'en', 'shipping_address', 'Shipping Address\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(263, 'en', 'total_order_amount', 'Total Order Amount\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(264, 'en', 'payment_method', 'Payment Method\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(265, 'en', 'payment_status', 'Payment Status\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(266, 'en', 'billing_address', 'Billing Address\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(267, 'en', 'order_details', 'Order Details\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(268, 'en', 'quantity', 'Quantity\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(269, 'en', 'unit_tax', 'Unit tax\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(270, 'en', 'sub_total', 'Sub Total\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(271, 'en', 'shipping_charge', 'Shipping Charge\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(272, 'en', 'coupon_discount', 'Coupon discount\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(273, 'en', 'off', 'OFF\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(274, 'en', 'out_of', 'Out of\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(275, 'en', 'ratings', 'Ratings\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(276, 'en', 'product_reviews', 'Product Reviews\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(277, 'en', 'sort', 'Sort\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(278, 'en', 'no_reviews_found_for_this_product', 'No reviews found for this product\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(279, 'en', 'purchase_history', 'Purchase History\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(280, 'en', 'manage_profile', 'Manage Profile\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(281, 'en', 'my_wallet', 'My Wallet\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(282, 'en', 'payment_options', 'Payment Options\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(283, 'en', 'recharge_amount', 'Recharge Amount\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(284, 'en', 'recharge_wallet', 'Recharge Wallet\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(285, 'en', 'please_select_a_payment_method', 'Please select a payment method\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(286, 'en', 'please_input_recharge_amount', 'Please input recharge amount\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(287, 'en', 'amount', 'Amount\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(288, 'en', 'forgot', 'FORGOT\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(289, 'en', 'password', 'Password\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(290, 'en', 'old_password', 'Old Password\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(291, 'en', 'enter_your_email_address_to_recover_your_password', 'Enter your email address to recover your password\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(292, 'en', 'send_password_reset_code', 'Send Password Reset Code\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(293, 'en', 'back_to', 'Back to\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(294, 'en', 'reset', 'RESET\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(295, 'en', 'code', 'Code\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(296, 'en', 'enter_your_email_address_code__new_password', 'Enter your email address, Code & New Password\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(297, 'en', 'confirm_password', 'Confirm Password\r\n', '2021-10-31 07:45:42', '2021-10-31 07:45:42'),
(298, 'en', 'reset_password', 'Reset Password\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(299, 'en', 'welcome_to', 'WELCOME TO\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(300, 'en', 'full_name', 'Full Name\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(301, 'en', 'phone_number_must_be_valid', 'Phone number must be valid.\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(302, 'en', 'by_signing_up_you_agree_to_our', 'By signing up you agree to our\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(303, 'en', 'terms_and_conditions', 'terms and conditions\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(304, 'en', 'create_account', 'Create Account\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(305, 'en', 'join_with', 'Join With\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(306, 'en', 'verify', 'Verify\r\n', '2021-10-31 07:45:43', '2023-04-06 07:35:34'),
(307, 'en', 'enter_your_email_address_verification_code', 'Enter your email address, verification code\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(308, 'en', 'resend_code', 'Resend Code\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(309, 'en', 'the_page_you_are_looking_was_not', 'THE PAGE YOU ARE LOOKING WAS NOT\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(310, 'en', 'in_this_planet', 'IN THIS PLANET\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(311, 'en', 'back_to_home', 'BACK TO HOME\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(312, 'en', 'newly_added_products', 'Newly Added Products\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(313, 'en', 'wallet_balance', 'Wallet Balance\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(314, 'en', 'last_recharge', 'Last Recharge\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(315, 'en', 'products_in_your_cart', 'Products in Your Cart\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(316, 'en', 'products_in_your_wishlist', 'Products in Your Wishlist\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(317, 'en', 'products_you_ordered', 'Products You Ordered\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(318, 'en', 'recent_purchase_history', 'Recent Purchase History\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(319, 'en', 'my_wishlist', 'My Wishlist\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(320, 'en', 'default_shipping_address', 'Default Shipping Address\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(321, 'en', 'add_new_address', 'Add New Address\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(322, 'en', 'recently_viewed', 'Recently Viewed\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(323, 'en', 'profile_information', 'Profile Information\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(324, 'en', 'new_password', 'New Password\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(325, 'en', 'profile_image', 'Profile Image\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(326, 'en', 'select_image', 'Select Image\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(327, 'en', 'default_billing_address', 'Default Billing Address\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(328, 'en', 'all_addresses', 'All Addresses\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(329, 'en', 'mark_as_default_shipping_address', 'Mark as default shipping address\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(330, 'en', 'mark_as_default_billing_address', 'Mark as default billing address\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(331, 'en', 'no_saved_address', 'No saved address\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(332, 'en', 'loading_please_wait', 'Loading please wait\r\n', '2021-10-31 07:45:43', '2023-04-06 07:35:35'),
(333, 'en', 'details', 'Details\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(334, 'en', 'delivery_status', 'Delivery Status\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(335, 'en', 'generating_invoice', 'Generating invoice...\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(336, 'en', 'confirm_cancel', 'Confirm cancel\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(337, 'en', 'are_you_sure_you_want_to_cancel_this_order', 'Are you sure you want to cancel this order?\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(338, 'en', 'cancelling_order', 'Cancelling order...\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(339, 'en', 'wallet_recharge_history', 'Wallet Recharge History\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(340, 'en', 'date', 'Date\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(341, 'en', 'no_product_wishlisted', 'No product wishlisted\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(342, 'en', 'delivery_option', 'Delivery Option\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(343, 'en', 'standard_delivery', 'Standard Delivery\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(344, 'en', 'delivery_cost', 'Delivery cost\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(345, 'en', 'express_delivery', 'Express Delivery\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(346, 'en', 'sorry_delivery_is_not_available_in_this_shipping_address', 'Sorry, delivery is not available in this shipping address.\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(347, 'en', 'total_to_pay', 'TOTAL TO PAY\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(348, 'en', 'your_wallet_balance', 'Your wallet balance\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(349, 'en', 'remaining_balance', 'Remaining balance\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(350, 'en', 'by_clicking_proceed_i_agree_to', 'By clicking proceed, I agree to\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(351, 'en', 'proceed', 'Proceed\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(352, 'en', 'thank_you_for_your_order', 'Thank You for Your Order\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(353, 'en', 'a_copy_of_your_order_summary_has_been_sent_to', 'A copy of your order summary has been sent to\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(354, 'en', 'remove_from_wishlist', 'Remove from Wishlist\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(355, 'en', 'add_to_wishlist', 'Add to Wishlist\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(356, 'en', 'ask_about_this_product', 'Ask about this product\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(357, 'en', 'share', 'Share\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(358, 'en', 'rating__reviews', 'Rating & Reviews\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(359, 'en', 'frequently_bought_together', 'Frequently Bought Together\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(360, 'en', 'more_items_to_explore', 'More Items to Explore\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(361, 'en', 'warranty_available', 'Warranty Available\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(362, 'en', 'view_warranty_policy', 'View Warranty Policy\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(363, 'en', 'related_products', 'Related Products\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(364, 'en', 'please_select_all_options', 'Please select all options\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(365, 'en', 'this_product_is_out_of_stock', 'This product is out of stock\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(366, 'en', 'you_need_to_purchase_minimum_quantity', 'You need to purchase minimum quantity\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(367, 'en', 'you_can_purchase_maximum_quantity', 'You can purchase maximum quantity\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(368, 'en', 'product_added_to_cart', 'Product added to cart.\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(369, 'en', 'track_your_order', 'Track your order\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(370, 'en', 'wallet_successfully_recharged', 'Wallet successfully recharged!\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(371, 'en', 'wallet_recharge_failed', 'Wallet recharge failed!\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(372, 'en', 'login_successfull', 'Login successfull.\r\n', '2021-10-31 07:45:43', '2021-10-31 07:45:43'),
(373, 'en', 'applied_coupon_code_is_no_applicable_for_your_selected_cart_products', 'Applied coupon code is no applicable for your selected cart products.\r\n', '2021-10-31 07:45:44', '2021-10-31 07:45:44'),
(374, 'en', 'minimum_order_total_of', 'Minimum order total of\r\n', '2021-10-31 07:45:44', '2021-10-31 07:45:44'),
(375, 'en', 'is_required_to_use_applied_coupon_code', 'is required to use applied coupon code.\r\n', '2021-10-31 07:45:44', '2021-10-31 07:45:44'),
(376, 'en', 'delivery_type', 'Delivery type\r\n', '2021-10-31 07:45:44', '2021-10-31 07:45:44'),
(377, 'en', 'rate_and_review_purchased_product', 'Rate and review purchased product\r\n', '2021-10-31 07:45:44', '2021-10-31 07:45:44'),
(378, 'en', 'submit', 'Submit\r\n', '2021-10-31 07:45:44', '2021-10-31 07:45:44'),
(379, 'en', 'write_a_review', 'Write a review\r\n', '2021-10-31 07:45:44', '2021-10-31 07:45:44'),
(380, 'en', 'view_details', 'View details\r\n', '2021-10-31 07:45:44', '2021-10-31 07:45:44'),
(381, 'en', 'download_invoice', 'Download invoice\r\n', '2021-10-31 07:45:44', '2021-10-31 07:45:44'),
(382, 'en', 'cancel_order', 'Cancel order\r\n', '2021-10-31 07:45:44', '2021-10-31 07:45:44'),
(383, 'en', 'this_product_is_not_available', 'This product is not available.\r\n', '2021-10-31 07:45:44', '2021-10-31 07:45:44'),
(384, 'en', 'comment', 'Comment\r\n', '2021-10-31 07:45:44', '2021-10-31 07:45:44'),
(385, 'en', 'youve_already_reviewed_this_product_you_can_update_the_review', 'You\'ve already reviewed this product. You can update the review.\r\n', '2021-10-31 07:45:44', '2021-10-31 07:45:44'),
(386, 'en', 'your_review_has_been_disabled', 'Your review has been disabled.\r\n', '2021-10-31 07:45:44', '2021-10-31 07:45:44'),
(387, 'en', 'home', 'Home\r\n', '2021-10-31 07:45:44', '2021-10-31 07:45:44'),
(388, 'en', 'messages', 'Messages\r\n', '2021-10-31 07:45:44', '2021-10-31 07:45:44'),
(389, 'en', 'cart', 'Cart\r\n', '2021-10-31 07:45:44', '2021-10-31 07:45:44'),
(390, 'en', 'change_language', 'Change language\r\n', '2021-10-31 07:45:44', '2021-11-04 07:49:42'),
(391, 'en', 'product_added_to_cart_successfully', 'Product added to cart successfully', '2021-10-31 07:45:59', '2021-10-31 07:45:59'),
(392, 'en', 'avatar', 'Avatar', '2021-10-31 07:47:15', '2021-10-31 07:47:15'),
(393, 'en', 'save', 'Save', '2021-10-31 07:47:15', '2021-10-31 07:47:15'),
(394, 'en', 'select_file', 'Select File', '2021-10-31 07:47:18', '2021-10-31 07:47:18'),
(395, 'en', 'upload_new', 'Upload New', '2021-10-31 07:47:18', '2021-10-31 07:47:18'),
(396, 'en', 'sort_by_newest', 'Sort by newest', '2021-10-31 07:47:18', '2021-10-31 07:47:18'),
(397, 'en', 'sort_by_oldest', 'Sort by oldest', '2021-10-31 07:47:18', '2021-10-31 07:47:18'),
(398, 'en', 'sort_by_smallest', 'Sort by smallest', '2021-10-31 07:47:18', '2021-10-31 07:47:18'),
(399, 'en', 'sort_by_largest', 'Sort by largest', '2021-10-31 07:47:18', '2021-10-31 07:47:18'),
(400, 'en', 'selected_only', 'Selected Only', '2021-10-31 07:47:18', '2021-10-31 07:47:18'),
(401, 'en', 'no_files_found', 'No files found', '2021-10-31 07:47:18', '2021-10-31 07:47:18'),
(402, 'en', '0_file_selected', '0 File selected', '2021-10-31 07:47:18', '2021-10-31 07:47:18'),
(403, 'en', 'clear', 'Clear', '2021-10-31 07:47:18', '2021-10-31 07:47:18'),
(404, 'en', 'prev', 'Prev', '2021-10-31 07:47:18', '2021-10-31 07:47:18'),
(405, 'en', 'next', 'Next', '2021-10-31 07:47:18', '2021-10-31 07:47:18'),
(406, 'en', 'add_files', 'Add Files', '2021-10-31 07:47:18', '2021-10-31 07:47:18'),
(407, 'en', 'total_customers', 'Total Customers', '2021-10-31 07:47:35', '2021-10-31 07:47:35'),
(408, 'en', 'total_products', 'Total Products\r\n', '2021-10-31 07:47:35', '2023-04-06 07:35:34'),
(409, 'en', 'total_orders', 'Total Orders', '2021-10-31 07:47:35', '2021-10-31 07:47:35'),
(410, 'en', 'total_sales', 'Total Sales', '2021-10-31 07:47:35', '2021-10-31 07:47:35'),
(411, 'en', 'order_stat', 'Order Stat', '2021-10-31 07:47:35', '2021-10-31 07:47:35'),
(412, 'en', 'total_category', 'Total Category', '2021-10-31 07:47:35', '2021-10-31 07:47:35'),
(413, 'en', 'total_brands', 'Total Brands', '2021-10-31 07:47:35', '2021-10-31 07:47:35'),
(414, 'en', 'coupons', 'Coupons\r\n', '2021-10-31 07:47:35', '2021-11-14 19:11:03'),
(415, 'en', 'confirmed_order', 'Confirmed Order', '2021-10-31 07:47:35', '2021-10-31 07:47:35'),
(416, 'en', 'processed_order', 'Processed Order', '2021-10-31 07:47:35', '2021-10-31 07:47:35'),
(417, 'en', 'order_delivered', 'Order Delivered', '2021-10-31 07:47:35', '2021-10-31 07:47:35'),
(418, 'en', 'top_category', 'Top Category', '2021-10-31 07:47:35', '2021-10-31 07:47:35'),
(419, 'en', 'top_brands', 'Top Brands', '2021-10-31 07:47:35', '2021-10-31 07:47:35'),
(420, 'en', 'order__sales', 'Order & Sales', '2021-10-31 07:47:36', '2021-10-31 07:47:36'),
(421, 'en', 'sales_by_category_', 'Sales by Category', '2021-10-31 07:47:36', '2021-10-31 07:47:36'),
(422, 'en', 'top_products', 'Top Products', '2021-10-31 07:47:36', '2021-10-31 07:47:36'),
(423, 'en', 'sales_', 'Sales ($)', '2021-10-31 07:47:36', '2021-10-31 07:47:36'),
(424, 'en', 'select_an_attribute', 'Select an attribute', '2021-10-31 07:49:05', '2021-10-31 07:49:05'),
(425, 'en', 'successfully_logged_out', 'Successfully logged out', '2021-10-31 08:04:30', '2021-10-31 08:04:30'),
(426, 'en', 'type_name__enter', 'Type name & Enter', '2021-10-31 18:35:50', '2021-10-31 18:35:50'),
(427, 'en', 'logo', 'Logo', '2021-10-31 18:35:50', '2021-10-31 18:35:50'),
(428, 'en', 'add_new_brand', 'Add New Brand', '2021-10-31 18:35:50', '2021-10-31 18:35:50'),
(429, 'en', '120x80', '120x80', '2021-10-31 18:35:50', '2021-10-31 18:35:50'),
(430, 'en', 'all_roles', 'All Roles', '2021-10-31 18:36:00', '2021-10-31 18:36:00'),
(431, 'en', 'add_new_role', 'Add New Role', '2021-10-31 18:36:00', '2021-10-31 18:36:00'),
(432, 'en', 'role_information', 'Role Information', '2021-10-31 18:36:06', '2021-10-31 18:36:06'),
(433, 'en', 'role_name', 'Role Name', '2021-10-31 18:36:06', '2021-10-31 18:36:06'),
(434, 'en', 'permissions', 'Permissions', '2021-10-31 18:36:06', '2021-10-31 18:36:06'),
(435, 'en', 'role', 'Role', '2021-10-31 18:36:06', '2021-10-31 18:36:06'),
(436, 'en', 'show_staff_roles', 'Show Staff Roles', '2021-10-31 18:36:06', '2021-10-31 18:36:06'),
(437, 'en', 'add_staff_roles', 'Add Staff Roles', '2021-10-31 18:36:06', '2021-10-31 18:36:06'),
(438, 'en', 'edit_staff_roles', 'Edit Staff Roles', '2021-10-31 18:36:06', '2021-10-31 18:36:06'),
(439, 'en', 'delete_staff_roles', 'Delete Staff Roles', '2021-10-31 18:36:06', '2021-10-31 18:36:06'),
(440, 'en', 'staff', 'Staff', '2021-10-31 18:36:06', '2021-10-31 18:36:06'),
(441, 'en', 'show_staffs', 'Show Staffs', '2021-10-31 18:36:06', '2021-10-31 18:36:06'),
(442, 'en', 'add_staffs', 'Add Staffs', '2021-10-31 18:36:06', '2021-10-31 18:36:06'),
(443, 'en', 'edit_staffs', 'Edit Staffs', '2021-10-31 18:36:06', '2021-10-31 18:36:06'),
(444, 'en', 'delete_staffs', 'Delete Staffs', '2021-10-31 18:36:06', '2021-10-31 18:36:06'),
(445, 'en', 'show_dashboard', 'Show Dashboard', '2021-10-31 18:36:06', '2021-10-31 18:36:06'),
(446, 'en', 'show_products', 'Show Products', '2021-10-31 18:36:06', '2021-10-31 18:36:06'),
(447, 'en', 'add_products', 'Add Products', '2021-10-31 18:36:06', '2021-10-31 18:36:06'),
(448, 'en', 'edit_products', 'Edit Products', '2021-10-31 18:36:06', '2021-10-31 18:36:06'),
(449, 'en', 'duplicate_products', 'Duplicate Products', '2021-10-31 18:36:06', '2021-10-31 18:36:06'),
(450, 'en', 'delete_products', 'Delete Products', '2021-10-31 18:36:06', '2021-10-31 18:36:06'),
(451, 'en', 'show_categories', 'Show Categories', '2021-10-31 18:36:06', '2021-10-31 18:36:06'),
(452, 'en', 'add_categories', 'Add Categories', '2021-10-31 18:36:06', '2021-10-31 18:36:06'),
(453, 'en', 'edit_categories', 'Edit Categories', '2021-10-31 18:36:06', '2021-10-31 18:36:06'),
(454, 'en', 'delete_categories', 'Delete Categories', '2021-10-31 18:36:06', '2021-10-31 18:36:06'),
(455, 'en', 'show_brands', 'Show Brands', '2021-10-31 18:36:06', '2021-10-31 18:36:06'),
(456, 'en', 'add_brands', 'Add Brands', '2021-10-31 18:36:06', '2021-10-31 18:36:06'),
(457, 'en', 'edit_brands', 'Edit Brands', '2021-10-31 18:36:06', '2021-10-31 18:36:06'),
(458, 'en', 'delete_brands', 'Delete Brands', '2021-10-31 18:36:06', '2021-10-31 18:36:06'),
(459, 'en', 'attribute', 'Attribute', '2021-10-31 18:36:06', '2021-10-31 18:36:06'),
(460, 'en', 'show_attributes', 'Show Attributes', '2021-10-31 18:36:06', '2021-10-31 18:36:06'),
(461, 'en', 'add_attributes', 'Add Attributes', '2021-10-31 18:36:06', '2021-10-31 18:36:06'),
(462, 'en', 'configure_attributes', 'Configure Attributes', '2021-10-31 18:36:06', '2021-10-31 18:36:06'),
(463, 'en', 'edit_attributes', 'Edit Attributes', '2021-10-31 18:36:06', '2021-10-31 18:36:06'),
(464, 'en', 'review', 'Review', '2021-10-31 18:36:06', '2021-10-31 18:36:06'),
(465, 'en', 'show_reviews', 'Show Reviews', '2021-10-31 18:36:06', '2021-10-31 18:36:06'),
(466, 'en', 'order', 'Order', '2021-10-31 18:36:06', '2021-10-31 18:36:06'),
(467, 'en', 'show_orders', 'Show Orders', '2021-10-31 18:36:06', '2021-10-31 18:36:06'),
(468, 'en', 'view_orders', 'View Orders', '2021-10-31 18:36:06', '2021-10-31 18:36:06'),
(469, 'en', 'invoice_download', 'Invoice Download', '2021-10-31 18:36:06', '2021-10-31 18:36:06'),
(470, 'en', 'delete_orders', 'Delete Orders', '2021-10-31 18:36:06', '2021-10-31 18:36:06'),
(471, 'en', 'customer', 'Customer', '2021-10-31 18:36:06', '2021-10-31 18:36:06'),
(472, 'en', 'show_customers', 'Show Customers', '2021-10-31 18:36:06', '2021-10-31 18:36:06'),
(473, 'en', 'delete_customers', 'Delete Customers', '2021-10-31 18:36:06', '2021-10-31 18:36:06'),
(474, 'en', 'offer', 'Offer', '2021-10-31 18:36:06', '2021-10-31 18:36:06'),
(475, 'en', 'show_offers', 'Show Offers', '2021-10-31 18:36:06', '2021-10-31 18:36:06'),
(476, 'en', 'add_offers', 'Add Offers', '2021-10-31 18:36:06', '2021-10-31 18:36:06'),
(477, 'en', 'edit_offers', 'Edit Offers', '2021-10-31 18:36:06', '2021-10-31 18:36:06'),
(478, 'en', 'delete_offers', 'Delete Offers', '2021-10-31 18:36:06', '2021-10-31 18:36:06'),
(479, 'en', 'newsletter', 'Newsletter', '2021-10-31 18:36:06', '2021-10-31 18:36:06'),
(480, 'en', 'send_newsletters', 'Send Newsletters', '2021-10-31 18:36:06', '2021-10-31 18:36:06'),
(481, 'en', 'subscriber', 'Subscriber', '2021-10-31 18:36:06', '2021-10-31 18:36:06'),
(482, 'en', 'show_subscribers', 'Show Subscribers', '2021-10-31 18:36:06', '2021-10-31 18:36:06'),
(483, 'en', 'show_coupons', 'Show Coupons', '2021-10-31 18:36:06', '2021-10-31 18:36:06'),
(484, 'en', 'add_coupons', 'Add Coupons', '2021-10-31 18:36:06', '2021-10-31 18:36:06'),
(485, 'en', 'edit_coupons', 'Edit Coupons', '2021-10-31 18:36:06', '2021-10-31 18:36:06'),
(486, 'en', 'delete_coupons', 'Delete Coupons', '2021-10-31 18:36:06', '2021-10-31 18:36:06'),
(487, 'en', 'uploaded_file', 'Uploaded File', '2021-10-31 18:36:06', '2021-10-31 18:36:06'),
(488, 'en', 'show_uploaded_files', 'Show Uploaded Files', '2021-10-31 18:36:06', '2021-10-31 18:36:06'),
(489, 'en', 'login_to_your_account', 'Login to your account.', '2021-10-31 19:55:46', '2021-10-31 19:55:46'),
(490, 'en', 'remember_me', 'Remember Me', '2021-10-31 19:55:46', '2021-10-31 19:55:46'),
(491, 'en', 'copy', 'Copy', '2021-10-31 19:55:46', '2021-10-31 19:55:46'),
(492, 'en', 'website_header', 'Website Header', '2021-10-31 22:08:30', '2021-10-31 22:08:30'),
(493, 'en', 'header_setting', 'Header Setting', '2021-10-31 22:08:30', '2021-10-31 22:08:30'),
(494, 'en', 'topbar_banner', 'Topbar Banner', '2021-10-31 22:08:30', '2021-10-31 22:08:30'),
(495, 'en', 'topbar_banner_link', 'Topbar Banner Link', '2021-10-31 22:08:30', '2021-10-31 22:08:30'),
(496, 'en', 'play_store_link', 'Play Store Link', '2021-10-31 22:08:30', '2021-10-31 22:08:30'),
(497, 'en', 'app_store_link', 'App Store Link', '2021-10-31 22:08:30', '2021-10-31 22:08:30'),
(498, 'en', 'helpline_number', 'Helpline number', '2021-10-31 22:08:30', '2021-10-31 22:08:30'),
(499, 'en', 'header_logo', 'Header Logo', '2021-10-31 22:08:30', '2021-10-31 22:08:30'),
(500, 'en', 'header_nav_menu', 'Header Nav Menu', '2021-10-31 22:08:30', '2021-10-31 22:08:30'),
(501, 'en', 'label', 'Label', '2021-10-31 22:08:30', '2021-10-31 22:08:30'),
(502, 'en', 'general', 'General', '2021-10-31 22:08:48', '2021-10-31 22:08:48'),
(503, 'en', 'website_theme_color', 'Website Theme Color', '2021-10-31 22:08:48', '2021-10-31 22:08:48'),
(504, 'en', 'hex_color_code', 'Hex Color Code', '2021-10-31 22:08:48', '2021-10-31 22:08:48'),
(505, 'en', 'global_seo', 'Global Seo', '2021-10-31 22:08:48', '2021-10-31 22:08:48'),
(506, 'en', 'meta_description', 'Meta description', '2021-10-31 22:08:48', '2021-10-31 22:08:48'),
(507, 'en', 'keywords', 'Keywords', '2021-10-31 22:08:48', '2021-10-31 22:08:48');
INSERT INTO `translations` (`id`, `lang`, `lang_key`, `lang_value`, `created_at`, `updated_at`) VALUES
(508, 'en', 'separate_with_coma', 'Separate with coma', '2021-10-31 22:08:48', '2021-10-31 22:08:48'),
(509, 'en', 'server_information', 'Server information', '2021-10-31 22:09:08', '2021-10-31 22:09:08'),
(510, 'en', 'current_version', 'Current Version', '2021-10-31 22:09:08', '2021-10-31 22:09:08'),
(511, 'en', 'required_version', 'Required Version', '2021-10-31 22:09:08', '2021-10-31 22:09:08'),
(512, 'en', 'status', 'Status\r\n', '2021-10-31 22:09:08', '2023-04-06 07:35:35'),
(513, 'en', 'phpini_config', 'php.ini Config', '2021-10-31 22:09:08', '2021-10-31 22:09:08'),
(514, 'en', 'config_name', 'Config Name', '2021-10-31 22:09:08', '2021-10-31 22:09:08'),
(515, 'en', 'current', 'Current', '2021-10-31 22:09:08', '2021-10-31 22:09:08'),
(516, 'en', 'recommended', 'Recommended', '2021-10-31 22:09:08', '2021-10-31 22:09:08'),
(517, 'en', 'extensions_information', 'Extensions information', '2021-10-31 22:09:08', '2021-10-31 22:09:08'),
(518, 'en', 'extension_name', 'Extension Name', '2021-10-31 22:09:08', '2021-10-31 22:09:08'),
(519, 'en', 'filesystem_permissions', 'Filesystem Permissions', '2021-10-31 22:09:08', '2021-10-31 22:09:08'),
(520, 'en', 'file_or_folder', 'File or Folder', '2021-10-31 22:09:08', '2021-10-31 22:09:08'),
(521, 'en', 'update_your_system', 'Update your system', '2021-10-31 22:09:35', '2021-10-31 22:09:35'),
(522, 'en', 'current_verion', 'Current verion', '2021-10-31 22:09:35', '2021-10-31 22:09:35'),
(523, 'en', 'make_sure_your_server_has_matched_with_all_requirements', 'Make sure your server has matched with all requirements.', '2021-10-31 22:09:35', '2021-10-31 22:09:35'),
(524, 'en', 'check_here', 'Check Here', '2021-10-31 22:09:35', '2021-10-31 22:09:35'),
(525, 'en', 'download_latest_version_from_codecanyon', 'Download latest version from codecanyon.', '2021-10-31 22:09:35', '2021-10-31 22:09:35'),
(526, 'en', 'extract_downloaded_zip_you_will_find_updateszip_file_in_those_extraced_files', 'Extract downloaded zip. You will find updates.zip file in those extraced files.', '2021-10-31 22:09:35', '2021-10-31 22:09:35'),
(527, 'en', 'upload_that_zip_file_here_and_click_update_now', 'Upload that zip file here and click update now.', '2021-10-31 22:09:35', '2021-10-31 22:09:35'),
(528, 'en', 'if_you_are_using_any_addon_make_sure_to_update_those_addons_after_updating', 'If you are using any addon make sure to update those addons after updating.', '2021-10-31 22:09:35', '2021-10-31 22:09:35'),
(529, 'en', 'please_turn_off_maintenance_mode_before_updating', 'Please turn off maintenance mode before updating.', '2021-10-31 22:09:35', '2021-10-31 22:09:35'),
(530, 'en', 'page_not_found', 'Page not found!', '2021-10-31 22:10:39', '2021-10-31 22:10:39'),
(531, 'en', 'invalid_login_information', 'Invalid login information', '2021-11-01 10:47:45', '2021-11-01 10:47:45'),
(532, 'en', 'product_is_successfully_added_to_your_wishlist', 'Product is successfully added to your wishlist', '2021-11-01 10:48:10', '2021-11-01 10:48:10'),
(533, 'en', 'filter_by_payment_status', 'Filter by Payment Status', '2021-11-01 15:41:03', '2021-11-01 15:41:03'),
(534, 'en', 'paid', 'Paid', '2021-11-01 15:41:03', '2021-11-01 15:41:03'),
(535, 'en', 'unpaid', 'Unpaid', '2021-11-01 15:41:03', '2021-11-01 15:41:03'),
(536, 'en', 'filter_by_deliver_status', 'Filter by Deliver Status', '2021-11-01 15:41:03', '2021-11-01 15:41:03'),
(537, 'en', 'processed', 'Processed', '2021-11-01 15:41:03', '2021-11-01 15:41:03'),
(538, 'en', 'cancelled', 'Cancelled\r\n', '2021-11-01 15:41:03', '2023-04-06 07:35:34'),
(539, 'en', 'type_order_code__hit_enter', 'Type Order code & hit Enter', '2021-11-01 15:41:03', '2021-11-01 15:41:03'),
(540, 'en', 'num_of_products', 'Num. of Products', '2021-11-01 15:41:03', '2021-11-01 15:41:03'),
(541, 'en', 'view', 'View', '2021-11-01 15:41:03', '2021-11-01 15:41:03'),
(542, 'en', 'all_zones', 'All Zones', '2021-11-01 15:42:43', '2021-11-01 15:42:43'),
(543, 'en', 'add_new_zone', 'Add New Zone', '2021-11-01 15:42:43', '2021-11-01 15:42:43'),
(544, 'en', 'cities', 'Cities', '2021-11-01 15:42:43', '2021-11-01 15:42:43'),
(545, 'en', 'standard_delivery_cost', 'Standard Delivery Cost', '2021-11-01 15:42:43', '2021-11-01 15:42:43'),
(546, 'en', 'express_delivery_cost', 'Express Delivery Cost', '2021-11-01 15:42:43', '2021-11-01 15:42:43'),
(547, 'en', 'zone_information', 'Zone Information', '2021-11-01 15:42:49', '2021-11-01 15:42:49'),
(548, 'en', 'select_cities', 'Select cities', '2021-11-01 15:42:49', '2021-11-01 15:42:49'),
(549, 'en', 'states', 'States', '2021-11-01 15:43:19', '2021-11-01 15:43:19'),
(550, 'en', 'showhide', 'Show/Hide', '2021-11-01 15:43:19', '2021-11-01 15:43:19'),
(551, 'en', 'country_status_updated_successfully', 'Country status updated successfully', '2021-11-01 15:43:19', '2021-11-01 15:43:19'),
(552, 'en', 'countries', 'Countries', '2021-11-01 15:43:56', '2021-11-01 15:43:56'),
(553, 'en', 'zone_has_been_inserted_successfully', 'Zone has been inserted successfully', '2021-11-01 15:46:44', '2021-11-01 15:46:44'),
(554, 'en', 'zone_has_been_deleted_successfully', 'Zone has been deleted successfully', '2021-11-01 15:46:49', '2021-11-01 15:46:49'),
(555, 'en', 'profile_information_has_been_updated_successfully', 'Profile information has been updated successfully', '2021-11-01 15:55:39', '2021-11-01 15:55:39'),
(556, 'en', 'your_order_has_been_placed_successfully', 'Your order has been placed successfully', '2021-11-01 15:56:45', '2021-11-01 15:56:45'),
(557, 'en', 'all_customers', 'All Customers', '2021-11-01 15:58:01', '2021-11-01 15:58:01'),
(558, 'en', 'type_email_or_name__enter', 'Type email or name & Enter', '2021-11-01 15:58:01', '2021-11-01 15:58:01'),
(559, 'en', 'confirmation', 'Confirmation', '2021-11-01 15:58:01', '2021-11-01 15:58:01'),
(560, 'en', 'do_you_really_want_to_ban_this_customer', 'Do you really want to ban this Customer?', '2021-11-01 15:58:01', '2021-11-01 15:58:01'),
(561, 'en', 'do_you_really_want_to_unban_this_customer', 'Do you really want to unban this Customer?', '2021-11-01 15:58:01', '2021-11-01 15:58:01'),
(562, 'en', 'customer_info', 'Customer info', '2021-11-01 15:58:08', '2021-11-01 15:58:08'),
(563, 'en', 'order_date', 'Order Date', '2021-11-01 15:58:08', '2021-11-01 15:58:08'),
(564, 'en', 'qty', 'QTY\r\n', '2021-11-01 15:58:08', '2023-04-06 07:35:35'),
(565, 'en', 'delivery_status_has_been_updated', 'Delivery status has been updated', '2021-11-01 15:58:08', '2021-11-01 15:58:08'),
(566, 'en', 'payment_status_has_been_updated', 'Payment status has been updated', '2021-11-01 15:58:08', '2021-11-01 15:58:08'),
(567, 'en', 'your_review_has_been_submitted', 'Your review has been submitted.', '2021-11-01 16:56:06', '2021-11-01 16:56:06'),
(568, 'en', 'settings_updated_successfully', 'Settings updated successfully', '2021-11-01 17:02:50', '2021-11-01 17:02:50'),
(569, 'en', 'your_profile_has_been_updated_successfully', 'Your Profile has been updated successfully!', '2021-11-01 17:05:18', '2021-11-01 17:05:18'),
(570, 'en', 'all_uploaded_files', 'All uploaded files', '2021-11-01 17:05:24', '2021-11-01 17:05:24'),
(571, 'en', 'upload_new_file', 'Upload New File', '2021-11-01 17:05:24', '2021-11-01 17:05:24'),
(572, 'en', 'all_files', 'All files', '2021-11-01 17:05:24', '2021-11-01 17:05:24'),
(573, 'en', 'search_your_files', 'Search your files', '2021-11-01 17:05:24', '2021-11-01 17:05:24'),
(574, 'en', 'details_info', 'Details Info', '2021-11-01 17:05:24', '2021-11-01 17:05:24'),
(575, 'en', 'download', 'Download', '2021-11-01 17:05:24', '2021-11-01 17:05:24'),
(576, 'en', 'copy_link', 'Copy Link', '2021-11-01 17:05:24', '2021-11-01 17:05:24'),
(577, 'en', 'are_you_sure_to_delete_this_file', 'Are you sure to delete this file?', '2021-11-01 17:05:24', '2021-11-01 17:05:24'),
(578, 'en', 'file_info', 'File Info', '2021-11-01 17:05:24', '2021-11-01 17:05:24'),
(579, 'en', 'link_copied_to_clipboard', 'Link copied to clipboard', '2021-11-01 17:05:24', '2021-11-01 17:05:24'),
(580, 'en', 'oops_unable_to_copy', 'Oops, unable to copy', '2021-11-01 17:05:24', '2021-11-01 17:05:24'),
(581, 'en', 'file_deleted_successfully', 'File deleted successfully', '2021-11-01 17:05:29', '2021-11-01 17:05:29'),
(582, 'en', 'email_verification', 'Email Verification', '2021-11-01 17:16:03', '2021-11-01 17:16:03'),
(583, 'en', 'you_verification_code_is', 'You verification code is', '2021-11-01 17:16:03', '2021-11-01 17:16:03'),
(584, 'en', 'system_name', 'System Name', '2021-11-01 17:16:17', '2021-11-01 17:16:17'),
(585, 'en', 'system_logo__white', 'System Logo - White', '2021-11-01 17:16:17', '2021-11-01 17:16:17'),
(586, 'en', 'choose_files', 'Choose Files', '2021-11-01 17:16:17', '2021-11-01 17:16:17'),
(587, 'en', 'will_be_used_in_admin_panel_side_menu', 'Will be used in admin panel side menu', '2021-11-01 17:16:17', '2021-11-01 17:16:17'),
(588, 'en', 'system_logo__black', 'System Logo - Black', '2021-11-01 17:16:17', '2021-11-01 17:16:17'),
(589, 'en', 'will_be_used_in_admin_panel_topbar_in_mobile__admin_login_page', 'Will be used in admin panel topbar in mobile + Admin login page', '2021-11-01 17:16:17', '2021-11-01 17:16:17'),
(590, 'en', 'system_timezone', 'System Timezone', '2021-11-01 17:16:17', '2021-11-01 17:16:17'),
(591, 'en', 'admin_login_page_background', 'Admin login page background', '2021-11-01 17:16:17', '2021-11-01 17:16:17'),
(592, 'en', 'default_weight_unit', 'Default weight unit', '2021-11-01 17:16:17', '2021-11-01 17:16:17'),
(593, 'en', 'default_dimensions_unit', 'Default dimensions unit', '2021-11-01 17:16:17', '2021-11-01 17:16:17'),
(594, 'en', 'features_activation', 'Features Activation', '2021-11-01 17:16:17', '2021-11-01 17:16:17'),
(595, 'en', 'forcefully_https_redirection', 'Forcefully HTTPS redirection', '2021-11-01 17:16:17', '2021-11-01 17:16:17'),
(596, 'en', 'you_need_to_configure_smtp_correctly_to_enable_this_feature', 'You need to configure SMTP correctly to enable this feature.', '2021-11-01 17:16:17', '2021-11-01 17:16:17'),
(597, 'en', 'configure_now', 'Configure Now', '2021-11-01 17:16:17', '2021-11-01 17:16:17'),
(598, 'en', 'wallet_system_activation', 'Wallet System Activation', '2021-11-01 17:16:17', '2021-11-01 17:16:17'),
(599, 'en', 'chat_setting', 'Chat setting', '2021-11-01 17:16:17', '2021-11-01 17:16:17'),
(600, 'en', 'chat_logo', 'Chat logo', '2021-11-01 17:16:17', '2021-11-01 17:16:17'),
(601, 'en', 'chat_name', 'Chat name', '2021-11-01 17:16:17', '2021-11-01 17:16:17'),
(602, 'en', 'invoice_setting', 'Invoice setting', '2021-11-01 17:16:17', '2021-11-01 17:16:17'),
(603, 'en', 'invoice_logo', 'Invoice logo', '2021-11-01 17:16:17', '2021-11-01 17:16:17'),
(604, 'en', 'user_already_exists', 'User already exists.', '2021-11-01 17:17:31', '2021-11-01 17:17:31'),
(605, 'en', 'create_offer', 'Create Offer', '2021-11-01 17:20:00', '2021-11-01 17:20:00'),
(606, 'en', 'title', 'Title\r\n', '2021-11-01 17:20:00', '2023-04-06 07:35:35'),
(607, 'en', 'banner', 'Banner', '2021-11-01 17:20:00', '2021-11-01 17:20:00'),
(608, 'en', 'start_date', 'Start Date', '2021-11-01 17:20:00', '2021-11-01 17:20:00'),
(609, 'en', 'end_date', 'End Date', '2021-11-01 17:20:00', '2021-11-01 17:20:00'),
(610, 'en', 'page_link', 'Page Link', '2021-11-01 17:20:00', '2021-11-01 17:20:00'),
(611, 'en', 'send_newsletter', 'Send Newsletter', '2021-11-01 17:20:05', '2021-11-01 17:20:05'),
(612, 'en', 'emails', 'Emails', '2021-11-01 17:20:05', '2021-11-01 17:20:05'),
(613, 'en', 'users', 'Users', '2021-11-01 17:20:05', '2021-11-01 17:20:05'),
(614, 'en', 'newsletter_subject', 'Newsletter subject', '2021-11-01 17:20:05', '2021-11-01 17:20:05'),
(615, 'en', 'newsletter_content', 'Newsletter content', '2021-11-01 17:20:05', '2021-11-01 17:20:05'),
(616, 'en', 'send', 'Send\r\n', '2021-11-01 17:20:05', '2023-04-06 07:35:35'),
(617, 'en', 'you_have_subscribed_successfully', 'You have subscribed successfully.', '2021-11-01 17:20:47', '2021-11-01 17:20:47'),
(618, 'en', 'type', 'Type', '2021-11-01 17:21:40', '2021-11-01 17:21:40'),
(619, 'en', 'sendmail', 'Sendmail', '2021-11-01 17:21:40', '2021-11-01 17:21:40'),
(620, 'en', 'smtp', 'SMTP', '2021-11-01 17:21:40', '2021-11-01 17:21:40'),
(621, 'en', 'mailgun', 'Mailgun', '2021-11-01 17:21:40', '2021-11-01 17:21:40'),
(622, 'en', 'mail_host', 'MAIL HOST', '2021-11-01 17:21:40', '2021-11-01 17:21:40'),
(623, 'en', 'mail_port', 'MAIL PORT', '2021-11-01 17:21:40', '2021-11-01 17:21:40'),
(624, 'en', 'mail_username', 'MAIL USERNAME', '2021-11-01 17:21:40', '2021-11-01 17:21:40'),
(625, 'en', 'mail_password', 'MAIL PASSWORD', '2021-11-01 17:21:40', '2021-11-01 17:21:40'),
(626, 'en', 'mail_encryption', 'MAIL ENCRYPTION', '2021-11-01 17:21:40', '2021-11-01 17:21:40'),
(627, 'en', 'mail_from_address', 'MAIL FROM ADDRESS', '2021-11-01 17:21:40', '2021-11-01 17:21:40'),
(628, 'en', 'mail_from_name', 'MAIL FROM NAME', '2021-11-01 17:21:40', '2021-11-01 17:21:40'),
(629, 'en', 'mailgun_domain', 'MAILGUN DOMAIN', '2021-11-01 17:21:40', '2021-11-01 17:21:40'),
(630, 'en', 'mailgun_secret', 'MAILGUN SECRET', '2021-11-01 17:21:40', '2021-11-01 17:21:40'),
(631, 'en', 'instruction', 'Instruction', '2021-11-01 17:21:40', '2021-11-01 17:21:40'),
(632, 'en', 'please_be_carefull_when_you_are_configuring_smtp_for_incorrect_configuration_you_will_get_error_at_the_time_of_order_place_new_registration_sending_newsletter', 'Please be carefull when you are configuring SMTP. For incorrect configuration you will get error at the time of order place, new registration, sending newsletter.', '2021-11-01 17:21:40', '2021-11-01 17:21:40'),
(633, 'en', 'for_nonssl', 'For Non-SSL', '2021-11-01 17:21:40', '2021-11-01 17:21:40'),
(634, 'en', 'select_sendmail_for_mail_driver_if_you_face_any_issue_after_configuring_smtp_as_mail_driver_', 'Select sendmail for Mail Driver if you face any issue after configuring smtp as Mail Driver', '2021-11-01 17:21:40', '2021-11-01 17:21:40'),
(635, 'en', 'set_mail_host_according_to_your_server_mail_client_manual_settings', 'Set Mail Host according to your server Mail Client Manual Settings', '2021-11-01 17:21:40', '2021-11-01 17:21:40'),
(636, 'en', 'set_mail_port_as_587', 'Set Mail port as 587', '2021-11-01 17:21:40', '2021-11-01 17:21:40'),
(637, 'en', 'set_mail_encryption_as_ssl_if_you_face_issue_with_tls', 'Set Mail Encryption as ssl if you face issue with tls', '2021-11-01 17:21:40', '2021-11-01 17:21:40'),
(638, 'en', 'for_ssl', 'For SSL', '2021-11-01 17:21:40', '2021-11-01 17:21:40'),
(639, 'en', 'select_sendmail_for_mail_driver_if_you_face_any_issue_after_configuring_smtp_as_mail_driver', 'Select sendmail for Mail Driver if you face any issue after configuring smtp as Mail Driver', '2021-11-01 17:21:40', '2021-11-01 17:21:40'),
(640, 'en', 'set_mail_port_as_465', 'Set Mail port as 465', '2021-11-01 17:21:40', '2021-11-01 17:21:40'),
(641, 'en', 'set_mail_encryption_as_ssl', 'Set Mail Encryption as ssl', '2021-11-01 17:21:40', '2021-11-01 17:21:40'),
(642, 'en', 'newsletter_has_been_send', 'Newsletter has been send', '2021-11-01 17:22:08', '2021-11-01 17:22:08'),
(643, 'en', 'the_page_you_are_looking_for_has_not_been_found_on_our_server', 'The page you are looking for has not been found on our server.', '2021-11-02 07:02:23', '2021-11-02 07:02:23'),
(644, 'en', 'google_login_credential', 'Google Login Credential', '2021-11-02 10:35:52', '2021-11-02 10:35:52'),
(645, 'en', 'activation', 'Activation', '2021-11-02 10:35:52', '2021-11-02 10:35:52'),
(646, 'en', 'client_id', 'Client ID', '2021-11-02 10:35:52', '2021-11-02 10:35:52'),
(647, 'en', 'google_client_id', 'Google Client ID', '2021-11-02 10:35:53', '2021-11-02 10:35:53'),
(648, 'en', 'client_secret', 'Client Secret', '2021-11-02 10:35:53', '2021-11-02 10:35:53'),
(649, 'en', 'google_client_secret', 'Google Client Secret', '2021-11-02 10:35:53', '2021-11-02 10:35:53'),
(650, 'en', 'facebook_login_credential', 'Facebook Login Credential', '2021-11-02 10:35:53', '2021-11-02 10:35:53'),
(651, 'en', 'app_id', 'App ID', '2021-11-02 10:35:53', '2021-11-02 10:35:53'),
(652, 'en', 'facebook_client_id', 'Facebook Client ID', '2021-11-02 10:35:53', '2021-11-02 10:35:53'),
(653, 'en', 'app_secret', 'App Secret', '2021-11-02 10:35:53', '2021-11-02 10:35:53'),
(654, 'en', 'facebook_client_secret', 'Facebook Client Secret', '2021-11-02 10:35:53', '2021-11-02 10:35:53'),
(655, 'en', 'twitter_login_credential', 'Twitter Login Credential', '2021-11-02 10:35:53', '2021-11-02 10:35:53'),
(656, 'en', 'twitter_client_id', 'Twitter Client ID', '2021-11-02 10:35:53', '2021-11-02 10:35:53'),
(657, 'en', 'twitter_client_secret', 'Twitter Client Secret', '2021-11-02 10:35:53', '2021-11-02 10:35:53'),
(658, 'en', 's3_file_system_credentials', 'S3 File System Credentials', '2021-11-02 10:35:58', '2021-11-02 10:35:58'),
(659, 'en', 'aws_access_key_id', 'AWS_ACCESS_KEY_ID', '2021-11-02 10:35:58', '2021-11-02 10:35:58'),
(660, 'en', 'aws_secret_access_key', 'AWS_SECRET_ACCESS_KEY', '2021-11-02 10:35:58', '2021-11-02 10:35:58'),
(661, 'en', 'aws_default_region', 'AWS_DEFAULT_REGION', '2021-11-02 10:35:58', '2021-11-02 10:35:58'),
(662, 'en', 'aws_bucket', 'AWS_BUCKET', '2021-11-02 10:35:58', '2021-11-02 10:35:58'),
(663, 'en', 'aws_url', 'AWS_URL', '2021-11-02 10:35:58', '2021-11-02 10:35:58'),
(664, 'en', 's3_file_system_activation', 'S3 File System Activation', '2021-11-02 10:35:58', '2021-11-02 10:35:58'),
(665, 'en', 'cash_payment_activation', 'Cash Payment Activation', '2021-11-02 10:36:00', '2021-11-02 10:36:00'),
(666, 'en', 'paypal_credential', 'Paypal Credential', '2021-11-02 10:36:00', '2021-11-02 10:36:00'),
(667, 'en', 'paypal_client_id', 'Paypal Client Id', '2021-11-02 10:36:00', '2021-11-02 10:36:00'),
(668, 'en', 'paypal_client_secret', 'Paypal Client Secret', '2021-11-02 10:36:00', '2021-11-02 10:36:00'),
(669, 'en', 'paypal_sandbox_mode', 'Paypal Sandbox Mode', '2021-11-02 10:36:00', '2021-11-02 10:36:00'),
(670, 'en', 'sslcommerz_credential', 'Sslcommerz Credential', '2021-11-02 10:36:00', '2021-11-02 10:36:00'),
(671, 'en', 'sslcz_store_id', 'Sslcz Store Id', '2021-11-02 10:36:00', '2021-11-02 10:36:00'),
(672, 'en', 'sslcz_store_password', 'Sslcz store password', '2021-11-02 10:36:00', '2021-11-02 10:36:00'),
(673, 'en', 'sslcommerz_sandbox_mode', 'Sslcommerz Sandbox Mode', '2021-11-02 10:36:00', '2021-11-02 10:36:00'),
(674, 'en', 'stripe_credential', 'Stripe Credential', '2021-11-02 10:36:00', '2021-11-02 10:36:00'),
(675, 'en', 'stripe_key', 'Stripe Key', '2021-11-02 10:36:00', '2021-11-02 10:36:00'),
(676, 'en', 'stripe_secret', 'Stripe Secret', '2021-11-02 10:36:00', '2021-11-02 10:36:00'),
(677, 'en', 'razorpay_credential', 'RazorPay Credential', '2021-11-02 10:36:00', '2021-11-02 10:36:00'),
(678, 'en', 'razor_key', 'RAZOR KEY', '2021-11-02 10:36:00', '2021-11-02 10:36:00'),
(679, 'en', 'razor_secret', 'RAZOR SECRET', '2021-11-02 10:36:00', '2021-11-02 10:36:00'),
(680, 'en', 'instamojo_credential', 'Instamojo Credential', '2021-11-02 10:36:00', '2021-11-02 10:36:00'),
(681, 'en', 'api_key', 'API KEY', '2021-11-02 10:36:00', '2021-11-02 10:36:00'),
(682, 'en', 'im_api_key', 'IM API KEY', '2021-11-02 10:36:00', '2021-11-02 10:36:00'),
(683, 'en', 'auth_token', 'AUTH TOKEN', '2021-11-02 10:36:00', '2021-11-02 10:36:00'),
(684, 'en', 'im_auth_token', 'IM AUTH TOKEN', '2021-11-02 10:36:00', '2021-11-02 10:36:00'),
(685, 'en', 'instamojo_sandbox_mode', 'Instamojo Sandbox Mode', '2021-11-02 10:36:00', '2021-11-02 10:36:00'),
(686, 'en', 'paystack_credential', 'PayStack Credential', '2021-11-02 10:36:00', '2021-11-02 10:36:00'),
(687, 'en', 'public_key', 'PUBLIC KEY', '2021-11-02 10:36:00', '2021-11-02 10:36:00'),
(688, 'en', 'secret_key', 'SECRET KEY', '2021-11-02 10:36:00', '2021-11-02 10:36:00'),
(689, 'en', 'merchant_email', 'MERCHANT EMAIL', '2021-11-02 10:36:00', '2021-11-02 10:36:00'),
(690, 'en', 'ngenius_credential', 'Ngenius Credential', '2021-11-02 10:36:00', '2021-11-02 10:36:00'),
(691, 'en', 'ngenius_outlet_id', 'NGENIUS OUTLET ID', '2021-11-02 10:36:00', '2021-11-02 10:36:00'),
(692, 'en', 'ngenius_api_key', 'NGENIUS API KEY', '2021-11-02 10:36:00', '2021-11-02 10:36:00'),
(693, 'en', 'ngenius_currency', 'NGENIUS CURRENCY', '2021-11-02 10:36:00', '2021-11-02 10:36:00'),
(694, 'en', 'payhere_credential', 'Payhere Credential', '2021-11-02 10:36:00', '2021-11-02 10:36:00'),
(695, 'en', 'payhere_merchant_id', 'PAYHERE MERCHANT ID', '2021-11-02 10:36:00', '2021-11-02 10:36:00'),
(696, 'en', 'payhere_secret', 'PAYHERE SECRET', '2021-11-02 10:36:00', '2021-11-02 10:36:00'),
(697, 'en', 'payhere_currency', 'PAYHERE CURRENCY', '2021-11-02 10:36:00', '2021-11-02 10:36:00'),
(698, 'en', 'payhere_sandbox_mode', 'Payhere Sandbox Mode', '2021-11-02 10:36:00', '2021-11-02 10:36:00'),
(699, 'en', 'voguepay_credential', 'VoguePay Credential', '2021-11-02 10:36:00', '2021-11-02 10:36:00'),
(700, 'en', 'merchant_id', 'MERCHANT ID', '2021-11-02 10:36:00', '2021-11-02 10:36:00'),
(701, 'en', 'sandbox_mode', 'Sandbox Mode', '2021-11-02 10:36:01', '2021-11-02 10:36:01'),
(702, 'en', 'system_default_currency', 'System Default Currency', '2021-11-02 10:36:05', '2021-11-02 10:36:05'),
(703, 'en', 'set_currency_formats', 'Set Currency Formats', '2021-11-02 10:36:05', '2021-11-02 10:36:05'),
(704, 'en', 'symbol_format', 'Symbol Format', '2021-11-02 10:36:05', '2021-11-02 10:36:05'),
(705, 'en', 'decimal_separator', 'Decimal Separator', '2021-11-02 10:36:05', '2021-11-02 10:36:05'),
(706, 'en', 'no_of_decimals', 'No of decimals', '2021-11-02 10:36:05', '2021-11-02 10:36:05'),
(707, 'en', 'all_currencies', 'All Currencies', '2021-11-02 10:36:05', '2021-11-02 10:36:05'),
(708, 'en', 'add_new_currency', 'Add New Currency', '2021-11-02 10:36:05', '2021-11-02 10:36:05'),
(709, 'en', 'currency_name', 'Currency name', '2021-11-02 10:36:05', '2021-11-02 10:36:05'),
(710, 'en', 'currency_symbol', 'Currency symbol', '2021-11-02 10:36:05', '2021-11-02 10:36:05'),
(711, 'en', 'currency_code', 'Currency code', '2021-11-02 10:36:05', '2021-11-02 10:36:05'),
(712, 'en', 'exchange_rate', 'Exchange rate\r\n', '2021-11-02 10:36:05', '2023-04-06 07:35:35'),
(713, 'en', 'currency_status_updated_successfully', 'Currency Status updated successfully', '2021-11-02 10:36:06', '2021-11-02 10:36:06'),
(714, 'en', 'default_language', 'Default Language', '2021-11-02 10:37:20', '2021-11-02 10:37:20'),
(715, 'en', 'add_new_language', 'Add New Language', '2021-11-02 10:37:20', '2021-11-02 10:37:20'),
(716, 'en', 'language', 'Language', '2021-11-02 10:37:20', '2021-11-02 10:37:20'),
(717, 'en', 'rtl', 'RTL', '2021-11-02 10:37:20', '2021-11-02 10:37:20'),
(718, 'en', 'translation', 'Translation', '2021-11-02 10:37:20', '2021-11-02 10:37:20'),
(719, 'en', 'upload_product', 'Upload Product', '2021-11-02 11:29:17', '2021-11-02 11:29:17'),
(720, 'en', 'product_has_been_inserted_successfully', 'Product has been inserted successfully', '2021-11-02 11:31:10', '2021-11-02 11:31:10'),
(721, 'en', 'add_new_category', 'Add New category', '2021-11-02 11:40:10', '2021-11-02 11:40:10'),
(722, 'en', 'parent_category', 'Parent Category', '2021-11-02 11:40:10', '2021-11-02 11:40:10'),
(723, 'en', 'order_level', 'Order Level', '2021-11-02 11:40:10', '2021-11-02 11:40:10'),
(724, 'en', 'level', 'Level', '2021-11-02 11:40:10', '2021-11-02 11:40:10'),
(725, 'en', 'icon', 'Icon', '2021-11-02 11:40:10', '2021-11-02 11:40:10'),
(726, 'en', 'featured', 'Featured', '2021-11-02 11:40:10', '2021-11-02 11:40:10'),
(727, 'en', 'featured_categories_updated_successfully', 'Featured categories updated successfully', '2021-11-02 11:40:10', '2021-11-02 11:40:10'),
(728, 'en', 'category_information', 'Category Information', '2021-11-02 11:55:28', '2021-11-02 11:55:28'),
(729, 'en', 'no_parent', 'No Parent', '2021-11-02 11:55:28', '2021-11-02 11:55:28'),
(730, 'en', 'ordering_number', 'Ordering Number', '2021-11-02 11:55:28', '2021-11-02 11:55:28'),
(731, 'en', 'higher_number_has_high_priority', 'Higher number has high priority', '2021-11-02 11:55:28', '2021-11-02 11:55:28'),
(732, 'en', '200x300', '200x300', '2021-11-02 11:55:28', '2021-11-02 11:55:28'),
(733, 'en', '32x32', '32x32', '2021-11-02 11:55:28', '2021-11-02 11:55:28'),
(734, 'en', 'filtering_attributes', 'Filtering Attributes', '2021-11-02 11:55:28', '2021-11-02 11:55:28'),
(735, 'en', 'all_attributes', 'All Attributes', '2021-11-02 11:58:24', '2021-11-02 11:58:24'),
(736, 'en', 'values', 'Values', '2021-11-02 11:58:24', '2021-11-02 11:58:24'),
(737, 'en', 'actions', 'Actions\r\n', '2021-11-02 11:58:24', '2023-04-06 07:35:35'),
(738, 'en', 'attributes_are_non_deletable_you_can_only_add_or_edit', 'Attributes are non deletable. You can only add or edit.', '2021-11-02 11:58:24', '2021-11-02 11:58:24'),
(739, 'en', 'add', 'Add', '2021-11-02 11:58:24', '2021-11-02 11:58:24'),
(740, 'en', 'invoice', 'INVOICE', '2021-11-02 12:04:36', '2021-11-02 12:04:36'),
(741, 'en', 'standard', 'standard', '2021-11-02 12:04:36', '2021-11-02 12:04:36'),
(742, 'en', 'sl', 'S/L', '2021-11-02 12:04:36', '2021-11-02 12:04:36'),
(743, 'en', 'total_tax', 'Total Tax', '2021-11-02 12:04:37', '2021-11-02 12:04:37'),
(744, 'en', 'shipping_cost', 'Shipping Cost', '2021-11-02 12:04:37', '2021-11-02 12:04:37'),
(745, 'en', 'grand_total', 'Grand Total', '2021-11-02 12:04:37', '2021-11-02 12:04:37'),
(746, 'en', 'invoice_generated', 'Invoice generated.', '2021-11-02 12:04:38', '2021-11-02 12:04:38'),
(747, 'en', 'offer_information', 'Offer Information', '2021-11-02 12:16:09', '2021-11-02 12:16:09'),
(748, 'en', 'choose_products', 'Choose Products', '2021-11-02 12:16:09', '2021-11-02 12:16:09'),
(749, 'en', 'if_any_product_has_discount_or_exists_in_another_offer_that_discount_will_be_replaced_by_this_discount__time_limit', 'If any product has discount or exists in another offer, that discount will be replaced by this discount & time limit.', '2021-11-02 12:16:09', '2021-11-02 12:16:09'),
(750, 'en', 'all_subscribers', 'All Subscribers', '2021-11-02 12:34:59', '2021-11-02 12:34:59'),
(751, 'en', 'all_coupons', 'All coupons\r\n', '2021-11-02 12:36:36', '2023-04-06 07:35:35'),
(752, 'en', 'coupon_information', 'Coupon Information', '2021-11-02 12:36:36', '2021-11-02 12:36:36'),
(753, 'en', 'cart_base', 'Cart Base', '2021-11-02 12:36:36', '2021-11-02 12:36:36'),
(754, 'en', 'product_base', 'Product Base', '2021-11-02 12:36:36', '2021-11-02 12:36:36'),
(755, 'en', 'coupon_information_adding', 'Coupon Information Adding', '2021-11-02 12:36:40', '2021-11-02 12:36:40'),
(756, 'en', 'coupon_type', 'Coupon Type', '2021-11-02 12:36:40', '2021-11-02 12:36:40'),
(757, 'en', 'select_one', 'Select One', '2021-11-02 12:36:40', '2021-11-02 12:36:40'),
(758, 'en', 'for_products', 'For Products', '2021-11-02 12:36:40', '2021-11-02 12:36:40'),
(759, 'en', 'for_total_orders', 'For Total Orders', '2021-11-02 12:36:40', '2021-11-02 12:36:40'),
(760, 'en', 'add_your_product_base_coupon', 'Add Your Product Base Coupon', '2021-11-02 12:38:01', '2021-11-02 12:38:01'),
(761, 'en', 'coupon_code', 'Coupon code', '2021-11-02 12:38:01', '2021-11-02 12:38:01'),
(762, 'en', 'add_your_cart_base_coupon', 'Add Your Cart Base Coupon', '2021-11-02 12:39:13', '2021-11-02 12:39:13'),
(763, 'en', 'minimum_shopping', 'Minimum Shopping', '2021-11-02 12:39:13', '2021-11-02 12:39:13'),
(764, 'en', 'maximum_discount_amount', 'Maximum Discount Amount', '2021-11-02 12:39:13', '2021-11-02 12:39:13'),
(765, 'en', 'sales_stat', 'Sales stat', '2021-11-02 13:16:41', '2021-11-02 13:16:41'),
(766, 'en', 'cache_settings', 'Cache Settings', '2021-11-02 13:16:46', '2021-11-02 13:16:46'),
(767, 'en', 'current_cache_version', 'Current cache version', '2021-11-02 13:16:46', '2021-11-02 13:16:46'),
(768, 'en', 'force_clear_cache', 'Force Clear Cache', '2021-11-02 13:16:46', '2021-11-02 13:16:46'),
(769, 'en', 'delivery_timing', 'Delivery timing\r\n', '2021-11-02 13:21:10', '2021-11-02 13:21:10'),
(770, 'en', 'invalid_email_or_password', 'Invalid email or password', '2021-11-02 07:48:36', '2021-11-02 07:48:36'),
(771, 'en', 'type_country_name', 'Type country name', '2021-11-02 08:14:19', '2021-11-02 08:14:19'),
(772, 'en', 'filter', 'Filter', '2021-11-02 08:14:19', '2021-11-02 08:14:19'),
(773, 'en', 'all_states', 'All States', '2021-11-02 08:27:18', '2021-11-02 08:27:18'),
(774, 'en', 'type_state_name', 'Type state name', '2021-11-02 08:27:18', '2021-11-02 08:27:18'),
(775, 'en', 'action', 'Action\r\n', '2021-11-02 08:27:18', '2023-04-06 07:35:36'),
(776, 'en', 'add_new_state', 'Add New State', '2021-11-02 08:27:18', '2021-11-02 08:27:18'),
(777, 'en', 'all_cities', 'All cities', '2021-11-02 08:27:40', '2021-11-02 08:27:40'),
(778, 'en', 'type_city_name__enter', 'Type city name & Enter', '2021-11-02 08:27:40', '2021-11-02 08:27:40'),
(779, 'en', 'select_state', 'Select State', '2021-11-02 08:27:40', '2021-11-02 08:27:40'),
(780, 'en', 'add_new_city', 'Add New city', '2021-11-02 08:27:40', '2021-11-02 08:27:40'),
(781, 'en', 'customer_deleted_successfully', 'Customer deleted successfully', '2021-11-02 08:29:16', '2021-11-02 08:29:16'),
(782, 'en', 'address_has_been_added_successfully', 'Address has been added successfully.', '2021-11-02 08:39:38', '2021-11-02 08:39:38'),
(783, 'en', 'address_has_been_deleted_successfully', 'Address has been deleted successfully.', '2021-11-02 08:46:53', '2021-11-02 08:46:53'),
(784, 'en', 'address_has_been_marked_as_default_shipping_address', 'Address has been marked as default shipping address.', '2021-11-02 08:47:56', '2021-11-02 08:47:56'),
(785, 'en', '200x200', '200x200', '2021-11-02 08:49:53', '2021-11-02 08:49:53'),
(786, 'en', 'category_has_been_updated_successfully', 'Category has been updated successfully', '2021-11-02 08:50:15', '2021-11-02 08:50:15'),
(787, 'en', 'discounts', 'Discounts', '2021-11-02 08:54:04', '2021-11-02 08:54:04'),
(788, 'en', 'discount_type', 'Discount Type', '2021-11-02 08:54:04', '2021-11-02 08:54:04'),
(789, 'en', 'flash_deal_has_been_inserted_successfully', 'Flash Deal has been inserted successfully', '2021-11-02 08:54:24', '2021-11-02 08:54:24'),
(790, 'en', 'coupon_has_been_saved_successfully', 'Coupon has been saved successfully', '2021-11-02 08:55:58', '2021-11-02 08:55:58'),
(791, 'en', 'coupon_already_exist_for_this_coupon_code', 'Coupon already exist for this coupon code', '2021-11-02 08:57:56', '2021-11-02 08:57:56'),
(792, 'en', 'edit_offer_information', 'Edit Offer Information', '2021-11-02 08:59:22', '2021-11-02 08:59:22'),
(793, 'en', 'offer_has_been_updated_successfully', 'Offer has been updated successfully', '2021-11-02 08:59:45', '2021-11-02 08:59:45'),
(794, 'en', 'chat_list', 'Chat List', '2021-11-02 09:41:31', '2021-11-02 09:41:31'),
(795, 'en', 'last_message', 'Last Message', '2021-11-02 09:41:31', '2021-11-02 09:41:31'),
(796, 'en', 'show', 'Show', '2021-11-02 09:41:31', '2021-11-02 09:41:31'),
(797, 'en', 'your_message_has_been_sent_successfully', 'Your message has been sent successfully.', '2021-11-02 09:41:50', '2021-11-02 09:41:50'),
(798, 'en', 'messages_of_', 'Messages of ', '2021-11-02 09:43:13', '2021-11-02 09:43:13'),
(799, 'en', 'your_message', 'Your Message..', '2021-11-02 09:43:13', '2021-11-02 09:43:13'),
(800, 'en', 'add_new_staffs', 'Add New Staffs', '2021-11-02 09:45:34', '2021-11-02 09:45:34'),
(801, 'en', 'staff_information', 'Staff Information', '2021-11-02 09:47:02', '2021-11-02 09:47:02'),
(802, 'en', 'email_already_used', 'Email already used', '2021-11-02 09:47:26', '2021-11-02 09:47:26'),
(803, 'en', 'staff_has_been_inserted_successfully', 'Staff has been inserted successfully', '2021-11-02 09:47:58', '2021-11-02 09:47:58'),
(804, 'en', 'custom_css__script', 'Custom CSS & Script', '2021-11-02 10:01:31', '2021-11-02 10:01:31'),
(805, 'en', 'custom_css_for_website', 'Custom css for website', '2021-11-02 10:01:31', '2021-11-02 10:01:31'),
(810, 'en', 'website_pages', 'Website Pages', '2021-11-02 10:01:42', '2021-11-02 10:01:42'),
(811, 'en', 'all_pages', 'All Pages', '2021-11-02 10:01:42', '2021-11-02 10:01:42'),
(812, 'en', 'add_new_page', 'Add New Page', '2021-11-02 10:01:42', '2021-11-02 10:01:42'),
(813, 'en', 'url', 'URL', '2021-11-02 10:01:42', '2021-11-02 10:01:42'),
(814, 'en', 'website_banners', 'Website Banners', '2021-11-02 10:01:49', '2021-11-02 10:01:49'),
(815, 'en', 'login_page_banner__link', 'Login page banner & link', '2021-11-02 10:01:49', '2021-11-02 10:01:49'),
(816, 'en', 'recommended_size', 'Recommended size', '2021-11-02 10:01:49', '2021-11-02 10:01:49'),
(817, 'en', 'registration_page_banner__link', 'Registration page banner & link', '2021-11-02 10:01:49', '2021-11-02 10:01:49'),
(818, 'en', 'forgot_password_page_banner__link', 'Forgot password page banner & link', '2021-11-02 10:01:49', '2021-11-02 10:01:49'),
(819, 'en', 'product_listing_page_banner__link', 'Product listing page banner & link', '2021-11-02 10:01:49', '2021-11-02 10:01:49'),
(820, 'en', 'product_details_page_banner__link', 'Product details page banner & link', '2021-11-02 10:01:49', '2021-11-02 10:01:49'),
(821, 'en', 'checkout_page_banner__link', 'Checkout page banner & link', '2021-11-02 10:01:49', '2021-11-02 10:01:49'),
(822, 'en', 'customer_dashboard_top_banner__link', 'Customer dashboard top banner & link', '2021-11-02 10:01:49', '2021-11-02 10:01:49'),
(823, 'en', 'customer_dashboard_bottom_banner__link', 'Customer dashboard bottom banner & link', '2021-11-02 10:01:49', '2021-11-02 10:01:49'),
(824, 'en', 'website_footer', 'Website Footer', '2021-11-02 10:12:23', '2021-11-02 10:12:23'),
(825, 'en', 'footer_widget', 'Footer Widget', '2021-11-02 10:12:23', '2021-11-02 10:12:23'),
(826, 'en', 'footer_logo', 'Footer logo', '2021-11-02 10:12:23', '2021-11-02 10:12:23'),
(827, 'en', 'link_widget_one', 'Link widget one', '2021-11-02 10:12:23', '2021-11-02 10:12:23'),
(828, 'en', 'widget_title', 'Widget title', '2021-11-02 10:12:23', '2021-11-02 10:12:23'),
(829, 'en', 'links', 'Links', '2021-11-02 10:12:23', '2021-11-02 10:12:23'),
(830, 'en', 'link_widget_two', 'Link widget two', '2021-11-02 10:12:23', '2021-11-02 10:12:23'),
(831, 'en', 'contact_info_widget', 'Contact info widget', '2021-11-02 10:12:23', '2021-11-02 10:12:23'),
(832, 'en', 'contact_address', 'Contact address', '2021-11-02 10:12:23', '2021-11-02 10:12:23'),
(833, 'en', 'contact_email', 'Contact email', '2021-11-02 10:12:23', '2021-11-02 10:12:23'),
(834, 'en', 'contact_phone', 'Contact phone', '2021-11-02 10:12:23', '2021-11-02 10:12:23'),
(835, 'en', 'mobile_apps_link', 'Mobile apps link', '2021-11-02 10:12:23', '2021-11-02 10:12:23'),
(836, 'en', 'footer_bottom', 'Footer Bottom', '2021-11-02 10:12:23', '2021-11-02 10:12:23'),
(837, 'en', 'footer_menu', 'Footer menu', '2021-11-02 10:12:23', '2021-11-02 10:12:23'),
(838, 'en', 'copyright_widget_', 'Copyright Widget ', '2021-11-02 10:12:23', '2021-11-02 10:12:23'),
(839, 'en', 'copyright_text', 'Copyright Text', '2021-11-02 10:12:23', '2021-11-02 10:12:23'),
(840, 'en', 'social_link_widget_', 'Social Link Widget ', '2021-11-02 10:12:24', '2021-11-02 10:12:24'),
(841, 'en', 'social_links', 'Social Links', '2021-11-02 10:12:24', '2021-11-02 10:12:24'),
(842, 'en', 'home_page_settings', 'Home Page Settings', '2021-11-02 10:12:35', '2021-11-02 10:12:35'),
(843, 'en', 'home_page_main_sliders', 'Home Page Main Sliders', '2021-11-02 10:12:36', '2021-11-02 10:12:36'),
(844, 'en', '1st_sliders_image__link', '1st Sliders image & link', '2021-11-02 10:12:36', '2021-11-02 10:12:36'),
(845, 'en', '2nd_sliders_image__link', '2nd Sliders image & link', '2021-11-02 10:12:36', '2021-11-02 10:12:36'),
(846, 'en', '3rd_sliders_image__link', '3rd Sliders image & link', '2021-11-02 10:12:36', '2021-11-02 10:12:36'),
(847, 'en', '4th_sliders_image__link', '4th Sliders image & link', '2021-11-02 10:12:36', '2021-11-02 10:12:36'),
(848, 'en', 'select_categories', 'Select categories', '2021-11-02 10:12:36', '2021-11-02 10:12:36'),
(849, 'en', 'product_section_1', 'Product section 1', '2021-11-02 10:12:36', '2021-11-02 10:12:36'),
(850, 'en', 'section_title', 'Section title', '2021-11-02 10:12:36', '2021-11-02 10:12:36'),
(851, 'en', 'select_product', 'Select product', '2021-11-02 10:12:36', '2021-11-02 10:12:36'),
(852, 'en', 'home_banner_section_1', 'Home banner section 1', '2021-11-02 10:12:36', '2021-11-02 10:12:36'),
(853, 'en', 'banner_image__link', 'Banner image & link', '2021-11-02 10:12:36', '2021-11-02 10:12:36'),
(854, 'en', 'product_section_2', 'Product section 2', '2021-11-02 10:12:36', '2021-11-02 10:12:36'),
(855, 'en', 'home_banner_section_2', 'Home banner section 2', '2021-11-02 10:12:36', '2021-11-02 10:12:36'),
(856, 'en', 'product_section_3', 'Product section 3', '2021-11-02 10:12:36', '2021-11-02 10:12:36'),
(857, 'en', 'home_banner_section_3', 'Home banner section 3', '2021-11-02 10:12:36', '2021-11-02 10:12:36'),
(858, 'en', 'product_section_4', 'Product section 4', '2021-11-02 10:12:36', '2021-11-02 10:12:36'),
(859, 'en', 'product_section_5', 'Product section 5', '2021-11-02 10:12:36', '2021-11-02 10:12:36'),
(860, 'en', 'home_banner_section_4', 'Home banner section 4', '2021-11-02 10:12:36', '2021-11-02 10:12:36'),
(861, 'en', 'product_section_6', 'Product section 6', '2021-11-02 10:12:37', '2021-11-02 10:12:37'),
(862, 'en', 'home_bottom_about_text', 'Home bottom about text', '2021-11-02 10:12:37', '2021-11-02 10:12:37'),
(863, 'en', 'about_description', 'About description', '2021-11-02 10:12:37', '2021-11-02 10:12:37'),
(864, 'en', 'coupon_information_update', 'Coupon Information Update', '2021-11-02 13:53:22', '2021-11-02 13:53:22'),
(865, 'en', 'coupon_code_applied_successfully', 'Coupon code applied successfully', '2021-11-02 13:55:28', '2021-11-02 13:55:28'),
(866, 'en', 'edit_your_cart_base_coupon', 'Edit Your Cart Base Coupon', '2021-11-02 13:55:59', '2021-11-02 13:55:59'),
(867, 'en', 'no_brand', 'No brand', '2021-11-02 14:07:34', '2021-11-02 14:07:34'),
(868, 'en', 'product_has_been_duplicated_successfully', 'Product has been duplicated successfully', '2021-11-02 14:14:17', '2021-11-02 14:14:17'),
(869, 'en', 'brand_has_been_inserted_successfully', 'Brand has been inserted successfully', '2021-11-02 14:46:47', '2021-11-02 14:46:47'),
(870, 'en', 'rtl_status_updated_successfully', 'RTL status updated successfully', '2021-11-03 03:00:03', '2021-11-03 03:00:03'),
(871, 'en', 'type_key__enter', 'Type key & Enter', '2021-11-03 03:00:19', '2021-11-03 03:00:19'),
(872, 'en', 'key', 'Key', '2021-11-03 03:00:19', '2021-11-03 03:00:19'),
(873, 'en', 'value', 'Value', '2021-11-03 03:00:19', '2021-11-03 03:00:19'),
(874, 'en', 'copy_translations', 'Copy Translations', '2021-11-03 03:00:19', '2021-11-03 03:00:19'),
(925, 'en', 'translations_updated_for_', 'Translations updated for ', '2021-11-03 03:00:46', '2021-11-03 03:00:46'),
(2626, 'en', 'language_has_been_deleted_successfully', 'Language has been deleted successfully', '2021-11-03 03:18:59', '2021-11-03 03:18:59'),
(3503, 'en', 'language_information', 'Language Information', '2021-11-03 03:28:06', '2021-11-03 03:28:06'),
(3504, 'en', 'lang_code', 'Lang Code', '2021-11-03 03:28:06', '2021-11-03 03:28:06'),
(3505, 'en', 'language_has_been_inserted_successfully', 'Language has been inserted successfully', '2021-11-03 03:30:32', '2021-11-03 03:30:32'),
(4206, 'en', 'new_role_has_been_added_successfully', 'New Role has been added successfully', '2021-11-03 07:00:24', '2021-11-03 07:00:24'),
(4207, 'en', 'staff_has_been_updated_successfully', 'Staff has been updated successfully', '2021-11-03 07:02:10', '2021-11-03 07:02:10'),
(4208, 'en', 'no_city', 'No City', '2021-11-03 07:07:05', '2021-11-03 07:07:05'),
(4209, 'en', 'zone_has_been_updated_successfully', 'Zone has been updated successfully', '2021-11-03 07:09:32', '2021-11-03 07:09:32'),
(4210, 'en', 'facebook_chat', 'Facebook Chat', '2021-11-03 07:26:12', '2021-11-03 07:26:12'),
(4211, 'en', 'facebook_chat_setting', 'Facebook Chat Setting', '2021-11-03 07:26:12', '2021-11-03 07:26:12'),
(4212, 'en', 'facebook_page_id', 'Facebook Page ID', '2021-11-03 07:26:12', '2021-11-03 07:26:12'),
(4213, 'en', 'please_be_carefull_when_you_are_configuring_facebook_chat_for_incorrect_configuration_you_will_not_get_messenger_icon_on_your_userend_site', 'Please be carefull when you are configuring Facebook chat. For incorrect configuration you will not get messenger icon on your user-end site.', '2021-11-03 07:26:12', '2021-11-03 07:26:12'),
(4214, 'en', 'login_into_your_facebook_page', 'Login into your facebook page', '2021-11-03 07:26:12', '2021-11-03 07:26:12'),
(4215, 'en', 'find_the_about_option_of_your_facebook_page', 'Find the About option of your facebook page', '2021-11-03 07:26:12', '2021-11-03 07:26:12'),
(4216, 'en', 'at_the_very_bottom_you_can_find_the_facebook_page_id', 'At the very bottom, you can find the \\“Facebook Page ID\\”', '2021-11-03 07:26:12', '2021-11-03 07:26:12'),
(4217, 'en', 'go_to_settings_of_your_page_and_find_the_option_of_advance_messaging', 'Go to Settings of your page and find the option of \\\"Advance Messaging\\\"', '2021-11-03 07:26:13', '2021-11-03 07:26:13'),
(4218, 'en', 'scroll_down_that_page_and_you_will_get_white_listed_domain', 'Scroll down that page and you will get \\\"white listed domain\\\"', '2021-11-03 07:26:13', '2021-11-03 07:26:13'),
(4219, 'en', 'set_your_website_domain_name', 'Set your website domain name', '2021-11-03 07:26:13', '2021-11-03 07:26:13'),
(4220, 'en', 'facebook_pixel', 'Facebook Pixel', '2021-11-03 07:26:13', '2021-11-03 07:26:13'),
(4221, 'en', 'facebook_pixel_setting', 'Facebook Pixel Setting', '2021-11-03 07:26:13', '2021-11-03 07:26:13'),
(4222, 'en', 'facebook_pixel_id', 'Facebook Pixel ID', '2021-11-03 07:26:13', '2021-11-03 07:26:13'),
(4223, 'en', 'please_be_carefull_when_you_are_configuring_facebook_pixel', 'Please be carefull when you are configuring Facebook pixel.', '2021-11-03 07:26:13', '2021-11-03 07:26:13'),
(4224, 'en', 'log_in_to_facebook_and_go_to_your_ads_manager_account', 'Log in to Facebook and go to your Ads Manager account', '2021-11-03 07:26:13', '2021-11-03 07:26:13'),
(4225, 'en', 'open_the_navigation_bar_and_select_events_manager', 'Open the Navigation Bar and select Events Manager', '2021-11-03 07:26:13', '2021-11-03 07:26:13'),
(4226, 'en', 'copy_your_pixel_id_from_underneath_your_site_name_and_paste_the_number_into_facebook_pixel_id_field', 'Copy your Pixel ID from underneath your Site Name and paste the number into Facebook Pixel ID field', '2021-11-03 07:26:13', '2021-11-03 07:26:13'),
(4227, 'en', 'google_analytics_setting', 'Google Analytics Setting', '2021-11-03 07:26:13', '2021-11-03 07:26:13'),
(4228, 'en', 'google_analytics', 'Google Analytics', '2021-11-03 07:26:13', '2021-11-03 07:26:13'),
(4229, 'en', 'tracking_id', 'Tracking ID', '2021-11-03 07:26:13', '2021-11-03 07:26:13'),
(4230, 'en', 'edit_page_information', 'Edit Page Information', '2021-11-03 07:27:18', '2021-11-03 07:27:18'),
(4231, 'en', 'page_content', 'Page Content', '2021-11-03 07:27:18', '2021-11-03 07:27:18'),
(4232, 'en', 'link', 'Link', '2021-11-03 07:27:18', '2021-11-03 07:27:18'),
(4233, 'en', 'use_character_number_hypen_only', 'Use character, number, hypen only', '2021-11-03 07:27:18', '2021-11-03 07:27:18'),
(4234, 'en', 'add_content', 'Add Content', '2021-11-03 07:27:18', '2021-11-03 07:27:18'),
(4235, 'en', 'seo_fields', 'Seo Fields', '2021-11-03 07:27:18', '2021-11-03 07:27:18'),
(4236, 'en', 'update_page', 'Update Page', '2021-11-03 07:27:18', '2021-11-03 07:27:18'),
(4237, 'en', 'page_has_been_updated_successfully', 'Page has been updated successfully', '2021-11-03 07:27:53', '2021-11-03 07:27:53'),
(4238, 'en', 'please_configure_smtp_setting_to_work_all_email_sending_functionality', 'Please Configure SMTP Setting to work all email sending functionality', '2021-11-03 14:35:13', '2021-11-03 14:35:13'),
(4239, 'en', 'filter_by_rating', 'Filter by Rating', '2021-11-04 04:31:17', '2021-11-04 04:31:17'),
(4240, 'en', 'product__rating', 'Product & rating', '2021-11-04 04:31:17', '2021-11-04 04:31:17'),
(4241, 'en', 'published_reviews_updated_successfully', 'Published reviews updated successfully', '2021-11-04 04:31:17', '2021-11-04 04:31:17'),
(4242, 'en', 'brand_information', 'Brand Information', '2021-11-04 04:41:19', '2021-11-04 04:41:19'),
(4243, 'en', 'show_more', 'Show more\r\n', '2021-11-04 07:49:43', '2021-11-04 07:49:43'),
(4244, 'en', 'show_less', 'Show less\r\n', '2021-11-04 07:49:43', '2021-11-04 07:49:43'),
(4245, 'en', 'buy_now', 'Buy Now\r\n', '2021-11-04 07:49:43', '2021-11-14 19:11:03'),
(4246, 'en', 'support_chat', 'Support chat', '2021-11-04 17:55:52', '2021-11-04 17:55:52'),
(4247, 'en', 'brand_has_been_updated_successfully', 'Brand has been updated successfully', '2021-11-04 19:19:38', '2021-11-04 19:19:38'),
(4248, 'en', 'category_has_been_inserted_successfully', 'Category has been inserted successfully', '2021-11-04 19:21:57', '2021-11-04 19:21:57'),
(4249, 'en', 'customer_need_to_purchase_this_minimum_quantity_for_this_product_minimum_should_be_1', 'Customer need to purchase this minimum quantity for this product. Minimum should be 1.', '2021-11-04 19:30:47', '2021-11-04 19:30:47'),
(4250, 'en', 'customer_will_be_able_to_purchase_this_maximum_quantity_for_this_product_default_0_for_unlimited', 'Customer will be able to purchase this maximum quantity for this product. Default 0 for unlimited.', '2021-11-04 19:30:47', '2021-11-04 19:30:47'),
(4251, 'en', 'cart_updated', 'Cart updated', '2021-11-05 00:18:49', '2021-11-05 00:18:49'),
(4252, 'en', 'product_has_been_successfully_removed_from_your_cart', 'Product has been successfully removed from your cart', '2021-11-05 00:24:50', '2021-11-05 00:24:50'),
(4253, 'en', 'cart_deleted_due_to_minimum_quantity', 'Cart deleted due to minimum quantity', '2021-11-05 00:41:26', '2021-11-05 00:41:26'),
(4254, 'en', 'product_has_been_deleted_successfully', 'Product has been deleted successfully', '2021-11-05 02:47:12', '2021-11-05 02:47:12'),
(4255, 'en', 'your_order_has_been_placed', 'Your order has been placed', '2021-11-05 12:13:41', '2021-11-05 12:13:41'),
(4256, 'en', 'flutterwave_credential', 'Flutterwave Credential', '2021-11-05 16:09:15', '2021-11-05 16:09:15'),
(4257, 'en', 'flw_public_key', 'FLW_PUBLIC_KEY', '2021-11-05 16:09:15', '2021-11-05 16:09:15'),
(4258, 'en', 'flw_secret_key', 'FLW_SECRET_KEY', '2021-11-05 16:09:15', '2021-11-05 16:09:15'),
(4259, 'en', 'flw_secret_hash', 'FLW_SECRET_HASH', '2021-11-05 16:09:15', '2021-11-05 16:09:15'),
(4260, 'en', 'flw_payment_currency_code', 'FLW_PAYMENT_CURRENCY_CODE', '2021-11-05 16:09:15', '2021-11-05 16:09:15'),
(4261, 'en', 'paytm_credential', 'Paytm Credential', '2021-11-05 16:09:15', '2021-11-05 16:09:15'),
(4262, 'en', 'paytm_environment', 'PAYTM ENVIRONMENT', '2021-11-05 16:09:15', '2021-11-05 16:09:15'),
(4263, 'en', 'paytm_merchant_id', 'PAYTM MERCHANT ID', '2021-11-05 16:09:15', '2021-11-05 16:09:15'),
(4264, 'en', 'paytm_merchant_key', 'PAYTM MERCHANT KEY', '2021-11-05 16:09:15', '2021-11-05 16:09:15'),
(4265, 'en', 'paytm_merchant_website', 'PAYTM MERCHANT WEBSITE', '2021-11-05 16:09:15', '2021-11-05 16:09:15'),
(4266, 'en', 'paytm_channel', 'PAYTM CHANNEL', '2021-11-05 16:09:15', '2021-11-05 16:09:15'),
(4267, 'en', 'paytm_industry_type', 'PAYTM INDUSTRY TYPE', '2021-11-05 16:09:15', '2021-11-05 16:09:15'),
(4268, 'en', 'update_role_information', 'Update Role Information', '2021-11-05 17:54:55', '2021-11-05 17:54:55'),
(4269, 'en', 'all_values', 'All Values', '2021-11-05 18:07:14', '2021-11-05 18:07:14'),
(4270, 'en', 'attribute_value', 'Attribute Value', '2021-11-05 18:07:14', '2021-11-05 18:07:14'),
(4271, 'en', 'add_new_values', 'Add New Values', '2021-11-05 18:07:15', '2021-11-05 18:07:15'),
(4272, 'en', 'attribute_values_are_non_deletable_you_can_only_add_or_edit', 'Attribute values are non deletable. You can only add or edit.', '2021-11-05 18:07:15', '2021-11-05 18:07:15'),
(4273, 'en', 'attribute_value_name', 'Attribute Value Name', '2021-11-05 18:07:15', '2021-11-05 18:07:15'),
(4274, 'en', 'installed_addon', 'Installed Addon', '2021-11-06 09:51:10', '2021-11-06 09:51:10'),
(4275, 'en', 'install_new_addon', 'Install New Addon', '2021-11-06 09:51:10', '2021-11-06 09:51:10'),
(4276, 'en', 'no_addon_installed', 'No Addon Installed', '2021-11-06 09:51:10', '2021-11-06 09:51:10'),
(4277, 'en', 'status_updated_successfully', 'Status updated successfully', '2021-11-06 09:51:10', '2021-11-06 09:51:10'),
(4278, 'en', 'symbol', 'Symbol', '2021-11-06 10:02:31', '2021-11-06 10:02:31'),
(4279, 'en', 'currency_updated_successfully', 'Currency updated successfully', '2021-11-06 10:02:49', '2021-11-06 10:02:49'),
(4280, 'en', 'product_is_successfully_removed_from_your_wishlist', 'Product is successfully removed from your wishlist', '2021-11-06 10:04:36', '2021-11-06 10:04:36'),
(4281, 'en', 'no_order_found_by_this_code', 'No order found by this code', '2021-11-06 10:40:04', '2021-11-06 10:40:04'),
(4282, 'en', 'zip_file', 'Zip File', '2021-11-06 11:14:06', '2021-11-06 11:14:06'),
(4283, 'en', 'install', 'Install', '2021-11-06 11:14:06', '2021-11-06 11:14:06'),
(4284, 'en', 'your_cart_is_empty_please_select_a_product', 'Your cart is empty. Please select a product.', '2021-11-06 11:25:03', '2021-11-06 11:25:03'),
(4285, 'en', 'only_customers_can_login_here', 'Only customers can login here', '2021-11-06 11:37:38', '2021-11-06 11:37:38'),
(4286, 'en', 'express', 'express', '2021-11-06 11:39:53', '2021-11-06 11:39:53'),
(4287, 'en', 'all_taxes', 'All Taxes', '2021-11-06 13:06:06', '2021-11-06 13:06:06'),
(4288, 'en', 'taxes', 'Taxes', '2021-11-06 13:06:06', '2021-11-06 13:06:06'),
(4289, 'en', 'add_new_tax', 'Add New Tax', '2021-11-06 13:06:06', '2021-11-06 13:06:06'),
(4290, 'en', 'tax_status_updated_successfully', 'Tax Status updated successfully', '2021-11-06 13:06:06', '2021-11-06 13:06:06'),
(4291, 'en', 'test_smtp_configuration', 'Test SMTP configuration', '2021-11-06 14:28:52', '2021-11-06 14:28:52'),
(4292, 'en', 'enter_your_email_address', 'Enter your email address', '2021-11-06 14:28:52', '2021-11-06 14:28:52'),
(4293, 'en', 'send_test_email', 'Send test email', '2021-11-06 14:28:52', '2021-11-06 14:28:52'),
(4294, 'en', 'language_changed_to_', 'Language changed to ', '2021-11-06 14:33:02', '2021-11-06 14:33:02'),
(4295, 'en', 'update_currency', 'Update Currency', '2021-11-06 18:38:06', '2021-11-06 18:38:06'),
(4296, 'en', 'number_of_orders', 'Number of Orders', '2021-11-09 15:03:47', '2021-11-09 15:03:47'),
(4297, 'en', 'account_information', 'Account Information', '2021-11-09 15:03:51', '2021-11-09 15:03:51'),
(4298, 'en', 'registration_date', 'Registration Date', '2021-11-09 15:03:51', '2021-11-09 15:03:51'),
(4299, 'en', 'balance', 'Balance', '2021-11-09 15:03:51', '2021-11-09 15:03:51'),
(4300, 'en', 'others_information', 'Others Information', '2021-11-09 15:03:51', '2021-11-09 15:03:51');
INSERT INTO `translations` (`id`, `lang`, `lang_key`, `lang_value`, `created_at`, `updated_at`) VALUES
(4301, 'en', 'ordered_amount', 'Ordered Amount', '2021-11-09 15:03:51', '2021-11-09 15:03:51'),
(4302, 'en', 'number_of_items_in_cart', 'Number of items in cart', '2021-11-09 15:03:51', '2021-11-09 15:03:51'),
(4303, 'en', 'number_of_items_in_wishlist', 'Number of items in wishlist', '2021-11-09 15:03:51', '2021-11-09 15:03:51'),
(4304, 'en', 'total_reviewed_products', 'Total reviewed products', '2021-11-09 15:03:51', '2021-11-09 15:03:51'),
(4305, 'en', 'orders_of_this_customer', 'Orders of this customer', '2021-11-09 15:03:51', '2021-11-09 15:03:51'),
(4306, 'en', 'in_wishlist', 'In wishlist', '2021-11-09 17:58:02', '2021-11-09 17:58:02'),
(4307, 'en', 'in_cart', 'In cart', '2021-11-09 17:58:02', '2021-11-09 17:58:02'),
(4308, 'en', 'times_sold', 'Times sold', '2021-11-09 17:58:02', '2021-11-09 17:58:02'),
(4309, 'en', 'tags', 'Tags', '2021-11-09 17:58:02', '2021-11-09 17:58:02'),
(4310, 'en', 'has_warranty', 'Has warranty', '2021-11-09 17:58:02', '2021-11-09 17:58:02'),
(4311, 'en', 'minimum_purchase_qty_', 'Minimum Purchase Qty ', '2021-11-09 17:58:02', '2021-11-09 17:58:02'),
(4312, 'en', 'maximum_purchase_qty_', 'Maximum Purchase Qty ', '2021-11-09 17:58:02', '2021-11-09 17:58:02'),
(4313, 'en', 'gallery', 'Gallery', '2021-11-09 17:58:02', '2021-11-09 17:58:02'),
(4314, 'en', 'no_warranty', 'No warranty', '2021-11-09 18:53:37', '2021-11-09 18:53:37'),
(4315, 'en', 'address_has_been_updated_successfully', 'Address has been updated successfully.', '2021-11-09 19:19:40', '2021-11-09 19:19:40'),
(4316, 'en', 'attribute_value_has_been_added_successfully', 'Attribute value has been added successfully', '2021-11-09 19:44:13', '2021-11-09 19:44:13'),
(4317, 'en', 'brand_has_been_deleted_successfully', 'Brand has been deleted successfully', '2021-11-09 21:26:06', '2021-11-09 21:26:06'),
(4318, 'en', 'attribute_information', 'Attribute Information', '2021-11-10 00:47:13', '2021-11-10 00:47:13'),
(4319, 'en', 'save_page', 'Save Page', '2021-11-10 00:49:48', '2021-11-10 00:49:48'),
(4320, 'en', 'print_invoice', 'Print Invoice', '2021-11-10 18:57:00', '2021-11-10 18:57:00'),
(4321, 'en', 'role_has_been_updated_successfully', 'Role has been updated successfully', '2021-11-11 15:57:35', '2021-11-11 15:57:35'),
(4322, 'en', 'file_name', 'File Name', '2021-11-11 17:02:17', '2021-11-11 17:02:17'),
(4323, 'en', 'file_type', 'File Type', '2021-11-11 17:02:17', '2021-11-11 17:02:17'),
(4324, 'en', 'file_size', 'File Size', '2021-11-11 17:02:17', '2021-11-11 17:02:17'),
(4325, 'en', 'uploaded_by', 'Uploaded By', '2021-11-11 17:02:17', '2021-11-11 17:02:17'),
(4326, 'en', 'uploaded_at', 'Uploaded At', '2021-11-11 17:02:17', '2021-11-11 17:02:17'),
(4327, 'en', 'your_shopping_bag_is_empty_start_shopping', 'Your shopping bag is empty. Start shopping.\r\n', '2021-11-11 13:57:39', '2021-11-14 19:11:03'),
(4328, 'en', 'copy_code', 'Copy Code\r\n', '2021-11-14 19:11:03', '2021-11-14 19:11:03'),
(4329, 'en', 'code_copied_to_clipboard', 'Code copied to clipboard\r\n', '2021-11-14 19:11:03', '2023-04-06 07:35:34'),
(4330, 'en', 'flag', 'Flag', '2021-11-15 14:51:24', '2021-11-15 14:51:24'),
(4331, 'en', 'currencies', 'Currencies', '2021-11-15 14:52:32', '2021-11-15 14:52:32'),
(4332, 'en', 'amount_sold', 'Amount sold', '2021-11-15 16:12:47', '2021-11-15 16:12:47'),
(4333, 'en', 'update_now', 'Update Now', '2021-11-17 16:47:58', '2021-11-17 16:47:58'),
(4334, 'en', 'this_coupon_code_is_no_applicable_for_your_cart_products', 'This coupon code is no applicable for your cart products.', '2021-11-18 13:30:39', '2021-11-18 13:30:39'),
(4335, 'en', 'cash_on_delivery', 'Cash on Delivery', '2022-01-31 06:41:17', '2022-01-31 06:41:17'),
(8008, 'en', 'compare', 'compare\r\n', '2023-03-20 08:53:31', '2023-03-20 07:10:59'),
(8010, 'en', 'my_compared_list', 'my compared list\r\n', '2023-03-20 08:54:52', '2023-03-20 07:10:59'),
(8011, 'en', 'reset_list', 'reset list\r\n', '2023-03-20 07:10:59', '2023-03-20 07:10:59'),
(8012, 'en', 'compared_product_list_is_empty', 'compared product list is empty\r\n', '2023-03-20 07:10:59', '2023-03-20 07:10:59'),
(8013, 'en', 'a_verification_code_has_been_sent_to_your_phone_number', 'A verification code has been sent to your phone number.\r\n', '2023-04-06 07:35:34', '2023-04-06 07:35:34'),
(8014, 'en', 'already_have_an_account', 'Already have an account\r\n', '2023-04-06 07:35:34', '2023-04-06 07:35:34'),
(8015, 'en', 'enter_your_phone_number_to_recover_your_password', 'Enter your phone number to recover your password\r\n', '2023-04-06 07:35:34', '2023-04-06 07:35:34'),
(8016, 'en', 'enter_your_email_address_or_phone_number_to_recover_your_password', 'Enter your email address or phone number to recover your password\r\n', '2023-04-06 07:35:34', '2023-04-06 07:35:34'),
(8017, 'en', 'enter_your_phone_number_code__new_password', 'Enter your phone number, Code & New Password\r\n', '2023-04-06 07:35:34', '2023-04-06 07:35:34'),
(8018, 'en', 'enter_your_phone_number_verification_code', 'Enter your phone number, verification code\r\n', '2023-04-06 07:35:34', '2023-04-06 07:35:34'),
(8019, 'en', 'pay_with_wallet', 'Pay with wallet\r\n', '2023-04-06 07:35:34', '2023-04-06 07:35:34'),
(8020, 'en', 'become_a_seller_with', 'Become a Seller with\r\n', '2023-04-06 07:35:34', '2023-04-06 07:35:34'),
(8021, 'en', 'all_shops', 'All Shops\r\n', '2023-04-06 07:35:34', '2023-04-06 07:35:34'),
(8022, 'en', 'visit_store', 'Visit Store\r\n', '2023-04-06 07:35:34', '2023-04-06 07:35:34'),
(8023, 'en', 'follow', 'Follow\r\n', '2023-04-06 07:35:34', '2023-04-06 07:35:34'),
(8024, 'en', 'unfollow', 'Unfollow\r\n', '2023-04-06 07:35:34', '2023-04-06 07:35:34'),
(8025, 'en', 'shop_since', 'Shop since\r\n', '2023-04-06 07:35:34', '2023-04-06 07:35:34'),
(8026, 'en', 'featured_products', 'Featured Products\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8027, 'en', 'new_arrival', 'New Arrival\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8028, 'en', 'best_rated', 'Best Rated\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8029, 'en', 'best_selling', 'Best Selling\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8030, 'en', 'store', 'Store\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8031, 'en', 'view_all_products_of_this_shop', 'View All Products of This Shop\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8032, 'en', 'shop', 'shop\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8033, 'en', 'followed_shops', 'Followed shops\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8034, 'en', 'no_followed_shop_found', 'No followed shop found\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8035, 'en', 'sort_by_brand', 'Sort by brand\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8036, 'en', 'sort_by_category', 'Sort by category\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8037, 'en', 'no_data_available', 'No data available\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8038, 'en', 'be_a_seller', 'Be a Seller\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8039, 'en', 'seller_zone', 'Seller Zone\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8040, 'en', 'login_to_seller_panel', 'Login to Seller Panel\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8041, 'en', 'already_a_seller', 'Already a Seller?\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8042, 'en', 'register_your_shop', 'Register your shop\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8043, 'en', 'personal_information', 'Personal information\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8044, 'en', 'shop_information', 'Shop information\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8045, 'en', 'register_shop', 'Register Shop\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8046, 'en', 'refund_product_quantity_can_not_be_greater_than_the_ordered_product_quantity', 'Refund Product quantity can not be greater than the ordered product quantity\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8047, 'en', 'refund_information', 'Refund information\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8048, 'en', 'refund_amount', 'Refund amount\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8049, 'en', 'refund_reasons', 'Refund reasons\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8050, 'en', 'refund_note', 'Refund note\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8051, 'en', 'attachments', 'Attachments\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8052, 'en', 'request_refund', 'Request Refund\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8053, 'en', 'shops', 'shops\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8054, 'en', 'congratulations_you_reached_the_minimum_order_amount', 'Congratulations! You reached the minimum order amount.\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8055, 'en', 'you_need_to_reach', 'You need to reach\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8056, 'en', 'to_place_order_from_this_shop', 'to place order from this shop.\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8057, 'en', 'to_place_order_from', 'to place order from\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8058, 'en', 'create_new_refund_request', 'Create new refund request\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8059, 'en', 'refund_requests', 'Refund requests\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8060, 'en', 'pending', 'Pending\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8061, 'en', 'accepted', 'Accepted\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8062, 'en', 'rejected', 'Rejected\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8063, 'en', 'choose_one', 'Choose One\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8064, 'en', 'select_images', 'Select images\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8065, 'en', 'please_select_a_product', 'Please select a product\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8066, 'en', 'wallet_history', 'Wallet history\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8067, 'en', 'added', 'Added\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8068, 'en', 'deducted', 'Deducted\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8069, 'en', 'we_will_get_back_to_very_soon', 'We will get back to very soon\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8070, 'en', 'tracking_information', 'Tracking information\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8071, 'en', 'courier_name', 'Courier name\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8072, 'en', 'tracking_number', 'Tracking number\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8073, 'en', 'tracking_url', 'Tracking url\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8074, 'en', 'use_phone_instead', 'use phone instead\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8075, 'en', 'conversations', 'Conversations\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8076, 'en', 'no_conversation_found', 'No Conversation Found\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8077, 'en', 'my_conversations', 'My Conversations\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8078, 'en', 'message_seller', 'Message Seller\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8079, 'en', 'any_query_about_this_product', 'Any query about this product\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8080, 'en', 'question', 'Question\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8081, 'en', 'message_has_been_sent_to_seller', 'Message has been sent to seller\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8082, 'en', 'conversation_with', 'Conversation with\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8083, 'en', 'product_query', 'Product Query\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8084, 'en', 'product_querries', 'Product Querries\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8085, 'en', 'my_querries', 'My Querries\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8086, 'en', 'new', 'New\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8087, 'en', 'query_with', 'Query With\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8088, 'en', 'contact_admin', 'Contact Admin\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8089, 'en', 'account_details', 'Account details\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8090, 'en', 'routing_number', 'Routing Number\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8091, 'en', 'account_number', 'Account Number\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8092, 'en', 'account_name', 'Account Name\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8093, 'en', 'bank_name', 'Bank Name\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8094, 'en', 'bank_info', 'Bank Info\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8095, 'en', 'payment_name', 'Payment Name\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8096, 'en', 'payment_type', 'Payment Type\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8097, 'en', 'transaction_id', 'Transaction ID\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8098, 'en', 'please_input_transaction_id', 'Please input transaction id\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8099, 'en', 'add_receipt', 'Add Receipt\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8100, 'en', 'wallet_recharge_successful', 'Wallet Recharge Successful\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8101, 'en', 'please_wait_for_approval', 'Please Wait For Approval\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8102, 'en', 'receipt', 'Receipt\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8103, 'en', 'payment_details', 'Payment Details\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8104, 'en', 'paid_via', 'Paid Via\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8105, 'en', 'all_blogs', 'All Blogs\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8106, 'en', 'read_full_blog', 'Read full blog\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8107, 'en', 'social_media', 'Social Media\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8108, 'en', 'recent_blogs', 'Recent Blogs\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8109, 'en', 'no_blog_found', 'No Blog Found\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8110, 'en', 'please_enter_cvv', 'Please enter cvv\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8111, 'en', 'please_enter_valid_card_number', 'Please enter valid card number\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8112, 'en', 'select_month', 'Select Month\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8113, 'en', 'select_year', 'Select Year\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8114, 'en', 'earning_points', 'Earning Points\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8115, 'en', 'my_points', 'My Points\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8116, 'en', 'point', 'Point\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8117, 'en', 'wallet_money', 'Wallet Money\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8118, 'en', 'point_earning_history', 'Point Earning history\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8119, 'en', 'points', 'Points\r\n', '2023-04-06 07:35:35', '2023-04-06 07:35:35'),
(8120, 'en', 'converted', 'Converted\r\n', '2023-04-06 07:35:36', '2023-04-06 07:35:36'),
(8121, 'en', 'pts', 'Pts\r\n', '2023-04-06 07:35:36', '2023-04-06 07:35:36'),
(8122, 'en', 'convert_now', 'Convert Now\r\n', '2023-04-06 07:35:36', '2023-04-06 07:35:36'),
(8123, 'en', 'done', 'Done\r\n', '2023-04-06 07:35:36', '2023-04-06 07:35:36'),
(8124, 'en', 'club_point_converted_to_wallet_successfully', 'Club point converted to wallet successfully\r\n', '2023-04-06 07:35:36', '2023-04-06 07:35:36'),
(8125, 'en', 'convert_club_points_to_wallet', 'Convert club points to wallet?\r\n', '2023-04-06 07:35:36', '2023-04-06 07:35:36'),
(8126, 'en', 'club_points', 'Club Points\r\n', '2023-04-06 07:35:36', '2023-04-06 07:35:36'),
(8127, 'en', 'total_club_points', 'Total Club Points\r\n', '2023-04-06 07:35:36', '2023-04-06 07:35:36'),
(8128, 'en', 'the_order_is_not_paid', 'The order is not paid\r\n', '2023-04-06 07:35:36', '2023-04-06 07:35:36'),
(8129, 'en', 'sorry_nothing_found', 'Sorry, nothing found.\r\n', '2023-04-06 07:35:36', '2023-04-06 07:35:36'),
(8130, 'en', 'popular_suggestions', 'Popular Suggestions\r\n', '2023-04-06 07:35:36', '2023-04-06 07:35:36'),
(8131, 'en', 'category_suggestions', 'Category Suggestions\r\n', '2023-04-06 07:35:36', '2023-04-06 07:35:36'),
(8132, 'en', 'authorize_net', 'Authorize Net', '2023-04-06 07:35:39', '2023-04-06 07:35:39'),
(8133, 'en', 'mercadopago', 'Mercadopago', '2023-04-06 07:35:39', '2023-04-06 07:35:39'),
(8134, 'en', 'iyzico', 'iyzico', '2023-04-06 07:35:39', '2023-04-06 07:35:39'),
(8135, 'en', 'welcome', 'Welcome', '2023-04-06 07:35:40', '2023-04-06 07:35:40'),
(8136, 'en', 'pos_system', 'POS System', '2023-04-06 07:35:49', '2023-04-06 07:35:49'),
(8137, 'en', 'pos_manager', 'POS Manager', '2023-04-06 07:35:49', '2023-04-06 07:35:49'),
(8138, 'en', 'blog', 'Blog', '2023-04-06 07:35:49', '2023-04-06 07:35:49'),
(8139, 'en', 'blog_categories', 'Blog Categories', '2023-04-06 07:35:49', '2023-04-06 07:35:49'),
(8140, 'en', 'offline_payment_system', 'Offline Payment System', '2023-04-06 07:35:49', '2023-04-06 07:35:49'),
(8141, 'en', 'manual_payment_methods', 'Manual Payment Methods', '2023-04-06 07:35:49', '2023-04-06 07:35:49'),
(8142, 'en', 'offline_wallet_recharge', 'Offline Wallet Recharge', '2023-04-06 07:35:49', '2023-04-06 07:35:49'),
(8143, 'en', 'otp_settings', 'OTP Settings', '2023-04-06 07:35:50', '2023-04-06 07:35:50'),
(8144, 'en', 'clear_cache', 'Clear Cache', '2023-04-06 07:35:50', '2023-04-06 07:35:50'),
(8145, 'en', 'search_by_product_name', 'Search by Product Name', '2023-04-06 07:37:08', '2023-04-06 07:37:08'),
(8146, 'en', 'loading', 'Loading..', '2023-04-06 07:37:08', '2023-04-06 07:37:08'),
(8147, 'en', 'walk_in_customer', 'Walk In Customer', '2023-04-06 07:37:08', '2023-04-06 07:37:08'),
(8148, 'en', 'no_product_added', 'No Product Added', '2023-04-06 07:37:08', '2023-04-06 07:37:08'),
(8149, 'en', 'place_order', 'Place Order', '2023-04-06 07:37:08', '2023-04-06 07:37:08'),
(8150, 'en', 'confirm', 'Confirm', '2023-04-06 07:37:08', '2023-04-06 07:37:08'),
(8151, 'en', 'select_your_country', 'Select your country', '2023-04-06 07:37:08', '2023-04-06 07:37:08'),
(8152, 'en', 'city', 'City', '2023-04-06 07:37:08', '2023-04-06 07:37:08'),
(8153, 'en', 'confirm_with_cod', 'Confirm with COD', '2023-04-06 07:37:08', '2023-04-06 07:37:08'),
(8154, 'en', 'confirm_with_cash', 'Confirm with Cash', '2023-04-06 07:37:08', '2023-04-06 07:37:08'),
(8155, 'en', 'offline_payment_info', 'Offline Payment Info', '2023-04-06 07:37:08', '2023-04-06 07:37:08'),
(8156, 'en', 'payment_proof', 'Payment Proof', '2023-04-06 07:37:08', '2023-04-06 07:37:08'),
(8157, 'en', 'choose_image', 'Choose image', '2023-04-06 07:37:08', '2023-04-06 07:37:08'),
(8158, 'en', 'load_more', 'Load More.', '2023-04-06 07:37:08', '2023-04-06 07:37:08'),
(8159, 'en', 'nothing_more_found', 'Nothing more found.', '2023-04-06 07:37:08', '2023-04-06 07:37:08'),
(8160, 'en', 'total_sold', 'Total Sold', '2023-04-06 07:46:16', '2023-04-06 07:46:16'),
(8161, 'en', 'you_verification_code_is_', 'You verification code is ', '2023-04-06 07:49:41', '2023-04-06 07:49:41'),
(8162, 'en', 'shorten_large_price', 'Shorten Large Price', '2023-04-06 07:50:02', '2023-04-06 07:50:02'),
(8163, 'en', 'install_or_update_addon', 'Install or update Addon', '2023-04-06 07:53:01', '2023-04-06 07:53:01'),
(8164, 'en', 'purchase_code', 'Purchase code', '2023-04-06 07:53:01', '2023-04-06 07:53:01'),
(8165, 'en', 'shop_settings', 'Shop Settings', '2023-04-06 07:53:15', '2023-04-06 07:53:15'),
(8166, 'en', 'minimum_order_amount', 'Minimum order amount', '2023-04-06 07:53:15', '2023-04-06 07:53:15'),
(8167, 'en', 'customer_need_to_purchase_minimum_this_amount_of_admin_shop_products_to_place_an_order', 'Customer need to purchase minimum this amount of admin shop products to place an order.', '2023-04-06 07:53:15', '2023-04-06 07:53:15'),
(8168, 'en', 'maintenance_mode', 'Maintenance Mode', '2023-04-06 07:53:15', '2023-04-06 07:53:15'),
(8169, 'en', 'club_point_activation', 'Club Point Activation', '2023-04-06 07:53:15', '2023-04-06 07:53:15'),
(8170, 'en', 'product_comparison', 'Product Comparison', '2023-04-06 07:53:15', '2023-04-06 07:53:15'),
(8171, 'en', 'offline_payment', 'Offline Payment', '2023-04-06 07:53:15', '2023-04-06 07:53:15'),
(8172, 'en', 'sticky_header', 'Sticky Header', '2023-04-06 07:53:15', '2023-04-06 07:53:15'),
(8173, 'en', 'cache_cleared_successfully', 'Cache cleared successfully', '2023-04-06 10:55:55', '2023-04-06 10:55:55'),
(8174, 'en', 'site_icon', 'Site Icon', '2023-04-06 10:56:15', '2023-04-06 10:56:15'),
(8175, 'en', 'site_icon_152x152_png', 'Site Icon. 152x152 .png', '2023-04-06 10:56:15', '2023-04-06 10:56:15'),
(8176, 'en', 'write_css_with', 'Write css with', '2023-04-06 10:56:15', '2023-04-06 10:56:15'),
(8177, 'en', 'tag', 'tag', '2023-04-06 10:56:15', '2023-04-06 10:56:15'),
(8178, 'en', 'header_custom_script__before', 'Header custom script - before', '2023-04-06 10:56:15', '2023-04-06 10:56:15'),
(8179, 'en', 'write_script_with', 'Write script with', '2023-04-06 10:56:16', '2023-04-06 10:56:16'),
(8180, 'en', 'footer_custom_script__before', 'Footer custom script - before', '2023-04-06 10:56:16', '2023-04-06 10:56:16'),
(8181, 'en', 'shop_registration_message', 'Shop Registration Message', '2023-04-06 10:56:16', '2023-04-06 10:56:16'),
(8182, 'en', 'shop_registration_message_title', 'Shop Registration Message Title', '2023-04-06 10:56:16', '2023-04-06 10:56:16'),
(8183, 'en', 'shop_registration_message_content', 'Shop Registration Message Content', '2023-04-06 10:56:16', '2023-04-06 10:56:16'),
(8184, 'en', 'loginregistration_setting', 'Login/Registration Setting', '2023-04-06 10:59:04', '2023-04-06 10:59:04'),
(8185, 'en', 'loginregistration_with', 'Login/Registration with', '2023-04-06 10:59:04', '2023-04-06 10:59:04'),
(8186, 'en', 'email__phone', 'Email & Phone', '2023-04-06 10:59:04', '2023-04-06 10:59:04'),
(8187, 'en', 'otp_vertification_with', 'OTP vertification with', '2023-04-06 10:59:04', '2023-04-06 10:59:04'),
(8188, 'en', 'disabled', 'Disabled', '2023-04-06 10:59:04', '2023-04-06 10:59:04'),
(8189, 'en', 'if_you_select_disabled_then_customers_can_register_and_access_their_panel_the_dont_need_to_verify', 'If you select disabled, then customers can register and access their panel. The don\'t need to verify.', '2023-04-06 10:59:04', '2023-04-06 10:59:04'),
(8190, 'en', 'if_you_select_loginregistration_with_email_then_customers_need_to_verify_their_email', 'If you select Login/Registration with email, then customers need to verify their email.', '2023-04-06 10:59:04', '2023-04-06 10:59:04'),
(8191, 'en', 'if_you_select_loginregistration_with_phone_then_customers_need_to_verify_their_phone', 'If you select Login/Registration with phone, then customers need to verify their phone.', '2023-04-06 10:59:04', '2023-04-06 10:59:04'),
(8192, 'en', 'if_you_select_loginregistration_with_email__phone_then_customers_need_to_verify_their_phone_or_email_based_on_this_selected_option', 'If you select Login/Registration with email & phone, then customers need to verify their phone or email based on this selected option.', '2023-04-06 10:59:04', '2023-04-06 10:59:04'),
(8193, 'en', 'if_you_use_phone_verification_or_login_with_phone_only_make_sure_youve_configured_any_sms_gateway_properly', 'If you use phone verification or login with phone only, make sure you\'ve configured any sms gateway properly.', '2023-04-06 10:59:04', '2023-04-06 10:59:04'),
(8194, 'en', 'active_sms_gateway', 'Active sms gateway', '2023-04-06 10:59:04', '2023-04-06 10:59:04'),
(8195, 'en', 'twilio', 'Twilio', '2023-04-06 10:59:04', '2023-04-06 10:59:04'),
(8196, 'en', 'vonage', 'Vonage', '2023-04-06 10:59:05', '2023-04-06 10:59:05'),
(8197, 'en', 'twilio_credential', 'Twilio Credential', '2023-04-06 10:59:05', '2023-04-06 10:59:05'),
(8198, 'en', 'twilio_sid', 'TWILIO SID', '2023-04-06 10:59:05', '2023-04-06 10:59:05'),
(8199, 'en', 'twilio_auth_token', 'TWILIO AUTH TOKEN', '2023-04-06 10:59:05', '2023-04-06 10:59:05'),
(8200, 'en', 'valid_twilio_number', 'VALID TWILIO NUMBER', '2023-04-06 10:59:05', '2023-04-06 10:59:05'),
(8201, 'en', 'vonage_credential', 'Vonage Credential', '2023-04-06 10:59:05', '2023-04-06 10:59:05'),
(8202, 'en', 'vonage_key', 'VONAGE KEY', '2023-04-06 10:59:05', '2023-04-06 10:59:05'),
(8203, 'en', 'vonage_secret', 'VONAGE SECRET', '2023-04-06 10:59:05', '2023-04-06 10:59:05'),
(8204, 'en', 'successfully_logged_in', 'Successfully logged in', '2023-04-06 11:20:07', '2023-04-06 11:20:07'),
(8205, 'en', 'chat', 'Chat', '2023-04-06 11:20:26', '2023-04-06 11:20:26'),
(8206, 'en', 'show_chats', 'Show Chats', '2023-04-06 11:20:26', '2023-04-06 11:20:26'),
(8207, 'en', 'show_messages', 'Show Messages', '2023-04-06 11:20:26', '2023-04-06 11:20:26'),
(8208, 'en', 'setting', 'Setting', '2023-04-06 11:20:26', '2023-04-06 11:20:26'),
(8209, 'en', 'show_general_setting', 'Show General Setting', '2023-04-06 11:20:26', '2023-04-06 11:20:26'),
(8210, 'en', 'show_languages', 'Show Languages', '2023-04-06 11:20:26', '2023-04-06 11:20:26'),
(8211, 'en', 'add_languages', 'Add Languages', '2023-04-06 11:20:26', '2023-04-06 11:20:26'),
(8212, 'en', 'edit_languages', 'Edit Languages', '2023-04-06 11:20:26', '2023-04-06 11:20:26'),
(8213, 'en', 'delete_languages', 'Delete Languages', '2023-04-06 11:20:26', '2023-04-06 11:20:26'),
(8214, 'en', 'show_currencies', 'Show Currencies', '2023-04-06 11:20:26', '2023-04-06 11:20:26'),
(8215, 'en', 'add_currencies', 'Add Currencies', '2023-04-06 11:20:26', '2023-04-06 11:20:26'),
(8216, 'en', 'edit_currencies', 'Edit Currencies', '2023-04-06 11:20:26', '2023-04-06 11:20:26'),
(8217, 'en', 'smtp_setting', 'Smtp Setting', '2023-04-06 11:20:26', '2023-04-06 11:20:26'),
(8218, 'en', 'file_system', 'File System', '2023-04-06 11:20:26', '2023-04-06 11:20:26'),
(8219, 'en', 'social_media_login', 'Social Media Login', '2023-04-06 11:20:26', '2023-04-06 11:20:26'),
(8220, 'en', 'third_party_setting', 'Third Party Setting', '2023-04-06 11:20:26', '2023-04-06 11:20:26'),
(8221, 'en', 'shipping_configuration', 'Shipping Configuration', '2023-04-06 11:20:26', '2023-04-06 11:20:26'),
(8222, 'en', 'show_taxes', 'Show Taxes', '2023-04-06 11:20:26', '2023-04-06 11:20:26'),
(8223, 'en', 'add_taxes', 'Add Taxes', '2023-04-06 11:20:27', '2023-04-06 11:20:27'),
(8224, 'en', 'edit_taxes', 'Edit Taxes', '2023-04-06 11:20:27', '2023-04-06 11:20:27'),
(8225, 'en', 'delete_taxes', 'Delete Taxes', '2023-04-06 11:20:27', '2023-04-06 11:20:27'),
(8226, 'en', 'sms_settings', 'Sms Settings', '2023-04-06 11:20:27', '2023-04-06 11:20:27'),
(8227, 'en', 'system_update', 'System Update', '2023-04-06 11:20:27', '2023-04-06 11:20:27'),
(8228, 'en', 'addon', 'Addon', '2023-04-06 11:20:27', '2023-04-06 11:20:27'),
(8229, 'en', 'show_addons', 'Show Addons', '2023-04-06 11:20:27', '2023-04-06 11:20:27'),
(8230, 'en', 'pos', 'Pos', '2023-04-06 11:20:27', '2023-04-06 11:20:27'),
(8231, 'en', 'pos_configuration', 'Pos Configuration', '2023-04-06 11:20:27', '2023-04-06 11:20:27'),
(8232, 'en', 'view_all_blogs', 'View All Blogs', '2023-04-06 11:20:27', '2023-04-06 11:20:27'),
(8233, 'en', 'add_blog', 'Add Blog', '2023-04-06 11:20:27', '2023-04-06 11:20:27'),
(8234, 'en', 'edit_blog', 'Edit Blog', '2023-04-06 11:20:27', '2023-04-06 11:20:27'),
(8235, 'en', 'delete_blog', 'Delete Blog', '2023-04-06 11:20:27', '2023-04-06 11:20:27'),
(8236, 'en', 'publish_blog', 'Publish Blog', '2023-04-06 11:20:27', '2023-04-06 11:20:27'),
(8237, 'en', 'view_blog_categories', 'View Blog Categories', '2023-04-06 11:20:27', '2023-04-06 11:20:27'),
(8238, 'en', 'add_blog_category', 'Add Blog Category', '2023-04-06 11:20:27', '2023-04-06 11:20:27'),
(8239, 'en', 'edit_blog_category', 'Edit Blog Category', '2023-04-06 11:20:27', '2023-04-06 11:20:27'),
(8240, 'en', 'delete_blog_category', 'Delete Blog Category', '2023-04-06 11:20:27', '2023-04-06 11:20:27'),
(8241, 'en', 'view_all_manual_payment_methods', 'View All Manual Payment Methods', '2023-04-06 11:20:27', '2023-04-06 11:20:27'),
(8242, 'en', 'add_manual_payment_method', 'Add Manual Payment Method', '2023-04-06 11:20:27', '2023-04-06 11:20:27'),
(8243, 'en', 'edit_manual_payment_method', 'Edit Manual Payment Method', '2023-04-06 11:20:27', '2023-04-06 11:20:27'),
(8244, 'en', 'delete_manual_payment_method', 'Delete Manual Payment Method', '2023-04-06 11:20:27', '2023-04-06 11:20:27'),
(8245, 'en', 'view_all_offline_wallet_recharges', 'View All Offline Wallet Recharges', '2023-04-06 11:20:27', '2023-04-06 11:20:27'),
(8246, 'en', 'approve_offline_wallet_recharge', 'Approve Offline Wallet Recharge', '2023-04-06 11:20:27', '2023-04-06 11:20:27'),
(8247, 'en', 'view_all_offline_seller_package_payments', 'View All Offline Seller Package Payments', '2023-04-06 11:20:27', '2023-04-06 11:20:27'),
(8248, 'en', 'approve_offline_seller_package_payment', 'Approve Offline Seller Package Payment', '2023-04-06 11:20:27', '2023-04-06 11:20:27'),
(8249, 'en', 'all_blog_posts', 'All Blog Posts', '2023-04-06 11:30:46', '2023-04-06 11:30:46'),
(8250, 'en', 'add_new_blog_post', 'Add New Blog Post', '2023-04-06 11:30:46', '2023-04-06 11:30:46'),
(8251, 'en', 'short_description', 'Short Description', '2023-04-06 11:30:46', '2023-04-06 11:30:46'),
(8252, 'en', 'change_blog_status_successfully', 'Change blog status successfully', '2023-04-06 11:30:46', '2023-04-06 11:30:46'),
(8253, 'en', 'ban_this_customer', 'Ban this Customer', '2023-04-06 11:31:58', '2023-04-06 11:31:58'),
(8254, 'en', 'update_language_info', 'update Language Info', '2023-04-08 06:01:23', '2023-04-08 06:01:23'),
(8255, 'ar', 'popular_suggestions', 'الاقتراحات الاكثر رواجا', '2023-04-08 06:07:12', '2023-04-08 10:34:15'),
(8256, 'ar', 'popular_categories', 'الأقسام الأكثر رواجا', '2023-04-08 06:07:12', '2023-04-28 09:49:01'),
(8257, 'ar', 'most_popular', 'الأكثر شهرة', '2023-04-08 06:07:12', '2023-04-08 06:07:12'),
(8258, 'en', 'default_language_updated_successfully', 'Default language updated successfully', '2023-04-08 06:07:38', '2023-04-08 06:07:38'),
(8259, 'ar', 'default_language_updated_successfully', 'تم تحديث اللغة الافتراضية بنجاح', '2023-04-08 06:40:54', '2023-04-08 06:40:54'),
(8260, 'ar', 'update_language_info', 'تحديث معلومات اللغة', '2023-04-08 06:40:54', '2023-04-08 06:40:54'),
(8261, 'ar', 'ban_this_customer', 'حظر هذا العميل', '2023-04-08 06:40:54', '2023-04-08 06:40:54'),
(8262, 'ar', 'all_blog_posts', 'جميع مشاركات المدونة', '2023-04-08 06:40:54', '2023-04-08 06:45:19'),
(8263, 'ar', 'add_new_blog_post', 'أضف منشور مدونة جديد', '2023-04-08 06:40:54', '2023-04-08 06:45:19'),
(8264, 'ar', 'short_description', 'وصف قصير', '2023-04-08 06:40:54', '2023-04-08 06:45:19'),
(8265, 'ar', 'change_blog_status_successfully', 'تغيير حالة المدونة بنجاح', '2023-04-08 06:40:54', '2023-04-08 06:45:19'),
(8266, 'ar', 'add_taxes', 'أضافة الضرائب', '2023-04-08 06:40:54', '2023-04-08 06:45:19'),
(8267, 'ar', 'edit_taxes', 'تحرير الضرائب', '2023-04-08 06:40:54', '2023-04-08 06:45:19'),
(8268, 'ar', 'delete_taxes', 'حذف الضرائب', '2023-04-08 06:40:54', '2023-04-08 06:45:19'),
(8269, 'ar', 'sms_settings', 'اعدادات الرسائل النصية', '2023-04-08 06:40:54', '2023-04-08 06:45:19'),
(8270, 'ar', 'system_update', 'تحديث النظام', '2023-04-08 06:40:54', '2023-04-08 06:45:19'),
(8271, 'ar', 'addon', 'اضافه', '2023-04-08 06:40:54', '2023-04-08 06:45:20'),
(8272, 'ar', 'show_addons', 'اظهار الاضاغات', '2023-04-08 06:40:54', '2023-04-08 06:45:20'),
(8273, 'ar', 'pos', NULL, '2023-04-08 06:40:54', '2023-04-08 06:40:54'),
(8274, 'ar', 'pos_configuration', NULL, '2023-04-08 06:40:54', '2023-04-08 06:40:54'),
(8275, 'ar', 'view_all_blogs', 'عرض كل المدونات', '2023-04-08 06:40:54', '2023-04-08 06:45:20'),
(8276, 'ar', 'add_blog', 'أضف مدونة', '2023-04-08 06:40:54', '2023-04-08 06:45:20'),
(8277, 'ar', 'edit_blog', 'تحرير المدونة', '2023-04-08 06:40:54', '2023-04-08 06:46:52'),
(8278, 'ar', 'delete_blog', 'حذف المدونة', '2023-04-08 06:40:54', '2023-04-08 06:46:52'),
(8279, 'ar', 'publish_blog', 'نشر المدونة', '2023-04-08 06:40:54', '2023-04-08 06:46:52'),
(8280, 'ar', 'view_blog_categories', 'عرض أقسام المدونة', '2023-04-08 06:40:54', '2023-04-28 09:50:45'),
(8281, 'ar', 'add_blog_category', 'أضف فئة المدونة', '2023-04-08 06:40:54', '2023-04-08 06:46:52'),
(8282, 'ar', 'edit_blog_category', 'تحرير فئة المدونة', '2023-04-08 06:40:54', '2023-04-08 06:58:09'),
(8283, 'ar', 'delete_blog_category', 'حذف فئة المدونة', '2023-04-08 06:40:55', '2023-04-08 06:58:09'),
(8284, 'ar', 'view_all_manual_payment_methods', 'عرض جميع طرق الدفع اليدوية', '2023-04-08 06:40:55', '2023-04-08 06:58:09'),
(8285, 'ar', 'add_manual_payment_method', 'أضف طريقة دفع يدوية', '2023-04-08 06:40:55', '2023-04-08 06:58:09'),
(8286, 'ar', 'edit_manual_payment_method', 'تحرير طريقة الدفع اليدوية', '2023-04-08 06:40:55', '2023-04-08 06:58:09'),
(8287, 'ar', 'delete_manual_payment_method', 'حذف طريقة الدفع اليدوية', '2023-04-08 06:40:55', '2023-04-08 06:58:09'),
(8288, 'ar', 'view_all_offline_wallet_recharges', 'عرض جميع عمليات إعادة شحن المحفظة غير المتصلة بالإنترنت', '2023-04-08 06:40:55', '2023-04-08 06:58:09'),
(8289, 'ar', 'approve_offline_wallet_recharge', 'الموافقة على إعادة شحن المحفظة غير المتصلة بالإنترنت', '2023-04-08 06:40:55', '2023-04-08 06:58:09'),
(8290, 'ar', 'view_all_offline_seller_package_payments', 'عرض جميع مدفوعات حزمة البائع غير المتصل', '2023-04-08 06:40:55', '2023-04-08 06:58:09'),
(8291, 'ar', 'approve_offline_seller_package_payment', 'الموافقة على دفع حزمة البائع غير المتصل بالإنترنت', '2023-04-08 06:40:55', '2023-04-08 06:58:09'),
(8292, 'ar', 'chat', 'محادثة', '2023-04-08 06:40:55', '2023-04-08 06:58:09'),
(8293, 'ar', 'show_chats', 'إظهار الدردشات', '2023-04-08 06:40:55', '2023-04-08 06:58:09'),
(8294, 'ar', 'show_messages', 'إظهار الرسائل', '2023-04-08 06:40:55', '2023-04-08 06:59:54'),
(8295, 'ar', 'setting', 'ضبط', '2023-04-08 06:40:55', '2023-04-08 06:59:54'),
(8296, 'ar', 'show_general_setting', 'إظهار الإعداد العام', '2023-04-08 06:40:55', '2023-04-08 06:59:54'),
(8297, 'ar', 'show_languages', 'إظهار اللغات', '2023-04-08 06:40:55', '2023-04-08 06:59:54'),
(8298, 'ar', 'add_languages', 'أضف اللغات', '2023-04-08 06:40:55', '2023-04-08 06:59:54'),
(8299, 'ar', 'edit_languages', 'تعديل اللغات', '2023-04-08 06:40:55', '2023-04-08 06:59:54'),
(8300, 'ar', 'delete_languages', 'حذف اللغات', '2023-04-08 06:40:55', '2023-04-08 06:59:54'),
(8301, 'ar', 'show_currencies', 'إظهار العملات', '2023-04-08 06:40:55', '2023-04-08 06:59:54'),
(8302, 'ar', 'add_currencies', 'أضف العملات', '2023-04-08 06:40:55', '2023-04-08 06:59:54'),
(8303, 'ar', 'edit_currencies', 'تحرير العملات', '2023-04-08 06:40:55', '2023-04-08 06:59:54'),
(8304, 'ar', 'smtp_setting', NULL, '2023-04-08 06:40:55', '2023-04-08 06:40:55'),
(8305, 'ar', 'file_system', 'نظام الملفات', '2023-04-08 06:40:55', '2023-04-08 06:59:54'),
(8306, 'ar', 'social_media_login', 'تسجيل الدخول إلى وسائل التواصل الاجتماعي', '2023-04-08 06:40:55', '2023-04-08 06:59:54'),
(8307, 'ar', 'third_party_setting', 'إعداد الطرف الثالث', '2023-04-08 06:40:55', '2023-04-08 06:59:54'),
(8308, 'ar', 'shipping_configuration', 'تكوين الشحن', '2023-04-08 06:40:55', '2023-04-08 06:59:54'),
(8309, 'ar', 'show_taxes', 'عرض الضرائب', '2023-04-08 07:05:30', '2023-04-08 07:05:30'),
(8310, 'ar', 'successfully_logged_in', 'تم تسجيل الدخول بنجاح', '2023-04-08 07:05:30', '2023-04-08 07:05:30'),
(8311, 'ar', 'vonage', NULL, '2023-04-08 07:05:30', '2023-04-08 07:05:30'),
(8312, 'ar', 'twilio_credential', NULL, '2023-04-08 07:05:30', '2023-04-08 07:05:30'),
(8313, 'ar', 'twilio_sid', NULL, '2023-04-08 07:05:30', '2023-04-08 07:05:30'),
(8314, 'ar', 'twilio_auth_token', NULL, '2023-04-08 07:05:30', '2023-04-08 07:05:30'),
(8315, 'ar', 'valid_twilio_number', NULL, '2023-04-08 07:05:30', '2023-04-08 07:05:30'),
(8316, 'ar', 'vonage_credential', NULL, '2023-04-08 07:05:30', '2023-04-08 07:05:30'),
(8317, 'ar', 'vonage_key', NULL, '2023-04-08 07:05:30', '2023-04-08 07:05:30'),
(8318, 'ar', 'vonage_secret', NULL, '2023-04-08 07:05:30', '2023-04-08 07:05:30'),
(8319, 'ar', 'if_you_select_loginregistration_with_email__phone_then_customers_need_to_verify_their_phone_or_email_based_on_this_selected_option', 'إذا حددت تسجيل الدخول / التسجيل باستخدام البريد الإلكتروني والهاتف ، فسيحتاج العملاء إلى التحقق من هاتفهم أو بريدهم الإلكتروني بناءً على هذا الخيار المحدد.', '2023-04-08 07:05:30', '2023-04-08 07:05:30'),
(8320, 'ar', 'if_you_use_phone_verification_or_login_with_phone_only_make_sure_youve_configured_any_sms_gateway_properly', 'إذا كنت تستخدم التحقق عبر الهاتف أو تسجيل الدخول باستخدام الهاتف فقط ، فتأكد من تكوين أي بوابة SMS بشكل صحيح.', '2023-04-08 07:05:30', '2023-04-08 07:05:30'),
(8321, 'ar', 'active_sms_gateway', 'بوابة الرسائل القصيرة النشطة', '2023-04-08 07:05:30', '2023-04-08 07:05:30'),
(8322, 'ar', 'twilio', NULL, '2023-04-08 07:05:30', '2023-04-08 07:05:30'),
(8323, 'ar', 'loginregistration_setting', 'إعداد تسجيل الدخول / التسجيل', '2023-04-08 07:05:30', '2023-04-08 07:05:30'),
(8324, 'ar', 'loginregistration_with', 'تسجيل الدخول / التسجيل مع', '2023-04-08 07:05:30', '2023-04-08 08:25:00'),
(8325, 'ar', 'email__phone', 'البريد الإلكتروني ورقم الجوال', '2023-04-08 07:05:30', '2023-04-09 02:47:17'),
(8326, 'ar', 'otp_vertification_with', 'رمز التحقق OTP', '2023-04-08 07:05:30', '2023-04-09 02:47:17'),
(8327, 'ar', 'disabled', 'Disabled', '2023-04-08 07:05:30', '2023-04-09 02:47:17'),
(8328, 'ar', 'if_you_select_disabled_then_customers_can_register_and_access_their_panel_the_dont_need_to_verify', 'إذا حددت تعطيل ، فيمكن للعملاء التسجيل والوصول إلى لوحتهم. لا تحتاج إلى التحقق.', '2023-04-08 07:05:30', '2023-04-09 02:47:17'),
(8329, 'ar', 'if_you_select_loginregistration_with_email_then_customers_need_to_verify_their_email', 'إذا حددت تسجيل الدخول / التسجيل بالبريد الإلكتروني ، فسيحتاج العملاء إلى التحقق من بريدهم الإلكتروني.', '2023-04-08 07:05:30', '2023-04-09 02:47:18'),
(8330, 'ar', 'if_you_select_loginregistration_with_phone_then_customers_need_to_verify_their_phone', 'إذا حددت تسجيل الدخول / التسجيل عبر الهاتف ، فسيحتاج العملاء إلى التحقق من هواتفهم.', '2023-04-08 07:05:30', '2023-04-09 02:47:18'),
(8331, 'ar', 'write_script_with', 'اكتب النص باستخدام', '2023-04-08 07:05:30', '2023-04-09 02:47:18'),
(8332, 'ar', 'footer_custom_script__before', 'Footer custom script - before', '2023-04-08 07:05:30', '2023-04-09 02:47:18'),
(8333, 'ar', 'shop_registration_message', 'رسالة تسجيل المتجر', '2023-04-08 07:05:30', '2023-04-09 02:47:18'),
(8334, 'ar', 'shop_registration_message_title', 'عنوان رسالة تسجيل المتجر', '2023-04-08 07:05:30', '2023-04-09 02:47:18'),
(8335, 'ar', 'shop_registration_message_content', 'متجر محتوى رسالة التسجيل', '2023-04-08 07:05:30', '2023-04-09 02:47:18'),
(8336, 'ar', 'site_icon', 'أيقونة الموقع', '2023-04-08 07:05:30', '2023-04-09 02:47:18'),
(8337, 'ar', 'site_icon_152x152_png', 'Site Icon. 152x152 .png', '2023-04-08 07:05:30', '2023-04-09 02:47:18'),
(8338, 'ar', 'write_css_with', 'Write css with', '2023-04-08 07:05:30', '2023-04-09 02:47:18'),
(8339, 'ar', 'tag', 'tag', '2023-04-08 07:05:30', '2023-04-09 02:47:18'),
(8340, 'ar', 'header_custom_script__before', 'Header custom script - before', '2023-04-08 07:05:30', '2023-04-09 02:47:18'),
(8341, 'ar', 'cache_cleared_successfully', 'Cache cleared successfully', '2023-04-08 07:05:30', '2023-04-09 02:47:18'),
(8342, 'ar', 'shop_settings', 'اعدادات المتجر', '2023-04-08 07:05:30', '2023-04-09 02:47:18'),
(8343, 'ar', 'minimum_order_amount', 'الحد الأدنى للطلب', '2023-04-08 07:05:30', '2023-04-09 02:47:18'),
(8344, 'ar', 'customer_need_to_purchase_minimum_this_amount_of_admin_shop_products_to_place_an_order', 'يحتاج العميل إلى شراء هذا المقدار الأدنى من منتجات المتجر الإداري لتقديم طلب.', '2023-04-08 07:05:30', '2023-04-09 02:47:18'),
(8345, 'ar', 'maintenance_mode', 'نمط الصيانة', '2023-04-08 07:05:30', '2023-04-09 02:47:18'),
(8346, 'ar', 'club_point_activation', 'Club Point Activation', '2023-04-08 07:05:30', '2023-04-09 02:47:18'),
(8347, 'ar', 'product_comparison', 'مقارنة السلعة', '2023-04-08 07:05:30', '2023-04-09 02:47:18'),
(8348, 'ar', 'offline_payment', 'Offline Payment', '2023-04-08 07:05:30', '2023-04-09 02:47:18'),
(8349, 'ar', 'sticky_header', 'Sticky Header', '2023-04-08 07:05:30', '2023-04-09 02:47:18'),
(8350, 'ar', 'install_or_update_addon', 'Install or update Addon', '2023-04-08 07:05:30', '2023-04-09 02:47:18'),
(8351, 'ar', 'purchase_code', 'كود شراء', '2023-04-08 07:05:30', '2023-04-09 02:47:18'),
(8352, 'ar', 'shorten_large_price', 'Shorten Large Price', '2023-04-08 07:05:30', '2023-04-09 02:47:18'),
(8353, 'ar', 'you_verification_code_is_', 'رمز التحقق الخاص بك هو', '2023-04-08 07:05:30', '2023-04-09 02:47:18'),
(8354, 'ar', 'total_sold', 'إجمالي المبيعات', '2023-04-08 07:05:30', '2023-04-09 02:47:18'),
(8355, 'ar', 'search_by_product_name', 'البحث عن طريق اسم المنتج', '2023-04-08 07:05:30', '2023-04-09 02:47:18'),
(8356, 'ar', 'loading', 'تحميل..', '2023-04-08 07:05:30', '2023-04-09 02:47:18'),
(8357, 'ar', 'walk_in_customer', 'Walk In Customer', '2023-04-08 07:05:30', '2023-04-09 02:47:18'),
(8358, 'ar', 'no_product_added', 'لا يوجد منتج مضاف', '2023-04-08 07:05:30', '2023-04-09 02:47:18'),
(8359, 'en', 'attribute_has_been_inserted_successfully', 'Attribute has been inserted successfully', '2023-04-08 09:09:54', '2023-04-08 09:09:54'),
(8360, 'en', 'the_coupon_is_invalid', 'The coupon is invalid.', '2023-04-08 09:45:30', '2023-04-08 09:45:30'),
(8361, 'en', 'new_tax_info_has_been_added_successfully', 'New Tax info has been added successfully', '2023-04-08 09:47:10', '2023-04-08 09:47:10'),
(8362, 'en', 'tax_information', 'Tax Information', '2023-04-08 09:47:14', '2023-04-08 09:47:14'),
(8363, 'en', 'edit_tax_information', 'Edit Tax Information', '2023-04-08 09:47:14', '2023-04-08 09:47:14'),
(8364, 'en', 'tax_type', 'Tax Type', '2023-04-08 09:47:14', '2023-04-08 09:47:14'),
(8365, 'en', 'tax_info_has_been_updated_successfully', 'Tax info has been updated successfully', '2023-04-08 09:47:21', '2023-04-08 09:47:21'),
(8366, 'en', 'razorpay_key', 'Razorpay Key', '2023-04-08 09:55:25', '2023-04-08 09:55:25'),
(8367, 'en', 'razorpay_secret', 'Razorpay Secret', '2023-04-08 09:55:26', '2023-04-08 09:55:26'),
(8368, 'en', 'flw_encryption_key', 'FLW_ENCRYPTION_KEY', '2023-04-08 09:55:26', '2023-04-08 09:55:26'),
(8369, 'en', 'merchant_login_id', 'Merchant Login ID', '2023-04-08 09:55:26', '2023-04-08 09:55:26'),
(8370, 'en', 'merchant_transaction_key', 'Merchant Transaction Key', '2023-04-08 09:55:26', '2023-04-08 09:55:26'),
(8371, 'en', 'authorize_net_sandbox_mode', 'Authorize Net Sandbox Mode', '2023-04-08 09:55:26', '2023-04-08 09:55:26'),
(8372, 'en', 'payfast_credential', 'Payfast Credential', '2023-04-08 09:55:26', '2023-04-08 09:55:26'),
(8373, 'en', 'payfast_merchant_id', 'Payfast Merchant ID', '2023-04-08 09:55:26', '2023-04-08 09:55:26'),
(8374, 'en', 'payfast_merchant_key', 'Payfast Merchant Key', '2023-04-08 09:55:26', '2023-04-08 09:55:26'),
(8375, 'en', 'payfast_sandbox_mode', 'Payfast Sandbox Mode', '2023-04-08 09:55:26', '2023-04-08 09:55:26'),
(8376, 'en', 'mercadopago_credential', 'Mercadopago Credential', '2023-04-08 09:55:26', '2023-04-08 09:55:26'),
(8377, 'en', 'mercadopago_key', 'Mercadopago Key', '2023-04-08 09:55:26', '2023-04-08 09:55:26'),
(8378, 'en', 'mercadopago_access', 'Mercadopago Access', '2023-04-08 09:55:26', '2023-04-08 09:55:26'),
(8379, 'en', 'mercadopago_currency', 'Mercadopago Currency', '2023-04-08 09:55:26', '2023-04-08 09:55:26'),
(8380, 'en', 'iyzico_credential', 'Iyzico Credential', '2023-04-08 09:55:26', '2023-04-08 09:55:26'),
(8381, 'en', 'iyzico_api_key', 'IYZICO_API_KEY', '2023-04-08 09:55:26', '2023-04-08 09:55:26'),
(8382, 'en', 'iyzico_secret_key', 'IYZICO_SECRET_KEY', '2023-04-08 09:55:26', '2023-04-08 09:55:26'),
(8383, 'en', 'iyzico_currency_code', 'IYZICO CURRENCY CODE', '2023-04-08 09:55:26', '2023-04-08 09:55:26'),
(8384, 'en', 'iyzico_sandbox_mode', 'IYZICO Sandbox Mode', '2023-04-08 09:55:26', '2023-04-08 09:55:26'),
(8385, 'en', 'add_new_payment_method', 'Add New Payment Method', '2023-04-08 10:02:43', '2023-04-08 10:02:43'),
(8386, 'en', 'manual_payment_method', 'Manual Payment Method', '2023-04-08 10:02:43', '2023-04-08 10:02:43'),
(8387, 'en', 'heading', 'Heading', '2023-04-08 10:02:44', '2023-04-08 10:02:44'),
(8388, 'en', 'manual_payment_information', 'Manual Payment Information', '2023-04-08 10:02:48', '2023-04-08 10:02:48'),
(8389, 'en', 'custom_payment', 'Custom Payment', '2023-04-08 10:02:48', '2023-04-08 10:02:48'),
(8390, 'en', 'bank_payment', 'Bank Payment', '2023-04-08 10:02:48', '2023-04-08 10:02:48'),
(8391, 'en', 'cheque_payment', 'Cheque Payment', '2023-04-08 10:02:48', '2023-04-08 10:02:48'),
(8392, 'en', 'checkout_thumbnail', 'Checkout Thumbnail', '2023-04-08 10:02:48', '2023-04-08 10:02:48'),
(8393, 'en', 'payment_instruction', 'Payment Instruction', '2023-04-08 10:02:48', '2023-04-08 10:02:48'),
(8394, 'en', 'bank_information', 'Bank Information', '2023-04-08 10:02:48', '2023-04-08 10:02:48'),
(8395, 'en', 'add_more', 'Add More', '2023-04-08 10:02:48', '2023-04-08 10:02:48'),
(8396, 'en', 'remove', 'Remove', '2023-04-08 10:02:48', '2023-04-08 10:02:48'),
(8397, 'en', 'show_language_switcher', 'Show Language Switcher?', '2023-04-08 10:03:27', '2023-04-08 10:03:27'),
(8398, 'ar', 'otp_settings', 'اعدادات OTP', '2023-04-08 10:34:15', '2023-04-09 02:48:30'),
(8399, 'ar', 'clear_cache', 'مسح ذاكرة التخزين المؤقت', '2023-04-08 10:34:15', '2023-04-08 10:34:15'),
(8400, 'ar', 'pos_system', 'نظام POS', '2023-04-08 10:34:15', '2023-04-09 02:48:30'),
(8401, 'ar', 'pos_manager', 'POS Manager', '2023-04-08 10:34:15', '2023-04-09 02:48:30'),
(8402, 'ar', 'blog', 'Blog', '2023-04-08 10:34:15', '2023-04-09 02:48:30'),
(8403, 'ar', 'blog_categories', 'Blog Categories	سس', '2023-04-08 10:34:15', '2023-04-09 02:48:30'),
(8404, 'ar', 'offline_payment_system', NULL, '2023-04-08 10:34:15', '2023-04-08 10:34:15'),
(8405, 'ar', 'manual_payment_methods', NULL, '2023-04-08 10:34:15', '2023-04-08 10:34:15'),
(8406, 'ar', 'offline_wallet_recharge', NULL, '2023-04-08 10:34:15', '2023-04-08 10:34:15'),
(8407, 'ar', 'welcome', 'مرحبا', '2023-04-08 10:34:15', '2023-04-08 10:34:15'),
(8408, 'ar', 'authorize_net', NULL, '2023-04-08 10:34:15', '2023-04-08 10:34:15'),
(8409, 'ar', 'mercadopago', NULL, '2023-04-08 10:34:15', '2023-04-08 10:34:15'),
(8410, 'ar', 'iyzico', NULL, '2023-04-08 10:34:15', '2023-04-08 10:34:15'),
(8411, 'ar', 'converted', NULL, '2023-04-08 10:34:15', '2023-04-08 10:34:15'),
(8412, 'ar', 'pts', NULL, '2023-04-08 10:34:15', '2023-04-08 10:34:15'),
(8413, 'ar', 'convert_now', 'تحويل الآن', '2023-04-08 10:34:15', '2023-04-08 10:34:15'),
(8414, 'ar', 'done', 'تم', '2023-04-08 10:34:15', '2023-04-08 10:34:15'),
(8415, 'ar', 'club_point_converted_to_wallet_successfully', NULL, '2023-04-08 10:34:15', '2023-04-08 10:34:15'),
(8416, 'ar', 'convert_club_points_to_wallet', NULL, '2023-04-08 10:34:15', '2023-04-08 10:34:15'),
(8417, 'ar', 'club_points', NULL, '2023-04-08 10:34:15', '2023-04-08 10:34:15'),
(8418, 'ar', 'total_club_points', NULL, '2023-04-08 10:34:15', '2023-04-08 10:34:15'),
(8419, 'ar', 'the_order_is_not_paid', 'الطلب غير مدفوع', '2023-04-08 10:34:15', '2023-04-08 10:34:15'),
(8420, 'ar', 'sorry_nothing_found', 'عذراَ, لم اجد شيء', '2023-04-08 10:34:15', '2023-04-08 10:34:15'),
(8421, 'ar', 'category_suggestions', 'اقتراح الأقسام', '2023-04-08 10:34:15', '2023-04-28 09:52:30'),
(8422, 'ar', 'featured_products', 'منتجات مميزة', '2023-04-08 10:34:15', '2023-04-08 10:34:15'),
(8423, 'ar', 'new_arrival', 'وصل حديثا', '2023-04-08 10:34:15', '2023-04-08 10:34:15'),
(8424, 'ar', 'best_rated', 'الأعلى تقييما', '2023-04-08 10:34:15', '2023-04-08 10:34:15'),
(8425, 'ar', 'best_selling', 'الأكثر مبيعا', '2023-04-08 10:34:15', '2023-04-08 10:34:15'),
(8426, 'ar', 'store', 'المتجر', '2023-04-08 10:34:16', '2023-04-08 10:34:16'),
(8427, 'ar', 'view_all_products_of_this_shop', 'اظهار جميع المنتجات من هذا المتجر', '2023-04-08 10:34:16', '2023-04-08 10:34:16'),
(8428, 'ar', 'shop', 'المتجر', '2023-04-08 10:34:16', '2023-04-08 10:34:16'),
(8429, 'ar', 'followed_shops', NULL, '2023-04-08 10:34:16', '2023-04-08 10:34:16'),
(8430, 'ar', 'no_followed_shop_found', NULL, '2023-04-08 10:34:16', '2023-04-08 10:34:16'),
(8431, 'ar', 'sort_by_brand', 'فرز حسب العلامة التجارية', '2023-04-08 10:34:16', '2023-04-08 10:34:16'),
(8432, 'ar', 'sort_by_category', 'فرز حسب القسم', '2023-04-08 10:34:16', '2023-04-28 09:52:30'),
(8433, 'ar', 'no_data_available', 'لا يوجد بيانات مسجلة', '2023-04-08 10:34:16', '2023-04-08 10:34:16'),
(8434, 'ar', 'be_a_seller', 'كن بائعا', '2023-04-08 10:34:16', '2023-04-08 10:34:16'),
(8435, 'ar', 'seller_zone', NULL, '2023-04-08 10:34:16', '2023-04-08 10:34:16'),
(8436, 'ar', 'login_to_seller_panel', NULL, '2023-04-08 10:34:16', '2023-04-08 10:34:16'),
(8437, 'ar', 'already_a_seller', NULL, '2023-04-08 10:34:16', '2023-04-08 10:34:16'),
(8438, 'ar', 'register_your_shop', NULL, '2023-04-08 10:34:16', '2023-04-08 10:34:16'),
(8439, 'ar', 'personal_information', 'المعلومات الشخصية', '2023-04-08 10:34:16', '2023-04-08 10:34:16'),
(8440, 'ar', 'shop_information', 'معلومات متجر', '2023-04-08 10:34:16', '2023-04-08 10:34:16'),
(8441, 'ar', 'register_shop', NULL, '2023-04-08 10:34:16', '2023-04-08 10:34:16'),
(8442, 'ar', 'refund_product_quantity_can_not_be_greater_than_the_ordered_product_quantity', NULL, '2023-04-08 10:34:16', '2023-04-08 10:34:16'),
(8443, 'ar', 'refund_information', 'معلومات الإسترجاع', '2023-04-08 10:34:16', '2023-04-08 10:34:16'),
(8444, 'ar', 'refund_amount', 'قيمة الإسترجاع', '2023-04-08 10:34:16', '2023-04-08 10:34:16'),
(8445, 'ar', 'refund_reasons', 'أسباب الإسترجاع', '2023-04-08 10:34:16', '2023-04-08 10:34:16'),
(8446, 'ar', 'refund_note', 'ملاحظات الإسترجاع', '2023-04-08 10:34:16', '2023-04-08 10:35:44'),
(8447, 'ar', 'something_went_wrong', 'هناك خطأ ما', '2023-04-08 23:54:52', '2023-04-08 23:54:52'),
(8448, 'ar', 'nothing_selected', 'لا شيء محدد', '2023-04-08 23:54:52', '2023-04-08 23:54:52'),
(8449, 'ar', 'nothing_found', 'لم يتم العثور على شيء', '2023-04-08 23:54:52', '2023-04-08 23:54:52'),
(8450, 'ar', 'choose_file', 'اختر ملف', '2023-04-08 23:54:52', '2023-04-08 23:54:52'),
(8451, 'ar', 'file_selected', 'تم تحديد الملف', '2023-04-08 23:54:52', '2023-04-08 23:54:52');
INSERT INTO `translations` (`id`, `lang`, `lang_key`, `lang_value`, `created_at`, `updated_at`) VALUES
(8452, 'ar', 'files_selected', 'تم تحديد الملفات', '2023-04-08 23:54:52', '2023-04-08 23:54:52'),
(8453, 'ar', 'add_more_files', 'اضافة المزيد من المفات', '2023-04-08 23:54:52', '2023-04-08 23:54:52'),
(8454, 'ar', 'adding_more_files', 'إضافة المزيد من الملفات', '2023-04-08 23:54:52', '2023-04-08 23:54:52'),
(8455, 'ar', 'drop_files_here_paste_or', 'افلت الملفات هنا , او الصقها', '2023-04-08 23:54:52', '2023-04-08 23:54:52'),
(8456, 'ar', 'browse', 'تصفح', '2023-04-08 23:54:52', '2023-04-08 23:54:52'),
(8457, 'ar', 'upload_complete', 'اكتمل التحميل', '2023-04-08 23:54:52', '2023-04-08 23:54:52'),
(8458, 'ar', 'upload_paused', 'توقف التحميل مؤقتًا', '2023-04-08 23:54:52', '2023-04-08 23:54:52'),
(8459, 'ar', 'resume_upload', 'استئناف تحميل', '2023-04-08 23:54:52', '2023-04-08 23:54:52'),
(8460, 'ar', 'pause_upload', 'إيقاف التحميل مؤقتًا', '2023-04-08 23:54:52', '2023-04-08 23:54:52'),
(8461, 'ar', 'retry_upload', 'إعادة محاولة التحميل', '2023-04-08 23:54:52', '2023-04-08 23:54:52'),
(8462, 'ar', 'cancel_upload', 'إلغاء الرفع', '2023-04-08 23:54:52', '2023-04-08 23:54:52'),
(8463, 'ar', 'uploading', 'جاري الرفع', '2023-04-08 23:54:52', '2023-04-08 23:54:52'),
(8464, 'ar', 'processing', 'جاري المعالجة', '2023-04-08 23:54:52', '2023-04-08 23:54:52'),
(8465, 'ar', 'complete', 'أكتمل', '2023-04-08 23:54:52', '2023-04-08 23:54:52'),
(8466, 'ar', 'file', 'ملف', '2023-04-08 23:54:52', '2023-04-08 23:54:52'),
(8467, 'ar', 'files', 'ملفات', '2023-04-08 23:54:52', '2023-04-08 23:54:52'),
(8468, 'ar', 'dashboard', 'الملف الشخصي', '2023-04-08 23:54:52', '2023-04-10 01:50:19'),
(8469, 'ar', 'product', 'المنتج', '2023-04-08 23:54:52', '2023-04-08 23:54:52'),
(8470, 'ar', 'products', 'المنتجات', '2023-04-08 23:54:52', '2023-04-08 23:54:52'),
(8471, 'ar', 'category', 'القسم', '2023-04-08 23:54:52', '2023-04-28 09:52:31'),
(8472, 'ar', 'attributes', 'صفات', '2023-04-08 23:54:52', '2023-04-08 23:54:52'),
(8473, 'ar', 'reviews', 'المراجعات', '2023-04-08 23:54:52', '2023-04-08 23:54:52'),
(8474, 'ar', 'orders', 'الطلبات', '2023-04-08 23:54:52', '2023-04-08 23:54:52'),
(8475, 'ar', 'customers', 'العملاء', '2023-04-08 23:54:52', '2023-04-08 23:54:52'),
(8476, 'ar', 'marketing', 'التسويق', '2023-04-08 23:54:52', '2023-04-08 23:54:52'),
(8477, 'ar', 'offers', 'منتجات تصلك اليوم', '2023-04-08 23:54:52', '2023-04-09 07:41:46'),
(8478, 'ar', 'newsletters', 'النشرات الإخبارية', '2023-04-08 23:54:52', '2023-04-08 23:54:52'),
(8479, 'ar', 'subscribers', 'المشتركين', '2023-04-08 23:54:52', '2023-04-08 23:54:52'),
(8480, 'ar', 'coupon', 'الكوبون', '2023-04-08 23:54:52', '2023-04-08 23:54:52'),
(8481, 'ar', 'uploaded_files', 'الملفات التي تم تحميلها', '2023-04-08 23:54:52', '2023-04-08 23:54:52'),
(8482, 'ar', 'support', 'الدعم', '2023-04-08 23:54:52', '2023-04-08 23:54:52'),
(8483, 'ar', 'website_setup', 'إعداد موقع الويب', '2023-04-08 23:54:52', '2023-04-08 23:54:52'),
(8484, 'ar', 'header', 'Header', '2023-04-08 23:54:52', '2023-04-08 23:54:52'),
(8485, 'ar', 'footer', 'Footer', '2023-04-08 23:54:52', '2023-04-08 23:54:52'),
(8486, 'ar', 'banners', 'Banners', '2023-04-08 23:54:52', '2023-04-08 23:54:52'),
(8487, 'ar', 'pages', 'الصفحات', '2023-04-08 23:54:52', '2023-04-08 23:54:52'),
(8488, 'ar', 'shipping', 'الشحن', '2023-04-09 00:02:11', '2023-04-09 00:02:11'),
(8489, 'ar', 'shipping_countries', 'دول الشحن', '2023-04-09 00:02:11', '2023-04-09 00:02:11'),
(8490, 'ar', 'shipping_states', 'مناطق الشحن', '2023-04-09 00:02:11', '2023-04-09 17:43:32'),
(8491, 'ar', 'shipping_cities', 'مدن الشحن', '2023-04-09 00:02:11', '2023-04-09 00:02:11'),
(8492, 'ar', 'shipping_zones', 'مناطق الشحن', '2023-04-09 00:02:11', '2023-04-09 00:02:11'),
(8493, 'ar', 'tax', 'ضريبة القيمة المضافة', '2023-04-09 00:02:11', '2023-04-09 00:02:11'),
(8494, 'ar', 'staffs', 'الموظفين', '2023-04-09 00:02:11', '2023-04-09 00:02:11'),
(8495, 'ar', 'all_staffs', 'جميع الموظفين', '2023-04-09 00:02:11', '2023-04-09 00:02:11'),
(8496, 'ar', 'roles', 'القواعد', '2023-04-09 00:02:11', '2023-04-09 00:02:11'),
(8497, 'ar', 'system', 'النظام', '2023-04-09 00:02:11', '2023-04-09 00:02:11'),
(8498, 'ar', 'update', 'التحديث', '2023-04-09 00:02:11', '2023-04-09 00:02:11'),
(8499, 'ar', 'server_status', 'حالة الخادم', '2023-04-09 00:02:11', '2023-04-09 00:02:11'),
(8500, 'ar', 'addon_manager', 'Addon Manager', '2023-04-09 00:02:11', '2023-04-09 00:02:11'),
(8501, 'ar', 'browse_website', 'تصفح الموقع', '2023-04-09 00:02:11', '2023-04-09 00:02:11'),
(8502, 'ar', 'add_new', 'اضافة جديد', '2023-04-09 00:02:11', '2023-04-09 00:02:11'),
(8503, 'ar', 'add_new_coupon', 'اضافة كوبون جديد', '2023-04-09 00:02:11', '2023-04-09 00:02:11'),
(8504, 'ar', 'add_new_offer', 'اضافة عرض جديد', '2023-04-09 00:02:11', '2023-04-09 00:02:11'),
(8505, 'ar', 'add_new_staff', 'اضافة موظف جديد', '2023-04-09 00:02:11', '2023-04-09 00:02:11'),
(8506, 'ar', 'notifications', 'الإشعارات', '2023-04-09 00:02:11', '2023-04-09 00:02:11'),
(8507, 'ar', 'new_notification', 'اشعار جديد', '2023-04-09 00:02:11', '2023-04-09 00:02:11'),
(8508, 'ar', 'profile', 'الملف الشخصي', '2023-04-09 00:02:11', '2023-04-09 00:02:11'),
(8509, 'ar', 'logout', 'تسجيل الخروج', '2023-04-09 00:02:11', '2023-04-09 00:02:11'),
(8510, 'ar', 'all_products', 'جميع المنتجات', '2023-04-09 00:02:11', '2023-04-09 00:02:11'),
(8511, 'ar', 'add_new_product', 'إضافة منتج جديد', '2023-04-09 00:02:11', '2023-04-09 00:02:11'),
(8512, 'ar', 'sort_by', 'فرز حسب', '2023-04-09 00:02:11', '2023-04-09 00:02:11'),
(8513, 'ar', 'rating_high__low', 'Rating (High > Low)', '2023-04-09 00:02:11', '2023-04-09 00:02:11'),
(8514, 'ar', 'rating_low__high', 'Rating (Low > High)', '2023-04-09 00:02:11', '2023-04-09 00:02:11'),
(8515, 'ar', 'num_of_sale_high__low', 'Num of Sale (High > Low)', '2023-04-09 00:02:11', '2023-04-09 00:02:11'),
(8516, 'ar', 'num_of_sale_low__high', 'Num of Sale (Low > High)', '2023-04-09 00:02:11', '2023-04-09 00:02:11'),
(8517, 'ar', 'base_price_high__low', 'من الأعلى الى الأدنى', '2023-04-09 00:02:11', '2023-04-09 06:14:30'),
(8518, 'ar', 'base_price_low__high', 'من الأدنى الى الأعلى', '2023-04-09 00:02:11', '2023-04-09 06:14:30'),
(8519, 'ar', 'type__enter', 'Type & Enter', '2023-04-09 00:02:11', '2023-04-09 00:02:11'),
(8520, 'ar', 'name', 'الإسم', '2023-04-09 00:02:11', '2023-04-09 00:02:11'),
(8521, 'ar', 'info', 'معلومات', '2023-04-09 00:02:11', '2023-04-09 00:02:11'),
(8522, 'ar', 'categories', 'الأقسام', '2023-04-09 00:02:11', '2023-04-28 09:49:01'),
(8523, 'ar', 'brand', 'البراند', '2023-04-09 00:02:11', '2023-04-09 00:02:11'),
(8524, 'ar', 'published', 'منشور', '2023-04-09 00:02:11', '2023-04-09 00:02:11'),
(8525, 'ar', 'options', 'خيارات', '2023-04-09 00:02:11', '2023-04-09 00:02:11'),
(8526, 'ar', 'rating', 'التقييم', '2023-04-09 00:02:11', '2023-04-09 00:02:11'),
(8527, 'ar', 'toal_sold', 'إجمالي المبيعات', '2023-04-09 00:02:11', '2023-04-09 00:02:11'),
(8528, 'ar', 'price', 'السعر', '2023-04-09 00:02:11', '2023-04-09 00:02:11'),
(8529, 'ar', 'edit', 'تعديل', '2023-04-09 00:02:11', '2023-04-09 00:02:11'),
(8530, 'ar', 'duplicate', 'نسخ', '2023-04-09 00:02:11', '2023-04-09 00:02:11'),
(8531, 'ar', 'delete', 'حذف', '2023-04-09 00:02:11', '2023-04-09 00:02:11'),
(8532, 'ar', 'delete_confirmation', 'تأكيد الحذف', '2023-04-09 00:02:11', '2023-04-09 00:02:11'),
(8533, 'ar', 'are_you_sure_to_delete_this', 'هل انت متأكد من الحذف', '2023-04-09 00:02:11', '2023-04-09 00:02:11'),
(8534, 'ar', 'all_data_related_to_this_will_be_deleted', 'سيتم حذف جميع البيانات المتعلقة بهذا.', '2023-04-09 00:02:11', '2023-04-09 00:02:11'),
(8535, 'ar', 'cancel', 'إلغاء', '2023-04-09 00:02:11', '2023-04-09 00:02:26'),
(8536, 'ar', 'yes_delete', 'نعم , حذف', '2023-04-09 00:02:11', '2023-04-09 00:02:11'),
(8537, 'ar', 'published_products_updated_successfully', 'تم تحديث المنتجات المنشورة بنجاح', '2023-04-09 00:02:11', '2023-04-09 00:02:11'),
(8538, 'ar', 'standard_delivery_time', 'وقت التسليم القياسي', '2023-04-09 00:12:03', '2023-04-09 00:12:03'),
(8539, 'ar', 'express_delivery_time', 'وقت التسليم السريع', '2023-04-09 00:12:03', '2023-04-09 00:12:03'),
(8540, 'ar', 'weight', 'الوزن', '2023-04-09 00:12:03', '2023-04-09 00:12:03'),
(8541, 'ar', 'height', 'الارتفاع', '2023-04-09 00:12:03', '2023-04-09 00:12:03'),
(8542, 'ar', 'length', 'الطول', '2023-04-09 00:12:03', '2023-04-09 00:12:03'),
(8543, 'ar', 'width', 'العرض', '2023-04-09 00:12:03', '2023-04-09 00:12:03'),
(8544, 'ar', 'product_description', 'وصف المنتج', '2023-04-09 00:12:03', '2023-04-09 00:12:03'),
(8545, 'ar', 'description', 'الوصف', '2023-04-09 00:12:03', '2023-04-09 00:12:03'),
(8546, 'ar', 'product_attributes', 'سمات المنتج', '2023-04-09 00:12:03', '2023-04-09 00:12:03'),
(8547, 'ar', 'add_new_attribute', 'إضافة سمة جديدة', '2023-04-09 00:12:03', '2023-04-09 00:12:03'),
(8548, 'ar', 'these_attributes_will_be_used_only_for_filtering', 'سيتم استخدام هذه السمات فقط للتصفية.', '2023-04-09 00:12:03', '2023-04-09 00:12:03'),
(8549, 'ar', 'seo_meta_tags', 'SEO Meta Tags', '2023-04-09 00:12:03', '2023-04-09 00:12:03'),
(8550, 'ar', 'meta_title', 'Meta Title', '2023-04-09 00:12:03', '2023-04-09 00:12:03'),
(8551, 'ar', 'meta_image', 'Meta Image', '2023-04-09 00:12:03', '2023-04-09 00:12:03'),
(8552, 'ar', 'slug', 'Slug', '2023-04-09 00:12:03', '2023-04-09 00:12:03'),
(8553, 'ar', 'product_status', 'حالة المنتج', '2023-04-09 00:12:03', '2023-04-09 00:12:03'),
(8554, 'ar', 'draft', 'مسودة', '2023-04-09 00:12:03', '2023-04-09 00:12:03'),
(8555, 'ar', 'product_brand', 'العلامات التجارية', '2023-04-09 00:12:03', '2023-04-09 00:12:03'),
(8556, 'ar', 'select_brand', 'اختيار العلامة التجارية', '2023-04-09 00:12:03', '2023-04-09 00:12:03'),
(8557, 'ar', 'product_category', 'قسم المنتج', '2023-04-09 00:12:03', '2023-04-28 09:52:31'),
(8558, 'ar', 'product_tags', 'علامات المنتج', '2023-04-09 00:12:03', '2023-04-09 00:12:03'),
(8559, 'ar', 'type_and_hit_enter_to_add_a_tag', 'اكتب واضغط على Enter لإضافة علامة', '2023-04-09 00:12:03', '2023-04-09 00:12:03'),
(8560, 'ar', 'these_will_be_used_for_product_search', 'سيتم استخدام هذه للبحث عن المنتج.', '2023-04-09 00:12:03', '2023-04-09 00:12:03'),
(8561, 'ar', 'vat__tax', 'ضريبة القيمة المضافة', '2023-04-09 00:12:03', '2023-04-09 00:12:03'),
(8562, 'ar', 'sorry_for_the_inconvenience_but_were_working_on_it', 'نأسف للإزعاج ، لكننا نعمل على حله.', '2023-04-09 00:12:03', '2023-04-09 00:12:03'),
(8563, 'ar', 'error_code', 'خطا بالكود', '2023-04-09 00:12:03', '2023-04-09 00:12:03'),
(8564, 'ar', 'edit_product', 'تعديل المنتج', '2023-04-09 00:12:03', '2023-04-09 00:12:03'),
(8565, 'ar', 'product_information', 'معلومات المنتج', '2023-04-09 00:12:03', '2023-04-09 00:12:03'),
(8566, 'ar', 'product_name', 'اسم المنتج', '2023-04-09 00:12:03', '2023-04-09 00:12:03'),
(8567, 'ar', 'translatable', 'قابل للترجمة', '2023-04-09 00:12:03', '2023-04-09 00:12:03'),
(8568, 'ar', 'unit', 'الوحدة', '2023-04-09 00:12:03', '2023-04-09 00:12:03'),
(8569, 'ar', 'unit_eg_500_gram_2_litre_5_pc_etc', 'Unit (e.g. 500 Gram, 2 Litre, 5 Pc etc)', '2023-04-09 00:12:03', '2023-04-09 00:12:03'),
(8570, 'ar', 'minimum_purchase_qty', 'الحد الأدنى من كمية الشراء', '2023-04-09 00:12:03', '2023-04-09 00:12:03'),
(8571, 'ar', 'customer_need_to_purchase_this_minimum_quatity_for_this_product_minimum_should_be_1', 'يحتاج العميل إلى شراء هذا الحد الأدنى من الكمية لهذا المنتج. يجب أن يكون الحد الأدنى 1.', '2023-04-09 00:12:03', '2023-04-09 00:12:03'),
(8572, 'ar', 'maximum_purchase_qty', 'الكمية القصوى للشراء', '2023-04-09 00:12:03', '2023-04-09 00:12:03'),
(8573, 'ar', 'customer_will_be_able_to_purchase_this_maximum_quatity_for_this_product_default_0_for_unlimited', 'سيتمكن العميل من شراء هذه الكمية القصوى من هذا المنتج. الافتراضي 0 لعدد غير محدود.', '2023-04-09 00:12:03', '2023-04-09 00:12:03'),
(8574, 'ar', 'product_images', 'صور المنتج', '2023-04-09 00:12:03', '2023-04-09 00:12:03'),
(8575, 'ar', 'thumbnail_image', 'صورة مصغرة', '2023-04-09 00:12:03', '2023-04-09 00:12:03'),
(8576, 'ar', 'this_image_is_visible_in_all_product_box_use_300x300_sizes_image_keep_some_blank_space_around_the_main_object_of_your_image_as_we_had_to_crop_some_edge_in_different_devices_to_make_it_responsive', 'This image is visible in all product box. Use 300x300 sizes image. Keep some blank space around the main object of your image as we had to crop some edge in different devices to make it responsive.', '2023-04-09 00:12:03', '2023-04-09 00:12:03'),
(8577, 'ar', 'gallery_images', 'معرض الصور', '2023-04-09 00:12:03', '2023-04-09 00:12:03'),
(8578, 'ar', 'appearance', 'مظهر', '2023-04-09 00:12:03', '2023-04-09 00:12:03'),
(8579, 'ar', 'settings', 'إعدادات', '2023-04-09 00:12:03', '2023-04-09 00:12:03'),
(8580, 'ar', 'general_settings', 'الاعدادات العامة', '2023-04-09 00:12:03', '2023-04-09 00:12:03'),
(8581, 'ar', 'languages', 'اللغات', '2023-04-09 00:12:03', '2023-04-09 00:12:03'),
(8582, 'ar', 'currency', 'العملات', '2023-04-09 00:12:03', '2023-04-09 00:12:03'),
(8583, 'ar', 'smtp_settings', 'SMTP Settings', '2023-04-09 00:12:03', '2023-04-09 00:12:03'),
(8584, 'ar', 'payment_methods', 'طرق الدفع', '2023-04-09 00:12:03', '2023-04-09 00:12:03'),
(8585, 'ar', 'file_system_configuration', 'File System Configuration', '2023-04-09 00:12:03', '2023-04-09 00:12:03'),
(8586, 'ar', 'social_media_logins', 'عمليات تسجيل الدخول إلى وسائل التواصل الاجتماعي', '2023-04-09 00:12:03', '2023-04-09 00:12:03'),
(8587, 'ar', 'third_party_settings', 'إعدادات الطرف الثالث', '2023-04-09 00:12:03', '2023-04-09 00:12:03'),
(8588, 'ar', 'total', 'المجموع الكلي', '2023-04-09 00:21:28', '2023-04-09 00:21:28'),
(8589, 'ar', 'products_found', 'تم العثور على المنتجات', '2023-04-09 00:21:28', '2023-04-09 00:21:28'),
(8590, 'ar', 'search_results_for', 'نتائج البحث عن', '2023-04-09 00:21:28', '2023-04-09 00:21:28'),
(8591, 'ar', 'no_product_found', 'لم يتم العثور على منتج', '2023-04-09 00:21:28', '2023-04-09 00:21:28'),
(8592, 'ar', 'min_price', 'ادنى سعر', '2023-04-09 00:21:28', '2023-04-09 00:21:28'),
(8593, 'ar', 'max_price', 'اعلى سعر', '2023-04-09 00:21:28', '2023-04-09 00:21:28'),
(8594, 'ar', 'go', 'انطلق', '2023-04-09 00:21:28', '2023-04-09 00:21:28'),
(8595, 'ar', 'filters', 'الفلاتر', '2023-04-09 00:21:28', '2023-04-09 00:21:28'),
(8596, 'ar', 'unit_price', 'سعر الوحدة', '2023-04-09 00:21:28', '2023-04-09 00:21:28'),
(8597, 'ar', 'discounted_price', 'سعر مخفض', '2023-04-09 00:21:28', '2023-04-09 00:21:28'),
(8598, 'ar', 'total_price', 'السعر الكلي', '2023-04-09 00:21:28', '2023-04-09 00:21:28'),
(8599, 'ar', 'brands', 'العلامات التجارية', '2023-04-09 00:21:28', '2023-04-09 00:21:28'),
(8600, 'ar', 'order_code', 'رقم الطلب', '2023-04-09 00:21:28', '2023-04-09 06:27:13'),
(8601, 'ar', 'track', 'التتبع', '2023-04-09 00:21:28', '2023-04-09 00:21:28'),
(8602, 'ar', 'all_categories', 'جميع الأقسام', '2023-04-09 00:21:28', '2023-04-28 09:49:01'),
(8603, 'ar', 'all_brands', 'جميع العلامات التجارية', '2023-04-09 00:21:28', '2023-04-09 00:21:28'),
(8604, 'ar', 'all_offers', 'جميع المنتجات', '2023-04-09 00:21:28', '2023-04-09 07:45:24'),
(8605, 'ar', 'estimated_delivery_time', 'الوقت المتوقع للتوصيل', '2023-04-09 00:21:28', '2023-04-09 00:21:28'),
(8606, 'ar', 'days', 'ايام', '2023-04-09 00:21:28', '2023-04-09 00:21:28'),
(8607, 'ar', 'view_other_products', 'عرض المنتجات الأخرى', '2023-04-09 00:21:28', '2023-04-09 00:21:28'),
(8608, 'ar', 'add_to_cart', 'إضافة الى السلة', '2023-04-09 00:21:28', '2023-04-09 00:21:28'),
(8609, 'ar', 'product_not_found', 'المنتج غير موجود', '2023-04-09 00:21:28', '2023-04-09 00:21:28'),
(8610, 'ar', 'product_has_been_updated_successfully', 'تم تحديث المنتج بنجاح', '2023-04-09 00:21:28', '2023-04-09 00:21:28'),
(8611, 'ar', 'warranty', 'ضمان', '2023-04-09 00:21:28', '2023-04-09 00:21:28'),
(8612, 'ar', 'warranty_available_for_this_product', 'هل يوجد ضمان على هذا المنتج؟', '2023-04-09 00:21:28', '2023-04-09 00:21:28'),
(8613, 'ar', 'update_product', 'تحديث المنتج', '2023-04-09 00:21:28', '2023-04-09 00:21:28'),
(8614, 'ar', 'please_select_an_attribute', 'الرجاء تحديد سمة.', '2023-04-09 00:21:28', '2023-04-09 00:21:28'),
(8615, 'ar', 'no_more_arrtribute_found', 'لم يتم العثور على المزيد من السمات.', '2023-04-09 00:21:28', '2023-04-09 00:21:28'),
(8616, 'ar', 'maximum_option_limit_reached', 'تم الوصول إلى الحد الأقصى من الخيارات.', '2023-04-09 00:21:28', '2023-04-09 00:21:28'),
(8617, 'ar', 'please_select_an_option', 'الرجاء تحديد خيار.', '2023-04-09 00:21:28', '2023-04-09 00:21:28'),
(8618, 'ar', 'no_more_option_found', 'لم يتم العثور على المزيد من الخيارات.', '2023-04-09 00:21:28', '2023-04-09 00:21:28'),
(8619, 'ar', 'these_images_are_visible_in_the_product_details_page_gallery_use_600x600_or_higher_sizes_images_for_better_quality_but_try_to_keep_file_size_low_as_itll_increase_page_load_time', 'هذه الصور مرئية في معرض صفحة تفاصيل المنتج. استخدم صورًا بحجم 600 × 600 أو أعلى للحصول على جودة أفضل. لكن حاول الحفاظ على حجم الملف منخفضًا لأنه سيزيد من وقت تحميل الصفحة.', '2023-04-09 00:21:28', '2023-04-09 00:21:28'),
(8620, 'ar', 'product_price_stock', 'سعر المنتج , المخزن', '2023-04-09 00:21:28', '2023-04-09 06:14:30'),
(8621, 'ar', 'variant_product', 'Variant Product', '2023-04-09 00:21:28', '2023-04-09 00:21:28'),
(8622, 'ar', 'regular_price', 'السعر بدون الضريبة', '2023-04-09 00:21:28', '2023-04-09 06:14:30'),
(8623, 'ar', 'sku', 'SKU', '2023-04-09 00:21:28', '2023-04-09 00:21:28'),
(8624, 'ar', 'stock', 'المخزون', '2023-04-09 00:21:28', '2023-04-09 00:21:28'),
(8625, 'ar', 'in_stock', 'متوفر في المخزن', '2023-04-09 00:21:28', '2023-04-09 00:21:28'),
(8626, 'ar', 'out_of_stock', 'نفذت الكمية', '2023-04-09 00:21:28', '2023-04-09 00:21:28'),
(8627, 'ar', 'select_an_option_for_this_product_and_then_select_choices_of_each_option_max_3_options', 'حدد خيارًا لهذا المنتج ثم حدد اختيارات كل خيار. 3 خيارات كحد أقصى', '2023-04-09 00:21:28', '2023-04-09 00:21:28'),
(8628, 'ar', 'select_an_option', 'حدد اختيار', '2023-04-09 00:21:28', '2023-04-09 00:21:28'),
(8629, 'ar', 'variant', 'Variant', '2023-04-09 00:21:28', '2023-04-09 00:21:28'),
(8630, 'ar', 'variant_price', 'Variant Price', '2023-04-09 00:21:28', '2023-04-09 00:21:28'),
(8631, 'ar', 'image', 'صورة', '2023-04-09 00:21:28', '2023-04-09 00:21:28'),
(8632, 'ar', 'product_discount', 'خصم المنتج', '2023-04-09 00:21:28', '2023-04-09 00:21:28'),
(8633, 'ar', 'discount_date_range', 'نطاق تاريخ الخصم', '2023-04-09 00:21:28', '2023-04-09 00:21:28'),
(8634, 'ar', 'discount', 'الخصم', '2023-04-09 00:21:28', '2023-04-09 00:21:28'),
(8635, 'ar', 'flat', 'رقم', '2023-04-09 00:21:28', '2023-04-09 00:21:28'),
(8636, 'ar', 'percent', 'نسبة', '2023-04-09 00:21:28', '2023-04-09 00:21:28'),
(8637, 'ar', 'shipping_information', 'معلومات الشحن', '2023-04-09 00:21:28', '2023-04-09 00:21:28'),
(8638, 'ar', 'this_field_is_required', 'هذه الخانة مطلوبه.', '2023-04-09 00:31:17', '2023-04-09 00:31:17'),
(8639, 'ar', 'this_field_is_required_a_valid_email', 'هذا الحقل يتطلب بريد إلكتروني صالح.', '2023-04-09 00:31:17', '2023-04-09 00:31:17'),
(8640, 'ar', 'password_must_be_minimum_6_characters', 'يجب ألا تقل كلمة المرور عن 6 أحرف.', '2023-04-09 00:31:17', '2023-04-09 00:31:17'),
(8641, 'ar', 'password_and_confirm_password_should_match', 'يجب أن يتطابق كلمة المرور وتأكيد كلمة المرور.', '2023-04-09 00:31:17', '2023-04-09 00:31:17'),
(8642, 'ar', 'login_with', 'تسجيل الدخول عبر', '2023-04-09 00:31:17', '2023-04-09 00:31:17'),
(8643, 'ar', 'account', 'الحساب', '2023-04-09 00:31:17', '2023-04-09 00:31:17'),
(8644, 'ar', 'email_address', 'البريد الإلكتروني', '2023-04-09 00:31:17', '2023-04-09 00:31:17'),
(8645, 'ar', 'signup', 'التسجيل', '2023-04-09 00:31:17', '2023-04-09 00:31:17'),
(8646, 'ar', 'dont_have_an_account', 'ليس لدي حساب', '2023-04-09 00:31:17', '2023-04-09 00:31:17'),
(8647, 'ar', 'search_for_products_brands_and_more', 'ابحث عن نوع بهار او شاي و المزيد ...', '2023-04-09 00:31:17', '2023-04-09 02:04:37'),
(8648, 'ar', 'no', 'لا', '2023-04-09 00:31:17', '2023-04-09 00:31:17'),
(8649, 'ar', 'yes', 'نعم', '2023-04-09 00:31:17', '2023-04-09 00:31:17'),
(8650, 'ar', 'items', 'منتج', '2023-04-09 00:31:17', '2023-04-09 18:12:36'),
(8651, 'ar', 'have_a_code', 'هل لديك كوبون خصم ؟', '2023-04-09 00:31:17', '2023-04-09 00:31:17'),
(8652, 'ar', 'change', 'تغيير', '2023-04-09 00:31:17', '2023-04-09 00:31:17'),
(8653, 'ar', 'apply', 'تطبيق', '2023-04-09 00:31:17', '2023-04-09 00:31:17'),
(8654, 'ar', 'checkout', 'الدفع', '2023-04-09 00:31:17', '2023-04-09 00:31:17'),
(8655, 'ar', 'todays_deal', 'صفقة اليوم', '2023-04-09 00:31:17', '2023-04-09 00:31:17'),
(8656, 'ar', 'get_your_special_offers_coupons__more', 'احصل على عروضك الخاصة ، وكوبوناتك والمزيد ...', '2023-04-09 00:31:17', '2023-04-09 00:31:17'),
(8657, 'ar', 'contact_us', 'تواصل معنا', '2023-04-09 00:31:17', '2023-04-09 00:31:17'),
(8658, 'ar', 'mobile_apps', 'تطبيق الجوال', '2023-04-09 00:31:17', '2023-04-09 00:31:17'),
(8659, 'ar', 'address', 'العنوان', '2023-04-09 00:31:17', '2023-04-09 00:31:17'),
(8660, 'ar', 'email', 'البريد الإلكتروني', '2023-04-09 00:31:17', '2023-04-09 00:31:17'),
(8661, 'ar', 'phone', 'رقم الجوال', '2023-04-09 00:31:17', '2023-04-09 00:31:17'),
(8662, 'ar', 'subscribe', 'الإشتراك', '2023-04-09 00:31:17', '2023-04-09 00:31:17'),
(8663, 'ar', 'your_email_address', 'بريدك الإلكتروني', '2023-04-09 00:31:17', '2023-04-09 00:31:17'),
(8664, 'ar', 'forgot_password', 'نسيت كلمة المرور', '2023-04-09 00:31:17', '2023-04-09 00:31:17'),
(8665, 'ar', 'or', 'او', '2023-04-09 00:31:17', '2023-04-09 00:31:17'),
(8666, 'ar', 'play_store', 'Play Store', '2023-04-09 00:31:17', '2023-04-09 00:31:17'),
(8667, 'ar', 'app_store', 'App Store', '2023-04-09 00:31:17', '2023-04-09 00:31:17'),
(8668, 'ar', 'track_order', 'تتبع الطلب', '2023-04-09 00:31:17', '2023-04-09 06:23:37'),
(8669, 'ar', 'help_line', 'المساعدة', '2023-04-09 00:31:17', '2023-04-09 00:31:17'),
(8670, 'ar', 'wishlist', 'قائمة المفضلة', '2023-04-09 00:31:17', '2023-04-11 16:46:14'),
(8671, 'ar', 'search', 'البحث', '2023-04-09 00:31:17', '2023-04-09 00:31:17'),
(8672, 'ar', 'login', 'تسجيل الدخول', '2023-04-09 00:31:17', '2023-04-09 00:31:17'),
(8673, 'ar', 'registration', 'التسجيل', '2023-04-09 00:31:17', '2023-04-09 00:31:17'),
(8674, 'ar', 'register', 'Register', '2023-04-09 00:31:17', '2023-04-09 00:31:17'),
(8675, 'ar', 'talk_with_us', 'تحدث معنا', '2023-04-09 00:31:17', '2023-04-09 00:31:17'),
(8676, 'ar', 'you_have_to', 'You have to', '2023-04-09 00:31:17', '2023-04-09 00:31:17'),
(8677, 'ar', 'as_a_customer_to_contact_us', 'التواصل معنا كعميل', '2023-04-09 00:31:17', '2023-04-09 00:31:17'),
(8678, 'ar', 'latest_first', 'الأحدث أولاً', '2023-04-09 00:31:17', '2023-04-09 00:31:17'),
(8679, 'ar', 'oldest_first', 'الأقدم أولاً', '2023-04-09 00:31:17', '2023-04-09 00:31:17'),
(8680, 'ar', 'higher_price_first', 'السعر الاعلى أولاً', '2023-04-09 00:31:17', '2023-04-09 00:31:17'),
(8681, 'ar', 'lower_price_first', 'السعر الأدنى أولاً', '2023-04-09 00:31:17', '2023-04-09 00:31:17'),
(8682, 'ar', 'higher_rating_first', 'التقييم الأعلى أولاً', '2023-04-09 00:31:17', '2023-04-09 00:31:17'),
(8683, 'ar', 'lower_rating_first', 'التقييم الأدنى أولاً', '2023-04-09 00:31:17', '2023-04-09 00:31:17'),
(8684, 'ar', 'all_star', 'All Star', '2023-04-09 00:31:17', '2023-04-09 00:31:17'),
(8685, 'ar', 'star', 'star', '2023-04-09 00:31:17', '2023-04-09 00:31:17'),
(8686, 'ar', 'shipping_address', 'عنوان الشحن', '2023-04-09 00:39:19', '2023-04-09 00:39:19'),
(8687, 'ar', 'total_order_amount', 'إجمالي مبلغ الطلب', '2023-04-09 00:39:19', '2023-04-09 00:39:19'),
(8688, 'ar', 'payment_method', 'طريقة الدفع', '2023-04-09 00:39:19', '2023-04-09 00:39:19'),
(8689, 'ar', 'payment_status', 'حالة الدفع', '2023-04-09 00:39:19', '2023-04-09 00:39:19'),
(8690, 'ar', 'billing_address', 'Billing Address', '2023-04-09 00:39:19', '2023-04-09 00:39:19'),
(8691, 'ar', 'order_details', 'تفاصيل الطلب', '2023-04-09 00:39:19', '2023-04-09 00:39:19'),
(8692, 'ar', 'quantity', 'الكمية', '2023-04-09 00:39:19', '2023-04-09 00:39:19'),
(8693, 'ar', 'unit_tax', 'Unit tax', '2023-04-09 00:39:19', '2023-04-09 00:39:19'),
(8694, 'ar', 'sub_total', 'المجموع بدون ضريبة القيمة المضافة', '2023-04-09 00:39:19', '2023-04-09 17:58:49'),
(8695, 'ar', 'shipping_charge', 'رسوم الشحن', '2023-04-09 00:39:20', '2023-04-09 00:39:20'),
(8696, 'ar', 'coupon_discount', 'خصم الكوبون', '2023-04-09 00:39:20', '2023-04-09 00:39:20'),
(8697, 'ar', 'off', 'OFF', '2023-04-09 00:39:20', '2023-04-09 00:39:20'),
(8698, 'ar', 'out_of', 'خارج', '2023-04-09 00:39:20', '2023-04-09 00:39:20'),
(8699, 'ar', 'ratings', 'التقييمات', '2023-04-09 00:39:20', '2023-04-09 00:39:20'),
(8700, 'ar', 'product_reviews', 'مراجعات المنتج', '2023-04-09 00:39:20', '2023-04-09 00:39:20'),
(8701, 'ar', 'sort', 'فرز', '2023-04-09 00:39:20', '2023-04-09 00:39:20'),
(8702, 'ar', 'no_reviews_found_for_this_product', 'لا توجد اية تعليقات لهذا المنتج', '2023-04-09 00:39:20', '2023-04-09 00:39:20'),
(8703, 'ar', 'purchase_history', 'تاريخ شراء', '2023-04-09 00:39:20', '2023-04-09 00:39:20'),
(8704, 'ar', 'manage_profile', 'ادارة الملف الشخصي', '2023-04-09 00:39:20', '2023-04-09 00:39:20'),
(8705, 'ar', 'my_wallet', 'مخفظتي', '2023-04-09 00:39:20', '2023-04-09 00:39:20'),
(8706, 'ar', 'payment_options', 'خيارات الدفع', '2023-04-09 00:39:20', '2023-04-09 00:39:20'),
(8707, 'ar', 'recharge_amount', 'مبلغ الشحن', '2023-04-09 00:39:20', '2023-04-09 00:39:20'),
(8708, 'ar', 'recharge_wallet', 'إعادة شحن المحفظة', '2023-04-09 00:39:20', '2023-04-09 00:39:20'),
(8709, 'ar', 'please_select_a_payment_method', 'الرجاء اختيار طريقة الدفع', '2023-04-09 00:39:20', '2023-04-09 00:39:20'),
(8710, 'ar', 'please_input_recharge_amount', 'الرجاء إدخال مبلغ إعادة الشحن', '2023-04-09 00:39:20', '2023-04-09 00:39:20'),
(8711, 'ar', 'amount', 'الكمية', '2023-04-09 00:39:20', '2023-04-09 00:39:20'),
(8712, 'ar', 'forgot', 'نسيت', '2023-04-09 00:39:20', '2023-04-09 00:39:20'),
(8713, 'ar', 'password', 'كلمة المرور', '2023-04-09 00:39:20', '2023-04-09 00:39:20'),
(8714, 'ar', 'old_password', 'كلمة المرور القديمة', '2023-04-09 00:39:20', '2023-04-09 00:39:20'),
(8715, 'ar', 'enter_your_email_address_to_recover_your_password', 'أدخل عنوان بريدك الإلكتروني لاستعادة كلمة المرور الخاصة بك', '2023-04-09 00:39:20', '2023-04-09 00:39:20'),
(8716, 'ar', 'send_password_reset_code', 'إرسال رمز إعادة تعيين كلمة المرور', '2023-04-09 00:39:20', '2023-04-09 00:39:20'),
(8717, 'ar', 'back_to', 'Back to', '2023-04-09 00:39:20', '2023-04-09 00:39:20'),
(8718, 'ar', 'reset', 'إعادة تعيين', '2023-04-09 00:39:20', '2023-04-09 00:39:20'),
(8719, 'ar', 'code', 'كود', '2023-04-09 00:39:20', '2023-04-09 00:39:20'),
(8720, 'ar', 'enter_your_email_address_code__new_password', 'أدخل عنوان بريدك الإلكتروني والرمز وكلمة المرور الجديدة', '2023-04-09 00:39:20', '2023-04-09 00:39:20'),
(8721, 'ar', 'confirm_password', 'تأكيد كلمة المرور', '2023-04-09 00:39:20', '2023-04-09 00:39:20'),
(8722, 'ar', 'view_all', 'اظهار الكل', '2023-04-09 00:39:20', '2023-04-09 00:39:20'),
(8723, 'ar', 'a_verification_code_has_been_sent_to_your_email', 'تم ارسال رمز التفعيل الى بريدك الإلكتروني', '2023-04-09 00:39:20', '2023-04-09 00:39:20'),
(8724, 'ar', 'payment_failed', 'عملية الدفع فشلت!!', '2023-04-09 00:39:20', '2023-04-09 00:39:20'),
(8725, 'ar', 'your_order_has_been_placed_but_failed_to_complete_the_payment_please_try_again_or_contact_our_support', 'وقد وضعت طلبك. لكنه فشل في إتمام الدفع. يرجى المحاولة مرة أخرى أو الاتصال بدعمنا.', '2023-04-09 00:39:20', '2023-04-25 07:51:13'),
(8726, 'ar', 'try_again', 'حاول مرة اخرى', '2023-04-09 00:39:20', '2023-04-09 00:39:20'),
(8727, 'ar', 'close', 'اغلق', '2023-04-09 00:39:20', '2023-04-09 00:39:20'),
(8728, 'ar', 'addresses', 'العناوين', '2023-04-09 00:39:20', '2023-04-09 00:39:20'),
(8729, 'ar', 'postal_code', 'الرمز البريدي', '2023-04-09 00:39:20', '2023-04-09 00:39:20'),
(8730, 'ar', 'country', 'الدولة', '2023-04-09 00:39:20', '2023-04-09 00:39:20'),
(8731, 'ar', 'state', 'المنطقة', '2023-04-09 00:39:20', '2023-04-09 17:43:32'),
(8732, 'ar', 'select_country', 'اختر الدولة', '2023-04-09 00:39:20', '2023-04-09 00:39:20'),
(8733, 'ar', 'phone_number', 'رقم الجوال', '2023-04-09 00:39:20', '2023-04-09 00:39:20'),
(8734, 'ar', 'select_a_city', 'اختر المدينة', '2023-04-09 00:39:20', '2023-04-09 00:39:20'),
(8735, 'ar', 'select_a_state', 'اختر المنطقة', '2023-04-09 00:39:20', '2023-04-09 00:39:20'),
(8736, 'ar', 'mark_as_default_shipping_address', 'تعيين كعنوان شحن افتراضي', '2023-04-09 00:51:13', '2023-04-09 00:51:13'),
(8737, 'ar', 'mark_as_default_billing_address', 'Mark as default billing address', '2023-04-09 00:51:13', '2023-04-09 00:51:13'),
(8738, 'ar', 'no_saved_address', 'لا يوجد عنوان محفوظ', '2023-04-09 00:51:13', '2023-04-09 00:51:13'),
(8739, 'ar', 'loading_please_wait', 'جاري التحميل الرجاءالانتظار', '2023-04-09 00:51:13', '2023-04-09 00:51:13'),
(8740, 'ar', 'details', 'التفاصيل', '2023-04-09 00:51:13', '2023-04-09 00:51:13'),
(8741, 'ar', 'delivery_status', 'حالة الطب', '2023-04-09 00:51:13', '2023-04-09 00:51:13'),
(8742, 'ar', 'generating_invoice', 'إنشاء الفاتورة ...', '2023-04-09 00:51:13', '2023-04-09 00:51:13'),
(8743, 'ar', 'confirm_cancel', 'تأكيد الإلغاء', '2023-04-09 00:51:13', '2023-04-09 00:51:13'),
(8744, 'ar', 'are_you_sure_you_want_to_cancel_this_order', 'هل أنت متأكد أنك تريد إلغاء هذا الطلب؟', '2023-04-09 00:51:13', '2023-04-09 00:51:13'),
(8745, 'ar', 'cancelling_order', 'جارٍ إلغاء الطلب ...', '2023-04-09 00:51:13', '2023-04-09 00:51:13'),
(8746, 'ar', 'wallet_recharge_history', 'سجل شحن المحفظة', '2023-04-09 00:51:13', '2023-04-09 00:51:13'),
(8747, 'ar', 'date', 'التاريخ', '2023-04-09 00:51:13', '2023-04-09 00:51:13'),
(8748, 'ar', 'no_product_wishlisted', 'لا يوجد منتج مدرج في المفضلة', '2023-04-09 00:51:13', '2023-04-11 16:46:14'),
(8749, 'ar', 'delivery_option', 'خيار التوصيل', '2023-04-09 00:51:13', '2023-04-09 00:51:13'),
(8750, 'ar', 'standard_delivery', 'التوصيل القياسي', '2023-04-09 00:51:13', '2023-04-09 00:51:13'),
(8751, 'ar', 'delivery_cost', 'تكلفة التوصيل', '2023-04-09 00:51:13', '2023-04-09 00:51:13'),
(8752, 'ar', 'express_delivery', 'التوصيل السريع', '2023-04-09 00:51:13', '2023-04-09 00:51:13'),
(8753, 'ar', 'sorry_delivery_is_not_available_in_this_shipping_address', 'عذرا ، التوصيل غير متوفر في عنوان الشحن هذا.', '2023-04-09 00:51:13', '2023-04-09 00:51:13'),
(8754, 'ar', 'total_to_pay', 'المبلغ الإجمالي للدفع', '2023-04-09 00:51:13', '2023-04-09 00:51:13'),
(8755, 'ar', 'your_wallet_balance', 'رصيد محفظتك', '2023-04-09 00:51:13', '2023-04-09 00:51:13'),
(8756, 'ar', 'remaining_balance', 'الرصيد المتبقي', '2023-04-09 00:51:13', '2023-04-09 00:51:13'),
(8757, 'ar', 'by_clicking_proceed_i_agree_to', 'من خلال النقر فوق متابعة ، أوافق على', '2023-04-09 00:51:13', '2023-04-09 00:51:13'),
(8758, 'ar', 'proceed', 'يتابع', '2023-04-09 00:51:13', '2023-04-09 00:51:13'),
(8759, 'ar', 'thank_you_for_your_order', 'شكرا لشرائكم من متجر قرنفلة', '2023-04-09 00:51:13', '2023-04-09 00:51:13'),
(8760, 'ar', 'a_copy_of_your_order_summary_has_been_sent_to', 'تم إرسال نسخة من ملخص طلبك إلى', '2023-04-09 00:51:13', '2023-04-09 00:51:13'),
(8761, 'ar', 'remove_from_wishlist', 'إزالة من المفضلة', '2023-04-09 00:51:13', '2023-04-11 16:46:14'),
(8762, 'ar', 'add_to_wishlist', 'إضافة الى المفضلة', '2023-04-09 00:51:13', '2023-04-11 16:46:14'),
(8763, 'ar', 'ask_about_this_product', 'اسأل عن المنتج', '2023-04-09 00:51:13', '2023-04-09 00:51:13'),
(8764, 'ar', 'share', 'مشاركة', '2023-04-09 00:51:13', '2023-04-09 00:51:13'),
(8765, 'ar', 'rating__reviews', 'التقييمات و المراجعات', '2023-04-09 00:51:13', '2023-04-09 00:51:13'),
(8766, 'ar', 'frequently_bought_together', 'Frequently Bought Together', '2023-04-09 00:51:13', '2023-04-09 00:51:13'),
(8767, 'ar', 'more_items_to_explore', 'اكتشف المزيد من المنتجات', '2023-04-09 00:51:13', '2023-04-09 00:51:13'),
(8768, 'ar', 'warranty_available', 'الضمان متاح', '2023-04-09 00:51:13', '2023-04-09 00:51:13'),
(8769, 'ar', 'view_warranty_policy', 'اظهار بوليصة الضمان', '2023-04-09 00:51:13', '2023-04-09 00:51:13'),
(8770, 'ar', 'related_products', 'منتجات ذات صله', '2023-04-09 00:51:13', '2023-04-09 00:51:13'),
(8771, 'ar', 'please_select_all_options', 'الرجاء تحديد جميع الخيارات', '2023-04-09 00:51:13', '2023-04-09 00:51:13'),
(8772, 'ar', 'this_product_is_out_of_stock', 'نفد هذا المنتج من المخزن', '2023-04-09 00:51:13', '2023-04-09 00:51:13'),
(8773, 'ar', 'you_need_to_purchase_minimum_quantity', 'أنت بحاجة لشراء الحد الأدنى من الكمية', '2023-04-09 00:51:13', '2023-04-09 00:51:13'),
(8774, 'ar', 'you_can_purchase_maximum_quantity', 'يمكنك شراء الكمية القصوى', '2023-04-09 00:51:13', '2023-04-09 00:51:13'),
(8775, 'ar', 'product_added_to_cart', 'تمت إضافة المنتج إلى سلة التسوق.', '2023-04-09 00:51:13', '2023-04-09 00:51:13'),
(8776, 'ar', 'track_your_order', 'تتبع طلبك !', '2023-04-09 00:51:13', '2023-04-09 06:24:01'),
(8777, 'ar', 'wallet_successfully_recharged', 'تمت إعادة شحن المحفظة بنجاح!', '2023-04-09 00:51:13', '2023-04-09 00:51:13'),
(8778, 'ar', 'wallet_recharge_failed', 'فشل إعادة شحن المحفظة!', '2023-04-09 00:51:13', '2023-04-09 00:51:13'),
(8779, 'ar', 'login_successfull', 'تم تسجيل الدخول بنجاح.', '2023-04-09 00:51:13', '2023-04-09 00:51:13'),
(8780, 'ar', 'please_select_a_cart_product', 'الرجاء تحديد منتج الى سلة التسوق', '2023-04-09 00:51:13', '2023-04-09 00:51:13'),
(8781, 'ar', 'order_placed', 'تم الطلب', '2023-04-09 00:51:13', '2023-04-09 00:51:13'),
(8782, 'ar', 'confirmed', 'تم التأكيد', '2023-04-09 00:51:13', '2023-04-09 00:51:13'),
(8783, 'ar', 'shipped', 'تم الشحن', '2023-04-09 00:51:13', '2023-04-09 00:51:13'),
(8784, 'ar', 'delivered', 'تم التسليم', '2023-04-09 00:51:13', '2023-04-09 00:51:13'),
(8785, 'ar', 'order_summary', 'ملخص الطلب', '2023-04-09 00:51:14', '2023-04-09 00:51:14'),
(8786, 'ar', 'product_added_to_cart_successfully', 'تم إضافة المنتج الى سلة التسوق بنجاح', '2023-04-09 01:17:53', '2023-04-09 01:17:53'),
(8787, 'ar', 'applied_coupon_code_is_no_applicable_for_your_selected_cart_products', 'لا ينطبق رمز القسيمة المطبق على منتجات سلة التسوق التي اخترتها.', '2023-04-09 01:17:53', '2023-04-09 01:17:53'),
(8788, 'ar', 'minimum_order_total_of', 'الحد الأدنى لإجمالي الطلب', '2023-04-09 01:17:53', '2023-04-09 01:17:53'),
(8789, 'ar', 'is_required_to_use_applied_coupon_code', 'مطلوب لاستخدام رمز الكوبون المطبق.', '2023-04-09 01:17:53', '2023-04-09 01:17:53'),
(8790, 'ar', 'delivery_type', 'نوع التوصيل', '2023-04-09 01:17:53', '2023-04-09 01:17:53'),
(8791, 'ar', 'rate_and_review_purchased_product', 'تقييم ومراجعة المنتج الذي تم شراؤه', '2023-04-09 01:17:53', '2023-04-09 01:17:53'),
(8792, 'ar', 'submit', 'Submit', '2023-04-09 01:17:53', '2023-04-09 01:17:53'),
(8793, 'ar', 'write_a_review', 'أكتب تعليق', '2023-04-09 01:17:53', '2023-04-09 01:17:53'),
(8794, 'ar', 'view_details', 'إظهار التفاصيل', '2023-04-09 01:17:53', '2023-04-09 01:17:53'),
(8795, 'ar', 'download_invoice', 'تحميل الفاتورة', '2023-04-09 01:17:53', '2023-04-09 01:17:53'),
(8796, 'ar', 'cancel_order', 'إلغاء الطلب', '2023-04-09 01:17:54', '2023-04-09 01:17:54'),
(8797, 'ar', 'this_product_is_not_available', 'هذا المنتج غير متوفر', '2023-04-09 01:17:54', '2023-04-09 01:17:54'),
(8798, 'ar', 'comment', 'تعليق', '2023-04-09 01:17:54', '2023-04-09 01:17:54'),
(8799, 'ar', 'youve_already_reviewed_this_product_you_can_update_the_review', 'لقد قمت بالفعل بمراجعة هذا التعليق , يمكنك تحديثه', '2023-04-09 01:17:54', '2023-04-09 01:17:54'),
(8800, 'ar', 'your_review_has_been_disabled', 'تم تعطيل تعليقك.', '2023-04-09 01:17:54', '2023-04-09 01:17:54'),
(8801, 'ar', 'home', 'الرئيسية', '2023-04-09 01:17:54', '2023-04-09 02:15:46'),
(8802, 'ar', 'messages', 'الرسائل', '2023-04-09 01:17:54', '2023-04-09 01:17:54'),
(8803, 'ar', 'cart', 'سلة التسوق', '2023-04-09 01:17:54', '2023-04-09 01:17:54'),
(8804, 'ar', 'change_language', 'تغيير اللغة', '2023-04-09 01:17:54', '2023-04-09 01:17:54'),
(8805, 'ar', 'reset_password', 'إعادة تعيين كلمة المرور', '2023-04-09 01:17:54', '2023-04-09 01:17:54'),
(8806, 'ar', 'welcome_to', 'WELCOME TO', '2023-04-09 01:17:54', '2023-04-09 01:17:54'),
(8807, 'ar', 'full_name', 'الإسم الكامل', '2023-04-09 01:17:54', '2023-04-09 01:17:54'),
(8808, 'ar', 'phone_number_must_be_valid', 'رقم الجوال يجب ان يكون صالح', '2023-04-09 01:17:54', '2023-04-09 01:17:54'),
(8809, 'ar', 'by_signing_up_you_agree_to_our', 'بالتسجيل فإنك توافق على', '2023-04-09 01:17:54', '2023-04-09 01:17:54'),
(8810, 'ar', 'terms_and_conditions', 'الشروط و الأحكام', '2023-04-09 01:17:54', '2023-04-09 01:17:54'),
(8811, 'ar', 'create_account', 'إنشاء حساب', '2023-04-09 01:17:54', '2023-04-09 01:17:54'),
(8812, 'ar', 'join_with', 'انضم مع', '2023-04-09 01:17:54', '2023-04-09 01:17:54'),
(8813, 'ar', 'verify', 'مؤكد', '2023-04-09 01:17:54', '2023-04-09 01:17:54'),
(8814, 'ar', 'enter_your_email_address_verification_code', 'أدخل عنوان بريدك الإلكتروني و رمز التحقق', '2023-04-09 01:17:54', '2023-04-09 01:17:54'),
(8815, 'ar', 'resend_code', 'إعادة إرسال رمز التحقق', '2023-04-09 01:17:54', '2023-04-09 01:17:54'),
(8816, 'ar', 'the_page_you_are_looking_was_not', 'الصفحة التي تبحث عنها ليست', '2023-04-09 01:17:54', '2023-04-09 01:17:54'),
(8817, 'ar', 'in_this_planet', 'IN THIS PLANET', '2023-04-09 01:17:54', '2023-04-09 01:17:54'),
(8818, 'ar', 'back_to_home', 'BACK TO HOME', '2023-04-09 01:17:54', '2023-04-09 01:17:54'),
(8819, 'ar', 'newly_added_products', 'المنتجات المضافة حديثًا', '2023-04-09 01:17:54', '2023-04-09 01:17:54'),
(8820, 'ar', 'wallet_balance', 'رصيد المحفظة', '2023-04-09 01:17:54', '2023-04-09 01:17:54'),
(8821, 'ar', 'last_recharge', 'الشحن الأخير', '2023-04-09 01:17:54', '2023-04-09 01:17:54'),
(8822, 'ar', 'products_in_your_cart', 'المنتجات في سلة التسوق الخاصة بك', '2023-04-09 01:17:54', '2023-04-09 01:17:54'),
(8823, 'ar', 'products_in_your_wishlist', 'المنتجات في قائمة المفضلة', '2023-04-09 01:17:54', '2023-04-11 16:46:14'),
(8824, 'ar', 'products_you_ordered', 'المنتجات التي طلبتها', '2023-04-09 01:17:54', '2023-04-09 01:17:54'),
(8825, 'ar', 'recent_purchase_history', 'تاريخ الشراء الأخير', '2023-04-09 01:17:54', '2023-04-09 01:17:54'),
(8826, 'ar', 'my_wishlist', 'قائمة المفضلة', '2023-04-09 01:17:54', '2023-04-11 16:46:14'),
(8827, 'ar', 'default_shipping_address', 'عنوان الشحن الافتراضي', '2023-04-09 01:17:54', '2023-04-09 01:17:54'),
(8828, 'ar', 'add_new_address', 'أضف عنوان جديد', '2023-04-09 01:17:54', '2023-04-09 01:17:54'),
(8829, 'ar', 'recently_viewed', 'شوهدت مؤخرا', '2023-04-09 01:17:54', '2023-04-09 01:17:54'),
(8830, 'ar', 'profile_information', 'معلومات الملف الشخصي', '2023-04-09 01:17:54', '2023-04-09 01:17:54'),
(8831, 'ar', 'new_password', 'كلمة المرور الجديدة', '2023-04-09 01:17:54', '2023-04-09 01:17:54'),
(8832, 'ar', 'profile_image', 'صورة الملف الشخصي', '2023-04-09 01:17:54', '2023-04-09 01:17:54'),
(8833, 'ar', 'select_image', 'اختر صورة', '2023-04-09 01:17:54', '2023-04-09 01:17:54'),
(8834, 'ar', 'default_billing_address', 'عنوان الفواتير الافتراضي', '2023-04-09 01:17:54', '2023-04-09 01:17:54'),
(8835, 'ar', 'all_addresses', 'كل العناوين', '2023-04-09 01:17:54', '2023-04-09 01:17:54'),
(8836, 'ar', 'newsletter', 'النشرة الإخبارية', '2023-04-09 01:27:39', '2023-04-09 01:27:39'),
(8837, 'ar', 'send_newsletters', 'إرسال رسائل إخبارية', '2023-04-09 01:27:39', '2023-04-09 01:27:39'),
(8838, 'ar', 'subscriber', 'مشترك', '2023-04-09 01:27:39', '2023-04-09 01:27:39'),
(8839, 'ar', 'show_subscribers', 'إظهار المشتركين', '2023-04-09 01:27:39', '2023-04-09 01:27:39'),
(8840, 'ar', 'show_coupons', 'إظهار القسائم', '2023-04-09 01:27:39', '2023-04-09 01:27:39'),
(8841, 'ar', 'add_coupons', 'أضف القسائم', '2023-04-09 01:27:39', '2023-04-09 01:27:39'),
(8842, 'ar', 'edit_coupons', 'تحرير القسائم', '2023-04-09 01:27:39', '2023-04-09 01:27:39'),
(8843, 'ar', 'delete_coupons', 'حذف القسائم', '2023-04-09 01:27:39', '2023-04-09 01:27:39'),
(8844, 'ar', 'uploaded_file', 'تحميل الملف', '2023-04-09 01:27:40', '2023-04-09 01:27:40'),
(8845, 'ar', 'show_uploaded_files', 'إظهار الملفات المرفوعة', '2023-04-09 01:27:40', '2023-04-09 01:27:40'),
(8846, 'ar', 'all_roles', 'كل الأدوار', '2023-04-09 01:27:40', '2023-04-09 01:27:40'),
(8847, 'ar', 'add_new_role', 'إضافة دور جديد', '2023-04-09 01:27:40', '2023-04-09 01:27:40'),
(8848, 'ar', 'type_name__enter', 'اكتب الاسم وأدخل', '2023-04-09 01:27:40', '2023-04-09 01:27:40'),
(8849, 'ar', 'logo', 'شعار', '2023-04-09 01:27:40', '2023-04-09 01:27:40'),
(8850, 'ar', 'add_new_brand', 'أضف علامة تجارية جديدة', '2023-04-09 01:27:40', '2023-04-09 01:27:40'),
(8851, 'ar', '120x80', '120x80', '2023-04-09 01:27:40', '2023-04-09 01:27:40'),
(8852, 'ar', 'successfully_logged_out', 'تم تسجيل الخروج بنجاح', '2023-04-09 01:27:40', '2023-04-09 01:27:40'),
(8853, 'ar', 'select_an_attribute', 'حدد سمة', '2023-04-09 01:27:40', '2023-04-09 01:27:40'),
(8854, 'ar', 'order__sales', 'الطلبات والمبيعات', '2023-04-09 01:27:40', '2023-04-09 01:27:40'),
(8855, 'ar', 'sales_by_category_', 'المبيعات حسب القسم', '2023-04-09 01:27:40', '2023-04-28 09:52:30'),
(8856, 'ar', 'top_products', 'أهم المنتجات', '2023-04-09 01:27:40', '2023-04-09 01:27:40'),
(8857, 'ar', 'sales_', 'Sales ($)', '2023-04-09 01:27:40', '2023-04-09 01:27:40'),
(8858, 'ar', 'total_customers', 'إجمالي العملاء', '2023-04-09 01:27:40', '2023-04-09 01:27:40'),
(8859, 'ar', 'total_products', 'إجمالي المنتجات', '2023-04-09 01:27:40', '2023-04-09 01:27:40'),
(8860, 'ar', 'total_orders', 'إجمالي الطلبات', '2023-04-09 01:27:40', '2023-04-09 01:27:40'),
(8861, 'ar', 'total_sales', 'إجمالي المبيعات', '2023-04-09 01:27:40', '2023-04-09 01:27:40'),
(8862, 'ar', 'order_stat', 'Order Stat', '2023-04-09 01:27:40', '2023-04-09 01:27:40'),
(8863, 'ar', 'total_category', 'الفئة الإجمالية', '2023-04-09 01:27:40', '2023-04-09 01:27:40'),
(8864, 'ar', 'total_brands', 'Total Brands', '2023-04-09 01:27:40', '2023-04-09 01:27:40'),
(8865, 'ar', 'coupons', 'القسائم الشرائية', '2023-04-09 01:27:40', '2023-04-09 01:27:40'),
(8866, 'ar', 'confirmed_order', 'طلب مؤكد', '2023-04-09 01:27:40', '2023-04-09 01:27:40'),
(8867, 'ar', 'processed_order', 'طلب معالج', '2023-04-09 01:27:40', '2023-04-09 01:27:40'),
(8868, 'ar', 'order_delivered', 'طلب تم تسليمه', '2023-04-09 01:27:40', '2023-04-09 01:27:40'),
(8869, 'ar', 'top_category', 'أهم الأقسام', '2023-04-09 01:27:40', '2023-04-28 09:52:30'),
(8870, 'ar', 'top_brands', 'أهم العلامات التجارية', '2023-04-09 01:27:40', '2023-04-09 01:27:40'),
(8871, 'ar', 'select_file', 'أختار ملف', '2023-04-09 01:27:40', '2023-04-09 01:27:40'),
(8872, 'ar', 'upload_new', 'تحميل جديد', '2023-04-09 01:27:40', '2023-04-09 01:27:40'),
(8873, 'ar', 'sort_by_newest', 'ترتيب حسب الأحدث', '2023-04-09 01:27:40', '2023-04-09 01:27:40'),
(8874, 'ar', 'sort_by_oldest', 'فرز حسب الأقدم', '2023-04-09 01:27:40', '2023-04-09 01:27:40'),
(8875, 'ar', 'sort_by_smallest', 'رتب حسب الأصغر', '2023-04-09 01:27:40', '2023-04-09 01:27:40'),
(8876, 'ar', 'sort_by_largest', 'فرز حسب الأكبر', '2023-04-09 01:27:40', '2023-04-09 01:27:40'),
(8877, 'ar', 'selected_only', 'المحدد فقط', '2023-04-09 01:27:40', '2023-04-09 01:27:40'),
(8878, 'ar', 'no_files_found', 'لا توجد ملفات', '2023-04-09 01:27:40', '2023-04-09 01:27:40'),
(8879, 'ar', '0_file_selected', '0 ملف محدد', '2023-04-09 01:27:40', '2023-04-09 01:27:40'),
(8880, 'ar', 'clear', 'واضح', '2023-04-09 01:27:40', '2023-04-09 01:27:40'),
(8881, 'ar', 'prev', 'السابق', '2023-04-09 01:27:40', '2023-04-09 01:27:40'),
(8882, 'ar', 'next', 'التالي', '2023-04-09 01:27:40', '2023-04-09 01:27:40'),
(8883, 'ar', 'add_files', 'إضافة ملفات', '2023-04-09 01:27:40', '2023-04-09 01:27:40'),
(8884, 'ar', 'avatar', 'Avatar', '2023-04-09 01:27:40', '2023-04-09 01:27:40'),
(8885, 'ar', 'save', 'حفظ', '2023-04-09 01:27:40', '2023-04-09 01:27:40'),
(8886, 'ar', 'login_to_your_account', 'تسجيل الدخول إلى حسابك.', '2023-04-09 01:37:15', '2023-04-09 01:37:15'),
(8887, 'ar', 'remember_me', 'تذكرنى', '2023-04-09 01:37:15', '2023-04-09 01:37:15'),
(8888, 'ar', 'copy', 'نسخ', '2023-04-09 01:37:15', '2023-04-09 01:37:15'),
(8889, 'ar', 'role_information', 'معلومات الدور', '2023-04-09 01:37:15', '2023-04-09 01:37:15'),
(8890, 'ar', 'role_name', 'اسم الدور الوظيفي', '2023-04-09 01:37:15', '2023-04-09 01:37:15'),
(8891, 'ar', 'permissions', 'الأذونات', '2023-04-09 01:37:15', '2023-04-09 01:37:15'),
(8892, 'ar', 'role', 'الدور', '2023-04-09 01:37:15', '2023-04-09 01:37:15'),
(8893, 'ar', 'show_staff_roles', 'إظهار أدوار الموظفين', '2023-04-09 01:37:15', '2023-04-09 01:37:15'),
(8894, 'ar', 'add_staff_roles', 'أضف أدوار الموظفين', '2023-04-09 01:37:15', '2023-04-09 01:37:15'),
(8895, 'ar', 'edit_staff_roles', 'تحرير أدوار فريق الموظفين', '2023-04-09 01:37:15', '2023-04-09 01:37:15'),
(8896, 'ar', 'delete_staff_roles', 'حذف أدوار الموظفين', '2023-04-09 01:37:15', '2023-04-09 01:37:15'),
(8897, 'ar', 'staff', 'طاقم عمل', '2023-04-09 01:37:15', '2023-04-09 01:37:15'),
(8898, 'ar', 'show_staffs', 'عرض طاقم العمل', '2023-04-09 01:37:15', '2023-04-09 01:37:15'),
(8899, 'ar', 'add_staffs', 'إضافة طاقم العمل', '2023-04-09 01:37:15', '2023-04-09 01:37:15'),
(8900, 'ar', 'edit_staffs', 'تحرير فريق العمل', '2023-04-09 01:37:15', '2023-04-09 01:37:15'),
(8901, 'ar', 'delete_staffs', 'حذف الموظفين', '2023-04-09 01:37:15', '2023-04-09 01:37:15'),
(8902, 'ar', 'show_dashboard', 'عرض لوحة التحكم', '2023-04-09 01:37:15', '2023-04-09 01:37:15'),
(8903, 'ar', 'show_products', 'عرض المنتجات', '2023-04-09 01:37:15', '2023-04-09 01:37:15'),
(8904, 'ar', 'add_products', 'أضف المنتجات', '2023-04-09 01:37:15', '2023-04-09 01:37:15'),
(8905, 'ar', 'edit_products', 'تحرير المنتجات', '2023-04-09 01:37:15', '2023-04-09 01:37:15'),
(8906, 'ar', 'duplicate_products', 'منتجات مكررة', '2023-04-09 01:37:15', '2023-04-09 01:37:15'),
(8907, 'ar', 'delete_products', 'حذف المنتجات', '2023-04-09 01:37:15', '2023-04-09 01:37:15'),
(8908, 'ar', 'show_categories', 'إظهار الأقسام', '2023-04-09 01:37:15', '2023-04-28 09:49:01'),
(8909, 'ar', 'add_categories', 'أضف أقسام', '2023-04-09 01:37:15', '2023-04-28 09:49:01'),
(8910, 'ar', 'edit_categories', 'تحرير الأقسام', '2023-04-09 01:37:15', '2023-04-28 09:49:01'),
(8911, 'ar', 'delete_categories', 'حذف الأقسام', '2023-04-09 01:37:15', '2023-04-28 09:49:01'),
(8912, 'ar', 'show_brands', 'Show Brands', '2023-04-09 01:37:15', '2023-04-09 01:37:15'),
(8913, 'ar', 'add_brands', 'أضف علامات التجارية', '2023-04-09 01:37:15', '2023-04-09 01:37:15'),
(8914, 'ar', 'edit_brands', 'تحرير العلامات التجارية', '2023-04-09 01:37:15', '2023-04-09 01:37:15'),
(8915, 'ar', 'delete_brands', 'حذف علامات التجارية', '2023-04-09 01:37:15', '2023-04-09 01:37:15'),
(8916, 'ar', 'attribute', 'Attribute ( صفة )', '2023-04-09 01:37:15', '2023-04-09 01:37:15'),
(8917, 'ar', 'show_attributes', 'Show Attributes', '2023-04-09 01:37:15', '2023-04-09 01:37:15'),
(8918, 'ar', 'add_attributes', 'Add Attributes', '2023-04-09 01:37:15', '2023-04-09 01:37:15'),
(8919, 'ar', 'configure_attributes', 'Configure Attributes', '2023-04-09 01:37:15', '2023-04-09 01:37:15'),
(8920, 'ar', 'edit_attributes', 'Edit Attributes', '2023-04-09 01:37:15', '2023-04-09 01:37:15'),
(8921, 'ar', 'review', 'مراجعة ( تعليق )', '2023-04-09 01:37:16', '2023-04-09 01:37:16'),
(8922, 'ar', 'show_reviews', 'اظهار المراجعات', '2023-04-09 01:37:16', '2023-04-09 01:37:16'),
(8923, 'ar', 'order', 'الطلب', '2023-04-09 01:37:16', '2023-04-09 01:37:16'),
(8924, 'ar', 'show_orders', 'اظهار الطلبات', '2023-04-09 01:37:16', '2023-04-09 01:37:16'),
(8925, 'ar', 'view_orders', 'عرض الطلبات', '2023-04-09 01:37:16', '2023-04-09 01:37:16'),
(8926, 'ar', 'invoice_download', 'تنزيل الفاتورة', '2023-04-09 01:37:16', '2023-04-09 01:37:16'),
(8927, 'ar', 'delete_orders', 'حذف الطلبات', '2023-04-09 01:37:16', '2023-04-09 01:37:16'),
(8928, 'ar', 'customer', 'العميل', '2023-04-09 01:37:16', '2023-04-09 01:37:16'),
(8929, 'ar', 'show_customers', 'عرض العملاء', '2023-04-09 01:37:16', '2023-04-09 01:37:16'),
(8930, 'ar', 'delete_customers', 'حذف العملاء', '2023-04-09 01:37:16', '2023-04-09 01:37:16'),
(8931, 'ar', 'offer', 'العروض', '2023-04-09 01:37:16', '2023-04-09 01:37:16'),
(8932, 'ar', 'show_offers', 'اظهار العروض', '2023-04-09 01:37:16', '2023-04-09 01:37:16'),
(8933, 'ar', 'add_offers', 'إضافة العروض', '2023-04-09 01:37:16', '2023-04-09 01:37:16'),
(8934, 'ar', 'edit_offers', 'تعديل العروض', '2023-04-09 01:37:16', '2023-04-09 01:37:16'),
(8935, 'ar', 'delete_offers', 'حذف العروض', '2023-04-09 01:37:16', '2023-04-09 01:37:16'),
(8936, 'ar', 'filter_by_payment_status', 'تصفية حسب حالة الدفع', '2023-04-09 01:42:38', '2023-04-09 01:42:38'),
(8937, 'ar', 'paid', 'مدفوع', '2023-04-09 01:42:38', '2023-04-09 01:42:38'),
(8938, 'ar', 'unpaid', 'غير مدفوعة', '2023-04-09 01:42:38', '2023-04-09 01:42:38'),
(8939, 'ar', 'filter_by_deliver_status', 'تصفية حسب حالة التسليم', '2023-04-09 01:42:38', '2023-04-09 01:42:38'),
(8940, 'ar', 'processed', 'معالجتها', '2023-04-09 01:42:38', '2023-04-09 01:42:38'),
(8941, 'ar', 'cancelled', 'ألغيت', '2023-04-09 01:42:39', '2023-04-09 01:42:39'),
(8942, 'ar', 'type_order_code__hit_enter', 'اكتب رمز الطلب واضغط على وابحث', '2023-04-09 01:42:39', '2023-04-09 01:42:39'),
(8943, 'ar', 'num_of_products', 'Num. of Products', '2023-04-09 01:42:39', '2023-04-09 01:42:39'),
(8944, 'ar', 'view', 'منظر', '2023-04-09 01:42:39', '2023-04-09 01:42:39'),
(8945, 'ar', 'product_is_successfully_added_to_your_wishlist', 'تم إضافة المنتج بنجاح إلى المفضلة', '2023-04-09 01:42:39', '2023-04-11 16:46:14'),
(8946, 'ar', 'invalid_login_information', 'معلومات تسجيل الدخول غير صالحة', '2023-04-09 01:42:39', '2023-04-09 01:42:39'),
(8947, 'ar', 'page_not_found', 'الصفحة غير موجودة!', '2023-04-09 01:42:39', '2023-04-09 01:42:39'),
(8948, 'ar', 'update_your_system', 'قم بتحديث نظامك', '2023-04-09 01:42:39', '2023-04-09 01:42:39'),
(8949, 'ar', 'current_verion', 'النسخة الحالية', '2023-04-09 01:42:39', '2023-04-09 01:42:39'),
(8950, 'ar', 'make_sure_your_server_has_matched_with_all_requirements', 'تأكد من تطابق الخادم الخاص بك مع جميع المتطلبات.', '2023-04-09 01:42:39', '2023-04-09 01:42:39'),
(8951, 'ar', 'check_here', 'تحقق هنا', '2023-04-09 01:42:39', '2023-04-09 01:42:39'),
(8952, 'ar', 'download_latest_version_from_codecanyon', 'Download latest version from codecanyon.', '2023-04-09 01:42:39', '2023-04-09 01:42:39'),
(8953, 'ar', 'extract_downloaded_zip_you_will_find_updateszip_file_in_those_extraced_files', 'Extract downloaded zip. You will find updates.zip file in those extraced files.', '2023-04-09 01:42:39', '2023-04-09 01:42:39'),
(8954, 'ar', 'upload_that_zip_file_here_and_click_update_now', 'قم بتحميل هذا الملف المضغوط هنا وانقر فوق تحديث الآن.', '2023-04-09 01:42:39', '2023-04-09 01:42:39'),
(8955, 'ar', 'if_you_are_using_any_addon_make_sure_to_update_those_addons_after_updating', 'إذا كنت تستخدم أي أداة إضافية ، فتأكد من تحديث هذه الوظائف الإضافية بعد التحديث.', '2023-04-09 01:42:39', '2023-04-09 01:42:39'),
(8956, 'ar', 'please_turn_off_maintenance_mode_before_updating', 'يرجى إيقاف تشغيل وضع الصيانة قبل التحديث.', '2023-04-09 01:42:39', '2023-04-09 01:42:39'),
(8957, 'ar', 'status', 'الحالة', '2023-04-09 01:42:39', '2023-04-09 01:42:39');
INSERT INTO `translations` (`id`, `lang`, `lang_key`, `lang_value`, `created_at`, `updated_at`) VALUES
(8958, 'ar', 'phpini_config', 'php.ini Config', '2023-04-09 01:42:39', '2023-04-09 01:42:39'),
(8959, 'ar', 'config_name', 'Config Name', '2023-04-09 01:42:39', '2023-04-09 01:42:39'),
(8960, 'ar', 'current', 'Current', '2023-04-09 01:42:39', '2023-04-09 01:42:39'),
(8961, 'ar', 'recommended', 'Recommended', '2023-04-09 01:42:39', '2023-04-09 01:42:39'),
(8962, 'ar', 'extensions_information', 'Extensions information', '2023-04-09 01:42:39', '2023-04-09 01:42:39'),
(8963, 'ar', 'extension_name', 'Extension Name', '2023-04-09 01:42:39', '2023-04-09 01:42:39'),
(8964, 'ar', 'filesystem_permissions', 'Filesystem Permissions', '2023-04-09 01:42:39', '2023-04-09 01:42:39'),
(8965, 'ar', 'file_or_folder', 'File or Folder', '2023-04-09 01:42:39', '2023-04-09 01:42:39'),
(8966, 'ar', 'server_information', 'Server information', '2023-04-09 01:42:39', '2023-04-09 01:42:39'),
(8967, 'ar', 'current_version', 'Current Version', '2023-04-09 01:42:39', '2023-04-09 01:42:39'),
(8968, 'ar', 'required_version', 'Required Version', '2023-04-09 01:42:39', '2023-04-09 01:42:39'),
(8969, 'ar', 'general', 'General', '2023-04-09 01:42:39', '2023-04-09 01:42:39'),
(8970, 'ar', 'website_theme_color', 'Website Theme Color', '2023-04-09 01:42:39', '2023-04-09 01:42:39'),
(8971, 'ar', 'hex_color_code', 'Hex Color Code', '2023-04-09 01:42:39', '2023-04-09 01:42:39'),
(8972, 'ar', 'global_seo', 'Global Seo', '2023-04-09 01:42:39', '2023-04-09 01:42:39'),
(8973, 'ar', 'meta_description', 'Meta description', '2023-04-09 01:42:39', '2023-04-09 01:42:39'),
(8974, 'ar', 'keywords', 'Keywords', '2023-04-09 01:42:39', '2023-04-09 01:42:39'),
(8975, 'ar', 'separate_with_coma', 'Separate with coma', '2023-04-09 01:42:39', '2023-04-09 01:42:39'),
(8976, 'ar', 'website_header', 'Website Header', '2023-04-09 01:42:39', '2023-04-09 01:42:39'),
(8977, 'ar', 'header_setting', 'Header Setting', '2023-04-09 01:42:39', '2023-04-09 01:42:39'),
(8978, 'ar', 'topbar_banner', 'Topbar Banner', '2023-04-09 01:42:39', '2023-04-09 01:42:39'),
(8979, 'ar', 'topbar_banner_link', 'Topbar Banner Link', '2023-04-09 01:42:39', '2023-04-09 01:42:39'),
(8980, 'ar', 'play_store_link', 'Play Store Link', '2023-04-09 01:42:39', '2023-04-09 01:42:39'),
(8981, 'ar', 'app_store_link', 'App Store Link', '2023-04-09 01:42:39', '2023-04-09 01:42:39'),
(8982, 'ar', 'helpline_number', 'Helpline number', '2023-04-09 01:42:39', '2023-04-09 01:42:39'),
(8983, 'ar', 'header_logo', 'Header Logo', '2023-04-09 01:42:39', '2023-04-09 01:42:39'),
(8984, 'ar', 'header_nav_menu', 'Header Nav Menu', '2023-04-09 01:42:39', '2023-04-09 01:42:39'),
(8985, 'ar', 'label', 'Label', '2023-04-09 01:42:39', '2023-04-09 01:42:39'),
(8986, 'ar', 'you_need_to_configure_smtp_correctly_to_enable_this_feature', 'You need to configure SMTP correctly to enable this feature.', '2023-04-09 01:52:51', '2023-04-09 01:52:51'),
(8987, 'ar', 'configure_now', 'You need to configure SMTP correctly to enable this feature.', '2023-04-09 01:52:51', '2023-04-09 01:52:51'),
(8988, 'ar', 'wallet_system_activation', 'تفعيل نظام المحفظة', '2023-04-09 01:52:51', '2023-04-09 01:52:51'),
(8989, 'ar', 'chat_setting', 'إعداد الدردشة', '2023-04-09 01:52:51', '2023-04-09 01:52:51'),
(8990, 'ar', 'chat_logo', 'شعار الدردشة', '2023-04-09 01:52:51', '2023-04-09 01:52:51'),
(8991, 'ar', 'chat_name', 'اسم الدردشة', '2023-04-09 01:52:51', '2023-04-09 01:52:51'),
(8992, 'ar', 'invoice_setting', 'إعداد الفاتورة', '2023-04-09 01:52:51', '2023-04-09 01:52:51'),
(8993, 'ar', 'invoice_logo', 'شعار الفاتورة', '2023-04-09 01:52:51', '2023-04-09 01:52:51'),
(8994, 'ar', 'email_verification', 'تأكيد بواسطة البريد الالكتروني', '2023-04-09 01:52:51', '2023-04-09 01:52:51'),
(8995, 'ar', 'you_verification_code_is', 'رمز التحقق الخاص بك هو', '2023-04-09 01:52:51', '2023-04-09 01:52:51'),
(8996, 'ar', 'file_deleted_successfully', 'تم حذف الملف بنجاح', '2023-04-09 01:52:51', '2023-04-09 01:52:51'),
(8997, 'ar', 'all_uploaded_files', 'تم حذف الملف بنجاح', '2023-04-09 01:52:51', '2023-04-09 01:52:51'),
(8998, 'ar', 'upload_new_file', 'تحميل ملف جديد', '2023-04-09 01:52:51', '2023-04-09 01:52:51'),
(8999, 'ar', 'all_files', 'كل الملفات', '2023-04-09 01:52:51', '2023-04-09 01:52:51'),
(9000, 'ar', 'search_your_files', 'ابحث في ملفاتك', '2023-04-09 01:52:51', '2023-04-09 01:52:51'),
(9001, 'ar', 'details_info', 'تفاصيل معلومات', '2023-04-09 01:52:51', '2023-04-09 01:52:51'),
(9002, 'ar', 'download', 'تحميل', '2023-04-09 01:52:51', '2023-04-09 01:52:51'),
(9003, 'ar', 'copy_link', 'نسخ الوصلة', '2023-04-09 01:52:51', '2023-04-09 01:52:51'),
(9004, 'ar', 'are_you_sure_to_delete_this_file', 'هل أنت متأكد من حذف هذا الملف؟', '2023-04-09 01:52:51', '2023-04-09 01:52:51'),
(9005, 'ar', 'file_info', 'معلومات الملف', '2023-04-09 01:52:51', '2023-04-09 01:52:51'),
(9006, 'ar', 'link_copied_to_clipboard', 'تم نسخ الرابط إلى الحافظة', '2023-04-09 01:52:51', '2023-04-09 01:52:51'),
(9007, 'ar', 'oops_unable_to_copy', 'عفوًا ، غير قادر على النسخ', '2023-04-09 01:52:51', '2023-04-09 01:52:51'),
(9008, 'ar', 'your_profile_has_been_updated_successfully', 'تم تحديث ملفك الشخصي بنجاح!', '2023-04-09 01:52:51', '2023-04-09 01:52:51'),
(9009, 'ar', 'settings_updated_successfully', 'تم تحديث الإعدادات بنجاح', '2023-04-09 01:52:51', '2023-04-09 01:52:51'),
(9010, 'ar', 'your_review_has_been_submitted', 'تم تقديم رأيك الخاص بك.', '2023-04-09 01:52:51', '2023-04-09 01:52:51'),
(9011, 'ar', 'customer_info', 'معلومات العميل', '2023-04-09 01:52:51', '2023-04-09 01:52:51'),
(9012, 'ar', 'order_date', 'تاريخ الطلب', '2023-04-09 01:52:51', '2023-04-09 01:52:51'),
(9013, 'ar', 'qty', 'الكمية', '2023-04-09 01:52:51', '2023-04-09 16:33:32'),
(9014, 'ar', 'delivery_status_has_been_updated', 'تم تحديث حالة التسليم', '2023-04-09 01:52:51', '2023-04-09 01:52:51'),
(9015, 'ar', 'payment_status_has_been_updated', 'تم تحديث حالة الدفع', '2023-04-09 01:52:51', '2023-04-09 01:52:51'),
(9016, 'ar', 'all_customers', 'كل العملاء', '2023-04-09 01:52:51', '2023-04-09 01:52:51'),
(9017, 'ar', 'type_email_or_name__enter', 'اكتب البريد الإلكتروني أو الاسم وأدخل', '2023-04-09 01:52:51', '2023-04-09 01:52:51'),
(9018, 'ar', 'confirmation', 'تأكيد', '2023-04-09 01:52:51', '2023-04-09 01:52:51'),
(9019, 'ar', 'do_you_really_want_to_ban_this_customer', 'هل تريد حقًا حظر هذا العميل؟', '2023-04-09 01:52:51', '2023-04-09 01:52:51'),
(9020, 'ar', 'do_you_really_want_to_unban_this_customer', 'هل تريد حقًا إلغاء حظر هذا العميل؟', '2023-04-09 01:52:51', '2023-04-09 01:52:51'),
(9021, 'ar', 'your_order_has_been_placed_successfully', 'تم وضع طلبك بنجاح', '2023-04-09 01:52:51', '2023-04-09 01:52:51'),
(9022, 'ar', 'profile_information_has_been_updated_successfully', 'تم تحديث معلومات الملف الشخصي بنجاح', '2023-04-09 01:52:51', '2023-04-09 01:52:51'),
(9023, 'ar', 'zone_has_been_deleted_successfully', 'تم حذف المنطقة بنجاح', '2023-04-09 01:52:52', '2023-04-09 01:52:52'),
(9024, 'ar', 'zone_has_been_inserted_successfully', 'تم إدخال المنطقة بنجاح', '2023-04-09 01:52:52', '2023-04-09 01:52:52'),
(9025, 'ar', 'countries', 'الدول', '2023-04-09 01:52:52', '2023-04-09 01:52:52'),
(9026, 'ar', 'states', 'المناطق', '2023-04-09 01:52:52', '2023-04-09 17:43:32'),
(9027, 'ar', 'showhide', 'إظهار/إخفاء', '2023-04-09 01:52:52', '2023-04-09 01:52:52'),
(9028, 'ar', 'country_status_updated_successfully', 'تم تحديث حالة البلد بنجاح', '2023-04-09 01:52:52', '2023-04-09 01:52:52'),
(9029, 'ar', 'zone_information', 'معلومات المنطقة', '2023-04-09 01:52:52', '2023-04-09 01:52:52'),
(9030, 'ar', 'select_cities', 'حدد المدن', '2023-04-09 01:52:52', '2023-04-09 01:52:52'),
(9031, 'ar', 'all_zones', 'كل المناطق', '2023-04-09 01:52:52', '2023-04-09 01:52:52'),
(9032, 'ar', 'add_new_zone', 'أضف منطقة جديدة', '2023-04-09 01:52:52', '2023-04-09 01:52:52'),
(9033, 'ar', 'cities', 'المدن', '2023-04-09 01:52:52', '2023-04-09 01:52:52'),
(9034, 'ar', 'standard_delivery_cost', 'تكلفة التوصيل القياسية', '2023-04-09 01:52:52', '2023-04-09 01:52:52'),
(9035, 'ar', 'express_delivery_cost', 'تكلفة التوصيل السريع', '2023-04-09 01:52:52', '2023-04-09 01:52:52'),
(9036, 'ar', 'type', 'Type', '2023-04-09 01:58:36', '2023-04-09 01:58:36'),
(9037, 'ar', 'sendmail', 'Sendmail', '2023-04-09 01:58:36', '2023-04-09 01:58:36'),
(9038, 'ar', 'smtp', 'SMTP', '2023-04-09 01:58:36', '2023-04-09 01:58:36'),
(9039, 'ar', 'mailgun', 'Mailgun', '2023-04-09 01:58:36', '2023-04-09 01:58:36'),
(9040, 'ar', 'mail_host', 'MAIL HOST', '2023-04-09 01:58:36', '2023-04-09 01:58:36'),
(9041, 'ar', 'mail_port', 'MAIL PORT', '2023-04-09 01:58:37', '2023-04-09 01:58:37'),
(9042, 'ar', 'mail_username', 'MAIL USERNAME', '2023-04-09 01:58:37', '2023-04-09 01:58:37'),
(9043, 'ar', 'mail_password', 'MAIL PASSWORD', '2023-04-09 01:58:37', '2023-04-09 01:58:37'),
(9044, 'ar', 'mail_encryption', 'MAIL ENCRYPTION', '2023-04-09 01:58:37', '2023-04-09 01:58:37'),
(9045, 'ar', 'mail_from_address', 'MAIL FROM ADDRESS', '2023-04-09 01:58:37', '2023-04-09 01:58:37'),
(9046, 'ar', 'mail_from_name', 'MAIL FROM NAME', '2023-04-09 01:58:37', '2023-04-09 01:58:37'),
(9047, 'ar', 'mailgun_domain', 'MAILGUN DOMAIN', '2023-04-09 01:58:37', '2023-04-09 01:58:37'),
(9048, 'ar', 'mailgun_secret', 'MAILGUN SECRET', '2023-04-09 01:58:37', '2023-04-09 01:58:37'),
(9049, 'ar', 'instruction', 'Instruction', '2023-04-09 01:58:37', '2023-04-09 01:58:37'),
(9050, 'ar', 'please_be_carefull_when_you_are_configuring_smtp_for_incorrect_configuration_you_will_get_error_at_the_time_of_order_place_new_registration_sending_newsletter', 'Please be carefull when you are configuring SMTP. For incorrect configuration you will get error at the time of order place, new registration, sending newsletter.', '2023-04-09 01:58:37', '2023-04-09 01:58:37'),
(9051, 'ar', 'for_nonssl', 'For Non-SSL', '2023-04-09 01:58:37', '2023-04-09 01:58:37'),
(9052, 'ar', 'select_sendmail_for_mail_driver_if_you_face_any_issue_after_configuring_smtp_as_mail_driver_', 'Select sendmail for Mail Driver if you face any issue after configuring smtp as Mail Driver', '2023-04-09 01:58:37', '2023-04-09 01:58:37'),
(9053, 'ar', 'set_mail_host_according_to_your_server_mail_client_manual_settings', 'Set Mail Host according to your server Mail Client Manual Settings', '2023-04-09 01:58:37', '2023-04-09 01:58:37'),
(9054, 'ar', 'set_mail_port_as_587', 'Set Mail port as 587', '2023-04-09 01:58:37', '2023-04-09 01:58:37'),
(9055, 'ar', 'set_mail_encryption_as_ssl_if_you_face_issue_with_tls', 'Set Mail Encryption as ssl if you face issue with tls', '2023-04-09 01:58:37', '2023-04-09 01:58:37'),
(9056, 'ar', 'for_ssl', 'For SSL', '2023-04-09 01:58:37', '2023-04-09 01:58:37'),
(9057, 'ar', 'select_sendmail_for_mail_driver_if_you_face_any_issue_after_configuring_smtp_as_mail_driver', 'Select sendmail for Mail Driver if you face any issue after configuring smtp as Mail Driver', '2023-04-09 01:58:37', '2023-04-09 01:58:37'),
(9058, 'ar', 'set_mail_port_as_465', 'Set Mail port as 465', '2023-04-09 01:58:37', '2023-04-09 01:58:37'),
(9059, 'ar', 'set_mail_encryption_as_ssl', 'Set Mail Encryption as ssl', '2023-04-09 01:58:37', '2023-04-09 01:58:37'),
(9060, 'ar', 'you_have_subscribed_successfully', 'لقد قمت بالاشتراك بنجاح.', '2023-04-09 01:58:37', '2023-04-09 01:58:37'),
(9061, 'ar', 'send_newsletter', 'إرسال النشرة الإخبارية', '2023-04-09 01:58:37', '2023-04-09 01:58:37'),
(9062, 'ar', 'emails', 'رسائل البريد الإلكتروني', '2023-04-09 01:58:37', '2023-04-09 01:58:37'),
(9063, 'ar', 'users', 'المستخدمين', '2023-04-09 01:58:37', '2023-04-09 01:58:37'),
(9064, 'ar', 'newsletter_subject', 'موضوع النشرة الإخبارية', '2023-04-09 01:58:37', '2023-04-09 01:58:37'),
(9065, 'ar', 'newsletter_content', 'محتوى النشرة الإخبارية', '2023-04-09 01:58:37', '2023-04-09 01:58:37'),
(9066, 'ar', 'send', 'ارسل', '2023-04-09 01:58:37', '2023-04-09 01:58:37'),
(9067, 'ar', 'create_offer', 'إنشاء عرض', '2023-04-09 01:58:37', '2023-04-09 01:58:37'),
(9068, 'ar', 'title', 'عنوان', '2023-04-09 01:58:37', '2023-04-09 01:58:37'),
(9069, 'ar', 'banner', 'البنرات', '2023-04-09 01:58:37', '2023-04-09 01:58:37'),
(9070, 'ar', 'start_date', 'تاريخ البدء', '2023-04-09 01:58:37', '2023-04-09 01:58:37'),
(9071, 'ar', 'end_date', 'تاريخ الإنتهاء', '2023-04-09 01:58:37', '2023-04-09 01:58:37'),
(9072, 'ar', 'page_link', 'Page Link', '2023-04-09 01:58:37', '2023-04-09 01:58:37'),
(9073, 'ar', 'user_already_exists', 'المستخدم موجود اصلا.', '2023-04-09 01:58:37', '2023-04-09 01:58:37'),
(9074, 'ar', 'system_name', 'اسم النظام', '2023-04-09 01:58:37', '2023-04-09 01:58:37'),
(9075, 'ar', 'system_logo__white', 'شعار النظام - أبيص', '2023-04-09 01:58:37', '2023-04-09 01:58:37'),
(9076, 'ar', 'choose_files', 'اختر الملفات', '2023-04-09 01:58:37', '2023-04-09 01:58:37'),
(9077, 'ar', 'will_be_used_in_admin_panel_side_menu', 'سيتم استخدامها في القائمة الجانبية للوحة الإدارة', '2023-04-09 01:58:37', '2023-04-09 01:58:37'),
(9078, 'ar', 'system_logo__black', 'شعار النظام - أسود', '2023-04-09 01:58:37', '2023-04-09 01:58:37'),
(9079, 'ar', 'will_be_used_in_admin_panel_topbar_in_mobile__admin_login_page', 'سيتم استخدامها في الشريط العلوي للوحة الإدارة في الجوال + صفحة تسجيل دخول المسؤول', '2023-04-09 01:58:37', '2023-04-09 01:58:37'),
(9080, 'ar', 'system_timezone', 'المنطقة الزمنية للنظام', '2023-04-09 01:58:37', '2023-04-09 01:58:37'),
(9081, 'ar', 'admin_login_page_background', 'خلفية صفحة تسجيل دخول المسؤول', '2023-04-09 01:58:37', '2023-04-09 01:58:37'),
(9082, 'ar', 'default_weight_unit', 'وحدة الوزن الافتراضية', '2023-04-09 01:58:37', '2023-04-09 01:58:37'),
(9083, 'ar', 'default_dimensions_unit', 'وحدة الأبعاد الافتراضية', '2023-04-09 01:58:37', '2023-04-09 01:58:37'),
(9084, 'ar', 'features_activation', 'تفعيل الميزات', '2023-04-09 01:58:37', '2023-04-09 01:58:37'),
(9085, 'ar', 'forcefully_https_redirection', 'Forcefully HTTPS redirection', '2023-04-09 01:58:37', '2023-04-09 01:58:37'),
(9086, 'ar', 'place_order', 'تأكيد الطلب', '2023-04-09 02:47:18', '2023-04-09 02:47:18'),
(9087, 'ar', 'confirm', 'تأكيد', '2023-04-09 02:47:18', '2023-04-09 02:47:18'),
(9088, 'ar', 'select_your_country', 'اختر بلدك', '2023-04-09 02:47:18', '2023-04-09 02:47:18'),
(9089, 'ar', 'city', 'المدينة', '2023-04-09 02:47:18', '2023-04-09 02:47:18'),
(9090, 'ar', 'confirm_with_cod', 'Confirm with COD', '2023-04-09 02:47:18', '2023-04-09 02:47:18'),
(9091, 'ar', 'confirm_with_cash', 'Confirm with Cash', '2023-04-09 02:47:18', '2023-04-09 02:47:18'),
(9092, 'ar', 'offline_payment_info', 'Offline Payment Info', '2023-04-09 02:47:18', '2023-04-09 02:47:18'),
(9093, 'ar', 'payment_proof', 'إثبات الدفع', '2023-04-09 02:47:18', '2023-04-09 02:47:18'),
(9094, 'ar', 'choose_image', 'اختر صورة', '2023-04-09 02:47:18', '2023-04-09 02:47:18'),
(9095, 'ar', 'load_more', 'تحميل المزيد.', '2023-04-09 02:47:18', '2023-04-09 02:47:18'),
(9096, 'ar', 'nothing_more_found', 'لم يتم العثور على المزيد', '2023-04-09 02:47:18', '2023-04-09 02:47:18'),
(9097, 'ar', 'attachments', 'المرفقات', '2023-04-09 02:56:12', '2023-04-09 02:56:12'),
(9098, 'ar', 'request_refund', 'طلب استرداد', '2023-04-09 02:56:12', '2023-04-09 02:56:12'),
(9099, 'ar', 'shops', 'المتاجر', '2023-04-09 02:56:12', '2023-04-09 02:56:12'),
(9100, 'ar', 'congratulations_you_reached_the_minimum_order_amount', 'تهانينا! لقد وصلت إلى الحد الأدنى لمبلغ الطلب.', '2023-04-09 02:56:12', '2023-04-09 02:56:12'),
(9101, 'ar', 'you_need_to_reach', 'تحتاج إلى الوصول', '2023-04-09 02:56:12', '2023-04-09 02:56:12'),
(9102, 'ar', 'to_place_order_from_this_shop', 'لتقديم طلب من هذا المتجر.', '2023-04-09 02:56:12', '2023-04-09 02:56:12'),
(9103, 'ar', 'to_place_order_from', 'لتقديم طلب من', '2023-04-09 02:56:12', '2023-04-09 02:56:12'),
(9104, 'ar', 'create_new_refund_request', 'إنشاء طلب استرداد جديد', '2023-04-09 02:56:12', '2023-04-09 02:56:12'),
(9105, 'ar', 'refund_requests', 'طلبات الاسترداد', '2023-04-09 02:56:13', '2023-04-09 02:56:13'),
(9106, 'ar', 'pending', 'قيد الانتظار', '2023-04-09 02:56:13', '2023-04-09 02:56:13'),
(9107, 'ar', 'accepted', 'مقبول', '2023-04-09 02:56:13', '2023-04-09 02:56:13'),
(9108, 'ar', 'rejected', 'مرفوض', '2023-04-09 02:56:13', '2023-04-09 02:56:13'),
(9109, 'ar', 'choose_one', 'اختر واحدة', '2023-04-09 02:56:13', '2023-04-09 02:56:13'),
(9110, 'ar', 'select_images', 'حدد الصور', '2023-04-09 02:56:13', '2023-04-09 02:56:13'),
(9111, 'ar', 'please_select_a_product', 'الرجاء اختيار منتج', '2023-04-09 02:56:13', '2023-04-09 02:56:13'),
(9112, 'ar', 'wallet_history', 'سجل المحفظة', '2023-04-09 02:56:13', '2023-04-09 02:56:13'),
(9113, 'ar', 'added', 'الإضافات', '2023-04-09 02:56:13', '2023-04-09 02:56:13'),
(9114, 'ar', 'deducted', 'مخصوم', '2023-04-09 02:56:13', '2023-04-09 02:56:13'),
(9115, 'ar', 'we_will_get_back_to_very_soon', 'سوف نعود قريبا جدا', '2023-04-09 02:56:13', '2023-04-09 02:56:13'),
(9116, 'ar', 'tracking_information', 'معلومات التتبع', '2023-04-09 02:56:13', '2023-04-09 02:56:13'),
(9117, 'ar', 'courier_name', 'اسم المندوب', '2023-04-09 02:56:14', '2023-04-09 02:56:14'),
(9118, 'ar', 'tracking_number', 'رقم التتبع', '2023-04-09 02:56:14', '2023-04-09 02:56:14'),
(9119, 'ar', 'tracking_url', 'رابط التتبع', '2023-04-09 02:56:14', '2023-04-09 02:56:14'),
(9120, 'ar', 'use_phone_instead', 'استخدم الهاتف كبديل', '2023-04-09 02:56:14', '2023-04-09 02:56:14'),
(9121, 'ar', 'conversations', 'المحادثات', '2023-04-09 02:56:14', '2023-04-09 02:56:14'),
(9122, 'ar', 'no_conversation_found', 'لم يتم العثور على محادثة', '2023-04-09 02:56:14', '2023-04-09 02:56:14'),
(9123, 'ar', 'my_conversations', 'محادثاتي', '2023-04-09 02:56:14', '2023-04-09 02:56:14'),
(9124, 'ar', 'message_seller', 'مراسلة البائع', '2023-04-09 02:56:14', '2023-04-09 02:56:14'),
(9125, 'ar', 'any_query_about_this_product', 'أي استفسار عن هذا المنتج', '2023-04-09 02:56:14', '2023-04-09 02:56:14'),
(9126, 'ar', 'question', 'سؤال', '2023-04-09 02:56:14', '2023-04-09 02:56:14'),
(9127, 'ar', 'message_has_been_sent_to_seller', 'تم إرسال الرسالة إلى البائع', '2023-04-09 02:56:14', '2023-04-09 02:56:14'),
(9128, 'ar', 'conversation_with', 'محادثة مع', '2023-04-09 02:56:14', '2023-04-09 02:56:14'),
(9129, 'ar', 'product_query', 'استعلام عن المنتج', '2023-04-09 02:56:14', '2023-04-09 02:56:14'),
(9130, 'ar', 'product_querries', 'استفسارات المنتج', '2023-04-09 02:56:15', '2023-04-09 02:56:15'),
(9131, 'ar', 'my_querries', 'استفساراتي', '2023-04-09 02:56:15', '2023-04-09 02:56:15'),
(9132, 'ar', 'new', 'جديد', '2023-04-09 02:56:15', '2023-04-09 02:56:15'),
(9133, 'ar', 'query_with', 'الاستعلام مع', '2023-04-09 02:56:15', '2023-04-09 02:56:15'),
(9134, 'ar', 'contact_admin', 'اتصل بالمسؤول', '2023-04-09 02:56:15', '2023-04-09 02:56:15'),
(9135, 'ar', 'account_details', 'تفاصيل الحساب', '2023-04-09 02:56:15', '2023-04-09 02:56:15'),
(9136, 'ar', 'routing_number', 'رقم التوصيل', '2023-04-09 02:56:15', '2023-04-09 02:56:15'),
(9137, 'ar', 'account_number', 'رقم الحساب', '2023-04-09 02:56:15', '2023-04-09 02:56:15'),
(9138, 'ar', 'account_name', 'اسم الحساب', '2023-04-09 02:56:15', '2023-04-09 02:56:15'),
(9139, 'ar', 'bank_name', 'اسم البمك', '2023-04-09 02:56:15', '2023-04-09 02:56:15'),
(9140, 'ar', 'bank_info', 'المعلومات البنكية', '2023-04-09 02:56:15', '2023-04-09 02:56:15'),
(9141, 'ar', 'payment_name', 'اسم الدفعة', '2023-04-09 02:56:15', '2023-04-09 02:56:15'),
(9142, 'ar', 'payment_type', 'نوع الدفع', '2023-04-09 02:56:15', '2023-04-09 02:56:15'),
(9143, 'ar', 'transaction_id', 'رقم المعاملة', '2023-04-09 02:56:15', '2023-04-09 02:56:15'),
(9144, 'ar', 'please_input_transaction_id', 'الرجاء إدخال معرف المعاملة', '2023-04-09 02:56:15', '2023-04-09 02:56:15'),
(9145, 'ar', 'add_receipt', 'أضف الإيصال', '2023-04-09 02:56:15', '2023-04-09 02:56:15'),
(9146, 'ar', 'wallet_recharge_successful', 'تم إعادة شحن المحفظة بنجاح', '2023-04-09 02:56:15', '2023-04-09 02:56:15'),
(9147, 'ar', 'please_wait_for_approval', 'يرجى انتظار الموافقة', '2023-04-09 04:17:56', '2023-04-09 04:17:56'),
(9148, 'ar', 'receipt', 'إيصال', '2023-04-09 04:17:56', '2023-04-09 04:17:56'),
(9149, 'ar', 'payment_details', 'بيانات الدفع', '2023-04-09 04:17:56', '2023-04-09 04:17:56'),
(9150, 'ar', 'paid_via', 'دفعت عن طريق', '2023-04-09 04:17:56', '2023-04-09 04:17:56'),
(9151, 'ar', 'all_blogs', 'All Blogs', '2023-04-09 04:17:56', '2023-04-09 04:17:56'),
(9152, 'ar', 'read_full_blog', 'Read full blog', '2023-04-09 04:17:56', '2023-04-09 04:17:56'),
(9153, 'ar', 'social_media', 'وسائل التواصل الاجتماعي', '2023-04-09 04:17:56', '2023-04-09 04:17:56'),
(9154, 'ar', 'recent_blogs', 'Recent Blogs', '2023-04-09 04:17:56', '2023-04-09 04:17:56'),
(9155, 'ar', 'no_blog_found', 'No Blog Found', '2023-04-09 04:17:56', '2023-04-09 04:17:56'),
(9156, 'ar', 'please_enter_cvv', 'الرجاء إدخال رمز CVV', '2023-04-09 04:17:56', '2023-04-09 04:17:56'),
(9157, 'ar', 'please_enter_valid_card_number', 'الرجاء إدخال رقم بطاقة صحيح', '2023-04-09 04:17:56', '2023-04-09 04:17:56'),
(9158, 'ar', 'select_month', 'اختر الشهر', '2023-04-09 04:17:56', '2023-04-09 04:17:56'),
(9159, 'ar', 'select_year', 'حدد السنة', '2023-04-09 04:17:56', '2023-04-09 04:17:56'),
(9160, 'ar', 'earning_points', 'كسب النقاط', '2023-04-09 04:17:56', '2023-04-09 04:17:56'),
(9161, 'ar', 'my_points', 'نقاطي', '2023-04-09 04:17:56', '2023-04-09 04:17:56'),
(9162, 'ar', 'point', 'نقطة', '2023-04-09 04:17:56', '2023-04-09 04:17:56'),
(9163, 'ar', 'wallet_money', 'رصيد المحفظة', '2023-04-09 04:17:56', '2023-04-09 04:17:56'),
(9164, 'ar', 'point_earning_history', 'سجل كسب النقاط', '2023-04-09 04:17:56', '2023-04-09 04:17:56'),
(9165, 'ar', 'points', 'نقاط', '2023-04-09 04:17:56', '2023-04-09 04:17:56'),
(9166, 'ar', 'a_verification_code_has_been_sent_to_your_phone_number', 'تم إرسال رمز التحقق إلى رقم هاتفك.', '2023-04-09 04:17:56', '2023-04-09 04:17:56'),
(9167, 'ar', 'already_have_an_account', 'هل لديك حساب', '2023-04-09 04:17:56', '2023-04-09 04:17:56'),
(9168, 'ar', 'enter_your_phone_number_to_recover_your_password', 'أدخل رقم هاتفك لاستعادة كلمة المرور الخاصة بك', '2023-04-09 04:17:56', '2023-04-09 04:17:56'),
(9169, 'ar', 'enter_your_email_address_or_phone_number_to_recover_your_password', 'أدخل عنوان بريدك الإلكتروني أو رقم هاتفك لاستعادة كلمة المرور الخاصة بك', '2023-04-09 04:17:56', '2023-04-09 04:17:56'),
(9170, 'ar', 'enter_your_phone_number_code__new_password', 'أدخل رقم هاتفك والرمز وكلمة المرور الجديدة', '2023-04-09 04:17:56', '2023-04-09 04:17:56'),
(9171, 'ar', 'enter_your_phone_number_verification_code', 'أدخل رقم هاتفك ، رمز التحقق', '2023-04-09 04:17:56', '2023-04-09 04:17:56'),
(9172, 'ar', 'pay_with_wallet', 'ادفع بالمحفظة', '2023-04-09 04:17:56', '2023-04-09 04:17:56'),
(9173, 'ar', 'become_a_seller_with', 'كن بائعا مع', '2023-04-09 04:17:56', '2023-04-09 04:17:56'),
(9174, 'ar', 'all_shops', 'جميع المتاجر', '2023-04-09 04:17:56', '2023-04-09 04:17:56'),
(9175, 'ar', 'visit_store', 'زيارة المتجر', '2023-04-09 04:17:56', '2023-04-09 04:17:56'),
(9176, 'ar', 'follow', 'متابعة', '2023-04-09 04:17:56', '2023-04-09 04:17:56'),
(9177, 'ar', 'unfollow', 'الغاء المتابعة', '2023-04-09 04:17:56', '2023-04-09 04:17:56'),
(9178, 'ar', 'shop_since', 'المتجر منذ', '2023-04-09 04:17:56', '2023-04-09 04:17:56'),
(9179, 'ar', 'my_compared_list', 'قائمة المقارنة الخاصة بي', '2023-04-09 04:17:56', '2023-04-09 04:17:56'),
(9180, 'ar', 'compare', 'قارن', '2023-04-09 04:17:56', '2023-04-09 04:17:56'),
(9181, 'ar', 'reset_list', 'إعادة القائمة', '2023-04-09 04:17:56', '2023-04-09 04:17:56'),
(9182, 'ar', 'compared_product_list_is_empty', 'قائمة المنتجات المقارنة فارغة', '2023-04-09 04:17:56', '2023-04-09 04:17:56'),
(9183, 'ar', 'cash_on_delivery', 'الدفع عند الاستلام', '2023-04-09 04:17:56', '2023-04-09 04:17:56'),
(9184, 'ar', 'this_coupon_code_is_no_applicable_for_your_cart_products', 'لا ينطبق رمز القسيمة هذا على منتجات سلة التسوق الخاصة بك.', '2023-04-09 04:17:56', '2023-04-09 04:17:56'),
(9185, 'ar', 'update_now', 'تحديث الان', '2023-04-09 04:17:56', '2023-04-09 04:17:56'),
(9186, 'ar', 'amount_sold', 'الكمية المباعة', '2023-04-09 04:17:56', '2023-04-09 04:17:56'),
(9187, 'ar', 'currencies', 'العملات', '2023-04-09 04:17:56', '2023-04-09 04:17:56'),
(9188, 'ar', 'flag', 'Flag', '2023-04-09 04:17:56', '2023-04-09 04:17:56'),
(9189, 'ar', 'copy_code', 'نسخ الرمز', '2023-04-09 04:17:56', '2023-04-09 04:17:56'),
(9190, 'ar', 'code_copied_to_clipboard', 'تم نسخ الرمز إلى الحافظة', '2023-04-09 04:17:56', '2023-04-09 04:17:56'),
(9191, 'ar', 'file_name', 'اسم الملف', '2023-04-09 04:17:56', '2023-04-09 04:17:56'),
(9192, 'ar', 'file_type', 'نوع الملف', '2023-04-09 04:17:56', '2023-04-09 04:17:56'),
(9193, 'ar', 'file_size', 'حجم الملف', '2023-04-09 04:17:56', '2023-04-09 04:17:56'),
(9194, 'ar', 'uploaded_by', 'تم الرفع بواسطة', '2023-04-09 04:17:56', '2023-04-09 04:17:56'),
(9195, 'ar', 'uploaded_at', 'تم الرفع في', '2023-04-09 04:17:56', '2023-04-09 04:17:56'),
(9196, 'ar', 'role_has_been_updated_successfully', 'تم تحديث الدور الوظيفي بنجاح', '2023-04-09 04:17:56', '2023-04-09 04:17:56'),
(9197, 'ar', 'your_shopping_bag_is_empty_start_shopping', 'سلة التسوق الخاصة بك فارغة. ابدأ التسوق.', '2023-04-09 04:36:30', '2023-04-09 04:36:30'),
(9198, 'ar', 'print_invoice', 'طباعة فاتورة', '2023-04-09 04:36:30', '2023-04-09 04:36:30'),
(9199, 'ar', 'save_page', 'احفظ الصفحة', '2023-04-09 04:36:30', '2023-04-09 04:36:30'),
(9200, 'ar', 'attribute_information', 'معلومات السمة', '2023-04-09 04:36:30', '2023-04-09 04:36:30'),
(9201, 'ar', 'brand_has_been_deleted_successfully', 'تم حذف العلامة التجارية بنجاح', '2023-04-09 04:36:30', '2023-04-09 04:36:30'),
(9202, 'ar', 'attribute_value_has_been_added_successfully', 'Attribute value has been added successfully', '2023-04-09 04:36:30', '2023-04-09 04:36:30'),
(9203, 'ar', 'address_has_been_updated_successfully', 'تم تحديث العنوان بنجاح.', '2023-04-09 04:36:30', '2023-04-09 04:36:30'),
(9204, 'ar', 'no_warranty', 'بدون ضمان', '2023-04-09 04:36:30', '2023-04-09 04:36:30'),
(9205, 'ar', 'in_wishlist', 'في قائمة المفضلة', '2023-04-09 04:36:30', '2023-04-11 16:46:14'),
(9206, 'ar', 'in_cart', 'في سلة التسوق', '2023-04-09 04:36:30', '2023-04-09 04:36:30'),
(9207, 'ar', 'times_sold', 'عدد مرات البيع', '2023-04-09 04:36:30', '2023-04-09 04:36:30'),
(9208, 'ar', 'tags', 'Tags', '2023-04-09 04:36:30', '2023-04-09 04:36:30'),
(9209, 'ar', 'has_warranty', 'لديه ضمان', '2023-04-09 04:36:30', '2023-04-09 04:36:30'),
(9210, 'ar', 'minimum_purchase_qty_', 'الحد الأدنى من كمية الشراء', '2023-04-09 04:36:30', '2023-04-09 04:36:30'),
(9211, 'ar', 'maximum_purchase_qty_', 'الحد الأقصى لكمية الشراء', '2023-04-09 04:36:30', '2023-04-09 04:36:30'),
(9212, 'ar', 'gallery', 'صالة عرض', '2023-04-09 04:36:30', '2023-04-09 04:36:30'),
(9213, 'ar', 'account_information', 'معلومات الحساب', '2023-04-09 04:36:30', '2023-04-09 04:36:30'),
(9214, 'ar', 'registration_date', 'تاريخ التسجيل', '2023-04-09 04:36:30', '2023-04-09 04:36:30'),
(9215, 'ar', 'balance', 'رصيد حساب', '2023-04-09 04:36:30', '2023-04-09 04:36:30'),
(9216, 'ar', 'others_information', 'معلومات أخرى', '2023-04-09 04:36:30', '2023-04-09 04:36:30'),
(9217, 'ar', 'ordered_amount', 'المبلغ المطلوب', '2023-04-09 04:36:30', '2023-04-09 04:36:30'),
(9218, 'ar', 'number_of_items_in_cart', 'عدد العناصر في عربة التسوق', '2023-04-09 04:36:30', '2023-04-09 04:36:30'),
(9219, 'ar', 'number_of_items_in_wishlist', 'عدد العناصر في قائمة المفضلة', '2023-04-09 04:36:30', '2023-04-11 16:46:14'),
(9220, 'ar', 'total_reviewed_products', 'إجمالي المنتجات التي تمت مراجعتها', '2023-04-09 04:36:30', '2023-04-09 04:36:30'),
(9221, 'ar', 'orders_of_this_customer', 'طلبات هذا العميل', '2023-04-09 04:36:30', '2023-04-09 04:40:00'),
(9222, 'ar', 'number_of_orders', 'عدد الطلبات', '2023-04-09 04:36:31', '2023-04-09 04:40:00'),
(9223, 'ar', 'update_currency', 'تحديث العملة', '2023-04-09 04:36:31', '2023-04-09 04:40:00'),
(9224, 'ar', 'language_changed_to_', 'تغيرت اللغة إلى', '2023-04-09 04:36:31', '2023-04-09 04:40:00'),
(9225, 'ar', 'test_smtp_configuration', 'Test SMTP configuration', '2023-04-09 04:36:31', '2023-04-09 04:40:18'),
(9226, 'ar', 'enter_your_email_address', 'أدخل عنوان بريدك الالكتروني', '2023-04-09 04:36:31', '2023-04-09 04:40:00'),
(9227, 'ar', 'send_test_email', 'إرسال بريد إلكتروني تجريبي', '2023-04-09 04:36:31', '2023-04-09 04:40:01'),
(9228, 'ar', 'all_taxes', 'جميع الضرائب', '2023-04-09 04:36:31', '2023-04-09 04:40:01'),
(9229, 'ar', 'taxes', 'الضرائب', '2023-04-09 04:36:31', '2023-04-09 04:40:01'),
(9230, 'ar', 'add_new_tax', 'أضف ضريبة جديدة', '2023-04-09 04:36:31', '2023-04-09 04:40:01'),
(9231, 'ar', 'tax_status_updated_successfully', 'تم تحديث الحالة الضريبية بنجاح', '2023-04-09 04:36:31', '2023-04-09 04:40:01'),
(9232, 'ar', 'express', 'express', '2023-04-09 04:36:31', '2023-04-09 04:40:01'),
(9233, 'ar', 'only_customers_can_login_here', 'يمكن للعملاء فقط تسجيل الدخول هنا', '2023-04-09 04:36:31', '2023-04-09 04:40:01'),
(9234, 'ar', 'your_cart_is_empty_please_select_a_product', 'سلة التسوق فارغة. الرجاء اختيار منتج.', '2023-04-09 04:36:31', '2023-04-09 04:40:01'),
(9235, 'ar', 'zip_file', 'Zip File', '2023-04-09 04:36:31', '2023-04-09 04:40:01'),
(9236, 'ar', 'install', 'تثبيت', '2023-04-09 04:36:31', '2023-04-09 04:40:01'),
(9237, 'ar', 'no_order_found_by_this_code', 'لم يتم العثور على طلب من خلال هذا الرمز', '2023-04-09 04:36:31', '2023-04-09 04:40:01'),
(9238, 'ar', 'product_is_successfully_removed_from_your_wishlist', 'تمت إزالة المنتج بنجاح من المفضلة', '2023-04-09 04:36:31', '2023-04-11 16:46:14'),
(9239, 'ar', 'currency_updated_successfully', 'تم تحديث العملة بنجاح', '2023-04-09 04:36:31', '2023-04-09 04:40:01'),
(9240, 'ar', 'symbol', 'رمز', '2023-04-09 04:36:31', '2023-04-09 04:40:01'),
(9241, 'ar', 'installed_addon', 'Installed Addon', '2023-04-09 04:36:31', '2023-04-09 04:40:01'),
(9242, 'ar', 'install_new_addon', 'Install New Addon', '2023-04-09 04:36:31', '2023-04-09 04:40:01'),
(9243, 'ar', 'no_addon_installed', 'No Addon Installed', '2023-04-09 04:36:31', '2023-04-09 04:40:01'),
(9244, 'ar', 'status_updated_successfully', 'تم تحديث الحالة بنجاح', '2023-04-09 04:36:31', '2023-04-09 04:40:01'),
(9245, 'ar', 'add_new_values', 'أضف قيمًا جديدة', '2023-04-09 04:36:31', '2023-04-09 04:40:01'),
(9246, 'ar', 'attribute_values_are_non_deletable_you_can_only_add_or_edit', 'Attribute values are non deletable. You can only add or edit.', '2023-04-09 04:36:31', '2023-04-09 04:40:01'),
(9247, 'ar', 'attribute_value_name', 'Attribute Value Name', '2023-04-09 04:47:53', '2023-04-09 04:47:53'),
(9248, 'ar', 'all_values', 'كل القيم', '2023-04-09 04:47:53', '2023-04-09 04:47:53'),
(9249, 'ar', 'attribute_value', 'Attribute Value', '2023-04-09 04:47:53', '2023-04-09 04:47:53'),
(9250, 'ar', 'update_role_information', 'تحديث معلومات الدور الوظيفي', '2023-04-09 04:47:53', '2023-04-09 04:47:53'),
(9251, 'ar', 'flutterwave_credential', 'Flutterwave Credential', '2023-04-09 04:47:53', '2023-04-09 04:47:53'),
(9252, 'ar', 'flw_public_key', 'FLW_PUBLIC_KEY', '2023-04-09 04:47:53', '2023-04-09 04:47:53'),
(9253, 'ar', 'flw_secret_key', 'FLW_SECRET_KEY', '2023-04-09 04:47:53', '2023-04-09 04:47:53'),
(9254, 'ar', 'flw_secret_hash', 'FLW_SECRET_HASH', '2023-04-09 04:47:53', '2023-04-09 04:47:53'),
(9255, 'ar', 'flw_payment_currency_code', 'FLW_PAYMENT_CURRENCY_CODE', '2023-04-09 04:47:53', '2023-04-09 04:47:53'),
(9256, 'ar', 'paytm_credential', 'Paytm Credential', '2023-04-09 04:47:54', '2023-04-09 04:47:54'),
(9257, 'ar', 'paytm_environment', 'PAYTM ENVIRONMENT', '2023-04-09 04:47:54', '2023-04-09 04:47:54'),
(9258, 'ar', 'paytm_merchant_id', 'PAYTM MERCHANT ID', '2023-04-09 04:47:54', '2023-04-09 04:47:54'),
(9259, 'ar', 'paytm_merchant_key', 'PAYTM MERCHANT KEY', '2023-04-09 04:47:54', '2023-04-09 04:47:54'),
(9260, 'ar', 'paytm_merchant_website', 'PAYTM MERCHANT WEBSITE', '2023-04-09 04:47:54', '2023-04-09 04:47:54'),
(9261, 'ar', 'paytm_channel', 'PAYTM CHANNEL', '2023-04-09 04:47:54', '2023-04-09 04:47:54'),
(9262, 'ar', 'paytm_industry_type', 'PAYTM INDUSTRY TYPE', '2023-04-09 04:47:54', '2023-04-09 04:47:54'),
(9263, 'ar', 'your_order_has_been_placed', 'Your order has been placed', '2023-04-09 04:47:54', '2023-04-09 04:47:54'),
(9264, 'ar', 'product_has_been_deleted_successfully', 'تم حذف المنتج بنجاح', '2023-04-09 04:47:54', '2023-04-09 04:47:54'),
(9265, 'ar', 'cart_deleted_due_to_minimum_quantity', 'تم حذف سلة التسوق بسبب الحد الأدنى من الكمية', '2023-04-09 04:47:54', '2023-04-09 04:47:54'),
(9266, 'ar', 'product_has_been_successfully_removed_from_your_cart', 'تمت إزالة المنتج بنجاح من سلة التسوق الخاصة بك', '2023-04-09 04:47:54', '2023-04-09 04:47:54'),
(9267, 'ar', 'cart_updated', 'تم تحديث سلة التسوق', '2023-04-09 04:47:54', '2023-04-09 04:47:54'),
(9268, 'ar', 'customer_need_to_purchase_this_minimum_quantity_for_this_product_minimum_should_be_1', 'يحتاج العميل إلى شراء هذا الحد الأدنى من الكمية لهذا المنتج. يجب أن يكون الحد الأدنى 1.', '2023-04-09 04:47:54', '2023-04-09 04:47:54'),
(9269, 'ar', 'customer_will_be_able_to_purchase_this_maximum_quantity_for_this_product_default_0_for_unlimited', 'سيتمكن العميل من شراء هذه الكمية القصوى من هذا المنتج. الافتراضي 0 لعدد غير محدود.', '2023-04-09 04:47:54', '2023-04-09 04:47:54'),
(9270, 'ar', 'category_has_been_inserted_successfully', 'تم ادراج القسم بنجاح', '2023-04-09 04:47:54', '2023-04-28 09:52:30'),
(9271, 'ar', 'brand_has_been_updated_successfully', 'تم تحديث العلامة التجارية بنجاح', '2023-04-09 04:47:54', '2023-04-09 04:47:54'),
(9272, 'ar', 'support_chat', 'Support chat', '2023-04-09 04:47:54', '2023-04-09 04:47:54'),
(9273, 'ar', 'show_more', 'أظهر المزيد', '2023-04-09 04:47:54', '2023-04-09 04:47:54'),
(9274, 'ar', 'show_less', 'أظهر أقل', '2023-04-09 04:47:54', '2023-04-09 04:47:54'),
(9275, 'ar', 'buy_now', 'اشتري الآن', '2023-04-09 04:47:54', '2023-04-09 04:47:54'),
(9276, 'ar', 'brand_information', 'معلومات العلامة التجارية', '2023-04-09 04:47:54', '2023-04-09 04:47:54'),
(9277, 'ar', 'filter_by_rating', 'تصفية حسب التصنيف', '2023-04-09 04:47:54', '2023-04-09 04:47:54'),
(9278, 'ar', 'product__rating', 'المنتج والتقييم', '2023-04-09 04:47:54', '2023-04-09 04:47:54'),
(9279, 'ar', 'published_reviews_updated_successfully', 'تم تحديث المراجعات المنشورة بنجاح', '2023-04-09 04:47:54', '2023-04-09 04:47:54'),
(9280, 'ar', 'please_configure_smtp_setting_to_work_all_email_sending_functionality', 'Please Configure SMTP Setting to work all email sending functionality', '2023-04-09 04:47:54', '2023-04-09 04:47:54'),
(9281, 'ar', 'page_has_been_updated_successfully', 'تم تحديث الصفحة بنجاح', '2023-04-09 04:47:54', '2023-04-09 04:47:54'),
(9282, 'ar', 'edit_page_information', 'تحرير معلومات الصفحة', '2023-04-09 04:47:54', '2023-04-09 04:47:54'),
(9283, 'ar', 'page_content', 'محتوى الصفحة', '2023-04-09 04:47:54', '2023-04-09 04:47:54'),
(9284, 'ar', 'link', 'Link', '2023-04-09 04:47:54', '2023-04-09 04:47:54'),
(9285, 'ar', 'use_character_number_hypen_only', 'Use character, number, hypen only', '2023-04-09 04:47:54', '2023-04-09 04:47:54'),
(9286, 'ar', 'add_content', 'إضافة محتوى', '2023-04-09 04:47:54', '2023-04-09 04:47:54'),
(9287, 'ar', 'seo_fields', 'Seo Fields', '2023-04-09 04:47:54', '2023-04-09 04:47:54'),
(9288, 'ar', 'update_page', 'تحديث الصفحة', '2023-04-09 04:47:54', '2023-04-09 04:47:54'),
(9289, 'ar', 'go_to_settings_of_your_page_and_find_the_option_of_advance_messaging', 'انتقل إلى إعدادات صفحتك وابحث عن خيار \\ \"إرسال الرسائل المتقدمة \\\"', '2023-04-09 04:47:54', '2023-04-09 04:47:54'),
(9290, 'ar', 'scroll_down_that_page_and_you_will_get_white_listed_domain', 'قم بالتمرير لأسفل تلك الصفحة وستحصل على \\ \"نطاق مدرج في القائمة البيضاء \\\"', '2023-04-09 04:47:54', '2023-04-09 04:47:54'),
(9291, 'ar', 'set_your_website_domain_name', 'قم بتعيين اسم دويمن الموقع الويب الخاص بك', '2023-04-09 04:47:54', '2023-04-09 04:47:54'),
(9292, 'ar', 'facebook_pixel', 'Facebook Pixel', '2023-04-09 04:47:54', '2023-04-09 04:47:54'),
(9293, 'ar', 'facebook_pixel_setting', 'Facebook Pixel Setting', '2023-04-09 04:47:54', '2023-04-09 04:47:54'),
(9294, 'ar', 'facebook_pixel_id', 'Facebook Pixel ID', '2023-04-09 04:47:54', '2023-04-09 04:47:54'),
(9295, 'ar', 'please_be_carefull_when_you_are_configuring_facebook_pixel', 'يرجى توخي الحذر عند تكوين Facebook pixel.', '2023-04-09 04:47:54', '2023-04-09 04:47:54'),
(9296, 'ar', 'log_in_to_facebook_and_go_to_your_ads_manager_account', 'قم بتسجيل الدخول إلى Facebook وانتقل إلى حساب Ads Manager الخاص بك', '2023-04-09 04:47:54', '2023-04-09 04:47:54'),
(9297, 'ar', 'open_the_navigation_bar_and_select_events_manager', 'افتح شريط التنقل وحدد مدير الأحداث', '2023-04-09 05:45:12', '2023-04-09 05:45:12'),
(9298, 'ar', 'copy_your_pixel_id_from_underneath_your_site_name_and_paste_the_number_into_facebook_pixel_id_field', 'انسخ معرّف Pixel من أسفل اسم الموقع والصق الرقم في حقل Facebook Pixel ID', '2023-04-09 05:45:12', '2023-04-09 05:45:12'),
(9299, 'ar', 'google_analytics_setting', 'إعداد Google Analytics', '2023-04-09 05:45:12', '2023-04-09 05:45:12'),
(9300, 'ar', 'google_analytics', 'Google Analytics', '2023-04-09 05:45:12', '2023-04-09 05:45:12'),
(9301, 'ar', 'tracking_id', 'Tracking ID', '2023-04-09 05:45:12', '2023-04-09 05:45:12'),
(9302, 'ar', 'facebook_chat', 'محادثات Facebook', '2023-04-09 05:45:12', '2023-04-09 05:45:12'),
(9303, 'ar', 'facebook_chat_setting', 'ظبط محادثات Facebook', '2023-04-09 05:45:12', '2023-04-09 05:45:12'),
(9304, 'ar', 'facebook_page_id', 'Facebook Page ID', '2023-04-09 05:45:12', '2023-04-09 05:45:12'),
(9305, 'ar', 'please_be_carefull_when_you_are_configuring_facebook_chat_for_incorrect_configuration_you_will_not_get_messenger_icon_on_your_userend_site', 'Please be carefull when you are configuring Facebook chat. For incorrect configuration you will not get messenger icon on your user-end site.', '2023-04-09 05:45:12', '2023-04-09 05:45:12'),
(9306, 'ar', 'login_into_your_facebook_page', 'Login into your facebook page', '2023-04-09 05:45:12', '2023-04-09 05:45:12'),
(9307, 'ar', 'find_the_about_option_of_your_facebook_page', 'Find the About option of your facebook page', '2023-04-09 05:45:12', '2023-04-09 05:45:12'),
(9308, 'ar', 'at_the_very_bottom_you_can_find_the_facebook_page_id', 'At the very bottom, you can find the \\“Facebook Page ID\\”', '2023-04-09 05:45:12', '2023-04-09 05:45:12'),
(9309, 'ar', 'zone_has_been_updated_successfully', 'Zone has been updated successfully', '2023-04-09 05:45:12', '2023-04-09 05:45:12'),
(9310, 'ar', 'no_city', 'لايوجد مدينة', '2023-04-09 05:45:12', '2023-04-09 05:45:12'),
(9311, 'ar', 'staff_has_been_updated_successfully', 'تم تحديث الموظفين بنجاح', '2023-04-09 05:45:12', '2023-04-09 05:45:12'),
(9312, 'ar', 'new_role_has_been_added_successfully', 'تمت إضافة الدور الوظيفي الجديد بنجاح', '2023-04-09 05:45:12', '2023-04-09 05:45:12'),
(9313, 'ar', 'language_has_been_inserted_successfully', 'تم إدخال اللغة بنجاح', '2023-04-09 05:45:12', '2023-04-09 05:45:12'),
(9314, 'ar', 'language_information', 'معلومات اللغة', '2023-04-09 05:45:12', '2023-04-09 05:45:12'),
(9315, 'ar', 'lang_code', 'Lang Code', '2023-04-09 05:45:12', '2023-04-09 05:45:12'),
(9316, 'ar', 'language_has_been_deleted_successfully', 'تم حذف اللغة بنجاح', '2023-04-09 05:45:12', '2023-04-09 05:45:12'),
(9317, 'ar', 'translations_updated_for_', 'تم تحديث الترجمات لـ', '2023-04-09 05:45:12', '2023-04-09 05:45:12'),
(9318, 'ar', 'type_key__enter', 'Type key & Enter', '2023-04-09 05:45:12', '2023-04-09 05:45:12'),
(9319, 'ar', 'key', 'Key', '2023-04-09 05:45:12', '2023-04-09 05:45:12'),
(9320, 'ar', 'value', 'قيمة', '2023-04-09 05:45:12', '2023-04-09 05:45:12'),
(9321, 'ar', 'copy_translations', 'نسخ الترجمة', '2023-04-09 05:45:12', '2023-04-09 05:45:12'),
(9322, 'ar', 'rtl_status_updated_successfully', 'تم تحديث حالة RTL بنجاح', '2023-04-09 05:45:12', '2023-04-09 05:45:12'),
(9323, 'ar', 'brand_has_been_inserted_successfully', 'تم إدراج العلامة التجارية بنجاح', '2023-04-09 05:45:12', '2023-04-09 05:45:12'),
(9324, 'ar', 'product_has_been_duplicated_successfully', 'تم تكرار المنتج بنجاح', '2023-04-09 05:45:12', '2023-04-09 05:45:12'),
(9325, 'ar', 'no_brand', 'لايوجد علامة تجارية', '2023-04-09 05:45:12', '2023-04-09 05:45:12'),
(9326, 'ar', 'edit_your_cart_base_coupon', 'تحرير قسيمة سلة التسوق الخاصة بك', '2023-04-09 05:45:12', '2023-04-09 05:45:12'),
(9327, 'ar', 'coupon_code_applied_successfully', 'تم تطبيق رمز القسيمة بنجاح', '2023-04-09 05:45:12', '2023-04-09 05:45:12'),
(9328, 'ar', 'coupon_information_update', 'تحديث معلومات القسيمة', '2023-04-09 05:45:12', '2023-04-09 05:45:12'),
(9329, 'ar', 'delivery_timing', 'توقيت التسليم', '2023-04-09 05:45:12', '2023-04-09 05:45:12'),
(9330, 'ar', 'force_clear_cache', 'فرض مسح ذاكرة التخزين المؤقت', '2023-04-09 05:45:12', '2023-04-09 05:45:12'),
(9331, 'ar', 'cache_settings', 'إعدادات ذاكرة التخزين المؤقت', '2023-04-09 05:45:12', '2023-04-09 05:45:12'),
(9332, 'ar', 'current_cache_version', 'نسخة ذاكرة التخزين المؤقت الحالية', '2023-04-09 05:45:12', '2023-04-09 05:45:12'),
(9333, 'ar', 'sales_stat', 'إحصائيات المبيعات', '2023-04-09 05:45:12', '2023-04-09 05:45:12'),
(9334, 'ar', 'add_your_cart_base_coupon', 'أضف قسيمة سلة التسوق الخاصة بك', '2023-04-09 05:45:13', '2023-04-09 05:45:13'),
(9335, 'ar', 'minimum_shopping', 'الحد الأدنى من التسوق', '2023-04-09 05:45:13', '2023-04-09 05:45:13'),
(9336, 'ar', 'maximum_discount_amount', 'الحد الأقصى لمبلغ الخصم', '2023-04-09 05:45:13', '2023-04-09 05:45:13'),
(9337, 'ar', 'add_your_product_base_coupon', 'أضف قسيمة قاعدة المنتج الخاصة بك', '2023-04-09 05:45:13', '2023-04-09 05:45:13'),
(9338, 'ar', 'coupon_code', 'رمز القسيمة', '2023-04-09 05:45:13', '2023-04-09 05:45:13'),
(9339, 'ar', 'coupon_information_adding', 'إضافة معلومات القسيمة', '2023-04-09 05:45:13', '2023-04-09 05:45:13'),
(9340, 'ar', 'coupon_type', 'نوع القسيمة', '2023-04-09 05:45:13', '2023-04-09 05:45:13'),
(9341, 'ar', 'select_one', 'حدد واحد', '2023-04-09 05:45:13', '2023-04-09 05:45:13'),
(9342, 'ar', 'for_products', 'للمنتجات', '2023-04-09 05:45:13', '2023-04-09 05:45:13'),
(9343, 'ar', 'for_total_orders', 'لإجمالي الطلبات', '2023-04-09 05:45:13', '2023-04-09 05:45:13'),
(9344, 'ar', 'all_coupons', 'جميع القسائم', '2023-04-09 05:45:13', '2023-04-09 05:45:13'),
(9345, 'ar', 'coupon_information', 'معلومات القسيمة', '2023-04-09 05:45:13', '2023-04-09 05:45:13'),
(9346, 'ar', 'cart_base', 'قاعدة سلة التسوق', '2023-04-09 05:45:13', '2023-04-09 05:45:13'),
(9347, 'en', 'no_customer_information_selected', 'No customer information selected.', '2023-04-09 05:49:26', '2023-04-09 05:49:26'),
(9348, 'en', 'please_add_shipping_information', 'Please Add Shipping Information.', '2023-04-09 05:49:31', '2023-04-09 05:49:31'),
(9349, 'ar', 'product_base', 'قاعدة المنتج', '2023-04-09 05:59:07', '2023-04-09 05:59:07'),
(9350, 'ar', 'all_subscribers', 'كل المشتركين', '2023-04-09 05:59:07', '2023-04-09 05:59:07'),
(9351, 'ar', 'offer_information', 'معلومات العروض', '2023-04-09 05:59:07', '2023-04-09 05:59:07'),
(9352, 'ar', 'choose_products', 'اختر المنتجات', '2023-04-09 05:59:07', '2023-04-09 05:59:07'),
(9353, 'ar', 'if_any_product_has_discount_or_exists_in_another_offer_that_discount_will_be_replaced_by_this_discount__time_limit', 'إذا كان لدى أي منتج خصم أو كان موجودًا في عرض آخر ، فسيتم استبدال هذا الخصم بهذا الخصم والحد الزمني.', '2023-04-09 05:59:07', '2023-04-09 05:59:07'),
(9354, 'ar', 'invoice_generated', 'تم إنشاء الفاتورة.', '2023-04-09 05:59:07', '2023-04-09 05:59:07'),
(9355, 'ar', 'total_tax', 'مجموع الضريبة', '2023-04-09 05:59:07', '2023-04-09 05:59:07'),
(9356, 'ar', 'shipping_cost', 'تكلفة الشحن', '2023-04-09 05:59:08', '2023-04-09 05:59:08'),
(9357, 'ar', 'grand_total', 'المجموع الإجمالي', '2023-04-09 05:59:08', '2023-04-09 05:59:08'),
(9358, 'ar', 'invoice', 'فاتورة', '2023-04-09 05:59:08', '2023-04-09 05:59:08'),
(9359, 'ar', 'standard', 'معيار', '2023-04-09 05:59:08', '2023-04-09 05:59:08'),
(9360, 'ar', 'sl', 'S/L', '2023-04-09 05:59:08', '2023-04-09 05:59:08'),
(9361, 'ar', 'all_attributes', 'All Attributes', '2023-04-09 05:59:08', '2023-04-09 05:59:08'),
(9362, 'ar', 'values', 'القيم', '2023-04-09 05:59:08', '2023-04-09 05:59:08'),
(9363, 'ar', 'actions', 'Actions', '2023-04-09 05:59:08', '2023-04-09 05:59:08'),
(9364, 'ar', 'attributes_are_non_deletable_you_can_only_add_or_edit', 'السمات غير قابلة للحذف. يمكنك فقط إضافة أو تعديل.', '2023-04-09 05:59:08', '2023-04-09 05:59:08'),
(9365, 'ar', 'add', 'أضافة', '2023-04-09 05:59:08', '2023-04-09 05:59:08'),
(9366, 'ar', 'category_information', 'معلومات القسم', '2023-04-09 05:59:08', '2023-04-28 09:52:30'),
(9367, 'ar', 'no_parent', 'لا يوجد فئة أصل', '2023-04-09 05:59:08', '2023-04-09 05:59:08'),
(9368, 'ar', 'ordering_number', 'رقم الطلب', '2023-04-09 05:59:08', '2023-04-09 05:59:08'),
(9369, 'ar', 'higher_number_has_high_priority', 'العدد الأكبر له أولوية عالية', '2023-04-09 05:59:08', '2023-04-09 05:59:08'),
(9370, 'ar', '200x300', '200x300', '2023-04-09 05:59:08', '2023-04-09 05:59:08'),
(9371, 'ar', '32x32', '32x32', '2023-04-09 05:59:08', '2023-04-09 05:59:08'),
(9372, 'ar', 'filtering_attributes', 'سمات التصفية', '2023-04-09 05:59:08', '2023-04-09 05:59:08'),
(9373, 'ar', 'add_new_category', 'إضافة قسم جديدة', '2023-04-09 05:59:08', '2023-04-28 09:52:30'),
(9374, 'ar', 'parent_category', 'القسم الرئيسي', '2023-04-09 05:59:08', '2023-04-09 05:59:08'),
(9375, 'ar', 'order_level', 'مستوى الطلب', '2023-04-09 05:59:08', '2023-04-09 05:59:08'),
(9376, 'ar', 'level', 'مستوى', '2023-04-09 05:59:08', '2023-04-09 05:59:08'),
(9377, 'ar', 'icon', 'أيقونة', '2023-04-09 05:59:08', '2023-04-09 05:59:08'),
(9378, 'ar', 'featured', 'متميز', '2023-04-09 05:59:08', '2023-04-09 05:59:08'),
(9379, 'ar', 'featured_categories_updated_successfully', 'تم تحديث الأقسام المميزة بنجاح', '2023-04-09 05:59:08', '2023-04-28 09:50:45'),
(9380, 'ar', 'product_has_been_inserted_successfully', 'تم إدخال المنتج بنجاح', '2023-04-09 05:59:08', '2023-04-09 05:59:08'),
(9381, 'ar', 'upload_product', 'تحميل المنتج', '2023-04-09 05:59:08', '2023-04-09 05:59:08'),
(9382, 'ar', 'default_language', 'اللغة الافتراضية', '2023-04-09 05:59:08', '2023-04-09 05:59:08'),
(9383, 'ar', 'add_new_language', 'Add New Language', '2023-04-09 05:59:08', '2023-04-09 05:59:08'),
(9384, 'ar', 'language', 'أضف لغة جديدة', '2023-04-09 05:59:08', '2023-04-09 05:59:08'),
(9385, 'ar', 'rtl', 'RTL', '2023-04-09 05:59:08', '2023-04-09 05:59:08'),
(9386, 'ar', 'translation', 'الترجمة', '2023-04-09 05:59:08', '2023-04-09 05:59:08'),
(9387, 'ar', 'currency_status_updated_successfully', 'تم تحديث حالة العملة بنجاح', '2023-04-09 05:59:08', '2023-04-09 05:59:08'),
(9388, 'ar', 'system_default_currency', 'عملة النظام الافتراضية', '2023-04-09 05:59:08', '2023-04-09 05:59:08'),
(9389, 'ar', 'set_currency_formats', 'تعيين تنسيقات العملات', '2023-04-09 05:59:08', '2023-04-09 05:59:08'),
(9390, 'ar', 'symbol_format', 'تنسيق الرمز', '2023-04-09 05:59:08', '2023-04-09 05:59:08'),
(9391, 'ar', 'decimal_separator', 'الفاصل العشري', '2023-04-09 05:59:08', '2023-04-09 05:59:08'),
(9392, 'ar', 'no_of_decimals', 'عدد الكسور العشرية', '2023-04-09 05:59:08', '2023-04-09 05:59:08'),
(9393, 'ar', 'all_currencies', 'جميع العملات', '2023-04-09 05:59:08', '2023-04-09 05:59:08'),
(9394, 'ar', 'add_new_currency', 'أضف عملة جديدة', '2023-04-09 05:59:08', '2023-04-09 05:59:08'),
(9395, 'ar', 'currency_name', 'اسم العملة', '2023-04-09 05:59:08', '2023-04-09 05:59:08'),
(9396, 'ar', 'currency_symbol', 'رمز العملة', '2023-04-09 05:59:08', '2023-04-09 05:59:08'),
(9397, 'ar', 'currency_code', 'رمز العملة', '2023-04-09 06:00:51', '2023-04-09 06:00:51'),
(9398, 'ar', 'exchange_rate', 'سعر الصرف', '2023-04-09 06:00:51', '2023-04-09 06:00:51'),
(9399, 'ar', 'sandbox_mode', 'وضع الحماية', '2023-04-09 06:00:51', '2023-04-09 06:00:51'),
(9400, 'ar', 'cash_payment_activation', 'تفعيل الدفع النقدي', '2023-04-09 06:00:51', '2023-04-09 06:00:51'),
(9401, 'ar', 'paypal_credential', 'اعتماد Paypal', '2023-04-09 06:00:51', '2023-04-09 06:00:51'),
(9402, 'ar', 'paypal_client_id', 'Paypal Client Id', '2023-04-09 06:00:51', '2023-04-09 06:00:51'),
(9403, 'ar', 'paypal_client_secret', 'Paypal Client Secret', '2023-04-09 06:00:51', '2023-04-09 06:00:51'),
(9404, 'ar', 'paypal_sandbox_mode', 'Paypal Sandbox Mode', '2023-04-09 06:00:51', '2023-04-09 06:00:51'),
(9405, 'ar', 'sslcommerz_credential', 'Sslcommerz Credential', '2023-04-09 06:00:51', '2023-04-09 06:00:51'),
(9406, 'ar', 'sslcz_store_id', 'Sslcz Store Id', '2023-04-09 06:00:51', '2023-04-09 06:00:51'),
(9407, 'ar', 'sslcz_store_password', 'Sslcz store password', '2023-04-09 06:00:52', '2023-04-09 06:00:52'),
(9408, 'ar', 'sslcommerz_sandbox_mode', 'Sslcommerz Sandbox Mode', '2023-04-09 06:00:52', '2023-04-09 06:00:52'),
(9409, 'ar', 'stripe_credential', 'Stripe Credential', '2023-04-09 06:00:52', '2023-04-09 06:00:52'),
(9410, 'ar', 'stripe_key', 'Stripe Key', '2023-04-09 06:00:52', '2023-04-09 06:00:52'),
(9411, 'ar', 'stripe_secret', 'Stripe Secret', '2023-04-09 06:00:52', '2023-04-09 06:00:52'),
(9412, 'ar', 'razorpay_credential', 'RazorPay Credential', '2023-04-09 06:00:52', '2023-04-09 06:00:52'),
(9413, 'ar', 'razor_key', 'RAZOR KEY', '2023-04-09 06:00:52', '2023-04-09 06:00:52'),
(9414, 'ar', 'razor_secret', 'RAZOR SECRET', '2023-04-09 06:00:52', '2023-04-09 06:00:52'),
(9415, 'ar', 'instamojo_credential', 'Instamojo Credential', '2023-04-09 06:00:52', '2023-04-09 06:00:52'),
(9416, 'ar', 'api_key', 'API KEY', '2023-04-09 06:00:52', '2023-04-09 06:00:52'),
(9417, 'ar', 'im_api_key', 'IM API KEY', '2023-04-09 06:00:52', '2023-04-09 06:00:52'),
(9418, 'ar', 'auth_token', 'AUTH TOKEN', '2023-04-09 06:00:52', '2023-04-09 06:00:52'),
(9419, 'ar', 'im_auth_token', 'IM AUTH TOKEN', '2023-04-09 06:00:52', '2023-04-09 06:00:52'),
(9420, 'ar', 'instamojo_sandbox_mode', 'Instamojo Sandbox Mode', '2023-04-09 06:00:52', '2023-04-09 06:00:52'),
(9421, 'ar', 'paystack_credential', 'PayStack Credential', '2023-04-09 06:00:52', '2023-04-09 06:00:52'),
(9422, 'ar', 'public_key', 'PUBLIC KEY', '2023-04-09 06:00:52', '2023-04-09 06:00:52'),
(9423, 'ar', 'secret_key', 'SECRET KEY', '2023-04-09 06:00:52', '2023-04-09 06:00:52'),
(9424, 'ar', 'merchant_email', 'MERCHANT EMAIL', '2023-04-09 06:00:52', '2023-04-09 06:00:52'),
(9425, 'ar', 'ngenius_credential', 'Ngenius Credential', '2023-04-09 06:00:52', '2023-04-09 06:00:52'),
(9426, 'ar', 'ngenius_outlet_id', 'NGENIUS OUTLET ID', '2023-04-09 06:00:52', '2023-04-09 06:00:52'),
(9427, 'ar', 'ngenius_api_key', 'NGENIUS API KEY', '2023-04-09 06:00:52', '2023-04-09 06:00:52'),
(9428, 'ar', 'ngenius_currency', 'NGENIUS CURRENCY', '2023-04-09 06:00:52', '2023-04-09 06:00:52'),
(9429, 'ar', 'payhere_credential', 'Payhere Credential', '2023-04-09 06:00:52', '2023-04-09 06:00:52'),
(9430, 'ar', 'payhere_merchant_id', 'PAYHERE MERCHANT ID', '2023-04-09 06:00:52', '2023-04-09 06:00:52'),
(9431, 'ar', 'payhere_secret', 'PAYHERE SECRET', '2023-04-09 06:00:52', '2023-04-09 06:00:52'),
(9432, 'ar', 'payhere_currency', 'PAYHERE CURRENCY', '2023-04-09 06:00:52', '2023-04-09 06:00:52');
INSERT INTO `translations` (`id`, `lang`, `lang_key`, `lang_value`, `created_at`, `updated_at`) VALUES
(9433, 'ar', 'payhere_sandbox_mode', 'Payhere Sandbox Mode', '2023-04-09 06:00:52', '2023-04-09 06:00:52'),
(9434, 'ar', 'voguepay_credential', 'VoguePay Credential', '2023-04-09 06:00:52', '2023-04-09 06:00:52'),
(9435, 'ar', 'merchant_id', 'MERCHANT ID', '2023-04-09 06:00:52', '2023-04-09 06:00:52'),
(9436, 'ar', 's3_file_system_credentials', 'S3 File System Credentials', '2023-04-09 06:00:52', '2023-04-09 06:00:52'),
(9437, 'ar', 'aws_access_key_id', 'AWS_ACCESS_KEY_ID', '2023-04-09 06:00:52', '2023-04-09 06:00:52'),
(9438, 'ar', 'aws_secret_access_key', 'AWS_SECRET_ACCESS_KEY', '2023-04-09 06:00:52', '2023-04-09 06:00:52'),
(9439, 'ar', 'aws_default_region', 'AWS_DEFAULT_REGION', '2023-04-09 06:00:53', '2023-04-09 06:00:53'),
(9440, 'ar', 'aws_bucket', 'AWS_BUCKET', '2023-04-09 06:00:53', '2023-04-09 06:00:53'),
(9441, 'ar', 'aws_url', 'AWS_URL', '2023-04-09 06:00:53', '2023-04-09 06:00:53'),
(9442, 'ar', 's3_file_system_activation', 'S3 File System Activation', '2023-04-09 06:00:53', '2023-04-09 06:00:53'),
(9443, 'ar', 'google_client_id', 'Google Client ID', '2023-04-09 06:00:53', '2023-04-09 06:00:53'),
(9444, 'ar', 'client_secret', 'Client Secret', '2023-04-09 06:00:53', '2023-04-09 06:00:53'),
(9445, 'ar', 'google_client_secret', 'Google Client Secret', '2023-04-09 06:00:53', '2023-04-09 06:00:53'),
(9446, 'ar', 'facebook_login_credential', 'Facebook Login Credential', '2023-04-09 06:00:53', '2023-04-09 06:00:53'),
(9447, 'ar', 'app_id', 'App ID', '2023-04-09 06:02:24', '2023-04-09 06:02:24'),
(9448, 'ar', 'facebook_client_id', 'Facebook Client ID', '2023-04-09 06:02:24', '2023-04-09 06:02:24'),
(9449, 'ar', 'app_secret', 'App Secret', '2023-04-09 06:02:24', '2023-04-09 06:02:24'),
(9450, 'ar', 'facebook_client_secret', 'Facebook Client Secret', '2023-04-09 06:02:24', '2023-04-09 06:02:24'),
(9451, 'ar', 'twitter_login_credential', 'Twitter Login Credential', '2023-04-09 06:02:24', '2023-04-09 06:02:24'),
(9452, 'ar', 'twitter_client_id', 'Twitter Client ID', '2023-04-09 06:02:24', '2023-04-09 06:02:24'),
(9453, 'ar', 'twitter_client_secret', 'Twitter Client Secret', '2023-04-09 06:02:24', '2023-04-09 06:02:24'),
(9454, 'ar', 'google_login_credential', 'Google Login Credential', '2023-04-09 06:02:24', '2023-04-09 06:02:24'),
(9455, 'ar', 'activation', 'Activation', '2023-04-09 06:02:25', '2023-04-09 06:02:25'),
(9456, 'ar', 'client_id', 'Client ID', '2023-04-09 06:02:25', '2023-04-09 06:02:25'),
(9457, 'ar', 'product_section_6', 'Product section 6', '2023-04-09 06:02:25', '2023-04-09 06:02:25'),
(9458, 'ar', 'home_bottom_about_text', 'Home bottom about text', '2023-04-09 06:02:25', '2023-04-09 06:02:25'),
(9459, 'ar', 'about_description', 'About description', '2023-04-09 06:02:25', '2023-04-09 06:02:25'),
(9460, 'ar', 'home_page_main_sliders', 'Home Page Main Sliders', '2023-04-09 06:02:25', '2023-04-09 06:02:25'),
(9461, 'ar', '1st_sliders_image__link', '1st Sliders image & link', '2023-04-09 06:02:25', '2023-04-09 06:02:25'),
(9462, 'ar', '2nd_sliders_image__link', '2nd Sliders image & link', '2023-04-09 06:02:25', '2023-04-09 06:02:25'),
(9463, 'ar', '3rd_sliders_image__link', '3rd Sliders image & link', '2023-04-09 06:02:25', '2023-04-09 06:02:25'),
(9464, 'ar', '4th_sliders_image__link', '4th Sliders image & link', '2023-04-09 06:02:25', '2023-04-09 06:02:25'),
(9465, 'ar', 'select_categories', 'حدد الأقسام', '2023-04-09 06:02:25', '2023-04-28 09:49:01'),
(9466, 'ar', 'product_section_1', 'Product section 1', '2023-04-09 06:02:25', '2023-04-09 06:02:25'),
(9467, 'ar', 'section_title', 'Section title', '2023-04-09 06:02:25', '2023-04-09 06:02:25'),
(9468, 'ar', 'select_product', 'حدد المنتج', '2023-04-09 06:02:25', '2023-04-09 06:02:25'),
(9469, 'ar', 'home_banner_section_1', 'Home banner section 1', '2023-04-09 06:02:25', '2023-04-09 06:02:25'),
(9470, 'ar', 'banner_image__link', 'Banner image & link', '2023-04-09 06:02:25', '2023-04-09 06:02:25'),
(9471, 'ar', 'product_section_2', 'Product section 2', '2023-04-09 06:02:25', '2023-04-09 06:02:25'),
(9472, 'ar', 'home_banner_section_2', 'Home banner section 2', '2023-04-09 06:02:25', '2023-04-09 06:02:25'),
(9473, 'ar', 'product_section_3', 'Product section 3', '2023-04-09 06:02:25', '2023-04-09 06:02:25'),
(9474, 'ar', 'home_banner_section_3', 'Home banner section 3', '2023-04-09 06:02:25', '2023-04-09 06:02:25'),
(9475, 'ar', 'product_section_4', 'Product section 4', '2023-04-09 06:02:25', '2023-04-09 06:02:25'),
(9476, 'ar', 'product_section_5', 'Product section 5', '2023-04-09 06:02:25', '2023-04-09 06:02:25'),
(9477, 'ar', 'home_banner_section_4', 'Home banner section 4', '2023-04-09 06:02:25', '2023-04-09 06:02:25'),
(9478, 'ar', 'home_page_settings', 'إعدادات الصفحة الرئيسية', '2023-04-09 06:02:25', '2023-04-09 06:02:25'),
(9479, 'ar', 'social_link_widget_', 'Social Link Widget', '2023-04-09 06:02:25', '2023-04-09 06:02:25'),
(9480, 'ar', 'social_links', 'Social Links', '2023-04-09 06:02:25', '2023-04-09 06:02:25'),
(9481, 'ar', 'website_footer', 'Website Footer', '2023-04-09 06:02:25', '2023-04-09 06:02:25'),
(9482, 'ar', 'footer_widget', 'Footer Widget', '2023-04-09 06:02:25', '2023-04-09 06:02:25'),
(9483, 'ar', 'footer_logo', 'Footer logo', '2023-04-09 06:02:25', '2023-04-09 06:02:25'),
(9484, 'ar', 'link_widget_one', 'Link widget one', '2023-04-09 06:02:25', '2023-04-09 06:02:25'),
(9485, 'ar', 'widget_title', 'Widget title', '2023-04-09 06:02:25', '2023-04-09 06:02:25'),
(9486, 'ar', 'links', 'Links', '2023-04-09 06:02:25', '2023-04-09 06:02:25'),
(9487, 'ar', 'link_widget_two', 'Link widget two', '2023-04-09 06:02:25', '2023-04-09 06:02:25'),
(9488, 'ar', 'contact_info_widget', 'Contact info widget', '2023-04-09 06:02:25', '2023-04-09 06:02:25'),
(9489, 'ar', 'contact_address', 'Contact address', '2023-04-09 06:02:25', '2023-04-09 06:02:25'),
(9490, 'ar', 'contact_email', 'Contact email', '2023-04-09 06:02:25', '2023-04-09 06:02:25'),
(9491, 'ar', 'contact_phone', 'Contact phone', '2023-04-09 06:02:25', '2023-04-09 06:02:25'),
(9492, 'ar', 'mobile_apps_link', 'Mobile apps link', '2023-04-09 06:02:25', '2023-04-09 06:02:25'),
(9493, 'ar', 'footer_bottom', 'Footer Bottom', '2023-04-09 06:02:25', '2023-04-09 06:02:25'),
(9494, 'ar', 'footer_menu', 'Footer menu', '2023-04-09 06:02:25', '2023-04-09 06:02:25'),
(9495, 'ar', 'copyright_widget_', 'Copyright Widget', '2023-04-09 06:02:25', '2023-04-09 06:02:25'),
(9496, 'ar', 'copyright_text', 'Copyright Text', '2023-04-09 06:02:26', '2023-04-09 06:02:26'),
(9497, 'ar', 'website_banners', 'بنرات الموقع', '2023-04-09 06:09:45', '2023-04-09 06:09:45'),
(9498, 'ar', 'login_page_banner__link', 'بنر صفحة تسجيل الدخول والرابط', '2023-04-09 06:09:45', '2023-04-09 06:09:45'),
(9499, 'ar', 'recommended_size', 'الحجم الموصى به', '2023-04-09 06:09:45', '2023-04-09 06:09:45'),
(9500, 'ar', 'registration_page_banner__link', 'بنر صفحة التسجيل والرابط', '2023-04-09 06:09:45', '2023-04-09 06:09:45'),
(9501, 'ar', 'forgot_password_page_banner__link', 'نسيت كلمة المرور لافتة الصفحة والرابط', '2023-04-09 06:09:45', '2023-04-09 06:09:45'),
(9502, 'ar', 'product_listing_page_banner__link', 'لافتة صفحة قائمة المنتج ورابط', '2023-04-09 06:09:45', '2023-04-09 06:09:45'),
(9503, 'ar', 'product_details_page_banner__link', 'تفاصيل المنتج لافتة صفحة ورابط', '2023-04-09 06:09:45', '2023-04-09 06:09:45'),
(9504, 'ar', 'checkout_page_banner__link', 'لافتة صفحة الخروج والرابط', '2023-04-09 06:09:45', '2023-04-09 06:09:45'),
(9505, 'ar', 'customer_dashboard_top_banner__link', 'البنر العلوي للوحة تحكم العملاء و الروابط', '2023-04-09 06:09:45', '2023-04-09 06:09:45'),
(9506, 'ar', 'customer_dashboard_bottom_banner__link', 'البنر السفلي للوحة تحكم العملاء و الروابط', '2023-04-09 06:09:45', '2023-04-09 06:09:45'),
(9507, 'ar', 'website_pages', 'صفحات الموقع', '2023-04-09 06:09:45', '2023-04-09 06:09:45'),
(9508, 'ar', 'all_pages', 'جميع الصفحات', '2023-04-09 06:09:45', '2023-04-09 06:09:45'),
(9509, 'ar', 'add_new_page', 'أضافة صفحة جديدة', '2023-04-09 06:09:45', '2023-04-09 06:09:45'),
(9510, 'ar', 'url', 'URL', '2023-04-09 06:09:45', '2023-04-09 06:09:45'),
(9511, 'ar', 'custom_css__script', 'Custom CSS & Script', '2023-04-09 06:09:45', '2023-04-09 06:09:45'),
(9512, 'ar', 'custom_css_for_website', 'Custom css for website', '2023-04-09 06:09:45', '2023-04-09 06:09:45'),
(9513, 'ar', 'staff_has_been_inserted_successfully', 'تم إدراج الموظفين بنجاح', '2023-04-09 06:09:45', '2023-04-09 06:09:45'),
(9514, 'ar', 'email_already_used', 'البريد الإلكتروني مستخدم بالفعل', '2023-04-09 06:09:45', '2023-04-09 06:09:45'),
(9515, 'ar', 'staff_information', 'معلومات الموظفين', '2023-04-09 06:09:45', '2023-04-09 06:09:45'),
(9516, 'ar', 'add_new_staffs', 'إضافة طاقم عمل جديد', '2023-04-09 06:09:45', '2023-04-09 06:09:45'),
(9517, 'ar', 'messages_of_', 'رسائل', '2023-04-09 06:09:45', '2023-04-09 06:09:45'),
(9518, 'ar', 'your_message', 'رسالتك..', '2023-04-09 06:09:45', '2023-04-09 06:09:45'),
(9519, 'ar', 'your_message_has_been_sent_successfully', 'تم ارسال رسالتك بنجاح.', '2023-04-09 06:09:45', '2023-04-09 06:09:45'),
(9520, 'ar', 'chat_list', 'قائمة الدردشة', '2023-04-09 06:09:45', '2023-04-09 06:09:45'),
(9521, 'ar', 'last_message', 'اخر رسالة', '2023-04-09 06:09:45', '2023-04-09 06:09:45'),
(9522, 'ar', 'show', 'عرض', '2023-04-09 06:09:45', '2023-04-09 06:09:45'),
(9523, 'ar', 'offer_has_been_updated_successfully', 'تم تحديث العرض بنجاح', '2023-04-09 06:09:45', '2023-04-09 06:09:45'),
(9524, 'ar', 'edit_offer_information', 'تحرير معلومات العرض', '2023-04-09 06:09:46', '2023-04-09 06:09:46'),
(9525, 'ar', 'coupon_already_exist_for_this_coupon_code', 'القسيمة موجودة بالفعل لرمز القسيمة هذا', '2023-04-09 06:09:46', '2023-04-09 06:09:46'),
(9526, 'ar', 'coupon_has_been_saved_successfully', 'تم حفظ القسيمة بنجاح', '2023-04-09 06:09:46', '2023-04-09 06:09:46'),
(9527, 'ar', 'flash_deal_has_been_inserted_successfully', 'تم إدراج عرض الفلاش بنجاح', '2023-04-09 06:09:46', '2023-04-09 06:09:46'),
(9528, 'ar', 'discounts', 'خصم', '2023-04-09 06:09:46', '2023-04-09 06:09:46'),
(9529, 'ar', 'discount_type', 'نوع الخصم', '2023-04-09 06:09:46', '2023-04-09 06:09:46'),
(9530, 'ar', 'category_has_been_updated_successfully', 'تم تحديث القسم بنجاح', '2023-04-09 06:09:46', '2023-04-28 09:52:30'),
(9531, 'ar', '200x200', '200x200', '2023-04-09 06:09:46', '2023-04-09 06:09:46'),
(9532, 'ar', 'address_has_been_marked_as_default_shipping_address', 'تم وضع علامة على العنوان كعنوان شحن افتراضي.', '2023-04-09 06:09:46', '2023-04-09 06:09:46'),
(9533, 'ar', 'address_has_been_deleted_successfully', 'تم حذف العنوان بنجاح.', '2023-04-09 06:09:46', '2023-04-09 06:09:46'),
(9534, 'ar', 'address_has_been_added_successfully', 'تمت إضافة العنوان بنجاح.', '2023-04-09 06:09:46', '2023-04-09 06:09:46'),
(9535, 'ar', 'customer_deleted_successfully', 'تم حذف العميل بنجاح', '2023-04-09 06:09:46', '2023-04-09 06:09:46'),
(9536, 'ar', 'all_cities', 'جميع المدن', '2023-04-09 06:09:46', '2023-04-09 06:09:46'),
(9537, 'ar', 'type_city_name__enter', 'اكتب اسم المدينة', '2023-04-09 06:09:46', '2023-04-09 06:09:46'),
(9538, 'ar', 'select_state', 'اختر المنطقة', '2023-04-09 06:09:46', '2023-04-09 06:09:46'),
(9539, 'ar', 'add_new_city', 'إضافة مدينة جديدة', '2023-04-09 06:09:46', '2023-04-09 06:09:46'),
(9540, 'ar', 'all_states', 'جميع المناطق', '2023-04-09 06:09:46', '2023-04-09 06:09:46'),
(9541, 'ar', 'type_state_name', 'اكتب اسم المنطقة', '2023-04-09 06:09:46', '2023-04-09 06:09:46'),
(9542, 'ar', 'action', 'الفعل', '2023-04-09 06:09:46', '2023-04-09 06:09:46'),
(9543, 'ar', 'add_new_state', 'أضف منطقة جديدة', '2023-04-09 06:09:46', '2023-04-09 06:09:46'),
(9544, 'ar', 'type_country_name', 'اكتب اسم الدولة', '2023-04-09 06:09:46', '2023-04-09 06:09:46'),
(9545, 'ar', 'filter', 'الفلتر', '2023-04-09 06:09:46', '2023-04-09 06:09:46'),
(9546, 'ar', 'invalid_email_or_password', 'البريد الإلكتروني أو كلمة السر خاطئة', '2023-04-09 06:09:46', '2023-04-09 06:09:46'),
(9547, 'en', 'useful_Links', 'Useful Links', '2021-10-31 07:41:09', '2023-04-09 09:17:46'),
(9548, 'ar', 'useful_Links', 'روابط مفيدة', '2023-04-09 06:09:46', '2023-04-09 09:17:48'),
(9549, 'en', 'my_account', 'My Account', '2021-10-31 07:41:09', '2023-04-09 09:17:46'),
(9550, 'ar', 'my_account', 'حسابي', '2023-04-09 06:09:46', '2023-04-09 09:17:48'),
(9553, 'en', 'ssss_rrr', 'SR', '2023-04-09 06:09:46', '2023-04-09 16:30:54'),
(9554, 'ar', 'ssss_rrr', 'ريال', '2023-04-09 06:09:46', '2023-04-09 16:31:07'),
(9555, 'ar', 'please_add_shipping_information', NULL, '2023-04-09 16:31:07', '2023-04-09 16:31:07'),
(9556, 'ar', 'no_customer_information_selected', NULL, '2023-04-09 16:31:07', '2023-04-09 16:31:07'),
(9557, 'ar', 'show_language_switcher', NULL, '2023-04-09 16:31:07', '2023-04-09 16:31:07'),
(9558, 'ar', 'manual_payment_information', NULL, '2023-04-09 16:31:07', '2023-04-09 16:31:07'),
(9559, 'ar', 'custom_payment', NULL, '2023-04-09 16:31:07', '2023-04-09 16:31:07'),
(9560, 'ar', 'bank_payment', NULL, '2023-04-09 16:31:07', '2023-04-09 16:31:07'),
(9561, 'ar', 'cheque_payment', NULL, '2023-04-09 16:31:07', '2023-04-09 16:31:07'),
(9562, 'ar', 'checkout_thumbnail', NULL, '2023-04-09 16:31:07', '2023-04-09 16:31:07'),
(9563, 'ar', 'payment_instruction', NULL, '2023-04-09 16:31:07', '2023-04-09 16:31:07'),
(9564, 'ar', 'bank_information', NULL, '2023-04-09 16:31:07', '2023-04-09 16:31:07'),
(9565, 'ar', 'add_more', NULL, '2023-04-09 16:31:07', '2023-04-09 16:31:07'),
(9566, 'ar', 'remove', NULL, '2023-04-09 16:31:07', '2023-04-09 16:31:07'),
(9567, 'ar', 'heading', NULL, '2023-04-09 16:31:07', '2023-04-09 16:31:07'),
(9568, 'ar', 'add_new_payment_method', NULL, '2023-04-09 16:31:07', '2023-04-09 16:31:07'),
(9569, 'ar', 'manual_payment_method', NULL, '2023-04-09 16:31:07', '2023-04-09 16:31:07'),
(9570, 'ar', 'razorpay_secret', NULL, '2023-04-09 16:31:07', '2023-04-09 16:31:07'),
(9571, 'ar', 'flw_encryption_key', NULL, '2023-04-09 16:31:07', '2023-04-09 16:31:07'),
(9572, 'ar', 'merchant_login_id', NULL, '2023-04-09 16:31:07', '2023-04-09 16:31:07'),
(9573, 'ar', 'merchant_transaction_key', NULL, '2023-04-09 16:31:07', '2023-04-09 16:31:07'),
(9574, 'ar', 'authorize_net_sandbox_mode', NULL, '2023-04-09 16:31:07', '2023-04-09 16:31:07'),
(9575, 'ar', 'payfast_credential', NULL, '2023-04-09 16:31:07', '2023-04-09 16:31:07'),
(9576, 'ar', 'payfast_merchant_id', NULL, '2023-04-09 16:31:07', '2023-04-09 16:31:07'),
(9577, 'ar', 'payfast_merchant_key', NULL, '2023-04-09 16:31:07', '2023-04-09 16:31:07'),
(9578, 'ar', 'payfast_sandbox_mode', NULL, '2023-04-09 16:31:07', '2023-04-09 16:31:07'),
(9579, 'ar', 'mercadopago_credential', NULL, '2023-04-09 16:31:07', '2023-04-09 16:31:07'),
(9580, 'ar', 'mercadopago_key', NULL, '2023-04-09 16:31:07', '2023-04-09 16:31:07'),
(9581, 'ar', 'mercadopago_access', NULL, '2023-04-09 16:31:08', '2023-04-09 16:31:08'),
(9582, 'ar', 'mercadopago_currency', NULL, '2023-04-09 16:31:08', '2023-04-09 16:31:08'),
(9583, 'ar', 'iyzico_credential', NULL, '2023-04-09 16:31:08', '2023-04-09 16:31:08'),
(9584, 'ar', 'iyzico_api_key', NULL, '2023-04-09 16:31:08', '2023-04-09 16:31:08'),
(9585, 'ar', 'iyzico_secret_key', NULL, '2023-04-09 16:31:08', '2023-04-09 16:31:08'),
(9586, 'ar', 'iyzico_currency_code', NULL, '2023-04-09 16:31:08', '2023-04-09 16:31:08'),
(9587, 'ar', 'iyzico_sandbox_mode', NULL, '2023-04-09 16:31:08', '2023-04-09 16:31:08'),
(9588, 'ar', 'razorpay_key', NULL, '2023-04-09 16:31:08', '2023-04-09 16:31:08'),
(9589, 'ar', 'tax_info_has_been_updated_successfully', NULL, '2023-04-09 16:31:08', '2023-04-09 16:31:08'),
(9590, 'ar', 'tax_information', NULL, '2023-04-09 16:31:08', '2023-04-09 16:31:08'),
(9591, 'ar', 'edit_tax_information', NULL, '2023-04-09 16:31:08', '2023-04-09 16:31:08'),
(9592, 'ar', 'tax_type', NULL, '2023-04-09 16:31:08', '2023-04-09 16:31:08'),
(9593, 'ar', 'new_tax_info_has_been_added_successfully', NULL, '2023-04-09 16:31:08', '2023-04-09 16:31:08'),
(9594, 'ar', 'the_coupon_is_invalid', NULL, '2023-04-09 16:31:08', '2023-04-09 16:31:08'),
(9595, 'ar', 'attribute_has_been_inserted_successfully', NULL, '2023-04-09 16:31:08', '2023-04-09 16:31:08'),
(9596, 'en', 'order_has_been_placed', 'Order has been placed', '2023-04-09 18:01:14', '2023-04-09 18:01:14'),
(9597, 'en', 'order_updates', 'Order updates', '2023-04-09 20:06:05', '2023-04-09 20:06:05'),
(9598, 'en', 'by', 'by', '2023-04-09 20:06:06', '2023-04-09 20:06:06'),
(9599, 'en', 'accept_refund_request', 'Accept Refund Request.', '2023-04-09 20:06:06', '2023-04-09 20:06:06'),
(9600, 'en', 'select_pay_in_wallet_to_refund_in_the_customer_wallet_and_select_pay_manually_to_refund_customer_manually', 'Select Pay in Wallet to refund in the customer wallet. And select Pay Manually to refund customer manually.', '2023-04-09 20:06:06', '2023-04-09 20:06:06'),
(9601, 'en', 'this_amount_is_without_shipping_cost_if_you_want_to_add_shipping_cost_you_can_change_this_amount', 'This amount is without shipping cost. If you want to add shipping cost you can change this amount.', '2023-04-09 20:06:06', '2023-04-09 20:06:06'),
(9602, 'en', 'pay_manually', 'Pay Manually', '2023-04-09 20:06:06', '2023-04-09 20:06:06'),
(9603, 'en', 'pay_in_wallet', 'Pay in Wallet', '2023-04-09 20:06:06', '2023-04-09 20:06:06'),
(9604, 'en', 'reject_refund_request', 'Reject Refund Request.', '2023-04-09 20:06:06', '2023-04-09 20:06:06'),
(9605, 'en', 'do_you_really_want_to_reject_this_refund_request', 'Do you really want to reject this refund Request?', '2023-04-09 20:06:06', '2023-04-09 20:06:06'),
(9606, 'en', 'reject', 'Reject', '2023-04-09 20:06:06', '2023-04-09 20:06:06'),
(9607, 'en', 'an_email_has_been_sent', 'An email has been sent.', '2023-04-10 01:10:06', '2023-04-10 01:10:06'),
(9608, 'en', 'city_information', 'City Information', '2023-04-10 01:33:47', '2023-04-10 01:33:47'),
(9609, 'en', 'state_information', 'State Information', '2023-04-10 01:34:02', '2023-04-10 01:34:02'),
(9610, 'en', 'edit_state', 'Edit State', '2023-04-10 01:34:02', '2023-04-10 01:34:02'),
(9611, 'en', 'go_to_cart', 'Go to cart', '2023-04-10 01:34:02', '2023-04-10 01:34:02'),
(9612, 'ar', 'go_to_cart', 'اكمال ادفع', '2023-04-10 01:34:02', '2023-04-10 01:34:02'),
(9613, 'en', 'a_verification_code_has_been_sent_to_your_phone', 'A verification code has been sent to your phone.', '2023-04-13 02:16:48', '2023-04-13 02:16:48'),
(9614, 'en', 'order_has_been_cancelled', 'Order has been cancelled', '2023-04-21 03:05:49', '2023-04-21 03:05:49'),
(9615, 'en', 'courier_information_has_been_updated', 'Courier information has been updated.', '2023-04-21 03:35:41', '2023-04-21 03:35:41'),
(9616, 'en', 'password_reset', 'Password Reset', '2023-04-23 23:16:40', '2023-04-23 23:16:40'),
(9617, 'en', 'password_reset', 'Password Reset', '2023-04-23 23:16:40', '2023-04-23 23:16:40'),
(9618, 'en', 'password_reset_code_is', 'Password reset code is', '2023-04-23 23:16:40', '2023-04-23 23:16:40'),
(9619, 'en', 'a_password_reset_code_has_been_sent_to_your_email', 'A password reset code has been sent to your email.', '2023-04-23 23:16:44', '2023-04-23 23:16:44'),
(9620, 'en', 'please_verify_your_account', 'Please verify your account', '2023-04-23 23:17:18', '2023-04-23 23:17:18'),
(9621, 'en', 'please_verify_your_account', 'Please verify your account', '2023-04-23 23:17:18', '2023-04-23 23:17:18'),
(9622, 'en', 'app_key', 'App Key', '2023-04-23 23:17:41', '2023-04-23 23:17:41'),
(9623, 'en', 'twitter_app_key', 'Twitter App Key', '2023-04-23 23:17:42', '2023-04-23 23:17:42'),
(9624, 'en', 'twitter_app_secret', 'Twitter App Secret', '2023-04-23 23:17:42', '2023-04-23 23:17:42'),
(9625, 'en', 'payment_status', 'Payment status', '2021-10-31 07:41:09', '2021-10-31 07:45:41'),
(9626, 'ar', 'payment_status', 'حالة الدفع', '2021-10-31 07:41:09', '2021-10-31 07:41:09'),
(9627, 'ar', 'Al-Dereiyah', 'Al-Dereiyah', '2023-04-24 17:40:58', '2023-04-24 17:40:58'),
(9628, 'ar', 'Al-Dereiyah', 'الدرعية', '2023-04-24 17:40:58', '2023-04-24 17:40:58'),
(9629, 'ar', 'Saudi Arabia', 'السعودية', '2023-04-24 17:52:59', '2023-04-24 17:52:59'),
(9630, 'en', 'Saudi Arabia', 'Saudi ', '2023-04-24 17:52:59', '2023-04-24 17:52:59'),
(9631, 'en', 'id1nameriyadhcountry_id1status1created_at20230424t170107000000zupdated_at20230424t171310000000zdeleted_atnullid2namemakkahcountry_id1status1created_at20230424t170107000000zupdated_at20230424t171310000000zdeleted_atnull', '[{\"id\":1,\"name\":\"Riyadh\",\"country_id\":1,\"status\":1,\"created_at\":\"2023-04-24T17:01:07.000000Z\",\"updated_at\":\"2023-04-24T17:13:10.000000Z\",\"deleted_at\":null},{\"id\":2,\"name\":\"Makkah\",\"country_id\":1,\"status\":1,\"created_at\":\"2023-04-24T17:01:07.000000Z\",\"updated_at\":\"2023-04-24T17:13:10.000000Z\",\"deleted_at\":null}]', '2023-04-24 18:41:51', '2023-04-24 18:41:51'),
(9632, 'en', '_statewherecountry_id1wherestatus_1get_', '{{ State::where(\'country_id\',1)->where(\'status\', 1)->get() }}', '2023-04-24 18:43:42', '2023-04-24 18:43:42'),
(9633, 'en', 'address_has_been_marked_as_default_billing_address', 'Address has been marked as default billing address.', '2023-04-25 01:55:52', '2023-04-25 01:55:52'),
(9634, 'en', 'mada_terminal_id', 'MADA TERMINAL ID', '2023-04-25 06:24:52', '2023-04-25 06:24:52'),
(9635, 'en', 'mada_password', 'MADA_PASSWORD', '2023-04-25 06:24:52', '2023-04-25 06:24:52'),
(9636, 'en', 'mada_merchant_key', 'MADA_MERCHANT_KEY', '2023-04-25 06:24:52', '2023-04-25 06:24:52'),
(9637, 'en', 'mada_mode', 'MADA Mode', '2023-04-25 06:24:52', '2023-04-25 06:24:52'),
(9638, 'en', 'mada_test_mode', 'MADA Test Mode', '2023-04-25 06:26:18', '2023-04-25 06:26:18'),
(9639, 'en', 'no_user_found_with_this_information', 'No user found with this information.', '2023-04-27 06:21:21', '2023-04-27 06:21:21'),
(9640, 'en', 'category_has_been_deleted_successfully', 'Category has been deleted successfully', '2023-05-04 00:40:51', '2023-05-04 00:40:51'),
(9641, 'en', 'complete_the_payment', 'Complete the payment', '2023-04-27 06:21:21', '2023-04-27 06:21:21'),
(9642, 'ar', 'complete_the_payment', 'اكمال الدفع', '2023-05-04 00:40:51', '2023-05-04 00:40:51'),
(9643, 'en', 'product_has_been_removed', 'Product has been removed', '2023-05-06 01:25:56', '2023-05-06 01:25:56'),
(9644, 'ar', 'product_has_been_removed', 'تمت إزالة المنتج', '2023-05-06 12:58:25', '2023-05-06 12:58:25'),
(9645, 'ar', 'category_has_been_deleted_successfully', 'تم حذف الفئة بنجاح', '2023-05-06 12:58:25', '2023-05-06 12:58:25'),
(9646, 'ar', 'no_user_found_with_this_information', 'لم يتم العثور على مستخدم بهذه المعلومات.', '2023-05-06 12:58:25', '2023-05-06 12:58:25'),
(9647, 'ar', 'mada_test_mode', NULL, '2023-05-06 12:58:25', '2023-05-06 12:58:25'),
(9648, 'ar', 'mada_terminal_id', NULL, '2023-05-06 12:58:25', '2023-05-06 12:58:25'),
(9649, 'ar', 'mada_password', NULL, '2023-05-06 12:58:25', '2023-05-06 12:58:25'),
(9650, 'ar', 'mada_merchant_key', NULL, '2023-05-06 12:58:25', '2023-05-06 12:58:25'),
(9651, 'ar', 'mada_mode', NULL, '2023-05-06 12:58:25', '2023-05-06 12:58:25'),
(9652, 'ar', 'address_has_been_marked_as_default_billing_address', 'تم وضع علامة على العنوان كعنوان إرسال فواتير افتراضي.', '2023-05-06 12:58:25', '2023-05-06 12:58:25'),
(9653, 'ar', '_statewherecountry_id1wherestatus_1get_', NULL, '2023-05-06 12:58:25', '2023-05-06 12:58:25'),
(9654, 'ar', 'id1nameriyadhcountry_id1status1created_at20230424t170107000000zupdated_at20230424t171310000000zdeleted_atnullid2namemakkahcountry_id1status1created_at20230424t170107000000zupdated_at20230424t171310000000zdeleted_atnull', NULL, '2023-05-06 12:58:26', '2023-05-06 12:58:26'),
(9655, 'ar', 'twitter_app_key', NULL, '2023-05-06 12:58:26', '2023-05-06 12:58:26'),
(9656, 'ar', 'twitter_app_secret', NULL, '2023-05-06 12:58:26', '2023-05-06 12:58:26'),
(9657, 'ar', 'app_key', NULL, '2023-05-06 12:58:26', '2023-05-06 12:58:26'),
(9658, 'ar', 'please_verify_your_account', 'يرجى التحقق من حسابك', '2023-05-06 12:58:26', '2023-05-06 12:58:26'),
(9659, 'ar', 'a_password_reset_code_has_been_sent_to_your_email', 'تم إرسال رمز إعادة تعيين كلمة المرور إلى بريدك الإلكتروني.', '2023-05-06 12:58:26', '2023-05-06 12:58:26'),
(9660, 'ar', 'password_reset', NULL, '2023-05-06 12:58:26', '2023-05-06 12:58:26'),
(9661, 'ar', 'password_reset_code_is', NULL, '2023-05-06 12:58:26', '2023-05-06 12:58:26'),
(9662, 'ar', 'courier_information_has_been_updated', NULL, '2023-05-06 12:58:26', '2023-05-06 12:58:26'),
(9663, 'ar', 'order_has_been_cancelled', NULL, '2023-05-06 12:58:26', '2023-05-06 12:58:26'),
(9664, 'ar', 'a_verification_code_has_been_sent_to_your_phone', NULL, '2023-05-06 12:58:26', '2023-05-06 12:58:26'),
(9665, 'ar', 'state_information', NULL, '2023-05-06 12:58:26', '2023-05-06 12:58:26'),
(9666, 'ar', 'edit_state', NULL, '2023-05-06 12:58:26', '2023-05-06 12:58:26'),
(9667, 'ar', 'city_information', NULL, '2023-05-06 12:58:26', '2023-05-06 12:58:26'),
(9668, 'ar', 'an_email_has_been_sent', NULL, '2023-05-06 12:58:26', '2023-05-06 12:58:26'),
(9669, 'ar', 'by', NULL, '2023-05-06 12:58:26', '2023-05-06 12:58:26'),
(9670, 'ar', 'accept_refund_request', NULL, '2023-05-06 12:58:26', '2023-05-06 12:58:26'),
(9671, 'ar', 'select_pay_in_wallet_to_refund_in_the_customer_wallet_and_select_pay_manually_to_refund_customer_manually', NULL, '2023-05-06 12:58:26', '2023-05-06 12:58:26'),
(9672, 'ar', 'this_amount_is_without_shipping_cost_if_you_want_to_add_shipping_cost_you_can_change_this_amount', NULL, '2023-05-06 12:58:26', '2023-05-06 12:58:26'),
(9673, 'ar', 'pay_manually', NULL, '2023-05-06 12:58:26', '2023-05-06 12:58:26'),
(9674, 'ar', 'pay_in_wallet', NULL, '2023-05-06 12:58:26', '2023-05-06 12:58:26'),
(9675, 'ar', 'reject_refund_request', NULL, '2023-05-06 12:58:26', '2023-05-06 12:58:26'),
(9676, 'ar', 'do_you_really_want_to_reject_this_refund_request', NULL, '2023-05-06 12:58:26', '2023-05-06 12:58:26'),
(9677, 'ar', 'reject', NULL, '2023-05-06 12:58:26', '2023-05-06 12:58:26'),
(9678, 'ar', 'order_updates', NULL, '2023-05-06 12:58:26', '2023-05-06 12:58:26'),
(9679, 'ar', 'order_has_been_placed', NULL, '2023-05-06 12:58:26', '2023-05-06 12:58:26');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` int(11) NOT NULL,
  `file_original_name` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `extension` varchar(10) DEFAULT NULL,
  `type` varchar(15) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `file_original_name`, `file_name`, `user_id`, `file_size`, `extension`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'WhatsApp Image 2022 personal', 'uploads/all/qwAfMTqFCK4kyDWXiF5Mf7Eozk53cUEgoEWjM2ZW.jpg', 1, 55361, 'jpeg', 'image', '2023-04-06 07:39:12', '2023-04-06 07:39:12', NULL),
(2, '0A613BA5-79AA-434B-8546-1EBF5775791E', 'uploads/all/DOsWe9IcxyunMSHck30slbZtAzjkZ2zLxYww7fnW.jpg', 1, 3027475, 'jpeg', 'image', '2023-04-06 07:40:28', '2023-04-06 07:40:28', NULL),
(3, 'yl849lKvEo8zRgVkAO8EYQnvdYyzaQzmuGu1wO1C', 'uploads/all/dz6c2E3Ae9LQHyf4jauktUZRsiwfck1emnsD3wKa.webp', 1, 415120, 'png', 'image', '2023-04-06 07:44:07', '2023-04-06 07:44:07', NULL),
(4, 'ahhhh', 'uploads/all/Dc0SoUmde3ajfEQk9EJOq6b76hOn54Bjmdkmkeop.jpg', 1, 93771, 'jpg', 'image', '2023-04-06 07:44:56', '2023-04-06 07:44:56', NULL),
(5, '71382107-the-shop-license', 'uploads/all/SH30c7n4lxGwz1Tzw52VX83fwGYtD1ckqFcKArOX.txt', 1, 817, 'txt', 'document', '2023-04-08 08:34:19', '2023-04-08 08:34:19', NULL),
(6, '1000_F_304816043_3O84zYpTGtvCx8Iu0mbdOm5s2ZJNuZ5o', 'uploads/all/kCQoD42GRTJi2EdNHhBn2231GHz64fBzzw9R0UK0.jpg', 1, 298039, 'jpg', 'image', '2023-04-08 08:35:01', '2023-04-08 08:35:01', NULL),
(7, '1', 'uploads/all/Q7zRiTYzachhwSnap7ZbdKFaeu6qf1N51Lok1hk4.jpg', 1, 42342, 'jpeg', 'image', '2023-04-08 08:59:31', '2023-04-08 08:59:31', NULL),
(8, '3', 'uploads/all/8WKM63sMybKLhgpuXs6XxTFZ6MxG5mVYPjC5jiND.jpg', 1, 25697, 'jpg', 'image', '2023-04-08 09:15:44', '2023-04-08 09:15:44', NULL),
(9, '4', 'uploads/all/X0HbC1TkjLFleEzxlX8ONlOhCEIP3C97aPeN2Hz4.jpg', 1, 5281, 'jpg', 'image', '2023-04-08 09:42:45', '2023-04-08 09:42:45', NULL),
(10, 'WhatsApp Unknown 2023-04-08 at 10.12.18 PM', 'uploads/all/nFP0C7RtCuy3v2JK34Wfedd3MvjdKCJHmdic0hDX.zip', 1, 285633, 'zip', 'archive', '2023-04-09 02:13:38', '2023-04-09 02:13:38', NULL),
(11, 'WhatsApp Unknown 2023-04-08 at 10.12.18 PM', 'uploads/all/7v6otsJqfwn9KjCeCZBRJgV4WsCEnE9NbrmGjH3n.zip', 1, 285633, 'zip', 'archive', '2023-04-09 02:14:01', '2023-04-09 02:14:01', NULL),
(12, 'WhatsApp Image 2023-04-08 at 10.12.04 PM (3)', 'uploads/all/hLZ1YL2bYzKKapsVf7Og7nuvwXO3kdcgpaF60YQ2.jpg', 1, 84182, 'jpeg', 'image', '2023-04-09 02:14:46', '2023-04-09 02:14:46', NULL),
(13, 'WhatsApp Image 2023-04-08 at 10.12.04 PM (1)', 'uploads/all/HtaDIv2FmtWgqSxnmfHuQ7xni2JV0JsJEB8nBAYB.jpg', 1, 75613, 'jpeg', 'image', '2023-04-09 02:14:55', '2023-04-09 02:14:55', NULL),
(14, 'WhatsApp Image 2023-04-08 at 10.12.04 PM (2)', 'uploads/all/G21qQN62F4J4aQZ00b2SCWtIRjVu5Bq2JJLdNzoW.jpg', 1, 43578, 'jpeg', 'image', '2023-04-09 02:15:05', '2023-04-09 02:15:05', NULL),
(15, 'WhatsApp Image 2023-04-08 at 10.12.04 PM', 'uploads/all/k08cOv29BoBlQRqpoSDHTOuGJLB1ZTil2bA3yorO.jpg', 1, 81550, 'jpeg', 'image', '2023-04-09 02:15:13', '2023-04-09 02:15:13', NULL),
(16, 'overdoing-skincare-today-main-190509', 'uploads/all/F5ufnvoPEbRMWOVhyn9ALSADg2AyOJqLuz8UoXj7.jpg', 1, 300502, 'jpg', 'image', '2023-04-09 06:20:57', '2023-04-09 06:20:57', NULL),
(17, 'icon', 'uploads/all/CR6qWFjlDLwdVtxL15yybuw1RfPuofFotVcF6Dgf.png', 1, 7195, 'png', 'image', '2023-04-09 19:05:52', '2023-04-09 19:05:52', NULL),
(18, 'thumbnail_Korunfula Logo - Copy-11', 'uploads/all/eTM7Z4Gashfxnwuz6BoHWLp8vTuFR1llgPuNM0ii.png', 1, 38205, 'png', 'image', '2023-04-09 19:07:23', '2023-04-09 19:07:23', NULL),
(19, 'logo copy', 'uploads/all/AxCA6QIlXZIGscVhMHxUc8MpHWO6SDZt1VfwT89H.png', 1, 49692, 'png', 'image', '2023-04-09 19:17:58', '2023-04-09 19:17:58', NULL),
(20, 'logo1 copy', 'uploads/all/nG5atoFcAVwlMGduhyKoIn7w72SfyfdK9pMs46gX.jpg', 1, 44628, 'jpg', 'image', '2023-04-18 23:21:14', '2023-04-18 23:21:14', NULL),
(21, 'zoher', 'uploads/all/Nz8L2NHop3YtfPsvdbXolLgWjS7mHK0NCTEdFZYE.png', 1, 50190, 'png', 'image', '2023-04-18 23:26:12', '2023-04-18 23:26:12', NULL),
(22, '1kX09FGQTQIDp2hb2WWEI0Er4vYnDHwxI1jkkajU', 'uploads/all/iKt3OFvBUzaEBnXUUOqwConPY0qqmdI2TAJtQc8I.png', 1, 92277, 'png', 'image', '2023-04-20 22:43:37', '2023-04-20 22:43:37', NULL),
(23, 'شاي الشتاء', 'uploads/all/A2OyyaZLFBrU7Fi0i7jBMnpw7EGP62vDw5TaMzkF.jpg', 1, 111805, 'jpg', 'image', '2023-04-26 03:17:27', '2023-04-26 03:17:27', NULL),
(24, 'LOGO', 'uploads/all/LOAA4aiy1vKrB4D1QDNy6O6nsvVw3LUnHzuWoTXa.jpg', 1, 23588, 'jpeg', 'image', '2023-04-27 11:59:53', '2023-04-27 11:59:53', NULL),
(25, 'WhatsApp Image 2023-04-14 at 7.19.30 PM (1)', 'uploads/all/rxYBebbDPurCv4pUKJKGmqZEjoAUwhfW9nSEtIt0.jpg', 1, 75535, 'jpeg', 'image', '2023-04-28 06:08:24', '2023-04-28 06:08:24', NULL),
(26, 'WhatsApp Image 2023-04-14 at 7.19.29 PM', 'uploads/all/KycyLCj4ulQISSJcTztZwhwl6ZUqrYeexEOKC5TN.jpg', 1, 83605, 'jpeg', 'image', '2023-04-28 06:08:26', '2023-04-28 06:08:26', NULL),
(27, 'WhatsApp Image 2023-04-14 at 7.19.30 PM', 'uploads/all/TwU0aInyQHWXLQemELxbzng4zvT8hdv0LO5Jelfm.jpg', 1, 56735, 'jpeg', 'image', '2023-04-28 06:08:26', '2023-04-28 06:08:26', NULL),
(28, 'WhatsApp Image 2023-04-14 at 7.19.29 PM (1)', 'uploads/all/rmeKeXayJ8CxnND3vYabyVS7M3kbsQFNlrjGNPgA.jpg', 1, 129501, 'jpeg', 'image', '2023-04-28 06:08:26', '2023-04-28 06:08:26', NULL),
(29, 'WhatsApp Image 2023-04-14 at 7.19.29 PM (4)', 'uploads/all/7HfoJZbQuSJQP7Ooi94IT4r4HNN4luRbd4GUNoVn.jpg', 1, 40257, 'jpeg', 'image', '2023-04-28 06:08:27', '2023-04-28 06:08:27', NULL),
(30, 'WhatsApp Image 2023-04-14 at 7.19.29 PM (11)', 'uploads/all/dJORFignmlQIXOiGP1bvmsOcqdLadTGolc9c7EEX.jpg', 1, 120387, 'jpeg', 'image', '2023-04-28 06:08:27', '2023-04-28 06:08:27', NULL),
(31, 'WhatsApp Image 2023-04-14 at 7.19.29 PM (8)', 'uploads/all/aHi5wZm2Slblg9hT6nTBhiADagp1Eh7hNcaIwAsx.jpg', 1, 59188, 'jpeg', 'image', '2023-04-28 06:08:27', '2023-04-28 06:08:27', NULL),
(32, 'WhatsApp Image 2023-04-14 at 7.19.29 PM (10)', 'uploads/all/LR20LMM2vUF8EBcV8pE4c03XVE33LiQkU6S2Etj2.jpg', 1, 54037, 'jpeg', 'image', '2023-04-28 06:08:27', '2023-04-28 06:08:27', NULL),
(33, 'WhatsApp Image 2023-04-14 at 7.19.29 PM (6)', 'uploads/all/emhGFFRtjwKa4lNF6hiQPyEm3LVcWhTuxdFm7Qah.jpg', 1, 59675, 'jpeg', 'image', '2023-04-28 06:08:27', '2023-04-28 06:08:27', NULL),
(34, 'WhatsApp Image 2023-04-14 at 7.19.29 PM (9)', 'uploads/all/ZIlBtflyMAELLcVHrCtInu0r0nVapeQY8AMSxi8p.jpg', 1, 48938, 'jpeg', 'image', '2023-04-28 06:08:27', '2023-04-28 06:08:27', NULL),
(35, 'WhatsApp Image 2023-04-14 at 7.19.29 PM (7)', 'uploads/all/T6HBm02Nl6jGm9ooDyPvoxBZ8pmt7WZgakEmpITy.jpg', 1, 56945, 'jpeg', 'image', '2023-04-28 06:08:27', '2023-04-28 06:08:27', NULL),
(36, 'WhatsApp Image 2023-04-14 at 7.19.29 PM (3)', 'uploads/all/vGbYgWZS9n8wlPuUJ56NwXCnAhtoTaMh2BnypKCG.jpg', 1, 111805, 'jpeg', 'image', '2023-04-28 06:08:27', '2023-04-28 06:08:27', NULL),
(37, 'WhatsApp Image 2023-04-14 at 7.19.29 PM (5)', 'uploads/all/c6hMpLEjj9JA0JvkIkzcEVjr2MpvxD3E4D2Bh361.jpg', 1, 51817, 'jpeg', 'image', '2023-04-28 06:08:27', '2023-04-28 06:08:27', NULL),
(38, 'WhatsApp Image 2023-04-14 at 7.19.29 PM (2)', 'uploads/all/eZNRjWIxFinrNtL1nGotP9ka4GkdFwXKhD3sF1NI.jpg', 1, 94101, 'jpeg', 'image', '2023-04-28 06:08:27', '2023-04-28 06:08:27', NULL),
(39, 'WhatsApp Image 2023-04-14 at 7.19.29 PM (15)', 'uploads/all/G905YXisZR5hJskKINHeXJRzp09oJGy8uBig9s0S.jpg', 1, 83605, 'jpeg', 'image', '2023-04-28 06:08:36', '2023-04-28 06:08:36', NULL),
(40, 'WhatsApp Image 2023-04-28 at 2.21.22 AM', 'uploads/all/tJXvBpVLDui3UcrIG60tdEgNhFk8NHa4bkAtaAwa.jpg', 1, 141219, 'jpeg', 'image', '2023-04-28 06:22:18', '2023-04-28 06:22:18', NULL),
(41, 'WhatsApp Image 2023-04-28 at 2.21.22 AM', 'uploads/all/5nFvaK6MGXfSr8ANMzb9MYtWI2ShCkGOirfxzQRj.jpg', 1, 141219, 'jpeg', 'image', '2023-04-28 06:23:22', '2023-04-28 06:23:22', NULL),
(42, 'WhatsApp Image 2023-04-28 at 2.23.09 AM (1)', 'uploads/all/jzklZsgeAJzRipQNEQM6tVUYJ05v9GeFpCTiz9TR.jpg', 1, 141658, 'jpeg', 'image', '2023-04-28 06:24:41', '2023-04-28 06:24:41', NULL),
(43, 'WhatsApp Image 2023-04-28 at 2.31.23 AM', 'uploads/all/532bkwxvoHSPFsrjpRSTkBYM5amUkhdpLTnS8wxG.jpg', 1, 87051, 'jpeg', 'image', '2023-04-28 06:31:43', '2023-04-28 06:31:43', NULL),
(44, '‏‏لقطة الشاشة (16)_edited', 'uploads/all/1CZNeAXQLYd4cgnbzIHicYivgaiixH8KBXPNYQyN.jpg', 1, 50810, 'jpg', 'image', '2023-04-28 06:33:16', '2023-04-28 06:33:16', NULL),
(45, '‏‏لقطة الشاشة (14)_edited', 'uploads/all/c1O5uAtImouyVX7bZMoW1kmmh68oiONRryQjy3YD.jpg', 1, 119600, 'jpg', 'image', '2023-04-28 06:34:09', '2023-04-28 06:34:09', NULL),
(46, '‏‏لقطة الشاشة (15)_edited', 'uploads/all/KIKtmoauXjlJrxKSCvDKlWY0cYNmHwtMQFLMCfN0.jpg', 1, 96941, 'jpg', 'image', '2023-04-28 06:35:19', '2023-04-28 06:35:19', NULL),
(47, 'WhatsApp Image 2023-04-28 at 4.39.45 AM', 'uploads/all/1veWUHNxdNZjymfSgMyHi3wHR0QnvKZ4t9niRZb2.jpg', 1, 111404, 'jpeg', 'image', '2023-04-28 08:44:34', '2023-04-28 08:44:34', NULL),
(48, 'WhatsApp Image 2023-04-28 at 4.39.14 AM', 'uploads/all/vGS5QxsgXMPOOqwaapHrSFyFovFvZruNn8mSV1Fd.jpg', 1, 40087, 'jpeg', 'image', '2023-04-28 08:44:52', '2023-04-28 08:44:52', NULL),
(49, 'WhatsApp Image 2023-04-28 at 4.39.45 AM', 'uploads/all/9M8orP0eIhfygNx2Lnt9Zv12AM6RtjSsv6oCMSTE.jpg', 1, 111404, 'jpeg', 'image', '2023-04-28 08:44:53', '2023-04-28 08:44:53', NULL),
(50, 'WhatsApp Image 2023-04-28 at 6.53.50 PM (4)', 'uploads/all/XoZfNzZw1ys6f5L9qBEDVqQxBum02LN3NYh4bLLv.jpg', 1, 31281, 'jpeg', 'image', '2023-04-28 22:55:04', '2023-04-28 22:55:04', NULL),
(51, 'WhatsApp Image 2023-04-28 at 6.53.50 PM (3)', 'uploads/all/tW9SFU58d807BVIb82be9gO4rEfQCkdfwlvGXZEY.jpg', 1, 22732, 'jpeg', 'image', '2023-04-28 22:55:04', '2023-04-28 22:55:04', NULL),
(52, 'WhatsApp Image 2023-04-28 at 6.53.50 PM (2)', 'uploads/all/Vf6dvfEQAHd11OwLwY5hFIIE3Q6nb9vvBgU9Avxm.jpg', 1, 30614, 'jpeg', 'image', '2023-04-28 22:55:04', '2023-04-28 22:55:04', NULL),
(53, 'WhatsApp Image 2023-04-28 at 6.53.50 PM', 'uploads/all/gw9SOh6OIYD9F1KmPCSOypK9whgVFofopUMTKBHR.jpg', 1, 29212, 'jpeg', 'image', '2023-04-28 22:55:04', '2023-04-28 22:55:04', NULL),
(54, 'WhatsApp Image 2023-04-28 at 6.53.50 PM (1)', 'uploads/all/eF5MqhJvyrEFBBMAEmIwKSjPGN5ZRAsTo75J4FdK.jpg', 1, 31727, 'jpeg', 'image', '2023-04-28 22:55:04', '2023-04-28 22:55:04', NULL),
(55, 'WhatsApp Image 2023-04-29 at 3.44.18 AM (5)', 'uploads/all/zMSo19nmwG0L6LUjcjUjJTK6Wz6JKXgKdXZrXXx2.jpg', 1, 59236, 'jpeg', 'image', '2023-04-29 07:45:13', '2023-04-29 07:45:13', NULL),
(56, 'WhatsApp Image 2023-04-29 at 3.44.18 AM', 'uploads/all/0RNqLV8cQz092FQBkZXX04aojRTkwDGbU8byVUBj.jpg', 1, 70397, 'jpeg', 'image', '2023-04-29 07:45:13', '2023-04-29 07:45:13', NULL),
(57, 'WhatsApp Image 2023-04-29 at 3.44.18 AM (6)', 'uploads/all/TTUKHzSR6aStVa52sadBiqAJ0HTfrWYCxS3HnRyz.jpg', 1, 51189, 'jpeg', 'image', '2023-04-29 07:45:13', '2023-04-29 07:45:13', NULL),
(58, 'WhatsApp Image 2023-04-29 at 3.44.18 AM (4)', 'uploads/all/XZlYvTTVJG2JARjCKH1Z2PiLLoZBH56HPfZXLFPC.jpg', 1, 119441, 'jpeg', 'image', '2023-04-29 07:45:13', '2023-04-29 07:45:13', NULL),
(59, 'WhatsApp Image 2023-04-29 at 3.44.18 AM (3)', 'uploads/all/lLYPS0jXRE8tzZJjA84hmI3EOgbCM86MSZAsRy7P.jpg', 1, 112453, 'jpeg', 'image', '2023-04-29 07:45:13', '2023-04-29 07:45:13', NULL),
(60, 'WhatsApp Image 2023-04-29 at 3.44.18 AM (2)', 'uploads/all/rWJEye6OMUvKwfPr8qfMYoX0E2mc9laPnSqeDIDa.jpg', 1, 106847, 'jpeg', 'image', '2023-04-29 07:45:13', '2023-04-29 07:45:13', NULL),
(61, 'WhatsApp Image 2023-04-29 at 3.44.18 AM (1)', 'uploads/all/2EG2NR6GvQ7ikUNmM72DgKSKMFnYGI1HdLgFYana.jpg', 1, 125957, 'jpeg', 'image', '2023-04-29 07:45:13', '2023-04-29 07:45:13', NULL),
(62, 'WhatsApp Image 2023-04-29 at 4.03.16 AM (10)', 'uploads/all/MH6NQiVblp0EN3drTPVs8vzt6W5hFZcJmnjq7Lqn.jpg', 1, 44899, 'jpeg', 'image', '2023-04-29 08:05:54', '2023-04-29 08:05:54', NULL),
(63, 'WhatsApp Image 2023-04-29 at 4.03.16 AM (9)', 'uploads/all/EjZ09BxtCUckTUcOSWy2W9q7xDIhwBJuAsDqy9Mh.jpg', 1, 61906, 'jpeg', 'image', '2023-04-29 08:05:54', '2023-04-29 08:05:54', NULL),
(64, 'WhatsApp Image 2023-04-29 at 4.03.16 AM (8)', 'uploads/all/pcMcbcufkelMoMva2WOKSL97bCysrF0HYf3QiR1a.jpg', 1, 41201, 'jpeg', 'image', '2023-04-29 08:05:56', '2023-04-29 08:05:56', NULL),
(65, 'WhatsApp Image 2023-04-29 at 4.03.16 AM (3)', 'uploads/all/3I8ejZunDvVSKVZZfrJOaKf89W87YG0gPQLGldtB.jpg', 1, 67373, 'jpeg', 'image', '2023-04-29 08:05:56', '2023-04-29 08:05:56', NULL),
(66, 'WhatsApp Image 2023-04-29 at 4.03.16 AM (7)', 'uploads/all/SMerG9EyeBOYAy7u9wgaxOkv9cHRmTEyhUWmOC9V.jpg', 1, 49717, 'jpeg', 'image', '2023-04-29 08:05:56', '2023-04-29 08:05:56', NULL),
(67, 'WhatsApp Image 2023-04-29 at 4.03.16 AM (4)', 'uploads/all/pzuE9LMzT4Bx3mzZ4sgCsvwIEHOWPfyI1CxdPT4Q.jpg', 1, 61293, 'jpeg', 'image', '2023-04-29 08:05:56', '2023-04-29 08:05:56', NULL),
(68, 'WhatsApp Image 2023-04-29 at 4.03.16 AM (5)', 'uploads/all/MSXP0M0jNyO5TXiILdiHx3VW176RNYswsxMWfvTd.jpg', 1, 54705, 'jpeg', 'image', '2023-04-29 08:05:56', '2023-04-29 08:05:56', NULL),
(69, 'WhatsApp Image 2023-04-29 at 4.03.16 AM (6)', 'uploads/all/IYsZEL7revwC5ApKBOhULXVRDDqsfNB8sbq6QcGo.jpg', 1, 51598, 'jpeg', 'image', '2023-04-29 08:05:56', '2023-04-29 08:05:56', NULL),
(70, 'WhatsApp Image 2023-04-29 at 4.03.16 AM (2)', 'uploads/all/qwd8hPlikm3aFT9lJC5yYXF3T8SfSBA7Cq64y7tG.jpg', 1, 56755, 'jpeg', 'image', '2023-04-29 08:05:57', '2023-04-29 08:05:57', NULL),
(71, 'WhatsApp Image 2023-04-29 at 4.03.16 AM', 'uploads/all/yXWwdkP6AThCO62tPgZSDtuL79Wt3g44mkgvpP00.jpg', 1, 56957, 'jpeg', 'image', '2023-04-29 08:05:57', '2023-04-29 08:05:57', NULL),
(72, 'WhatsApp Image 2023-04-29 at 4.03.16 AM (1)', 'uploads/all/ls3YxEWRhAjNU0xhDFZcn8esSF5YaUjNzs5kEaFb.jpg', 1, 59237, 'jpeg', 'image', '2023-04-29 08:05:57', '2023-04-29 08:05:57', NULL),
(73, 'WhatsApp Image 2023-04-29 at 4.47.55 AM (14)', 'uploads/all/oqf3wZ2pNNRIsjLjFXntHSnUvTxPC8TGhvAjOQiv.jpg', 1, 75467, 'jpeg', 'image', '2023-04-29 08:49:48', '2023-04-29 08:49:48', NULL),
(74, 'WhatsApp Image 2023-04-29 at 4.47.55 AM (6)', 'uploads/all/I4QILxqPrJXpV6AG1IbdyjPZzOoQLzqwzX5fnl24.jpg', 1, 76240, 'jpeg', 'image', '2023-04-29 08:49:49', '2023-04-29 08:49:49', NULL),
(75, 'WhatsApp Image 2023-04-29 at 4.47.55 AM (10)', 'uploads/all/BJAXPD82zC2FVRvJ9sZ4hrViklIenemBN4ypiwCN.jpg', 1, 78918, 'jpeg', 'image', '2023-04-29 08:49:49', '2023-04-29 08:49:49', NULL),
(76, 'WhatsApp Image 2023-04-29 at 4.47.55 AM', 'uploads/all/3jyxf57Eluj4iT1huAvvavoipeEkbWnq6ibwPtGf.jpg', 1, 72896, 'jpeg', 'image', '2023-04-29 08:49:49', '2023-04-29 08:49:49', NULL),
(77, 'WhatsApp Image 2023-04-29 at 4.47.55 AM (12)', 'uploads/all/Cl5177v1Wvu5FMMm3N9kpBrm9vAB4ONTxQedIIc4.jpg', 1, 66706, 'jpeg', 'image', '2023-04-29 08:49:49', '2023-04-29 08:49:49', NULL),
(78, 'WhatsApp Image 2023-04-29 at 4.47.55 AM (2)', 'uploads/all/iEiTbHbLEZ3P96r4iitWQcEtFkClX1N1eENohivy.jpg', 1, 80038, 'jpeg', 'image', '2023-04-29 08:49:49', '2023-04-29 08:49:49', NULL),
(79, 'WhatsApp Image 2023-04-29 at 4.47.55 AM (15)', 'uploads/all/g7GdSBMDoQkFOtdSdC10b0SZV4bcJ5z9nO3C8xkJ.jpg', 1, 89202, 'jpeg', 'image', '2023-04-29 08:49:49', '2023-04-29 08:49:49', NULL),
(80, 'WhatsApp Image 2023-04-29 at 4.47.55 AM (7)', 'uploads/all/zVLdkQoNUNDewqk8G3V9SdLvGOJERnyAevfFl9Pq.jpg', 1, 84881, 'jpeg', 'image', '2023-04-29 08:49:49', '2023-04-29 08:49:49', NULL),
(81, 'WhatsApp Image 2023-04-29 at 4.47.55 AM (3)', 'uploads/all/1PktfXbdXtJPVuxjz9pMlOGucgVVIp1FrGWpafZO.jpg', 1, 90423, 'jpeg', 'image', '2023-04-29 08:49:49', '2023-04-29 08:49:49', NULL),
(82, 'WhatsApp Image 2023-04-29 at 4.47.55 AM (8)', 'uploads/all/6xjEfviCyYufGUgMBY2pMWkktUDibgDRxhN50oZY.jpg', 1, 82472, 'jpeg', 'image', '2023-04-29 08:49:49', '2023-04-29 08:49:49', NULL),
(83, 'WhatsApp Image 2023-04-29 at 4.47.55 AM (1)', 'uploads/all/1cQKcoRQ0XW2H0XjWMC3toOJHBQdKafWNidaeskp.jpg', 1, 88416, 'jpeg', 'image', '2023-04-29 08:49:49', '2023-04-29 08:49:49', NULL),
(84, 'WhatsApp Image 2023-04-29 at 4.47.55 AM (5)', 'uploads/all/38ham3ll4rlHeuoFk3uiHiAeEYIYuqkOuEaWDwLo.jpg', 1, 97342, 'jpeg', 'image', '2023-04-29 08:49:49', '2023-04-29 08:49:49', NULL),
(85, 'WhatsApp Image 2023-04-29 at 4.47.55 AM (11)', 'uploads/all/NfYBtw36DcMOsQNfPqktbgWEZhFmlrX3ZTPNaLCe.jpg', 1, 109668, 'jpeg', 'image', '2023-04-29 08:49:49', '2023-04-29 08:49:49', NULL),
(86, 'WhatsApp Image 2023-04-29 at 4.47.55 AM (13)', 'uploads/all/l3nw2EaMNDTpl0tesIaYO4un9fyIsbRTdT68evBr.jpg', 1, 186112, 'jpeg', 'image', '2023-04-29 08:49:49', '2023-04-29 08:49:49', NULL),
(87, 'WhatsApp Image 2023-04-29 at 4.47.55 AM (9)', 'uploads/all/eT6v70k7acPgAwBale349Lq3PH3DI4CLKoytOOth.jpg', 1, 135778, 'jpeg', 'image', '2023-04-29 08:49:49', '2023-04-29 08:49:49', NULL),
(88, 'WhatsApp Image 2023-04-29 at 4.47.55 AM (4)', 'uploads/all/YlWmDbKUYV3drrZZ0e5iYlq5LvME4uNG0NDIckQE.jpg', 1, 123530, 'jpeg', 'image', '2023-04-29 08:49:49', '2023-04-29 08:49:49', NULL),
(89, 'WhatsApp Image 2023-05-03 at 8.38.59 PM', 'uploads/all/1zsBFS4CJfGrWl2JH4nug2BO3bFUoPadMDSXvwZ5.jpg', 1, 98748, 'jpeg', 'image', '2023-05-04 00:40:26', '2023-05-04 00:40:26', NULL),
(90, 'WhatsApp Image 2023-05-03 at 8.38.59 PM (4)', 'uploads/all/w5P75LcFC55ldAItA5SxFYlF0qLgJp3UXGZVOsce.jpg', 1, 109789, 'jpeg', 'image', '2023-05-04 00:40:26', '2023-05-04 00:40:26', NULL),
(91, 'WhatsApp Image 2023-05-03 at 8.38.59 PM (1)', 'uploads/all/tRJg1uPVA0rvVpEKKR4TyAb4CWJ2MFtvq7VSa9Pf.jpg', 1, 111332, 'jpeg', 'image', '2023-05-04 00:40:26', '2023-05-04 00:40:26', NULL),
(92, 'WhatsApp Image 2023-05-03 at 8.38.59 PM (3)', 'uploads/all/GOxfMqJvCBhh3EouNV6KGFe8BwRDJo99ljLHHZGC.jpg', 1, 83471, 'jpeg', 'image', '2023-05-04 00:40:26', '2023-05-04 00:40:26', NULL),
(93, 'WhatsApp Image 2023-05-03 at 8.38.59 PM (2)', 'uploads/all/VroHKjcWMaoqHjJxHKNkIbVCIQd7HuZLWQKYlb8E.jpg', 1, 104460, 'jpeg', 'image', '2023-05-04 00:40:26', '2023-05-04 00:40:26', NULL),
(94, 'WhatsApp Image 2023-06-12 at 1.10.47 AM (13)', 'uploads/all/gYUS6c418shARrWlA91IujJisjhu6ypvR651rpf7.jpg', 1, 35996, 'jpeg', 'image', '2023-06-12 05:33:29', '2023-06-12 05:33:29', NULL),
(95, 'WhatsApp Image 2023-06-12 at 1.10.47 AM (12)', 'uploads/all/WZOdkjbyBpkYQNyrzcBSCRcV9vwflsJahpVOLXBB.jpg', 1, 39718, 'jpeg', 'image', '2023-06-12 05:33:29', '2023-06-12 05:33:29', NULL),
(96, 'WhatsApp Image 2023-06-12 at 1.10.47 AM (11)', 'uploads/all/BS54XhIsoejYDztXevOUMRUsIY9PSyiAqz9RnN57.jpg', 1, 40245, 'jpeg', 'image', '2023-06-12 05:33:29', '2023-06-12 05:33:29', NULL),
(97, 'WhatsApp Image 2023-06-12 at 1.10.47 AM (9)', 'uploads/all/0SJwcokotsjcIynBpBSF9CaWxTpqpg3xw7ifE3zF.jpg', 1, 43284, 'jpeg', 'image', '2023-06-12 05:33:29', '2023-06-12 05:33:29', NULL),
(98, 'WhatsApp Image 2023-06-12 at 1.10.47 AM (10)', 'uploads/all/82IjgKRKTZ0y0tMdckXYoapTCSCpJgiYKvM9bxYN.jpg', 1, 45460, 'jpeg', 'image', '2023-06-12 05:33:29', '2023-06-12 05:33:29', NULL),
(99, 'WhatsApp Image 2023-06-12 at 1.10.47 AM (8)', 'uploads/all/okrNyM0D8RnuhJKIJTzIyNzdMAe3DUVorxNA9YvB.jpg', 1, 37369, 'jpeg', 'image', '2023-06-12 05:33:30', '2023-06-12 05:33:30', NULL),
(100, 'WhatsApp Image 2023-06-12 at 1.10.47 AM (5)', 'uploads/all/MNY6gwnQJ8jw65zZrcIdlKAWbCyHtxQxjigySwLw.jpg', 1, 45162, 'jpeg', 'image', '2023-06-12 05:33:30', '2023-06-12 05:33:30', NULL),
(101, 'WhatsApp Image 2023-06-12 at 1.10.47 AM (6)', 'uploads/all/AK6dPaVObdoCeDnAR4092ywNZX5j8WIU7PrcH1gB.jpg', 1, 41365, 'jpeg', 'image', '2023-06-12 05:33:30', '2023-06-12 05:33:30', NULL),
(102, 'WhatsApp Image 2023-06-12 at 1.10.47 AM (2)', 'uploads/all/IKnNZwuVgO6KrLFqYnP6vCLM1pruqi8AooBck3eU.jpg', 1, 40616, 'jpeg', 'image', '2023-06-12 05:33:30', '2023-06-12 05:33:30', NULL),
(103, 'WhatsApp Image 2023-06-12 at 1.10.47 AM (3)', 'uploads/all/b9sPVgGssR4fZjbwDPlgO5UvpXRANIb29eQaVe42.jpg', 1, 37539, 'jpeg', 'image', '2023-06-12 05:33:30', '2023-06-12 05:33:30', NULL),
(104, 'WhatsApp Image 2023-06-12 at 1.10.47 AM (4)', 'uploads/all/ac81BGEOLmDLP7In1hT1MhkLXEQQLPuX3Vh4ntq5.jpg', 1, 43264, 'jpeg', 'image', '2023-06-12 05:33:30', '2023-06-12 05:33:30', NULL),
(105, 'WhatsApp Image 2023-06-12 at 1.10.47 AM (1)', 'uploads/all/5HinLUUCTDsGZNk4v61T2nEKFJheIDLi0ZLzPyeR.jpg', 1, 43723, 'jpeg', 'image', '2023-06-12 05:33:30', '2023-06-12 05:33:30', NULL),
(106, 'WhatsApp Image 2023-06-12 at 1.10.47 AM', 'uploads/all/ur86NQAsxtdjs67O17kZV28W58lrpUtEBo4vPfB4.jpg', 1, 49808, 'jpeg', 'image', '2023-06-12 05:33:30', '2023-06-12 05:33:30', NULL),
(107, 'WhatsApp Image 2023-06-12 at 1.10.47 AM (7)', 'uploads/all/6pRiWPIMGCLxpnmoCBIzlYVpAYR4lqOsijW6knPv.jpg', 1, 38738, 'jpeg', 'image', '2023-06-12 05:33:30', '2023-06-12 05:33:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `provider_id` varchar(50) DEFAULT NULL,
  `user_type` varchar(10) NOT NULL DEFAULT 'customer',
  `role_id` int(11) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone_verified_at` timestamp NULL DEFAULT NULL,
  `verification_code` text DEFAULT NULL,
  `new_email_verificiation_code` text DEFAULT NULL,
  `password` varchar(191) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `avatar` int(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `balance` double(8,2) NOT NULL DEFAULT 0.00,
  `banned` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `provider_id`, `user_type`, `role_id`, `shop_id`, `name`, `email`, `email_verified_at`, `phone_verified_at`, `verification_code`, `new_email_verificiation_code`, `password`, `remember_token`, `avatar`, `phone`, `balance`, `banned`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, 'admin', NULL, 6, 'rayed', 'rayedalshoubaki@icloud.com', '2023-04-06 07:04:34', NULL, NULL, NULL, '$2y$10$8h.CzvqFcj4pxM3NXhDWveKgpcova/CeOvJT3z7NuPcoxpjEUFhn6', 'KOG4tFWdLSZa3o0i7KzfQvyv7yLs7RAGvpYMzP35WngM7Gt2w2SnX5iLBNqM', NULL, NULL, 0.00, 0, '2020-11-25 04:04:28', '2023-04-06 07:35:34', NULL),
(2, NULL, 'customer', NULL, NULL, 'ahmed', 'ahmed_100300@hotmail.com', '2023-06-22 23:06:01', NULL, '844054', NULL, '$2y$10$LqzR.LP.4nZD7QxKy7WlGu/Eao/sKc0ac3tgDGXKGjfMmG8e/M8vG', NULL, NULL, '+12126574542', 0.00, 0, '2023-04-06 11:00:16', '2023-06-22 23:44:01', NULL),
(73, NULL, 'customer', NULL, NULL, 'test', 'cf77519cb9@fireboxmail.lol', NULL, NULL, '899688', NULL, '$2y$10$lS99qVsB/AS27k3iVPQVieOiBEgbwo3EeHk0OjWZ6V.kGlg96Xt6O', NULL, NULL, NULL, 0.00, 0, '2023-04-08 09:23:29', '2023-04-08 09:23:29', NULL),
(75, NULL, 'customer', NULL, NULL, 'ahmed100', NULL, NULL, NULL, '673606', NULL, '$2y$10$3aC6ZWv4OP1wjCMrB2/2pe42P07dp6bzcTDKII9RSlppoJQvBZbka', NULL, NULL, '+966593166156', 0.00, 0, '2023-04-13 02:16:46', '2023-04-13 02:20:09', NULL),
(76, NULL, 'customer', NULL, NULL, 'ahmed', 'ahmed@hotmail.com', NULL, NULL, '132839', NULL, '$2y$10$dS3T93fnFxQCUW.xC8xzyerGkweTl8IFl4/yE1304bY5SlTOzOHky', NULL, NULL, NULL, 0.00, 0, '2023-04-20 05:13:44', '2023-04-20 05:13:44', NULL),
(77, NULL, 'customer', NULL, NULL, 'ahmed', 'a@a.com', NULL, NULL, '247275', NULL, '$2y$10$3LBzT6Mkc9PWVtOL.oZllu7EXHPLMqWdh5vDcvcushuHlkE5Bbpx6', NULL, NULL, NULL, 0.00, 0, '2023-04-23 20:37:08', '2023-04-24 17:48:13', NULL),
(78, NULL, 'customer', NULL, NULL, 'ah', '1b585e0505@fireboxmail.lol', '2023-04-24 00:04:34', NULL, '480334', NULL, '$2y$10$y/vv2z2C81vJHIt.Rb4nveT7IChyaOkw.URwKslpimFIzBN5Mb4Dm', NULL, NULL, NULL, 0.00, 0, '2023-04-23 23:15:56', '2023-04-24 00:44:34', NULL),
(80, NULL, 'customer', NULL, NULL, 'ttttt', 't@t.com', NULL, NULL, '685614', NULL, '$2y$10$YUyEZ4bgPxMGEB/m6Zk7lOoqRiw2p1qzUwspGjuiyq/BdGYOE7Mpm', NULL, NULL, NULL, 0.00, 0, '2023-04-25 01:45:54', '2023-04-25 01:46:34', NULL),
(81, NULL, 'customer', NULL, NULL, 'rayed', 'vivomtata@gmail.com', '2023-05-24 19:05:22', NULL, '817938', NULL, '$2y$10$hQtykwcBlflwLd8KUJJr3u4fvIDSOkbpI8jWxMjZdYy8IPVaaAkyq', NULL, NULL, NULL, 0.00, 0, '2023-04-27 11:36:59', '2023-05-24 19:11:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` double(20,2) NOT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `payment_details` longtext DEFAULT NULL,
  `approval` int(1) NOT NULL DEFAULT 0,
  `offline_payment` int(1) NOT NULL DEFAULT 0,
  `reciept` varchar(150) DEFAULT NULL,
  `type` varchar(10) NOT NULL DEFAULT 'Added' COMMENT 'Added/Deducted',
  `details` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

CREATE TABLE `zones` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `cities` longtext DEFAULT NULL,
  `standard_delivery_cost` double(20,2) NOT NULL DEFAULT 0.00,
  `express_delivery_cost` double(20,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zones`
--

INSERT INTO `zones` (`id`, `name`, `cities`, `standard_delivery_cost`, `express_delivery_cost`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'السعودية', '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"26\",\"27\",\"28\",\"29\",\"30\",\"31\",\"32\",\"33\",\"34\",\"35\",\"36\",\"37\",\"38\",\"39\",\"40\",\"41\",\"42\",\"43\",\"44\",\"45\",\"46\",\"47\",\"48\",\"49\",\"50\",\"51\",\"52\",\"53\",\"54\",\"55\",\"56\",\"57\",\"58\",\"59\",\"60\",\"61\",\"62\",\"63\",\"64\",\"65\",\"66\",\"67\",\"68\",\"69\",\"70\",\"71\",\"72\",\"73\",\"74\",\"75\",\"76\",\"77\",\"78\",\"79\",\"80\",\"81\",\"82\",\"83\",\"84\",\"85\",\"86\",\"87\",\"88\",\"89\",\"90\",\"91\",\"92\",\"93\",\"94\",\"95\",\"96\",\"97\",\"98\",\"99\",\"100\",\"101\",\"102\",\"103\",\"104\",\"105\",\"106\",\"107\",\"108\",\"109\",\"110\"]', 15.00, 10.00, '2023-04-09 17:51:12', '2023-04-25 23:16:29', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_category`
--
ALTER TABLE `attribute_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_translations`
--
ALTER TABLE `attribute_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_value_translations`
--
ALTER TABLE `attribute_value_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_category_translations`
--
ALTER TABLE `blog_category_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_translations`
--
ALTER TABLE `blog_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brand_translations`
--
ALTER TABLE `brand_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chats_chat_thread_id_foreign` (`chat_thread_id`),
  ADD KEY `chats_sender_user_id_foreign` (`user_id`);

--
-- Indexes for table `chat_threads`
--
ALTER TABLE `chat_threads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_threads_sender_user_id_foreign` (`user_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city_translations`
--
ALTER TABLE `city_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `citie_id` (`city_id`);

--
-- Indexes for table `club_points`
--
ALTER TABLE `club_points`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `club_point_details`
--
ALTER TABLE `club_point_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `combined_orders`
--
ALTER TABLE `combined_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commission_histories`
--
ALTER TABLE `commission_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country_translations`
--
ALTER TABLE `country_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `countrie_id` (`country_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon_usages`
--
ALTER TABLE `coupon_usages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manual_payment_methods`
--
ALTER TABLE `manual_payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offer_products`
--
ALTER TABLE `offer_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_updates`
--
ALTER TABLE `order_updates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_translations`
--
ALTER TABLE `page_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_attribute_values`
--
ALTER TABLE `product_attribute_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_taxes`
--
ALTER TABLE `product_taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_translations`
--
ALTER TABLE `product_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_variations`
--
ALTER TABLE `product_variations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_variation_combinations`
--
ALTER TABLE `product_variation_combinations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `refund_requests`
--
ALTER TABLE `refund_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `refund_request_items`
--
ALTER TABLE `refund_request_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `searches`
--
ALTER TABLE `searches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller_packages`
--
ALTER TABLE `seller_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller_package_payments`
--
ALTER TABLE `seller_package_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller_package_translations`
--
ALTER TABLE `seller_package_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller_payouts`
--
ALTER TABLE `seller_payouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_brands`
--
ALTER TABLE `shop_brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_categories`
--
ALTER TABLE `shop_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_followers`
--
ALTER TABLE `shop_followers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state_translations`
--
ALTER TABLE `state_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zones`
--
ALTER TABLE `zones`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addons`
--
ALTER TABLE `addons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attribute_category`
--
ALTER TABLE `attribute_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attribute_translations`
--
ALTER TABLE `attribute_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attribute_value_translations`
--
ALTER TABLE `attribute_value_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_category_translations`
--
ALTER TABLE `blog_category_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_translations`
--
ALTER TABLE `blog_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brand_translations`
--
ALTER TABLE `brand_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `category_translations`
--
ALTER TABLE `category_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `chat_threads`
--
ALTER TABLE `chat_threads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `city_translations`
--
ALTER TABLE `city_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT for table `club_points`
--
ALTER TABLE `club_points`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `club_point_details`
--
ALTER TABLE `club_point_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `combined_orders`
--
ALTER TABLE `combined_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `commission_histories`
--
ALTER TABLE `commission_histories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT for table `country_translations`
--
ALTER TABLE `country_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupon_usages`
--
ALTER TABLE `coupon_usages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `manual_payment_methods`
--
ALTER TABLE `manual_payment_methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `offer_products`
--
ALTER TABLE `offer_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `order_updates`
--
ALTER TABLE `order_updates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `page_translations`
--
ALTER TABLE `page_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_attribute_values`
--
ALTER TABLE `product_attribute_values`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `product_taxes`
--
ALTER TABLE `product_taxes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `product_translations`
--
ALTER TABLE `product_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `product_variations`
--
ALTER TABLE `product_variations`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `product_variation_combinations`
--
ALTER TABLE `product_variation_combinations`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `refund_requests`
--
ALTER TABLE `refund_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `refund_request_items`
--
ALTER TABLE `refund_request_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `searches`
--
ALTER TABLE `searches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seller_packages`
--
ALTER TABLE `seller_packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `seller_package_payments`
--
ALTER TABLE `seller_package_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `seller_package_translations`
--
ALTER TABLE `seller_package_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `seller_payouts`
--
ALTER TABLE `seller_payouts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=255;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `shop_brands`
--
ALTER TABLE `shop_brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shop_categories`
--
ALTER TABLE `shop_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `shop_followers`
--
ALTER TABLE `shop_followers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `state_translations`
--
ALTER TABLE `state_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9680;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zones`
--
ALTER TABLE `zones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
