-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 22, 2019 at 11:29 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `enquiry`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_enquiry_details`
--

CREATE TABLE `user_enquiry_details` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `subject` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `user_enquiry_details`
--

INSERT INTO `user_enquiry_details` (`id`, `name`, `subject`, `email`, `contact`, `description`, `created_at`, `updated_at`) VALUES
(2, 'Ishwar', 'Enquiry', 'ishwarsonar95@g', '9898989898', 'This is the first enquiry.', '2019-03-22 08:43:17', '0000-00-00 00:00:00'),
(3, 'Ishwar', 'Enquiry', 'ishwarsonar95@g', '7878787878', 'This is my first enquiry.', '2019-03-22 09:02:30', '0000-00-00 00:00:00'),
(4, 'Ishwar', 'Enquiry', 'ishwarsonar95@g', '7878787878', 'This is my first enquiry.', '2019-03-22 09:04:18', '0000-00-00 00:00:00'),
(10, 'asdfsdf', 'asfsdf', 'ishwarsonar95@gmail.com', '4646464646', 'sdfsdfsdf', '2019-03-22 09:50:00', '0000-00-00 00:00:00'),
(11, 'asdfsdf', 'asfsdf', 'ishwarsonar95@gmail.com', '4646464646', 'sdfsdfsdf', '2019-03-22 09:50:05', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_enquiry_details`
--
ALTER TABLE `user_enquiry_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user_enquiry_details`
--
ALTER TABLE `user_enquiry_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
