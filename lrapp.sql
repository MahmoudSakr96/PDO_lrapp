-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2021 at 11:06 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lrapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(255) CHARACTER SET cp1250 NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `body` text NOT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `username`, `title`, `created_at`, `updated_at`, `body`, `approved`) VALUES
(2, 0, 'mahmoudsakr71', 'dff', '2021-08-04 11:51:32', NULL, 'ff', 1),
(3, 0, 'nd', 'jkvnh', '2021-08-05 18:49:30', NULL, 'jvjj', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(32) CHARACTER SET utf8 NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created_at` datetime NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT 0,
  `email` varchar(40) NOT NULL,
  `privil` tinyint(1) NOT NULL DEFAULT 0,
  `reset_token` varchar(255) CHARACTER SET ascii DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `ban_time` datetime DEFAULT NULL,
  `ban_duration` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `imagePath` varchar(60) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`, `last_login`, `activated`, `email`, `privil`, `reset_token`, `nickname`, `ban_time`, `ban_duration`, `active`, `imagePath`) VALUES
(0, 'mahmoud', '$2y$11$XPDoPKg.8lsIA5TSLcxr9.RNNbEl4ZDur9lpERUQzde7fnWqKtZY2', '0000-00-00 00:00:00', NULL, 1, 'sss@gmail.com', 0, NULL, NULL, NULL, NULL, 1, ''),
(0, 'mahmoudsakr71', '$2y$10$V469HtAeUZYoOSsQ7BqH6ef119.StkW1gSMXQcReI4TDRsM52EZJi', '0000-00-00 00:00:00', '2021-08-04 12:18:00', 1, 'admin@gmail.com', 2, NULL, NULL, NULL, NULL, 1, ''),
(0, 'nd', '$2y$11$KkpsZ6NbiZM3YUw4n/6nYe3908CsQAz.6EseSE9r7AFOid61JxpJm', '0000-00-00 00:00:00', '2021-08-05 20:49:00', 1, 'mahmoud.sakr71@yahoo.com', 2, NULL, NULL, NULL, NULL, 1, '../images/cfaa571dd8630ac7fe7083d0049e54ee1c029e96.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `id` (`id`,`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
