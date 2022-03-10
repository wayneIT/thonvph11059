-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 08, 2021 lúc 05:46 AM
-- Phiên bản máy phục vụ: 10.4.13-MariaDB
-- Phiên bản PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `assignment_laravel`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `show_menu` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`, `show_menu`, `created_at`, `updated_at`) VALUES
(1, 'SUPERCAR', 1, 1, '2021-08-05 09:31:59', '2021-08-05 11:19:44'),
(2, 'BIKE', 1, 1, '2021-08-05 09:36:17', '2021-08-05 11:19:51'),
(3, 'MOTORCYLE', 1, 1, '2021-08-05 09:37:25', '2021-08-05 11:20:09'),
(4, 'Test', 1, 1, '2021-08-05 09:40:02', '2021-08-05 15:57:04'),
(5, 'Gerda Rodriguez', 1, 0, '2021-08-05 09:40:02', '2021-08-05 09:40:18'),
(6, 'Prof. Hallie Fahey', 0, 0, '2021-08-05 09:40:02', '2021-08-05 09:40:02'),
(7, 'Dr. Violette Graham', 1, 1, '2021-08-05 09:40:02', '2021-08-05 09:40:02'),
(8, 'Prof. Colin Bergnaum V', 1, 1, '2021-08-05 09:40:02', '2021-08-05 09:40:02'),
(9, 'test2', 1, 0, '2021-08-06 03:17:42', '2021-08-06 03:17:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `companies`
--

INSERT INTO `companies` (`id`, `name`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'LAMBOGHINI', 'uploads/companies/610bbdae3e963-logo_lambo.png', '2021-08-05 10:08:45', '2021-08-05 10:32:50'),
(2, 'BMW', 'uploads/companies/610bbe1095e62-logo_bmv.png', '2021-08-05 10:31:44', '2021-08-05 10:31:44'),
(3, 'MERCEDES', 'uploads/companies/610bbe4701f66-logo_mercedes.png', '2021-08-05 10:32:39', '2021-08-05 10:32:39'),
(4, 'FERRARI', 'uploads/companies/610bbe7e99a5e-logo_fe.png', '2021-08-05 10:33:34', '2021-08-05 10:33:34'),
(6, 'POLYGON', 'uploads/companies/610c0a6a676a7-dcakc88-3221f2a7-ab41-4230-9fee-6753bb4d5bc6.png', '2021-08-05 15:57:30', '2021-08-05 15:57:30'),
(7, 'test', 'uploads/companies/610cab05646db-dragon-ball-z-buu-min.jpg', '2021-08-06 03:22:45', '2021-08-06 03:22:45');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_08_01_144441_create_table_categories', 1),
(5, '2021_08_01_144507_create_table_products', 1),
(6, '2021_08_01_145131_create_table_product_galleries', 1),
(7, '2021_08_02_113725_create_permission_tables', 1),
(8, '2021_08_05_161714_create_table_companies', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'add product', 'web', '2021-08-08 01:58:15', '2021-08-08 01:58:15'),
(2, 'remove product', 'web', '2021-08-08 01:58:15', '2021-08-08 01:58:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cate_id` int(11) NOT NULL,
  `comp_id` int(11) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `cate_id`, `comp_id`, `image`, `price`, `status`, `quantity`, `detail`, `created_at`, `updated_at`) VALUES
