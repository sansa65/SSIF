-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2018 at 06:02 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `forum_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` smallint(6) NOT NULL,
  `name` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `position` smallint(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `position`) VALUES
(1, 'Data Structures and Algorithms', 'Main Category for Data Structures and Algorithms. All topics must indicate subject/date of session it refers to', 1),
(2, 'Database Management Systems', 'Main Category for Database Management Systems. All topics must indicate subject/date of session it refers to', 2),
(3, 'Data Communications And Networks', 'Main Category for Data Communications And Networks. All topics must indicate subject/date of session it refers to\r\n', 3),
(4, 'Introduction to Computer Science', 'Main Category for Introduction to Computer Science. All topics must indicate subject/date of session it refers to\r\n', 4),
(5, 'Web Based Application Development', 'Main Category for Web Based Application Development. All topics must indicate subject/date of session it refers to\r\n', 5),
(6, 'Computer Architecture', 'Main Category for Computer Architecture. All topics must indicate subject/date of session it refers to\r\n', 6),
(7, 'Professional Development', 'Main Category for Professional Development. All topics must indicate subject/date of session it refers to\r\n', 7),
(9, 'Personal Development', 'Main Category for Personal Development. All topics must indicate subject/date of session it refers to\r\n', 9),
(8, 'Business Communication', 'Main Category for Business Communication. All topics must indicate subject/date of session it refers to\r\n', 8),
(10, 'World of Business', 'Main Category for World of Business. All topics must indicate subject/date of session it refers to\r\n', 10),
(11, 'Economics for Business', 'Main Category for Economics for Business. All topics must indicate subject/date of session it refers to\r\n', 11),
(12, 'Introduction to Finance and QM', 'Main Category for Introduction to Finance and QM. All topics must indicate subject/date of session it refers to\r\n', 12);

-- --------------------------------------------------------

--
-- Table structure for table `pm`
--

CREATE TABLE `pm` (
  `id` bigint(20) NOT NULL,
  `id2` int(11) NOT NULL,
  `title` varchar(256) NOT NULL,
  `user1` bigint(20) NOT NULL,
  `user2` bigint(20) NOT NULL,
  `message` text NOT NULL,
  `timestamp` int(10) NOT NULL,
  `user1read` varchar(3) NOT NULL,
  `user2read` varchar(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `parent` smallint(6) NOT NULL,
  `id` int(11) NOT NULL,
  `id2` int(11) NOT NULL,
  `title` varchar(256) NOT NULL,
  `message` longtext NOT NULL,
  `authorid` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `timestamp2` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `avatar` text NOT NULL,
  `signup_date` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `avatar`, `signup_date`) VALUES
(1, 'mafia17.1', '592b4b7d9ea54d221e61a87688f9281e4af7f687', 'admin@test.com', '', 1515858061),
(2, 'user', '836f7ef905dbc9da110b97ea4df6b5c6bb8ee6ea', 'user@test.com', '', 1515858484);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`,`id2`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
