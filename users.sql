-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2025 at 12:16 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb1`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avater` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `username`, `password`, `avater`) VALUES
(1, 'ศุภกฤต', 'อภัยรุณ', 'ยสีิ', '000', 'https://img.freepik.com/premium-vector/tuna-fish-clipart-isolated-white-background_906149-114541.jpg?w=360'),
(2, 'plub', 'ppp', 'ppp', '000', 'https://png.pngtree.com/png-vector/20241210/ourlarge/pngtree-tuna-fish-2d-vector-png-image_14681980.png'),
(3, 'plub2', 'lll', 'pl', '000', 'https://thumbs.dreamstime.com/b/cute-tuna-fish-cartoon-illustration-73476273.jpg'),
(57, 'kk', 'uu', 'plub', '000', 'https://w7.pngwing.com/pngs/918/6/png-transparent-chesapeake-blue-crab-%E0%B8%99%E0%B9%89%E0%B8%B3%E0%B9%80%E0%B8%95%E0%B9%89%E0%B8%B2-%E0%B8%9B%E0%B8%B9-%E0%B8%9B%E0%B8%A5%E0%B8%B2-%E0%B8%9E%E0%B8%B2%E0%B8%AA%E0%B9%80%E0%B8%97%E0%B8%A5-computer-icons-giant-mud-crab-crab.png'),
(60, 'uy', 'yyu', 'plub11', '000', 'https://png.pngtree.com/png-clipart/20220118/ourmid/pngtree-crab-aquatic-products-sea-seafood-hand-painted-cartoon-design-elements-png-image_4211350.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
