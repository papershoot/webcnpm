-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 03, 2022 lúc 11:01 PM
-- Phiên bản máy phục vụ: 10.4.25-MariaDB
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dbshop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(12, 'Đồng Hồ Treo Tường', 0, 'dong-ho-treo-tuong', '2022-01-19 19:20:55', '2022-01-19 19:20:55', NULL),
(13, 'Đồng Hồ Để Bàn', 0, 'dong-ho-de-ban', '2022-01-19 19:21:21', '2022-01-19 19:21:21', NULL),
(14, 'Đồng Hồ Nữ', 0, 'dong-ho-nu', '2022-10-11 08:20:03', '2022-10-11 08:20:03', NULL),
(15, 'Đồng Hồ Nam', 0, 'dong-ho-nam', '2022-10-11 08:27:15', '2022-10-11 08:27:15', NULL),
(16, 'Đồng Hồ Nam dây da', 15, 'dong-ho-nam-day-da', '2022-10-11 08:31:05', '2022-10-11 08:31:05', NULL),
(17, 'Nữ dây da', 14, 'nu-day-da', '2022-10-11 08:32:23', '2022-10-11 08:32:23', NULL),
(18, 'Đồng hồ thông minh', 0, 'dong-ho-thong-minh', '2022-10-11 09:24:41', '2022-10-11 09:24:41', NULL),
(19, 'Đồng hồ điện tử', 0, 'dong-ho-dien-tu', '2022-10-11 09:25:09', '2022-10-11 09:25:09', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `name`, `parent_id`, `slug`, `created_at`, `updated_at`) VALUES
(5, 'Đồng Hồ Nam', 0, 'dong-ho-nam', '2022-01-19 19:13:47', '2022-10-12 00:10:31'),
(6, 'Đồng Hồ Nữ', 0, 'dong-ho-nu', '2022-01-19 19:13:54', '2022-01-19 19:13:54'),
(7, 'Đồng Hồ Nam Dây Da', 5, 'dong-ho-nam-day-da', '2022-01-19 19:14:04', '2022-01-19 19:14:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_01_12_121338_create_categories_table', 1),
(6, '2022_01_12_170353_create_roles_table', 2),
(7, '2022_01_12_170637_create_permisstions_table', 2),
(8, '2022_01_12_172424_create_table_user_role', 2),
(9, '2022_01_12_172627_create_table_permisstion_role', 2),
(10, '2022_01_13_031351_add_column_parent_id_permisstions', 3),
(11, '2022_01_13_033606_add_column_key_permisstion_table', 4),
(12, '2022_01_17_041451_add_column_deleted_at_categories', 5),
(13, '2022_01_18_024618_create_products_table', 6),
(14, '2022_01_18_024922_create_product_images_table', 6),
(15, '2022_01_18_025109_create_tags_table', 6),
(16, '2022_01_18_025151_create_product_tags_table', 6),
(17, '2022_01_18_042153_add_column_feature_image_name', 7),
(18, '2022_01_18_050359_add_column_image_name', 8),
(19, '2022_01_18_141227_create_menus_table', 9),
(20, '2022_01_19_022641_add_column_deleted_at_products', 10),
(21, '2022_01_19_025606_create_sliders_table', 11),
(22, '2022_01_20_034447_add_column_count_pass_products', 12),
(23, '2022_01_20_092645_create_settings_table', 13);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permission_role`
--

CREATE TABLE `permission_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL,
  `permisstion_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `permission_role`
--

INSERT INTO `permission_role` (`id`, `role_id`, `permisstion_id`, `created_at`, `updated_at`) VALUES
(1, 6, 2, NULL, NULL),
(20, 1, 24, NULL, NULL),
(21, 1, 25, NULL, NULL),
(22, 1, 26, NULL, NULL),
(23, 1, 27, NULL, NULL),
(40, 1, 20, NULL, NULL),
(51, 1, 40, NULL, NULL),
(54, 1, 44, NULL, NULL),
(55, 1, 45, NULL, NULL),
(58, 1, 49, NULL, NULL),
(62, 1, 16, NULL, NULL),
(63, 1, 17, NULL, NULL),
(64, 1, 21, NULL, NULL),
(65, 1, 22, NULL, NULL),
(68, 1, 41, NULL, NULL),
(69, 1, 42, NULL, NULL),
(70, 1, 46, NULL, NULL),
(71, 1, 47, NULL, NULL),
(72, 1, 51, NULL, NULL),
(73, 1, 52, NULL, NULL),
(74, 2, 39, NULL, NULL),
(75, 2, 44, NULL, NULL),
(77, 3, 34, NULL, NULL),
(79, 1, 39, NULL, NULL),
(80, 1, 34, NULL, NULL),
(83, 2, 49, NULL, NULL),
(84, 1, 15, NULL, NULL),
(87, 1, 35, NULL, NULL),
(88, 1, 50, NULL, NULL),
(89, 1, 36, NULL, NULL),
(90, 1, 37, NULL, NULL),
(91, 7, 14, NULL, NULL),
(92, 7, 15, NULL, NULL),
(93, 7, 16, NULL, NULL),
(94, 7, 17, NULL, NULL),
(95, 7, 19, NULL, NULL),
(96, 7, 20, NULL, NULL),
(97, 7, 21, NULL, NULL),
(98, 7, 22, NULL, NULL),
(99, 7, 24, NULL, NULL),
(100, 7, 25, NULL, NULL),
(101, 7, 26, NULL, NULL),
(102, 7, 27, NULL, NULL),
(103, 7, 34, NULL, NULL),
(104, 7, 35, NULL, NULL),
(105, 7, 36, NULL, NULL),
(106, 7, 37, NULL, NULL),
(107, 7, 39, NULL, NULL),
(108, 7, 40, NULL, NULL),
(109, 7, 41, NULL, NULL),
(110, 7, 42, NULL, NULL),
(111, 7, 44, NULL, NULL),
(112, 7, 45, NULL, NULL),
(113, 7, 46, NULL, NULL),
(114, 7, 47, NULL, NULL),
(115, 7, 49, NULL, NULL),
(116, 7, 50, NULL, NULL),
(117, 7, 51, NULL, NULL),
(118, 7, 52, NULL, NULL),
(119, 7, 54, NULL, NULL),
(120, 7, 55, NULL, NULL),
(121, 7, 56, NULL, NULL),
(122, 7, 57, NULL, NULL),
(123, 1, 14, NULL, NULL),
(124, 1, 19, NULL, NULL),
(125, 1, 54, NULL, NULL),
(126, 1, 55, NULL, NULL),
(127, 1, 56, NULL, NULL),
(128, 1, 57, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permisstions`
--

