-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 22, 2021 at 07:29 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `descalzo`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Shihab Uddin', 'shihab', 'shihabuddinshakil9@gmail.com', NULL, '$2y$10$PxINScJd9KJwgKLR6xIPXulnzA4phMhWOTH0TkVagTfCCAjH8mVuO', NULL, '2021-08-14 10:25:17', '2021-08-14 10:25:17');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tour_id` bigint(20) UNSIGNED NOT NULL,
  `tourist_id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `destination` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `complains`
--

CREATE TABLE `complains` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `recever_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee__categories`
--

CREATE TABLE `employee__categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guides`
--

CREATE TABLE `guides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quality` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guides`
--

INSERT INTO `guides` (`id`, `name`, `address`, `email`, `phone`, `quality`, `created_at`, `updated_at`) VALUES
(5, 'Nusrat', 'dhaka bangladesh', 'nusu@gmail.com', '01875266725', NULL, '2021-08-20 11:20:05', '2021-08-20 11:20:05'),
(6, 'Rizvi', 'dhaka bangladesh', 'rizvi@gmail.com', '01875276728', NULL, '2021-08-20 11:20:46', '2021-08-20 11:20:46');

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `hotel_owner_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `available` double NOT NULL,
  `price` double NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hotel__categories`
--

CREATE TABLE `hotel__categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hotel__owners`
--

CREATE TABLE `hotel__owners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hotel__owners`
--

