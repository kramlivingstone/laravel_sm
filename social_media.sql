-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2017 at 01:46 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social_media`
--

-- --------------------------------------------------------

--
-- Table structure for table `friend_request`
--

CREATE TABLE `friend_request` (
  `id` int(7) NOT NULL,
  `from` int(7) NOT NULL,
  `to` int(7) NOT NULL,
  `status` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `friend_request`
--

INSERT INTO `friend_request` (`id`, `from`, `to`, `status`) VALUES
(1, 8, 4, 0),
(2, 8, 1, 0);

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
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2017_07_19_193303_ProfileTable', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Marley Willms', 'cale.okeefe@yahoo.com', '$2y$10$ekGz0Yw1zv6yOIVWpZKhNORlM36vcWOItczhimsBMLXFQxvL.TBpy', 'http://lorempixel.com/200/200/?24485', NULL, NULL, NULL),
(2, 'Daphne Veum', 'erich71@hotmail.com', '$2y$10$f/PtKEeeZPMDckYpskoloeC8huptutYwEP1D3KLeiMaqHNLFBp5ny', 'http://lorempixel.com/200/200/?67474', '56WaKCMQDQv1svzAZxwkdxfRKfUy0aAA9DBLihHKy8dfBpgZ95SOafX6AhTs', NULL, NULL),
(3, 'Carrie Harber', 'gerhold.eliza@morissette.net', '$2y$10$qyW7MgzYXjzDX5D8VyVkbuCeK25sJ/Hiv2GQRBPSjT2JqGQ6hrbKC', 'http://lorempixel.com/200/200/?20741', NULL, NULL, NULL),
(4, 'Andreanne Gibson', 'kassulke.everardo@gmail.com', '$2y$10$U/0mDAltx1Q8CSYgT4S06.pra/5Kx5O/NopJ/lYdrmxDQjXyfTpe2', 'http://lorempixel.com/200/200/?42363', NULL, NULL, NULL),
(5, 'Neva Bednar', 'remington.grady@yahoo.com', '$2y$10$MEC7NC9siwYfX.xX1EQ5zu0uK5F5DaX/CRW.7nAIIbBYZrDHpITFa', 'http://lorempixel.com/200/200/?63707', NULL, NULL, NULL),
(6, 'Ms. Olga Fahey', 'greichel@gmail.com', '$2y$10$LDsLhXPmDxZOr/Uzkf9m0Ouu24gJ8S3QsT4taCFQVtrhd.X6mua3i', 'http://lorempixel.com/200/200/?45718', NULL, NULL, NULL),
(7, 'Constantin Green', 'jarrod.eichmann@gusikowski.com', '$2y$10$h3ZbAKw3nwXHDrddkDVuNOuTZtF4Yoem81biKsWmO0BPYh0kqdYV6', 'http://lorempixel.com/200/200/?99711', NULL, NULL, NULL),
(8, 'Dayton Veum', 'libby61@yahoo.com', '$2y$10$IPHwkkMkAMzkI2.jDmhny.ckFN236DLbtkJgEPoPavCK/2hoOsDNu', 'http://lorempixel.com/200/200/?15645', NULL, NULL, NULL),
(9, 'Alayna Renner III', 'tchristiansen@gmail.com', '$2y$10$dn50eU/lpCKkolTOO2CAVu8OlJSanEPJk7s2kmUqqYErnGE6GDTnq', 'http://lorempixel.com/200/200/?49690', NULL, NULL, NULL),
(10, 'Dr. Dayton Gerhold', 'aaliyah.pagac@hegmann.com', '$2y$10$4rwilR3aPZXMEVKzQ7OFg.jhhxp7SQyPUGEetFG8nGOJL7hFQ0qV.', 'http://lorempixel.com/200/200/?22800', NULL, NULL, NULL),
(11, 'Prof. Shakira Brekke', 'vbrakus@dickens.biz', '$2y$10$iUSH/3efSK7T6abOfiymoO8wpTOhKntjgO6mSXVrboyKA2Z9BL1sO', 'http://lorempixel.com/200/200/?81178', NULL, NULL, NULL),
(12, 'Ms. Myrtle Kohler', 'watsica.krystina@hotmail.com', '$2y$10$oFTGyX1vurF.I5e4BHlshudkWpX2IETkq8Q1Ud14puIYH4tH9Y.DC', 'http://lorempixel.com/200/200/?14399', NULL, NULL, NULL),
(13, 'Riley Dooley V', 'alta.hoppe@smith.com', '$2y$10$z82oA7C81.5iJkqiFbY.UO26r5EF4ZFuRlZOGiqCqhyDgTGIZq7PO', 'http://lorempixel.com/200/200/?32668', NULL, NULL, NULL),
(14, 'Prof. Ned Tillman', 'alicia.padberg@yahoo.com', '$2y$10$C7Tbj2md4jwC9o0B7uf.RelHAFXwNBXX9wMEkfjwpFigWl4jypD1y', 'http://lorempixel.com/200/200/?94640', NULL, NULL, NULL),
(15, 'Mr. Lesley Jakubowski', 'ischamberger@yahoo.com', '$2y$10$ttWFcgo/EX9wRRR973gMqOEa5KZR3BUT0UGLWMw4NyVDsfdIsuv.q', 'http://lorempixel.com/200/200/?12663', NULL, NULL, NULL),
(16, 'Ivory Pollich', 'ruthe.herman@pollich.info', '$2y$10$Z63.HK7kQXYZyT0VIsToZulbUxkfGIMkytjAxcZ58Pe9znSMeN3HO', 'http://lorempixel.com/200/200/?50865', NULL, NULL, NULL),
(17, 'Prof. Ryan Rodriguez', 'king.oconnell@gmail.com', '$2y$10$3thZkiwxPgL2ZzPYZ3qSUefuSLcAL8vIcI52tvvdIbGHgt7cTd0i.', 'http://lorempixel.com/200/200/?40781', NULL, NULL, NULL),
(18, 'Earnest Dooley', 'benton94@stiedemann.info', '$2y$10$ZX5/XxKakHo6eyYr7gmcg.St5CIHtR3CG5eIIRKOmx/CwIN0I03C6', 'http://lorempixel.com/200/200/?74900', NULL, NULL, NULL),
(19, 'Dr. Hobart Romaguera Jr.', 'price.weimann@kautzer.com', '$2y$10$YTq.w5VYq1nhV4.xCrkJgO41/8rNRY93egmWM9QVp03tb7BssN5pO', 'http://lorempixel.com/200/200/?58077', NULL, NULL, NULL),
(20, 'Wilton Yost', 'orval.goodwin@yahoo.com', '$2y$10$F4Jc6BlpW1ke5wjUD0rsCeudyEt8EttNZZ4Tm8PGD78xLvwxDpgim', 'http://lorempixel.com/200/200/?16353', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `friend_request`
--
ALTER TABLE `friend_request`
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
-- AUTO_INCREMENT for table `friend_request`
--
ALTER TABLE `friend_request`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
