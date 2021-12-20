-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2021 at 10:40 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_booku`
--

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_12_04_074735_create_carts_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'usertoken', '95b9c82e3cc1cbf0737bb492cc9ee7a5a782ff7a1040751e9f393a6b40fa6eed', '[\"*\"]', NULL, '2021-12-13 12:07:11', '2021-12-13 12:07:11'),
(2, 'App\\Models\\User', 1, 'usertoken', '649bd11cc1a93cea22e49817a5e4d28e6bf152087bda96132f61bca5fc6437c2', '[\"*\"]', NULL, '2021-12-13 12:36:27', '2021-12-13 12:36:27'),
(3, 'App\\Models\\User', 1, 'usertoken', 'c7d2e9619ed5e02a2e6e939e67ab5af576fbce85892b71379d79b82239cdea3a', '[\"*\"]', NULL, '2021-12-13 12:40:37', '2021-12-13 12:40:37'),
(4, 'App\\Models\\User', 1, 'usertoken', 'f98615b465ad3ff9bc2fea3b5a8fb13ceea1fcf3b5890a0abdecc5fe214ac1a9', '[\"*\"]', NULL, '2021-12-13 12:44:09', '2021-12-13 12:44:09'),
(5, 'App\\Models\\User', 1, 'usertoken', '430dd9fb7585f0dd8a25b69d0b50834febb178606d9b0e5c2d3d56701ccf31d4', '[\"*\"]', NULL, '2021-12-13 12:46:14', '2021-12-13 12:46:14'),
(6, 'App\\Models\\User', 1, 'usertoken', 'a23a6b35675e7c37611171266a2f7dd50b67087797808c0134b21d7171b0957c', '[\"*\"]', NULL, '2021-12-13 12:47:52', '2021-12-13 12:47:52'),
(7, 'App\\Models\\User', 1, 'usertoken', 'b3b27e80615ee5fc7d901b88b929fae4625421cdb6bc8ac2a4aa092a65aa23b9', '[\"*\"]', NULL, '2021-12-13 12:48:35', '2021-12-13 12:48:35'),
(8, 'App\\Models\\User', 1, 'usertoken', 'da08f5d68b72ac7f55b52d909f355d70f907ec63ed0ae28b0fe8629cbe4b06eb', '[\"*\"]', NULL, '2021-12-13 12:48:59', '2021-12-13 12:48:59'),
(9, 'App\\Models\\User', 1, 'usertoken', '458e37e7413376454f66496b38ac3e063c377b6ff540966118b4807ba8e11567', '[\"*\"]', NULL, '2021-12-13 12:50:37', '2021-12-13 12:50:37'),
(10, 'App\\Models\\User', 1, 'usertoken', 'a14dbaa29f7222d24438d35059ab3af3dfe3a6aa0fc1c9e68fe0b43b1250526c', '[\"*\"]', NULL, '2021-12-13 12:50:58', '2021-12-13 12:50:58'),
(11, 'App\\Models\\User', 1, 'usertoken', '7860fc24f0baa067317dff4e9c1aff7b0646808136f1a54258c97b10112b4179', '[\"*\"]', NULL, '2021-12-13 12:52:09', '2021-12-13 12:52:09'),
(12, 'App\\Models\\User', 1, 'usertoken', '603b8a7a89092f7d5c57ef43c48d9ed86e98bd614804f3b3a649ef8194efb465', '[\"*\"]', NULL, '2021-12-14 08:20:14', '2021-12-14 08:20:14'),
(13, 'App\\Models\\User', 1, 'usertoken', '45dc8ee7eb8ac5c4b284e1ad0e0eeee5bee646572a16921f6651b120b8d035d2', '[\"*\"]', NULL, '2021-12-14 08:27:28', '2021-12-14 08:27:28'),
(14, 'App\\Models\\User', 1, 'usertoken', 'a875e6fcff6df370d945f7a4e7652ae5669ccbda686978916f0cba122aa872d6', '[\"*\"]', NULL, '2021-12-14 08:30:54', '2021-12-14 08:30:54'),
(15, 'App\\Models\\User', 1, 'usertoken', '8ec355eb4cfdd77fdac94fd5d6f69a5fced7e3832ee8a97877e3b6d7602475e1', '[\"*\"]', NULL, '2021-12-14 08:43:04', '2021-12-14 08:43:04'),
(16, 'App\\Models\\User', 1, 'usertoken', '4e5924104d5748ea0aeb8fd1f1a81bb5faaf3d27226f994b2fa80b55e8c9858b', '[\"*\"]', NULL, '2021-12-14 08:51:17', '2021-12-14 08:51:17'),
(17, 'App\\Models\\User', 1, 'usertoken', 'ebb6134a645e77c131fdf9464a1bae1c8a45afdc24d7dfeff743efebfbc8918e', '[\"*\"]', NULL, '2021-12-14 09:04:26', '2021-12-14 09:04:26'),
(18, 'App\\Models\\User', 1, 'usertoken', 'ca96920df2b2978afef25073eac0a2c7eea278874031ae92ddce6ccf63735c70', '[\"*\"]', NULL, '2021-12-14 09:17:50', '2021-12-14 09:17:50'),
(19, 'App\\Models\\User', 1, 'usertoken', 'b98dcb9a6383894289fd83ba23b846b81dd6f78536742f12b25ad9ff1d3398c3', '[\"*\"]', NULL, '2021-12-14 09:23:54', '2021-12-14 09:23:54'),
(20, 'App\\Models\\User', 1, 'usertoken', '1e675cb7d64101a36fcdb715b16ce636a28f7e8b4e6cca17ee4801ac742f1535', '[\"*\"]', NULL, '2021-12-14 09:25:51', '2021-12-14 09:25:51'),
(21, 'App\\Models\\User', 1, 'usertoken', 'efa9270bdff3351ad2d8820be381c4008d319250d35a97cfad41789d06961058', '[\"*\"]', NULL, '2021-12-14 09:26:55', '2021-12-14 09:26:55'),
(22, 'App\\Models\\User', 1, 'usertoken', '325956ca58c9e501418099f123911c8dcd205d1b731980653f526be547a1dcea', '[\"*\"]', NULL, '2021-12-14 10:15:27', '2021-12-14 10:15:27'),
(23, 'App\\Models\\User', 1, 'usertoken', '9bb0af907ac7f1730f29c65a48a0eebebec0109dd1f8551ab75c07c19266fac0', '[\"*\"]', NULL, '2021-12-14 10:15:43', '2021-12-14 10:15:43'),
(24, 'App\\Models\\User', 1, 'usertoken', 'afae6f7d8e36615aeba3cb3fd9588a2e96e74b4ed709352c4c5d1cc5e42dfea0', '[\"*\"]', NULL, '2021-12-14 10:16:57', '2021-12-14 10:16:57'),
(25, 'App\\Models\\User', 1, 'usertoken', '8ded04a5bfb4cd4ef15ea729d10767d71031c9a4727aed354b4ab78ecc694d69', '[\"*\"]', NULL, '2021-12-14 10:17:44', '2021-12-14 10:17:44'),
(26, 'App\\Models\\User', 1, 'usertoken', '9c60a57ec04202d4ade6a22e26c0ad19d9d325a11010d2a353b8ec362e321b79', '[\"*\"]', NULL, '2021-12-14 10:27:00', '2021-12-14 10:27:00'),
(27, 'App\\Models\\User', 1, 'usertoken', '9ca94fffba8be2d7174d7e94e4eee4b7d7aee377386e3321d1fa9bfdd7a4ba04', '[\"*\"]', NULL, '2021-12-14 10:27:41', '2021-12-14 10:27:41'),
(28, 'App\\Models\\User', 1, 'usertoken', 'eb82760d37dc6af8cb33e7a0346dd8362c48622f92dab7c0ad31daaeaafecfaf', '[\"*\"]', NULL, '2021-12-14 10:51:23', '2021-12-14 10:51:23'),
(29, 'App\\Models\\User', 1, 'usertoken', '594b0ddf7eb86d68ff035c4df1eeb4ed6ff6584389a53e57b359f54b381c2649', '[\"*\"]', NULL, '2021-12-14 11:48:50', '2021-12-14 11:48:50'),
(30, 'App\\Models\\User', 2, 'usertoken', '06174b4756383d59ce419b1f27f7c69014c4a817e7dac478b8f43148e9e4664e', '[\"*\"]', NULL, '2021-12-15 13:05:14', '2021-12-15 13:05:14'),
(31, 'App\\Models\\User', 1, 'usertoken', 'ed7c8ab7fd7b58f4e4d91addbe1d5a31233ef96d5d906fb2f5dab1c98e3ad161', '[\"*\"]', NULL, '2021-12-15 13:14:43', '2021-12-15 13:14:43'),
(32, 'App\\Models\\User', 2, 'usertoken', '5db6955371239fd87f058660a7a42ec6e1dc0e676bbbfcb8bc9884595e4b12f4', '[\"*\"]', NULL, '2021-12-15 13:15:59', '2021-12-15 13:15:59'),
(33, 'App\\Models\\User', 3, 'usertoken', '58b482b5824d8b35a06d5cddeb8c0168597502325a58ee4ade50483540d47e1b', '[\"*\"]', NULL, '2021-12-15 13:20:53', '2021-12-15 13:20:53'),
(34, 'App\\Models\\User', 4, 'usertoken', 'bddcd6488325b82abb9524cf7a5a26560adbab9409b9c83104e24f72d9495600', '[\"*\"]', NULL, '2021-12-15 13:22:30', '2021-12-15 13:22:30'),
(35, 'App\\Models\\User', 5, 'usertoken', '66616d224cf21dadb095554251798c25604b605088d4cbbb6a12c780e80fed81', '[\"*\"]', NULL, '2021-12-15 13:23:27', '2021-12-15 13:23:27'),
(36, 'App\\Models\\User', 5, 'usertoken', '6d1567ea57fe89648d801647b58b831c9ba69aec95560bd9ed3894bfbb5a4b36', '[\"*\"]', NULL, '2021-12-15 13:23:58', '2021-12-15 13:23:58'),
(37, 'App\\Models\\User', 6, 'usertoken', '3fc7423eb3603e40219dddb2fe28c5f042978891e22af03b0281413be096e0c0', '[\"*\"]', NULL, '2021-12-16 11:08:44', '2021-12-16 11:08:44'),
(38, 'App\\Models\\User', 6, 'usertoken', 'a079383c95f359e8b8883e8bb51177d0bf42c28e243c47c3836a8c5a38a3e6e4', '[\"*\"]', NULL, '2021-12-16 11:09:01', '2021-12-16 11:09:01'),
(39, 'App\\Models\\User', 1, 'usertoken', '0a8c7fa031607802531539e5b1a7c9589cef557508c3226f1bc99d101533878a', '[\"*\"]', NULL, '2021-12-18 23:47:17', '2021-12-18 23:47:17'),
(40, 'App\\Models\\User', 1, 'usertoken', 'a88bcd2e94b71ec5278cabbaf29000df6bd5ea0152962f7ccd322b3efef0008e', '[\"*\"]', NULL, '2021-12-18 23:49:48', '2021-12-18 23:49:48'),
(41, 'App\\Models\\User', 1, 'usertoken', 'ddd49f742e843c7cedc354d7ecbd94d5a49ac4a1fd0004a2da2a977371826c82', '[\"*\"]', NULL, '2021-12-19 05:43:05', '2021-12-19 05:43:05'),
(42, 'App\\Models\\User', 1, 'usertoken', '40647a319ed210f74c229de0c774cad4021eb655ba39d1fbc348bb925e6f7514', '[\"*\"]', NULL, '2021-12-19 05:43:06', '2021-12-19 05:43:06'),
(43, 'App\\Models\\User', 1, 'usertoken', '529058a90480659dae4287f926506ea5fac8adc0529466f0a23e37f58e5926b9', '[\"*\"]', NULL, '2021-12-19 05:43:57', '2021-12-19 05:43:57'),
(44, 'App\\Models\\User', 1, 'usertoken', '6af8c0a09a1823309183a49ceeaf6d6f25904d05ad7153782bd1dfd36066f252', '[\"*\"]', NULL, '2021-12-19 05:44:52', '2021-12-19 05:44:52'),
(45, 'App\\Models\\User', 1, 'usertoken', 'a51309fc2475cdfb3c1a1abf2d48a73118c945ad5da2a87a2dbc51e5ffee10ea', '[\"*\"]', NULL, '2021-12-19 05:51:53', '2021-12-19 05:51:53'),
(46, 'App\\Models\\User', 1, 'usertoken', 'd26bb23b2dce89381f6d88f3f3c9b6bdf935fd2f6749519fb5b4fcd1e381d88f', '[\"*\"]', NULL, '2021-12-19 05:54:55', '2021-12-19 05:54:55'),
(47, 'App\\Models\\User', 1, 'usertoken', '5c68babdd590f86b137c9d62a7e9d80a98e853390ff759234be2a57d871bcf33', '[\"*\"]', NULL, '2021-12-19 05:57:41', '2021-12-19 05:57:41'),
(48, 'App\\Models\\User', 1, 'usertoken', '73c31ec6cba316df6c1af0f18925660a33ec7837e6d866c1c7cd504bc3a1a85e', '[\"*\"]', NULL, '2021-12-19 06:16:53', '2021-12-19 06:16:53'),
(49, 'App\\Models\\User', 1, 'usertoken', 'c0a6beb156c8ef1b9bad80b92b1d5184ec3d116fc71551e0d00e2950189a3ac0', '[\"*\"]', NULL, '2021-12-19 06:28:30', '2021-12-19 06:28:30'),
(50, 'App\\Models\\User', 1, 'usertoken', 'fc5189d7cd9a48573e2d37245fcba240dfb777abffeaf333d54810e943c166f0', '[\"*\"]', NULL, '2021-12-19 06:28:32', '2021-12-19 06:28:32'),
(51, 'App\\Models\\User', 1, 'usertoken', '9b0f70510d8492d89ec1739128eaff1a95acd703c0a996f89968bd305291357a', '[\"*\"]', NULL, '2021-12-19 06:36:43', '2021-12-19 06:36:43'),
(52, 'App\\Models\\User', 1, 'usertoken', 'f673a7528514d1ee4344db3b53e3343ca794f58a937c3024dcae1cd9f4e559b3', '[\"*\"]', NULL, '2021-12-19 06:49:58', '2021-12-19 06:49:58'),
(53, 'App\\Models\\User', 1, 'usertoken', 'a2583962e6686553a6cd889a888e7f9424c5632adefe3348a9fc0ee9b71a0164', '[\"*\"]', NULL, '2021-12-19 07:18:29', '2021-12-19 07:18:29'),
(54, 'App\\Models\\User', 7, 'usertoken', 'b537b720f0f0bcb1dcf1818a57a106574cd2363493aeda682f62290b9014434a', '[\"*\"]', NULL, '2021-12-19 07:29:01', '2021-12-19 07:29:01'),
(55, 'App\\Models\\User', 7, 'usertoken', 'fdda7f4ab7ac943e845515617d98f50f650d29208389c17763952371dc255f9e', '[\"*\"]', NULL, '2021-12-19 07:29:19', '2021-12-19 07:29:19'),
(56, 'App\\Models\\User', 1, 'usertoken', '9dfe24ed5b896a72fc0b74e0c557a70c7fbaa9fd1ff6e229ae35198a225c0577', '[\"*\"]', NULL, '2021-12-19 18:28:37', '2021-12-19 18:28:37'),
(57, 'App\\Models\\User', 1, 'usertoken', '18747b418576f320340cfccfa8556bafe45a7f832438e340f84da531b5768b27', '[\"*\"]', NULL, '2021-12-19 18:28:41', '2021-12-19 18:28:41'),
(58, 'App\\Models\\User', 1, 'usertoken', '6aa969dba745bc646655dc9d2cf7b3dacfb770ab64d0a2c0b0b12f8759fcfae6', '[\"*\"]', NULL, '2021-12-19 18:28:41', '2021-12-19 18:28:41'),
(59, 'App\\Models\\User', 1, 'usertoken', 'b77667cf8967d1546eefa45af87e09bef59180c55b63c2e5247548f6b452a186', '[\"*\"]', NULL, '2021-12-19 18:41:05', '2021-12-19 18:41:05'),
(60, 'App\\Models\\User', 1, 'usertoken', '658c433118673281e6fa5536421f133c10f43f5902531a953c6d42ce6a28970b', '[\"*\"]', NULL, '2021-12-19 18:41:10', '2021-12-19 18:41:10'),
(61, 'App\\Models\\User', 8, 'usertoken', '8e2da046cd06142e7649bcd83c77d638da985b6ee8417f14ab983a558a0c76ac', '[\"*\"]', NULL, '2021-12-19 18:43:24', '2021-12-19 18:43:24'),
(62, 'App\\Models\\User', 8, 'usertoken', '1d52478dc10693aa2fa2f916447c742015f90fc0ac44a2f1c0be2ba1fd30d33f', '[\"*\"]', NULL, '2021-12-19 18:43:55', '2021-12-19 18:43:55'),
(63, 'App\\Models\\User', 9, 'usertoken', '296f88c5d1c1c49ac0f6cbc1cfe3c1e2e7bec2d3401fb8db7a0c1e6f41db8de3', '[\"*\"]', NULL, '2021-12-19 18:54:50', '2021-12-19 18:54:50'),
(64, 'App\\Models\\User', 10, 'usertoken', 'e1377ca434992a4980672759d5d7c4d5c6221e54d2918dd2361321341f5f309b', '[\"*\"]', NULL, '2021-12-19 18:59:21', '2021-12-19 18:59:21'),
(65, 'App\\Models\\User', 10, 'usertoken', '535ccdd30705fa57d3f93649d90e6ace9ecd202f1514300210963f27560ace1f', '[\"*\"]', NULL, '2021-12-19 18:59:53', '2021-12-19 18:59:53'),
(66, 'App\\Models\\User', 1, 'usertoken', '126f5067a2a7c8fefc2548c51b059919d6c76f389a7ab40cb63e705073f43745', '[\"*\"]', NULL, '2021-12-19 20:03:31', '2021-12-19 20:03:31'),
(67, 'App\\Models\\User', 8, 'usertoken', 'dac8a86214186678602cd4e69b9cf7ee7b613ee856aeb544362c4ec07e7065fa', '[\"*\"]', NULL, '2021-12-19 20:05:42', '2021-12-19 20:05:42'),
(68, 'App\\Models\\User', 8, 'usertoken', 'c5e181551b52feff37df405ae4cb20595d2554fff7e9976373db3aa71d5be4be', '[\"*\"]', NULL, '2021-12-19 20:05:57', '2021-12-19 20:05:57'),
(69, 'App\\Models\\User', 9, 'usertoken', '6ed4719971755d1b4c9707f16985bd70a4c37acaa088c1ac8ebea55d0f6253c6', '[\"*\"]', NULL, '2021-12-19 20:25:50', '2021-12-19 20:25:50'),
(70, 'App\\Models\\User', 9, 'usertoken', 'f3712a11c5a7eadc2566697d6836e1c5be69c8931c1c41646f0a69fe55d78df5', '[\"*\"]', NULL, '2021-12-19 20:26:05', '2021-12-19 20:26:05'),
(71, 'App\\Models\\User', 1, 'usertoken', '3a27d76d634f53adc01256493abbf33e1b6ac532e004a313b307796d5484574b', '[\"*\"]', NULL, '2021-12-19 21:02:41', '2021-12-19 21:02:41'),
(72, 'App\\Models\\User', 1, 'usertoken', '564fe582f3d8afe8314ae3934b3191fc277ce49e47f0f1e0d8f5b360b7cc19f9', '[\"*\"]', NULL, '2021-12-19 22:31:41', '2021-12-19 22:31:41'),
(73, 'App\\Models\\User', 1, 'usertoken', '716e94c676eecdc36d27b852a30d489a589f83a14eecaf7f8a12967e4c90478b', '[\"*\"]', NULL, '2021-12-19 22:47:30', '2021-12-19 22:47:30'),
(74, 'App\\Models\\User', 1, 'usertoken', '2b29736996b46c6faf2bc544d704a253736aac98eb735a9ea2cd7e6a8ad0c8d5', '[\"*\"]', NULL, '2021-12-19 23:13:33', '2021-12-19 23:13:33'),
(75, 'App\\Models\\User', 1, 'usertoken', 'bf39f3484fb8260f0a24a53037130d46b371fa1cdc624ca34aa6102dd11b37c4', '[\"*\"]', NULL, '2021-12-20 00:36:01', '2021-12-20 00:36:01'),
(76, 'App\\Models\\User', 1, 'usertoken', 'd5f58abc1074caa98fa5aa6d4d9cdca4672bc4e57b08a6585c7db5553d02c57e', '[\"*\"]', NULL, '2021-12-20 00:59:12', '2021-12-20 00:59:12'),
(77, 'App\\Models\\User', 1, 'usertoken', '1ecdcf6e92ca21d8edc3d4800c3ee4bd4bce827387d7c846dd96020f409f0c05', '[\"*\"]', NULL, '2021-12-20 01:03:35', '2021-12-20 01:03:35'),
(78, 'App\\Models\\User', 1, 'usertoken', '531e59cf702c2a22ed5094913a586192d2287c2d925d85e0c580f56f9df647af', '[\"*\"]', NULL, '2021-12-20 01:40:26', '2021-12-20 01:40:26'),
(79, 'App\\Models\\User', 1, 'usertoken', 'c2f28f19c1d37aad18ea29e3b5191b4be8dfd1ebce1bcbfd979f506aa109f806', '[\"*\"]', NULL, '2021-12-20 02:08:36', '2021-12-20 02:08:36'),
(80, 'App\\Models\\User', 1, 'usertoken', '8b3babecbc49984269cb6f3ffe8311beaa79a3e5e5f17e92f40ef15f15c95eba', '[\"*\"]', NULL, '2021-12-20 02:24:40', '2021-12-20 02:24:40');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `tgl_transaksi` date NOT NULL,
  `pemasukan` int(20) NOT NULL,
  `pengeluaran` int(20) NOT NULL,
  `keterangan` text DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `tgl_transaksi`, `pemasukan`, `pengeluaran`, `keterangan`, `user_id`) VALUES
(37, '2021-09-17', 5000000, 0, 'Modal usaha', 1),
(38, '2021-10-01', 0, 4500000, 'Belanja kebutuhan warung', 1),
(39, '2021-10-01', 0, 30000, 'Ongkos', 1),
(40, '2021-11-19', 50000, 0, 'Laba', 1),
(41, '2021-11-20', 135000, 0, 'Laba', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
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
(1, 'dicoding@gmail.com', NULL, '$2y$10$qjwZuc25XnxDYvFwae8TAuO.hhHiI1AdK32Uf5buPcyZq2NSuKtii', NULL, '2021-12-13 11:19:51', '2021-12-13 11:19:51');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
