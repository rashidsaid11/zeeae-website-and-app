-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 24, 2026 at 04:49 AM
-- Server version: 11.8.3-MariaDB-log
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u565340099_zeeae1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_credentials`
--

CREATE TABLE `admin_credentials` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `admin_credentials`
--

INSERT INTO `admin_credentials` (`id`, `username`, `password_hash`, `updated_at`) VALUES
(1, 'admin', '$2y$10$QT7dY3Ro.cduCNvA1Z9.FOZNUd/bltDJVuu6QdFJdwy1m2LTT9eqq', '2026-03-18 03:30:46');

-- --------------------------------------------------------

--
-- Table structure for table `admin_login_log`
--

CREATE TABLE `admin_login_log` (
  `id` int(11) NOT NULL,
  `admin_username` varchar(100) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `status` enum('success','failed') DEFAULT 'success',
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `admin_login_log`
--

INSERT INTO `admin_login_log` (`id`, `admin_username`, `ip_address`, `user_agent`, `status`, `created_at`) VALUES
(1, 'admin', '109.177.20.120', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', 'success', '2026-03-18 03:17:22'),
(2, 'admin', '109.177.20.120', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', 'failed', '2026-03-18 03:19:49'),
(3, 'admin', '109.177.20.120', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', 'success', '2026-03-18 03:19:58'),
(4, 'admin', '109.177.20.120', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', 'failed', '2026-03-18 03:21:14'),
(5, 'admin', '109.177.20.120', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', 'failed', '2026-03-18 03:21:24'),
(6, 'admin', '109.177.20.120', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', 'success', '2026-03-18 03:21:40'),
(7, 'admin', '109.177.20.120', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Mobile/15E148 Safari/604.1', 'success', '2026-03-18 03:24:29'),
(8, 'admin', '109.177.20.120', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', 'success', '2026-03-18 03:29:55'),
(9, 'admin', '109.177.20.120', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', 'failed', '2026-03-18 03:31:03'),
(10, 'admin', '109.177.20.120', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', 'success', '2026-03-18 03:31:11'),
(11, 'Admin', '109.177.20.120', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Mobile/15E148 Safari/604.1', 'success', '2026-03-18 03:31:42'),
(12, 'admin', '109.177.20.120', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', 'success', '2026-03-18 07:48:16'),
(13, 'admin', '109.177.20.120', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'success', '2026-03-18 20:45:29'),
(14, 'admin', '109.177.20.120', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'success', '2026-03-19 04:08:36'),
(15, 'admin', '109.177.20.120', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'success', '2026-03-19 11:39:08'),
(16, 'admin', '109.177.26.228', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'failed', '2026-03-19 20:35:52'),
(17, 'admin', '109.177.26.228', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'failed', '2026-03-19 20:35:59'),
(18, 'admin', '109.177.26.228', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'success', '2026-03-19 20:36:06'),
(19, 'admin', '109.177.26.228', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'success', '2026-03-20 01:19:05'),
(20, 'admin', '109.177.26.228', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'success', '2026-03-20 07:49:24'),
(21, 'admin', '5.193.132.2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'success', '2026-03-21 12:11:10'),
(22, 'admin', '109.177.62.142', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'success', '2026-03-21 22:12:40'),
(23, 'admin', '109.177.62.142', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'success', '2026-03-21 22:42:26'),
(24, 'Admin', '109.177.48.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'failed', '2026-03-23 10:50:46'),
(25, 'Admin', '109.177.48.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'failed', '2026-03-23 10:50:58'),
(26, 'Admin', '109.177.48.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'success', '2026-03-23 10:51:05'),
(27, 'admin', '109.177.48.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'success', '2026-03-23 10:57:49'),
(28, 'admin', '109.177.48.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'failed', '2026-03-23 14:59:07'),
(29, 'admin', '109.177.48.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'success', '2026-03-23 15:01:00'),
(30, 'admin', '109.177.48.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'success', '2026-03-23 15:03:45'),
(31, 'admin', '109.177.48.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'success', '2026-03-24 08:08:35');

-- --------------------------------------------------------

--
-- Table structure for table `admin_popup_queue`
--

CREATE TABLE `admin_popup_queue` (
  `id` int(10) UNSIGNED NOT NULL,
  `target_type` enum('all','segment','uid') DEFAULT 'all',
  `target_filter` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`target_filter`)),
  `target_uids` text DEFAULT NULL,
  `popup_type` varchar(20) DEFAULT 'info',
  `message` text NOT NULL,
  `popup_cta_label` varchar(80) DEFAULT '',
  `created_by` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `sent_at` datetime DEFAULT NULL,
  `status` enum('pending','sent','cancelled') DEFAULT 'pending',
  `reach_count` int(10) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_popup_queue`
--

INSERT INTO `admin_popup_queue` (`id`, `target_type`, `target_filter`, `target_uids`, `popup_type`, `message`, `popup_cta_label`, `created_by`, `created_at`, `sent_at`, `status`, `reach_count`) VALUES
(1, 'all', NULL, NULL, 'info', 'hy', '', 'admin', '2026-03-20 00:52:43', NULL, 'cancelled', 0),
(2, 'all', NULL, NULL, 'alert', 'sdfsfss', '', 'admin', '2026-03-20 01:19:24', NULL, 'cancelled', 0),
(3, 'all', NULL, NULL, 'alert', 'sdfsfss', '', 'admin', '2026-03-20 01:24:33', NULL, 'cancelled', 0),
(4, 'all', NULL, NULL, 'profile_questions', 'Profile questions popup', 'Start', 'admin', '2026-03-20 01:42:06', NULL, 'cancelled', 0),
(5, 'all', NULL, NULL, 'profile_questions', 'Profile questions popup', 'Start', 'admin', '2026-03-20 01:44:45', NULL, 'cancelled', 0),
(6, 'all', NULL, NULL, 'profile_questions', 'Profile questions popup', 'Start', 'admin', '2026-03-20 01:45:36', NULL, 'cancelled', 0),
(7, 'all', NULL, NULL, 'profile_questions', 'Profile questions popup', 'Start', 'admin', '2026-03-20 01:53:01', NULL, 'cancelled', 0);

-- --------------------------------------------------------

--
-- Table structure for table `admin_sessions`
--