INSERT INTO `hotel__owners` (`id`, `name`, `username`, `password`, `email`, `phone`, `address`, `account`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Prime Hotel', 'ph', 'ph123', 'ph@gmail.com', '01775266857', 'Cox\'s Bazar', '123456987874695', 1, NULL, '2021-08-20 20:28:53'),
(4, 'Hotel Cox\'s', 'HC', 'hc512', 'hotelcoxs@gmail.com', '01885266857', 'Cox\'s Bazar', '516894156894874695', 0, NULL, '2021-08-20 20:24:53');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `recever_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dscription` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(107, '2021_06_26_163346_create_tranjactions_table', 3),
(227, '2014_10_12_000000_create_admins_table', 4),
(228, '2014_10_12_000000_create_users_table', 4),
(229, '2014_10_12_100000_create_password_resets_table', 4),
(230, '2016_06_01_000001_create_oauth_auth_codes_table', 4),
(231, '2016_06_01_000002_create_oauth_access_tokens_table', 4),
(232, '2016_06_01_000003_create_oauth_refresh_tokens_table', 4),
(233, '2016_06_01_000004_create_oauth_clients_table', 4),
(234, '2016_06_01_000005_create_oauth_personal_access_clients_table', 4),
(235, '2019_08_19_000000_create_failed_jobs_table', 4),
(236, '2021_06_24_032619_add_admin', 4),
(237, '2021_06_24_084820_create_employees_table', 4),
(238, '2021_06_24_085014_create_tourists_table', 4),
(239, '2021_06_24_085047_create_messages_table', 4),
(240, '2021_06_24_085131_create_employee__categories_table', 4),
(241, '2021_06_24_085203_create_hotel__owners_table', 4),
(242, '2021_06_24_085238_create_complains_table', 4),
(243, '2021_06_24_085259_create_payments_table', 4),
(244, '2021_06_24_085320_create_hotels_table', 4),
(245, '2021_06_24_085338_create_transactions_table', 4),
(246, '2021_06_24_085358_create_salaries_table', 4),
(247, '2021_06_24_085419_create_withdraws_table', 4),
(248, '2021_06_24_085444_create_bookings_table', 4),
(249, '2021_06_24_085501_create_tours_table', 4),
(250, '2021_06_24_085533_create_hotel__categories_table', 4),
(251, '2021_06_24_085612_create_salary_histories_table', 4),
(252, '2021_06_28_160959_create_vehicles_table', 4),
(253, '2021_06_28_192938_create_guides_table', 4),
(254, '2021_07_02_032058_create_reports_table', 4),
(255, '2021_07_31_062128_create_products_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('026b8f1a79bd3d8577fe89301f609e534d4cdcf5ed3bc76d04a7b9bc922db61b397bc7658717f958', 2, 5, 'accessToken', '[]', 0, '2021-08-18 10:45:32', '2021-08-18 10:45:32', '2022-08-18 16:45:32'),
('02767b79d21a42689ff344b274748a6d1e76c79683504db7b4795b03f228f9e21057f3c367f276c7', 2, 5, 'accessToken', '[]', 0, '2021-08-18 11:14:24', '2021-08-18 11:14:24', '2022-08-18 17:14:24'),
('028c4d0fc5cd52ecd488c67274e7d14506856233065e1d8593aad46647bd83623039e0c2d1097aa6', 2, 5, 'accessToken', '[]', 0, '2021-08-20 22:20:57', '2021-08-20 22:20:57', '2022-08-21 04:20:57'),
('06bcd7182996b1a7b323ea00ad65a30fe2eb492f0c9f6af9482e73e7179af9b51e7bd2a07d0a6756', 2, 5, 'accessToken', '[]', 0, '2021-08-20 13:57:51', '2021-08-20 13:57:51', '2022-08-20 19:57:51'),
('06d38c3d482cd352e16db6878fb4ce0b068cca17393e3176af48fecf21b45dde6bd16b0f1e7e8499', 2, 5, 'accessToken', '[]', 0, '2021-08-18 10:45:32', '2021-08-18 10:45:32', '2022-08-18 16:45:32'),
('08f8e308f38445ab8ee3bcb5dd08f40cb5d045559b6849fe76d9ff8009875965dfdc905abdaf0cf2', 2, 5, 'accessToken', '[]', 0, '2021-08-20 11:21:06', '2021-08-20 11:21:06', '2022-08-20 17:21:06'),
('16e2ef85eb085a56e7440b4223fa47814d3ccbe651d85cf55b596a330f725fcef8dfe98bfd1649f7', 2, 5, 'accessToken', '[]', 0, '2021-08-20 14:07:38', '2021-08-20 14:07:38', '2022-08-20 20:07:38'),
('17fdc993c4af2b97778414acf464c3a2ff188ef7e646c96451842bfbb7fedb429312f54ff0210dd2', 2, 5, 'accessToken', '[]', 0, '2021-08-19 02:44:34', '2021-08-19 02:44:34', '2022-08-19 08:44:34'),
('1d015ce7c12302b5239572ed9271f745c11091344474bc2dc50a5780b944b1f7ee8be8dd016d1b03', 2, 5, 'accessToken', '[]', 0, '2021-08-18 11:09:29', '2021-08-18 11:09:29', '2022-08-18 17:09:29'),
('1d6a24765fe733e147ea50e7b0e2ef77427ebf38e8c6a732179261aa978032c755744e938bb79279', 2, 5, 'accessToken', '[]', 0, '2021-08-18 11:09:29', '2021-08-18 11:09:29', '2022-08-18 17:09:29'),
('2b7c23f1ddfa392a93851be9a482f3c6d667a11ee185a885b1e8b4611f2f0c086becbea352d46a8f', 2, 5, 'accessToken', '[]', 0, '2021-08-20 14:20:32', '2021-08-20 14:20:32', '2022-08-20 20:20:32'),
('3420976e01511c0251249347dd6af3914e8492c81973dd7755b2cde6da4f361f188a8510840b4ce2', 2, 5, 'accessToken', '[]', 0, '2021-08-20 14:12:08', '2021-08-20 14:12:08', '2022-08-20 20:12:08'),
('35b5e0111549baf562ae444df6a98ef3c86efd493ae5a559349e3d02febbec73e39a84003dc36ce0', 2, 5, 'accessToken', '[]', 0, '2021-08-19 02:45:07', '2021-08-19 02:45:07', '2022-08-19 08:45:07'),
('35d5609d38e15398b36f3ddfc8d4753a9d40c99719d7e8155e9f01d4d927b4b378cf89c0bc457e5f', 2, 5, 'accessToken', '[]', 0, '2021-08-18 11:09:27', '2021-08-18 11:09:27', '2022-08-18 17:09:27'),
('38ae0d20758ccb6c816f88d49ba49342c0a39499ad31d91fcca719aea7298426e2b7a7807d31ff03', 2, 5, 'accessToken', '[]', 0, '2021-08-19 02:44:40', '2021-08-19 02:44:40', '2022-08-19 08:44:40'),
('3e69cdef5647a9badb616e75e8ed013163a76b66e7a899d2c298493b70f2a34178cfd98d8e98a3ed', 2, 5, 'accessToken', '[]', 0, '2021-08-18 10:45:35', '2021-08-18 10:45:35', '2022-08-18 16:45:35'),
('3e6f3e689a97e330f440293b00e7902612b7b9eaed9ca41f27a9f6457fd12bff98a8be0b04fc26ed', 2, 5, 'accessToken', '[]', 0, '2021-08-20 14:12:28', '2021-08-20 14:12:28', '2022-08-20 20:12:28'),
('4d12ca15089260fa8b514c4e6451a6f8cd9de98208e74ddae9c5fbb8876cd7d7c7796133f3f6c095', 2, 5, 'accessToken', '[]', 0, '2021-08-19 11:31:03', '2021-08-19 11:31:03', '2022-08-19 17:31:03'),
('4f1127e505d0e8ce4fdaea2e3516cdc4ac5d48e63cb1745fc37bd112b774ef83f90febfa3c31809d', 2, 5, 'accessToken', '[]', 0, '2021-08-18 07:16:26', '2021-08-18 07:16:26', '2022-08-18 13:16:26'),
('56cc9399a45dcb6b8e7e6f1595ecc8cb76ab7b6c0a6ad1f47d29ca039efa1d761b24ed94dc348be4', 2, 5, 'accessToken', '[]', 0, '2021-08-18 10:45:30', '2021-08-18 10:45:30', '2022-08-18 16:45:30'),
('57704c0212112bf13b2589cf2910895ee8fe2e99589cb1bf7296328427aba247ffdab4174771f04c', 2, 5, 'accessToken', '[]', 0, '2021-08-20 14:06:40', '2021-08-20 14:06:40', '2022-08-20 20:06:40'),
('5c726856769d843ab0f170213cd90db97487bb57ccdc2ff054556388208f890a7affc9c5a79fa3be', 2, 5, 'accessToken', '[]', 0, '2021-08-18 10:48:28', '2021-08-18 10:48:28', '2022-08-18 16:48:28'),
('5ff5bbf7fd91f521dd9e2dec7ab10a4379531894f56a78b6a1e0dd9d4abfe9e0e01230e1eb3e5fd7', 2, 5, 'accessToken', '[]', 0, '2021-08-18 11:23:23', '2021-08-18 11:23:23', '2022-08-18 17:23:23'),
('6081cc43c76ade4aa2dedac0540300314b838668106442276ac34c21b47236ad110cbe0b40a29bfc', 2, 5, 'accessToken', '[]', 0, '2021-08-20 15:32:40', '2021-08-20 15:32:40', '2022-08-20 21:32:40'),
('6e8fd9748d0660f558bdfca299cabaea8338149188de7b3b890419ee824ce8826a3e97e48335edfb', 2, 5, 'accessToken', '[]', 0, '2021-08-18 10:48:39', '2021-08-18 10:48:39', '2022-08-18 16:48:39'),
('6f5052efdcbe0b2ce23ee03f5d82d0a5c88308cf22a54532d785ea5ed5e172d2dccdfa39642ae8b1', 2, 5, 'accessToken', '[]', 0, '2021-08-19 02:44:41', '2021-08-19 02:44:41', '2022-08-19 08:44:41'),
('72f3302229e1106063056447cffe2c27224c01531b9313ba807a42f799f762f8c056d67e62545f22', 2, 5, 'accessToken', '[]', 0, '2021-08-18 11:09:28', '2021-08-18 11:09:28', '2022-08-18 17:09:28'),
('7aefd07d08f9fbc14b136f847a8853a70698f42f06ebe8bc6a601093961f9797a7524b67327ccfbd', 2, 5, 'accessToken', '[]', 0, '2021-08-18 11:09:33', '2021-08-18 11:09:33', '2022-08-18 17:09:33'),
('7b0debb7ccc86c71d7e78087c3493a35a974e9029efcf1d2c5c84014b928f737fb84974f40ad5a63', 2, 5, 'accessToken', '[]', 0, '2021-08-19 02:44:42', '2021-08-19 02:44:42', '2022-08-19 08:44:42'),
('7ba0f0b9400d83978ca086b407f6ffbdb53506d6690920c7dd7e92b981e109605c94535a730658e6', 2, 5, 'accessToken', '[]', 0, '2021-08-19 02:44:41', '2021-08-19 02:44:41', '2022-08-19 08:44:41'),
('80f85a5c261c1c0fbaf66cf06e9974cff0e026defb55babf3eaae45c97927bd702066ffd5b638607', 2, 5, 'accessToken', '[]', 0, '2021-08-18 11:09:28', '2021-08-18 11:09:28', '2022-08-18 17:09:28'),
('8a9a20af3677385297e74ec8f09798f9c7daedccb3439ff86d1db97a17a5f206c3c286efaa755790', 2, 5, 'accessToken', '[]', 0, '2021-08-20 14:12:12', '2021-08-20 14:12:12', '2022-08-20 20:12:12'),
('8c4be0adaaaca8c686de5107ac0ec8c3ff004c766d3e1c5e1c5ba7b211c9c2cc4b2979d74fcd3583', 2, 5, 'accessToken', '[]', 0, '2021-08-20 20:13:49', '2021-08-20 20:13:49', '2022-08-21 02:13:49'),
('8ef3b595ccc13a40dc69a417c2a02c3e3fc0103d2de824ecb44c875f4a5a3a49595dba37bc2f7fdb', 2, 5, 'accessToken', '[]', 0, '2021-08-18 10:48:30', '2021-08-18 10:48:30', '2022-08-18 16:48:30'),
('8f312a4f80d73e32a54a21aef34d7dff2f2e5a5dd756db1cb0301f9b6cfdc5d6f4d02fd98370ebae', 2, 5, 'accessToken', '[]', 0, '2021-08-20 15:49:45', '2021-08-20 15:49:45', '2022-08-20 21:49:45'),
('9128f935f76f548c3c9b5a9756ac64e1c8bc9f327b3385ded584cc8440ba2a5308f6544d6976df6f', 2, 5, 'accessToken', '[]', 0, '2021-08-19 02:44:36', '2021-08-19 02:44:36', '2022-08-19 08:44:36'),
('9327fd96c295a3f170c5460bb347ca6b4aabeb9e497831607e8ac880476239a07db88408f07b980d', 2, 5, 'accessToken', '[]', 0, '2021-08-18 10:45:31', '2021-08-18 10:45:31', '2022-08-18 16:45:31'),
('994846bc6d4c01b0969c843c861ada42cfebba908d50075f09f67d44438617ac71af8e11b9190198', 2, 5, 'accessToken', '[]', 0, '2021-08-18 11:15:59', '2021-08-18 11:15:59', '2022-08-18 17:15:59'),
('9b12f52e57a82c47147269c412facd020f18b6271ae4d6aff59047b2bad44a47eca6ff01b6e830f8', 2, 5, 'accessToken', '[]', 0, '2021-08-18 10:45:32', '2021-08-18 10:45:32', '2022-08-18 16:45:32'),
('a1396d4bc5981f3b2449b9dc851bb7ce426b55d9dac40dea4cff40210b568d71d1b324c49e682855', 2, 5, 'accessToken', '[]', 0, '2021-08-20 14:09:57', '2021-08-20 14:09:57', '2022-08-20 20:09:57'),
('a43b6c8739dc72bbe905556204b493cbe9f8919f79400715f12c3c77ad73d0adc03098e6cc4c4e7f', 2, 5, 'accessToken', '[]', 0, '2021-08-20 14:08:45', '2021-08-20 14:08:45', '2022-08-20 20:08:45'),
('a44329f2160dfc32f5ca4b0dbad5c45fdb2619af174722b299dd41ede87475906dda34241dc1cfd5', 2, 5, 'accessToken', '[]', 0, '2021-08-19 02:44:42', '2021-08-19 02:44:42', '2022-08-19 08:44:42'),
('a9372a51f595a71a708c1059be438855c3c6f62b7700660b9a165655b882565493aa21a13d7eacf2', 2, 5, 'accessToken', '[]', 0, '2021-08-20 23:49:53', '2021-08-20 23:49:53', '2022-08-21 05:49:53'),
('a9469a6d3ad0981468fc931aae3f09455195171420e1df3ba790c3548ad8b38247356113d6b84fcf', 2, 5, 'accessToken', '[]', 0, '2021-08-19 02:44:39', '2021-08-19 02:44:39', '2022-08-19 08:44:39'),
('ac4e4f41b45767c8533df341a59b7366232177dac35861be9d41b651d68485f914d3818858b60528', 2, 5, 'accessToken', '[]', 0, '2021-08-18 11:09:23', '2021-08-18 11:09:23', '2022-08-18 17:09:23'),
('b0aad670012913f8d7006f5db119d1b936afe2591300de942d0d7e804d829e33ea6e55a03dde0f2b', 2, 5, 'accessToken', '[]', 0, '2021-08-20 14:17:49', '2021-08-20 14:17:49', '2022-08-20 20:17:49'),
('b1033913d80a48adfc215924debbaf4f1322b7805b6beda2c597b29ef813d1bf2eaab246c1dad23d', 2, 5, 'accessToken', '[]', 0, '2021-08-18 11:09:27', '2021-08-18 11:09:27', '2022-08-18 17:09:27'),
('b2e0175ea78c8c2a8e2f1ff2881f880478c9cb1e110f7b34ce2a190f36c11bbc8a1711b15474c223', 2, 5, 'accessToken', '[]', 0, '2021-08-18 11:09:21', '2021-08-18 11:09:21', '2022-08-18 17:09:21'),
('b846b420a53e4d5e3b322b5bb7e25acf32b6acf103127aecb1cf09004f20bbac17c3f25c95e8a95f', 2, 5, 'accessToken', '[]', 0, '2021-08-18 11:09:25', '2021-08-18 11:09:25', '2022-08-18 17:09:25'),
('be5c0ff78512a362506fd4734d62c0d8997e95106ab7f9d20a4ca2d7154ffae817b0306a1cafb453', 2, 5, 'accessToken', '[]', 0, '2021-08-18 11:09:43', '2021-08-18 11:09:43', '2022-08-18 17:09:43'),
('c696fe670ae0e4139e03c382ba25ca6eb32a184211d448b963a65cb3f9de6ef9e51a7829fc2f64f0', 2, 5, 'accessToken', '[]', 0, '2021-08-20 13:58:57', '2021-08-20 13:58:57', '2022-08-20 19:58:57'),
('c94f4c18f5299eb3aeca3427c81bf718ad8247f8c5601ea26983917a9eed54871092eb24d2983f7e', 2, 5, 'accessToken', '[]', 0, '2021-08-14 12:00:41', '2021-08-14 12:00:41', '2022-08-14 18:00:41'),
('d2e9e58c91a56e32ea6e67a390a3233da04a7fa6e2c5c8119a198ef6d9ff6335b7f8f6e29c8f7e7a', 2, 5, 'accessToken', '[]', 0, '2021-08-20 13:59:20', '2021-08-20 13:59:20', '2022-08-20 19:59:20'),
('d3577d323264361479baded3e9a372c25ff58ab930832922b8822c8d555980a2d522bd48648bf199', 2, 5, 'accessToken', '[]', 0, '2021-08-18 11:09:26', '2021-08-18 11:09:26', '2022-08-18 17:09:26'),
('d7a0101b8642a81e5defa57b9bf278cb86bc7a055f87255bffa526949fbccff05bdd9ee25ae213a8', 2, 5, 'accessToken', '[]', 0, '2021-08-18 10:45:35', '2021-08-18 10:45:35', '2022-08-18 16:45:35'),
('e0470cb986734a80c2e32e6737b786ec24406d7dd4bc0db8213e5297ce6d4de5bd86c5b3bf15ca7a', 2, 5, 'accessToken', '[]', 0, '2021-08-20 20:15:39', '2021-08-20 20:15:39', '2022-08-21 02:15:39'),
('e0ffd8adcabbe19fb79f4bc3e3614c3b75b7f887e42447e2476a11a068ed85f24b2e112083b8075d', 2, 5, 'accessToken', '[]', 0, '2021-08-18 10:48:29', '2021-08-18 10:48:29', '2022-08-18 16:48:29'),
('e347558046a517d8adacf87d234a122813b32a02a51b902ad6f626aec0109495df17c2e9215af3c1', 2, 5, 'accessToken', '[]', 0, '2021-08-18 10:45:34', '2021-08-18 10:45:34', '2022-08-18 16:45:34'),
('e648853c90e8d8d104c7bde92fe1c071423876b93b5ac305c412dbba837d6bfd075751b69c41b1c2', 2, 5, 'accessToken', '[]', 0, '2021-08-18 11:09:25', '2021-08-18 11:09:25', '2022-08-18 17:09:25'),
('eba4122a4c53af05ae7b82afab5188d97c2cd452425f91d7e537aac850c84fbff697206007d0dc10', 2, 5, 'accessToken', '[]', 0, '2021-08-18 10:45:31', '2021-08-18 10:45:31', '2022-08-18 16:45:31'),
('ec44b4c29c63a7a5f2b7bcc56aaae8d2d5d6726cf0d58443de9498ac540d4ea0d2f89a7000b95c42', 2, 5, 'accessToken', '[]', 0, '2021-08-19 02:44:39', '2021-08-19 02:44:39', '2022-08-19 08:44:39'),
('ecde4499aeeb4a7ce83187b80d2c2588c11c8c30ed2653f2aff0b5edf814b6ffd8b0a5f7a4802825', 2, 5, 'accessToken', '[]', 0, '2021-08-20 15:49:27', '2021-08-20 15:49:27', '2022-08-20 21:49:27'),
('ee1876b39d23c69988807e26aaa5d26df0b8443e8d260a5c8dce33c765cb675f4b0ca22477c0e2b5', 2, 5, 'accessToken', '[]', 0, '2021-08-20 14:14:45', '2021-08-20 14:14:45', '2022-08-20 20:14:45'),
('f157b011769d3f2c684b87fa6e6e4bc40327a664edba13f588a3aadaa341646098e7a177265531e7', 2, 5, 'accessToken', '[]', 0, '2021-08-18 10:45:34', '2021-08-18 10:45:34', '2022-08-18 16:45:34'),
('f2466cb8d0c46a8baf824aaeb4d142193328968410040d5f6eb1830c7710182aa8b4bed9ee751d4e', 2, 5, 'accessToken', '[]', 0, '2021-08-18 10:45:34', '2021-08-18 10:45:34', '2022-08-18 16:45:34'),
('f34c18a3ee57effd12e2966b29b129a5f4f709edfa6116ba01fa70ed30184088fc2e84d41095c2dc', 2, 5, 'accessToken', '[]', 0, '2021-08-18 10:45:33', '2021-08-18 10:45:33', '2022-08-18 16:45:33'),
('f6af2731cd3e8005443af8911dca00a28ae0976f3882b8013ccde72080b28b842cb35f09b1f01e69', 2, 5, 'accessToken', '[]', 0, '2021-08-18 11:09:33', '2021-08-18 11:09:33', '2022-08-18 17:09:33'),
('fae8f9a36cb11bfa6aa5ac62adb8b829ca0fd9704b0b0e71dcfc62bbe56ee8d1c7caf4a856361e4c', 2, 5, 'accessToken', '[]', 0, '2021-08-20 14:08:42', '2021-08-20 14:08:42', '2022-08-20 20:08:42'),
('fbb80332964246a29da58a107dc3c73acaf9b908f38729002c3f0a0245ca26fbf823168227f00b21', 2, 5, 'accessToken', '[]', 0, '2021-08-19 23:17:15', '2021-08-19 23:17:15', '2022-08-20 05:17:15');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'sECxeSlrXRHeZOwLfe8oMcJTsSQujClC1SnrTrXM', NULL, 'http://localhost', 1, 0, 0, '2021-08-14 10:26:06', '2021-08-14 10:26:06'),
(2, NULL, 'Laravel Password Grant Client', 'gxAVV5sJSaJX3HfE2x5a9zuYqEaPBJ4s3heNorHp', 'users', 'http://localhost', 0, 1, 0, '2021-08-14 10:26:06', '2021-08-14 10:26:06'),
(3, NULL, 'Laravel Personal Access Client', 'ABhls5LLSe34IGsaMoBLsHbs8OsJxXR1hC7aO6S4', NULL, 'http://localhost', 1, 0, 0, '2021-08-14 11:00:05', '2021-08-14 11:00:05'),
(4, NULL, 'Laravel Password Grant Client', 'K8yulncRfgIFWhIe8HDhW2ptmAkIaluxj3uFTvaT', 'users', 'http://localhost', 0, 1, 0, '2021-08-14 11:00:05', '2021-08-14 11:00:05'),
(5, NULL, 'Laravel Personal Access Client', 'heNDPzx7CsC3Xc9Ve2pESeMxtqg2tHeTFCDXnZCQ', NULL, 'http://localhost', 1, 0, 0, '2021-08-14 11:13:37', '2021-08-14 11:13:37'),
(6, NULL, 'Laravel Password Grant Client', '3KdE3Qhzrvnbo0cMxCkMOvStM9OWXKgXgdAuqjky', 'users', 'http://localhost', 0, 1, 0, '2021-08-14 11:13:37', '2021-08-14 11:13:37'),
(7, 1, 'nabil', 'pr2GIKD0xHyIoweKbv7xp4lELSBe3gUK2iSnmNNH', NULL, 'api', 0, 0, 0, '2021-08-14 11:45:57', '2021-08-14 11:45:57');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-08-14 10:26:06', '2021-08-14 10:26:06'),
(2, 3, '2021-08-14 11:00:05', '2021-08-14 11:00:05'),
(3, 5, '2021-08-14 11:13:37', '2021-08-14 11:13:37');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tourist_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `employee_id`, `type`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 101, 'hyundai', 'none', 1, NULL, '2021-08-20 23:52:52'),
(2, 2, 'daily', 'none', 0, '2021-08-17 10:11:17', '2021-08-17 10:11:17'),
(3, 3, 'daily', 'none', 1, '2021-08-20 03:39:20', '2021-08-20 23:00:34'),
(4, 4, 'weekly', 'none', 1, '2021-08-20 03:39:54', '2021-08-20 03:39:54');

