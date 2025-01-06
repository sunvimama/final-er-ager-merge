-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2025 at 09:11 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `learn`
--

-- --------------------------------------------------------

--
-- Table structure for table `hireinfo`
--

CREATE TABLE `hireinfo` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `worker_id` int(11) NOT NULL,
  `hours` int(11) NOT NULL,
  `days` int(11) NOT NULL,
  `total_payment` float NOT NULL,
  `transaction_id` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `hire_status` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hireinfo`
--

INSERT INTO `hireinfo` (`id`, `user_id`, `worker_id`, `hours`, `days`, `total_payment`, `transaction_id`, `created_at`, `hire_status`) VALUES
(7, 12, 32, 2, 34, 1496, 'hukkah', '2025-01-07 01:01:09', 1),
(8, 12, 23, 2, 2, 400, 'ty', '2025-01-07 01:02:40', 1),
(9, 12, 23, 2, 2, 400, 'ww', '2025-01-07 01:05:48', 1),
(10, 12, 30, 3, 7, 483, 'wewewqw', '2025-01-07 01:55:11', 1);

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `name`, `email`) VALUES
(1, 'sunvi', 'afiffa@kkks'),
(2, 'riff', 'rfaaaaffkks');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nid` int(11) NOT NULL,
  `password` varchar(100) NOT NULL,
  `is_admin` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `nid`, `password`, `is_admin`) VALUES
(12, 'sunvimama', 'afifsunvi@gmail.com', 3333345, '$2b$12$nT9DX26fu4nsCwDUg9sXOeMEBc86bhEXcSYeRUTFpyOd7e/pvZvZ2', 1),
(13, 'mou', 'nazmulrifat2002@gmail.com', 1234525245, '$2b$12$IOpKs30bVDPIucCLpqtfz.YfAbe1.tnFnfSsYFlK68BJ7mStmTX.O', 0),
(14, 'sunvi', 'awdwddw@gmail.com', 2147483647, '$2b$12$ezKFiydy3Th6QE8ezKR8Begc1qHoBxJ8s57ghVkCk9mygO64PSrUu', 0),
(16, 'awdAWD', 'kingor@gmail.com', 1212312312, '$2b$12$Rmac/inPEsHUMtMfOXHhV.yfd0PNLQ1Wnjo0ZYClb5hp2LmQivay.', 0),
(17, 'kigkjig', 'qwerty@gmail.com', 2324567, '$2b$12$8yIxGOE7gauTTY7Uo9m52unb6i7Qnzf289Tm0vNMksRJvrJ8.8Mym', 0);

-- --------------------------------------------------------

--
-- Table structure for table `worker`
--

CREATE TABLE `worker` (
  `Name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` int(11) NOT NULL,
  `cooking` tinyint(1) NOT NULL,
  `cleaning` tinyint(1) NOT NULL,
  `washing_clothes` tinyint(1) NOT NULL DEFAULT 0,
  `about_you` varchar(255) DEFAULT NULL,
  `img_path` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `hourly_rate` int(11) NOT NULL,
  `nid` int(11) NOT NULL,
  `active_status` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `worker`
--

INSERT INTO `worker` (`Name`, `email`, `phone`, `cooking`, `cleaning`, `washing_clothes`, `about_you`, `img_path`, `id`, `hourly_rate`, `nid`, `active_status`) VALUES
('kingkhor', 'qwer@gmail.com', 1762591405, 1, 1, 1, 'shera bhai', 'static/uploads\\peakpx.jpg', 23, 100, 32423, 0),
('abdullah', 'qeqeeq@gmail.com', 123131414, 1, 1, 1, 'wwwwww', 'static/uploads\\462566399_1537299004377084_7274668106052628298_n.jpg', 29, 23, 112312311, 0),
('jhandubalm', 'awdawd@gmail.com', 9875435, 1, 1, 1, 'admin', 'static/uploads\\460328177_8417055538410036_5881454934776056719_n.jpg', 30, 23, 162452, 0),
('mou', 'nazmulrifat2002@gmail.com', 454545345, 1, 1, 1, 'yyyyyyyyyyyy', 'static/uploads\\460387012_8417055298410060_5351592648454538396_n.jpg', 31, 34, 4424424, 1),
('Palworld', 'kingor@gmail.com', 2147483647, 1, 1, 1, 'qweqweqwe3', 'static/uploads\\460627438_8417055311743392_9047183548716854944_n.jpg', 32, 22, 2223211, 1),
('palworld2', 'dede@gmail.com', 24425255, 1, 1, 1, 'wqeq', 'static/uploads\\304942536_538922978234561_6407103211231101181_n.jpg', 34, 22, 155612, 1),
('qweqwer', 'trerrwq@gmail.com', 12124566, 1, 1, 1, 'eee', 'static/uploads\\desktop-wallpaper-floating-in-space-by-visualdon-live-2d-space.jpg', 35, 54, 222451, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hireinfo`
--
ALTER TABLE `hireinfo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `worker_id` (`worker_id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `nid` (`nid`);

--
-- Indexes for table `worker`
--
ALTER TABLE `worker`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nid` (`nid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hireinfo`
--
ALTER TABLE `hireinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `worker`
--
ALTER TABLE `worker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hireinfo`
--
ALTER TABLE `hireinfo`
  ADD CONSTRAINT `hireinfo_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `hireinfo_ibfk_2` FOREIGN KEY (`worker_id`) REFERENCES `worker` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
