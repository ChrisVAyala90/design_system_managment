-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 17, 2024 at 12:53 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `design_system_db`
--
CREATE DATABASE IF NOT EXISTS `design_system_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `design_system_db`;

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `token_type` enum('primitive','semantic') NOT NULL,
  `token_id` int(11) NOT NULL,
  `action` enum('set_live','update','create','delete') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `user_id`, `token_type`, `token_id`, `action`, `created_at`) VALUES
(1, 4, 'primitive', 131, 'create', '2024-08-15 17:24:58'),
(2, 2, 'semantic', 71, 'update', '2024-08-15 17:24:58'),
(3, 2, 'primitive', 21, 'create', '2024-08-15 17:24:58'),
(4, 4, 'primitive', 71, 'update', '2024-08-15 17:24:58'),
(5, 3, 'semantic', 6, 'set_live', '2024-08-15 17:24:58'),
(6, 3, 'semantic', 2, 'create', '2024-08-15 17:24:58'),
(7, 3, 'semantic', 118, 'set_live', '2024-08-15 17:24:58'),
(8, 3, 'primitive', 15, 'create', '2024-08-15 17:24:58'),
(9, 2, 'semantic', 57, 'set_live', '2024-08-15 17:24:58');

-- --------------------------------------------------------

--
-- Table structure for table `primitive_tokens`
--

CREATE TABLE `primitive_tokens` (
  `id` int(11) NOT NULL,
  `name_reference` varchar(100) NOT NULL,
  `color` varchar(50) NOT NULL,
  `value` varchar(50) NOT NULL,
  `hex_value` varchar(7) NOT NULL,
  `opacity` decimal(3,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `primitive_tokens`
--

INSERT INTO `primitive_tokens` (`id`, `name_reference`, `color`, `value`, `hex_value`, `opacity`, `created_at`) VALUES
(1, 'grey-900', 'grey', '900', '121212', 1.00, '2024-08-15 17:24:58'),
(2, 'grey-800', 'grey', '800', '242424', 1.00, '2024-08-15 17:24:58'),
(3, 'grey-700', 'grey', '700', '373737', 1.00, '2024-08-15 17:24:58'),
(4, 'grey-600', 'grey', '600', '4D4D4D', 1.00, '2024-08-15 17:24:58'),
(5, 'grey-500', 'grey', '500', '6F6F6F', 1.00, '2024-08-15 17:24:58'),
(6, 'grey-400', 'grey', '400', 'ABABAB', 1.00, '2024-08-15 17:24:58'),
(7, 'grey-300', 'grey', '300', 'C5C5C5', 1.00, '2024-08-15 17:24:58'),
(8, 'grey-200', 'grey', '200', 'DADADA', 1.00, '2024-08-15 17:24:58'),
(9, 'grey-100', 'grey', '100', 'EDEDED', 1.00, '2024-08-15 17:24:58'),
(10, 'grey-000', 'grey', '0', 'F5F5F5', 1.00, '2024-08-15 17:24:58'),
(11, 'green-900', 'green', '900', '12320B', 1.00, '2024-08-15 17:24:58'),
(12, 'green-800', 'green', '800', '1E5412', 1.00, '2024-08-15 17:24:58'),
(13, 'green-700', 'green', '700', '2A751A', 1.00, '2024-08-15 17:24:58'),
(14, 'green-600', 'green', '600', '379721', 1.00, '2024-08-15 17:24:58'),
(15, 'green-500', 'green', '500', '43B828', 1.00, '2024-08-15 17:24:58'),
(16, 'green-400', 'green', '400', '53D337', 1.00, '2024-08-15 17:24:58'),
(17, 'green-300', 'green', '300', '7EDE68', 1.00, '2024-08-15 17:24:58'),
(18, 'green-200', 'green', '200', 'A9E99B', 1.00, '2024-08-15 17:24:58'),
(19, 'green-100', 'green', '100', 'D4F4CD', 1.00, '2024-08-15 17:24:58'),
(20, 'green-000', 'green', '0', 'F1FBEE', 1.00, '2024-08-15 17:24:58'),
(21, 'orange-900', 'orange', '900', '802D07', 1.00, '2024-08-15 17:24:58'),
(22, 'orange-800', 'orange', '800', 'A53A09', 1.00, '2024-08-15 17:24:58'),
(23, 'orange-700', 'orange', '700', 'C4450B', 1.00, '2024-08-15 17:24:58'),
(24, 'orange-600', 'orange', '600', 'DC4E0C', 1.00, '2024-08-15 17:24:58'),
(25, 'orange-500', 'orange', '500', 'EE540D', 1.00, '2024-08-15 17:24:58'),
(26, 'orange-400', 'orange', '400', 'F3601B', 1.00, '2024-08-15 17:24:58'),
(27, 'orange-300', 'orange', '300', 'F6824C', 1.00, '2024-08-15 17:24:58'),
(28, 'orange-200', 'orange', '200', 'F8A47D', 1.00, '2024-08-15 17:24:58'),
(29, 'orange-100', 'orange', '100', 'FCD1BE', 1.00, '2024-08-15 17:24:58'),
(30, 'orange-000', 'orange', '0', 'FEF4EF', 1.00, '2024-08-15 17:24:58'),
(31, 'purple-900', 'purple', '900', '29086C', 1.00, '2024-08-15 17:24:58'),
(32, 'purple-800', 'purple', '800', '450EB4', 1.00, '2024-08-15 17:24:58'),
(33, 'purple-700', 'purple', '700', '6320EE', 1.00, '2024-08-15 17:24:58'),
(34, 'purple-600', 'purple', '600', '6F31F0', 1.00, '2024-08-15 17:24:58'),
(35, 'purple-500', 'purple', '500', '7B42F1', 1.00, '2024-08-15 17:24:58'),
(36, 'purple-400', 'purple', '400', '9263F3', 1.00, '2024-08-15 17:24:58'),
(37, 'purple-300', 'purple', '300', 'AA84F6', 1.00, '2024-08-15 17:24:58'),
(38, 'purple-200', 'purple', '200', 'C1A6F8', 1.00, '2024-08-15 17:24:58'),
(39, 'purple-100', 'purple', '100', 'E0D2FC', 1.00, '2024-08-15 17:24:58'),
(40, 'purple-000', 'purple', '0', 'F7F4FE', 1.00, '2024-08-15 17:24:58'),
(41, 'red-900', 'red', '900', '5E0A14', 1.00, '2024-08-15 17:24:58'),
(42, 'red-800', 'red', '800', '7D0E1B', 1.00, '2024-08-15 17:24:58'),
(43, 'red-700', 'red', '700', 'B81427', 1.00, '2024-08-15 17:24:58'),
(44, 'red-600', 'red', '600', 'CA162B', 1.00, '2024-08-15 17:24:58'),
(45, 'red-500', 'red', '500', 'DC182F', 1.00, '2024-08-15 17:24:58'),
(46, 'red-400', 'red', '400', 'E9344A', 1.00, '2024-08-15 17:24:58'),
(47, 'red-300', 'red', '300', 'EF6C7B', 1.00, '2024-08-15 17:24:58'),
(48, 'red-200', 'red', '200', 'F5A3AD', 1.00, '2024-08-15 17:24:58'),
(49, 'red-100', 'red', '100', 'FBDADE', 1.00, '2024-08-15 17:24:58'),
(50, 'red-000', 'red', '0', 'FDEDEF', 1.00, '2024-08-15 17:24:58'),
(51, 'yellow-900', 'yellow', '900', '816100', 1.00, '2024-08-15 17:24:58'),
(52, 'yellow-800', 'yellow', '800', 'B88A00', 1.00, '2024-08-15 17:24:58'),
(53, 'yellow-700', 'yellow', '700', 'F6B700', 1.00, '2024-08-15 17:24:58'),
(54, 'yellow-600', 'yellow', '600', 'F7C401', 1.00, '2024-08-15 17:24:58'),
(55, 'yellow-500', 'yellow', '500', 'F7CA02', 1.00, '2024-08-15 17:24:58'),
(56, 'yellow-400', 'yellow', '400', 'F7D002', 1.00, '2024-08-15 17:24:58'),
(57, 'yellow-300', 'yellow', '300', 'FDDF49', 1.00, '2024-08-15 17:24:58'),
(58, 'yellow-200', 'yellow', '200', 'FEEA86', 1.00, '2024-08-15 17:24:58'),
(59, 'yellow-100', 'yellow', '100', 'FEF4C2', 1.00, '2024-08-15 17:24:58'),
(60, 'yellow-000', 'yellow', '0', 'FFFBEB', 1.00, '2024-08-15 17:24:58'),
(61, 'blue-900', 'blue', '900', '003067', 1.00, '2024-08-15 17:24:58'),
(62, 'blue-800', 'blue', '800', '0050AB', 1.00, '2024-08-15 17:24:58'),
(63, 'blue-700', 'blue', '700', '076CDF', 1.00, '2024-08-15 17:24:58'),
(64, 'blue-600', 'blue', '600', '0088F7', 1.00, '2024-08-15 17:24:58'),
(65, 'blue-500', 'blue', '500', '0094FA', 1.00, '2024-08-15 17:24:58'),
(66, 'blue-400', 'blue', '400', '009FFD', 1.00, '2024-08-15 17:24:58'),
(67, 'blue-300', 'blue', '300', '37B6FF', 1.00, '2024-08-15 17:24:58'),
(68, 'blue-200', 'blue', '200', '6DCAFF', 1.00, '2024-08-15 17:24:58'),
(69, 'blue-100', 'blue', '100', 'B6E4FF', 1.00, '2024-08-15 17:24:58'),
(70, 'blue-000', 'blue', '0', 'EDF8FF', 1.00, '2024-08-15 17:24:58'),
(71, 'volt', 'volt', '-', 'B1FF14', 1.00, '2024-08-15 17:24:58'),
(72, 'clear', 'clear', '-', 'FFFFFF', 0.00, '2024-08-15 17:24:58'),
(73, 'black', 'black', '-', '000000', 1.00, '2024-08-15 17:24:58'),
(74, 'black-a02', 'black', 'a02', '000000', 0.02, '2024-08-15 17:24:58'),
(75, 'black-a04', 'black', 'a04', '000000', 0.04, '2024-08-15 17:24:58'),
(76, 'black-a08', 'black', 'a08', '000000', 0.08, '2024-08-15 17:24:58'),
(77, 'black-a12', 'black', 'a12', '000000', 0.12, '2024-08-15 17:24:58'),
(78, 'black-a16', 'black', 'a16', '000000', 0.16, '2024-08-15 17:24:58'),
(79, 'black-a24', 'black', 'a24', '000000', 0.24, '2024-08-15 17:24:58'),
(80, 'black-a32', 'black', 'a32', '000000', 0.32, '2024-08-15 17:24:58'),
(81, 'black-a40', 'black', 'a40', '000000', 0.40, '2024-08-15 17:24:58'),
(82, 'white', 'white', '-', 'FFFFFF', 1.00, '2024-08-15 17:24:58'),
(83, 'white-a02', 'white', 'a02', '000000', 0.02, '2024-08-15 17:24:58'),
(84, 'white-a04', 'white', 'a04', '000000', 0.04, '2024-08-15 17:24:58'),
(85, 'white-a08', 'white', 'a08', '000000', 0.08, '2024-08-15 17:24:58'),
(86, 'white-a12', 'white', 'a12', '000000', 0.12, '2024-08-15 17:24:58'),
(87, 'white-a16', 'white', 'a16', '000000', 0.16, '2024-08-15 17:24:58'),
(88, 'white-a24', 'white', 'a24', '000000', 0.24, '2024-08-15 17:24:58'),
(89, 'white-a32', 'white', 'a32', '000000', 0.32, '2024-08-15 17:24:58'),
(90, 'white-a40', 'white', 'a40', '000000', 0.40, '2024-08-15 17:24:58'),
(91, 'green-a02', 'green', 'a02', '53D337', 0.02, '2024-08-15 17:24:58'),
(92, 'green-a04', 'green', 'a04', '53D337', 0.04, '2024-08-15 17:24:58'),
(93, 'green-a08', 'green', 'a08', '53D337', 0.08, '2024-08-15 17:24:58'),
(94, 'green-a12', 'green', 'a12', '53D337', 0.12, '2024-08-15 17:24:58'),
(95, 'green-a16', 'green', 'a16', '53D337', 0.16, '2024-08-15 17:24:58'),
(96, 'green-a24', 'green', 'a24', '53D337', 0.24, '2024-08-15 17:24:58'),
(97, 'green-a32', 'green', 'a32', '53D337', 0.32, '2024-08-15 17:24:58'),
(98, 'green-a40', 'green', 'a40', '53D337', 0.40, '2024-08-15 17:24:58'),
(99, 'orange-a02', 'orange', 'a02', 'F3601B', 0.02, '2024-08-15 17:24:58'),
(100, 'orange-a02', 'orange', 'a04', 'F3601B', 0.04, '2024-08-15 17:24:58'),
(101, 'orange-a08', 'orange', 'a08', 'F3601B', 0.08, '2024-08-15 17:24:58'),
(102, 'orange-a12', 'orange', 'a12', 'F3601B', 0.12, '2024-08-15 17:24:58'),
(103, 'orange-a16', 'orange', 'a16', 'F3601B', 0.16, '2024-08-15 17:24:58'),
(104, 'orange-a24', 'orange', 'a24', 'F3601B', 0.24, '2024-08-15 17:24:58'),
(105, 'orange-a32', 'orange', 'a32', 'F3601B', 0.32, '2024-08-15 17:24:58'),
(106, 'orange-a40', 'orange', 'a40', 'F3601B', 0.40, '2024-08-15 17:24:58'),
(107, 'purple-a02', 'purple', 'a02', '9263F3', 0.02, '2024-08-15 17:24:58'),
(108, 'purple-a04', 'purple', 'a04', '9263F3', 0.04, '2024-08-15 17:24:58'),
(109, 'purple-a08', 'purple', 'a08', '9263F3', 0.08, '2024-08-15 17:24:58'),
(110, 'purple-a12', 'purple', 'a12', '9263F3', 0.12, '2024-08-15 17:24:58'),
(111, 'purple-a16', 'purple', 'a16', '9263F3', 0.16, '2024-08-15 17:24:58'),
(112, 'purple-a24', 'purple', 'a24', '9263F3', 0.24, '2024-08-15 17:24:58'),
(113, 'purple-a32', 'purple', 'a32', '9263F3', 0.32, '2024-08-15 17:24:58'),
(114, 'purple-a40', 'purple', 'a40', '9263F3', 0.40, '2024-08-15 17:24:58'),
(115, 'red-a02', 'red', 'a02', 'E9344A', 0.02, '2024-08-15 17:24:58'),
(116, 'red-a04', 'red', 'a04', 'E9344A', 0.04, '2024-08-15 17:24:58'),
(117, 'red-a08', 'red', 'a08', 'E9344A', 0.08, '2024-08-15 17:24:58'),
(118, 'red-a12', 'red', 'a12', 'E9344A', 0.12, '2024-08-15 17:24:58'),
(119, 'red-a16', 'red', 'a16', 'E9344A', 0.16, '2024-08-15 17:24:58'),
(120, 'red-a24', 'red', 'a24', 'E9344A', 0.24, '2024-08-15 17:24:58'),
(121, 'red-a32', 'red', 'a32', 'E9344A', 0.32, '2024-08-15 17:24:58'),
(122, 'red-a40', 'red', 'a40', 'E9344A', 0.40, '2024-08-15 17:24:58'),
(123, 'yellow-a02', 'yellow', 'a02', 'F7D002', 0.02, '2024-08-15 17:24:58'),
(124, 'yellow-a04', 'yellow', 'a04', 'F7D002', 0.04, '2024-08-15 17:24:58'),
(125, 'yellow-a08', 'yellow', 'a08', 'F7D002', 0.08, '2024-08-15 17:24:58'),
(126, 'yellow-a12', 'yellow', 'a12', 'F7D002', 0.12, '2024-08-15 17:24:58'),
(127, 'yellow-a16', 'yellow', 'a16', 'F7D002', 0.16, '2024-08-15 17:24:58'),
(128, 'yellow-a24', 'yellow', 'a24', 'F7D002', 0.24, '2024-08-15 17:24:58'),
(129, 'yellow-a32', 'yellow', 'a32', 'F7D002', 0.32, '2024-08-15 17:24:58'),
(130, 'yellow-a40', 'yellow', 'a40', 'F7D002', 0.40, '2024-08-15 17:24:58'),
(131, 'blue-a02', 'blue', 'a02', '009FFD', 0.02, '2024-08-15 17:24:58'),
(132, 'blue-a04', 'blue', 'a04', '009FFD', 0.04, '2024-08-15 17:24:58'),
(133, 'blue-a08', 'blue', 'a08', '009FFD', 0.08, '2024-08-15 17:24:58'),
(134, 'blue-a12', 'blue', 'a012', '009FFD', 0.12, '2024-08-15 17:24:58'),
(135, 'blue-a16', 'blue', 'a16', '009FFD', 0.16, '2024-08-15 17:24:58'),
(136, 'blue-a24', 'blue', 'a24', '009FFD', 0.24, '2024-08-15 17:24:58'),
(137, 'blue-a32', 'blue', 'a32', '009FFD', 0.32, '2024-08-15 17:24:58'),
(138, 'blue-a40', 'blue', 'a40', '009FFD', 0.40, '2024-08-15 17:24:58'),
(139, 'blue-a50', 'blue', 'a50', '009FFD', 0.50, '2024-08-15 21:18:31'),
(140, 'blue-a50', 'blue', 'a50', '009FFD', 0.50, '2024-08-15 21:22:48'),
(141, 'blue-a50', 'blue', 'a60', '009FFD', 0.90, '2024-08-15 21:22:49'),
(142, 'test-000', 'test', '000', '00000', 0.00, '2024-08-15 22:38:57'),
(143, 'green-500', 'green', '500', '#43B828', 1.00, '2024-08-15 23:32:48'),
(144, 'New Primitive POST', 'Crazy', '540', '#0000FF', 1.00, '2024-08-16 14:17:23');

-- --------------------------------------------------------

--
-- Table structure for table `semantic_tokens`
--

CREATE TABLE `semantic_tokens` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `primitive_token_id` int(11) NOT NULL,
  `context` text NOT NULL,
  `is_live` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `semantic_tokens`
--

INSERT INTO `semantic_tokens` (`id`, `name`, `primitive_token_id`, `context`, `is_live`, `created_at`, `updated_at`) VALUES
(1, 'bg-default', 43, 'background', 0, '2024-08-15 17:24:58', '2024-08-16 13:14:33'),
(2, 'bg-nav', 16, 'background', 0, '2024-08-15 17:24:58', '2024-08-16 13:15:13'),
(3, 'surface-level-1', 42, 'surface', 1, '2024-08-15 17:24:58', '2024-08-16 11:47:45'),
(4, 'surface-level-2', 21, 'surface', 1, '2024-08-15 17:24:58', '2024-08-16 12:08:37'),
(5, 'surface-level-1-alt', 91, 'surface', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(6, 'surface-level-2-alt', 102, 'surface', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(7, 'surface-recessed', 117, 'surface', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(8, 'surface-invert', 47, 'surface', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(9, 'surface-critical', 90, 'surface', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(10, 'surface-critical-subdued', 59, 'surface', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(11, 'surface-caution', 130, 'surface', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(12, 'surface-caution-subdued', 52, 'surface', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(13, 'surface-success', 11, 'surface', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(14, 'surface-success-subdued', 71, 'surface', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(15, 'surface-info', 20, 'surface', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(16, 'surface-info-subdued', 130, 'surface', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(17, 'surface-neutral', 15, 'surface', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(18, 'surface-neutral-subdued', 42, 'surface', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(19, 'surface-brand', 66, 'surface', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(20, 'surface-brand-subdued', 137, 'surface', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(21, 'surface-interactive', 66, 'surface', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(22, 'surface-interactive-hover', 5, 'surface', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(23, 'surface-interactive-pressed', 129, 'surface', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(24, 'surface-interactive-focused', 86, 'surface', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(25, 'surface-interactive-selected', 35, 'surface', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(26, 'surface-interactive-disabled', 20, 'surface', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(27, 'surface-interactive-subdued', 56, 'surface', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(28, 'surface-interactive-subdued-hover', 128, 'surface', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(29, 'surface-interactive-subdued-pressed', 13, 'surface', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(30, 'surface-interactive-subdued-focused', 79, 'surface', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(31, 'surface-interactive-subdued-selected', 75, 'surface', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(32, 'text-default', 91, 'text', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(33, 'text-strong', 101, 'text', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(34, 'text-subdued', 100, 'text', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(35, 'text-minimal', 97, 'text', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(36, 'text-disabled', 83, 'text', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(37, 'text-invert', 107, 'text', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(38, 'text-brand', 18, 'text', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(39, 'text-critical', 115, 'text', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(40, 'text-caution', 53, 'text', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(41, 'text-success', 136, 'text', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(42, 'text-info', 29, 'text', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(43, 'text-on-critical', 17, 'text', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(44, 'text-on-caution', 28, 'text', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(45, 'text-on-success', 113, 'text', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(46, 'text-on-info', 129, 'text', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(47, 'text-on-primary', 114, 'text', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(48, 'text-on-secondary', 129, 'text', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(49, 'text-on-tertiary', 24, 'text', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(50, 'text-on-disabled', 25, 'text', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(51, 'text-interactive-active', 47, 'text', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(52, 'text-interactive-inactive', 7, 'text', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(53, 'text-interactive-primary', 96, 'text', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(54, 'text-interactive-primary-hover', 28, 'text', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(55, 'text-interactive-primary-pressed', 99, 'text', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(56, 'text-interactive-subdued', 12, 'text', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(57, 'text-interactive-subdued-hover', 88, 'text', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(58, 'text-interactive-subdued-pressed', 129, 'text', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(59, 'text-interactive-invert-primary', 10, 'text', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(60, 'text-interactive-invert', 58, 'text', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(61, 'text-interactive-invert-hover', 89, 'text', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(62, 'text-interactive-invert-pressed', 9, 'text', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(63, 'text-on-green', 29, 'text', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(64, 'text-on-gold', 33, 'text', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(65, 'text-on-yellow', 86, 'text', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(66, 'text-on-purple', 19, 'text', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(67, 'text-on-indigo', 82, 'text', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(68, 'text-on-blue', 22, 'text', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(69, 'text-on-orange', 128, 'text', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(70, 'text-on-red', 81, 'text', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(71, 'text-on-nav', 100, 'text', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(72, 'text-interactive-on-nav', 82, 'text', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(73, 'border-default', 106, 'border', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(74, 'border-subdued', 122, 'border', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(75, 'border-medium', 84, 'border', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(76, 'border-strong', 108, 'border', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(77, 'border-max-contrast', 124, 'border', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(78, 'border-invert', 12, 'border', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(79, 'border-success', 74, 'border', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(80, 'border-success-subdued', 32, 'border', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(81, 'border-caution', 19, 'border', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(82, 'border-caution-subdued', 77, 'border', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(83, 'border-critical', 92, 'border', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(84, 'border-critical-subdued', 71, 'border', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(85, 'border-info', 73, 'border', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(86, 'border-info-subdued', 38, 'border', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(87, 'border-primary', 108, 'border', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(88, 'border-secondary', 35, 'border', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(89, 'border-tertiary', 21, 'border', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(90, 'border-selected', 112, 'border', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(91, 'border-deselected', 115, 'border', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(92, 'border-level', 84, 'border', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(93, 'border-divider', 116, 'border', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(94, 'icon-default', 115, 'icon', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(95, 'icon-strong', 9, 'icon', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(96, 'icon-subdued', 127, 'icon', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(97, 'icon-minimal', 4, 'icon', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(98, 'icon-disabled', 5, 'icon', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(99, 'icon-invert', 131, 'icon', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(100, 'icon-primary', 37, 'icon', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(101, 'icon-brand', 12, 'icon', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(102, 'icon-critical', 55, 'icon', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(103, 'icon-caution', 31, 'icon', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(104, 'icon-success', 11, 'icon', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(105, 'icon-info', 18, 'icon', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(106, 'icon-on-critical', 76, 'icon', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(107, 'icon-on-caution', 28, 'icon', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(108, 'icon-on-success', 94, 'icon', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(109, 'icon-on-info', 8, 'icon', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(110, 'icon-on-primary', 34, 'icon', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(111, 'icon-on-secondary', 74, 'icon', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(112, 'icon-on-tertiary', 62, 'icon', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(113, 'icon-on-disabled', 22, 'icon', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(114, 'icon-active', 53, 'icon', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(115, 'icon-inactive', 78, 'icon', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(116, 'icon-on-green', 112, 'icon', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(117, 'icon-on-gold', 54, 'icon', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(118, 'icon-on-yellow', 83, 'icon', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(119, 'icon-on-purple', 118, 'icon', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(120, 'icon-on-indigo', 82, 'icon', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(121, 'icon-on-blue', 16, 'icon', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(122, 'icon-on-orange', 81, 'icon', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(123, 'icon-on-red', 29, 'icon', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(124, 'icon-on-nav', 91, 'icon', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(125, 'icon-interactive-on-nav', 115, 'icon', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(126, 'action-primary', 46, 'action', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(127, 'action-primary-hover', 72, 'action', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(128, 'action-primary-pressed', 118, 'action', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(129, 'action-secondary', 3, 'action', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(130, 'action-secondary-hover', 36, 'action', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(131, 'action-secondary-pressed', 121, 'action', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(132, 'action-tertiary', 12, 'action', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(133, 'action-tertiary-hover', 62, 'action', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(134, 'action-tertiary-pressed', 27, 'action', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(135, 'action-critical', 51, 'action', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(136, 'action-critical-hover', 126, 'action', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(137, 'action-critical-pressed', 73, 'action', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(138, 'action-caution', 79, 'action', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(139, 'action-caution-hover', 118, 'action', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(140, 'action-caution-pressed', 45, 'action', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(141, 'action-disabled', 83, 'action', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(142, 'decorative-green', 103, 'decorative', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(143, 'decorative-gold', 128, 'decorative', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(144, 'decorative-yellow', 128, 'decorative', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(145, 'decorative-purple', 30, 'decorative', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(146, 'decorative-indigo', 100, 'decorative', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(147, 'decorative-blue', 62, 'decorative', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(148, 'decorative-red', 26, 'decorative', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(149, 'decorative-orange', 108, 'decorative', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(150, 'decorative-green-subdued', 5, 'decorative', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(151, 'decorative-gold-subdued', 26, 'decorative', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(152, 'decorative-yellow-subdued', 58, 'decorative', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(153, 'decorative-purple-subdued', 70, 'decorative', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(154, 'decorative-purple-subdued', 7, 'decorative', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(155, 'decorative-blue-subdued', 62, 'decorative', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(156, 'decorative-red-subdued', 78, 'decorative', 0, '2024-08-15 17:24:58', '2024-08-16 11:42:30'),
(157, 'decorative-orange-subdued', 35, 'decorative', 0, '2024-08-15 17:24:58', '2024-08-16 13:14:15'),
(159, 'Primary Button Background', 1, 'Button background color for primary buttons', 0, '2024-08-16 00:05:39', '2024-08-16 13:15:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `department` enum('product','engineering') NOT NULL,
  `role` enum('admin','engineer') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `department`, `role`, `created_at`) VALUES
(2, 'Bob Johnson', 'bob.johnson@example.com', 'hello2', 'product', 'admin', '2024-08-15 17:24:58'),
(3, 'Charlie M Brown', 'charlie.brown@example.com', 'helllo', 'engineering', 'engineer', '2024-08-15 17:24:58'),
(4, 'Diana Prince', 'diana.prince@example.com', 'hello4', 'product', 'admin', '2024-08-15 17:24:58'),
(7, 'John Mike', 'john.mike@example.com', 'crypt', 'engineering', 'engineer', '2024-08-15 23:16:21'),
(8, 'John Doe Updated', 'john.doe.updated@example.com', '$2y$10$.0Zg394nBInfzriO6YUPQumj7EUBBuJMt5e7DiBht6KYE2YrqztWi', 'engineering', 'engineer', '2024-08-16 14:04:23'),
(13, 'John Who', 'john.who.updated@example.com', '$2y$10$/JQiJodGyGCijrdxzUSE0ufzgCukDCCgofwOmBmRCXw247t2GUcqm', 'product', 'admin', '2024-08-16 14:09:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `primitive_tokens`
--
ALTER TABLE `primitive_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semantic_tokens`
--
ALTER TABLE `semantic_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `primitive_token_id` (`primitive_token_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `primitive_tokens`
--
ALTER TABLE `primitive_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `semantic_tokens`
--
ALTER TABLE `semantic_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD CONSTRAINT `activity_logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `semantic_tokens`
--
ALTER TABLE `semantic_tokens`
  ADD CONSTRAINT `semantic_tokens_ibfk_1` FOREIGN KEY (`primitive_token_id`) REFERENCES `primitive_tokens` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