(1, 'Lamborghini Sian', 1, 1, 'uploads/products/610bc2b050012-lamborghini-s1.png', 123123, 1, 13, 'Đây không phải là mẫu Lamborghini đầu tiên được trang bị động cơ điện, nhưng là xe hybrid thương mại đầu tiên của hãng xe Ý. Trước đây, Lamborghini cũng từng giới thiệu 2 mẫu xe hybrid là Asterion và Terzo Millennio, nhưng cả 2 chỉ là dạng concept.\r\n\r\nLamborghini Sian cũng sử dụng động cơ V12 hút khí tự nhiên với dung tích 6,5 lít, tương tự mẫu xe Aventador SVJ. Tuy nhiên, Lamborghini Sian còn có thêm hệ thống hybrid nhẹ 48 volt, cung cấp thêm 34 mã lực. Tổng công suất của Lamborghini Sian đạt mức 819 mã lực. Nhờ những thông số này, Lamborghini Sian đã trở thành “siêu bò” mạnh nhất trong lịch sử, qua mặt Aventador SVJ (công suất tối đa 770 mã lực).', '2021-08-05 10:51:28', '2021-08-05 10:51:28'),
(2, 'Lamborghini SC20', 1, 1, 'uploads/products/610bc43ec2340-lamborghini-s2.jpg', 43534133, 1, 55, 'Siêu xe thiết kế theo thông số kỹ thuật của một khách hàng, lắp động cơ 6.5 V12 công suất 759 mã lực.\r\n\r\nTrung tâm phát triển Lamborghini Squadra Corsa giới thiệu dự án mới, siêu xe không mui SC20. Dự án làm theo đơn đặt hàng của một khách hàng giấu tên. Siêu xe không mui phát triển dựa trên Aventador SVJ và trang bị động cơ 6.5 V12 hút khí tự nhiên, công suất 759 mã lực, mô-men xoắn cực đại 720 Nm. Hộp số tự động 7 cấp kết hợp dẫn động bốn bánh.', '2021-08-05 10:58:06', '2021-08-05 10:58:06'),
(3, 'Lamborghini Egoista', 1, 1, 'uploads/products/610bc4daae2bb-Lamborghini-s3.jpg', 43534133, 1, 13, 'Walter de Silva không chỉ là nhà thiết kế nổi tiếng với nhiều mẫu xe Audi, bao gồm chiếc Audi R8 đầu tiên, mà ông còn được biết đến với 2 thiết kế Lamborghini Concept. Chiêc đầu tiên là mẫu Lamborghini Miura rất nổi tiếng, nhưng chiếc thứ 2 Egoista thực sự là một chiếc Lamborghini đặc biệt nhất mà ông từng thiết kế.\r\n\r\nChiếc xe concept này được thiết kế nhằm kỉ niệm 50 năm ngày thành lập Lamborghini, với đầy đủ các chức năng dựa trên mẫu Gallardo và sử dụng động cơ V10 5.2L công suất 600 mã lực.', '2021-08-05 11:00:42', '2021-08-05 11:00:42'),
(4, 'BMW S1000RR', 3, 2, 'uploads/products/610bc630adc8f-bmv-s6.jpg', 1231233, 1, 123, 'BMW S1000RR FIM Superbike del Campeonato del Mundo de Moto BMW Motorrad - BMW 1000 RR de la Motocicleta de la Bicicleta - Bmw, Bmw S1000rr, Fim Superbike World Championship - Imágenes gratuitas de alta calidad.\r\n\r\nAlgunos diseños contienen logotipos y elementos de marcas conocidas. Estos están destinados a ser utilizados únicamente con fines editoriales / personales / educativos, a menos que tenga la autorización adecuada de la marca en cuestión.', '2021-08-05 11:06:24', '2021-08-05 11:08:05'),
(5, 'BMW S1000RR 1:12 MSZ', 3, 2, 'uploads/products/610bc764d890b-bmv-s5.jpg', 1231232, 1, 233, 'Deutsch: Supersport Motorrad BMW S1000RR, im Studio mit einem Striplight (von oben), einem Akzenttubus (auf das Vorderrad) und einer Lightbar (Mittebereich) ausgeleuchtet.\r\nItaliano: La motocicletta BMW S 1000 RR prodotta dall\'azienda tedesca BMW Motorrad. Questa moto sportiva - un 4 cilindri in linea da 1.000 cm³ - è stata realizzata appositamente da BMW per partecipare al campionato mondiale Superbike del 2009.', '2021-08-05 11:11:32', '2021-08-05 11:11:32'),
(6, 'BMW i8 2014', 1, 2, 'uploads/products/610bc818bf8f8-bmv-s1-1.jpg', 4534133, 1, 17, 'BMW i8 2014 sử dụng hệ dẫn động hybrid gồm động cơ xăng 1.5L 3 xy-lanh, công suất 231 mã lực đặt bên dưới ghế sau và mô-tơ điện công suất 131 mã lực đặt ở cầu trước. Động cơ xăng truyền lực tới bánh sau qua hộp số tự động 6 cấp, còn mô-tơ điện làm quay bánh trước qua hộp số tự động 2 cấp.', '2021-08-05 11:14:32', '2021-08-05 11:14:32'),
(7, 'BMW M1 Shark', 1, 2, 'uploads/products/610bc8baa7b74-bmv-s3.jpg', 1231234, 1, 21312, 'Nhìn vào những hình ảnh của bản concept BMW M1 Shark, bạn có liên tưởng tới đây là thiết kế của một mẫu xe hơn dành cho bộ phim khoa học viễn tưởng mới Blade Runner. Bản concept này chính là sáng tạo mới nhất từ một nhà thiết kế tài năng người Ý Alex Imnadze. Đây cũng là tác giả thiết kế mẫu xe Porsche GT Vision 906/917.', '2021-08-05 11:17:14', '2021-08-05 11:17:14'),
(8, 'Ferrari 458 Speciale', 1, 4, 'uploads/products/610bca3c0ae54-ferrari-s1.jpg', 123123, 1, 1231, 'An ultra-light exhaust system and all the carbon-fiber upgrades imaginable bring the extra weight down to 67 pounds over the stock car, translating to 30 kilograms. The Capristo exhaust also levels up the free-breathing V8 engine by 40 horsepower and 65 pound-feet of torque, enabling a top speed of 202 miles per hour (325 kilometers per hour).', '2021-08-05 11:23:40', '2021-08-05 11:26:25'),
(9, 'Ferrari 488 GTB', 1, 4, 'uploads/products/610bcacd39d62-ferrari-s2-1.png', 123123, 1, 321321, 'hello baybe', '2021-08-05 11:26:05', '2021-08-05 11:26:05'),
(10, 'Mercedes-Benz Vision', 1, 3, 'uploads/products/610bceb1cf6c6-mercedes-s1.jpg', 12312312, 1, 3123123, 'Theo Mercedes-Benz , mẫu xe lấy cảm hứng từ bộ phim Avatar, dựa trên các điểm cốt truyện quan trọng của bộ phim – như mối liên hệ giữa con người, máy móc và thiên nhiên, cũng như giấc mơ về một xã hội nơi bộ ba sống cùng nhau trong sự cộng sinh hoàn hảo. Nhà sản xuất Đức vừa chính thức trình làng mẫu xe điện concept Vision AVTR mới tại CES 2020.', '2021-08-05 11:42:41', '2021-08-05 11:42:41'),
(13, 'XTRADA HARDTAIL', 2, 6, 'uploads/products/610c0be2cf2b6-MTBROMO_N7_2022.png', 123123, 1, 321321, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laboru', '2021-08-05 15:59:33', '2021-08-05 16:03:46'),
(14, 'POLYGON SISKIU', 2, 6, 'uploads/products/610c0b1e06139-531352.png', 123123, 1, 1231, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laboru', '2021-08-05 16:00:30', '2021-08-05 16:01:25'),
(15, 'HAIBIKE XDURO', 2, 6, 'uploads/products/610c0b3fe8e91-b1.png', 123123, 1, 1231, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laboru', '2021-08-05 16:01:03', '2021-08-05 16:01:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_galleries`
--

CREATE TABLE `product_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_no` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_galleries`
--

INSERT INTO `product_galleries` (`id`, `url`, `order_no`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'uploads/products/galleries/1/610bc3137b4a3-lamborghini-s1-1.jpg', 1, 1, '2021-08-05 10:53:07', '2021-08-05 10:53:07'),
(2, 'uploads/products/galleries/1/610bc3138483f-lamborghini-s1-2.png', 2, 1, '2021-08-05 10:53:07', '2021-08-05 10:53:07'),
(3, 'uploads/products/galleries/1/610bc31386408-lamborghini-s1-3.jpg', 3, 1, '2021-08-05 10:53:07', '2021-08-05 10:53:07'),
(4, 'uploads/products/galleries/2/610bc43ed849a-lamborghini-s2.jpg', 1, 2, '2021-08-05 10:58:06', '2021-08-05 10:58:06'),
(5, 'uploads/products/galleries/2/610bc43edae39-lamborghini-s2.jpg', 2, 2, '2021-08-05 10:58:06', '2021-08-05 10:58:06'),
(6, 'uploads/products/galleries/2/610bc43edc103-lamborghini-s2.jpg', 3, 2, '2021-08-05 10:58:06', '2021-08-05 10:58:06'),
(7, 'uploads/products/galleries/3/610bc4dab2c0d-Lamborghini-s3.jpg', 1, 3, '2021-08-05 11:00:42', '2021-08-05 11:00:42'),
(8, 'uploads/products/galleries/3/610bc4dab4917-Lamborghini-s3.jpg', 2, 3, '2021-08-05 11:00:42', '2021-08-05 11:00:42'),
(9, 'uploads/products/galleries/3/610bc4dab5d0a-Lamborghini-s3.jpg', 3, 3, '2021-08-05 11:00:42', '2021-08-05 11:00:42'),
(10, 'uploads/products/galleries/3/610bc4dab749d-Lamborghini-s3.jpg', 4, 3, '2021-08-05 11:00:42', '2021-08-05 11:00:42'),
(11, 'uploads/products/galleries/3/610bc4dab8a0d-Lamborghini-s3.jpg', 5, 3, '2021-08-05 11:00:42', '2021-08-05 11:00:42'),
(12, 'uploads/products/galleries/4/610bc630b6381-bmv-s6.jpg', 1, 4, '2021-08-05 11:06:24', '2021-08-05 11:06:24'),
(13, 'uploads/products/galleries/4/610bc630b9b3b-bmv-s6.jpg', 2, 4, '2021-08-05 11:06:24', '2021-08-05 11:06:24'),
(14, 'uploads/products/galleries/5/610bc764e0095-bmv-s5.jpg', 1, 5, '2021-08-05 11:11:32', '2021-08-05 11:11:32'),
(15, 'uploads/products/galleries/6/610bc818c7a01-bmv-s1-1.jpg', 1, 6, '2021-08-05 11:14:32', '2021-08-05 11:14:32'),
(16, 'uploads/products/galleries/6/610bc818cb9bb-bmv-s1-1.jpg', 2, 6, '2021-08-05 11:14:32', '2021-08-05 11:14:32'),
(17, 'uploads/products/galleries/7/610bc8baad056-bmv-s3.jpg', 1, 7, '2021-08-05 11:17:14', '2021-08-05 11:17:14'),
(18, 'uploads/products/galleries/7/610bc8baaf556-bmv-s3.jpg', 2, 7, '2021-08-05 11:17:14', '2021-08-05 11:17:14'),
(19, 'uploads/products/galleries/7/610bc8bab0ae9-bmv-s3.jpg', 3, 7, '2021-08-05 11:17:14', '2021-08-05 11:17:14'),
(20, 'uploads/products/galleries/8/610bca3c1b5f9-ferrari-s1.jpg', 1, 8, '2021-08-05 11:23:40', '2021-08-05 11:23:40'),
(21, 'uploads/products/galleries/8/610bca3c2182d-ferrari-s1.jpg', 2, 8, '2021-08-05 11:23:40', '2021-08-05 11:23:40'),
(22, 'uploads/products/galleries/8/610bca3c24d2e-ferrari-s1.jpg', 3, 8, '2021-08-05 11:23:40', '2021-08-05 11:23:40'),
(23, 'uploads/products/galleries/9/610bcacd4a126-ferrari-s2-1.png', 1, 9, '2021-08-05 11:26:05', '2021-08-05 11:26:05'),
(24, 'uploads/products/galleries/10/610bceb1e8db0-mercedes-s1.jpg', 1, 10, '2021-08-05 11:42:41', '2021-08-05 11:42:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_tag`
--

CREATE TABLE `product_tag` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_tag`
--

INSERT INTO `product_tag` (`id`, `product_id`, `tag_id`, `updated_at`, `created_at`) VALUES
(1, 4, 2, '2021-08-08 03:40:55', '2021-08-08 03:40:55'),
(2, 1, 2, '2021-08-08 02:44:09', '2021-08-08 02:44:12'),
(3, 1, 3, '2021-08-08 02:43:59', '2021-08-08 02:43:59'),
(4, 2, 1, '2021-08-08 02:44:27', '2021-08-08 02:44:27'),
(5, 2, 2, '2021-08-08 02:44:22', '2021-08-08 02:44:22'),
(6, 3, 2, '2021-08-08 02:44:30', '2021-08-08 02:44:30'),
(7, 3, 4, '2021-08-08 02:44:44', '2021-08-08 02:44:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2021-08-08 01:58:15', '2021-08-08 01:58:15'),
(2, 'editor', 'web', '2021-08-08 01:58:15', '2021-08-08 01:58:15'),
(3, 'moderator', 'web', '2021-08-08 01:58:15', '2021-08-08 01:58:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tags`
--

INSERT INTO `tags` (`id`, `name`, `updated_at`, `created_at`) VALUES
(1, 'mui xe', '2021-08-08 02:50:15', '2021-08-08 02:50:15'),
(2, 'bánh xe', '2021-08-08 02:50:23', '2021-08-08 02:50:23'),
(3, 'cửa xe', '2021-08-08 02:50:28', '2021-08-08 02:50:28'),
(4, 'lướt gió', '2021-08-08 02:50:56', '2021-08-08 02:50:56'),
(5, 'test', '2021-08-08 03:31:37', '2021-08-08 03:31:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'uploads/users/610c05b073b2b-vegeta.png',
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `avatar`, `email`, `email_verified_at`, `password`, `phone`, `active`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'uploads/users/610bda9a02e99-gk.png', 'admin@gmail.com', NULL, '$2y$10$wnCaFgx3T4iRCP1ba7GzWOLNcKIjNt4WOg6147C6Jdi3RrbbOBToK', '0336126726', 1, NULL, '2021-08-05 09:26:56', '2021-08-06 03:43:36'),
(2, 'Mạnh Hùng', 'uploads/users/610bd7134161d-pitbull.jpg', 'hungtmph10583@fpt.edu.vn', NULL, '$2y$10$wnCaFgx3T4iRCP1ba7GzWOLNcKIjNt4WOg6147C6Jdi3RrbbOBToK', '0336126726', 1, NULL, '2021-08-05 12:12:34', '2021-08-05 12:12:34'),
(3, 'Master Thienth', 'uploads/users/610c05b073b2b-vegeta.png', 'thienth32@gmail.com', NULL, '$2y$10$Hca/Pqg4YvUps8B.uldtq.ntEHmpGG4B6lZ7kxTLEn9zBOSJE0tVq', '0336123256', 1, NULL, '2021-08-05 12:21:36', '2021-08-05 15:37:20'),
(4, 'Sao Kim', 'uploads/users/610cab530e66b-cuop.jpg', 'hung@gmail.com', NULL, '$2y$10$/nTyR7kexPltkRNLtHLj2envNylpFcb5.J13wDB3Qj4JYtBN/dvvS', '0336126726', 1, NULL, '2021-08-06 01:56:28', '2021-08-06 03:24:03'),
(5, 'test', 'uploads/users/610c05b073b2b-vegeta.png', 'manhhunglzx@gmai.com', NULL, '$2y$10$wuM9kSh4gqMRPpNAvzPRzu.gZIt8NML9uqJikvpNIuI0FDwiAiF6m', NULL, 1, NULL, '2021-08-06 02:15:01', '2021-08-06 02:15:01');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Chỉ mục cho bảng `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Chỉ mục cho bảng `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_galleries`
--
ALTER TABLE `product_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_tag`
--
ALTER TABLE `product_tag`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Chỉ mục cho bảng `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Chỉ mục cho bảng `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `product_galleries`
--
ALTER TABLE `product_galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `product_tag`
--
ALTER TABLE `product_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