-- --------------------------------------------------------

--
-- Table structure for table `salaries`
--

CREATE TABLE `salaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salary_histories`
--

CREATE TABLE `salary_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `salary_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tourists`
--

CREATE TABLE `tourists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tourists`
--

INSERT INTO `tourists` (`id`, `name`, `email`, `phone`, `address`, `account`, `created_at`, `updated_at`) VALUES
(1, 'MD Nabil', 'nabil@gmail.com', '01875299759', 'Feni,Bangladesh', 'asdfd166878956292', NULL, NULL),
(2, 'Rizvi khalid', 'Rizvi @gmail.com', '01875299759', 'Dhaka,Bangladesh', 'asdfd166878956292', NULL, NULL),
(3, 'Tanvir hasan', 'hasan@gmail.com', '01875297859', 'Feni,Bangladesh', 'asdfd166784856292', NULL, NULL),
(4, 'Nbl', 'nbl@gmail.com', '0125976423', 'feni', '494569sd4fds', '2021-08-20 22:20:21', '2021-08-20 22:20:21'),
(5, 'MD Nabil Hossain', 'doctor@gmail.com', '1875266729', 'Feni Bangladesh', '45484894947/sdf', '2021-08-20 22:20:44', '2021-08-20 22:20:44'),
(6, 'tanvir', 'doctor@gmail.com', '1875266729', 'Feni Bangladesh', '45484894947/sdf', '2021-08-20 23:51:09', '2021-08-20 23:51:09');

-- --------------------------------------------------------

--
-- Table structure for table `tours`
--

CREATE TABLE `tours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `vehicle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tranjactions`
--

