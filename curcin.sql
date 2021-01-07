-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2020 at 07:07 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `curcin`
--

-- --------------------------------------------------------

--
-- Table structure for table `curhats`
--

CREATE TABLE `curhats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pesan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `curhats`
--

INSERT INTO `curhats` (`id`, `nama`, `pesan`, `created_at`, `updated_at`) VALUES
(1, 'andrew', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus feugiat, ante eget ultricies tincidunt, turpis lorem placerat nunc, ut pulvinar lectus nisl sagittis augue. Curabitur dapibus dictum enim sit amet eleifend. Duis libero quam, ornare nec velit sed, lacinia efficitur sapien. Morbi id enim auctor, venenatis quam vel, volutpat elit. Ut dignissim aliquet dolor, vel mollis enim interdum ut. Aenean a efficitur augue. In ullamcorper porttitor arcu ac pretium. Morbi gravida consequat semper. Nulla nec lectus lorem. Mauris vel laoreet arcu. Nullam gravida, ante ac rutrum auctor, ipsum ex molestie magna, et euismod dolor risus non nulla. In gravida mollis lacus, in elementum lectus tincidunt ac. Aliquam a tortor vel nulla efficitur finibus ac dignissim nunc.', '2020-12-11 21:37:45', '2020-12-11 21:37:45'),
(2, 'yudi', ' Vestibulum nec ultrices ex. Vestibulum sit amet vulputate tellus. Nulla ligula mi, fringilla quis nulla quis, efficitur dictum nisi. Vestibulum porta mauris eget ornare tempor. Sed ullamcorper nulla justo, id volutpat est blandit eu. Sed non tellus massa. Integer felis risus, laoreet id nisi venenatis, tincidunt varius ante. Cras nec sapien vulputate ante gravida laoreet vel eget justo. Cras ac commodo felis, et lacinia lorem. Aliquam hendrerit fringilla purus. Nam a augue consequat tellus viverra vulputate eu sed arcu.<br/> Vestibulum nec ultrices ex. Vestibulum sit amet vulputate tellus. Nulla ligula mi, fringilla quis nulla quis, efficitur dictum nisi. Vestibulum porta mauris eget ornare tempor. Sed ullamcorper nulla justo, id volutpat est blandit eu. Sed non tellus massa. Integer felis risus, laoreet id nisi venenatis, tincidunt varius ante. Cras nec sapien vulputate ante gravida laoreet vel eget justo. Cras ac commodo felis, et lacinia lorem. Aliquam hendrerit fringilla purus. Nam a augue consequat tellus viverra vulputate eu sed arcu. ', '2020-12-11 21:55:45', '2020-12-11 21:55:45'),
(3, 'tes 123', 'Sed at dui sed dolor venenatis tempus ac finibus orci. Pellentesque viverra quam sed lectus fringilla, id consectetur nisl sollicitudin. Sed et diam posuere, mollis ligula id, ornare nibh. Fusce consectetur ante ut ligula laoreet gravida. Etiam auctor, velit id ultricies sollicitudin, justo lorem interdum ligula, nec condimentum eros felis ut ex. Praesent viverra eleifend lectus, et luctus metus lobortis ut. Sed at venenatis magna.', '2020-12-11 22:37:35', '2020-12-11 22:37:35');

-- --------------------------------------------------------

--
-- Table structure for table `komentars`
--

CREATE TABLE `komentars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `curhat_id` int(11) NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pesan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `komentars`
--