CREATE TABLE `permisstions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `key_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `permisstions`
--

INSERT INTO `permisstions` (`id`, `name`, `display_name`, `created_at`, `updated_at`, `parent_id`, `key_code`) VALUES
(13, 'category', 'category', '2022-01-16 19:20:51', '2022-01-16 19:20:51', 0, NULL),
(14, 'list', 'list', '2022-01-16 19:20:51', '2022-01-16 19:20:51', 13, 'category_list'),
(15, 'add', 'add', '2022-01-16 19:20:51', '2022-01-16 19:20:51', 13, 'category_add'),
(16, 'edit', 'edit', '2022-01-16 19:20:51', '2022-01-16 19:20:51', 13, 'category_edit'),
(17, 'delete', 'delete', '2022-01-16 19:20:51', '2022-01-16 19:20:51', 13, 'category_delete'),
(18, 'user', 'user', '2022-01-16 19:21:45', '2022-01-16 19:21:45', 0, NULL),
(19, 'list', 'list', '2022-01-16 19:21:45', '2022-01-16 19:21:45', 18, 'user_list'),
(20, 'add', 'add', '2022-01-16 19:21:45', '2022-01-16 19:21:45', 18, 'user_add'),
(21, 'edit', 'edit', '2022-01-16 19:21:45', '2022-01-16 19:21:45', 18, 'user_edit'),
(22, 'delete', 'delete', '2022-01-16 19:21:45', '2022-01-16 19:21:45', 18, 'user_delete'),
(23, 'role', 'role', '2022-01-16 19:21:53', '2022-01-16 19:21:53', 0, NULL),
(24, 'list', 'list', '2022-01-16 19:21:53', '2022-01-16 19:21:53', 23, 'role_list'),
(25, 'add', 'add', '2022-01-16 19:21:53', '2022-01-16 19:21:53', 23, 'role_add'),
(26, 'edit', 'edit', '2022-01-16 19:21:53', '2022-01-16 19:21:53', 23, 'role_edit'),
(27, 'delete', 'delete', '2022-01-16 19:21:53', '2022-01-16 19:21:53', 23, 'role_delete'),
(33, 'product', 'product', '2022-01-18 03:28:05', '2022-01-18 03:28:05', 0, NULL),
(34, 'list', 'list', '2022-01-18 03:28:05', '2022-01-18 03:28:05', 33, 'product_list'),
(35, 'add', 'add', '2022-01-18 03:28:05', '2022-01-18 03:28:05', 33, 'product_add'),
(36, 'edit', 'edit', '2022-01-18 03:28:05', '2022-01-18 03:28:05', 33, 'product_edit'),
(37, 'delete', 'delete', '2022-01-18 03:28:05', '2022-01-18 03:28:05', 33, 'product_delete'),
(38, 'slider', 'slider', '2022-01-19 06:45:38', '2022-01-19 06:45:38', 0, NULL),
(39, 'list', 'list', '2022-01-19 06:45:38', '2022-01-19 06:45:38', 38, 'slider_list'),
(40, 'add', 'add', '2022-01-19 06:45:38', '2022-01-19 06:45:38', 38, 'slider_add'),
(41, 'edit', 'edit', '2022-01-19 06:45:38', '2022-01-19 06:45:38', 38, 'slider_edit'),
(42, 'delete', 'delete', '2022-01-19 06:45:38', '2022-01-19 06:45:38', 38, 'slider_delete'),
(43, 'setting', 'setting', '2022-01-21 00:49:05', '2022-01-21 00:49:05', 0, NULL),
(44, 'list', 'list', '2022-01-21 00:49:05', '2022-01-21 00:49:05', 43, 'setting_list'),
(45, 'add', 'add', '2022-01-21 00:49:05', '2022-01-21 00:49:05', 43, 'setting_add'),
(46, 'edit', 'edit', '2022-01-21 00:49:05', '2022-01-21 00:49:05', 43, 'setting_edit'),
(47, 'delete', 'delete', '2022-01-21 00:49:05', '2022-01-21 00:49:05', 43, 'setting_delete'),
(48, 'menu', 'menu', '2022-01-21 00:49:59', '2022-01-21 00:49:59', 0, NULL),
(49, 'list', 'list', '2022-01-21 00:49:59', '2022-01-21 00:49:59', 48, 'menu_list'),
(50, 'add', 'add', '2022-01-21 00:49:59', '2022-01-21 00:49:59', 48, 'menu_add'),
(51, 'edit', 'edit', '2022-01-21 00:49:59', '2022-01-21 00:49:59', 48, 'menu_edit'),
(52, 'delete', 'delete', '2022-01-21 00:49:59', '2022-01-21 00:49:59', 48, 'menu_delete'),
(53, 'category', 'category', '2022-10-14 08:46:23', '2022-10-14 08:46:23', 0, NULL),
(54, 'list', 'list', '2022-10-14 08:46:23', '2022-10-14 08:46:23', 53, 'category_list'),
(55, 'add', 'add', '2022-10-14 08:46:23', '2022-10-14 08:46:23', 53, 'category_add'),
(56, 'edit', 'edit', '2022-10-14 08:46:24', '2022-10-14 08:46:24', 53, 'category_edit'),
(57, 'delete', 'delete', '2022-10-14 08:46:24', '2022-10-14 08:46:24', 53, 'category_delete');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `feature_image_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `feature_image_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `count_pass` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `feature_image_path`, `content`, `user_id`, `category_id`, `created_at`, `updated_at`, `feature_image_name`, `deleted_at`, `count_pass`) VALUES
(1, 'Đồng Hồ Tab', 2000000, '/storage/product/1/npCfnwc3Ppku5ZmUKxC9.download (2).jpg', '<p>Qu&yacute; Ph&aacute;i</p>', 1, 13, '2022-01-19 19:23:11', '2022-10-11 08:27:59', 'download (2).jpg', NULL, 5),
(2, 'Đồng Hồ Led', 1500000, '/storage/product/1/m5flcQNt3YV4uT3Z5nq1.download (4).jpg', '<p>Qu&yacute; Ph&aacute;i</p>', 1, 13, '2022-01-19 19:23:11', '2022-10-11 09:04:38', 'download (4).jpg', '2022-10-11 09:04:38', 3),
(3, 'Đồng Hồ Bed', 1800000, '/storage/product/1/5iKWBksHMVB99q27NSEG.images (3).jpg', '<p>Qu&yacute; Ph&aacute;i</p>', 1, 13, '2022-01-19 19:23:11', '2022-10-11 08:37:16', 'images (3).jpg', NULL, 8),
(4, 'Đồng Hồ Smart', 10000000, '/storage/product/1/FhMuIxPMtpcf1EuL6Ey8.download.jpg', '<p>Qu&yacute; Ph&aacute;i</p>', 1, 18, '2022-01-19 19:23:11', '2022-10-14 02:19:41', 'download.jpg', NULL, 2),
(5, 'Đồng Hồ Hoot', 2000000, '/storage/product/1/R1gdzp7BqROcb3a9dBMP.download (1).jpg', '<p>Qu&yacute; Ph&aacute;i</p>', 1, 15, '2022-01-19 19:23:11', '2022-10-11 08:52:11', 'download (1).jpg', NULL, 0),
(6, 'Đồng Hồ Nam', 10000000, '/storage/product/1/S8n7WbYfLXkvLH3ZxGkh.EF-558D-2AV-0000.jpg', '<p>Qu&yacute; Ph&aacute;i</p>', 1, 18, '2022-01-19 19:23:11', '2022-10-14 02:20:04', 'EF-558D-2AV-0000.jpg', NULL, 7),
(7, 'Đồng Hồ Để Bàn Reef', 1900000, '/storage/product/1/EQtNLYUJ4DVAbrxXA8mx.images (4).jpg', '<p>tiện lợi</p>', 1, 13, '2022-01-20 01:25:38', '2022-10-11 08:58:13', 'images (4).jpg', '2022-10-11 08:58:13', NULL),
(8, 'Đồng Hồ Để Bàn Soul', 20000000, '/storage/product/1/1rSKvKjnvEHOxLNFjOtT.images (7).jpg', '<p>tiện lợi</p>', 1, 13, '2022-01-20 01:25:38', '2022-10-11 08:55:50', 'images (7).jpg', NULL, NULL),
(9, 'Đồng Hồ Để Bàn suku', 3100000, '/storage/product/1/kaUk0wyWRg7vpWJEhREO.images (6).jpg', '<p>tiện lợi</p>', 1, 13, '2022-01-20 01:25:38', '2022-10-11 08:56:28', 'images (6).jpg', NULL, NULL),
(10, 'Đồng Hồ Để Bàn', 20000000, '/storage/product/1/jZISgdqAMXiayCEIynst.để bàn.jfif', '<p>tiện lợi</p>', 1, 13, '2022-01-20 01:25:38', '2022-10-11 08:58:08', 'để bàn.jfif', '2022-10-11 08:58:08', NULL),
(11, 'Đồng Hồ Để Bàn', 20000000, '/storage/product/1/jZISgdqAMXiayCEIynst.để bàn.jfif', '<p>tiện lợi</p>', 1, 13, '2022-01-20 01:25:38', '2022-10-11 08:55:24', 'để bàn.jfif', '2022-10-11 08:55:24', NULL),
(12, 'Đồng Hồ Để Bàn', 20000000, '/storage/product/1/jZISgdqAMXiayCEIynst.để bàn.jfif', '<p>tiện lợi</p>', 1, 13, '2022-01-20 01:25:38', '2022-10-11 08:55:27', 'để bàn.jfif', '2022-10-11 08:55:27', NULL),
(13, 'Đồng Hồ Nữ', 10000000, '/storage/product/1/RrF9F7ZRxGoZc4PDTkAz.a0.jpg', '<p>dh dep</p>', 1, 14, '2022-10-11 08:21:35', '2022-10-11 08:55:21', 'a0.jpg', '2022-10-11 08:55:21', NULL),
(14, 'Đồng hồ treo tường Pháp', 4250000, '/storage/product/1/ZsF3UsqJ2XSKCpCUXMez.download (5).jpg', '<p>chắc chắn</p>', 1, 12, '2022-10-11 08:57:03', '2022-10-11 08:57:03', 'download (5).jpg', NULL, NULL),
(15, 'Đồng hồ treo tường Ý', 3720000, '/storage/product/1/GNuBKVnUySTf1VdoyEjg.download (6).jpg', '<p>chắc chắn</p>', 1, 12, '2022-10-11 08:57:27', '2022-10-11 08:57:27', 'download (6).jpg', NULL, NULL),
(16, 'Đồng hồ treo tường Anh', 2780000, '/storage/product/1/HztpDQAWvwjlnlLk4uBE.images (11).jpg', '<p>chắc chắn</p>\r\n<p>&nbsp;</p>', 1, 12, '2022-10-11 08:58:50', '2022-10-11 08:58:50', 'images (11).jpg', NULL, NULL),
(17, 'Đồng hồ treo tường Mỹ', 4630000, '/storage/product/1/6QmazaWtiS4BMx4TUooD.images (10).jpg', '<p>chắc chắn</p>', 1, 12, '2022-10-11 08:59:16', '2022-10-11 08:59:16', 'images (10).jpg', NULL, NULL),
(18, 'Đồng hồ nữ Hàn', 7340000, '/storage/product/1/LlajnJuu3278A1qelp6c.images.jpg', '<p>xịn</p>', 1, 14, '2022-10-11 09:05:07', '2022-10-11 09:05:07', 'images.jpg', NULL, NULL),
(19, 'Đồng hồ nữ italy', 3320000, '/storage/product/1/mllmdS6bheUjfphJ4djI.images (2).jpg', '<p>xịn</p>', 1, 14, '2022-10-11 09:05:41', '2022-10-11 09:05:41', 'images (2).jpg', NULL, NULL),
(20, 'Đồng hồ nữ Đức', 1900000, '/storage/product/1/WpEYITUFmxPCb7B5sGWH.images (1).jpg', '<p>xịn</p>\r\n<p>&nbsp;</p>', 1, 14, '2022-10-11 09:06:03', '2022-10-11 09:06:03', 'images (1).jpg', NULL, NULL),
(21, 'Đồng hồ nữ Pháp', 1150000, '/storage/product/1/ol1GfcvAVYmEREi6Mrba.download.jpg', '<p>xịn</p>\r\n<p>&nbsp;</p>', 1, 14, '2022-10-11 09:07:47', '2022-10-11 09:07:47', 'download.jpg', NULL, NULL),
(22, 'Đồng hồ nam Pháp', 3100000, '/storage/product/1/ShNR8iXdSz0ceBhDzLyE.images (13).jpg', '<p>xịn</p>', 1, 15, '2022-10-11 09:09:21', '2022-10-11 09:09:21', 'images (13).jpg', NULL, NULL),
(23, 'Đồng hồ nam Nhật Bản', 1500000, '/storage/product/1/JFSj3fwtnWKoKIxcqLY5.images (12).jpg', '<p>xịn</p>\r\n<p>&nbsp;</p>', 1, 15, '2022-10-11 09:09:57', '2022-10-11 09:09:57', 'images (12).jpg', NULL, NULL),
(24, 'Đồng Hồ Nama', 10000000, '/storage/product/1/Djp9PYEIAXg44OPaG3lR.images (13).jpg', 'xịn', 1, 15, '2022-10-11 21:34:20', '2022-10-11 21:34:20', 'images (13).jpg', NULL, NULL),
(25, 'Đồng hồ nữ Hàn1', 1500000, '/storage/product/1/jPYo2fW7CcPh3f7fwINU.download.jpg', '<p>xịn</p>\r\n<p>&nbsp;</p>', 1, 14, '2022-10-12 20:16:32', '2022-10-14 02:20:48', 'download.jpg', '2022-10-14 02:20:48', NULL),
(26, 'Đồng Hồ Nam23', 10000000, '/storage/product/5/Nh8QA5KQmJFxi4LpoOvQ.download (1).jpg', 'xịn', 5, 15, '2022-10-13 06:22:41', '2022-10-13 06:53:47', 'download (1).jpg', '2022-10-13 06:53:47', NULL),
(27, 'Đồng Hồ Nam1', 10000000, '/storage/product/1/lHcXNkjMSnrH5PfFnGBz.download (1).jpg', '<p>hhaa</p>', 1, 15, '2022-10-13 23:55:59', '2022-10-14 02:18:31', 'download (1).jpg', '2022-10-14 02:18:31', NULL),
(28, 'Đồng hồ treo tường Pháp1', 1500000, '/storage/product/1/2nUozq9Ibl0jngLGAKsY.download (1).jpg', '<p>hai</p>', 1, 13, '2022-10-14 00:54:25', '2022-10-14 00:54:41', 'download (1).jpg', '2022-10-14 00:54:41', NULL),
(29, 'Đồng hồ treo tường Pháp2', 1500000, '/storage/product/1/GCUu7KNArzCt4bub4PlY.download (2).jpg', '<p>aaa</p>', 1, 13, '2022-10-14 02:16:10', '2022-10-14 02:17:08', 'download (2).jpg', '2022-10-14 02:17:08', NULL),
(30, 'Đồng hồ treo tường Pháp3', 1900000, '/storage/product/1/AOtYawNNuzOpFZzGmL6m.download.jpg', '<p>anh</p>\r\n<p>&nbsp;</p>', 1, 15, '2022-10-14 02:16:51', '2022-10-14 02:17:04', 'download.jpg', '2022-10-14 02:17:04', NULL),
(31, 'Đồng Hồ Nữ23', 10000000, '/storage/product/1/PMdYCEqLlBNLsySTKEh6.images (1).jpg', '<p>đẹp</p>', 1, 16, '2022-10-17 06:28:12', '2022-10-17 06:45:08', 'images (1).jpg', '2022-10-17 06:45:08', NULL),
(32, 'Đồng Hồ Nam1000', 10000000, '/storage/product/1/rnBseWjhTOoD9vvpaU2i.download (1).jpg', '<p>aaa</p>', 1, 13, '2022-10-17 06:44:25', '2022-10-17 06:45:01', 'download (1).jpg', '2022-10-17 06:45:01', NULL),
(33, 'Đồng Hồ Nam100', 10000000, '/storage/product/1/Df35AAeGo1kSO3xaHXn7.download (1).jpg', '<p>xịn</p>', 1, 15, '2022-10-17 06:45:41', '2022-10-17 06:45:58', 'download (1).jpg', '2022-10-17 06:45:58', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `product_images`
--

INSERT INTO `product_images` (`id`, `image_path`, `product_id`, `created_at`, `updated_at`, `image_name`) VALUES
(4, '/storage/product/1/f32nw34lCJEkKdJXD94P.download (4).jpg', 1, '2022-10-11 08:27:59', '2022-10-11 08:27:59', 'download (4).jpg'),
(5, '/storage/product/1/LVkJ39mWXTctoU9s7Keq.images (4).jpg', 1, '2022-10-11 08:27:59', '2022-10-11 08:27:59', 'images (4).jpg'),
(6, '/storage/product/1/ARGRstWGGuB059NK1SyM.images (1).jpg', 27, '2022-10-13 23:55:59', '2022-10-13 23:55:59', 'images (1).jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_tags`
--

CREATE TABLE `product_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `product_tags`
--

INSERT INTO `product_tags` (`id`, `product_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 7, 4, '2022-01-20 01:25:38', '2022-01-20 01:25:38'),
(2, 13, 5, '2022-10-11 08:21:35', '2022-10-11 08:21:35'),
(3, 25, 6, '2022-10-12 20:16:32', '2022-10-12 20:16:32'),
(4, 28, 7, '2022-10-14 00:54:25', '2022-10-14 00:54:25'),
(5, 28, 8, '2022-10-14 00:54:25', '2022-10-14 00:54:25'),
(6, 28, 9, '2022-10-14 00:54:25', '2022-10-14 00:54:25'),
(7, 27, 10, '2022-10-14 02:14:02', '2022-10-14 02:14:02'),
(8, 29, 11, '2022-10-14 02:16:10', '2022-10-14 02:16:10'),
(9, 30, 12, '2022-10-14 02:16:51', '2022-10-14 02:16:51'),
(10, 30, 13, '2022-10-14 02:16:51', '2022-10-14 02:16:51'),
(11, 30, 14, '2022-10-14 02:16:51', '2022-10-14 02:16:51'),
(12, 30, 15, '2022-10-14 02:16:51', '2022-10-14 02:16:51'),
(13, 30, 16, '2022-10-14 02:16:51', '2022-10-14 02:16:51'),
(14, 31, 6, '2022-10-17 06:30:18', '2022-10-17 06:30:18'),
(15, 33, 12, '2022-10-17 06:45:41', '2022-10-17 06:45:41'),
(16, 33, 14, '2022-10-17 06:45:41', '2022-10-17 06:45:41'),
(17, 33, 17, '2022-10-17 06:45:41', '2022-10-17 06:45:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Quản trị hệ thống', NULL, NULL),
(2, 'Guest', 'Khách hàng', NULL, NULL),
(3, 'Developer', 'Phát triển hệ thống', NULL, NULL),
(4, 'content', 'chỉnh sửa nội dung', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `config_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `config_key`, `config_value`, `created_at`, `updated_at`) VALUES
(1, 'phone_contact', '0979164200', '2022-01-20 21:06:47', '2022-01-20 21:25:57'),
(2, 'email', 'nguyentrungtai02042001@gmail.com', '2022-01-20 22:01:05', '2022-01-20 22:01:05'),
(3, 'facebook_link', 'https://www.facebook.com/anhtaibavi02042001/', '2022-01-20 22:01:43', '2022-01-20 22:01:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `sliders`
--

INSERT INTO `sliders` (`id`, `name`, `description`, `image_path`, `image_name`, `created_at`, `updated_at`) VALUES
(6, 'Đồng Hồ Thụy Sĩ  Pagini PA5566', 'Đồng Hồ Nam Pagini PA5566 Dây Thép Không Gỉ - Mặt Kính Shapphire Cao Cấp', '/storage/slider/1/v04MnsHKwYgm3TseDjOC.EF-558D-2AV-0000.jpg', 'EF-558D-2AV-0000.jpg', '2022-01-19 19:05:20', '2022-01-20 02:21:29'),
(7, 'Đồng hồ Ogival OG1929-24AGS-GL-X', 'Tự động (Automatic) - Size 40mm - Kính Sapphire, Lộ đáy, Lịch ngày - Swiss made', '/storage/slider//bFF9QZee582MJ4mbS5KE.8689f1e2d2661609bab1a79af4ea3063.jfif', '8689f1e2d2661609bab1a79af4ea3063.jfif', '2022-01-19 19:07:24', '2022-01-19 19:07:24'),
(8, 'Đồng Hồ Nam Pagini PA5566', 'Đồng Hồ Nam Pagini PA5566 Dây Thép Không Gỉ - Mặt Kính Shapphire Cao Cấp', '/storage/slider/1/Vn41YmMR9U5WdoIXWPPR.download (1).jpg', 'download (1).jpg', '2022-01-19 19:11:52', '2022-10-11 09:10:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(4, 'để bàn', '2022-01-20 01:25:38', '2022-01-20 01:25:38'),
(5, 'h', '2022-10-11 08:21:35', '2022-10-11 08:21:35'),
(6, 'anh', '2022-10-12 20:16:32', '2022-10-12 20:16:32'),
(7, 'a nabd \'', '2022-10-14 00:54:25', '2022-10-14 00:54:25'),
(8, 'msjdj\'', '2022-10-14 00:54:25', '2022-10-14 00:54:25'),
(9, 'msnsd', '2022-10-14 00:54:25', '2022-10-14 00:54:25'),
(10, 'đẹp', '2022-10-14 02:14:02', '2022-10-14 02:14:02'),
(11, 'an', '2022-10-14 02:16:10', '2022-10-14 02:16:10'),
(12, 'a', '2022-10-14 02:16:51', '2022-10-14 02:16:51'),
(13, 'v', '2022-10-14 02:16:51', '2022-10-14 02:16:51'),
(14, 'b', '2022-10-14 02:16:51', '2022-10-14 02:16:51'),
(15, 'f', '2022-10-14 02:16:51', '2022-10-14 02:16:51'),
(16, 'd', '2022-10-14 02:16:51', '2022-10-14 02:16:51'),
(17, 'c', '2022-10-17 06:45:41', '2022-10-17 06:45:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Trung Tài', 'tai@gmail.com', NULL, '$2y$10$eagPbqdqCMVxMv2YkXVaju7jXk4yPQqdRCLxHmpDEG5.vLaPlgZKu', 'fW4Qsjo4s9zG4KYVQB2hhl2AJTHzLtrAdaUwGZysEpqtJARbId0rzLgytmmN', NULL, NULL),
(5, 'tai3', 'tai1@gmail.com', NULL, '$2y$10$OFyqBQBjuWdjvOCpd4AhWuqQfVNRYPC9QehUbGzvhnidbLUQ2ABXS', NULL, '2022-01-13 01:10:44', '2022-01-13 01:10:44'),
(9, 'khanhxinggai', 'khanhxinggai@gmail.com', NULL, '$2y$10$1S8R6M3qHyh2083HokZlM.CIe.b9jHw9lVWRE5GxxdvSMmkJGqgDe', NULL, '2022-11-02 13:59:18', '2022-11-02 13:59:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_role`
--

CREATE TABLE `user_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `user_role`
--

INSERT INTO `user_role` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 3, 1, NULL, NULL),
(2, 3, 2, NULL, NULL),
(3, 1, 1, NULL, NULL),
(9, 5, 1, NULL, NULL),
(10, 9, 2, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`) USING BTREE;

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`) USING BTREE;

--
-- Chỉ mục cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `permisstions`
--
ALTER TABLE `permisstions`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`) USING BTREE,
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`) USING BTREE;

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `product_tags`
--
ALTER TABLE `product_tags`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `users_email_unique` (`email`) USING BTREE;

--
-- Chỉ mục cho bảng `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT cho bảng `permisstions`
--
ALTER TABLE `permisstions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `product_tags`
--
ALTER TABLE `product_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