CREATE TABLE `admin_sessions` (
  `id` int(11) NOT NULL,
  `session_token` varchar(64) NOT NULL,
  `admin_username` varchar(100) NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '',
  `user_agent` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `last_active` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `admin_sessions`
--

INSERT INTO `admin_sessions` (`id`, `session_token`, `admin_username`, `ip_address`, `user_agent`, `created_at`, `last_active`, `is_active`) VALUES
(1, '9e6df4fdaba4e33047f7c3774368c9cd2dbd3bfb9c9b00d99e083aac4d72ba89', 'admin', '109.177.20.120', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-18 03:06:20', '2026-03-18 03:17:56', 0),
(2, '4dadef1127be22f6950e6fb5bb697ea92ae93f4f6d65e4e07b50e3a360974f8a', 'admin', '109.177.20.120', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-18 03:17:22', '2026-03-18 03:20:07', 0),
(3, '3ad68891a2e28e3cba74a5a34751ea5a1adc2e306f7ce2849acceda48d6db13b', 'admin', '109.177.20.120', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-18 03:19:58', '2026-03-18 03:25:05', 0),
(4, '21bb565e881adc299f91af313ca64e2e25bd4015689c710ca68f14f1128aedbf', 'admin', '109.177.20.120', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-18 03:21:40', '2026-03-18 03:31:50', 0),
(5, '3322f4e40a1ebc706cd6a7913411526a07d5a06173f893134962256657aee316', 'admin', '109.177.20.120', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Mobile/15E148 Safari/604.1', '2026-03-18 03:24:29', '2026-03-18 03:27:15', 0),
(6, 'accf7f7b1362a14e6589fc2f66d14238117f5debf11b41f6b4c87d0a8d3dac29', 'admin', '109.177.20.120', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-18 03:29:55', '2026-03-18 03:31:50', 0),
(7, '08a39ea530a227c12a3d1b31917ca2d7699363404ffa24a86debe195a484181d', 'admin', '109.177.20.120', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-18 03:31:11', '2026-03-18 07:50:14', 0),
(8, '91e2a5d64b1f5be606410acd085b38d1d3b9988d2739974eecddc811f3cdf696', 'Admin', '109.177.20.120', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Mobile/15E148 Safari/604.1', '2026-03-18 03:31:42', '2026-03-18 03:31:50', 0),
(9, '53fd7e1e2dd20b1970bd93fd8a434eb65d1f847ce945527e8fbf1c576efb0bbc', 'admin', '109.177.20.120', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-18 07:48:16', '2026-03-18 20:47:53', 0),
(10, '18d980a8ff082b9c9316b9b21b695f48ca50ec87d67f6df7eec9d92ec8d800b2', 'admin', '109.177.20.120', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-18 20:45:29', '2026-03-19 04:08:44', 0),
(11, '95882627ef77701a73df9c1a4aecd6339dd8ba147faa7a521ece378fde3487c1', 'admin', '109.177.20.120', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 04:08:36', '2026-03-19 21:49:56', 0),
(12, 'c0dbda1703f3df248dfd304a8347f2afa175f0b22a5521e1b9691bcc6a349923', 'admin', '109.177.26.228', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 11:39:08', '2026-03-19 21:49:56', 0),
(13, '9d333baecf7c63cee0ad1f60408e00b026b44cb03635657f03568c7b3c5e6385', 'admin', '109.177.26.228', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 20:36:06', '2026-03-20 07:46:21', 0),
(14, '46f7669926d631e097ee9c55fb2593deffac79807d720c8963e7ed906cca9383', 'admin', '109.177.26.228', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-20 01:19:05', '2026-03-21 22:56:28', 0),
(15, '334c6c93943e6f244aa56509b40c65eecc92b87d16ed3183b8656104a9dedb86', 'admin', '109.177.26.228', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-20 07:49:24', '2026-03-21 22:56:28', 0),
(16, 'e2191273c24ef588ebb8e0bd972cce802c5d5762542770ddd16e33da2f602f13', 'admin', '5.193.132.2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-21 12:11:10', '2026-03-21 22:56:28', 0),
(17, '40750fd34ad36b53ba7b16e5547799fc3c56d8b606d1add80b101e2ed49457e4', 'admin', '109.177.62.142', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-21 22:12:40', '2026-03-21 22:56:28', 0),
(18, '30e1d2070a1c9a7ea8cd71a05eb1c8d6bccd1637174c3e8a1fc84e5b7318af09', 'admin', '109.177.62.142', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-21 22:42:26', '2026-03-22 16:46:02', 1),
(19, 'bf260eda98b124c995c2c4dc0f5a96f451387e77b845b2cd654cc03effea9b66', 'Admin', '109.177.48.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-23 10:51:05', '2026-03-23 10:56:28', 1),
(20, 'e7301d3f3118ea70e58bce586c426e1fe47a9e42b82ff508e0861923dd11e2a7', 'admin', '109.177.48.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-23 10:57:49', '2026-03-23 11:14:49', 1),
(21, 'f117305447febc0247b02732e905e1b538b1a42c2fabb1269f603ee3b92fb58f', 'admin', '109.177.48.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-23 15:01:00', '2026-03-23 15:02:54', 1),
(22, '42d8a31a31df9de47638987927750c7f818cb8cf08ec34a6d2177cee07b493f0', 'admin', '109.177.48.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-23 15:03:45', '2026-03-23 15:12:09', 1),
(23, '93e41a0e9f95c2eaba7f05e37ad3abd4baff05c54cf09a01b80bf2c5736a1020', 'admin', '109.177.48.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-24 08:08:35', '2026-03-24 08:48:57', 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin_settings`
--

CREATE TABLE `admin_settings` (
  `key` varchar(100) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_settings`
--

INSERT INTO `admin_settings` (`key`, `value`) VALUES
('commission_rate_default', '5.00'),
('contact_email', 'admin@zeeae.com'),
('listing_expiry_days', '30'),
('max_property_images', '10'),
('platform_fee_default', '0.00'),
('site_name', 'ZeeAE Properties'),
('subscription_price', '299');

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password_hash`, `created_at`) VALUES
(1, 'admin', '$2a$12$iJYdKyWFaPuJ8O0jIzTZQe3tRbTPQirPJc8LfJzHGx8lojFzXR9G2', '2026-03-01 08:41:26');

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `ad_type` enum('direct','gam','adsterra','adcolony','inmobi','html') NOT NULL DEFAULT 'direct',
  `video_url` varchar(512) NOT NULL,
  `video_id` int(11) DEFAULT NULL,
  `network_config` text DEFAULT NULL,
  `target_emirate` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `target_area` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `skip_after_sec` int(11) DEFAULT 5,
  `is_active` tinyint(1) DEFAULT 1,
  `priority` int(11) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `name`, `ad_type`, `video_url`, `video_id`, `network_config`, `target_emirate`, `target_area`, `skip_after_sec`, `is_active`, `priority`, `created_at`) VALUES
(260, 'Ajman City — 1.mp4', 'direct', 'https://zeeae.com/ads/1.mp4', NULL, NULL, 'ajman', 'Ajman City', 5, 1, 0, '2026-03-24 08:12:33'),
(261, 'Al Rumailah 2 - الرميلة ٢ — 1.mp4', 'direct', 'https://zeeae.com/ads/1.mp4', NULL, NULL, 'ajman', 'Al Rumailah 2 - الرميلة ٢', 5, 1, 0, '2026-03-24 08:12:33'),
(262, 'UAQ City — 1.mp4', 'direct', 'https://zeeae.com/ads/1.mp4', NULL, NULL, 'umm_al_quwain', 'UAQ City', 5, 1, 0, '2026-03-24 08:12:33'),
(263, 'Al Rawda 3 - الروضة ٣ — 1.mp4', 'direct', 'https://zeeae.com/ads/1.mp4', NULL, NULL, 'ajman', 'Al Rawda 3 - الروضة ٣', 5, 1, 0, '2026-03-24 08:12:33'),
(264, 'Al Zahra - الزهراء — 1.mp4', 'direct', 'https://zeeae.com/ads/1.mp4', NULL, NULL, 'ajman', 'Al Zahra - الزهراء', 5, 1, 0, '2026-03-24 08:12:33'),
(265, 'Ajman Industrial 7 - الصناعية ٧ — 1.mp4', 'direct', 'https://zeeae.com/ads/1.mp4', NULL, NULL, 'ajman', 'Ajman Industrial 7 - الصناعية ٧', 5, 1, 0, '2026-03-24 08:12:33'),
(266, 'Al Nuaimiya — 1.mp4', 'direct', 'https://zeeae.com/ads/1.mp4', NULL, NULL, 'ajman', 'Al Nuaimiya', 5, 1, 0, '2026-03-24 08:12:33'),
(267, 'Dubai Marina — 1.mp4', 'direct', 'https://zeeae.com/ads/1.mp4', NULL, NULL, 'dubai', 'Dubai Marina', 5, 1, 0, '2026-03-24 08:12:33'),
(268, 'Al Rashidiya 3 - الراشدية ٣ — 1.mp4', 'direct', 'https://zeeae.com/ads/1.mp4', NULL, NULL, 'ajman', 'Al Rashidiya 3 - الراشدية ٣', 5, 1, 0, '2026-03-24 08:12:33'),
(269, 'City Center — 1.mp4', 'direct', 'https://zeeae.com/ads/1.mp4', NULL, NULL, 'abu_dhabi', 'City Center', 5, 1, 0, '2026-03-24 08:12:33'),
(270, 'Downtown Dubai — 1.mp4', 'direct', 'https://zeeae.com/ads/1.mp4', NULL, NULL, 'dubai', 'Downtown Dubai', 5, 1, 0, '2026-03-24 08:12:33'),
(271, 'Liwara 1 - ليوارة ١ — 1.mp4', 'direct', 'https://zeeae.com/ads/1.mp4', NULL, NULL, 'ajman', 'Liwara 1 - ليوارة ١', 5, 1, 0, '2026-03-24 08:12:33'),
(272, 'Al Qasimia — 1.mp4', 'direct', 'https://zeeae.com/ads/1.mp4', NULL, NULL, 'sharjah', 'Al Qasimia', 5, 1, 0, '2026-03-24 08:12:33'),
(273, 'Al Rashidiya 2 - الراشدية ٢ — 1.mp4', 'direct', 'https://zeeae.com/ads/1.mp4', NULL, NULL, 'ajman', 'Al Rashidiya 2 - الراشدية ٢', 5, 1, 0, '2026-03-24 08:12:33'),
(274, 'Reem Island — 1.mp4', 'direct', 'https://zeeae.com/ads/1.mp4', NULL, NULL, 'abu_dhabi', 'Reem Island', 5, 1, 0, '2026-03-24 08:12:33'),
(275, 'Al Rumailah 1 - الرميلة ١ — 1.mp4', 'direct', 'https://zeeae.com/ads/1.mp4', NULL, NULL, 'ajman', 'Al Rumailah 1 - الرميلة ١', 5, 1, 0, '2026-03-24 08:12:33'),
(276, 'Ajman Industrial 1 - الصناعية ١ — 1.mp4', 'direct', 'https://zeeae.com/ads/1.mp4', NULL, NULL, 'ajman', 'Ajman Industrial 1 - الصناعية ١', 5, 1, 0, '2026-03-24 08:12:33'),
(277, 'Ajman Industrial 4 - الصناعية ٤ — 1.mp4', 'direct', 'https://zeeae.com/ads/1.mp4', NULL, NULL, 'ajman', 'Ajman Industrial 4 - الصناعية ٤', 5, 1, 0, '2026-03-24 08:12:33'),
(278, 'Al Jurf 2 - الجرف ٢ — 1.mp4', 'direct', 'https://zeeae.com/ads/1.mp4', NULL, NULL, 'ajman', 'Al Jurf 2 - الجرف ٢', 5, 1, 0, '2026-03-24 08:12:33'),
(279, 'Al Nuaimiya 1 - النعيمية ١ — 1.mp4', 'direct', 'https://zeeae.com/ads/1.mp4', NULL, NULL, 'ajman', 'Al Nuaimiya 1 - النعيمية ١', 5, 1, 0, '2026-03-24 08:12:33'),
(280, 'Liwara 2 - ليوارة ٢ — 1.mp4', 'direct', 'https://zeeae.com/ads/1.mp4', NULL, NULL, 'ajman', 'Liwara 2 - ليوارة ٢', 5, 1, 0, '2026-03-24 08:12:33');

-- --------------------------------------------------------

--
-- Table structure for table `ad_events`
--

CREATE TABLE `ad_events` (
  `id` bigint(20) NOT NULL,
  `ad_id` int(11) NOT NULL,
  `session_id` varchar(64) NOT NULL,
  `event_type` enum('impression','skip','complete','click') NOT NULL,
  `skip_at_sec` int(11) DEFAULT NULL,
  `watch_sec` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ad_networks`
--

CREATE TABLE `ad_networks` (
  `id` int(11) NOT NULL,
  `network_type` varchar(32) NOT NULL,
  `label` varchar(128) NOT NULL,
  `credentials` text DEFAULT NULL,
  `is_enabled` tinyint(1) DEFAULT 0,
  `last_tested` datetime DEFAULT NULL,
  `test_status` varchar(16) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `ad_networks`
--

INSERT INTO `ad_networks` (`id`, `network_type`, `label`, `credentials`, `is_enabled`, `last_tested`, `test_status`, `notes`, `created_at`, `updated_at`) VALUES
(1, 'direct', 'Direct / Local', '[]', 1, NULL, NULL, '+971552268450', '2026-03-19 03:36:33', '2026-03-19 17:35:37'),
(2, 'gam', 'Google Ad Manager (GAM)', '{\"network_code\":\"\",\"ad_unit_path\":\"\",\"vast_base_url\":\"\",\"api_key\":\"\"}', 0, NULL, NULL, '', '2026-03-19 03:36:33', '2026-03-19 14:00:02'),
(3, 'adsterra', 'Adsterra', '{\"zone_id\":\"\",\"api_key\":\"\",\"account_email\":\"\",\"ad_format\":\"popunder\"}', 0, NULL, NULL, '', '2026-03-19 03:36:33', '2026-03-19 19:32:01'),
(4, 'adcolony', 'AdColony / Digital Turbine', '{\"app_id\":\"\",\"zone_id\":\"\",\"api_key\":\"\",\"api_secret\":\"\"}', 0, NULL, NULL, '', '2026-03-19 03:36:33', '2026-03-19 13:59:56'),
(5, 'inmobi', 'InMobi', '{}', 0, NULL, NULL, NULL, '2026-03-19 03:36:33', '2026-03-19 03:36:33'),
(6, 'html', 'Custom / Publift / Ezoic', '{}', 0, NULL, NULL, NULL, '2026-03-19 03:36:33', '2026-03-19 03:36:33');

-- --------------------------------------------------------

--
-- Table structure for table `ad_session_history`
--

CREATE TABLE `ad_session_history` (
  `id` bigint(20) NOT NULL,
  `session_id` varchar(64) NOT NULL,
  `video_id` int(11) NOT NULL,
  `seen_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `ad_session_history`
--

INSERT INTO `ad_session_history` (`id`, `session_id`, `video_id`, `seen_at`) VALUES
(1, '1ksdgj02k3vmmxgcccu', 3, '2026-03-19 16:34:19'),
(2, '1ksdgj02k3vmmxgcccu', 3, '2026-03-19 16:34:30'),
(3, '1ksdgj02k3vmmxgcccu', 5, '2026-03-19 16:53:16'),
(4, '1ksdgj02k3vmmxgcccu', 4, '2026-03-19 16:53:27'),
(5, '1ksdgj02k3vmmxgcccu', 5, '2026-03-19 16:53:40'),
(6, '1ksdgj02k3vmmxgcccu', 4, '2026-03-19 16:53:49'),
(7, '1ksdgj02k3vmmxgcccu', 5, '2026-03-19 16:54:00'),
(8, 'jor1dfwpvvbmmxdhw6e', 14, '2026-03-19 17:37:31'),
(9, 'jor1dfwpvvbmmxdhw6e', 13, '2026-03-19 17:37:40'),
(10, 'jor1dfwpvvbmmxdhw6e', 14, '2026-03-19 17:42:16'),
(11, 'jor1dfwpvvbmmxdhw6e', 13, '2026-03-19 17:42:32'),
(12, 'jor1dfwpvvbmmxdhw6e', 14, '2026-03-19 17:53:10'),
(13, '7o4mlsgokn8mmxoncs3', 228, '2026-03-19 20:33:59'),
(14, '7o4mlsgokn8mmxoncs3', 235, '2026-03-19 20:34:10'),
(15, '7o4mlsgokn8mmxoncs3', 237, '2026-03-19 20:34:19'),
(16, '7o4mlsgokn8mmxoncs3', 232, '2026-03-19 20:34:28'),
(17, '7o4mlsgokn8mmxoncs3', 230, '2026-03-19 20:34:42'),
(18, '7o4mlsgokn8mmxoncs3', 230, '2026-03-19 20:35:00'),
(19, '7o4mlsgokn8mmxoncs3', 236, '2026-03-19 20:35:13'),
(20, 'e8md4vcx8zummxqb3ur', 228, '2026-03-19 21:13:20'),
(21, 'e8md4vcx8zummxqb3ur', 236, '2026-03-19 21:13:33'),
(22, 'e8md4vcx8zummxqb3ur', 234, '2026-03-19 21:13:42'),
(23, 'e8md4vcx8zummxqb3ur', 225, '2026-03-19 21:13:57'),
(24, 'e8md4vcx8zummxqb3ur', 237, '2026-03-19 21:14:10'),
(25, 'e8md4vcx8zummxqb3ur', 233, '2026-03-19 21:14:27'),
(26, 'e8md4vcx8zummxqb3ur', 232, '2026-03-19 21:14:34'),
(27, 'e8md4vcx8zummxqb3ur', 238, '2026-03-19 21:15:17'),
(28, 'e8md4vcx8zummxqb3ur', 227, '2026-03-19 21:15:25'),
(29, 'e8md4vcx8zummxqb3ur', 226, '2026-03-19 21:15:45'),
(30, 'e8md4vcx8zummxqb3ur', 235, '2026-03-19 21:15:56'),
(31, 'e8md4vcx8zummxqb3ur', 224, '2026-03-19 21:16:16'),
(32, 'uj7ch3sbrdnmmxprrvm', 230, '2026-03-19 21:25:18'),
(33, 'uj7ch3sbrdnmmxprrvm', 224, '2026-03-19 21:30:03'),
(34, 'uj7ch3sbrdnmmxprrvm', 232, '2026-03-19 21:30:25'),
(35, 'uj7ch3sbrdnmmxprrvm', 227, '2026-03-19 21:30:36'),
(36, 'uj7ch3sbrdnmmxprrvm', 238, '2026-03-19 21:30:46'),
(37, 'uj7ch3sbrdnmmxprrvm', 228, '2026-03-19 21:31:53'),
(38, 'uj7ch3sbrdnmmxprrvm', 228, '2026-03-19 21:32:06'),
(39, 'uj7ch3sbrdnmmxprrvm', 231, '2026-03-19 21:33:21'),
(40, 'uj7ch3sbrdnmmxprrvm', 226, '2026-03-19 21:34:44'),
(41, 'qjpadl5ezummxr3hb8', 226, '2026-03-19 21:35:28'),
(42, 'qjpadl5ezummxr3hb8', 232, '2026-03-19 21:35:40'),
(43, 'qjpadl5ezummxr3hb8', 228, '2026-03-19 21:35:51'),
(44, 'qjpadl5ezummxr3hb8', 236, '2026-03-19 21:36:06'),
(45, 'qjpadl5ezummxr3hb8', 238, '2026-03-19 21:36:18'),
(46, 'uj7ch3sbrdnmmxprrvm', 229, '2026-03-19 21:37:37'),
(47, 'uj7ch3sbrdnmmxprrvm', 225, '2026-03-19 21:37:53'),
(48, 'uj7ch3sbrdnmmxprrvm', 228, '2026-03-19 21:38:15'),
(49, 'uj7ch3sbrdnmmxprrvm', 237, '2026-03-19 21:38:27'),
(50, 'uj7ch3sbrdnmmxprrvm', 228, '2026-03-19 21:38:36'),
(51, 'uj7ch3sbrdnmmxprrvm', 235, '2026-03-19 21:39:26'),
(52, 'uj7ch3sbrdnmmxprrvm', 233, '2026-03-19 21:39:57'),
(53, 'uj7ch3sbrdnmmxprrvm', 228, '2026-03-19 21:40:15'),
(54, 'uj7ch3sbrdnmmxprrvm', 236, '2026-03-19 21:40:36'),
(55, 'uj7ch3sbrdnmmxprrvm', 234, '2026-03-19 21:40:49'),
(56, 'uj7ch3sbrdnmmxprrvm', 228, '2026-03-19 21:41:00'),
(57, 'uj7ch3sbrdnmmxprrvm', 225, '2026-03-19 21:41:22'),
(58, 'vlwwztrwicdmmxrmu5y', 226, '2026-03-19 21:50:27'),
(59, 'uj7ch3sbrdnmmxprrvm', 225, '2026-03-19 21:52:06'),
(60, 'uj7ch3sbrdnmmxprrvm', 226, '2026-03-19 22:03:01'),
(61, 'yoy5h7vve7nmmxwbq3e', 238, '2026-03-20 00:02:01'),
(62, 'uj7ch3sbrdnmmxprrvm', 229, '2026-03-20 00:34:25'),
(63, '46zmd03mpxymmxy32o3', 229, '2026-03-20 00:51:06'),
(64, '46zmd03mpxymmxy32o3', 227, '2026-03-20 00:51:27'),
(65, 'uj7ch3sbrdnmmxprrvm', 225, '2026-03-20 00:53:03'),
(66, 'uj7ch3sbrdnmmxprrvm', 228, '2026-03-20 00:53:27'),
(67, 'uj7ch3sbrdnmmxprrvm', 229, '2026-03-20 00:53:42'),
(68, '3bjlspzap4vmmxycnia', 228, '2026-03-20 00:58:41'),
(69, 'uzkhzqjblbsmmxyjtoo', 230, '2026-03-20 01:04:13'),
(70, 'nwpbr49p4immxyzl6p', 227, '2026-03-20 01:16:22'),
(71, 'nwpbr49p4immxyzl6p', 225, '2026-03-20 01:16:35'),
(72, 'uj7ch3sbrdnmmxprrvm', 238, '2026-03-20 01:20:06'),
(73, '5icgdzk2eulmmxzjlof', 228, '2026-03-20 01:31:57'),
(74, 'uj7ch3sbrdnmmxprrvm', 229, '2026-03-20 01:42:17'),
(75, '9khzzm3jikmmy1k0b7', 225, '2026-03-20 02:28:13'),
(76, '9khzzm3jikmmy1k0b7', 229, '2026-03-20 02:28:28'),
(77, 'aytwi4movy8mmy0bjdk', 233, '2026-03-20 02:56:53'),
(78, 'aytwi4movy8mmy0bjdk', 238, '2026-03-20 02:57:11'),
(79, 'xpf9u679dt9mmy2m86i', 228, '2026-03-20 02:57:59'),
(80, 'afvy4n6s3qmmy0cvnt', 235, '2026-03-20 04:05:59'),
(81, 'zuly23x7rxmmy5thip', 235, '2026-03-20 04:28:01'),
(82, 'zuly23x7rxmmy5thip', 237, '2026-03-20 04:41:01'),
(83, 'rmhq2w6n19immydhkpp', 225, '2026-03-20 08:02:25'),
(84, '41b2uylfqdqmmzenbyn', 224, '2026-03-21 01:22:28'),
(85, 'kqutrrid7ymmzgo4gq', 235, '2026-03-21 02:19:09'),
(86, 'oh9jvkx0wommzt9udp', 238, '2026-03-21 08:11:56'),
(87, 'oh9jvkx0wommzt9udp', 235, '2026-03-21 08:12:18'),
(88, 'oh9jvkx0wommzt9udp', 238, '2026-03-21 08:12:35'),
(89, 'oh9jvkx0wommzt9udp', 238, '2026-03-21 08:12:54'),
(90, 'egva5qiz4q9mmzu3vxv', 231, '2026-03-21 08:35:17'),
(91, 'egva5qiz4q9mmzu3vxv', 231, '2026-03-21 08:35:42'),
(92, 'rfkc3f9ilrimmzu4vpl', 230, '2026-03-21 08:36:01'),
(93, 'rfkc3f9ilrimmzu4vpl', 226, '2026-03-21 08:58:00'),
(94, 'rfkc3f9ilrimmzu4vpl', 234, '2026-03-21 08:58:09'),
(95, 'rfkc3f9ilrimmzu4vpl', 238, '2026-03-21 08:58:53'),
(96, 'pg403q7onh8mmzvj17z', 231, '2026-03-21 09:15:12'),
(97, 'pg403q7onh8mmzvj17z', 234, '2026-03-21 09:15:20'),
(98, 'pg403q7onh8mmzvj17z', 233, '2026-03-21 09:16:05'),
(99, 'pg403q7onh8mmzvj17z', 231, '2026-03-21 09:16:14'),
(100, 'pg403q7onh8mmzvj17z', 227, '2026-03-21 09:16:22'),
(101, 'pg403q7onh8mmzvj17z', 231, '2026-03-21 09:16:33'),
(102, 'pg403q7onh8mmzvj17z', 224, '2026-03-21 09:16:43'),
(103, 'pg403q7onh8mmzvj17z', 225, '2026-03-21 09:16:52'),
(104, 'pg403q7onh8mmzvj17z', 230, '2026-03-21 09:17:07'),
(105, 'p24kdviamrdmmzvyh4z', 235, '2026-03-21 09:27:02'),
(106, 'mfi30on2o5nmmzw54vb', 227, '2026-03-21 09:32:27'),
(107, 'mfi30on2o5nmmzw54vb', 238, '2026-03-21 09:32:54'),
(108, 'mfi30on2o5nmmzw54vb', 224, '2026-03-21 09:33:15'),
(109, 'mfi30on2o5nmmzw54vb', 233, '2026-03-21 09:33:50'),
(110, 'mfi30on2o5nmmzw54vb', 238, '2026-03-21 09:34:13'),
(111, 's5adh7xi4u9mmzwdq35', 235, '2026-03-21 09:38:55'),
(112, '23t8ukirdfmmzwgg1l', 229, '2026-03-21 09:40:58'),
(113, '23t8ukirdfmmzwgg1l', 229, '2026-03-21 09:41:07'),
(114, '23t8ukirdfmmzwgg1l', 225, '2026-03-21 09:44:16'),
(115, 't9zxfzrghpfmmzwnm3h', 228, '2026-03-21 09:46:32'),
(116, '23t8ukirdfmmzwgg1l', 235, '2026-03-21 09:46:46'),
(117, '23t8ukirdfmmzwgg1l', 234, '2026-03-21 09:47:12'),
(118, 'z2tr5fejbwcmmzx4d6t', 231, '2026-03-21 10:01:14'),
(119, 'z2tr5fejbwcmmzx4d6t', 224, '2026-03-21 10:01:57'),
(120, 'z2tr5fejbwcmmzx4d6t', 227, '2026-03-21 10:02:04'),
(121, '4vha27jjstmmzxt5y7', 238, '2026-03-21 10:18:58'),
(122, '4vha27jjstmmzxt5y7', 238, '2026-03-21 10:19:11'),
(123, '4vha27jjstmmzxt5y7', 235, '2026-03-21 10:20:36'),
(124, '4vha27jjstmmzxt5y7', 230, '2026-03-21 10:21:02'),
(125, '7zv6ojnktaqmmzxx0gx', 231, '2026-03-21 10:21:50'),
(126, 'd9h6mqiz21mmzz4qcg', 235, '2026-03-21 10:57:20'),
(127, 'ubojbbli3mlmmzz6xgv', 236, '2026-03-21 11:05:42'),
(128, 'gi18xatqezmn006db3', 231, '2026-03-21 11:28:39'),
(129, 'gi18xatqezmn006db3', 224, '2026-03-21 11:29:01'),
(130, 'gi18xatqezmn006db3', 238, '2026-03-21 11:29:11'),
(131, 'r3tr8wue90imn02dzqf', 233, '2026-03-21 12:27:51'),
(132, 'tvtopo7ivkomn02gad8', 231, '2026-03-21 12:28:53'),
(133, '231949zz3y3imn02h1ee', 228, '2026-03-21 12:29:29'),
(134, '8mobtujnizbmn02sfuy', 230, '2026-03-21 12:38:21'),
(135, 'ityi43z3bbmn039h5n', 238, '2026-03-21 12:51:46'),
(136, 'jbv9at7gedmn03krlk', 238, '2026-03-21 13:00:18'),
(137, 'jbv9at7gedmn03krlk', 238, '2026-03-21 13:01:12'),
(138, 'i5nt477yi5smn0oe4ee', 229, '2026-03-21 22:44:44'),
(139, '91b9mawito7mn0ot5iq', 231, '2026-03-21 22:54:50'),
(140, 'dslxvtfdzsmn1p5dwe', 228, '2026-03-22 15:52:04'),
(141, '3xs8tr7hf8imn0pf0gk', 227, '2026-03-22 16:44:18'),
(142, '3xs8tr7hf8imn0pf0gk', 238, '2026-03-22 16:44:36'),
(143, '3xs8tr7hf8imn0pf0gk', 233, '2026-03-22 16:44:51'),
(144, '3xs8tr7hf8imn0pf0gk', 228, '2026-03-22 16:44:59'),
(145, 'nuz0ov28fjmn1tlr8p', 238, '2026-03-22 18:00:57'),
(146, 'nuz0ov28fjmn1tlr8p', 225, '2026-03-22 18:01:08'),
(147, 'nuz0ov28fjmn1tlr8p', 230, '2026-03-22 18:01:17'),
(148, 'nuz0ov28fjmn1tlr8p', 228, '2026-03-22 18:02:06'),
(149, 'nuz0ov28fjmn1tlr8p', 238, '2026-03-22 18:03:29'),
(150, 'itegppf4qsqmn22knu9', 232, '2026-03-22 22:10:38'),
(151, 'n7abt03n0tbmn2o5tbg', 238, '2026-03-23 08:12:15'),
(152, 'n7abt03n0tbmn2o5tbg', 227, '2026-03-23 08:12:47'),
(153, 'p5e45cvzdymn2q0fid', 237, '2026-03-23 09:18:08'),
(154, '1orbqc8ih9qmn2v8sre', 231, '2026-03-23 11:30:31'),
(155, '1orbqc8ih9qmn2v8sre', 227, '2026-03-23 11:30:39'),
(156, '1orbqc8ih9qmn2v8sre', 238, '2026-03-23 11:30:49'),
(157, '0dh4j9lml6comn32yf6p', 238, '2026-03-23 15:06:15'),
(158, '0dh4j9lml6comn32yf6p', 237, '2026-03-23 15:06:31'),
(159, '0dh4j9lml6comn32yf6p', 238, '2026-03-23 15:08:47'),
(160, '0dh4j9lml6comn32yf6p', 238, '2026-03-23 15:08:51'),
(161, '0dh4j9lml6comn32yf6p', 231, '2026-03-23 15:10:18'),
(162, '0dh4j9lml6comn32yf6p', 238, '2026-03-23 15:12:02'),
(163, 'og4a47kdu4mn43ghrm', 238, '2026-03-24 08:08:04');

-- --------------------------------------------------------

--
-- Table structure for table `ad_videos`
--

CREATE TABLE `ad_videos` (
  `id` int(11) NOT NULL,
  `folder_id` int(11) DEFAULT NULL,
  `title` varchar(128) NOT NULL,
  `video_url` varchar(512) NOT NULL,
  `thumbnail` varchar(512) DEFAULT '',
  `duration_sec` int(11) DEFAULT 30,
  `file_size_mb` decimal(6,2) DEFAULT NULL,
  `target_type` varchar(32) DEFAULT 'all',
  `target_emirate` varchar(64) DEFAULT '',
  `target_area` varchar(128) DEFAULT '',
  `max_plays_per_user` int(11) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 1,
  `play_count` int(11) DEFAULT 0,
  `skip_count` int(11) DEFAULT 0,
  `complete_count` int(11) DEFAULT 0,
  `notes` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `ad_videos`
--

INSERT INTO `ad_videos` (`id`, `folder_id`, `title`, `video_url`, `thumbnail`, `duration_sec`, `file_size_mb`, `target_type`, `target_emirate`, `target_area`, `max_plays_per_user`, `is_active`, `play_count`, `skip_count`, `complete_count`, `notes`, `created_at`) VALUES
(15, 2, '1', 'https://zeeae.com/ads/1.mp4', '', 30, 0.49, 'all', '', '', 0, 1, 0, 0, 0, 'Uploaded', '2026-03-23 15:09:43');

-- --------------------------------------------------------

--
-- Table structure for table `agents`
--

CREATE TABLE `agents` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `specialization` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `lat` decimal(10,7) NOT NULL,
  `lng` decimal(10,7) NOT NULL,
  `emirate` varchar(50) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `area` varchar(100) NOT NULL,
  `wallet_balance` decimal(12,2) NOT NULL DEFAULT 0.00,
  `referral_code` varchar(20) DEFAULT NULL,
  `referred_by` int(11) DEFAULT NULL,
  `subscription_expires_at` datetime DEFAULT NULL,
  `commission_rate` decimal(6,3) NOT NULL DEFAULT 0.000,
  `verified` tinyint(1) NOT NULL DEFAULT 0,
  `total_earned` decimal(12,2) NOT NULL DEFAULT 0.00,
  `images` mediumtext DEFAULT NULL COMMENT 'JSON array of profile photo URLs',
  `title` varchar(255) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `type` varchar(50) DEFAULT 'agent',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `views` int(11) NOT NULL DEFAULT 0,
  `inquiries` int(11) NOT NULL DEFAULT 0,
  `unread_reports` int(11) NOT NULL DEFAULT 0,
  `suspended_until` datetime DEFAULT NULL COMMENT 'NULL = not suspended, past date = expired, future = active suspension',
  `suspended_reason` varchar(255) DEFAULT NULL COMMENT 'Reason shown to agent',
  `password_hash` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `agents`
--

INSERT INTO `agents` (`id`, `name`, `email`, `phone`, `company`, `specialization`, `description`, `lat`, `lng`, `emirate`, `is_active`, `area`, `wallet_balance`, `referral_code`, `referred_by`, `subscription_expires_at`, `commission_rate`, `verified`, `total_earned`, `images`, `title`, `price`, `type`, `created_at`, `views`, `inquiries`, `unread_reports`, `suspended_until`, `suspended_reason`, `password_hash`, `updated_at`) VALUES
(85, 'Rashid Said', 'rashidafghan1920@gmail.com', '+971502536550', 'muhammad said mobile', '', 'ffefewfwefwefewfewf', 25.4160000, 55.4460000, 'ajman', 1, 'Al Rashidiya 3 - الراشدية ٣', 0.00, 'C2852417', NULL, '2026-04-22 15:04:50', 0.000, 0, 0.00, '[\"\\/uploads\\/agents\\/agent_8878df53c4aef1049cae_1774263932.png\"]', NULL, NULL, 'agent', '2026-03-23 11:03:08', 0, 0, 0, NULL, NULL, NULL, '2026-03-23 15:05:42');

-- --------------------------------------------------------

--
-- Table structure for table `agent_images`
--

CREATE TABLE `agent_images` (
  `id` bigint(20) NOT NULL,
  `agent_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(500) NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT 0,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `agent_images`
--

INSERT INTO `agent_images` (`id`, `agent_id`, `url`, `is_primary`, `sort_order`, `created_at`) VALUES
(1, 1, 'https://i.postimg.cc/Thvxzfvq/2534183.png', 1, 0, '2026-03-23 06:42:56'),
(2, 72, 'https://i.postimg.cc/Thvxzfvq/2534183.png', 1, 0, '2026-03-23 06:42:56');

-- --------------------------------------------------------

--
-- Table structure for table `agent_referrals`
--

CREATE TABLE `agent_referrals` (
  `id` int(11) NOT NULL,
  `referrer_agent_id` int(11) NOT NULL,
  `referred_agent_id` int(11) NOT NULL,
  `reward_amount` decimal(10,2) NOT NULL DEFAULT 100.00,
  `rewarded` tinyint(1) NOT NULL DEFAULT 0,
  `rewarded_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `agent_referrals`
--

INSERT INTO `agent_referrals` (`id`, `referrer_agent_id`, `referred_agent_id`, `reward_amount`, `rewarded`, `rewarded_at`, `created_at`) VALUES
(1, 72, 1, 100.00, 0, NULL, '2026-03-16 16:39:07'),
(2, 1, 72, 100.00, 0, NULL, '2026-03-16 16:39:17'),
(3, 1, 73, 100.00, 1, NULL, '2026-03-16 20:57:14');

-- --------------------------------------------------------

--
-- Table structure for table `agent_subscriptions`
--

CREATE TABLE `agent_subscriptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `agent_id` int(10) UNSIGNED NOT NULL,
  `plan_name` varchar(80) NOT NULL DEFAULT 'Standard',
  `amount` decimal(10,2) NOT NULL,
  `duration_days` int(10) UNSIGNED NOT NULL DEFAULT 30,
  `started_at` datetime NOT NULL,
  `expires_at` datetime NOT NULL,
  `status` enum('active','expired','cancelled') NOT NULL DEFAULT 'active',
  `cover_emirate` varchar(60) DEFAULT NULL,
  `cover_area` varchar(100) DEFAULT NULL,
  `cover_lat` decimal(10,7) DEFAULT NULL,
  `cover_lng` decimal(10,7) DEFAULT NULL,
  `wallet_tx_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `agent_subscriptions`
--

INSERT INTO `agent_subscriptions` (`id`, `agent_id`, `plan_name`, `amount`, `duration_days`, `started_at`, `expires_at`, `status`, `cover_emirate`, `cover_area`, `cover_lat`, `cover_lng`, `wallet_tx_id`, `created_at`) VALUES
(1, 1, 'Standard', 299.00, 30, '2026-03-21 22:38:04', '2026-04-20 22:38:04', 'active', 'ajman', 'Al Rashidiya 2 - الراشدية ٢', 25.4140000, 55.4430000, 95, '2026-03-21 22:38:04'),
(2, 80, 'Standard', 99.00, 30, '2026-03-21 22:43:32', '2026-04-20 22:43:32', 'cancelled', 'ajman', 'Al Zahra - الزهراء', 25.4090000, 55.4350000, 97, '2026-03-21 22:43:32'),
(3, 80, 'Standard', 99.00, 30, '2026-03-21 22:52:11', '2026-04-20 22:52:11', 'active', 'ajman', 'Al Zahra - الزهراء', NULL, NULL, 98, '2026-03-21 22:52:11'),
(4, 82, 'Standard', 99.00, 30, '2026-03-23 11:00:02', '2026-04-22 11:00:02', 'active', 'ajman', 'Al Rashidiya 3 - الراشدية ٣', 25.4160000, 55.4460000, 103, '2026-03-23 11:00:02');

-- --------------------------------------------------------

--
-- Table structure for table `agent_subscription_settings`
--

CREATE TABLE `agent_subscription_settings` (
  `agent_id` int(10) UNSIGNED NOT NULL,
  `plan_name` varchar(80) NOT NULL DEFAULT 'Standard',
  `price` decimal(10,2) NOT NULL DEFAULT 99.00,
  `duration_days` int(10) UNSIGNED NOT NULL DEFAULT 30,
  `notes` text DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `agent_subscription_settings`
--

INSERT INTO `agent_subscription_settings` (`agent_id`, `plan_name`, `price`, `duration_days`, `notes`, `updated_at`) VALUES
(85, 'Standard', 299.00, 30, 'effwewefewfewfwe dvwfewf', '2026-03-23 15:05:42');

-- --------------------------------------------------------

--
-- Table structure for table `agent_wallets`
--

CREATE TABLE `agent_wallets` (
  `agent_id` int(11) NOT NULL,
  `balance` decimal(10,2) NOT NULL DEFAULT 0.00,
  `referral_bal` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_spent` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_comm` decimal(10,2) NOT NULL DEFAULT 0.00,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `auto_renew` tinyint(1) NOT NULL DEFAULT 0,
  `renew_wallet` enum('main','referral','any') NOT NULL DEFAULT 'any'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `agent_wallets`
--

INSERT INTO `agent_wallets` (`agent_id`, `balance`, `referral_bal`, `total_spent`, `total_comm`, `updated_at`, `auto_renew`, `renew_wallet`) VALUES
(85, 2000.00, 0.00, 0.00, 0.00, '2026-03-23 11:03:58', 0, 'any');

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE `areas` (
  `id` int(11) NOT NULL,
  `emirate` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `lat` decimal(10,7) NOT NULL,
  `lng` decimal(10,7) NOT NULL,
  `sort_order` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `areas`
--

INSERT INTO `areas` (`id`, `emirate`, `name`, `lat`, `lng`, `sort_order`, `created_at`) VALUES
(1, 'dubai', 'Downtown Dubai', 25.1972000, 55.2744000, 1, '2026-03-01 08:41:26'),
(2, 'dubai', 'Dubai Marina', 25.0805000, 55.1403000, 2, '2026-03-01 08:41:26'),
(3, 'dubai', 'JBR', 25.0782000, 55.1336000, 3, '2026-03-01 08:41:26'),
(4, 'dubai', 'Business Bay', 25.1857000, 55.2636000, 4, '2026-03-01 08:41:26'),
(5, 'dubai', 'Deira', 25.2697000, 55.3095000, 5, '2026-03-01 08:41:26'),
(6, 'dubai', 'Bur Dubai', 25.2532000, 55.2983000, 6, '2026-03-01 08:41:26'),
(7, 'dubai', 'Jumeirah', 25.2048000, 55.2448000, 7, '2026-03-01 08:41:26'),
(8, 'dubai', 'Al Barsha', 25.1167000, 55.2000000, 8, '2026-03-01 08:41:26'),
(9, 'dubai', 'JLT', 25.0693000, 55.1533000, 9, '2026-03-01 08:41:26'),
(10, 'dubai', 'Mirdif', 25.2244000, 55.4119000, 10, '2026-03-01 08:41:26'),
(12, 'abu_dhabi', 'Khalifa City', 24.4244000, 54.5400000, 2, '2026-03-01 08:41:26'),
(13, 'abu_dhabi', 'Reem Island', 24.4941000, 54.4022000, 3, '2026-03-01 08:41:26'),
(14, 'abu_dhabi', 'Yas Island', 24.4871000, 54.6087000, 4, '2026-03-01 08:41:26'),
(15, 'abu_dhabi', 'Saadiyat Island', 24.5432000, 54.4342000, 5, '2026-03-01 08:41:26'),
(16, 'sharjah', 'Al Nahda', 25.3154000, 55.4258000, 1, '2026-03-01 08:41:26'),
(17, 'sharjah', 'Al Qasimia', 25.3573000, 55.3890000, 2, '2026-03-01 08:41:26'),
(18, 'sharjah', 'Al Majaz', 25.3316000, 55.3879000, 3, '2026-03-01 08:41:26'),
(21, 'umm_al_quwain', 'UAQ City', 25.5651000, 55.5554000, 1, '2026-03-01 08:41:26'),
(22, 'ras_al_khaimah', 'RAK City', 25.8007000, 55.9762000, 1, '2026-03-01 08:41:26'),
(23, 'ras_al_khaimah', 'Al Hamra', 25.6960000, 55.7860000, 2, '2026-03-01 08:41:26'),
(24, 'fujairah', 'Fujairah City', 25.1288000, 56.3265000, 1, '2026-03-01 08:41:26'),
(110, 'ajman', 'Al Rumailah 1 - الرميلة ١', 25.4152800, 55.4222200, 1, '2026-03-04 18:36:49'),
(111, 'ajman', 'Al Rumailah 2 - الرميلة ٢', 25.4180000, 55.4250000, 2, '2026-03-04 18:36:49'),
(112, 'ajman', 'Al Rumailah 3 - الرميلة ٣', 25.4200000, 55.4280000, 3, '2026-03-04 18:36:49'),
(113, 'ajman', 'Al Nuaimiya 1 - النعيمية ١', 25.4015000, 55.4450000, 4, '2026-03-04 18:36:49'),
(114, 'ajman', 'Al Nuaimiya 2 - النعيمية ٢', 25.4030000, 55.4480000, 5, '2026-03-04 18:36:49'),
(115, 'ajman', 'Al Nuaimiya 3 - النعيمية ٣', 25.4050000, 55.4500000, 6, '2026-03-04 18:36:49'),
(116, 'ajman', 'Al Rashidiya 1 - الراشدية ١', 25.4120000, 55.4400000, 7, '2026-03-04 18:36:49'),
(117, 'ajman', 'Al Rashidiya 2 - الراشدية ٢', 25.4140000, 55.4430000, 8, '2026-03-04 18:36:49'),
(118, 'ajman', 'Al Rashidiya 3 - الراشدية ٣', 25.4160000, 55.4460000, 9, '2026-03-04 18:36:49'),
(119, 'ajman', 'Al Bustan - البستان', 25.4110000, 55.4300000, 10, '2026-03-04 18:36:49'),
(120, 'ajman', 'Al Zahra - الزهراء', 25.4090000, 55.4350000, 11, '2026-03-04 18:36:49'),
(121, 'ajman', 'Al Nakheel 1 - النخيل ١', 25.4080000, 55.4320000, 12, '2026-03-04 18:36:49'),
(122, 'ajman', 'Al Nakheel 2 - النخيل ٢', 25.4100000, 55.4350000, 13, '2026-03-04 18:36:49'),
(123, 'ajman', 'Liwara 1 - ليوارة ١', 25.4130000, 55.4200000, 14, '2026-03-04 18:36:49'),
(124, 'ajman', 'Liwara 2 - ليوارة ٢', 25.4145000, 55.4180000, 15, '2026-03-04 18:36:49'),
(125, 'ajman', 'Al Sawan - السوان', 25.4170000, 55.4370000, 16, '2026-03-04 18:36:49'),
(126, 'ajman', 'Corniche Ajman - كورنيش عجمان', 25.4175000, 55.4205000, 17, '2026-03-04 18:36:49'),
(127, 'ajman', 'Ajman Downtown - وسط مدينة عجمان', 25.4050000, 55.4350000, 18, '2026-03-04 18:36:49'),
(128, 'ajman', 'Al Jurf 1 - الجرف ١', 25.3900000, 55.4700000, 19, '2026-03-04 18:36:49'),
(129, 'ajman', 'Al Jurf 2 - الجرف ٢', 25.3880000, 55.4750000, 20, '2026-03-04 18:36:49'),
(130, 'ajman', 'Al Jurf 3 - الجرف ٣', 25.3850000, 55.4800000, 21, '2026-03-04 18:36:49'),
(131, 'ajman', 'Al Mowaihat 1 - المويهات ١', 25.4050000, 55.5000000, 22, '2026-03-04 18:36:49'),
(132, 'ajman', 'Al Mowaihat 2 - المويهات ٢', 25.4070000, 55.5050000, 23, '2026-03-04 18:36:49'),
(133, 'ajman', 'Al Mowaihat 3 - المويهات ٣', 25.4100000, 55.5100000, 24, '2026-03-04 18:36:49'),
(134, 'ajman', 'Al Rawda 1 - الروضة ١', 25.3950000, 55.5150000, 25, '2026-03-04 18:36:49'),
(135, 'ajman', 'Al Rawda 2 - الروضة ٢', 25.3970000, 55.5200000, 26, '2026-03-04 18:36:49'),
(136, 'ajman', 'Al Rawda 3 - الروضة ٣', 25.3889548, 55.5005216, 27, '2026-03-04 18:36:49'),
(137, 'ajman', 'Al Hamidiya 1 - الحميدية ١', 25.4300000, 55.5200000, 28, '2026-03-04 18:36:49'),
(138, 'ajman', 'Al Hamidiya 2 - الحميدية ٢', 25.4320000, 55.5250000, 29, '2026-03-04 18:36:49'),
(139, 'ajman', 'Al Humaid City - مدينة الحميد', 25.4340000, 55.5280000, 30, '2026-03-04 18:36:49'),
(140, 'ajman', 'Al Tallah 1 - التلة ١', 25.4450000, 55.5300000, 31, '2026-03-04 18:36:49'),
(141, 'ajman', 'Al Tallah 2 - التلة ٢', 25.4470000, 55.5350000, 32, '2026-03-04 18:36:49'),
(142, 'ajman', 'Al Yasmeen - الياسمين', 25.4550000, 55.5450000, 33, '2026-03-04 18:36:49'),
(143, 'ajman', 'Al Zahya - الزاهية', 25.4600000, 55.5480000, 34, '2026-03-04 18:36:49'),
(144, 'ajman', 'Al Amerah - العامرة', 25.4620000, 55.5520000, 35, '2026-03-04 18:36:49'),
(145, 'ajman', 'Al Helio 1 - الهليو ١', 25.4500000, 55.5400000, 36, '2026-03-04 18:36:49'),
(146, 'ajman', 'Al Helio 2 - الهليو ٢', 25.4520000, 55.5450000, 37, '2026-03-04 18:36:49'),
(147, 'ajman', 'Emirates City - مدينة الإمارات', 25.4700000, 55.5500000, 38, '2026-03-04 18:36:49'),
(148, 'ajman', 'Ajman Uptown - عجمان أب تاون', 25.4750000, 55.5600000, 39, '2026-03-04 18:36:49'),
(149, 'ajman', 'Garden City - جاردن سيتي', 25.4650000, 55.5550000, 40, '2026-03-04 18:36:49'),
(150, 'ajman', 'Al Bahia - الباهية', 25.4600000, 55.5200000, 41, '2026-03-04 18:36:49'),
(151, 'ajman', 'Al Zorah - الزوراء', 25.4305000, 55.3900000, 42, '2026-03-04 18:36:49'),
(152, 'ajman', 'Ajman Industrial 1 - الصناعية ١', 25.4200000, 55.4600000, 43, '2026-03-04 18:36:49'),
(153, 'ajman', 'Ajman Industrial 2 - الصناعية ٢', 25.4220000, 55.4650000, 44, '2026-03-04 18:36:49'),
(154, 'ajman', 'Ajman Industrial 3 - الصناعية ٣', 25.4240000, 55.4700000, 45, '2026-03-04 18:36:49'),
(155, 'ajman', 'Ajman Industrial 4 - الصناعية ٤', 25.4260000, 55.4750000, 46, '2026-03-04 18:36:49'),
(156, 'ajman', 'Ajman Industrial 5 - الصناعية ٥', 25.4280000, 55.4800000, 47, '2026-03-04 18:36:49'),
(157, 'ajman', 'Ajman Industrial 6 - الصناعية ٦', 25.4300000, 55.4850000, 48, '2026-03-04 18:36:49'),
(158, 'ajman', 'Ajman Industrial 7 - الصناعية ٧', 25.4320000, 55.4900000, 49, '2026-03-04 18:36:49'),
(159, 'ajman', 'Masfout - مصفوت', 24.8300000, 56.1100000, 50, '2026-03-04 18:36:49'),
(160, 'ajman', 'Manama - المنامة', 25.3100000, 56.0000000, 51, '2026-03-04 18:36:49'),
(161, 'dubai', 'Downtown Dubai', 25.1972000, 55.2744000, 1, '2026-03-05 18:32:29'),
(162, 'dubai', 'Dubai Marina', 25.0805000, 55.1403000, 2, '2026-03-05 18:32:29'),
(163, 'dubai', 'JBR', 25.0782000, 55.1336000, 3, '2026-03-05 18:32:29'),
(164, 'dubai', 'Business Bay', 25.1857000, 55.2636000, 4, '2026-03-05 18:32:29'),
(165, 'dubai', 'Deira', 25.2697000, 55.3095000, 5, '2026-03-05 18:32:29'),
(166, 'dubai', 'Bur Dubai', 25.2532000, 55.2983000, 6, '2026-03-05 18:32:29'),
(167, 'dubai', 'Jumeirah', 25.2048000, 55.2448000, 7, '2026-03-05 18:32:29'),
(168, 'dubai', 'Al Barsha', 25.1167000, 55.2000000, 8, '2026-03-05 18:32:29'),
(169, 'dubai', 'JLT', 25.0693000, 55.1533000, 9, '2026-03-05 18:32:29'),
(170, 'dubai', 'Mirdif', 25.2244000, 55.4119000, 10, '2026-03-05 18:32:29'),
(171, 'abu_dhabi', 'City Center', 24.4777000, 54.3703000, 1, '2026-03-05 18:32:29'),
(172, 'abu_dhabi', 'Khalifa City', 24.4244000, 54.5400000, 2, '2026-03-05 18:32:29'),
(173, 'abu_dhabi', 'Reem Island', 24.4941000, 54.4022000, 3, '2026-03-05 18:32:29'),
(174, 'abu_dhabi', 'Yas Island', 24.4871000, 54.6087000, 4, '2026-03-05 18:32:29'),
(175, 'abu_dhabi', 'Saadiyat Island', 24.5432000, 54.4342000, 5, '2026-03-05 18:32:29'),
(176, 'sharjah', 'Al Nahda', 25.3154000, 55.4258000, 1, '2026-03-05 18:32:29'),
(177, 'sharjah', 'Al Qasimia', 25.3573000, 55.3890000, 2, '2026-03-05 18:32:29'),
(178, 'sharjah', 'Al Majaz', 25.3316000, 55.3879000, 3, '2026-03-05 18:32:29'),
(179, 'ajman', 'Ajman City', 25.4052000, 55.5136000, 1, '2026-03-05 18:32:29'),
(180, 'ajman', 'Al Nuaimiya', 25.3873000, 55.4890000, 2, '2026-03-05 18:32:29'),
(181, 'umm_al_quwain', 'UAQ City', 25.5651000, 55.5554000, 1, '2026-03-05 18:32:29'),
(182, 'ras_al_khaimah', 'RAK City', 25.8007000, 55.9762000, 1, '2026-03-05 18:32:29'),
(183, 'ras_al_khaimah', 'Al Hamra', 25.6960000, 55.7860000, 2, '2026-03-05 18:32:29'),
(184, 'fujairah', 'Fujairah City', 25.1288000, 56.3265000, 1, '2026-03-05 18:32:29');

-- --------------------------------------------------------

--
-- Table structure for table `live_sessions`
--

CREATE TABLE `live_sessions` (
  `session_token` varchar(64) NOT NULL,
  `last_seen` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `live_sessions`
--

INSERT INTO `live_sessions` (`session_token`, `last_seen`) VALUES
('a7yvgrswd4qmn43ghrd', '2026-03-24 04:48:57');

-- --------------------------------------------------------

--
-- Table structure for table `profile_events`
--

CREATE TABLE `profile_events` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` varchar(64) NOT NULL,
  `event_type` varchar(30) NOT NULL DEFAULT 'profile_submitted',
  `ip_address` varchar(45) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profile_events`
--

INSERT INTO `profile_events` (`id`, `uid`, `event_type`, `ip_address`, `created_at`) VALUES
(1, 'u_mmy0ct8s_nfat7w', 'profile_submitted', '109.177.26.228', '2026-03-20 01:54:30'),
(2, 'u_mmy0hqnq_c31ss6', 'profile_submitted', '109.177.26.228', '2026-03-20 01:58:20');

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `type` varchar(50) NOT NULL DEFAULT 'std',
  `emirate` varchar(50) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `area` varchar(128) NOT NULL DEFAULT '',
  `lat` decimal(10,7) NOT NULL,
  `lng` decimal(10,7) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `images` mediumtext DEFAULT NULL COMMENT 'JSON array of image URLs (uploaded or external)',
  `agent_id` int(11) DEFAULT NULL,
  `status` enum('available','rented') DEFAULT 'available',
  `expires_at` timestamp NOT NULL DEFAULT (current_timestamp() + interval 14 day),
  `shares` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `rent_period` varchar(10) NOT NULL DEFAULT 'monthly',
  `platform_fee` decimal(10,2) DEFAULT NULL,
  `agent_commission` decimal(10,2) DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `inquiries` int(11) NOT NULL DEFAULT 0,
  `hidden` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 = hidden from map (e.g. agent suspended)',
  `ref_id` int(10) UNSIGNED NOT NULL,
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `title`, `price`, `type`, `emirate`, `is_active`, `area`, `lat`, `lng`, `phone`, `description`, `images`, `agent_id`, `status`, `expires_at`, `shares`, `created_at`, `rent_period`, `platform_fee`, `agent_commission`, `views`, `inquiries`, `hidden`, `ref_id`, `updated_at`) VALUES
(5, 'room for rent', 1700, 'sdv', 'ajman', 1, 'Al Butain', 25.4156935, 55.4473089, '0552268450', 'ldfsdlfdsfds fsfsdlfsdf s fsd f', '[]', NULL, 'available', '2026-04-03 20:45:42', 0, '2026-03-07 16:16:23', 'monthly', 51.00, NULL, 0, 0, 0, 1003, '2026-03-21 00:45:42'),
(14, 'ttytffu', 500, 'sdv', 'ajman', 1, 'Al Nakhil 1', 25.4147390, 55.4419874, '0552268450', 'uyffyut', '[]', NULL, 'available', '2026-03-29 21:04:57', 0, '2026-03-07 19:03:40', 'monthly', NULL, NULL, 0, 0, 0, 1005, '2026-03-19 14:56:28'),
(17, 'rergergergr', 7000, 'rest', 'ajman', 1, 'ليوارة 1', 25.4160463, 55.4443215, '0552268450', 'fewewfwefew', '[\"\\/uploads\\/properties\\/prop_90ea83c4b2a2b6fab733_1773606917.png\",\"\\/uploads\\/properties\\/prop_e0bf945aa28058f5dbaf_1773606917.png\",\"\\/uploads\\/properties\\/prop_1c9e1a567d1d513b5d19_1773606917.png\",\"\\/uploads\\/properties\\/prop_d05c10081ec778bd464b_1773606917.png\"]', NULL, 'available', '2026-03-29 20:36:42', 0, '2026-03-15 20:36:42', 'monthly', NULL, NULL, 0, 0, 0, 1008, '2026-03-19 14:56:28'),
(18, 'rgergerg', 50000, 'rest', 'ajman', 1, 'ليوارة 1', 25.4165244, 55.4445790, '0552268450', 'dssdsdsd', '[]', NULL, 'available', '2026-03-29 20:37:31', 0, '2026-03-15 20:37:31', 'monthly', 1500.00, 0.00, 0, 0, 0, 1009, '2026-03-19 14:56:28'),
(19, 'Fjddjdj', 1000, 'cl', 'ajman', 1, 'Ajman Industrial 1', 25.3872554, 55.4885995, '+971529011618', 'Cjdjjcj', '[]', NULL, 'available', '2026-03-30 03:10:11', 0, '2026-03-16 01:44:16', 'monthly', 30.00, 50.00, 0, 0, 0, 1010, '2026-03-19 14:56:28'),
(20, 'ffssdfsdsd', 1000, 'th', 'ajman', 1, 'Al Hamidiya 1', 25.4051564, 55.5128657, '+971542494152', 'fdsdfsdf', '[\"\\/uploads\\/properties\\/prop_9d70db0f1c0774910b8d_1773679522.png\"]', NULL, 'available', '2026-03-30 16:45:24', 0, '2026-03-16 16:45:24', 'monthly', 30.00, 50.00, 0, 0, 0, 1011, '2026-03-19 14:56:28'),
(21, 'sdsd', 1000, 'pr', 'ajman', 1, 'Al Rashidiya 3', 25.4009244, 55.4410470, '+971501234567', 'sdsdsdsd', '[\"\\/uploads\\/properties\\/prop_dcbf484543429e7de8a2_1773687957.jpg\",\"\\/uploads\\/properties\\/prop_f8f135e21ab8a3bde7f8_1773687970.jpg\",\"\\/uploads\\/properties\\/prop_1c83af5a9c5a7fc9bbfb_1773687970.png\",\"\\/uploads\\/properties\\/prop_05bde9ac103a1b9252e9_1773687986.png\"]', NULL, 'available', '2026-03-30 19:06:34', 0, '2026-03-16 19:06:34', 'monthly', 30.00, 50.00, 0, 0, 0, 1012, '2026-03-19 14:56:28'),
(23, 'sdsd', 1000, '2bhk', 'ajman', 1, 'Ajman Industrial 7 - الصناعية ٧', 25.4320000, 55.4900000, '0552268450', 'dddd', '[]', NULL, 'available', '2026-04-03 00:25:00', 0, '2026-03-20 00:26:34', 'monthly', NULL, NULL, 0, 0, 0, 1014, '2026-03-20 04:26:34'),
(25, '1 BHK in Al Rashidiya 3 - الراشدية', 200, '1bhk', 'ajman', 1, 'Al Rashidiya 3 - الراشدية ٣', 0.0000000, 0.0000000, '0552268450', 'Rassdd', '[]', NULL, 'available', '2026-04-03 22:38:05', 0, '2026-03-20 22:38:05', 'monthly', 4.00, 10.00, 0, 0, 0, 1015, '2026-03-21 02:38:05'),
(26, 'Retail Space in Al Rashidiya 3 - ا', 100, 'rs', 'ajman', 1, 'Al Rashidiya 3 - الراشدية ٣', 25.4115902, 55.4405474, '0552268450', 'Fjddkdk', '[]', NULL, 'available', '2026-04-03 22:48:28', 0, '2026-03-20 22:48:28', 'monthly', 2.00, 5.00, 0, 0, 0, 1016, '2026-03-21 02:48:28'),
(27, 'Partition Room in Al Rashidiya 3 -', 850, 'pr', 'ajman', 1, 'Al Rashidiya 3 - الراشدية ٣', 25.4062147, 55.4431429, '0552268450', 'Near KM lulu', '[]', NULL, 'available', '2026-04-03 23:05:53', 0, '2026-03-20 23:05:53', 'monthly', 17.00, 40.00, 0, 0, 0, 1017, '2026-03-21 03:05:53'),
(28, 'Showroom in Ajman City', 22, 'sr', 'ajman', 1, 'Ajman City', 25.4062307, 55.5131708, 'Hyyyyy', 'Htttt', '[]', NULL, 'available', '2026-04-03 23:13:54', 0, '2026-03-20 23:13:54', 'monthly', 0.44, 1.00, 0, 0, 0, 1018, '2026-03-21 03:13:54'),
(29, 'Private Room in Downtown Dubai', 1000, 'pvt_rm', 'dubai', 1, 'Downtown Dubai', 25.1978312, 55.2734416, '+971552268450', 'Fjfjfdj', '[]', NULL, 'available', '2026-04-03 23:16:51', 0, '2026-03-20 23:16:51', 'daily', 14.00, 50.00, 0, 0, 0, 1019, '2026-03-21 03:16:51'),
(30, 'Bed Space in Al Nahda', 250, 'bs', 'sharjah', 1, 'Al Nahda', 25.3164109, 55.4255997, '5555288182', 'Rvvrvwvetb3vwbwtvwbtebetbtebtebtwvtwbtevwbwb2t', '[\"\\/uploads\\/properties\\/prop_d0f2a9711de92b2a4147_1774049723.jpg\"]', NULL, 'available', '2026-04-03 23:35:31', 0, '2026-03-20 23:35:31', 'monthly', 5.00, 12.00, 0, 0, 0, 1020, '2026-03-21 03:35:31'),
(31, 'Private Room in Al Rashidiya 3 - ا', 2000, 'pvt_rm', 'ajman', 1, 'Al Rashidiya 3 - الراشدية ٣', 25.4129834, 55.4452020, '0526905644', 'Rahsid djdjdj dkdkdk dkckd fkckc fkdkd fkd', '[\"\\/uploads\\/properties\\/prop_3365ffeb952da6d035a0_1774050105.jpg\"]', NULL, 'available', '2026-04-03 23:41:51', 0, '2026-03-20 23:41:51', 'monthly', 40.00, 100.00, 0, 0, 0, 1021, '2026-03-21 03:41:51'),
(32, '2 BHK in Al Rumailah 3 - الرميلة ٣', 1000, '2bhk', 'ajman', 1, 'Al Rumailah 3 - الرميلة ٣', 25.4172114, 55.4310470, '0552244674', 'Fjddjdjdjcjrekdkdkddkdkkckdkekdkkdkdkdkdkdkd', '[\"\\/uploads\\/properties\\/prop_c025ebd7aa7eab105f32_1774062391.jpg\"]', NULL, 'available', '2026-04-04 03:06:33', 0, '2026-03-21 03:06:33', 'monthly', 20.00, 50.00, 0, 0, 0, 1022, '2026-03-21 07:06:33');

--
-- Triggers `properties`
--
DELIMITER $$
CREATE TRIGGER `trg_properties_ref_id` BEFORE INSERT ON `properties` FOR EACH ROW BEGIN
    IF NEW.ref_id IS NULL OR NEW.ref_id = 0 THEN
        SET NEW.ref_id = (SELECT IFNULL(MAX(ref_id), 1000) + 1 FROM properties);
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `property_images`
--

CREATE TABLE `property_images` (
  `id` bigint(20) NOT NULL,
  `property_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(500) NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `property_images`
--

INSERT INTO `property_images` (`id`, `property_id`, `url`, `sort_order`, `created_at`) VALUES
(1, 17, '/uploads/properties/prop_90ea83c4b2a2b6fab733_1773606917.png', 0, '2026-03-23 06:42:56'),
(2, 20, '/uploads/properties/prop_9d70db0f1c0774910b8d_1773679522.png', 0, '2026-03-23 06:42:56'),
(3, 21, '/uploads/properties/prop_dcbf484543429e7de8a2_1773687957.jpg', 0, '2026-03-23 06:42:56'),
(4, 30, '/uploads/properties/prop_d0f2a9711de92b2a4147_1774049723.jpg', 0, '2026-03-23 06:42:56'),
(5, 31, '/uploads/properties/prop_3365ffeb952da6d035a0_1774050105.jpg', 0, '2026-03-23 06:42:56'),
(6, 32, '/uploads/properties/prop_c025ebd7aa7eab105f32_1774062391.jpg', 0, '2026-03-23 06:42:56');

-- --------------------------------------------------------

--
-- Table structure for table `property_stats`
--

CREATE TABLE `property_stats` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_type` enum('property','agent') NOT NULL,
  `event` enum('view','whatsapp','phone') NOT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `property_stats`
--

INSERT INTO `property_stats` (`id`, `item_id`, `item_type`, `event`, `ip`, `created_at`) VALUES
(1, 1, 'property', 'view', '2a00:f29:290:204:4464:7d03:7b5a:be12', '2026-03-06 16:10:39'),
(2, 1, 'agent', 'view', '2a00:f29:290:204:4464:7d03:7b5a:be12', '2026-03-06 16:10:45'),
(3, 1, 'property', 'view', '2a00:f29:290:204:74d1:3a59:aa08:7149', '2026-03-06 16:13:09'),
(4, 1, 'property', 'whatsapp', '2a00:f29:290:204:74d1:3a59:aa08:7149', '2026-03-06 16:13:10'),
(5, 1, 'property', 'whatsapp', '2a00:f29:290:204:74d1:3a59:aa08:7149', '2026-03-06 16:13:16'),
(6, 1, 'agent', 'view', '2a00:f29:290:204:74d1:3a59:aa08:7149', '2026-03-06 16:13:22'),
(7, 1, 'agent', 'whatsapp', '2a00:f29:290:204:74d1:3a59:aa08:7149', '2026-03-06 16:13:45'),
(8, 1, 'property', 'whatsapp', '2a00:f29:290:204:4464:7d03:7b5a:be12', '2026-03-06 16:54:17'),
(9, 1, 'property', 'whatsapp', '2a00:f29:290:204:4464:7d03:7b5a:be12', '2026-03-06 16:57:09'),
(10, 1, 'property', 'phone', '2a00:f29:290:204:4464:7d03:7b5a:be12', '2026-03-06 16:57:15'),
(11, 1, 'property', 'phone', '2a00:f29:290:204:4464:7d03:7b5a:be12', '2026-03-06 16:57:18'),
(12, 1, 'property', 'phone', '2a00:f29:290:204:4464:7d03:7b5a:be12', '2026-03-06 16:57:21'),
(13, 1, 'property', 'phone', '2a00:f29:290:204:4464:7d03:7b5a:be12', '2026-03-06 16:57:22'),
(14, 1, 'property', 'whatsapp', '2a00:f29:290:204:4464:7d03:7b5a:be12', '2026-03-06 16:57:31'),
(15, 1, 'property', 'phone', '2a00:f29:290:204:4464:7d03:7b5a:be12', '2026-03-06 16:57:47'),
(16, 1, 'property', 'view', '2a00:f29:290:204:c5ea:c342:7724:acbd', '2026-03-06 16:58:10'),
(17, 1, 'property', 'phone', '2a00:f29:290:204:c5ea:c342:7724:acbd', '2026-03-06 16:58:11'),
(18, 1, 'property', 'whatsapp', '2a00:f29:290:204:c5ea:c342:7724:acbd', '2026-03-06 16:58:20'),
(19, 1, 'agent', 'phone', '2a00:f29:290:204:4464:7d03:7b5a:be12', '2026-03-06 16:58:54'),
(20, 1, 'agent', 'phone', '2a00:f29:290:204:4464:7d03:7b5a:be12', '2026-03-06 16:58:57'),
(21, 1, 'agent', 'phone', '2a00:f29:290:204:4464:7d03:7b5a:be12', '2026-03-06 16:59:01'),
(22, 1, 'agent', 'phone', '2a00:f29:290:204:4464:7d03:7b5a:be12', '2026-03-06 16:59:01'),
(23, 1, 'agent', 'phone', '2a00:f29:290:204:4464:7d03:7b5a:be12', '2026-03-06 16:59:01'),
(24, 1, 'agent', 'phone', '2a00:f29:290:204:4464:7d03:7b5a:be12', '2026-03-06 16:59:01'),
(25, 1, 'agent', 'phone', '2a00:f29:290:204:4464:7d03:7b5a:be12', '2026-03-06 16:59:01'),
(26, 1, 'agent', 'phone', '2a00:f29:290:204:4464:7d03:7b5a:be12', '2026-03-06 16:59:01'),
(27, 1, 'agent', 'phone', '2a00:f29:290:204:4464:7d03:7b5a:be12', '2026-03-06 16:59:01'),
(28, 1, 'agent', 'phone', '2a00:f29:290:204:4464:7d03:7b5a:be12', '2026-03-06 16:59:01'),
(29, 1, 'agent', 'phone', '2a00:f29:290:204:4464:7d03:7b5a:be12', '2026-03-06 16:59:02'),
(30, 1, 'agent', 'phone', '2a00:f29:290:204:4464:7d03:7b5a:be12', '2026-03-06 16:59:02'),
(31, 1, 'agent', 'phone', '2a00:f29:290:204:4464:7d03:7b5a:be12', '2026-03-06 16:59:02'),
(32, 1, 'agent', 'phone', '2a00:f29:290:204:4464:7d03:7b5a:be12', '2026-03-06 16:59:02'),
(33, 1, 'agent', 'phone', '2a00:f29:290:204:4464:7d03:7b5a:be12', '2026-03-06 16:59:02'),
(34, 1, 'agent', 'phone', '2a00:f29:290:204:4464:7d03:7b5a:be12', '2026-03-06 16:59:02'),
(35, 1, 'agent', 'phone', '2a00:f29:290:204:4464:7d03:7b5a:be12', '2026-03-06 16:59:03'),
(36, 1, 'agent', 'view', '2a00:f29:290:204:c5ea:c342:7724:acbd', '2026-03-06 16:59:24'),
(37, 1, 'property', 'whatsapp', '2a00:f29:290:204:c5ea:c342:7724:acbd', '2026-03-06 17:00:09'),
(38, 1, 'property', 'phone', '2a00:f29:290:204:4464:7d03:7b5a:be12', '2026-03-06 17:00:35'),
(39, 1, 'property', 'phone', '2a00:f29:290:204:4464:7d03:7b5a:be12', '2026-03-06 17:00:35'),
(40, 1, 'property', 'phone', '2a00:f29:290:204:4464:7d03:7b5a:be12', '2026-03-06 17:00:35'),
(41, 1, 'property', 'phone', '2a00:f29:290:204:4464:7d03:7b5a:be12', '2026-03-06 17:00:35'),
(42, 1, 'property', 'phone', '2a00:f29:290:204:4464:7d03:7b5a:be12', '2026-03-06 17:00:35'),
(43, 1, 'property', 'phone', '2a00:f29:290:204:4464:7d03:7b5a:be12', '2026-03-06 17:00:35'),
(44, 1, 'property', 'phone', '2a00:f29:290:204:4464:7d03:7b5a:be12', '2026-03-06 17:00:35'),
(45, 1, 'property', 'phone', '2a00:f29:290:204:4464:7d03:7b5a:be12', '2026-03-06 17:00:35'),
(46, 1, 'property', 'phone', '2a00:f29:290:204:4464:7d03:7b5a:be12', '2026-03-06 17:00:35'),
(47, 1, 'property', 'phone', '2a00:f29:290:204:4464:7d03:7b5a:be12', '2026-03-06 17:00:35'),
(48, 1, 'property', 'phone', '2a00:f29:290:204:4464:7d03:7b5a:be12', '2026-03-06 17:00:35'),
(49, 1, 'property', 'whatsapp', '2a00:f29:290:204:c5ea:c342:7724:acbd', '2026-03-06 17:01:04'),
(50, 1, 'property', 'view', '94.205.174.51', '2026-03-06 17:01:08'),
(51, 1, 'agent', 'view', '94.205.174.51', '2026-03-06 17:01:11'),
(52, 1, 'property', 'phone', '94.205.174.51', '2026-03-06 17:01:27'),
(53, 1, 'property', 'phone', '94.205.174.51', '2026-03-06 17:01:31'),
(54, 1, 'property', 'view', '2a00:f29:290:204:4464:7d03:7b5a:be12', '2026-03-06 17:11:23'),
(55, 1, 'agent', 'view', '2a00:f29:290:204:4464:7d03:7b5a:be12', '2026-03-06 17:11:34'),
(56, 1, 'property', 'view', '2a00:f29:290:204:74d1:3a59:aa08:7149', '2026-03-06 18:11:01'),
(57, 1, 'property', 'whatsapp', '2a00:f29:290:204:74d1:3a59:aa08:7149', '2026-03-06 18:11:06'),
(58, 1, 'agent', 'view', '2a00:f29:290:204:74d1:3a59:aa08:7149', '2026-03-06 18:12:13'),
(59, 1, 'property', 'view', '2a00:f29:290:204:4464:7d03:7b5a:be12', '2026-03-06 18:28:35'),
(60, 1, 'agent', 'view', '2a00:f29:290:204:4464:7d03:7b5a:be12', '2026-03-06 18:28:37'),
(61, 1, 'agent', 'phone', '2a00:f29:290:204:4464:7d03:7b5a:be12', '2026-03-06 18:29:07'),
(62, 1, 'agent', 'phone', '2a00:f29:290:204:4464:7d03:7b5a:be12', '2026-03-06 18:29:07'),
(63, 1, 'agent', 'phone', '2a00:f29:290:204:4464:7d03:7b5a:be12', '2026-03-06 18:29:07'),
(64, 1, 'agent', 'phone', '2a00:f29:290:204:4464:7d03:7b5a:be12', '2026-03-06 18:29:07'),
(65, 1, 'agent', 'phone', '2a00:f29:290:204:4464:7d03:7b5a:be12', '2026-03-06 18:29:07'),
(66, 1, 'agent', 'phone', '2a00:f29:290:204:4464:7d03:7b5a:be12', '2026-03-06 18:29:07'),
(67, 1, 'agent', 'phone', '2a00:f29:290:204:4464:7d03:7b5a:be12', '2026-03-06 18:29:07'),
(68, 1, 'agent', 'phone', '2a00:f29:290:204:4464:7d03:7b5a:be12', '2026-03-06 18:29:07'),
(69, 1, 'agent', 'phone', '2a00:f29:290:204:4464:7d03:7b5a:be12', '2026-03-06 18:29:07'),
(70, 1, 'agent', 'phone', '2a00:f29:290:204:4464:7d03:7b5a:be12', '2026-03-06 18:29:07'),
(71, 1, 'agent', 'phone', '2a00:f29:290:204:4464:7d03:7b5a:be12', '2026-03-06 18:29:07'),
(72, 1, 'agent', 'phone', '2a00:f29:290:204:4464:7d03:7b5a:be12', '2026-03-06 18:29:07'),
(73, 1, 'property', 'phone', '2a00:f29:290:204:4464:7d03:7b5a:be12', '2026-03-06 18:29:13'),
(74, 1, 'property', 'phone', '2a00:f29:290:204:4464:7d03:7b5a:be12', '2026-03-06 18:29:13'),
(75, 1, 'agent', 'view', '2a00:f29:290:44a:426:3200:14d5:1939', '2026-03-06 18:49:23'),
(76, 1, 'property', 'view', '2a00:f29:290:44a:426:3200:14d5:1939', '2026-03-06 18:49:26'),
(77, 1, 'property', 'view', '2a00:f29:290:44a:e0be:3921:d05e:f5e9', '2026-03-06 19:49:49'),
(78, 1, 'agent', 'view', '2a00:f29:290:44a:e0be:3921:d05e:f5e9', '2026-03-06 19:50:10'),
(79, 1, 'property', 'view', '5.193.139.163', '2026-03-06 21:17:20'),
(80, 1, 'agent', 'view', '5.193.139.163', '2026-03-06 21:29:48'),
(81, 1, 'property', 'view', '5.193.139.163', '2026-03-07 07:03:27'),
(82, 1, 'agent', 'view', '5.193.139.163', '2026-03-07 07:03:45');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_type` enum('property','agent') NOT NULL,
  `reason` varchar(140) NOT NULL,
  `reporter_ip` varchar(45) DEFAULT NULL,
  `status` enum('pending','reviewed','dismissed') NOT NULL DEFAULT 'pending',
  `admin_note` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `reviewed_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `item_id`, `item_type`, `reason`, `reporter_ip`, `status`, `admin_note`, `created_at`, `reviewed_at`) VALUES
(1, 1, 'agent', 'ddfddssdsdfsfsfs', '5.193.139.163', 'dismissed', '', '2026-03-07 07:45:32', '2026-03-07 07:47:35'),
(2, 1, 'agent', 'ggggggggggggggggggg', '2a00:f29:2a0:12e8:5109:5d69:37a2:f9ee', 'dismissed', '', '2026-03-07 07:57:03', '2026-03-07 08:00:35'),
(3, 1, 'property', 'gfgfdgdfgdfg', '2a00:f29:2a0:12e8:5109:5d69:37a2:f9ee', 'dismissed', '', '2026-03-07 07:59:43', '2026-03-07 08:00:34'),
(4, 2, 'property', 'Rashid said', '2a00:f29:2a0:12e8:11ed:db24:9100:7a61', 'dismissed', '', '2026-03-07 08:18:27', '2026-03-07 10:32:12'),
(5, 1, 'property', 'Gfffg Grfgggg', '5.193.139.163', 'dismissed', '', '2026-03-07 21:09:55', '2026-03-07 21:13:33'),
(6, 5, 'property', 'Fifirjjfjfj', '2a00:f29:2a0:ea6b:e462:9e6b:c199:9726', 'dismissed', '', '2026-03-08 17:08:47', '2026-03-08 17:28:05'),
(7, 5, 'property', 'Fiffrikfkfk', '94.206.149.226', 'dismissed', '', '2026-03-08 17:19:02', '2026-03-08 17:28:04'),
(8, 1, 'property', 'Irritirj fivj', '2a00:f29:2a0:ea6b:e462:9e6b:c199:9726', 'dismissed', '', '2026-03-08 17:20:37', '2026-03-08 17:28:03'),
(9, 5, 'property', 'Djffjffn fifjf', '2a00:f29:2a0:ea6b:e006:abcc:aeaa:1259', 'dismissed', '', '2026-03-08 17:22:14', '2026-03-08 17:28:01'),
(10, 13, 'property', 'Gftbgvg gfc', '2a00:f29:1108:b5a2:e006:abcc:aeaa:1259', 'dismissed', NULL, '2026-03-08 20:39:41', '2026-03-08 21:18:40'),
(11, 13, 'property', 'Gggvvv hhhh', '5.193.139.163', 'dismissed', NULL, '2026-03-09 00:10:00', '2026-03-09 09:11:11'),
(12, 27, 'property', 'fffssfsdfssdfsdsd', '5.193.132.2', 'dismissed', '', '2026-03-21 13:00:48', '2026-03-21 22:55:34'),
(13, 31, 'property', 'fsdsdfsdsdfdsfsd', '5.193.132.2', 'dismissed', '', '2026-03-21 13:01:25', '2026-03-21 22:55:31');

-- --------------------------------------------------------

--
-- Table structure for table `site_events`
--

CREATE TABLE `site_events` (
  `id` bigint(20) NOT NULL,
  `session_id` varchar(64) NOT NULL,
  `event_type` varchar(64) NOT NULL,
  `emirate` varchar(64) DEFAULT '',
  `area` varchar(128) DEFAULT '',
  `value` varchar(512) DEFAULT '',
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `site_events`
--

INSERT INTO `site_events` (`id`, `session_id`, `event_type`, `emirate`, `area`, `value`, `created_at`) VALUES
(1, 'zys63xg5u1mmwqw58c', 'contact', '', '', 'whatsapp', '2026-03-19 04:41:57'),
(2, 'zys63xg5u1mmwqw58c', 'search', 'abu_dhabi', 'City Center', 'City Center', '2026-03-19 04:42:49'),
(3, 'zys63xg5u1mmwqw58c', 'search', 'abu_dhabi', 'Reem Island', 'Reem Island', '2026-03-19 04:43:08'),
(4, 'zys63xg5u1mmwqw58c', 'search', 'abu_dhabi', 'Reem Island', 'Reem Island', '2026-03-19 04:43:10'),
(5, 'zys63xg5u1mmwqw58c', 'search', 'dubai', 'Downtown Dubai', 'Downtown Dubai', '2026-03-19 04:43:13'),
(6, 'zys63xg5u1mmwqw58c', 'search', 'umm_al_quwain', 'UAQ City', 'UAQ City', '2026-03-19 04:43:16'),
(7, 'zys63xg5u1mmwqw58c', 'search', 'abu_dhabi', 'City Center', 'City Center', '2026-03-19 04:43:25'),
(8, 'zys63xg5u1mmwqw58c', 'search', 'umm_al_quwain', 'UAQ City', 'UAQ City', '2026-03-19 04:43:28'),
(9, 'zys63xg5u1mmwqw58c', 'search', 'dubai', 'Dubai Marina', 'Dubai Marina', '2026-03-19 04:43:33'),
(10, 'zys63xg5u1mmwqw58c', 'search', 'dubai', 'Dubai Marina', 'Dubai Marina', '2026-03-19 04:43:35'),
(11, 'zys63xg5u1mmwqw58c', 'search', 'dubai', 'Dubai Marina', 'Dubai Marina', '2026-03-19 04:43:38'),
(12, 'zys63xg5u1mmwqw58c', 'search', 'sharjah', 'Al Qasimia', 'Al Qasimia', '2026-03-19 04:43:40'),
(13, 'zys63xg5u1mmwqw58c', 'search', 'ajman', 'Ajman City', 'Ajman City', '2026-03-19 04:45:36'),
(14, 'zys63xg5u1mmwqw58c', 'search', 'ajman', 'Al Jurf 2 - الجرف ٢', 'Al Jurf 2 - الجرف ٢', '2026-03-19 04:45:40'),
(15, 'zys63xg5u1mmwqw58c', 'search', 'dubai', 'Downtown Dubai', 'Downtown Dubai', '2026-03-19 04:45:47'),
(16, 'zys63xg5u1mmwqw58c', 'search', 'ajman', 'Liwara 1 - ليوارة ١', 'Liwara 1 - ليوارة ١', '2026-03-19 04:45:55'),
(17, 'zys63xg5u1mmwqw58c', 'search', 'ajman', 'Liwara 2 - ليوارة ٢', 'Liwara 2 - ليوارة ٢', '2026-03-19 04:46:15'),
(18, 'zys63xg5u1mmwqw58c', 'search', 'ajman', 'Ajman Industrial 7 - الصناعية ٧', 'Ajman Industrial 7 - الصناعية ٧', '2026-03-19 04:46:21'),
(19, 'zys63xg5u1mmwqw58c', 'search', 'ajman', 'Ajman Industrial 4 - الصناعية ٤', 'Ajman Industrial 4 - الصناعية ٤', '2026-03-19 04:46:31'),
(20, 'zys63xg5u1mmwqw58c', 'search', 'ajman', 'Ajman Industrial 1 - الصناعية ١', 'Ajman Industrial 1 - الصناعية ١', '2026-03-19 04:46:34'),
(21, '20obtqy2z3rmmwspiu9', 'search', 'ajman', 'Al Rawda 3 - الروضة ٣', 'Al Rawda 3 - الروضة ٣', '2026-03-19 05:33:35'),
(22, 'pqni4o2n1yjmmwtajia', 'property_click', 'ajman', 'Al Nakhil 1', 'gg', '2026-03-19 05:58:34'),
(23, 'pqni4o2n1yjmmwtajia', 'property_click', 'ajman', 'Al Nakhil 1', 'jankara', '2026-03-19 05:59:08'),
(24, 'pqni4o2n1yjmmwtajia', 'property_click', 'ajman', 'ليوارة 1', 'rgergerg', '2026-03-19 05:59:10'),
(25, 'pqni4o2n1yjmmwtajia', 'property_click', 'ajman', 'Al Nakhil 1', 'ttytffu', '2026-03-19 05:59:13'),
(26, 'pqni4o2n1yjmmwtajia', 'agent_click', 'ajman', 'Al Rashidiya 3 - الراشدية ٣', 'Rashid', '2026-03-19 05:59:15'),
(27, 'pqni4o2n1yjmmwtajia', 'agent_click', 'ajman', 'Al Rashidiya 3 - الراشدية ٣', 'Rashid', '2026-03-19 05:59:35'),
(28, 'pqni4o2n1yjmmwtajia', 'property_click', 'ajman', 'Al Rashidiya 3', 'sdsd', '2026-03-19 05:59:37'),
(29, 'pqni4o2n1yjmmwtajia', 'agent_click', 'ajman', 'Al Rawda 3 - الروضة ٣', 'Zahid', '2026-03-19 05:59:42'),
(30, 'pqni4o2n1yjmmwtajia', 'agent_click', 'ajman', 'Al Nuaimiya', 'Rashid said khan', '2026-03-19 05:59:44'),
(31, 'pqni4o2n1yjmmwtajia', 'property_click', 'ajman', 'Ajman Industrial 1', 'Fjddjdj', '2026-03-19 05:59:46'),
(32, 'pqni4o2n1yjmmwtajia', 'property_click', 'ajman', 'Al Hamidiya 1', 'ffssdfsdsd', '2026-03-19 05:59:51'),
(33, 'pqni4o2n1yjmmwtajia', 'property_click', 'ajman', 'Al Rashidiya 3', 'sdsd', '2026-03-19 05:59:57'),
(34, 'pqni4o2n1yjmmwtajia', 'agent_click', 'ajman', 'Al Rashidiya 3 - الراشدية ٣', 'Rashid', '2026-03-19 06:00:00'),
(35, 'pqni4o2n1yjmmwtajia', 'property_click', 'ajman', 'Al Nakhil 1', 'jankara', '2026-03-19 06:00:03'),
(36, 'pqni4o2n1yjmmwtajia', 'property_click', 'ajman', 'ليوارة 1', 'rgergerg', '2026-03-19 06:00:04'),
(37, 'pqni4o2n1yjmmwtajia', 'property_click', 'ajman', 'Al Nakhil 1', 'jankara', '2026-03-19 06:00:26'),
(38, 'pqni4o2n1yjmmwtajia', 'property_click', 'ajman', 'Al Butain', 'room for rent', '2026-03-19 06:00:26'),
(39, 'pqni4o2n1yjmmwtajia', 'property_click', 'ajman', 'Al Nakhil 1', 'gg', '2026-03-19 06:00:29'),
(40, 'pqni4o2n1yjmmwtajia', 'property_click', 'ajman', 'ليوارة 1', 'rergergergr', '2026-03-19 06:00:30'),
(41, 'pqni4o2n1yjmmwtajia', 'property_click', 'ajman', 'ليوارة 1', 'rgergerg', '2026-03-19 06:00:33'),
(42, 'pqni4o2n1yjmmwtajia', 'agent_click', 'ajman', 'Al Rashidiya 3 - الراشدية ٣', 'Rashid', '2026-03-19 06:00:35'),
(43, 'pqni4o2n1yjmmwtajia', 'agent_click', 'ajman', 'Al Nuaimiya', 'Rashid said khan', '2026-03-19 06:00:39'),
(44, 'pqni4o2n1yjmmwtajia', 'property_click', 'ajman', 'Ajman Industrial 1', 'Fjddjdj', '2026-03-19 06:00:42'),
(45, 'pqni4o2n1yjmmwtajia', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 06:01:18'),
(46, 'pqni4o2n1yjmmwtajia', 'agent_click', 'ajman', 'Al Nuaimiya', 'Rashid said khan', '2026-03-19 06:12:56'),
(47, 'pqni4o2n1yjmmwtajia', 'property_click', 'ajman', 'Al Nakhil 1', 'jankara', '2026-03-19 06:38:11'),
(48, 'pqni4o2n1yjmmwtajia', 'property_click', 'ajman', 'Al Butain', 'room for rent', '2026-03-19 06:38:15'),
(49, 'pqni4o2n1yjmmwtajia', 'property_click', 'ajman', 'ليوارة 1', 'rgergerg', '2026-03-19 06:38:18'),
(50, 'pqni4o2n1yjmmwtajia', 'property_click', 'ajman', 'Al Nakhil 1', 'gg', '2026-03-19 06:38:30'),
(51, 'pqni4o2n1yjmmwtajia', 'property_click', 'ajman', 'Al Nakhil 1', 'jankara', '2026-03-19 07:01:36'),
(52, 'pqni4o2n1yjmmwtajia', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 07:03:23'),
(53, 'pqni4o2n1yjmmwtajia', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 07:03:27'),
(54, 'pqni4o2n1yjmmwtajia', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 07:03:31'),
(55, 'pqni4o2n1yjmmwtajia', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 07:03:35'),
(56, 'yporvrhtlemmwx9h1c', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 07:40:15'),
(57, 'yporvrhtlemmwx9h1c', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 07:40:19'),
(58, 'yporvrhtlemmwx9h1c', 'agent_click', 'ajman', 'Al Rawda 3 - الروضة ٣', 'Zahid', '2026-03-19 07:40:36'),
(59, '3su9gblh8l7mmx5h3s9', 'property_click', 'ajman', 'ليوارة 1', 'rergergergr', '2026-03-19 11:30:28'),
(60, 'g68qaavmvzbmmx6vj1n', 'property_click', 'ajman', 'Al Rashidiya 3', 'sdsd', '2026-03-19 12:09:36'),
(61, 'g68qaavmvzbmmx6vj1n', 'property_click', 'ajman', 'Al Nakhil 1', 'jankara', '2026-03-19 12:09:40'),
(62, 'g68qaavmvzbmmx6vj1n', 'property_click', 'ajman', 'Al Nakhil 1', 'ttytffu', '2026-03-19 12:09:52'),
(63, 'g68qaavmvzbmmx6vj1n', 'property_click', 'ajman', 'ليوارة 1', 'rergergergr', '2026-03-19 12:10:00'),
(64, 'g68qaavmvzbmmx6vj1n', 'property_click', 'ajman', 'Al Butain', 'room for rent', '2026-03-19 12:10:06'),
(65, 'g68qaavmvzbmmx6vj1n', 'property_click', 'ajman', 'ليوارة 1', 'rgergerg', '2026-03-19 12:10:07'),
(66, 'g68qaavmvzbmmx6vj1n', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 12:10:38'),
(67, 'g68qaavmvzbmmx6vj1n', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 12:10:56'),
(68, 'g68qaavmvzbmmx6vj1n', 'property_click', 'ajman', 'Ajman Industrial 1', 'Fjddjdj', '2026-03-19 12:24:51'),
(69, 'g68qaavmvzbmmx6vj1n', 'agent_click', 'ajman', 'Al Rawda 3 - الروضة ٣', 'Zahid', '2026-03-19 12:25:00'),
(70, 'g68qaavmvzbmmx6vj1n', 'property_click', 'ajman', 'Al Nakhil 1', 'jankara', '2026-03-19 12:39:38'),
(71, 'g68qaavmvzbmmx6vj1n', 'property_click', 'ajman', 'Al Rashidiya 3', 'sdsd', '2026-03-19 12:39:41'),
(72, 'dxib42mlg58mmx9ygdw', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 13:35:33'),
(73, 'dxib42mlg58mmx9ygdw', 'agent_click', 'ajman', 'Al Nuaimiya', 'Rashid said khan', '2026-03-19 13:35:45'),
(74, 'dxib42mlg58mmx9ygdw', 'agent_click', 'ajman', 'Al Rawda 3 - الروضة ٣', 'Zahid', '2026-03-19 13:35:48'),
(75, 'dxib42mlg58mmx9ygdw', 'property_click', 'ajman', 'Al Nakhil 1', 'gg', '2026-03-19 13:35:57'),
(76, 'rgmxvaweehhmmxaf2lu', 'property_click', 'ajman', 'Al Butain', 'room for rent', '2026-03-19 13:48:30'),
(77, 'rgmxvaweehhmmxaf2lu', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 13:48:42'),
(78, 'ktpa6q07jzmmmxakslh', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 13:52:55'),
(79, 'ktpa6q07jzmmmxakslh', 'property_click', 'ajman', 'Ajman Industrial 1', 'Fjddjdj', '2026-03-19 13:53:12'),
(80, 'ktpa6q07jzmmmxakslh', 'property_click', 'ajman', 'Al Nakhil 1', 'gg', '2026-03-19 13:53:18'),
(81, 'ktpa6q07jzmmmxakslh', 'property_click', 'ajman', 'Al Nakhil 1', 'jankara', '2026-03-19 13:53:21'),
(82, '7o092ybs8sammxanj39', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 13:55:02'),
(83, '7o092ybs8sammxanj39', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 14:00:20'),
(84, '7o092ybs8sammxanj39', 'agent_click', 'ajman', 'Al Nuaimiya', 'Rashid said khan', '2026-03-19 14:13:12'),
(85, '7o092ybs8sammxanj39', 'property_click', 'ajman', 'Ajman Industrial 1', 'Fjddjdj', '2026-03-19 14:13:46'),
(86, '7o092ybs8sammxanj39', 'agent_click', 'ajman', 'Al Rawda 3 - الروضة ٣', 'Zahid', '2026-03-19 14:13:51'),
(87, '7o092ybs8sammxanj39', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 14:20:18'),
(88, '7o092ybs8sammxanj39', 'property_click', 'ajman', 'Al Rashidiya 3', 'sdsd', '2026-03-19 14:20:29'),
(89, '7o092ybs8sammxanj39', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 14:46:49'),
(90, 'y0nihydljkmmmxcig94', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 14:47:06'),
(91, '7o092ybs8sammxanj39', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 14:54:23'),
(92, '7o092ybs8sammxanj39', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 14:58:36'),
(93, '7o092ybs8sammxanj39', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 15:00:32'),
(94, '7o092ybs8sammxanj39', 'property_click', 'ajman', 'Ajman Industrial 1', 'Fjddjdj', '2026-03-19 15:00:47'),
(95, '7o092ybs8sammxanj39', 'agent_click', 'ajman', 'Al Rawda 3 - الروضة ٣', 'Zahid', '2026-03-19 15:00:52'),
(96, 'vhul8zmmiyrmmxdfg9r', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 15:12:45'),
(97, 'vhul8zmmiyrmmxdfg9r', 'agent_click', 'ajman', 'Al Rawda 3 - الروضة ٣', 'Zahid', '2026-03-19 15:13:09'),
(98, 'zgvckobergmmxdgaud', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 15:13:25'),
(99, 'jor1dfwpvvbmmxdhw6e', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 15:14:39'),
(100, 'jor1dfwpvvbmmxdhw6e', 'property_click', 'ajman', 'Ajman Industrial 1', 'Fjddjdj', '2026-03-19 15:15:45'),
(101, 'zgvckobergmmxdgaud', 'agent_click', 'ajman', 'Al Nuaimiya', 'Rashid said khan', '2026-03-19 15:16:02'),
(102, 'zgvckobergmmxdgaud', 'agent_click', 'ajman', 'Al Nuaimiya', 'Rashid said khan', '2026-03-19 15:16:10'),
(103, 'ktpa6q07jzmmmxakslh', 'property_click', 'ajman', 'ليوارة 1', 'rergergergr', '2026-03-19 15:24:18'),
(104, 'ktpa6q07jzmmmxakslh', 'property_click', 'ajman', 'Al Nakhil 1', 'jankara', '2026-03-19 15:24:33'),
(105, 'ktpa6q07jzmmmxakslh', 'agent_click', 'ajman', 'Al Rashidiya 3 - الراشدية ٣', 'Rashid', '2026-03-19 15:24:43'),
(106, 'jor1dfwpvvbmmxdhw6e', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 15:28:00'),
(107, 'jor1dfwpvvbmmxdhw6e', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 15:38:55'),
(108, 'zgvckobergmmxdgaud', 'property_click', 'ajman', 'Al Rashidiya 3', 'sdsd', '2026-03-19 15:39:15'),
(109, 'jor1dfwpvvbmmxdhw6e', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 15:45:18'),
(110, 'zgvckobergmmxdgaud', 'property_click', 'ajman', 'Al Rashidiya 3', 'sdsd', '2026-03-19 15:49:09'),
(111, 'zgvckobergmmxdgaud', 'property_click', 'ajman', 'Al Nakhil 1', 'gg', '2026-03-19 15:49:16'),
(112, 'jor1dfwpvvbmmxdhw6e', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 15:57:01'),
(113, 'jor1dfwpvvbmmxdhw6e', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 16:06:06'),
(114, 'jor1dfwpvvbmmxdhw6e', 'property_click', 'ajman', 'Al Nakhil 1', 'jankara', '2026-03-19 16:06:19'),
(115, '1ksdgj02k3vmmxgcccu', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 16:34:19'),
(116, '1ksdgj02k3vmmxgcccu', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 16:34:30'),
(117, '1ksdgj02k3vmmxgcccu', 'property_click', 'umm_al_quwain', 'الراس - ٤', 'fsfsdfsd', '2026-03-19 16:34:45'),
(118, '1ksdgj02k3vmmxgcccu', 'property_click', 'umm_al_quwain', 'الراس - ٤', 'fsfsdfsd', '2026-03-19 16:34:48'),
(119, '1ksdgj02k3vmmxgcccu', 'property_click', 'umm_al_quwain', 'الراس - ٤', 'fsfsdfsd', '2026-03-19 16:36:24'),
(120, '1ksdgj02k3vmmxgcccu', 'property_click', 'ajman', 'Ajman Industrial 1', 'Fjddjdj', '2026-03-19 16:36:31'),
(121, '1ksdgj02k3vmmxgcccu', 'agent_click', 'ajman', 'Al Nuaimiya', 'Rashid said khan', '2026-03-19 16:36:35'),
(122, '1ksdgj02k3vmmxgcccu', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 16:36:41'),
(123, '1ksdgj02k3vmmxgcccu', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 16:36:51'),
(124, '1ksdgj02k3vmmxgcccu', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 16:37:31'),
(125, '1ksdgj02k3vmmxgcccu', 'property_click', 'ajman', 'Al Rashidiya 3', 'sdsd', '2026-03-19 16:37:45'),
(126, '1ksdgj02k3vmmxgcccu', 'property_click', 'ajman', 'Al Nakhil 1', 'jankara', '2026-03-19 16:37:49'),
(127, '1ksdgj02k3vmmxgcccu', 'agent_click', 'ajman', 'Al Nuaimiya', 'Rashid said khan', '2026-03-19 16:37:53'),
(128, '1ksdgj02k3vmmxgcccu', 'property_click', 'ajman', 'Ajman Industrial 1', 'Fjddjdj', '2026-03-19 16:37:57'),
(129, '1ksdgj02k3vmmxgcccu', 'property_click', 'ajman', 'Al Rashidiya 3', 'sdsd', '2026-03-19 16:39:59'),
(130, '1ksdgj02k3vmmxgcccu', 'property_click', 'ajman', 'Al Rashidiya 3', 'sdsd', '2026-03-19 16:40:02'),
(131, '1ksdgj02k3vmmxgcccu', 'property_click', 'ajman', 'Al Nakhil 1', 'jankara', '2026-03-19 16:40:04'),
(132, '1ksdgj02k3vmmxgcccu', 'property_click', 'ajman', 'Al Nakhil 1', 'jankara', '2026-03-19 16:40:50'),
(133, '1ksdgj02k3vmmxgcccu', 'property_click', 'ajman', 'Al Rashidiya 3', 'sdsd', '2026-03-19 16:40:53'),
(134, '1ksdgj02k3vmmxgcccu', 'property_click', 'ajman', 'Al Rashidiya 3', 'sdsd', '2026-03-19 16:41:37'),
(135, '1ksdgj02k3vmmxgcccu', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 16:41:43'),
(136, '1ksdgj02k3vmmxgcccu', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 16:41:50'),
(137, '1ksdgj02k3vmmxgcccu', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 16:42:01'),
(138, '1ksdgj02k3vmmxgcccu', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 16:53:15'),
(139, '1ksdgj02k3vmmxgcccu', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 16:53:26'),
(140, '1ksdgj02k3vmmxgcccu', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 16:53:39'),
(141, '1ksdgj02k3vmmxgcccu', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 16:53:48'),
(142, '1ksdgj02k3vmmxgcccu', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 16:53:59'),
(143, 'jor1dfwpvvbmmxdhw6e', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 17:32:56'),
(144, 'jor1dfwpvvbmmxdhw6e', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 17:37:30'),
(145, 'jor1dfwpvvbmmxdhw6e', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 17:37:40'),
(146, 'jor1dfwpvvbmmxdhw6e', 'property_click', 'ajman', 'Al Rashidiya 3', 'sdsd', '2026-03-19 17:37:53'),
(147, 'jor1dfwpvvbmmxdhw6e', 'property_click', 'ajman', 'Al Nakhil 1', 'jankara', '2026-03-19 17:37:56'),
(148, 'jor1dfwpvvbmmxdhw6e', 'property_click', 'ajman', 'Al Butain', 'room for rent', '2026-03-19 17:38:00'),
(149, 'jor1dfwpvvbmmxdhw6e', 'property_click', 'ajman', 'Al Nakhil 1', 'ttytffu', '2026-03-19 17:38:03'),
(150, 'jor1dfwpvvbmmxdhw6e', 'agent_click', 'ajman', 'Al Rashidiya 3 - الراشدية ٣', 'Rashid', '2026-03-19 17:38:08'),
(151, 'jor1dfwpvvbmmxdhw6e', 'search', 'umm_al_quwain', 'UAQ City', 'UAQ City', '2026-03-19 17:39:06'),
(152, 'jor1dfwpvvbmmxdhw6e', 'property_click', 'umm_al_quwain', 'الراس - ٤', 'fsfsdfsd', '2026-03-19 17:39:09'),
(153, 'jor1dfwpvvbmmxdhw6e', 'search', 'umm_al_quwain', 'UAQ City', 'UAQ City', '2026-03-19 17:39:13'),
(154, 'jor1dfwpvvbmmxdhw6e', 'search', 'umm_al_quwain', 'UAQ City', 'UAQ City', '2026-03-19 17:39:15'),
(155, 'jor1dfwpvvbmmxdhw6e', 'property_click', 'umm_al_quwain', 'الراس - ٤', 'fsfsdfsd', '2026-03-19 17:42:06'),
(156, 'jor1dfwpvvbmmxdhw6e', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 17:42:16'),
(157, 'jor1dfwpvvbmmxdhw6e', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 17:42:30'),
(158, 'jor1dfwpvvbmmxdhw6e', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 17:53:09'),
(159, 'jor1dfwpvvbmmxdhw6e', 'property_click', 'ajman', 'Ajman Industrial 1', 'Fjddjdj', '2026-03-19 17:53:24'),
(160, 'jor1dfwpvvbmmxdhw6e', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 18:24:08'),
(161, 'jor1dfwpvvbmmxdhw6e', 'property_click', 'ajman', 'Al Hamidiya 1', 'ffssdfsdsd', '2026-03-19 18:24:22'),
(162, 'jor1dfwpvvbmmxdhw6e', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 18:25:20'),
(163, 'jor1dfwpvvbmmxdhw6e', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 18:25:44'),
(164, 'jor1dfwpvvbmmxdhw6e', 'property_click', 'ajman', 'Al Hamidiya 1', 'ffssdfsdsd', '2026-03-19 18:26:01'),
(165, 'jor1dfwpvvbmmxdhw6e', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 18:31:04'),
(166, 'jor1dfwpvvbmmxdhw6e', 'property_click', 'ajman', 'Ajman Industrial 1', 'Fjddjdj', '2026-03-19 18:31:19'),
(167, 'jor1dfwpvvbmmxdhw6e', 'property_click', 'ajman', 'Ajman Industrial 1', 'Fjddjdj', '2026-03-19 18:36:46'),
(168, 'jor1dfwpvvbmmxdhw6e', 'property_click', 'ajman', 'Ajman Industrial 1', 'Fjddjdj', '2026-03-19 18:36:52'),
(169, 'jor1dfwpvvbmmxdhw6e', 'agent_click', 'ajman', 'Al Rawda 3 - الروضة ٣', 'Zahid', '2026-03-19 18:36:55'),
(170, 'jor1dfwpvvbmmxdhw6e', 'property_click', 'ajman', 'Al Rashidiya 3', 'sdsd', '2026-03-19 18:38:10'),
(171, 'jor1dfwpvvbmmxdhw6e', 'agent_click', 'ajman', 'Al Rashidiya 3 - الراشدية ٣', 'Rashid', '2026-03-19 18:38:14'),
(172, 'jor1dfwpvvbmmxdhw6e', 'property_click', 'ajman', 'Al Nakhil 1', 'gg', '2026-03-19 18:38:17'),
(173, 'jor1dfwpvvbmmxdhw6e', 'property_click', 'ajman', 'ليوارة 1', 'rergergergr', '2026-03-19 18:38:20'),
(174, 'jor1dfwpvvbmmxdhw6e', 'property_click', 'ajman', 'ليوارة 1', 'rgergerg', '2026-03-19 18:38:24'),
(175, 'jor1dfwpvvbmmxdhw6e', 'property_click', 'ajman', 'Al Butain', 'room for rent', '2026-03-19 18:38:27'),
(176, 'jor1dfwpvvbmmxdhw6e', 'agent_click', 'ajman', 'Al Rawda 3 - الروضة ٣', 'Zahid', '2026-03-19 18:38:33'),
(177, 'jor1dfwpvvbmmxdhw6e', 'property_click', 'ajman', 'Ajman Industrial 1', 'Fjddjdj', '2026-03-19 18:38:45'),
(178, 'jor1dfwpvvbmmxdhw6e', 'agent_click', 'ajman', 'Al Nuaimiya', 'Rashid said khan', '2026-03-19 18:38:47'),
(179, 'jor1dfwpvvbmmxdhw6e', 'search', 'ajman', 'Liwara 1 - ليوارة ١', 'Liwara 1 - ليوارة ١', '2026-03-19 18:45:07'),
(180, 'jor1dfwpvvbmmxdhw6e', 'property_click', 'ajman', 'Al Nakhil 1', 'jankara', '2026-03-19 18:45:10'),
(181, 'jor1dfwpvvbmmxdhw6e', 'property_click', 'ajman', 'Al Rashidiya 3', 'sdsd', '2026-03-19 18:45:13'),
(182, 'jor1dfwpvvbmmxdhw6e', 'property_click', 'ajman', 'Al Nakhil 1', 'jankara', '2026-03-19 18:45:15'),
(183, 'jor1dfwpvvbmmxdhw6e', 'property_click', 'ajman', 'ليوارة 1', 'rergergergr', '2026-03-19 18:45:17'),
(184, 'jor1dfwpvvbmmxdhw6e', 'property_click', 'ajman', 'Al Butain', 'room for rent', '2026-03-19 18:45:20'),
(185, 'jor1dfwpvvbmmxdhw6e', 'property_click', 'ajman', 'ليوارة 1', 'rgergerg', '2026-03-19 18:45:24'),
(186, 'jor1dfwpvvbmmxdhw6e', 'agent_click', 'ajman', 'Al Rashidiya 3 - الراشدية ٣', 'Rashid', '2026-03-19 18:45:29'),
(187, 'jor1dfwpvvbmmxdhw6e', 'agent_click', 'ajman', 'Al Rashidiya 3 - الراشدية ٣', 'Rashid', '2026-03-19 18:49:14'),
(188, 'jor1dfwpvvbmmxdhw6e', 'agent_click', 'ajman', 'Al Rawda 3 - الروضة ٣', 'Zahid', '2026-03-19 18:49:20'),
(189, '6fy2ghxocj8mmxl6fqq', 'search', 'ajman', 'Al Rawda 3 - الروضة ٣', 'Al Rawda 3 - الروضة ٣', '2026-03-19 18:49:44'),
(190, '6fy2ghxocj8mmxl6fqq', 'agent_click', 'ajman', 'Al Rawda 3 - الروضة ٣', 'Zahid', '2026-03-19 18:49:45'),
(191, 'jor1dfwpvvbmmxdhw6e', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 18:57:22'),
(192, 'jor1dfwpvvbmmxdhw6e', 'agent_click', 'ajman', 'Al Rawda 3 - الروضة ٣', 'Zahid', '2026-03-19 18:57:32'),
(193, 'jor1dfwpvvbmmxdhw6e', 'property_click', 'ajman', 'Ajman Industrial 1', 'Fjddjdj', '2026-03-19 18:57:42'),
(194, 'jor1dfwpvvbmmxdhw6e', 'agent_click', 'ajman', 'Al Nuaimiya', 'Rashid said khan', '2026-03-19 18:57:46'),
(195, 'jor1dfwpvvbmmxdhw6e', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 18:58:58'),
(196, 'jor1dfwpvvbmmxdhw6e', 'search', 'ajman', 'Al Rashidiya 3 - الراشدية ٣', 'Al Rashidiya 3 - الراشدية ٣', '2026-03-19 18:59:13'),
(197, 'jor1dfwpvvbmmxdhw6e', 'agent_click', 'ajman', 'Al Rashidiya 3 - الراشدية ٣', 'Rashid', '2026-03-19 18:59:16'),
(198, 'jor1dfwpvvbmmxdhw6e', 'property_click', 'ajman', 'Al Nakhil 1', 'gg', '2026-03-19 18:59:19'),
(199, 'jor1dfwpvvbmmxdhw6e', 'property_click', 'ajman', 'Al Nakhil 1', 'ttytffu', '2026-03-19 18:59:59'),
(200, 'jor1dfwpvvbmmxdhw6e', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 19:01:53'),
(201, 'jor1dfwpvvbmmxdhw6e', 'agent_click', 'ajman', 'Al Rawda 3 - الروضة ٣', 'Zahid', '2026-03-19 19:02:09'),
(202, 'jor1dfwpvvbmmxdhw6e', 'property_click', 'ajman', 'Ajman Industrial 1', 'Fjddjdj', '2026-03-19 19:02:18'),
(203, 'jor1dfwpvvbmmxdhw6e', 'agent_click', 'ajman', 'Al Nuaimiya', 'Rashid said khan', '2026-03-19 19:02:24'),
(204, 'jor1dfwpvvbmmxdhw6e', 'property_click', 'ajman', 'Al Butain', 'room for rent', '2026-03-19 19:02:30'),
(205, 'jor1dfwpvvbmmxdhw6e', 'property_click', 'ajman', 'Al Nakhil 1', 'jankara', '2026-03-19 19:02:32'),
(206, 'jor1dfwpvvbmmxdhw6e', 'property_click', 'ajman', 'Al Rashidiya 3', 'sdsd', '2026-03-19 19:02:36'),
(207, 'jor1dfwpvvbmmxdhw6e', 'property_click', 'ajman', 'Al Rashidiya 3', 'sdsd', '2026-03-19 19:02:39'),
(208, 'jor1dfwpvvbmmxdhw6e', 'agent_click', 'ajman', 'Al Nuaimiya', 'Rashid said khan', '2026-03-19 19:02:45'),
(209, 'jor1dfwpvvbmmxdhw6e', 'property_click', 'ajman', 'Ajman Industrial 1', 'Fjddjdj', '2026-03-19 19:02:48'),
(210, 'jor1dfwpvvbmmxdhw6e', 'agent_click', 'ajman', 'Al Rawda 3 - الروضة ٣', 'Zahid', '2026-03-19 19:02:51'),
(211, 'o14a8div6yammxlr81x', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 19:05:50'),
(212, 'o14a8div6yammxlr81x', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 19:06:00'),
(213, 'o14a8div6yammxlr81x', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 19:06:08'),
(214, 'o14a8div6yammxlr81x', 'agent_click', 'ajman', 'Al Rawda 3 - الروضة ٣', 'Zahid', '2026-03-19 19:06:21'),
(215, 'o14a8div6yammxlr81x', 'property_click', 'ajman', 'Ajman Industrial 1', 'Fjddjdj', '2026-03-19 19:06:29'),
(216, 'o14a8div6yammxlr81x', 'agent_click', 'ajman', 'Al Rashidiya 3 - الراشدية ٣', 'Rashid', '2026-03-19 19:06:35'),
(217, 'o14a8div6yammxlr81x', 'property_click', 'ajman', 'Al Nakhil 1', 'jankara', '2026-03-19 19:06:45'),
(218, 'o14a8div6yammxlr81x', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 19:06:55'),
(219, 'j0n4s2mdzxkmmxmpxl8', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 19:32:49'),
(220, 'j0n4s2mdzxkmmxmpxl8', 'agent_click', 'ajman', 'Al Nuaimiya', 'Rashid said khan', '2026-03-19 19:33:10'),
(221, 'j0n4s2mdzxkmmxmpxl8', 'agent_click', 'ajman', 'Al Rawda 3 - الروضة ٣', 'Zahid', '2026-03-19 19:33:13'),
(222, 'j0n4s2mdzxkmmxmpxl8', 'property_click', 'ajman', 'Ajman Industrial 1', 'Fjddjdj', '2026-03-19 19:33:21'),
(223, 'j0n4s2mdzxkmmxmpxl8', 'property_click', 'ajman', 'Al Rashidiya 3', 'sdsd', '2026-03-19 19:33:26'),
(224, 'j0n4s2mdzxkmmxmpxl8', 'agent_click', 'ajman', 'Al Rashidiya 3 - الراشدية ٣', 'Rashid', '2026-03-19 19:33:29'),
(225, 'j0n4s2mdzxkmmxmpxl8', 'property_click', 'ajman', 'Al Nakhil 1', 'gg', '2026-03-19 19:33:37'),
(226, 'j0n4s2mdzxkmmxmpxl8', 'property_click', 'ajman', 'Al Butain', 'room for rent', '2026-03-19 19:33:39'),
(227, 'k5q1jblpnwmmxmrfr4', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 19:34:01'),
(228, 'k5q1jblpnwmmxmrfr4', 'agent_click', 'ajman', 'Al Rawda 3 - الروضة ٣', 'Zahid', '2026-03-19 19:34:22'),
(229, 'kyel6mxxeelmmxmsghr', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 19:34:50'),
(230, 'kyel6mxxeelmmxmsghr', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 19:35:03'),
(231, 'kyel6mxxeelmmxmsghr', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 19:35:14'),
(232, 'kyel6mxxeelmmxmsghr', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 19:35:24'),
(233, 'kyel6mxxeelmmxmsghr', 'agent_click', 'ajman', 'Al Rawda 3 - الروضة ٣', 'Zahid', '2026-03-19 19:35:43'),
(234, 'kyel6mxxeelmmxmsghr', 'property_click', 'ajman', 'Ajman Industrial 1', 'Fjddjdj', '2026-03-19 19:35:55'),
(235, 'kyel6mxxeelmmxmsghr', 'agent_click', 'ajman', 'Al Nuaimiya', 'Rashid said khan', '2026-03-19 19:35:58'),
(236, 'kyel6mxxeelmmxmsghr', 'agent_click', 'ajman', 'Al Rashidiya 3 - الراشدية ٣', 'Rashid', '2026-03-19 19:36:05'),
(237, 'kyel6mxxeelmmxmsghr', 'property_click', 'ajman', 'Al Rashidiya 3', 'sdsd', '2026-03-19 19:36:16'),
(238, 'kyel6mxxeelmmxmsghr', 'property_click', 'ajman', 'Al Nakhil 1', 'jankara', '2026-03-19 19:36:19'),
(239, 'kyel6mxxeelmmxmsghr', 'property_click', 'ajman', 'ليوارة 1', 'rergergergr', '2026-03-19 19:36:26'),
(240, 'kyel6mxxeelmmxmsghr', 'property_click', 'ajman', 'Al Butain', 'room for rent', '2026-03-19 19:36:29'),
(241, 'kyel6mxxeelmmxmsghr', 'agent_click', 'ajman', 'Al Rawda 3 - الروضة ٣', 'Zahid', '2026-03-19 19:36:36'),
(242, 'kyel6mxxeelmmxmsghr', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 19:36:52'),
(243, 'kyel6mxxeelmmxmsghr', 'agent_click', 'ajman', 'Al Rawda 3 - الروضة ٣', 'Zahid', '2026-03-19 19:37:04'),
(244, 'kyel6mxxeelmmxmsghr', 'agent_click', 'ajman', 'Al Rashidiya 3 - الراشدية ٣', 'Rashid', '2026-03-19 19:37:17'),
(245, 'kyel6mxxeelmmxmsghr', 'property_click', 'ajman', 'Al Nakhil 1', 'gg', '2026-03-19 19:37:30'),
(246, 'kyel6mxxeelmmxmsghr', 'property_click', 'ajman', 'Al Nakhil 1', 'jankara', '2026-03-19 19:37:32'),
(247, 'kyel6mxxeelmmxmsghr', 'agent_click', 'ajman', 'Al Rashidiya 3 - الراشدية ٣', 'Rashid', '2026-03-19 19:37:32'),
(248, 'kyel6mxxeelmmxmsghr', 'agent_click', 'ajman', 'Al Rashidiya 3 - الراشدية ٣', 'Rashid', '2026-03-19 19:37:54'),
(249, 'kyel6mxxeelmmxmsghr', 'property_click', 'ajman', 'Al Hamidiya 1', 'ffssdfsdsd', '2026-03-19 19:38:10'),
(250, 'kyel6mxxeelmmxmsghr', 'property_click', 'ajman', 'Al Hamidiya 1', 'ffssdfsdsd', '2026-03-19 19:38:13'),
(251, 'kyel6mxxeelmmxmsghr', 'agent_click', 'ajman', 'Al Rawda 3 - الروضة ٣', 'Zahid', '2026-03-19 19:38:18'),
(252, 'kyel6mxxeelmmxmsghr', 'agent_click', 'ajman', 'Al Rawda 3 - الروضة ٣', 'Zahid', '2026-03-19 19:38:31'),
(253, 'kyel6mxxeelmmxmsghr', 'agent_click', 'ajman', 'Al Rawda 3 - الروضة ٣', 'Zahid', '2026-03-19 19:38:51'),
(254, 'kyel6mxxeelmmxmsghr', 'agent_click', 'ajman', 'Al Rashidiya 3 - الراشدية ٣', 'Rashid', '2026-03-19 19:39:11'),
(255, 'kyel6mxxeelmmxmsghr', 'property_click', 'ajman', 'Al Rashidiya 3', 'sdsd', '2026-03-19 19:39:22'),
(256, 'kyel6mxxeelmmxmsghr', 'property_click', 'ajman', 'Al Rashidiya 3', 'sdsd', '2026-03-19 19:39:28'),
(257, 'kyel6mxxeelmmxmsghr', 'property_click', 'ajman', 'Al Rashidiya 3', 'sdsd', '2026-03-19 19:39:31'),
(258, 'kyel6mxxeelmmxmsghr', 'property_click', 'ajman', 'Al Rashidiya 3', 'sdsd', '2026-03-19 19:39:35'),
(259, 'kyel6mxxeelmmxmsghr', 'property_click', 'ajman', 'Al Rashidiya 3', 'sdsd', '2026-03-19 19:39:40'),
(260, '7o4mlsgokn8mmxoncs3', 'search', 'ajman', 'Ajman City', 'Ajman City', '2026-03-19 20:26:52'),
(261, '7o4mlsgokn8mmxoncs3', 'search', 'ajman', 'Ajman City', 'Ajman City', '2026-03-19 20:26:55'),
(262, '7o4mlsgokn8mmxoncs3', 'agent_click', 'ajman', 'Al Rawda 3 - الروضة ٣', 'Zahid', '2026-03-19 20:30:33'),
(263, '7o4mlsgokn8mmxoncs3', 'property_click', 'ajman', 'Ajman Industrial 1', 'Fjddjdj', '2026-03-19 20:30:43'),
(264, '7o4mlsgokn8mmxoncs3', 'agent_click', 'ajman', 'Al Nuaimiya', 'Rashid said khan', '2026-03-19 20:30:45'),
(265, '7o4mlsgokn8mmxoncs3', 'property_click', 'ajman', 'Al Rashidiya 3', 'sdsd', '2026-03-19 20:30:53'),
(266, '7o4mlsgokn8mmxoncs3', 'agent_click', 'ajman', 'Al Rashidiya 3 - الراشدية ٣', 'Rashid', '2026-03-19 20:30:56'),
(267, '7o4mlsgokn8mmxoncs3', 'property_click', 'ajman', 'Al Nakhil 1', 'gg', '2026-03-19 20:33:59'),
(268, '7o4mlsgokn8mmxoncs3', 'property_click', 'ajman', 'Al Nakhil 1', 'gg', '2026-03-19 20:34:10'),
(269, '7o4mlsgokn8mmxoncs3', 'property_click', 'ajman', 'Al Nakhil 1', 'jankara', '2026-03-19 20:34:18'),
(270, '7o4mlsgokn8mmxoncs3', 'property_click', 'ajman', 'Al Rashidiya 3', 'sdsd', '2026-03-19 20:34:28'),
(271, '7o4mlsgokn8mmxoncs3', 'property_click', 'ajman', 'ليوارة 1', 'rgergerg', '2026-03-19 20:34:42'),
(272, '7o4mlsgokn8mmxoncs3', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 20:34:59'),
(273, '7o4mlsgokn8mmxoncs3', 'search', 'ajman', 'Ajman City', 'Ajman City', '2026-03-19 20:35:11'),
(274, '7o4mlsgokn8mmxoncs3', 'property_click', 'ajman', 'Al Hamidiya 1', 'ffssdfsdsd', '2026-03-19 20:35:13'),
(275, '7g1yjj67m7ammxozz0i', 'property_click', 'umm_al_quwain', 'الراس - ٤', 'fsfsdfsd', '2026-03-19 20:36:50'),
(276, '7g1yjj67m7ammxozz0i', 'property_click', 'ajman', 'Ajman Industrial 1', 'Fjddjdj', '2026-03-19 20:37:12'),
(277, '7g1yjj67m7ammxozz0i', 'agent_click', 'ajman', 'Al Nuaimiya', 'Rashid said khan', '2026-03-19 20:37:21'),
(278, '7g1yjj67m7ammxozz0i', 'property_click', 'ajman', 'Al Hamidiya 1', 'ffssdfsdsd', '2026-03-19 20:37:32'),
(279, '7g1yjj67m7ammxozz0i', 'property_click', 'ajman', 'Al Rashidiya 3', 'sdsd', '2026-03-19 20:37:45'),
(280, '7g1yjj67m7ammxozz0i', 'agent_click', 'ajman', 'Al Rashidiya 3 - الراشدية ٣', 'Rashid', '2026-03-19 20:37:54'),
(281, '7g1yjj67m7ammxozz0i', 'search', 'ajman', 'Ajman City', 'Ajman City', '2026-03-19 20:40:58'),
(282, '7g1yjj67m7ammxozz0i', 'property_click', 'ajman', 'Al Hamidiya 1', 'ffssdfsdsd', '2026-03-19 20:40:59'),
(283, 'uj7ch3sbrdnmmxprrvm', 'property_click', 'ajman', 'ليوارة 1', 'rgergerg', '2026-03-19 20:58:16'),
(284, 'uj7ch3sbrdnmmxprrvm', 'property_click', 'ajman', 'ليوارة 1', 'rgergerg', '2026-03-19 20:58:17'),
(285, 'uj7ch3sbrdnmmxprrvm', 'property_click', 'ajman', 'ليوارة 1', 'rgergerg', '2026-03-19 20:58:17'),
(286, 'uj7ch3sbrdnmmxprrvm', 'property_click', 'ajman', 'ليوارة 1', 'rgergerg', '2026-03-19 20:58:21'),
(287, 'uj7ch3sbrdnmmxprrvm', 'property_click', 'ajman', 'ليوارة 1', 'rgergerg', '2026-03-19 20:58:23'),
(288, 'uj7ch3sbrdnmmxprrvm', 'property_click', 'ajman', 'ليوارة 1', 'rgergerg', '2026-03-19 20:58:26'),
(289, 'uj7ch3sbrdnmmxprrvm', 'property_click', 'ajman', 'ليوارة 1', 'rgergerg', '2026-03-19 20:58:27'),
(290, 'uj7ch3sbrdnmmxprrvm', 'property_click', 'ajman', 'ليوارة 1', 'rgergerg', '2026-03-19 20:58:29'),
(291, 'uj7ch3sbrdnmmxprrvm', 'property_click', 'ajman', 'ليوارة 1', 'rgergerg', '2026-03-19 20:58:31'),
(292, 'uj7ch3sbrdnmmxprrvm', 'property_click', 'ajman', 'ليوارة 1', 'rgergerg', '2026-03-19 20:58:33'),
(293, 'uj7ch3sbrdnmmxprrvm', 'property_click', 'ajman', 'ليوارة 1', 'rgergerg', '2026-03-19 20:58:34'),
(294, 'uj7ch3sbrdnmmxprrvm', 'property_click', 'ajman', 'ليوارة 1', 'rgergerg', '2026-03-19 20:58:36'),
(295, 'uj7ch3sbrdnmmxprrvm', 'property_click', 'ajman', 'ليوارة 1', 'rgergerg', '2026-03-19 20:58:39'),
(296, 'uj7ch3sbrdnmmxprrvm', 'property_click', 'ajman', 'ليوارة 1', 'rgergerg', '2026-03-19 20:58:45'),
(297, 'uj7ch3sbrdnmmxprrvm', 'property_click', 'ajman', 'ليوارة 1', 'rgergerg', '2026-03-19 20:59:44'),
(298, 'uj7ch3sbrdnmmxprrvm', 'property_click', 'ajman', 'ليوارة 1', 'rgergerg', '2026-03-19 20:59:49'),
(299, 'e8md4vcx8zummxqb3ur', 'agent_click', 'ajman', 'Al Rawda 3 - الروضة ٣', 'Zahid', '2026-03-19 21:13:20'),
(300, 'e8md4vcx8zummxqb3ur', 'agent_click', 'ajman', 'Al Nuaimiya', 'Rashid said khan', '2026-03-19 21:13:33'),
(301, 'e8md4vcx8zummxqb3ur', 'property_click', 'ajman', 'Ajman Industrial 1', 'Fjddjdj', '2026-03-19 21:13:42'),
(302, 'e8md4vcx8zummxqb3ur', 'property_click', 'ajman', 'Al Nakhil 1', 'jankara', '2026-03-19 21:13:56'),
(303, 'e8md4vcx8zummxqb3ur', 'property_click', 'ajman', 'Al Nakhil 1', 'jankara', '2026-03-19 21:14:09'),
(304, 'e8md4vcx8zummxqb3ur', 'property_click', 'ajman', 'Al Nakhil 1', 'jankara', '2026-03-19 21:14:17'),
(305, 'e8md4vcx8zummxqb3ur', 'property_click', 'ajman', 'Al Nakhil 1', 'jankara', '2026-03-19 21:14:27'),
(306, 'e8md4vcx8zummxqb3ur', 'property_click', 'ajman', 'Al Nakhil 1', 'jankara', '2026-03-19 21:14:34'),
(307, 'e8md4vcx8zummxqb3ur', 'agent_click', 'ajman', 'Al Rashidiya 3 - الراشدية ٣', 'Rashid', '2026-03-19 21:15:16'),
(308, 'e8md4vcx8zummxqb3ur', 'property_click', 'ajman', 'Al Rashidiya 3', 'sdsd', '2026-03-19 21:15:24'),
(309, 'e8md4vcx8zummxqb3ur', 'property_click', 'ajman', 'Al Nakhil 1', 'jankara', '2026-03-19 21:15:44'),
(310, 'e8md4vcx8zummxqb3ur', 'property_click', 'ajman', 'Al Nakhil 1', 'gg', '2026-03-19 21:15:55'),
(311, 'e8md4vcx8zummxqb3ur', 'property_click', 'ajman', 'Al Butain', 'room for rent', '2026-03-19 21:16:16'),
(312, 'uj7ch3sbrdnmmxprrvm', 'property_click', 'ajman', 'ليوارة 1', 'rgergerg', '2026-03-19 21:19:19'),
(313, 'uj7ch3sbrdnmmxprrvm', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 21:19:54'),
(314, 'qbiib746o2mmxqk1r1', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 21:20:13'),
(315, 'uuj2sz2kmymmxqkgh9', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 21:20:33'),
(316, 'uuj2sz2kmymmxqkgh9', 'property_click', 'ajman', 'Al Nakhil 1', 'gg', '2026-03-19 21:21:19'),
(317, 'uj7ch3sbrdnmmxprrvm', 'property_click', 'dubai', 'Downtown Dubai', 'djsdjdsfjdsfj', '2026-03-19 21:23:37'),
(318, 'uj7ch3sbrdnmmxprrvm', 'property_click', 'umm_al_quwain', 'الراس - ٤', 'fsfsdfsd', '2026-03-19 21:25:17'),
(319, 'uj7ch3sbrdnmmxprrvm', 'property_click', 'ajman', 'Ajman Industrial 1', 'Fjddjdj', '2026-03-19 21:30:02'),
(320, 'uj7ch3sbrdnmmxprrvm', 'property_click', 'ajman', 'Al Nakhil 1', 'gg', '2026-03-19 21:30:24'),
(321, 'uj7ch3sbrdnmmxprrvm', 'property_click', 'ajman', 'ليوارة 1', 'rergergergr', '2026-03-19 21:30:36'),
(322, 'uj7ch3sbrdnmmxprrvm', 'property_click', 'ajman', 'Al Nakhil 1', 'jankara', '2026-03-19 21:30:46'),
(323, 'uj7ch3sbrdnmmxprrvm', 'property_click', 'ajman', 'Ajman Industrial 1', 'Fjddjdj', '2026-03-19 21:31:52'),
(324, 'uj7ch3sbrdnmmxprrvm', 'agent_click', 'ajman', 'Al Rawda 3 - الروضة ٣', 'Zahid', '2026-03-19 21:32:06'),
(325, 'uj7ch3sbrdnmmxprrvm', 'property_click', 'ajman', 'Ajman Industrial 1', 'Fjddjdj', '2026-03-19 21:33:21'),
(326, 'uj7ch3sbrdnmmxprrvm', 'property_click', 'ajman', 'Ajman Industrial 1', 'Fjddjdj', '2026-03-19 21:34:44'),
(327, 'qjpadl5ezummxr3hb8', 'property_click', 'ajman', 'Al Nakhil 1', 'jankara', '2026-03-19 21:35:28'),
(328, 'qjpadl5ezummxr3hb8', 'property_click', 'ajman', 'Al Nakhil 1', 'gg', '2026-03-19 21:35:39'),
(329, 'qjpadl5ezummxr3hb8', 'property_click', 'ajman', 'ليوارة 1', 'rergergergr', '2026-03-19 21:35:51'),
(330, 'qjpadl5ezummxr3hb8', 'property_click', 'ajman', 'Ajman Industrial 1', 'Fjddjdj', '2026-03-19 21:36:05'),
(331, 'qjpadl5ezummxr3hb8', 'property_click', 'ajman', 'Ajman Industrial 1', 'Fjddjdj', '2026-03-19 21:36:17'),
(332, 'uj7ch3sbrdnmmxprrvm', 'agent_click', 'ajman', 'Al Nuaimiya', 'Rashid said khan', '2026-03-19 21:37:36'),
(333, 'uj7ch3sbrdnmmxprrvm', 'property_click', 'ajman', 'Ajman Industrial 1', 'Fjddjdj', '2026-03-19 21:37:53'),
(334, 'uj7ch3sbrdnmmxprrvm', 'agent_click', 'ajman', 'Al Rawda 3 - الروضة ٣', 'Zahid', '2026-03-19 21:38:15'),
(335, 'uj7ch3sbrdnmmxprrvm', 'property_click', 'ajman', 'Ajman Industrial 1', 'Fjddjdj', '2026-03-19 21:38:26'),
(336, 'uj7ch3sbrdnmmxprrvm', 'agent_click', 'ajman', 'Al Rawda 3 - الروضة ٣', 'Zahid', '2026-03-19 21:38:35'),
(337, 'uj7ch3sbrdnmmxprrvm', 'property_click', 'umm_al_quwain', 'الراس - ٤', 'fsfsdfsd', '2026-03-19 21:39:25'),
(338, 'uj7ch3sbrdnmmxprrvm', 'property_click', 'ajman', 'Ajman Industrial 1', 'Fjddjdj', '2026-03-19 21:39:57'),
(339, 'uj7ch3sbrdnmmxprrvm', 'agent_click', 'ajman', 'Al Rawda 3 - الروضة ٣', 'Zahid', '2026-03-19 21:40:15'),
(340, 'uj7ch3sbrdnmmxprrvm', 'agent_click', 'ajman', 'Al Nuaimiya', 'Rashid said khan', '2026-03-19 21:40:35'),
(341, 'uj7ch3sbrdnmmxprrvm', 'property_click', 'ajman', 'Ajman Industrial 1', 'Fjddjdj', '2026-03-19 21:40:49'),
(342, 'uj7ch3sbrdnmmxprrvm', 'agent_click', 'ajman', 'Al Rawda 3 - الروضة ٣', 'Zahid', '2026-03-19 21:41:00'),
(343, 'uj7ch3sbrdnmmxprrvm', 'agent_click', 'ajman', 'Al Nuaimiya', 'Rashid said khan', '2026-03-19 21:41:21'),
(344, 'vlwwztrwicdmmxrmu5y', 'property_click', 'ajman', 'Ajman Industrial 1', 'Fjddjdj', '2026-03-19 21:50:27'),
(345, 'uj7ch3sbrdnmmxprrvm', 'property_click', 'ajman', 'Ajman Industrial 1', 'Fjddjdj', '2026-03-19 21:52:05'),
(346, 'uj7ch3sbrdnmmxprrvm', 'property_click', 'umm_al_quwain', 'الراس - ٤', 'fsfsdfsd', '2026-03-19 22:03:00'),
(347, 'yoy5h7vve7nmmxwbq3e', 'search', 'ajman', 'Al Rumailah 2 - الرميلة ٢', 'Al Rumailah 2 - الرميلة ٢', '2026-03-20 00:01:53'),
(348, 'yoy5h7vve7nmmxwbq3e', 'agent_click', 'ajman', 'Al Rashidiya 3 - الراشدية ٣', 'Rashid', '2026-03-20 00:02:00'),
(349, 'uj7ch3sbrdnmmxprrvm', 'property_click', 'ajman', 'Al Butain', 'room for rent', '2026-03-20 00:34:24'),
(350, '46zmd03mpxymmxy32o3', 'property_click', 'umm_al_quwain', 'الراس - ٤', 'fsfsdfsd', '2026-03-20 00:51:05'),
(351, '46zmd03mpxymmxy32o3', 'property_click', 'ajman', 'Ajman Industrial 1', 'Fjddjdj', '2026-03-20 00:51:27'),
(352, 'uj7ch3sbrdnmmxprrvm', 'property_click', 'ajman', 'Ajman Industrial 1', 'Fjddjdj', '2026-03-20 00:53:03'),
(353, 'uj7ch3sbrdnmmxprrvm', 'agent_click', 'ajman', 'Al Rawda 3 - الروضة ٣', 'Zahid', '2026-03-20 00:53:26'),
(354, 'uj7ch3sbrdnmmxprrvm', 'property_click', 'ajman', 'Al Hamidiya 1', 'ffssdfsdsd', '2026-03-20 00:53:42'),
(355, '3bjlspzap4vmmxycnia', 'agent_click', 'ajman', 'Al Rawda 3 - الروضة ٣', 'Zahid', '2026-03-20 00:58:41'),
(356, 'uzkhzqjblbsmmxyjtoo', 'property_click', 'ajman', 'Al Hamidiya 1', 'ffssdfsdsd', '2026-03-20 01:04:13'),
(357, 'nwpbr49p4immxyzl6p', 'property_click', 'ajman', 'Al Rashidiya 3', 'sdsd', '2026-03-20 01:16:22'),
(358, 'nwpbr49p4immxyzl6p', 'property_click', 'ajman', 'Al Nakhil 1', 'gg', '2026-03-20 01:16:35'),
(359, 'uj7ch3sbrdnmmxprrvm', 'property_click', 'ajman', 'Ajman Industrial 1', 'Fjddjdj', '2026-03-20 01:20:05'),
(360, '5icgdzk2eulmmxzjlof', 'agent_click', 'ajman', 'Al Rawda 3 - الروضة ٣', 'Zahid', '2026-03-20 01:31:56'),
(361, 'uj7ch3sbrdnmmxprrvm', 'property_click', 'ajman', 'Ajman Industrial 1', 'Fjddjdj', '2026-03-20 01:42:17'),
(362, '9khzzm3jikmmy1k0b7', 'property_click', 'umm_al_quwain', 'الراس - ٤', 'fsfsdfsd', '2026-03-20 02:28:13'),
(363, '9khzzm3jikmmy1k0b7', 'property_click', 'ajman', 'Al Rashidiya 3', 'sdsd', '2026-03-20 02:28:27'),
(364, '0s27scfjojtfmmy1mc62', 'search', 'sharjah', 'Al Qasimia', 'Al Qasimia', '2026-03-20 02:30:06'),
(365, 'aytwi4movy8mmy0bjdk', 'property_click', 'umm_al_quwain', 'الراس - ٤', 'fsfsdfsd', '2026-03-20 02:56:53'),
(366, 'aytwi4movy8mmy0bjdk', 'property_click', 'umm_al_quwain', 'الراس - ٤', 'fsfsdfsd', '2026-03-20 02:57:11'),
(367, 'aytwi4movy8mmy0bjdk', 'property_click', 'umm_al_quwain', 'الراس - ٤', 'fsfsdfsd', '2026-03-20 02:57:29'),
(368, 'xpf9u679dt9mmy2m86i', 'property_click', 'umm_al_quwain', 'الراس - ٤', 'fsfsdfsd', '2026-03-20 02:57:50'),
(369, 'xpf9u679dt9mmy2m86i', 'agent_click', 'ajman', 'Al Rawda 3 - الروضة ٣', 'Zahid', '2026-03-20 02:57:59'),
(370, 'afvy4n6s3qmmy0cvnt', 'property_click', 'ajman', 'Al Hamidiya 1', 'ffssdfsdsd', '2026-03-20 04:05:59'),
(371, 'zuly23x7rxmmy5thip', 'search', 'ajman', 'Ajman Industrial 7 - الصناعية ٧', 'Ajman Industrial 7 - الصناعية ٧', '2026-03-20 04:27:58'),
(372, 'zuly23x7rxmmy5thip', 'property_click', 'ajman', 'Ajman Industrial 7 - الصناعية ٧', 'sdsd', '2026-03-20 04:28:01'),
(373, 'zuly23x7rxmmy5thip', 'property_click', 'umm_al_quwain', 'الراس - ٤', 'fsfsdfsd', '2026-03-20 04:41:00'),
(374, 'rmhq2w6n19immydhkpp', 'search', 'ajman', 'Ajman City', 'Ajman City', '2026-03-20 08:02:16'),
(375, 'rmhq2w6n19immydhkpp', 'search', 'ajman', 'Ajman City', 'Ajman City', '2026-03-20 08:02:21'),
(376, 'rmhq2w6n19immydhkpp', 'property_click', 'ajman', 'Al Hamidiya 1', 'ffssdfsdsd', '2026-03-20 08:02:24'),
(377, 'rmhq2w6n19immydhkpp', 'search', 'ajman', 'Al Rawda 3 - الروضة ٣', 'Al Rawda 3 - الروضة ٣', '2026-03-20 08:04:45'),
(378, '41b2uylfqdqmmzenbyn', 'property_click', 'ajman', 'Ajman Industrial 1', 'Fjddjdj', '2026-03-21 01:22:23'),
(379, '41b2uylfqdqmmzenbyn', 'agent_click', 'ajman', 'Al Nuaimiya', 'Rashid said khan', '2026-03-21 01:22:27'),
(380, 'kqutrrid7ymmzgo4gq', 'property_click', 'ajman', 'Ajman Industrial 7 - الصناعية ٧', 'sdsd', '2026-03-21 02:19:08'),
(381, 'zrpe7nbil8mmzi5pnb', 'property_click', 'ajman', 'Ajman Industrial 1', 'Fjddjdj', '2026-03-21 03:00:40'),
(382, '5hwucczg4ijmmzjnadw', 'property_click', 'ajman', 'Al Rashidiya 3 - الراشدية ٣', 'Private Room in Al Rashidiya 3 - ا', '2026-03-21 03:42:34'),
(383, 'oh9jvkx0wommzt9udp', 'search', 'ajman', 'Al Rumailah 2 - الرميلة ٢', 'Al Rumailah 2 - الرميلة ٢', '2026-03-21 08:11:51'),
(384, 'oh9jvkx0wommzt9udp', 'property_click', 'ajman', 'Al Rashidiya 3 - الراشدية ٣', 'Private Room in Al Rashidiya 3 - ا', '2026-03-21 08:11:56'),
(385, 'oh9jvkx0wommzt9udp', 'property_click', 'ajman', 'Al Nakhil 1', 'gg', '2026-03-21 08:12:18'),
(386, 'oh9jvkx0wommzt9udp', 'property_click', 'ajman', 'Al Rashidiya 3 - الراشدية ٣', 'Retail Space in Al Rashidiya 3 - ا', '2026-03-21 08:12:34'),
(387, 'oh9jvkx0wommzt9udp', 'property_click', 'ajman', 'Al Rashidiya 3 - الراشدية ٣', 'Retail Space in Al Rashidiya 3 - ا', '2026-03-21 08:12:53'),
(388, 'egva5qiz4q9mmzu3vxv', 'property_click', 'ajman', 'Al Hamidiya 1', 'ffssdfsdsd', '2026-03-21 08:35:16'),
(389, 'egva5qiz4q9mmzu3vxv', 'property_click', 'ajman', 'Ajman City', 'Showroom in Ajman City', '2026-03-21 08:35:41'),
(390, 'rfkc3f9ilrimmzu4vpl', 'property_click', 'dubai', 'Downtown Dubai', 'Private Room in Downtown Dubai', '2026-03-21 08:36:01'),
(391, 'rfkc3f9ilrimmzu4vpl', 'property_click', 'sharjah', 'Al Nahda', 'Bed Space in Al Nahda', '2026-03-21 08:57:59'),
(392, 'rfkc3f9ilrimmzu4vpl', 'property_click', 'sharjah', 'Al Nahda', 'Bed Space in Al Nahda', '2026-03-21 08:58:08'),
(393, 'rfkc3f9ilrimmzu4vpl', 'property_click', 'ajman', 'Al Rashidiya 3 - الراشدية ٣', 'Retail Space in Al Rashidiya 3 - ا', '2026-03-21 08:58:52'),
(394, 'pg403q7onh8mmzvj17z', 'search', 'ajman', 'Ajman City', 'Ajman City', '2026-03-21 09:15:10'),
(395, 'pg403q7onh8mmzvj17z', 'property_click', 'ajman', 'Ajman City', 'Showroom in Ajman City', '2026-03-21 09:15:11'),
(396, 'pg403q7onh8mmzvj17z', 'property_click', 'ajman', 'Al Hamidiya 1', 'ffssdfsdsd', '2026-03-21 09:15:19'),
(397, 'pg403q7onh8mmzvj17z', 'property_click', 'ajman', 'Al Hamidiya 1', 'ffssdfsdsd', '2026-03-21 09:16:04'),
(398, 'pg403q7onh8mmzvj17z', 'property_click', 'ajman', 'Ajman City', 'Showroom in Ajman City', '2026-03-21 09:16:13'),
(399, 'pg403q7onh8mmzvj17z', 'property_click', 'ajman', 'Al Hamidiya 1', 'ffssdfsdsd', '2026-03-21 09:16:21'),
(400, 'pg403q7onh8mmzvj17z', 'property_click', 'ajman', 'Ajman City', 'Showroom in Ajman City', '2026-03-21 09:16:33'),
(401, 'pg403q7onh8mmzvj17z', 'property_click', 'ajman', 'Al Hamidiya 1', 'ffssdfsdsd', '2026-03-21 09:16:42'),
(402, 'pg403q7onh8mmzvj17z', 'property_click', 'ajman', 'Al Hamidiya 1', 'ffssdfsdsd', '2026-03-21 09:16:52'),
(403, 'pg403q7onh8mmzvj17z', 'property_click', 'ajman', 'Al Hamidiya 1', 'ffssdfsdsd', '2026-03-21 09:17:06'),
(404, 'p24kdviamrdmmzvyh4z', 'property_click', 'ajman', 'Ajman Industrial 7 - الصناعية ٧', 'sdsd', '2026-03-21 09:27:01'),
(405, 'mfi30on2o5nmmzw54vb', 'property_click', 'ajman', 'ليوارة 1', 'rergergergr', '2026-03-21 09:32:27'),
(406, 'mfi30on2o5nmmzw54vb', 'property_click', 'ajman', 'Al Rashidiya 3 - الراشدية ٣', 'Partition Room in Al Rashidiya 3 -', '2026-03-21 09:32:53'),
(407, 'mfi30on2o5nmmzw54vb', 'search', 'ajman', 'Al Rumailah 2 - الرميلة ٢', 'Al Rumailah 2 - الرميلة ٢', '2026-03-21 09:33:08'),
(408, 'mfi30on2o5nmmzw54vb', 'property_click', 'ajman', 'Al Rumailah 3 - الرميلة ٣', '2 BHK in Al Rumailah 3 - الرميلة ٣', '2026-03-21 09:33:14'),
(409, 'mfi30on2o5nmmzw54vb', 'property_click', 'ajman', 'Al Nakhil 1', 'gg', '2026-03-21 09:33:49'),
(410, 'mfi30on2o5nmmzw54vb', 'property_click', 'ajman', 'Al Rashidiya 3 - الراشدية ٣', 'Retail Space in Al Rashidiya 3 - ا', '2026-03-21 09:34:12'),
(411, 's5adh7xi4u9mmzwdq35', 'property_click', 'ajman', 'Ajman Industrial 7 - الصناعية ٧', 'sdsd', '2026-03-21 09:38:54'),
(412, '23t8ukirdfmmzwgg1l', 'property_click', 'abu_dhabi', 'City Center', 'dfdsfds', '2026-03-21 09:40:58'),
(413, '23t8ukirdfmmzwgg1l', 'property_click', 'abu_dhabi', 'City Center', 'dfdsfds', '2026-03-21 09:41:06'),
(414, '23t8ukirdfmmzwgg1l', 'search', 'ajman', 'Al Rumailah 2 - الرميلة ٢', 'Al Rumailah 2 - الرميلة ٢', '2026-03-21 09:41:21'),
(415, 's5adh7xi4u9mmzwdq35', 'search', 'ajman', 'Al Rumailah 2 - الرميلة ٢', 'Al Rumailah 2 - الرميلة ٢', '2026-03-21 09:44:13'),
(416, '23t8ukirdfmmzwgg1l', 'property_click', 'ajman', 'Al Hamidiya 1', 'ffssdfsdsd', '2026-03-21 09:44:16'),
(417, 't9zxfzrghpfmmzwnm3h', 'property_click', 'ajman', 'Al Hamidiya 1', 'ffssdfsdsd', '2026-03-21 09:46:31'),
(418, '23t8ukirdfmmzwgg1l', 'property_click', 'ajman', 'Al Hamidiya 1', 'ffssdfsdsd', '2026-03-21 09:46:46'),
(419, '23t8ukirdfmmzwgg1l', 'property_click', 'ajman', 'Al Rashidiya 3', 'sdsd', '2026-03-21 09:47:11'),
(420, 's5adh7xi4u9mmzwdq35', 'search', 'ajman', 'Ajman City', 'Ajman City', '2026-03-21 09:56:02'),
(421, 'fj5bmwc0349mmzx1ogq', 'search', 'ajman', 'Ajman City', 'Ajman City', '2026-03-21 09:57:38'),
(422, 'z2tr5fejbwcmmzx4d6t', 'property_click', 'ajman', 'Ajman Industrial 1', 'Fjddjdj', '2026-03-21 10:01:13'),
(423, 'z2tr5fejbwcmmzx4d6t', 'property_click', 'ajman', 'Ajman Industrial 1', 'Fjddjdj', '2026-03-21 10:01:56'),
(424, 'z2tr5fejbwcmmzx4d6t', 'property_click', 'ajman', 'Ajman Industrial 1', 'Fjddjdj', '2026-03-21 10:02:03'),
(425, 's5adh7xi4u9mmzwdq35', 'search', 'ajman', 'Al Rumailah 1 - الرميلة ١', 'Al Rumailah 1 - الرميلة ١', '2026-03-21 10:02:36'),
(426, '4vha27jjstmmzxt5y7', 'property_click', 'ajman', 'Al Rashidiya 3 - الراشدية ٣', 'Retail Space in Al Rashidiya 3 - ا', '2026-03-21 10:18:58'),
(427, '4vha27jjstmmzxt5y7', 'property_click', 'ajman', 'Al Rashidiya 3 - الراشدية ٣', 'Private Room in Al Rashidiya 3 - ا', '2026-03-21 10:19:10'),
(428, '4vha27jjstmmzxt5y7', 'property_click', 'ajman', 'Ajman Industrial 7 - الصناعية ٧', 'sdsd', '2026-03-21 10:20:36'),
(429, '4vha27jjstmmzxt5y7', 'property_click', 'dubai', 'Downtown Dubai', 'Private Room in Downtown Dubai', '2026-03-21 10:21:02'),
(430, '7zv6ojnktaqmmzxx0gx', 'property_click', 'ajman', 'Al Rashidiya 3', 'sdsd', '2026-03-21 10:21:49'),
(431, 'd9h6mqiz21mmzz4qcg', 'property_click', 'ajman', 'Ajman Industrial 7 - الصناعية ٧', 'sdsd', '2026-03-21 10:57:20'),
(432, 'ubojbbli3mlmmzz6xgv', 'search', 'ajman', 'Al Nuaimiya', 'Al Nuaimiya', '2026-03-21 11:05:40'),
(433, 'ubojbbli3mlmmzz6xgv', 'property_click', 'ajman', 'Ajman Industrial 1', 'Fjddjdj', '2026-03-21 11:05:41'),
(434, 'gi18xatqezmn006db3', 'search', 'ajman', 'Al Rumailah 2 - الرميلة ٢', 'Al Rumailah 2 - الرميلة ٢', '2026-03-21 11:25:07'),
(435, 'gi18xatqezmn006db3', 'search', 'ajman', 'Ajman City', 'Ajman City', '2026-03-21 11:28:37'),
(436, 'gi18xatqezmn006db3', 'property_click', 'ajman', 'Ajman City', 'Showroom in Ajman City', '2026-03-21 11:28:38'),
(437, 'gi18xatqezmn006db3', 'property_click', 'sharjah', 'Al Nahda', 'Bed Space in Al Nahda', '2026-03-21 11:29:01'),
(438, 'gi18xatqezmn006db3', 'property_click', 'sharjah', 'Al Nahda', 'Bed Space in Al Nahda', '2026-03-21 11:29:11'),
(439, 'gi18xatqezmn006db3', 'search', 'ajman', 'Al Rumailah 2 - الرميلة ٢', 'Al Rumailah 2 - الرميلة ٢', '2026-03-21 11:29:22'),
(440, 'r3tr8wue90imn02dzqf', 'property_click', 'sharjah', 'Al Nahda', 'Bed Space in Al Nahda', '2026-03-21 12:27:51'),
(441, 'tvtopo7ivkomn02gad8', 'search', 'ajman', 'Al Nuaimiya', 'Al Nuaimiya', '2026-03-21 12:28:51'),
(442, 'tvtopo7ivkomn02gad8', 'property_click', 'ajman', 'Ajman Industrial 1', 'Fjddjdj', '2026-03-21 12:28:52'),
(443, '231949zz3y3imn02h1ee', 'search', 'ajman', 'Al Nuaimiya', 'Al Nuaimiya', '2026-03-21 12:29:25'),
(444, '231949zz3y3imn02h1ee', 'agent_click', 'ajman', 'Al Rawda 3 - الروضة ٣', 'Zahid', '2026-03-21 12:29:29'),
(445, '8mobtujnizbmn02sfuy', 'property_click', 'ajman', 'Ajman Industrial 1', 'Fjddjdj', '2026-03-21 12:38:21'),
(446, 'ityi43z3bbmn039h5n', 'agent_click', 'ajman', 'Al Rumailah 1 - الرميلة ١', 'fsdsfdf', '2026-03-21 12:51:45'),
(447, 'jbv9at7gedmn03krlk', 'property_click', 'ajman', 'Al Rashidiya 3 - الراشدية ٣', 'Partition Room in Al Rashidiya 3 -', '2026-03-21 13:00:18'),
(448, 'jbv9at7gedmn03krlk', 'property_click', 'ajman', 'Al Rashidiya 3 - الراشدية ٣', 'Private Room in Al Rashidiya 3 - ا', '2026-03-21 13:01:12'),
(449, 'hggybwtce7mn0ob5ms', 'search', 'ajman', 'Al Rashidiya 2 - الراشدية ٢', 'Al Rashidiya 2 - الراشدية ٢', '2026-03-21 22:40:41'),
(450, 'hggybwtce7mn0ob5ms', 'search', 'ajman', 'Al Nuaimiya 1 - النعيمية ١', 'Al Nuaimiya 1 - النعيمية ١', '2026-03-21 22:40:51'),
(451, 'hggybwtce7mn0ob5ms', 'search', 'ajman', 'Al Rashidiya 2 - الراشدية ٢', 'Al Rashidiya 2 - الراشدية ٢', '2026-03-21 22:40:57'),
(452, 'i5nt477yi5smn0oe4ee', 'search', 'ajman', 'Al Zahra - الزهراء', 'Al Zahra - الزهراء', '2026-03-21 22:44:39'),
(453, 'i5nt477yi5smn0oe4ee', 'agent_click', 'ajman', 'Al Rumailah 1 - الرميلة ١', 'fsdsfdf', '2026-03-21 22:44:43');
INSERT INTO `site_events` (`id`, `session_id`, `event_type`, `emirate`, `area`, `value`, `created_at`) VALUES
(454, 'i5nt477yi5smn0oe4ee', 'search', 'ajman', 'Al Zahra - الزهراء', 'Al Zahra - الزهراء', '2026-03-21 22:45:09'),
(455, '91b9mawito7mn0ot5iq', 'search', 'ajman', 'Al Zahra - الزهراء', 'Al Zahra - الزهراء', '2026-03-21 22:54:46'),
(456, '91b9mawito7mn0ot5iq', 'agent_click', 'ajman', 'Al Zahra - الزهراء', 'Rashid saidx', '2026-03-21 22:54:50'),
(457, 'dslxvtfdzsmn1p5dwe', 'agent_click', 'ajman', 'Al Rawda 3 - الروضة ٣', 'Zahid', '2026-03-22 15:52:04'),
(458, '3xs8tr7hf8imn0pf0gk', 'property_click', 'ajman', 'Al Nakhil 1', 'ttytffu', '2026-03-22 16:44:17'),
(459, '3xs8tr7hf8imn0pf0gk', 'property_click', 'ajman', 'Al Rashidiya 3 - الراشدية ٣', 'Partition Room in Al Rashidiya 3 -', '2026-03-22 16:44:35'),
(460, '3xs8tr7hf8imn0pf0gk', 'property_click', 'ajman', 'ليوارة 1', 'rergergergr', '2026-03-22 16:44:50'),
(461, '3xs8tr7hf8imn0pf0gk', 'property_click', 'ajman', 'Al Butain', 'room for rent', '2026-03-22 16:44:59'),
(462, 'nuz0ov28fjmn1tlr8p', 'agent_click', 'ajman', 'Al Rashidiya 3 - الراشدية ٣', 'Rashid', '2026-03-22 18:00:56'),
(463, 'nuz0ov28fjmn1tlr8p', 'agent_click', 'ajman', 'Al Rumailah 1 - الرميلة ١', 'fsdsfdf', '2026-03-22 18:01:08'),
(464, 'nuz0ov28fjmn1tlr8p', 'property_click', 'ajman', 'Al Rumailah 3 - الرميلة ٣', '2 BHK in Al Rumailah 3 - الرميلة ٣', '2026-03-22 18:01:16'),
(465, 'nuz0ov28fjmn1tlr8p', 'agent_click', 'ajman', 'Al Zahra - الزهراء', 'Rashid saidx', '2026-03-22 18:02:05'),
(466, 'nuz0ov28fjmn1tlr8p', 'search', 'ajman', 'Al Rashidiya 3 - الراشدية ٣', 'Al Rashidiya 3 - الراشدية ٣', '2026-03-22 18:02:26'),
(467, 'nuz0ov28fjmn1tlr8p', 'property_click', 'ajman', 'Al Rashidiya 3 - الراشدية ٣', 'Private Room in Al Rashidiya 3 - ا', '2026-03-22 18:03:29'),
(468, 'itegppf4qsqmn22knu9', 'property_click', 'sharjah', 'Al Nahda', 'Bed Space in Al Nahda', '2026-03-22 22:10:37'),
(469, 'n7abt03n0tbmn2o5tbg', 'property_click', 'ajman', 'Al Rashidiya 3 - الراشدية ٣', 'Partition Room in Al Rashidiya 3 -', '2026-03-23 08:12:15'),
(470, 'n7abt03n0tbmn2o5tbg', 'agent_click', 'ajman', 'Al Zahra - الزهراء', 'Rashid saidx', '2026-03-23 08:12:46'),
(471, '0thgewo57g1imn2o9c10', 'search', 'ajman', 'Ajman City', 'Ajman City', '2026-03-23 08:15:01'),
(472, '0thgewo57g1imn2o9c10', 'property_click', 'ajman', 'Ajman City', 'Showroom in Ajman City', '2026-03-23 08:15:02'),
(473, 'xidn42y5at8mn2ob7e3', 'search', 'ajman', 'Al Rumailah 2 - الرميلة ٢', 'Al Rumailah 2 - الرميلة ٢', '2026-03-23 08:16:15'),
(474, '6cuy5vh88wmn2oaoyp', 'search', 'ajman', 'Ajman Industrial 7 - الصناعية ٧', 'Ajman Industrial 7 - الصناعية ٧', '2026-03-23 08:17:51'),
(475, 'p5e45cvzdymn2q0fid', 'property_click', 'ajman', 'Al Rashidiya 3', 'sdsd', '2026-03-23 09:18:03'),
(476, '8xla8b9g7f4mn2u4ymw', 'search', 'ajman', 'Al Rashidiya 3 - الراشدية ٣', 'Al Rashidiya 3 - الراشدية ٣', '2026-03-23 11:01:09'),
(477, '1orbqc8ih9qmn2v8sre', 'property_click', 'ajman', 'Ajman City', 'Showroom in Ajman City', '2026-03-23 11:30:31'),
(478, '1orbqc8ih9qmn2v8sre', 'property_click', 'ajman', 'Al Hamidiya 1', 'ffssdfsdsd', '2026-03-23 11:30:38'),
(479, '1orbqc8ih9qmn2v8sre', 'property_click', 'ajman', 'Al Rashidiya 3 - الراشدية ٣', 'Partition Room in Al Rashidiya 3 -', '2026-03-23 11:30:48'),
(480, '0dh4j9lml6comn32yf6p', 'agent_click', 'ajman', 'Al Rashidiya 3 - الراشدية ٣', 'Rashid Said', '2026-03-23 15:06:14'),
(481, '0dh4j9lml6comn32yf6p', 'property_click', 'ajman', 'Al Butain', 'room for rent', '2026-03-23 15:06:31'),
(482, '0dh4j9lml6comn32yf6p', 'agent_click', 'ajman', 'Al Rashidiya 3 - الراشدية ٣', 'Rashid Said', '2026-03-23 15:08:46'),
(483, '0dh4j9lml6comn32yf6p', 'agent_click', 'ajman', 'Al Rashidiya 3 - الراشدية ٣', 'Rashid Said', '2026-03-23 15:08:51'),
(484, '0dh4j9lml6comn32yf6p', 'property_click', 'sharjah', 'Al Nahda', 'Bed Space in Al Nahda', '2026-03-23 15:10:17'),
(485, '0dh4j9lml6comn32yf6p', 'agent_click', 'ajman', 'Al Rashidiya 3 - الراشدية ٣', 'Rashid Said', '2026-03-23 15:12:01'),
(486, 'og4a47kdu4mn43ghrm', 'agent_click', 'ajman', 'Al Rashidiya 3 - الراشدية ٣', 'Rashid Said', '2026-03-24 08:08:03');

-- --------------------------------------------------------

--
-- Table structure for table `site_visitors`
--

CREATE TABLE `site_visitors` (
  `id` bigint(20) NOT NULL,
  `session_id` varchar(64) NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '',
  `user_agent` text DEFAULT NULL,
  `device_type` enum('mobile','tablet','desktop') DEFAULT 'desktop',
  `referrer` varchar(512) DEFAULT '',
  `landing_page` varchar(512) DEFAULT '',
  `first_seen` datetime DEFAULT current_timestamp(),
  `last_seen` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `duration_sec` int(11) DEFAULT 0,
  `page_views` int(11) DEFAULT 1,
  `is_bounce` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `site_visitors`
--

INSERT INTO `site_visitors` (`id`, `session_id`, `ip_address`, `user_agent`, `device_type`, `referrer`, `landing_page`, `first_seen`, `last_seen`, `duration_sec`, `page_views`, `is_bounce`) VALUES
(1, '6szf2fpzfbjmmwq3d14', '109.177.20.120', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-19 04:19:26', '2026-03-19 04:28:50', 563, 1, 0),
(2, '4o5r4kcxci2mmwqhxbh', '109.177.20.120', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-19 04:30:46', '2026-03-19 04:30:46', 0, 1, 1),
(3, 'opuvac3dkemmwqmn69', '109.177.20.120', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-19 04:34:26', '2026-03-19 04:34:26', 0, 1, 1),
(4, 'zys63xg5u1mmwqw58c', '109.177.20.120', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-19 04:41:50', '2026-03-19 04:56:20', 870, 1, 0),
(5, 'cra5c80zyafmmwrez4b', '109.177.20.120', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-19 04:56:28', '2026-03-19 04:56:28', 0, 1, 1),
(6, 'oatsx0ltormmwrf4ls', '109.177.20.120', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-19 04:56:35', '2026-03-19 04:56:35', 0, 1, 1),
(7, 'vc6pyegyh3emmwrglk7', '109.177.20.120', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-19 04:57:44', '2026-03-19 04:57:44', 0, 1, 1),
(8, '20obtqy2z3rmmwspiu9', '109.177.20.120', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-19 05:32:40', '2026-03-19 05:48:50', 970, 1, 0),
(9, 'pqni4o2n1yjmmwtajia', '109.177.20.120', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-19 05:49:00', '2026-03-19 07:11:50', 518, 1, 0),
(10, 'vpptzpkbiemmwtl8nb', '66.249.88.2', 'Mozilla/5.0 (Linux; Android 4.0.4; Galaxy Nexus Build/IMM76B) AppleWebKit/537.36 (KHTML, like Gecko; GoogleAdSenseInfeed) Chrome/145.0.7632.116 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-19 05:57:19', '2026-03-19 05:57:19', 0, 1, 1),
(11, 'spo2yh1p3mmmmwtl8tb', '66.249.88.3', 'Mozilla/5.0 (Linux; Android 4.0.4; Galaxy Nexus Build/IMM76B) AppleWebKit/537.36 (KHTML, like Gecko; GoogleAdSenseInfeed) Chrome/145.0.7632.159 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-19 05:57:19', '2026-03-19 05:57:19', 0, 1, 1),
(12, 'kj15imdkf3mmwtliuz', '66.249.88.3', 'Mozilla/5.0 (Linux; Android 4.0.4; Galaxy Nexus Build/IMM76B) AppleWebKit/537.36 (KHTML, like Gecko; GoogleAdSenseInfeed) Chrome/145.0.7632.159 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-19 05:57:32', '2026-03-19 05:57:32', 0, 1, 1),
(13, 'hfjho52rdtummwtlq4w', '66.249.88.2', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_3) AppleWebKit/537.36 (KHTML, like Gecko, GoogleAdSenseInfeed) Chrome/145.0.7632.116 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-19 05:57:42', '2026-03-19 05:57:42', 0, 1, 1),
(14, 'kjcjxtf3k7mmwuxb2o', '66.249.88.2', 'Mozilla/5.0 (Linux; Android 4.0.4; Galaxy Nexus Build/IMM76B) AppleWebKit/537.36 (KHTML, like Gecko; GoogleAdSenseInfeed) Chrome/145.0.7632.159 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-19 06:34:42', '2026-03-19 06:34:42', 0, 1, 1),
(15, 'lguqb8jlzzbmmwuxb5y', '66.249.88.3', 'Mozilla/5.0 (Linux; Android 4.0.4; Galaxy Nexus Build/IMM76B) AppleWebKit/537.36 (KHTML, like Gecko; GoogleAdSenseInfeed) Chrome/145.0.7632.159 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-19 06:34:42', '2026-03-19 06:34:42', 0, 1, 1),
(16, 'qfprvc7hb2pmmwuxc6m', '66.249.88.2', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_3) AppleWebKit/537.36 (KHTML, like Gecko, GoogleAdSenseInfeed) Chrome/145.0.7632.159 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-19 06:34:43', '2026-03-19 06:34:43', 0, 1, 1),
(17, '3n6c7ctqr2vmmwuxlae', '66.249.88.4', 'Mozilla/5.0 (Linux; Android 4.0.4; Galaxy Nexus Build/IMM76B) AppleWebKit/537.36 (KHTML, like Gecko; GoogleAdSenseInfeed) Chrome/145.0.7632.159 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-19 06:34:55', '2026-03-19 06:34:55', 0, 1, 1),
(18, 'yporvrhtlemmwx9h1c', '109.177.20.120', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-19 07:40:09', '2026-03-19 07:40:39', 30, 1, 0),
(19, '4eeouma6ahvmmwxd916', '109.177.20.120', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-19 11:23:35', '2026-03-19 11:29:59', 13614, 1, 0),
(20, '92k66jk9555mmwxdidv', '109.177.20.120', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-19 11:23:45', '2026-03-19 11:23:45', 0, 1, 1),
(21, '3su9gblh8l7mmx5h3s9', '109.177.20.120', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-19 11:30:01', '2026-03-19 11:38:31', 509, 1, 0),
(22, 'g68qaavmvzbmmx6vj1n', '109.177.20.120', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-19 12:09:21', '2026-03-19 19:07:16', 41102, 1, 0),
(23, 'd0fvyt7wxhpmmwxekx4', '109.177.20.120', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', 'https://zeeae.com/admin/ads.php', 'https://zeeae.com/', '2026-03-19 13:15:13', '2026-03-19 13:15:13', 0, 1, 1),
(24, 'dxib42mlg58mmx9ygdw', '109.177.20.120', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-19 13:35:29', '2026-03-19 13:37:30', 120, 1, 0),
(25, 'rgmxvaweehhmmxaf2lu', '109.177.20.120', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-19 13:48:25', '2026-03-19 14:47:10', 3525, 1, 0),
(26, 'ktpa6q07jzmmmxakslh', '109.177.20.120', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-19 13:52:52', '2026-03-19 15:24:22', 5490, 1, 0),
(27, '7o092ybs8sammxanj39', '109.177.20.120', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-19 13:54:59', '2026-03-19 15:01:32', 60, 1, 0),
(28, 'y0nihydljkmmmxcig94', '109.177.20.120', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-19 14:47:02', '2026-03-19 14:47:06', 0, 1, 0),
(29, 'vhul8zmmiyrmmxdfg9r', '109.177.20.120', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-19 15:12:41', '2026-03-19 15:14:12', 90, 1, 0),
(30, 'zgvckobergmmxdgaud', '109.177.20.120', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-19 15:13:21', '2026-03-19 15:49:24', 2162, 1, 0),
(31, 'jor1dfwpvvbmmxdhw6e', '109.177.20.120', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-19 15:14:35', '2026-03-19 19:04:31', 160, 1, 0),
(32, '1uu59nnkl13mmxdt7tu', '109.177.20.120', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-19 15:23:23', '2026-03-19 15:23:54', 30, 1, 0),
(33, 'p2i40gljnehmmxdv3wq', '109.177.20.120', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-19 15:24:52', '2026-03-19 19:30:52', 14760, 1, 0),
(34, '1ksdgj02k3vmmxgcccu', '109.177.20.120', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-19 16:34:16', '2026-03-19 16:55:08', 1059, 1, 0),
(35, 'yzxy825qlremmxgchax', '172.253.254.50', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/29.0 Chrome/136.0.0.0 Mobile Safari/537.36', 'mobile', 'https://www.google.com/', 'https://zeeae.com/', '2026-03-19 16:34:22', '2026-03-19 16:34:22', 0, 1, 1),
(36, '6fy2ghxocj8mmxl6fqq', '109.177.26.228', 'Mozilla/5.0 (iPhone; CPU iPhone OS 26_2_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/146.0.7680.40 Mobile/15E148 Safari/604.1', 'mobile', '', 'https://zeeae.com/', '2026-03-19 18:49:37', '2026-03-19 18:50:07', 30, 1, 0),
(37, '05xumbf3vtbommxlr6yk', '109.177.26.228', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-19 19:05:46', '2026-03-19 19:05:46', 0, 1, 1),
(38, 'o14a8div6yammxlr81x', '109.177.26.228', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', 'https://zeeae.com/', 'https://zeeae.com/', '2026-03-19 19:05:48', '2026-03-19 19:07:18', 90, 1, 0),
(39, 'zfao8inszxmmxmpwm3', '109.177.26.228', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-19 19:32:46', '2026-03-19 19:32:46', 0, 1, 1),
(40, 'j0n4s2mdzxkmmxmpxl8', '109.177.26.228', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', 'https://zeeae.com/', 'https://zeeae.com/', '2026-03-19 19:32:47', '2026-03-19 19:33:47', 60, 1, 0),
(41, 'k5q1jblpnwmmxmrfr4', '109.177.26.228', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-19 19:33:58', '2026-03-19 19:34:27', 30, 1, 0),
(42, 'kyel6mxxeelmmxmsghr', '109.177.26.228', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-19 19:34:45', '2026-03-19 19:41:00', 374, 1, 0),
(43, '7o4mlsgokn8mmxoncs3', '109.177.26.228', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-19 20:26:46', '2026-03-20 02:44:43', 2220, 1, 0),
(44, '7g1yjj67m7ammxozz0i', '109.177.26.228', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-19 20:36:35', '2026-03-19 20:57:12', 1237, 1, 0),
(45, 'uj7ch3sbrdnmmxprrvm', '109.177.26.228', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', 'https://zeeae.com/property.php?id=18', 'https://zeeae.com/?property=18', '2026-03-19 20:58:12', '2026-03-20 01:41:57', 30, 1, 0),
(46, 'e8md4vcx8zummxqb3ur', '109.177.26.228', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-19 21:13:14', '2026-03-19 21:43:47', 510, 1, 0),
(47, 'qbiib746o2mmxqk1r1', '109.177.26.228', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', 'https://zeeae.com/property.php?id=16', 'https://zeeae.com/?property=16', '2026-03-19 21:20:11', '2026-03-19 21:24:12', 241, 1, 0),
(48, 'uuj2sz2kmymmxqkgh9', '109.177.26.228', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', 'https://zeeae.com/property.php?id=16', 'https://zeeae.com/?property=16', '2026-03-19 21:20:31', '2026-03-19 22:07:12', 2754, 1, 0),
(49, 'qjpadl5ezummxr3hb8', '109.177.26.228', 'Mozilla/5.0 (iPhone; CPU iPhone OS 26_2_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/146.0.7680.40 Mobile/15E148 Safari/604.1', 'mobile', '', 'https://zeeae.com/', '2026-03-19 21:35:18', '2026-03-19 21:43:55', 471, 1, 0),
(50, 'jv5u8wp8txemmxr601m', '109.177.26.228', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', 'https://zeeae.com/admin/seo.php', 'https://zeeae.com/index.html', '2026-03-19 21:37:15', '2026-03-19 21:37:15', 0, 1, 1),
(51, 'vlwwztrwicdmmxrmu5y', '109.177.26.228', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', 'https://zeeae.com/admin/security.php?msg=All+other+devices+have+been+logged+out.&type=success', 'https://zeeae.com/', '2026-03-19 21:50:21', '2026-03-19 22:07:12', 1011, 1, 0),
(52, 'yoy5h7vve7nmmxwbq3e', '2a0d:5600:101:5:7435:2313:d826:6898', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', 'https://zeeae.com/', 'https://zeeae.com/', '2026-03-20 00:01:40', '2026-03-20 00:02:10', 30, 1, 0),
(53, '46zmd03mpxymmxy32o3', '109.177.26.228', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', 'https://zeeae.com/admin/seo.php', 'https://zeeae.com/index.html', '2026-03-20 00:50:56', '2026-03-20 00:51:26', 30, 1, 0),
(54, '3bjlspzap4vmmxycnia', '109.177.26.228', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-20 00:58:23', '2026-03-20 00:58:41', 0, 1, 0),
(55, 'h92cnvyk5hrmmxyjs5g', '109.177.26.228', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-20 01:03:56', '2026-03-20 01:03:56', 0, 1, 1),
(56, 'uzkhzqjblbsmmxyjtoo', '109.177.26.228', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', 'https://zeeae.com/', 'https://zeeae.com/', '2026-03-20 01:03:58', '2026-03-20 01:04:13', 0, 1, 0),
(57, '39ekl38h6pcmmxyo9q8', '109.177.26.228', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-20 01:07:25', '2026-03-20 01:44:55', 2250, 1, 0),
(58, 'al8y9zod7pemmxyy3bz', '109.177.26.228', 'Mozilla/5.0 (iPhone; CPU iPhone OS 26_2_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/146.0.7680.40 Mobile/15E148 Safari/604.1', 'mobile', '', 'https://zeeae.com/', '2026-03-20 01:15:03', '2026-03-20 01:15:03', 0, 1, 1),
(59, 'o6ug2zjpi39mmxyypiq', '109.177.26.228', 'Mozilla/5.0 (iPhone; CPU iPhone OS 26_2_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/146.0.7680.40 Mobile/15E148 Safari/604.1', 'mobile', 'https://zeeae.com/', 'https://zeeae.com/', '2026-03-20 01:15:32', '2026-03-20 01:16:03', 31, 1, 0),
(60, 'd9xibo397u6mmxyyr6l', '109.177.26.228', 'Mozilla/5.0 (iPhone; CPU iPhone OS 26_2_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/146.0.7680.40 Mobile/15E148 Safari/604.1', 'mobile', 'https://zeeae.com/agent-login.php', 'https://zeeae.com/', '2026-03-20 01:15:34', '2026-03-20 01:16:04', 30, 1, 0),
(61, 'nwpbr49p4immxyzl6p', '109.177.26.228', 'Mozilla/5.0 (iPhone; CPU iPhone OS 26_2_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/146.0.7680.40 Mobile/15E148 Safari/604.1', 'mobile', '', 'https://zeeae.com/', '2026-03-20 01:16:13', '2026-03-20 01:16:22', 0, 1, 0),
(62, '46is2r4g845mmxzhjnq', '109.177.26.228', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-20 01:30:11', '2026-03-20 01:30:11', 0, 1, 1),
(63, '40kbpu92bgdmmxzhptu', '109.177.26.228', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-20 01:30:19', '2026-03-20 01:45:07', 870, 1, 0),
(64, 'vh5cd3balxmmxzivc9', '109.177.26.228', 'Mozilla/5.0 (iPhone; CPU iPhone OS 26_2_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/146.0.7680.40 Mobile/15E148 Safari/604.1', 'mobile', '', 'https://zeeae.com/', '2026-03-20 01:31:13', '2026-03-20 01:31:13', 0, 1, 1),
(65, '5icgdzk2eulmmxzjlof', '109.177.26.228', 'Mozilla/5.0 (iPhone; CPU iPhone OS 26_2_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/146.0.7680.40 Mobile/15E148 Safari/604.1', 'mobile', '', 'https://zeeae.com/', '2026-03-20 01:31:46', '2026-03-20 01:31:56', 0, 1, 0),
(66, 'b86guvdj0kgmmxzxypv', '109.177.26.228', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-20 01:42:57', '2026-03-20 01:44:58', 120, 1, 0),
(67, 'zgt1z2n2zthmmxzzz8o', '109.177.26.228', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-20 01:44:31', '2026-03-20 01:45:02', 30, 1, 0),
(68, '7dbwsm0h3q2mmy0123c', '109.177.26.228', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-20 01:45:21', '2026-03-20 02:05:10', 1145, 1, 0),
(69, 'x7hb7c3hmkmmy0aggo', '109.177.26.228', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-20 01:52:41', '2026-03-20 01:53:10', 30, 1, 0),
(70, 'aytwi4movy8mmy0bjdk', '109.177.26.228', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-20 01:53:30', '2026-03-21 09:13:21', 4770, 1, 0),
(71, 'afvy4n6s3qmmy0cvnt', '109.177.26.228', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', 'https://zeeae.com/survey.php', 'https://zeeae.com/', '2026-03-20 01:54:33', '2026-03-20 01:57:03', 150, 1, 0),
(72, 'vxozk4crvummy0ht52', '109.177.26.228', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', 'https://zeeae.com/survey.php', 'https://zeeae.com/', '2026-03-20 01:58:23', '2026-03-20 01:58:23', 0, 1, 1),
(73, 'owuqmt4eomammy0r13h', '109.177.26.228', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-20 02:05:33', '2026-03-20 02:05:33', 0, 1, 1),
(74, '9khzzm3jikmmy1k0b7', '109.177.26.228', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-20 02:28:05', '2026-03-20 02:29:05', 60, 1, 0),
(75, 'n2mw6fdbe8jmmy1lge6', '109.177.26.228', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-20 02:29:12', '2026-03-20 02:29:42', 30, 1, 0),
(76, '0s27scfjojtfmmy1mc62', '109.177.26.228', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-20 02:29:53', '2026-03-20 02:30:53', 60, 1, 0),
(77, 'ylu9j9o0g7pmmy1zp8f', '109.177.26.228', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-20 02:40:17', '2026-03-20 02:40:17', 0, 1, 1),
(78, 'xpf9u679dt9mmy2m86i', '109.177.26.228', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', 'https://zeeae.com/property.php?id=2', 'https://zeeae.com/?property=2', '2026-03-20 02:57:48', '2026-03-20 08:20:43', 19375, 1, 0),
(79, '2nl4s2g0dohmmy5f51d', '109.177.26.228', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-20 04:16:16', '2026-03-20 04:16:16', 0, 1, 1),
(80, '0gzhlialms49mmy5tfx6', '109.177.26.228', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-20 04:27:23', '2026-03-20 04:27:23', 0, 1, 1),
(81, 'zuly23x7rxmmy5thip', '109.177.26.228', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', 'https://zeeae.com/', 'https://zeeae.com/', '2026-03-20 04:27:25', '2026-03-20 04:28:26', 60, 1, 0),
(82, 'q93tu44hrolmmyd1e7g', '109.177.26.228', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', 'https://zeeae.com/admin/security.php', 'https://zeeae.com/index.html', '2026-03-20 07:49:32', '2026-03-20 07:49:32', 0, 1, 1),
(83, 'rmhq2w6n19immydhkpp', '109.177.26.228', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-20 08:02:07', '2026-03-21 06:36:09', 79939, 1, 0),
(84, 'lec6tn7bdmmyw1kyc', '74.125.151.36', 'AdsBot-Google (+http://www.google.com/adsbot.html)', 'desktop', '', 'https://zeeae.com/', '2026-03-20 16:41:37', '2026-03-20 16:41:37', 0, 1, 1),
(85, '04msykh0qut7mmye82za', '109.177.26.228', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', 'https://zeeae.com/admin/security.php', 'https://zeeae.com/index.html', '2026-03-20 23:42:45', '2026-03-20 23:42:45', 0, 1, 1),
(86, '3v1byot5uwmmzbcg06', '109.177.26.228', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-20 23:49:54', '2026-03-20 23:49:54', 0, 1, 1),
(87, 'uk512p3i2gmmzbd4d0', '2a09:bac1:1e60:628::3a0:33', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-20 23:50:26', '2026-03-20 23:50:26', 0, 1, 1),
(88, '1ysuprgw4nzmmzbjrnu', '109.177.26.228', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-20 23:55:36', '2026-03-20 23:55:36', 0, 1, 1),
(89, 'mpw2le7yhfbmmzc4ltu', '2a09:bac1:1e60:628::3a0:33', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-21 00:11:48', '2026-03-21 00:11:48', 0, 1, 1),
(90, '2gyxf465yurmmzcikhr', '2a09:bac6:d751:2464::3a0:33', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-21 00:22:39', '2026-03-21 00:22:39', 0, 1, 1),
(91, '7x6j5dqe0r4mmzd4wxr', '109.177.26.228', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-21 00:40:02', '2026-03-21 00:40:02', 0, 1, 1),
(92, '6t2iz81ygnsmmzdcyfj', '109.177.26.228', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-21 00:46:17', '2026-03-21 00:46:17', 0, 1, 1),
(93, 'cehvvqt7kqemmzdjtrt', '109.177.26.228', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-21 00:51:38', '2026-03-21 00:51:38', 0, 1, 1),
(94, '41b2uylfqdqmmzenbyn', '109.177.26.228', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', 'https://zeeae.com/property.php?id=19', 'https://zeeae.com/?property=19', '2026-03-21 01:22:21', '2026-03-21 01:22:23', 0, 1, 0),
(95, 'ls58nodii2jmmzennn2', '109.177.26.228', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-21 01:22:36', '2026-03-21 01:23:40', 63, 1, 0),
(96, '7jrmmjy050kmmzf99fm', '109.177.26.228', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-21 01:39:24', '2026-03-21 01:39:24', 0, 1, 1),
(97, 'h488dhfkdrfmmzftxcb', '109.177.26.228', 'Mozilla/5.0 (iPhone; CPU iPhone OS 26_2_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/146.0.7680.40 Mobile/15E148 Safari/604.1', 'mobile', '', 'https://zeeae.com/', '2026-03-21 01:55:28', '2026-03-21 01:57:28', 120, 1, 0),
(98, 'qam5u91lk1mmzftzxr', '109.177.26.228', 'Mozilla/5.0 (iPhone; CPU iPhone OS 26_2_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/146.0.7680.40 Mobile/15E148 Safari/604.1', 'mobile', '', 'https://zeeae.com/', '2026-03-21 01:55:32', '2026-03-21 01:55:32', 0, 1, 1),
(99, 'kqutrrid7ymmzgo4gq', '109.177.26.228', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-21 02:18:57', '2026-03-21 02:19:08', 0, 1, 0),
(100, 'if84gpzahkmmzgohtw', '109.177.26.228', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-21 02:19:14', '2026-03-21 02:19:14', 0, 1, 1),
(101, '2u1vbtrwvtdmmzh5xoa', '109.177.26.228', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-21 02:32:48', '2026-03-21 02:32:48', 0, 1, 1),
(102, 'g0pl3hc8nommzi58wz', '109.177.26.228', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-21 03:00:16', '2026-03-21 03:00:16', 0, 1, 1),
(103, 'zrpe7nbil8mmzi5pnb', '109.177.26.228', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', 'https://zeeae.com/property.php?id=19', 'https://zeeae.com/?property=19', '2026-03-21 03:00:37', '2026-03-21 03:00:40', 0, 1, 0),
(104, '5hwucczg4ijmmzjnadw', '109.177.26.228', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', 'https://zeeae.com/property.php?id=31', 'https://zeeae.com/?property=31', '2026-03-21 03:42:17', '2026-03-21 03:44:02', 90, 1, 0),
(105, 'w2h27h94n3jmmzl4u37', '109.177.26.228', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-21 04:23:55', '2026-03-21 04:23:55', 0, 1, 1),
(106, 'gyh0ytpo1dsmmzl4vgk', '172.253.192.125', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Mobile Safari/537.36', 'mobile', 'https://www.google.com/', 'https://zeeae.com/', '2026-03-21 04:23:57', '2026-03-21 04:23:57', 0, 1, 1),
(107, '870uygw9i7immzllm4c', '109.177.26.228', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-21 04:36:58', '2026-03-21 04:37:35', 36, 1, 0),
(108, 'galbkr67wyommzm945u', '109.177.26.228', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-21 04:55:15', '2026-03-21 04:55:15', 0, 1, 1),
(109, 'o7yafjnzipmmzqlqmd', '2a09:bac6:d755:2482::3a3:12', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-21 06:57:02', '2026-03-21 06:57:02', 0, 1, 1),
(110, 'm243vyinjjkmmzqsomo', '109.177.26.228', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-21 07:02:29', '2026-03-21 07:02:29', 0, 1, 1),
(111, 'hpwyc8ipkeemmzr4q9f', '109.177.26.228', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-21 07:11:48', '2026-03-21 07:11:48', 0, 1, 1),
(112, '55g57xsqyvmmmzr55v0', '109.177.26.228', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-21 07:12:08', '2026-03-21 07:12:08', 0, 1, 1),
(113, 'y0xxhazds4mmzrdlhy', '109.177.26.228', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-21 07:18:42', '2026-03-21 07:18:42', 0, 1, 1),
(114, '1ahusht1q0ommzrrdu3', '109.177.26.228', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-21 07:29:25', '2026-03-21 07:29:25', 0, 1, 1),
(115, 'txpvh8tq9hjmmzs7n9q', '109.177.26.228', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-21 07:42:04', '2026-03-21 07:42:04', 0, 1, 1),
(116, '3cgv6f5pxhcmmzsfndw', '109.177.26.228', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-21 07:48:17', '2026-03-21 07:48:17', 0, 1, 1),
(117, 'u7jcmtnd8tmmzskuup', '109.177.26.228', 'Mozilla/5.0 (iPhone; CPU iPhone OS 26_2_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/146.0.7680.40 Mobile/15E148 Safari/604.1', 'mobile', '', 'https://zeeae.com/', '2026-03-21 07:52:20', '2026-03-21 07:52:20', 0, 1, 1),
(118, 's4lpkydqdlmmzssftq', '109.177.26.228', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Mobile/15E148 Safari/604.1', 'mobile', 'https://zeeae.com/agent/my-properties.php', 'https://zeeae.com/', '2026-03-21 07:58:14', '2026-03-21 07:58:14', 0, 1, 1),
(119, 'c1gymwm648nmmzsxk79', '109.177.26.228', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Mobile/15E148 Safari/604.1', 'mobile', '', 'https://zeeae.com/', '2026-03-21 08:02:13', '2026-03-21 08:02:13', 0, 1, 1),
(120, 'hkyauf94935mmzsymuy', '109.177.26.228', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-21 08:03:03', '2026-03-21 08:03:03', 0, 1, 1),
(121, 'oh9jvkx0wommzt9udp', '109.177.26.228', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Mobile/15E148 Safari/604.1', 'mobile', '', 'https://zeeae.com/', '2026-03-21 08:11:46', '2026-03-21 08:13:16', 90, 1, 0),
(122, 'opwuigqwzfpmmztlwe7', '109.177.26.228', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Mobile/15E148 Safari/604.1', 'mobile', 'https://zeeae.com/agent/dashboard.php', 'https://zeeae.com/', '2026-03-21 08:21:08', '2026-03-21 08:21:08', 0, 1, 1),
(123, 'n9x7j7l4umjmmztmmyz', '109.177.26.228', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Mobile/15E148 Safari/604.1', 'mobile', 'https://zeeae.com/agent/dashboard.php', 'https://zeeae.com/', '2026-03-21 08:21:43', '2026-03-21 08:21:43', 0, 1, 1),
(124, '1mg19c3hil3mmztv59e', '109.177.26.228', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Mobile/15E148 Safari/604.1', 'mobile', 'https://zeeae.com/agent/profile.php', 'https://zeeae.com/', '2026-03-21 08:28:20', '2026-03-21 08:28:20', 0, 1, 1),
(125, 'egva5qiz4q9mmzu3vxv', '109.177.26.228', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Mobile/15E148 Safari/604.1', 'mobile', '', 'https://zeeae.com/', '2026-03-21 08:35:08', '2026-03-21 08:35:38', 30, 1, 0),
(126, 'rfkc3f9ilrimmzu4vpl', '109.177.26.228', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Mobile/15E148 Safari/604.1', 'mobile', 'https://zeeae.com/agent/dashboard.php', 'https://zeeae.com/', '2026-03-21 08:35:54', '2026-03-21 09:00:10', 227, 1, 0),
(127, 'jwbim3795tmmzutm6c', '109.177.26.228', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-21 08:55:08', '2026-03-21 08:55:08', 0, 1, 1),
(128, '0meqrmjpst0emmzv1xsr', '109.177.26.228', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Mobile/15E148 Safari/604.1', 'mobile', '', 'https://zeeae.com/', '2026-03-21 09:01:36', '2026-03-21 09:01:36', 0, 1, 1),
(129, '3ayj4wx3b1nmmzv292k', '109.177.26.228', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Mobile/15E148 Safari/604.1', 'mobile', '', 'https://zeeae.com/', '2026-03-21 09:01:55', '2026-03-21 09:01:55', 0, 1, 1),
(130, '3v87x4su5immzv6ttj', '109.177.26.228', 'Mozilla/5.0 (iPhone; CPU iPhone OS 26_2_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/146.0.7680.40 Mobile/15E148 Safari/604.1', 'mobile', '', 'https://zeeae.com/', '2026-03-21 09:05:24', '2026-03-21 09:05:24', 0, 1, 1),
(131, '3g9lwhsnkz3mmzv8dml', '109.177.26.228', 'Mozilla/5.0 (iPhone; CPU iPhone OS 26_2_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/146.0.7680.40 Mobile/15E148 Safari/604.1', 'mobile', '', 'https://zeeae.com/', '2026-03-21 09:06:37', '2026-03-21 09:06:37', 0, 1, 1),
(132, 'pk59qp25hmmmzv9swr', '109.177.26.228', 'Mozilla/5.0 (iPhone; CPU iPhone OS 26_2_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/146.0.7680.40 Mobile/15E148 Safari/604.1', 'mobile', 'https://zeeae.com/agent/dashboard.php', 'https://zeeae.com/', '2026-03-21 09:07:43', '2026-03-21 09:10:05', 142, 1, 0),
(133, 'pg403q7onh8mmzvj17z', '109.177.26.228', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-21 09:14:54', '2026-03-21 09:17:24', 150, 1, 0),
(134, 't454ly4q0zrmmzvs954', '109.177.26.228', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-21 09:22:04', '2026-03-21 09:22:04', 0, 1, 1),
(135, 'p24kdviamrdmmzvyh4z', '109.177.26.228', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-21 09:26:54', '2026-03-21 09:27:24', 30, 1, 0),
(136, 'xoxmgf489t9mmzw3vd3', '109.177.26.228', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-21 09:31:06', '2026-03-21 09:31:06', 0, 1, 1),
(137, 'mfi30on2o5nmmzw54vb', '109.177.26.228', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-21 09:32:05', '2026-03-21 09:35:06', 180, 1, 0),
(138, 's5adh7xi4u9mmzwdq35', '109.177.26.228', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-21 09:38:46', '2026-03-21 10:58:32', 180, 1, 0),
(139, '23t8ukirdfmmzwgg1l', '109.177.26.228', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-21 09:40:53', '2026-03-21 09:47:33', 400, 1, 0),
(140, 't9zxfzrghpfmmzwnm3h', '109.177.26.228', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-21 09:46:27', '2026-03-21 09:47:28', 60, 1, 0),
(141, 'fj5bmwc0349mmzx1ogq', '109.177.26.228', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-21 09:57:24', '2026-03-21 09:58:54', 90, 1, 0),
(142, 'k9tnoi32kdmmzx3qzj', '109.177.26.228', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-21 09:59:00', '2026-03-21 09:59:00', 0, 1, 1),
(143, 'v4494mbzfkmmzx3y5l', '109.177.26.228', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-21 09:59:09', '2026-03-21 09:59:09', 0, 1, 1),
(144, 'qh0z3zx950ommzx43rm', '109.177.26.228', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-21 09:59:17', '2026-03-21 09:59:17', 0, 1, 1),
(145, 'z2tr5fejbwcmmzx4d6t', '109.177.26.228', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-21 09:59:31', '2026-03-21 10:18:41', 1061, 1, 0),
(146, '4vha27jjstmmzxt5y7', '109.177.26.228', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-21 10:18:46', '2026-03-21 10:23:31', 182, 1, 0),
(147, '7zv6ojnktaqmmzxx0gx', '109.177.26.228', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Mobile/15E148 Safari/604.1', 'mobile', '', 'https://zeeae.com/', '2026-03-21 10:21:45', '2026-03-21 10:27:23', 337, 1, 0),
(148, 'r4dek0bb3ormmzy7d6l', '74.125.77.22', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-21 10:29:49', '2026-03-21 10:29:49', 0, 1, 1),
(149, 'arobr05v7esmmzy7ip7', '172.253.234.214', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-21 10:29:56', '2026-03-21 10:29:56', 0, 1, 1),
(150, 'zw06hxmbgqammzybm0k', '109.177.26.228', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-21 10:33:07', '2026-03-21 10:33:07', 0, 1, 1),
(151, '40dob9gmciqmmzyfvgz', '109.177.26.228', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-21 10:36:25', '2026-03-21 10:36:25', 0, 1, 1),
(152, 'oetiodfgvn9mmzygj06', '109.177.26.228', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', 'https://zeeae.com/agent-login.php?register', 'https://zeeae.com/', '2026-03-21 10:36:57', '2026-03-21 10:36:57', 0, 1, 1),
(153, 'd9h6mqiz21mmzz4qcg', '5.193.132.2', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-21 10:55:45', '2026-03-21 10:57:20', 0, 1, 0),
(154, 'ubojbbli3mlmmzz6xgv', '5.193.132.2', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-21 10:57:28', '2026-03-21 11:10:23', 300, 1, 0),
(155, 'l5uppno4eymmzzo5dt', '5.193.132.2', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', 'https://zeeae.com/agent-login.php?register', 'https://zeeae.com/', '2026-03-21 11:10:52', '2026-03-21 11:10:52', 0, 1, 1),
(156, 'gi18xatqezmn006db3', '5.193.132.2', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', 'https://zeeae.com/agent-login.php?', 'https://zeeae.com/', '2026-03-21 11:25:01', '2026-03-21 11:29:07', 90, 1, 0),
(157, '3xv758c1x9lmn00rh17', '5.193.132.2', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-21 11:41:26', '2026-03-21 11:41:26', 0, 1, 1),
(158, 'n9f2dc4dbimn00w4c3', '5.193.132.2', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-21 11:45:02', '2026-03-21 11:45:02', 0, 1, 1),
(159, 'lr0ee116k1mn02a6zi', '5.193.132.2', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-21 12:23:59', '2026-03-21 12:25:02', 43, 1, 0),
(160, 'krdxv2qi38mn02brai', '5.193.132.2', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-21 12:25:12', '2026-03-21 12:25:12', 0, 1, 1),
(161, 'd9rcfof6dwamn02cx0e', '5.193.132.2', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-21 12:26:06', '2026-03-21 12:26:36', 30, 1, 0),
(162, 'r3tr8wue90imn02dzqf', '5.193.132.2', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-21 12:26:56', '2026-03-21 12:27:56', 60, 1, 0),
(163, 'repzso09c7mn02fvi2', '5.193.132.2', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-21 12:28:24', '2026-03-21 12:28:24', 0, 1, 1),
(164, 'wwr6b75thkrmn02fyei', '5.193.132.2', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-21 12:28:28', '2026-03-21 12:28:28', 0, 1, 1),
(165, 'tvtopo7ivkomn02gad8', '5.193.132.2', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-21 12:28:43', '2026-03-21 12:30:13', 90, 1, 0),
(166, '231949zz3y3imn02h1ee', '5.193.132.2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', 'https://zeeae.com/agent/my-properties.php', 'https://zeeae.com/', '2026-03-21 12:29:18', '2026-03-21 12:29:25', 0, 1, 0),
(167, '8mobtujnizbmn02sfuy', '5.193.132.2', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-21 12:38:10', '2026-03-21 12:38:53', 41, 1, 0),
(168, 'ykvxbhw49xcmn02uqgr', '5.193.132.2', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-21 12:39:57', '2026-03-21 12:39:57', 0, 1, 1),
(169, 'g8kvctlxxmmn02wmdp', '5.193.132.2', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-21 12:41:29', '2026-03-21 12:41:29', 0, 1, 1),
(170, 'ityi43z3bbmn039h5n', '5.193.132.2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-21 12:51:25', '2026-03-21 12:51:55', 30, 1, 0),
(171, 'jbv9at7gedmn03krlk', '5.193.132.2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-21 13:00:11', '2026-03-21 13:03:52', 220, 1, 0),
(172, '58c5hqoh1zfmn041gz1', '5.193.132.2', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-21 13:13:11', '2026-03-21 13:13:11', 0, 1, 1),
(173, '29dbwh9ytgxmn04l8j7', '5.193.132.2', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Mobile/15E148 Safari/604.1', 'mobile', '', 'https://zeeae.com/', '2026-03-21 13:28:34', '2026-03-21 13:28:34', 0, 1, 1),
(174, 'lec6tn7bdmn0cjoxn', '74.125.151.33', 'AdsBot-Google (+http://www.google.com/adsbot.html)', 'desktop', '', 'https://zeeae.com/', '2026-03-21 17:11:20', '2026-03-21 17:11:20', 0, 1, 1),
(175, 'n3j20p7rbvamn0e0q5k', '54.145.38.224', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/138.0.7204.23 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-21 17:52:33', '2026-03-21 17:52:33', 0, 1, 1),
(176, 'mrfwf60qxfrmn0i4vqo', '109.177.62.142', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Mobile/15E148 Safari/604.1', 'mobile', '', 'https://zeeae.com/', '2026-03-21 19:47:45', '2026-03-21 19:47:45', 0, 1, 1),
(177, 'xz14p2zjklmn0jdr59', '109.177.62.142', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-21 20:22:38', '2026-03-21 20:22:38', 0, 1, 1),
(178, 'ki9a4sfwv3omn0n76br', '109.177.62.142', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-21 22:09:30', '2026-03-21 22:09:30', 0, 1, 1),
(179, 'ak3bjy22fj8mn0nf5la', '109.177.62.142', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-21 22:15:42', '2026-03-21 22:15:42', 0, 1, 1),
(180, 'uzyhbz0wf8mn0ngxxa', '109.177.62.142', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-21 22:17:06', '2026-03-21 22:17:06', 0, 1, 1),
(181, 'hggybwtce7mn0ob5ms', '109.177.62.142', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-21 22:40:35', '2026-03-21 22:42:35', 120, 1, 0),
(182, 'zr1gsrvyp7rmn0od9fo', '109.177.62.142', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-21 22:42:13', '2026-03-21 22:42:13', 0, 1, 1),
(183, 'i5nt477yi5smn0oe4ee', '109.177.62.142', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-21 22:42:53', '2026-03-21 22:45:53', 180, 1, 0),
(184, '91b9mawito7mn0ot5iq', '109.177.62.142', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-21 22:54:35', '2026-03-21 22:55:05', 30, 1, 0),
(185, 'kdhymc2wh2mmn0oz7l9', '109.177.62.142', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', 'https://zeeae.com/admin/dashboard.php', 'https://zeeae.com/index.php', '2026-03-21 22:59:17', '2026-03-21 22:59:17', 0, 1, 1),
(186, 'smsqrfegg3mn0p0cw2', '109.177.62.142', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', 'https://zeeae.com/admin/properties.php', 'https://zeeae.com/index.php', '2026-03-21 23:00:14', '2026-03-21 23:08:11', 480, 1, 0),
(187, 'g47kdekejqtmn1ozp0l', '2001:ac8:20:24:573:188d:679a:4651', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-22 15:47:26', '2026-03-22 15:47:26', 0, 1, 1);
INSERT INTO `site_visitors` (`id`, `session_id`, `ip_address`, `user_agent`, `device_type`, `referrer`, `landing_page`, `first_seen`, `last_seen`, `duration_sec`, `page_views`, `is_bounce`) VALUES
(188, 'dslxvtfdzsmn1p5dwe', '2001:ac8:20:24:573:188d:679a:4651', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-22 15:51:52', '2026-03-22 15:52:22', 30, 1, 0),
(189, 'l5isuh451qmn1plxrb', '109.177.48.194', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-22 16:04:44', '2026-03-22 17:55:07', 6623, 1, 0),
(190, '7yklmetgmn8mn0pd6yu', '109.177.48.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-22 16:42:33', '2026-03-22 16:43:04', 30, 1, 0),
(191, '3xs8tr7hf8imn0pf0gk', '109.177.48.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-22 16:43:58', '2026-03-22 16:44:58', 60, 1, 0),
(192, 'mulsxswsvlfmn1r40ks', '109.177.48.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-22 16:46:47', '2026-03-22 16:49:11', 120, 1, 0),
(193, 'okpjiqhndximn1r99cm', '109.177.48.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-22 16:50:51', '2026-03-22 16:51:54', 60, 1, 0),
(194, 'rp4xbbqr33mn1rel7i', '109.177.48.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-22 16:55:00', '2026-03-22 16:55:00', 0, 1, 1),
(195, 'evsl507hphwmn1rwzxq', '109.177.48.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-22 17:09:19', '2026-03-22 17:09:19', 0, 1, 1),
(196, '4jta4j2owm3mn1sb1wh', '109.177.48.194', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Mobile/15E148 Safari/604.1', 'mobile', '', 'https://zeeae.com/', '2026-03-22 17:20:15', '2026-03-22 17:20:15', 0, 1, 1),
(197, '12zswkjxuujmn1sduue', '109.177.48.194', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Mobile/15E148 Safari/604.1', 'mobile', 'https://zeeae.com/agent/my-properties.php', 'https://zeeae.com/', '2026-03-22 17:22:27', '2026-03-22 17:22:27', 0, 1, 1),
(198, 'i7bcajuv9mmn1sriab', '109.177.48.194', 'Mozilla/5.0 (iPhone; CPU iPhone OS 26_2_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/146.0.7680.151 Mobile/15E148 Safari/604.1', 'mobile', 'https://zeeae.com/agent/dashboard.php', 'https://zeeae.com/', '2026-03-22 17:33:03', '2026-03-22 17:48:03', 899, 1, 0),
(199, '52qfnj8wd6jmn1srkcu', '109.177.48.194', 'Mozilla/5.0 (iPhone; CPU iPhone OS 26_2_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/146.0.7680.151 Mobile/15E148 Safari/604.1', 'mobile', '', 'https://zeeae.com/', '2026-03-22 17:33:05', '2026-03-22 17:33:05', 0, 1, 1),
(200, 'nuz0ov28fjmn1tlr8p', '109.177.48.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-22 17:56:34', '2026-03-22 18:03:34', 420, 1, 0),
(201, 'jl1e6pbone8mn1tv881', '109.177.48.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-22 18:03:56', '2026-03-22 18:03:56', 0, 1, 1),
(202, 'vwl4vgsho77mn1tv935', '109.177.48.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', 'https://zeeae.com/', 'https://zeeae.com/', '2026-03-22 18:03:57', '2026-03-23 11:20:49', 61876, 1, 0),
(203, '0x2rx1tzzmksmn1u08oc', '109.177.48.194', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-22 18:07:49', '2026-03-22 18:08:50', 60, 1, 0),
(204, 'znkjj1nwgmn229kgx', '2001:8f8:1a6b:2bde:49ed:652d:d970:982e', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.3 Mobile/15E148 Safari/604.1', 'mobile', '', 'https://zeeae.com/', '2026-03-22 21:59:02', '2026-03-22 21:59:32', 30, 1, 0),
(205, 'itegppf4qsqmn22knu9', '109.177.48.194', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Mobile/15E148 Safari/604.1', 'mobile', '', 'https://zeeae.com/', '2026-03-22 22:07:40', '2026-03-22 22:16:19', 346, 1, 0),
(206, 'rrungtbq7fmn2ie7yl', '109.177.48.194', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-23 05:30:33', '2026-03-23 05:30:33', 0, 1, 1),
(207, '6jaay7aae5xmn2ie93y', '172.253.218.50', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/29.0 Chrome/136.0.0.0 Mobile Safari/537.36', 'mobile', 'https://www.google.com/', 'https://zeeae.com/', '2026-03-23 05:30:34', '2026-03-23 05:30:34', 0, 1, 1),
(208, 'n7abt03n0tbmn2o5tbg', '109.177.48.194', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Mobile/15E148 Safari/604.1', 'mobile', '', 'https://zeeae.com/', '2026-03-23 08:11:59', '2026-03-23 08:12:15', 0, 1, 0),
(209, '0thgewo57g1imn2o9c10', '109.177.48.194', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Mobile/15E148 Safari/604.1', 'mobile', '', 'https://zeeae.com/', '2026-03-23 08:14:43', '2026-03-23 08:15:13', 30, 1, 0),
(210, '6cuy5vh88wmn2oaoyp', '109.177.48.194', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Mobile/15E148 Safari/604.1', 'mobile', '', 'https://zeeae.com/', '2026-03-23 08:15:46', '2026-03-23 11:11:39', 10450, 1, 0),
(211, 'xidn42y5at8mn2ob7e3', '109.177.48.194', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-23 08:16:10', '2026-03-23 09:34:51', 4721, 1, 0),
(212, 'p5e45cvzdymn2q0fid', '109.177.48.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', 'https://dcf9c18b-a8d6-4233-8026-fa34e828149d-00-3ie8nnbvmsj8w.janeway.replit.dev/__replco/workspace_iframe.html?initialPath=%2F&id=default-start-application', 'https://dcf9c18b-a8d6-4233-8026-fa34e828149d-00-3ie8nnbvmsj8w.janeway.replit.dev/', '2026-03-23 09:14:31', '2026-03-23 09:19:20', 249, 1, 0),
(213, '29b1a4xr6u7mn2ttkjn', '109.177.48.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-23 10:50:25', '2026-03-23 10:50:25', 0, 1, 1),
(214, '1yyt36rs2wlmn2tx5j6', '109.177.48.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-23 10:53:12', '2026-03-23 10:54:42', 90, 1, 0),
(215, '8xla8b9g7f4mn2u4ymw', '109.177.48.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-23 10:59:16', '2026-03-23 11:06:04', 330, 1, 0),
(216, 'd2jjx7zn27kmn2ue777', '109.177.48.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', 'https://zeeae.com/agent/dashboard.php', 'https://zeeae.com/', '2026-03-23 11:06:27', '2026-03-23 11:06:27', 0, 1, 1),
(217, 'myts3kk56pmn2uph1v', '109.177.48.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-23 11:15:13', '2026-03-23 11:15:13', 0, 1, 1),
(218, '1orbqc8ih9qmn2v8sre', '109.177.48.194', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Mobile/15E148 Safari/604.1', 'mobile', '', 'https://zeeae.com/', '2026-03-23 11:30:15', '2026-03-23 11:30:51', 30, 1, 0),
(219, 'g61mwc0wxgjmn2xmxe2', '109.177.48.194', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-23 12:37:13', '2026-03-23 12:37:13', 0, 1, 1),
(220, '4utflw0ppk7mn3158nj', '109.177.48.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-23 14:15:26', '2026-03-23 14:20:44', 288, 1, 0),
(221, '26mx29adnttmn32j3xl', '109.177.48.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', 'https://zeeae.com/agent/my-properties.php', 'https://zeeae.com/', '2026-03-23 14:54:13', '2026-03-23 14:54:13', 0, 1, 1),
(222, 'gh2fc51ob5fmn32hqbj', '109.177.48.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', 'https://zeeae.com/agent/logout.php', 'https://zeeae.com/', '2026-03-23 14:56:38', '2026-03-23 14:56:38', 0, 1, 1),
(223, '16zwvl3yi14mn32qal2', '109.177.48.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', 'https://zeeae.com/agent/logout.php', 'https://zeeae.com/', '2026-03-23 15:02:58', '2026-03-23 15:02:58', 0, 1, 1),
(224, '0dh4j9lml6comn32yf6p', '109.177.48.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-23 15:06:08', '2026-03-23 15:11:45', 90, 1, 0),
(225, 'og4a47kdu4mn43ghrm', '109.177.48.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-24 08:07:57', '2026-03-24 08:48:57', 2460, 1, 0),
(226, '0m887yy3jnemn43h32w', '109.177.48.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'desktop', '', 'https://zeeae.com/', '2026-03-24 08:08:24', '2026-03-24 08:08:24', 0, 1, 1),
(227, '0bdmrt77lydjmn43n6a2', '66.249.88.3', 'Mozilla/5.0 (Linux; Android 4.0.4; Galaxy Nexus Build/IMM76B) AppleWebKit/537.36 (KHTML, like Gecko; GoogleAdSenseInfeed) Chrome/145.0.7632.159 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-24 08:13:09', '2026-03-24 08:13:09', 0, 1, 1),
(228, 'ksgy2du0dtmn43n72h', '66.249.88.5', 'Mozilla/5.0 (Linux; Android 4.0.4; Galaxy Nexus Build/IMM76B) AppleWebKit/537.36 (KHTML, like Gecko; GoogleAdSenseInfeed) Chrome/145.0.7632.159 Mobile Safari/537.36', 'mobile', '', 'https://zeeae.com/', '2026-03-24 08:13:10', '2026-03-24 08:13:10', 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` int(10) UNSIGNED NOT NULL,
  `filename` varchar(255) NOT NULL,
  `original_name` varchar(255) DEFAULT NULL,
  `url` varchar(600) NOT NULL,
  `file_size` int(10) UNSIGNED DEFAULT NULL COMMENT 'bytes',
  `mime_type` varchar(100) DEFAULT NULL,
  `uploaded_by_agent` int(10) UNSIGNED DEFAULT NULL,
  `uploaded_by_admin` tinyint(1) NOT NULL DEFAULT 0,
  `entity_type` enum('property','agent') NOT NULL DEFAULT 'property',
  `entity_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Tracks every image uploaded through the portal';

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `filename`, `original_name`, `url`, `file_size`, `mime_type`, `uploaded_by_agent`, `uploaded_by_admin`, `entity_type`, `entity_id`, `created_at`) VALUES
(1, 'prop_9552c23671d721250d6e_1773606155.png', '2534183.png', '/uploads/properties/prop_9552c23671d721250d6e_1773606155.png', 37887, 'image/png', 1, 0, 'property', NULL, '2026-03-15 20:22:35'),
(2, 'prop_675bd718243a22305d82_1773606161.jpg', 'eztyjvqz8jke1.jpeg', '/uploads/properties/prop_675bd718243a22305d82_1773606161.jpg', 69810, 'image/jpeg', 1, 0, 'property', NULL, '2026-03-15 20:22:41'),
(3, 'prop_f41f690b5dd1ba8cbecf_1773606168.png', 'Sales-Agent-PNG-Transparent-Image.png', '/uploads/properties/prop_f41f690b5dd1ba8cbecf_1773606168.png', 75383, 'image/png', 1, 0, 'property', NULL, '2026-03-15 20:22:48'),
(4, 'prop_a6c7f1a1239dfeafcaa0_1773606181.png', '3.png', '/uploads/properties/prop_a6c7f1a1239dfeafcaa0_1773606181.png', 28565, 'image/png', 1, 0, 'property', NULL, '2026-03-15 20:23:01'),
(5, 'prop_49a87bd49d94cd96fe4e_1773606182.png', '2534183.png', '/uploads/properties/prop_49a87bd49d94cd96fe4e_1773606182.png', 37887, 'image/png', 1, 0, 'property', NULL, '2026-03-15 20:23:02'),
(6, 'prop_0dca3ab46df1b188670f_1773606182.png', 'Sales-Agent-PNG-Transparent-Image (1).png', '/uploads/properties/prop_0dca3ab46df1b188670f_1773606182.png', 75383, 'image/png', 1, 0, 'property', NULL, '2026-03-15 20:23:02'),
(7, 'prop_4a765a83cbe199251c82_1773606182.png', 'Sales-Agent-PNG-Transparent-Image.png', '/uploads/properties/prop_4a765a83cbe199251c82_1773606182.png', 75383, 'image/png', 1, 0, 'property', NULL, '2026-03-15 20:23:02'),
(8, 'prop_ccaa7da509d70fb8938c_1773606190.png', '3.png', '/uploads/properties/prop_ccaa7da509d70fb8938c_1773606190.png', 28565, 'image/png', 1, 0, 'property', NULL, '2026-03-15 20:23:10'),
(9, 'prop_1dbcc95a518e788fe796_1773606190.png', '2534183.png', '/uploads/properties/prop_1dbcc95a518e788fe796_1773606190.png', 37887, 'image/png', 1, 0, 'property', NULL, '2026-03-15 20:23:10'),
(10, 'prop_541f89b7f25d8c7335af_1773606190.png', 'Sales-Agent-PNG-Transparent-Image (1).png', '/uploads/properties/prop_541f89b7f25d8c7335af_1773606190.png', 75383, 'image/png', 1, 0, 'property', NULL, '2026-03-15 20:23:10'),
(11, 'prop_9ca43ad9ffdfc541f54d_1773606190.png', 'Sales-Agent-PNG-Transparent-Image.png', '/uploads/properties/prop_9ca43ad9ffdfc541f54d_1773606190.png', 75383, 'image/png', 1, 0, 'property', NULL, '2026-03-15 20:23:10'),
(12, 'prop_84d47165b4f678ae62f9_1773606199.png', '3.png', '/uploads/properties/prop_84d47165b4f678ae62f9_1773606199.png', 28565, 'image/png', 1, 0, 'property', NULL, '2026-03-15 20:23:19'),
(13, 'prop_bf3972084e4b49219a4d_1773606199.png', '2534183.png', '/uploads/properties/prop_bf3972084e4b49219a4d_1773606199.png', 37887, 'image/png', 1, 0, 'property', NULL, '2026-03-15 20:23:19'),
(14, 'prop_9158583cd1ce816c8914_1773606199.png', 'Sales-Agent-PNG-Transparent-Image (1).png', '/uploads/properties/prop_9158583cd1ce816c8914_1773606199.png', 75383, 'image/png', 1, 0, 'property', NULL, '2026-03-15 20:23:19'),
(15, 'prop_a840e0640bf35cf071d9_1773606200.png', 'Sales-Agent-PNG-Transparent-Image.png', '/uploads/properties/prop_a840e0640bf35cf071d9_1773606200.png', 75383, 'image/png', 1, 0, 'property', NULL, '2026-03-15 20:23:20'),
(16, 'prop_a4cba6b8baab9838e031_1773606209.png', '3.png', '/uploads/properties/prop_a4cba6b8baab9838e031_1773606209.png', 28565, 'image/png', 1, 0, 'property', NULL, '2026-03-15 20:23:29'),
(17, 'prop_77aa8a2141e750fad8aa_1773606209.png', '2534183.png', '/uploads/properties/prop_77aa8a2141e750fad8aa_1773606209.png', 37887, 'image/png', 1, 0, 'property', NULL, '2026-03-15 20:23:29'),
(18, 'prop_0fcaaa4afdbc7e37189b_1773606209.png', 'Sales-Agent-PNG-Transparent-Image.png', '/uploads/properties/prop_0fcaaa4afdbc7e37189b_1773606209.png', 75383, 'image/png', 1, 0, 'property', NULL, '2026-03-15 20:23:29'),
(19, 'prop_d9dae3cb46da53a88fa3_1773606209.png', 'Sales-Agent-PNG-Transparent-Image (1).png', '/uploads/properties/prop_d9dae3cb46da53a88fa3_1773606209.png', 75383, 'image/png', 1, 0, 'property', NULL, '2026-03-15 20:23:29'),
(20, 'agent_87948f02fb8417be91fb_1773606350.png', 'Sales-Agent-PNG-Transparent-Image (1).png', '/uploads/agents/agent_87948f02fb8417be91fb_1773606350.png', 75383, 'image/png', NULL, 1, 'agent', NULL, '2026-03-15 20:25:50'),
(21, 'agent_0f0c736dc2d418567963_1773606351.png', 'Sales-Agent-PNG-Transparent-Image.png', '/uploads/agents/agent_0f0c736dc2d418567963_1773606351.png', 75383, 'image/png', NULL, 1, 'agent', NULL, '2026-03-15 20:25:51'),
(22, 'prop_90ea83c4b2a2b6fab733_1773606917.png', '1.png', '/uploads/properties/prop_90ea83c4b2a2b6fab733_1773606917.png', 23302, 'image/png', 1, 0, 'property', NULL, '2026-03-15 20:35:17'),
(23, 'prop_e0bf945aa28058f5dbaf_1773606917.png', '3.png', '/uploads/properties/prop_e0bf945aa28058f5dbaf_1773606917.png', 28565, 'image/png', 1, 0, 'property', NULL, '2026-03-15 20:35:17'),
(24, 'prop_1c9e1a567d1d513b5d19_1773606917.png', '2534183.png', '/uploads/properties/prop_1c9e1a567d1d513b5d19_1773606917.png', 37887, 'image/png', 1, 0, 'property', NULL, '2026-03-15 20:35:17'),
(25, 'prop_d05c10081ec778bd464b_1773606917.png', '2.png', '/uploads/properties/prop_d05c10081ec778bd464b_1773606917.png', 43755, 'image/png', 1, 0, 'property', NULL, '2026-03-15 20:35:17'),
(26, 'prop_2df7775ffbe2b2bef169_1773606918.jpg', 'eztyjvqz8jke1.jpeg', '/uploads/properties/prop_2df7775ffbe2b2bef169_1773606918.jpg', 69810, 'image/jpeg', 1, 0, 'property', NULL, '2026-03-15 20:35:18'),
(27, 'prop_2a81664e1493ed30a1ed_1773607048.png', '1.png', '/uploads/properties/prop_2a81664e1493ed30a1ed_1773607048.png', 23302, 'image/png', 1, 0, 'property', NULL, '2026-03-15 20:37:28'),
(28, 'prop_545b7c9af40f575d6755_1773607048.png', '2.png', '/uploads/properties/prop_545b7c9af40f575d6755_1773607048.png', 43755, 'image/png', 1, 0, 'property', NULL, '2026-03-15 20:37:28'),
(29, 'prop_6c8c5cbeb786c87e2e55_1773607048.png', '3.png', '/uploads/properties/prop_6c8c5cbeb786c87e2e55_1773607048.png', 28565, 'image/png', 1, 0, 'property', NULL, '2026-03-15 20:37:28'),
(30, 'prop_2b2764d899e4d2b609fa_1773607048.png', '2534183.png', '/uploads/properties/prop_2b2764d899e4d2b609fa_1773607048.png', 37887, 'image/png', 1, 0, 'property', NULL, '2026-03-15 20:37:28'),
(31, 'prop_2a71bd1d46113246fa08_1773607048.jpg', 'eztyjvqz8jke1.jpeg', '/uploads/properties/prop_2a71bd1d46113246fa08_1773607048.jpg', 69810, 'image/jpeg', 1, 0, 'property', NULL, '2026-03-15 20:37:28'),
(32, 'prop_55c9f5115b114ef6734b_1773609027.jpg', 'IMG_8498.jpeg', '/uploads/properties/prop_55c9f5115b114ef6734b_1773609027.jpg', 1652356, 'image/jpeg', 1, 0, 'property', NULL, '2026-03-15 21:10:27'),
(33, 'prop_4e6ca54c0bfe03a1759d_1773609387.png', 'IMG_8570.png', '/uploads/properties/prop_4e6ca54c0bfe03a1759d_1773609387.png', 1492844, 'image/png', 1, 0, 'property', NULL, '2026-03-15 21:16:27'),
(34, 'prop_b044c3c75f4de61df45e_1773626941.jpg', '20260312_145639.jpg', '/uploads/properties/prop_b044c3c75f4de61df45e_1773626941.jpg', 2352365, 'image/jpeg', 1, 0, 'property', NULL, '2026-03-16 02:09:01'),
(35, 'prop_ac26f87cb4091a3303c2_1773627254.jpg', '20260312_145639.jpg', '/uploads/properties/prop_ac26f87cb4091a3303c2_1773627254.jpg', 2352365, 'image/jpeg', 1, 0, 'property', NULL, '2026-03-16 02:14:14'),
(36, 'prop_ba6cf64bf21917f7609b_1773627264.jpg', '20260313_115607.jpg', '/uploads/properties/prop_ba6cf64bf21917f7609b_1773627264.jpg', 1535183, 'image/jpeg', 1, 0, 'property', NULL, '2026-03-16 02:14:24'),
(37, 'prop_23f6039d7bc7f6808c50_1773627264.jpg', '20260315_231246.jpg', '/uploads/properties/prop_23f6039d7bc7f6808c50_1773627264.jpg', 1623039, 'image/jpeg', 1, 0, 'property', NULL, '2026-03-16 02:14:24'),
(38, 'prop_047a4567cf9cea3dad2e_1773627264.jpg', '20260315_231257.jpg', '/uploads/properties/prop_047a4567cf9cea3dad2e_1773627264.jpg', 1632552, 'image/jpeg', 1, 0, 'property', NULL, '2026-03-16 02:14:24'),
(39, 'prop_1f9545a852f53a75be0c_1773627265.jpg', '20260314_220405.jpg', '/uploads/properties/prop_1f9545a852f53a75be0c_1773627265.jpg', 2180639, 'image/jpeg', 1, 0, 'property', NULL, '2026-03-16 02:14:25'),
(40, 'prop_9d70db0f1c0774910b8d_1773679522.png', 'ChatGPT Image Nov 14, 2025, 10_24_20 AM.png', '/uploads/properties/prop_9d70db0f1c0774910b8d_1773679522.png', 556776, 'image/png', 72, 0, 'property', NULL, '2026-03-16 16:45:22'),
(41, 'prop_dcbf484543429e7de8a2_1773687957.jpg', 'download.jpg', '/uploads/properties/prop_dcbf484543429e7de8a2_1773687957.jpg', 33239, 'image/jpeg', 72, 0, 'property', NULL, '2026-03-16 19:05:57'),
(42, 'prop_f8f135e21ab8a3bde7f8_1773687970.jpg', 'WhatsApp Image 2025-11-12 at 2.28.34 AM.jpeg', '/uploads/properties/prop_f8f135e21ab8a3bde7f8_1773687970.jpg', 17176, 'image/jpeg', 72, 0, 'property', NULL, '2026-03-16 19:06:10'),
(43, 'prop_1c83af5a9c5a7fc9bbfb_1773687970.png', 'Modern_Logo_with_Magnifying_Glass_Icon-removebg-preview.png', '/uploads/properties/prop_1c83af5a9c5a7fc9bbfb_1773687970.png', 32728, 'image/png', 72, 0, 'property', NULL, '2026-03-16 19:06:10'),
(44, 'prop_05bde9ac103a1b9252e9_1773687986.png', 'Modern Logo with Magnifying Glass Icon.png', '/uploads/properties/prop_05bde9ac103a1b9252e9_1773687986.png', 169668, 'image/png', 72, 0, 'property', NULL, '2026-03-16 19:06:26'),
(45, 'prop_487e55a1ddd948c171d3_1774045110.jpg', '20260312_145639.jpg', '/uploads/properties/prop_487e55a1ddd948c171d3_1774045110.jpg', 2352365, 'image/jpeg', 1, 0, 'property', NULL, '2026-03-20 22:18:30'),
(46, 'prop_6d11ea6c9d4fe3a469d9_1774045238.jpg', 'Screenshot_20260303_010914_Chrome.jpg', '/uploads/properties/prop_6d11ea6c9d4fe3a469d9_1774045238.jpg', 111350, 'image/jpeg', 1, 0, 'property', NULL, '2026-03-20 22:20:38'),
(47, 'prop_d0f2a9711de92b2a4147_1774049723.jpg', '20260312_145639.jpg', '/uploads/properties/prop_d0f2a9711de92b2a4147_1774049723.jpg', 2352365, 'image/jpeg', 1, 0, 'property', NULL, '2026-03-20 23:35:23'),
(48, 'prop_3365ffeb952da6d035a0_1774050105.jpg', '20260307_153714.jpg', '/uploads/properties/prop_3365ffeb952da6d035a0_1774050105.jpg', 2077952, 'image/jpeg', 1, 0, 'property', NULL, '2026-03-20 23:41:45'),
(49, 'prop_c025ebd7aa7eab105f32_1774062391.jpg', '20260312_145639.jpg', '/uploads/properties/prop_c025ebd7aa7eab105f32_1774062391.jpg', 2352365, 'image/jpeg', 1, 0, 'property', NULL, '2026-03-21 03:06:31'),
(50, 'prop_c4685b157f922f734f38_1774066215.jpg', 'IMG_8608.jpeg', '/uploads/properties/prop_c4685b157f922f734f38_1774066215.jpg', 3466641, 'image/jpeg', 1, 0, 'property', NULL, '2026-03-21 04:10:15'),
(51, 'prop_275b6a65d248c5cd89db_1774066233.jpg', 'IMG_8593.jpeg', '/uploads/properties/prop_275b6a65d248c5cd89db_1774066233.jpg', 2055669, 'image/jpeg', 1, 0, 'property', NULL, '2026-03-21 04:10:33'),
(52, 'prop_4140aaf180b0a3d31ff2_1774067130.jpg', 'IMG_8498.jpeg', '/uploads/properties/prop_4140aaf180b0a3d31ff2_1774067130.jpg', 1652356, 'image/jpeg', 1, 0, 'property', NULL, '2026-03-21 04:25:30'),
(53, 'prop_0196c0f60f3dd9e6ed62_1774070804.jpg', '20260319_224259.jpg', '/uploads/properties/prop_0196c0f60f3dd9e6ed62_1774070804.jpg', 1402859, 'image/jpeg', 1, 0, 'property', NULL, '2026-03-21 05:26:44'),
(54, 'prop_9250170270056611636d_1774186772.jpg', 'IMG_8607.jpeg', '/uploads/properties/prop_9250170270056611636d_1774186772.jpg', 82074, 'image/jpeg', 1, 0, 'property', NULL, '2026-03-22 13:39:32'),
(55, 'prop_1295a68290bdaf143c33_1774249483.png', 'Sales-Agent-PNG-Transparent-Image (1).png', '/uploads/properties/prop_1295a68290bdaf143c33_1774249483.png', 75383, 'image/png', 82, 0, 'property', NULL, '2026-03-23 07:04:43'),
(56, 'agent_8878df53c4aef1049cae_1774263932.png', 'ChatGPT Image Nov 14, 2025, 10_24_20 AM.png', '/uploads/agents/agent_8878df53c4aef1049cae_1774263932.png', 556776, 'image/png', NULL, 1, 'agent', NULL, '2026-03-23 11:05:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `role` enum('agent') DEFAULT 'agent',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `email` varchar(191) DEFAULT NULL,
  `google_id` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `agent_id`, `role`, `created_at`, `email`, `google_id`) VALUES
(15, 'g_rashidafghan1920gmailcom', '', 85, 'agent', '2026-03-23 11:03:08', 'rashidafghan1920@gmail.com', '107482721074379117223');

-- --------------------------------------------------------

--
-- Table structure for table `user_profiles`
--

CREATE TABLE `user_profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` varchar(64) NOT NULL,
  `emirate` varchar(20) DEFAULT NULL,
  `gender` varchar(12) DEFAULT NULL,
  `age_group` varchar(10) DEFAULT NULL,
  `nationality` varchar(80) DEFAULT NULL,
  `device_type` varchar(10) DEFAULT 'unknown',
  `lang` varchar(10) DEFAULT NULL,
  `timezone` varchar(60) DEFAULT NULL,
  `screen_res` varchar(12) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `profile_count` smallint(6) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_profiles`
--

INSERT INTO `user_profiles` (`id`, `uid`, `emirate`, `gender`, `age_group`, `nationality`, `device_type`, `lang`, `timezone`, `screen_res`, `ip_address`, `user_agent`, `profile_count`, `created_at`, `updated_at`) VALUES
(1, 'u_mmy0ct8s_nfat7w', NULL, 'male', '25_35', 'Pakistani', 'desktop', 'en-US', 'Asia/Dubai', '1280x720', '109.177.26.228', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 1, '2026-03-20 01:54:30', '2026-03-20 01:54:30'),
(2, 'u_mmy0hqnq_c31ss6', NULL, 'male', '25_35', 'Emirati', 'desktop', 'en-US', 'Asia/Dubai', '1280x720', '109.177.26.228', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 1, '2026-03-20 01:58:20', '2026-03-20 01:58:20');

-- --------------------------------------------------------

--
-- Table structure for table `video_folders`
--

CREATE TABLE `video_folders` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `color` varchar(20) DEFAULT '#f59e0b',
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `video_folders`
--

INSERT INTO `video_folders` (`id`, `name`, `color`, `created_at`) VALUES
(2, 'rashid ajman', '#667eea', '2026-03-19 17:14:43');

-- --------------------------------------------------------

--
-- Table structure for table `viewer_counts`
--

CREATE TABLE `viewer_counts` (
  `id` int(11) NOT NULL,
  `token` varchar(64) NOT NULL,
  `last_ping` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` int(11) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `balance` decimal(10,2) NOT NULL DEFAULT 0.00,
  `currency` varchar(8) NOT NULL DEFAULT 'AED',
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `wallets`
--

INSERT INTO `wallets` (`id`, `agent_id`, `balance`, `currency`, `created_at`, `updated_at`) VALUES
(1, 1, 0.00, 'AED', '2026-03-19 14:56:28', '2026-03-19 14:56:28'),
(2, 72, 0.00, 'AED', '2026-03-19 14:56:28', '2026-03-19 14:56:28'),
(3, 73, 0.00, 'AED', '2026-03-19 14:56:28', '2026-03-19 14:56:28');

-- --------------------------------------------------------

--
-- Table structure for table `wallet_transactions`
--

CREATE TABLE `wallet_transactions` (
  `id` int(11) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `type` enum('listing_fee','commission_earned','admin_credit','admin_debit','referral_earned','referral_to_wallet','withdrawal_request','withdrawal_approved','withdrawal_rejected') NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `direction` enum('debit','credit') NOT NULL,
  `wallet_type` enum('main','referral') NOT NULL DEFAULT 'main',
  `balance_after` decimal(10,2) NOT NULL DEFAULT 0.00,
  `description` varchar(255) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `wallet_transactions`
--

INSERT INTO `wallet_transactions` (`id`, `agent_id`, `type`, `amount`, `direction`, `wallet_type`, `balance_after`, `description`, `property_id`, `created_at`) VALUES
(1, 1, 'admin_credit', 100.00, 'credit', 'main', 100.00, 'thid link is for my gf', NULL, '2026-03-16 01:39:19'),
(2, 1, 'listing_fee', 30.00, 'debit', 'main', 70.00, 'Listing fee for: Fjddjdj', 19, '2026-03-16 01:44:16'),
(3, 1, 'commission_earned', 60.00, 'credit', 'main', 70.00, 'Commission from customer for: Fjddjdj', 19, '2026-03-16 01:44:16'),
(4, 1, 'listing_fee', 30.00, 'debit', 'main', 40.00, 'Renewal fee for: Fjddjdj', 19, '2026-03-16 03:10:11'),
(5, 1, 'commission_earned', 50.00, 'credit', 'main', 40.00, 'Commission for renewal of: Fjddjdj', 19, '2026-03-16 03:10:11'),
(6, 1, 'withdrawal_request', 40.00, 'debit', 'main', 0.00, 'Withdrawal request submitted', NULL, '2026-03-16 03:16:08'),
(7, 1, 'withdrawal_approved', 40.00, 'debit', 'main', 0.00, 'Cash withdrawal approved', NULL, '2026-03-16 03:16:44'),
(8, 72, 'admin_credit', 500.00, 'credit', 'main', 500.00, 'bonus', NULL, '2026-03-16 16:44:44'),
(9, 72, 'listing_fee', 30.00, 'debit', 'main', 470.00, 'Listing fee for: ffssdfsdsd', 20, '2026-03-16 16:45:24'),
(10, 72, 'commission_earned', 50.00, 'credit', 'main', 470.00, 'Commission from customer for: ffssdfsdsd', 20, '2026-03-16 16:45:24'),
(11, 1, 'referral_earned', 2.00, 'credit', 'referral', 2.00, 'Listing commission from referred agent ID 72: ffssdfsdsd', 20, '2026-03-16 16:45:24'),
(12, 1, 'referral_to_wallet', 1.00, 'debit', 'referral', 1.00, 'Transfer to main wallet', NULL, '2026-03-16 16:53:37'),
(13, 1, 'referral_to_wallet', 1.00, 'credit', 'main', 1.00, 'Received from referral wallet', NULL, '2026-03-16 16:53:37'),
(14, 1, 'referral_to_wallet', 1.00, 'debit', 'referral', 0.00, 'Transfer to main wallet', NULL, '2026-03-16 16:53:55'),
(15, 1, 'referral_to_wallet', 1.00, 'credit', 'main', 2.00, 'Received from referral wallet', NULL, '2026-03-16 16:53:55'),
(16, 72, 'listing_fee', 30.00, 'debit', 'main', 440.00, 'Listing fee for: sdsd', 21, '2026-03-16 19:06:34'),
(17, 72, 'commission_earned', 50.00, 'credit', 'main', 440.00, 'Commission from customer for: sdsd', 21, '2026-03-16 19:06:34'),
(18, 1, 'referral_earned', 2.00, 'credit', 'referral', 2.00, 'Listing commission from referred agent ID 72: sdsd', 21, '2026-03-16 19:06:34'),
(19, 1, 'admin_credit', 100.00, 'credit', 'main', 102.00, 'Admin adjustment', NULL, '2026-03-16 20:53:40'),
(20, 1, 'referral_earned', 100.00, 'credit', 'referral', 102.00, '100 AED joining bonus — new agent: Rashid said khan', NULL, '2026-03-16 20:57:14'),
(21, 1, 'withdrawal_request', 50.00, 'debit', 'referral', 52.00, 'Withdrawal request submitted', NULL, '2026-03-16 20:57:36'),
(22, 1, 'withdrawal_request', 10.00, 'debit', 'referral', 42.00, 'Withdrawal request submitted', NULL, '2026-03-16 20:59:46'),
(23, 1, 'withdrawal_rejected', 50.00, 'credit', 'referral', 92.00, 'Withdrawal rejected — funds returned: ', NULL, '2026-03-16 21:06:45'),
(24, 1, 'withdrawal_request', 10.00, 'debit', 'referral', 82.00, 'Withdrawal request submitted', NULL, '2026-03-16 21:11:21'),
(25, 1, 'withdrawal_request', 10.00, 'debit', 'referral', 72.00, 'Withdrawal request submitted', NULL, '2026-03-16 21:14:30'),
(26, 1, 'withdrawal_request', 10.00, 'debit', 'referral', 62.00, 'Withdrawal request submitted', NULL, '2026-03-16 21:15:06'),
(27, 1, 'withdrawal_request', 10.00, 'debit', 'referral', 52.00, 'Withdrawal request submitted', NULL, '2026-03-16 21:15:37'),
(28, 1, 'withdrawal_request', 10.00, 'debit', 'referral', 42.00, 'Withdrawal request submitted', NULL, '2026-03-16 21:15:57'),
(29, 1, 'withdrawal_request', 10.00, 'debit', 'referral', 32.00, 'Withdrawal request submitted', NULL, '2026-03-16 21:18:21'),
(30, 1, 'withdrawal_request', 10.00, 'debit', 'referral', 22.00, 'Withdrawal request submitted', NULL, '2026-03-16 21:20:34'),
(31, 1, 'withdrawal_rejected', 10.00, 'credit', 'referral', 32.00, 'Withdrawal rejected — funds returned: ', NULL, '2026-03-16 21:22:16'),
(32, 1, 'withdrawal_rejected', 10.00, 'credit', 'referral', 42.00, 'Withdrawal rejected — funds returned: ', NULL, '2026-03-16 21:22:24'),
(33, 1, 'withdrawal_rejected', 10.00, 'credit', 'referral', 52.00, 'Withdrawal rejected — funds returned: ', NULL, '2026-03-16 21:22:27'),
(34, 1, 'withdrawal_rejected', 10.00, 'credit', 'referral', 62.00, 'Withdrawal rejected — funds returned: ', NULL, '2026-03-16 21:22:31'),
(35, 1, 'withdrawal_rejected', 10.00, 'credit', 'referral', 72.00, 'Withdrawal rejected — funds returned: ', NULL, '2026-03-16 21:22:34'),
(36, 1, 'withdrawal_rejected', 10.00, 'credit', 'referral', 82.00, 'Withdrawal rejected — funds returned: ', NULL, '2026-03-16 21:22:37'),
(37, 1, 'withdrawal_rejected', 10.00, 'credit', 'referral', 92.00, 'Withdrawal rejected — funds returned: ', NULL, '2026-03-16 21:22:40'),
(38, 1, 'withdrawal_rejected', 10.00, 'credit', 'referral', 102.00, 'Withdrawal rejected — funds returned: we do not support for now this pament methot kidnly try another one', NULL, '2026-03-16 21:23:04'),
(39, 1, 'referral_to_wallet', 2.00, 'debit', 'referral', 100.00, 'Transfer to main wallet', NULL, '2026-03-16 22:40:44'),
(40, 1, 'referral_to_wallet', 2.00, 'credit', 'main', 104.00, 'Received from referral wallet', NULL, '2026-03-16 22:40:44'),
(41, 1, 'withdrawal_request', 100.00, 'debit', 'referral', 0.00, 'Withdrawal request submitted', NULL, '2026-03-16 22:41:07'),
(42, 1, 'listing_fee', 20.00, 'debit', 'main', 84.00, 'Listing fee for: jankara', 22, '2026-03-17 13:46:23'),
(43, 1, 'commission_earned', 50.00, 'credit', 'main', 84.00, 'Commission from customer for: jankara', 22, '2026-03-17 13:46:23'),
(44, 72, 'referral_earned', 2.00, 'credit', 'referral', 2.00, 'Listing commission from referred agent ID 1: jankara', 22, '2026-03-17 13:46:23'),
(45, 1, 'withdrawal_approved', 100.00, 'debit', 'main', 84.00, 'Cash withdrawal approved', NULL, '2026-03-17 13:47:28'),
(46, 72, 'admin_credit', 100.00, 'credit', 'main', 540.00, 'Admin adjustment', NULL, '2026-03-18 03:49:09'),
(47, 73, '', 299.00, 'credit', '', 0.00, 'Subscription renewed — 299 AED · expires 2026-04-17 20:47:01', NULL, '2026-03-18 16:47:01'),
(48, 72, '', 299.00, 'credit', '', 0.00, 'Subscription renewed — 299 AED · expires 2026-04-17 20:47:17', NULL, '2026-03-18 16:47:17'),
(49, 1, '', 299.00, 'credit', '', 0.00, 'Subscription renewed — 299 AED · expires 2026-04-17 20:47:22', NULL, '2026-03-18 16:47:22'),
(50, 1, 'listing_fee', 51.00, 'debit', 'main', 33.00, 'Bulk renewal fee for: room for rent', 5, '2026-03-20 20:45:42'),
(51, 72, 'referral_earned', 2.00, 'credit', 'referral', 4.00, 'Bulk renewal commission from agent ID 1: room for rent', 5, '2026-03-20 20:45:42'),
(52, 1, 'listing_fee', 20.00, 'debit', 'main', 13.00, 'Listing fee: Near to', 24, '2026-03-20 22:18:33'),
(53, 1, 'commission_earned', 50.00, 'credit', 'main', 13.00, 'Commission: Near to', 24, '2026-03-20 22:18:33'),
(54, 72, 'referral_earned', 2.00, 'credit', 'referral', 6.00, 'Referral from agent 1', 24, '2026-03-20 22:18:33'),
(55, 1, 'admin_credit', 1000.00, 'credit', 'main', 1013.00, 'free bonus', NULL, '2026-03-20 22:27:42'),
(56, 1, 'listing_fee', 4.00, 'debit', 'main', 1009.00, 'Listing fee: 1 BHK in Al Rashidiya 3 - الراشدية', 25, '2026-03-20 22:38:05'),
(57, 1, 'commission_earned', 10.00, 'credit', 'main', 1009.00, 'Commission: 1 BHK in Al Rashidiya 3 - الراشدية', 25, '2026-03-20 22:38:05'),
(58, 72, 'referral_earned', 2.00, 'credit', 'referral', 8.00, 'Referral from agent 1', 25, '2026-03-20 22:38:05'),
(59, 1, 'listing_fee', 2.00, 'debit', 'main', 1007.00, 'Listing fee: Retail Space in Al Rashidiya 3 - ا', 26, '2026-03-20 22:48:28'),
(60, 1, 'commission_earned', 5.00, 'credit', 'main', 1007.00, 'Commission: Retail Space in Al Rashidiya 3 - ا', 26, '2026-03-20 22:48:28'),
(61, 72, 'referral_earned', 2.00, 'credit', 'referral', 10.00, 'Referral from agent 1', 26, '2026-03-20 22:48:28'),
(62, 1, 'listing_fee', 17.00, 'debit', 'main', 990.00, 'Listing fee: Partition Room in Al Rashidiya 3 -', 27, '2026-03-20 23:05:53'),
(63, 1, 'commission_earned', 40.00, 'credit', 'main', 990.00, 'Commission: Partition Room in Al Rashidiya 3 -', 27, '2026-03-20 23:05:53'),
(64, 72, 'referral_earned', 2.00, 'credit', 'referral', 12.00, 'Referral from agent 1', 27, '2026-03-20 23:05:53'),
(65, 1, 'listing_fee', 0.44, 'debit', 'main', 989.56, 'Listing fee: Showroom in Ajman City', 28, '2026-03-20 23:13:54'),
(66, 1, 'commission_earned', 1.00, 'credit', 'main', 989.56, 'Commission: Showroom in Ajman City', 28, '2026-03-20 23:13:54'),
(67, 72, 'referral_earned', 2.00, 'credit', 'referral', 14.00, 'Referral from agent 1', 28, '2026-03-20 23:13:54'),
(68, 1, 'listing_fee', 14.00, 'debit', 'main', 975.56, 'Listing fee: Private Room in Downtown Dubai', 29, '2026-03-20 23:16:51'),
(69, 1, 'commission_earned', 50.00, 'credit', 'main', 975.56, 'Commission: Private Room in Downtown Dubai', 29, '2026-03-20 23:16:51'),
(70, 72, 'referral_earned', 2.00, 'credit', 'referral', 16.00, 'Referral from agent 1', 29, '2026-03-20 23:16:51'),
(71, 1, 'listing_fee', 5.00, 'debit', 'main', 970.56, 'Listing fee: Bed Space in Al Nahda', 30, '2026-03-20 23:35:31'),
(72, 1, 'commission_earned', 12.00, 'credit', 'main', 970.56, 'Commission: Bed Space in Al Nahda', 30, '2026-03-20 23:35:31'),
(73, 72, 'referral_earned', 2.00, 'credit', 'referral', 18.00, 'Referral from agent 1', 30, '2026-03-20 23:35:31'),
(74, 1, 'listing_fee', 40.00, 'debit', 'main', 930.56, 'Listing fee: Private Room in Al Rashidiya 3 - ا', 31, '2026-03-20 23:41:51'),
(75, 1, 'commission_earned', 100.00, 'credit', 'main', 930.56, 'Commission: Private Room in Al Rashidiya 3 - ا', 31, '2026-03-20 23:41:51'),
(76, 72, 'referral_earned', 2.00, 'credit', 'referral', 20.00, 'Referral from agent 1', 31, '2026-03-20 23:41:51'),
(77, 1, 'listing_fee', 20.00, 'debit', 'main', 910.56, 'Listing fee: 2 BHK in Al Rumailah 3 - الرميلة ٣', 32, '2026-03-21 03:06:33'),
(78, 1, 'commission_earned', 50.00, 'credit', 'main', 910.56, 'Commission: 2 BHK in Al Rumailah 3 - الرميلة ٣', 32, '2026-03-21 03:06:33'),
(79, 72, 'referral_earned', 2.00, 'credit', 'referral', 22.00, 'Referral from agent 1', 32, '2026-03-21 03:06:33'),
(80, 1, 'listing_fee', 20.00, 'debit', 'main', 890.56, 'Listing fee: 1 BHK in Al Rashidiya 3 - الراشدية', 33, '2026-03-21 05:26:47'),
(81, 1, 'commission_earned', 50.00, 'credit', 'main', 890.56, 'Commission: 1 BHK in Al Rashidiya 3 - الراشدية', 33, '2026-03-21 05:26:47'),
(82, 72, 'referral_earned', 2.00, 'credit', 'referral', 24.00, 'Referral from agent 1', 33, '2026-03-21 05:26:47'),
(83, 79, '', 299.00, 'credit', '', 0.00, 'First [Standard] 299 AED · 30d · exp 2026-04-20 12:48:37', NULL, '2026-03-21 08:48:37'),
(84, 1, 'listing_fee', 30.00, 'debit', 'main', 860.56, 'Renewal fee for: ', 33, '2026-03-21 09:20:21'),
(85, 72, 'referral_earned', 2.00, 'credit', 'referral', 26.00, 'Renewal commission from referred agent ID 1: ', 33, '2026-03-21 09:20:21'),
(86, 1, 'listing_fee', 166.65, 'debit', 'main', 693.91, 'Renewal fee for: ', 2, '2026-03-21 09:20:28'),
(87, 72, 'referral_earned', 2.00, 'credit', 'referral', 28.00, 'Renewal commission from referred agent ID 1: ', 2, '2026-03-21 09:20:28'),
(88, 1, 'listing_fee', 166.65, 'debit', 'main', 527.26, 'Renewal fee for: ', 2, '2026-03-21 09:20:29'),
(89, 72, 'referral_earned', 2.00, 'credit', 'referral', 30.00, 'Renewal commission from referred agent ID 1: ', 2, '2026-03-21 09:20:29'),
(90, 1, 'listing_fee', 150.00, 'debit', 'main', 377.26, 'Renewal fee for: ', 13, '2026-03-21 09:20:41'),
(91, 72, 'referral_earned', 2.00, 'credit', 'referral', 32.00, 'Renewal commission from referred agent ID 1: ', 13, '2026-03-21 09:20:41'),
(92, 1, 'listing_fee', 15.00, 'debit', 'main', 362.26, 'Renewal fee for: ', 15, '2026-03-21 09:20:46'),
(93, 72, 'referral_earned', 2.00, 'credit', 'referral', 34.00, 'Renewal commission from referred agent ID 1: ', 15, '2026-03-21 09:20:46'),
(94, 74, '', 299.00, 'credit', '', 0.00, 'Renewed [Standard] 299 AED · 30d · exp 2026-04-20 22:13:25', NULL, '2026-03-21 18:13:25'),
(95, 1, '', 299.00, 'debit', 'main', 63.26, 'Subscription: Standard (30d) from main wallet', NULL, '2026-03-21 18:38:04'),
(96, 80, 'admin_credit', 5000.00, 'credit', 'main', 5000.00, 'Admin adjustment', NULL, '2026-03-21 18:43:05'),
(97, 80, '', 99.00, 'debit', 'main', 4901.00, 'Subscription: Standard (30d) from main wallet', NULL, '2026-03-21 18:43:32'),
(98, 80, '', 99.00, 'debit', 'main', 4802.00, 'Subscription: Standard (30d) from main wallet', NULL, '2026-03-21 18:52:11'),
(99, 80, '', 299.00, 'credit', '', 0.00, 'Renewed [Standard] 299 AED · 30d · exp 2026-04-20 22:53:40', NULL, '2026-03-21 18:53:40'),
(100, 1, 'admin_credit', 1000.00, 'credit', 'main', 1063.26, 'Admin adjustment', NULL, '2026-03-23 06:51:32'),
(101, 75, 'admin_credit', 1000.00, 'credit', 'main', 1000.00, 'Admin adjustment', NULL, '2026-03-23 06:56:05'),
(102, 82, 'admin_credit', 2000.00, 'credit', 'main', 2000.00, 'Admin adjustment', NULL, '2026-03-23 06:59:07'),
(103, 82, '', 99.00, 'debit', 'main', 1901.00, 'Subscription: Standard (30d) from main wallet', NULL, '2026-03-23 07:00:02'),
(104, 82, 'listing_fee', 100.00, 'debit', 'main', 1801.00, 'Listing fee: 1 BHK in Al Rashidiya 3 - الراشدية', 34, '2026-03-23 07:04:45'),
(105, 82, 'commission_earned', 122.00, 'credit', 'main', 1801.00, 'Commission: 1 BHK in Al Rashidiya 3 - الراشدية', 34, '2026-03-23 07:04:45'),
(106, 85, 'admin_credit', 2000.00, 'credit', 'main', 2000.00, 'Admin adjustment', NULL, '2026-03-23 11:03:58'),
(107, 85, '', 299.00, 'credit', '', 0.00, 'Renewed [Standard] 299 AED · 30d · exp 2026-04-22 15:04:50', NULL, '2026-03-23 11:04:50');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawal_requests`
--

CREATE TABLE `withdrawal_requests` (
  `id` int(11) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `source` enum('main','referral') NOT NULL DEFAULT 'referral',
  `destination` enum('cash','main_wallet') NOT NULL DEFAULT 'cash',
  `status` enum('pending','approved','rejected') NOT NULL DEFAULT 'pending',
  `agent_note` varchar(255) DEFAULT NULL,
  `admin_note` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `withdrawal_requests`
--

INSERT INTO `withdrawal_requests` (`id`, `agent_id`, `amount`, `source`, `destination`, `status`, `agent_note`, `admin_note`, `created_at`, `updated_at`) VALUES
(1, 1, 40.00, 'main', 'cash', 'approved', 'thid link is for my gf', 'transpered amount', '2026-03-16 03:16:08', '2026-03-16 03:16:44'),
(2, 1, 50.00, 'referral', 'cash', 'rejected', 'Method: Botim UAE | Name:  | Phone: +971', '', '2026-03-16 20:57:36', '2026-03-16 21:06:45'),
(3, 1, 10.00, 'referral', 'cash', 'rejected', 'Method: Botim UAE | Name:  | Phone: +971', '', '2026-03-16 20:59:46', '2026-03-16 21:22:16'),
(4, 1, 10.00, 'referral', 'cash', 'rejected', 'Method: GCash Philippines | Name:  | Phone: +63552244333', '', '2026-03-16 21:11:21', '2026-03-16 21:22:24'),
(5, 1, 10.00, 'referral', 'cash', 'rejected', 'Method: GCash Philippines | Name:  | Phone: +6355434342343', '', '2026-03-16 21:14:30', '2026-03-16 21:22:27'),
(6, 1, 10.00, 'referral', 'cash', 'rejected', 'Method: UAE Bank Transfer | Name: jsdsspdsds | Bank: Mashreq Bank | IBAN: AEDJDDDIDDSDIDSDD', '', '2026-03-16 21:15:06', '2026-03-16 21:22:31'),
(7, 1, 10.00, 'referral', 'cash', 'rejected', 'Method: Botim UAE | Name:  | Phone: +971553322733', '', '2026-03-16 21:15:37', '2026-03-16 21:22:34'),
(8, 1, 10.00, 'referral', 'cash', 'rejected', 'Method: Binance USDT | Address/ID: wiwdwoidwqdwqdwqdwqdwqdqwdqd', '', '2026-03-16 21:15:57', '2026-03-16 21:22:37'),
(9, 1, 10.00, 'referral', 'cash', 'rejected', 'Method: GCash Philippines | Name:  | Phone: +63345353535', '', '2026-03-16 21:18:21', '2026-03-16 21:22:40'),
(10, 1, 10.00, 'referral', 'cash', 'rejected', 'Method: GCash | Name:  | Phone: +63355353535', 'we do not support for now this pament methot kidnly try another one', '2026-03-16 21:20:34', '2026-03-16 21:23:04'),
(11, 1, 100.00, 'referral', 'cash', 'approved', 'Method: Botim | Phone: +971552268450', '', '2026-03-16 22:41:07', '2026-03-17 13:47:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_credentials`
--
ALTER TABLE `admin_credentials`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `admin_login_log`
--
ALTER TABLE `admin_login_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_created` (`created_at`),
  ADD KEY `idx_status` (`status`);

--
-- Indexes for table `admin_popup_queue`
--
ALTER TABLE `admin_popup_queue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_created_at` (`created_at`);

--
-- Indexes for table `admin_sessions`
--
ALTER TABLE `admin_sessions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_token` (`session_token`),
  ADD KEY `idx_user` (`admin_username`);

--
-- Indexes for table `admin_settings`
--
ALTER TABLE `admin_settings`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_active` (`is_active`),
  ADD KEY `idx_area` (`target_area`),
  ADD KEY `idx_emirate` (`target_emirate`),
  ADD KEY `idx_ads_priority` (`priority` DESC,`created_at` DESC);

--
-- Indexes for table `ad_events`
--
ALTER TABLE `ad_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ad` (`ad_id`),
  ADD KEY `idx_session` (`session_id`),
  ADD KEY `idx_type` (`event_type`),
  ADD KEY `idx_created_at` (`created_at`),
  ADD KEY `idx_ad_events_created` (`created_at`),
  ADD KEY `idx_ad_events_type` (`event_type`);

--
-- Indexes for table `ad_networks`
--
ALTER TABLE `ad_networks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `network_type` (`network_type`),
  ADD KEY `idx_type` (`network_type`),
  ADD KEY `idx_enabled` (`is_enabled`);

--
-- Indexes for table `ad_session_history`
--
ALTER TABLE `ad_session_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_session` (`session_id`),
  ADD KEY `idx_video` (`video_id`),
  ADD KEY `idx_seen` (`seen_at`);

--
-- Indexes for table `ad_videos`
--
ALTER TABLE `ad_videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_active` (`is_active`),
  ADD KEY `idx_target` (`target_type`);

--
-- Indexes for table `agents`
--
ALTER TABLE `agents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `referral_code` (`referral_code`),
  ADD UNIQUE KEY `idx_agents_referral_code` (`referral_code`),
  ADD KEY `idx_emirate` (`emirate`),
  ADD KEY `idx_area` (`area`),
  ADD KEY `idx_suspended` (`suspended_until`),
  ADD KEY `fk_agent_referred_by` (`referred_by`),
  ADD KEY `idx_active` (`is_active`),
  ADD KEY `idx_email` (`email`),
  ADD KEY `idx_created` (`created_at`),
  ADD KEY `idx_agents_sub_exp` (`subscription_expires_at`,`suspended_until`);

--
-- Indexes for table `agent_images`
--
ALTER TABLE `agent_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_agent_images_agent_sort` (`agent_id`,`sort_order`),
  ADD KEY `idx_agent_images_url` (`url`(191));

--
-- Indexes for table `agent_referrals`
--
ALTER TABLE `agent_referrals`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `referred_agent_id` (`referred_agent_id`),
  ADD KEY `idx_referrer` (`referrer_agent_id`);

--
-- Indexes for table `agent_subscriptions`
--
ALTER TABLE `agent_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_agent` (`agent_id`),
  ADD KEY `idx_expires` (`expires_at`),
  ADD KEY `idx_status` (`status`);

--
-- Indexes for table `agent_subscription_settings`
--
ALTER TABLE `agent_subscription_settings`
  ADD PRIMARY KEY (`agent_id`);

--
-- Indexes for table `agent_wallets`
--
ALTER TABLE `agent_wallets`
  ADD PRIMARY KEY (`agent_id`);

--
-- Indexes for table `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `live_sessions`
--
ALTER TABLE `live_sessions`
  ADD PRIMARY KEY (`session_token`),
  ADD KEY `idx_last_seen` (`last_seen`);

--
-- Indexes for table `profile_events`
--
ALTER TABLE `profile_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_uid` (`uid`),
  ADD KEY `idx_event_type` (`event_type`),
  ADD KEY `idx_created_at` (`created_at`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_ref_id` (`ref_id`),
  ADD KEY `idx_emirate_expires` (`emirate`,`expires_at`),
  ADD KEY `idx_area` (`area`),
  ADD KEY `idx_expires` (`expires_at`),
  ADD KEY `idx_agent_id` (`agent_id`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_created` (`created_at`),
  ADD KEY `idx_active` (`is_active`),
  ADD KEY `idx_emirate` (`emirate`),
  ADD KEY `idx_type` (`type`),
  ADD KEY `idx_period` (`rent_period`),
  ADD KEY `idx_lat_lng` (`lat`,`lng`),
  ADD KEY `idx_agent` (`agent_id`),
  ADD KEY `idx_prop_map_filter` (`emirate`,`area`,`expires_at`,`hidden`,`created_at`),
  ADD KEY `idx_prop_agent_expires` (`agent_id`,`expires_at`),
  ADD KEY `idx_prop_expires` (`expires_at`),
  ADD KEY `idx_prop_status` (`status`);

--
-- Indexes for table `property_images`
--
ALTER TABLE `property_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_prop_images_prop_sort` (`property_id`,`sort_order`),
  ADD KEY `idx_prop_images_url` (`url`(191));

--
-- Indexes for table `property_stats`
--
ALTER TABLE `property_stats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_item` (`item_id`,`item_type`),
  ADD KEY `idx_event` (`event`),
  ADD KEY `idx_date` (`created_at`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_item` (`item_id`,`item_type`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_created` (`created_at`);

--
-- Indexes for table `site_events`
--
ALTER TABLE `site_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_session` (`session_id`),
  ADD KEY `idx_type` (`event_type`),
  ADD KEY `idx_area` (`area`),
  ADD KEY `idx_created` (`created_at`),
  ADD KEY `idx_date` (`created_at`);

--
-- Indexes for table `site_visitors`
--
ALTER TABLE `site_visitors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_session` (`session_id`),
  ADD KEY `idx_first` (`first_seen`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_entity` (`entity_type`,`entity_id`),
  ADD KEY `idx_agent` (`uploaded_by_agent`),
  ADD KEY `idx_created` (`created_at`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `idx_users_google_id` (`google_id`),
  ADD KEY `agent_id` (`agent_id`);

--
-- Indexes for table `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_uid` (`uid`),
  ADD KEY `idx_emirate` (`emirate`),
  ADD KEY `idx_gender` (`gender`),
  ADD KEY `idx_age_group` (`age_group`),
  ADD KEY `idx_nationality` (`nationality`),
  ADD KEY `idx_created_at` (`created_at`),
  ADD KEY `idx_device` (`device_type`);

--
-- Indexes for table `video_folders`
--
ALTER TABLE `video_folders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `viewer_counts`
--
ALTER TABLE `viewer_counts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `idx_last` (`last_ping`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_agent` (`agent_id`),
  ADD KEY `idx_agent` (`agent_id`);

--
-- Indexes for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_agent_date` (`agent_id`,`created_at`);

--
-- Indexes for table `withdrawal_requests`
--
ALTER TABLE `withdrawal_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_agent` (`agent_id`),
  ADD KEY `idx_status` (`status`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_credentials`
--
ALTER TABLE `admin_credentials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_login_log`
--
ALTER TABLE `admin_login_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `admin_popup_queue`
--
ALTER TABLE `admin_popup_queue`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `admin_sessions`
--
ALTER TABLE `admin_sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=281;

--
-- AUTO_INCREMENT for table `ad_events`
--
ALTER TABLE `ad_events`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=420;

--
-- AUTO_INCREMENT for table `ad_networks`
--
ALTER TABLE `ad_networks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ad_session_history`
--
ALTER TABLE `ad_session_history`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `ad_videos`
--
ALTER TABLE `ad_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `agents`
--
ALTER TABLE `agents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `agent_images`
--
ALTER TABLE `agent_images`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `agent_referrals`
--
ALTER TABLE `agent_referrals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `agent_subscriptions`
--
ALTER TABLE `agent_subscriptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `areas`
--
ALTER TABLE `areas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT for table `profile_events`
--
ALTER TABLE `profile_events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `property_images`
--
ALTER TABLE `property_images`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `property_stats`
--
ALTER TABLE `property_stats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `site_events`
--
ALTER TABLE `site_events`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=487;

--
-- AUTO_INCREMENT for table `site_visitors`
--
ALTER TABLE `site_visitors`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user_profiles`
--
ALTER TABLE `user_profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `video_folders`
--
ALTER TABLE `video_folders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `viewer_counts`
--
ALTER TABLE `viewer_counts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `withdrawal_requests`
--
ALTER TABLE `withdrawal_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `agents`
--
ALTER TABLE `agents`
  ADD CONSTRAINT `fk_agent_referred_by` FOREIGN KEY (`referred_by`) REFERENCES `agents` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `agent_wallets`
--
ALTER TABLE `agent_wallets`
  ADD CONSTRAINT `agent_wallets_ibfk_1` FOREIGN KEY (`agent_id`) REFERENCES `agents` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `profile_events`
--
ALTER TABLE `profile_events`
  ADD CONSTRAINT `fk_pe_uid` FOREIGN KEY (`uid`) REFERENCES `user_profiles` (`uid`) ON DELETE CASCADE;

--
-- Constraints for table `properties`
--
ALTER TABLE `properties`
  ADD CONSTRAINT `properties_ibfk_1` FOREIGN KEY (`agent_id`) REFERENCES `agents` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`agent_id`) REFERENCES `agents` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