INSERT INTO `komentars` (`id`, `curhat_id`, `nama`, `pesan`, `created_at`, `updated_at`) VALUES
(1, 1, 'edy', ' In sit amet vestibulum orci. Ut sodales auctor dapibus. Nullam pulvinar justo lorem, vel sodales libero scelerisque et. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vestibulum cursus orci eget magna dictum luctus. Nam ac sem vitae nibh aliquam iaculis. Proin eget quam sed justo elementum facilisis. Phasellus facilisis consequat lectus, ut tempor ante cursus ut. Fusce eget dui at nisl pulvinar interdum eget sit amet ligula. Fusce porttitor tortor at mauris ultrices, accumsan malesuada ante vehicula. Praesent vitae varius erat. Sed mi dolor, placerat sit amet quam eget, scelerisque tempor nisl. Mauris consectetur tristique enim, cursus iaculis enim sagittis sit amet. Nunc porta blandit magna, in sagittis arcu. Quisque consequat ac nibh vitae posuere. ', '2020-12-12 04:46:51', '2020-12-12 04:46:51'),
(2, 1, 'john', 'Proin et sagittis libero. Aliquam erat volutpat. Duis tristique dictum nunc, eu fringilla arcu fermentum sit amet. Aliquam ornare purus dui, luctus posuere augue venenatis ac. Quisque sagittis pellentesque purus, in ullamcorper dui gravida ut. Praesent nibh mi, fringilla vitae vulputate a, iaculis ut arcu. Nunc ornare aliquam venenatis. Vestibulum eget nulla vitae mauris tristique interdum ultrices in sapien. Morbi sed arcu eu erat ultrices consectetur', '2020-12-12 04:50:51', '2020-12-12 04:50:51'),
(3, 2, 'robert', 'Aliquam feugiat ultrices tellus, nec eleifend ante condimentum et. Proin volutpat, nulla sit amet iaculis dictum, purus est tempor enim, vitae suscipit urna odio ut ligula. Aliquam auctor et ante sit amet fringilla. Sed facilisis urna ut urna malesuada auctor. Vivamus et est sit amet risus eleifend eleifend quis sit amet ante. Aenean pretium turpis et sagittis malesuada. Nunc efficitur velit vel pellentesque venenatis. Phasellus lectus libero, ullamcorper non dignissim a, pretium ac orci.', '2020-12-11 22:12:23', '2020-12-11 22:12:23'),
(4, 2, 'audy', 'Praesent vitae arcu sollicitudin, tristique eros aliquam, pharetra elit. Etiam lorem ligula, semper at eros vel, rutrum tristique elit. Integer ullamcorper ultricies rhoncus. Quisque rhoncus tellus in velit rutrum faucibus. Curabitur dictum erat id ligula imperdiet porttitor. Nulla rhoncus blandit tincidunt. Suspendisse suscipit magna sit amet lacus tincidunt consectetur et non risus. Nam enim ipsum, eleifend sit amet leo id, sodales congue massa. Etiam sed nunc ac enim consectetur fermentum. Proin sem diam, scelerisque sed volutpat ac, porttitor et diam. Suspendisse potenti. Suspendisse lacus elit, commodo ut accumsan vel, vulputate id lacus. Vivamus orci eros, eleifend quis arcu a, lobortis rutrum diam. Aenean pellentesque leo eu eros scelerisque cursus. Donec pulvinar risus justo, id faucibus ante posuere at.', '2020-12-11 22:14:03', '2020-12-11 22:14:03'),
(5, 2, 'fenny', 'tes lorem ipsum', '2020-12-11 22:15:12', '2020-12-11 22:15:12'),
(6, 3, 'tes 321', 'Quisque eget dictum mauris, nec dictum velit. Phasellus posuere massa sed est molestie, vel lobortis tellus vulputate. Donec vestibulum accumsan urna, vitae pulvinar nisl interdum sed. In ac turpis sed urna ultricies fermentum quis eget nisi. Nam sodales consequat leo in imperdiet. Fusce sit amet nisi quis nunc pulvinar mattis. Praesent cursus elit nec nibh laoreet facilisis. Nunc quis tellus dignissim, scelerisque nisl ac, sollicitudin purus.', '2020-12-11 22:38:00', '2020-12-11 22:38:00');

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
(3, '2020_12_12_041745_create_curhats_table', 1),
(4, '2020_12_12_042454_create_komentars_table', 1);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `curhats`
--
ALTER TABLE `curhats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `komentars`
--
ALTER TABLE `komentars`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `curhats`
--
ALTER TABLE `curhats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `komentars`
--
ALTER TABLE `komentars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