CREATE TABLE `tranjactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `activity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'nabil@gmail.com', NULL, '123456', NULL, NULL, NULL),
(2, 'nabil1211@gmail.com', NULL, '$2y$10$EMdSena9QtWYmhA7D/ckx.awphJqsHlaGf4nsBQygDUkPZUHSBRRO', NULL, '2021-08-14 11:59:37', '2021-08-14 11:59:37');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `name`, `company`, `category`, `type`, `created_at`, `updated_at`) VALUES
(2, 'Hanif', 'Hanif poribohon', 'Non AC', 'hundai', '2021-08-19 22:40:09', '2021-08-19 22:40:09'),
(3, 'Hanif', 'Hanif Poribohon', 'AC', 'hyundai', '2021-08-20 10:16:19', '2021-08-20 10:55:35');

-- --------------------------------------------------------

--
-- Table structure for table `withdraws`
--

CREATE TABLE `withdraws` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complains`
--
ALTER TABLE `complains`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee__categories`
--
ALTER TABLE `employee__categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `guides`
--
ALTER TABLE `guides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel__categories`
--
ALTER TABLE `hotel__categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel__owners`
--
ALTER TABLE `hotel__owners`
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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salaries`
--
ALTER TABLE `salaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary_histories`
--
ALTER TABLE `salary_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tourists`
--
ALTER TABLE `tourists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tours`
--
ALTER TABLE `tours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tranjactions`
--
ALTER TABLE `tranjactions`
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
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraws`
--
ALTER TABLE `withdraws`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `complains`
--
ALTER TABLE `complains`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee__categories`
--
ALTER TABLE `employee__categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guides`
--
ALTER TABLE `guides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hotel__categories`
--
ALTER TABLE `hotel__categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hotel__owners`
--
ALTER TABLE `hotel__owners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `salaries`
--
ALTER TABLE `salaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salary_histories`
--
ALTER TABLE `salary_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tourists`
--
ALTER TABLE `tourists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tours`
--
ALTER TABLE `tours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tranjactions`
--
ALTER TABLE `tranjactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `withdraws`
--
ALTER TABLE `withdraws`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
