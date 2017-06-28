-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 28 Iun 2017 la 20:07
-- Versiune server: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `answers`
--

CREATE TABLE `answers` (
  `id` int(11) NOT NULL,
  `answer_name` varchar(250) NOT NULL,
  `correct_answer` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `courses_name` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `courses`
--

INSERT INTO `courses` (`id`, `courses_name`) VALUES
(1, 'Cursul 1'),
(2, 'Cursul 2');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `displayed`
--

CREATE TABLE `displayed` (
  `id` int(11) NOT NULL,
  `display_module_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `modules`
--

CREATE TABLE `modules` (
  `id` int(11) NOT NULL,
  `module_name` varchar(250) NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `modules`
--

INSERT INTO `modules` (`id`, `module_name`, `course_id`) VALUES
(1, 'Modulul 1', 1),
(2, 'Modulul 2', 1),
(3, 'Modulul 3', 1),
(4, 'Modulul 4', 1),
(5, 'Modulul 5', 1),
(6, 'Modulul 1', 2),
(7, 'Modulul 2', 2),
(8, 'Modulul 3', 2),
(9, 'Modulul 4', 2),
(10, 'Modulul 5', 2);

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `question_name` varchar(250) NOT NULL,
  `module_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `questions`
--

INSERT INTO `questions` (`id`, `question_name`, `module_id`) VALUES
(1, 'Intrebarea 1 de la Modulul 1', 1),
(2, 'Intrebarea 2 de la Modulul 1', 1),
(3, 'Intrebarea 3 de la Modulul 1', 1),
(4, 'Intrebarea 4 de la Modulul 1', 1),
(5, 'Intrebarea 5 de la Modulul 1', 1),
(6, 'Intrebarea 6 de la Modulul 1', 1),
(7, 'Intrebarea 7 de la Modulul 1', 1),
(8, 'Intrebarea 8 de la Modulul 1', 1),
(9, 'Intrebarea 9 de la Modulul 1', 1),
(10, 'Intrebarea 10 de la Modulul 1', 1),
(11, 'Intrebarea 1 de la Modulul 2', 2),
(12, 'Intrebarea 2 de la Modulul 2', 2),
(13, 'Intrebarea 3 de la Modulul 2', 2),
(14, 'Intrebarea 4 de la Modulul 2', 2),
(15, 'Intrebarea 5 de la Modulul 2', 2),
(16, 'Intrebarea 6 de la Modulul 2', 2),
(17, 'Intrebarea 7 de la Modulul 2', 2),
(18, 'Intrebarea 8 de la Modulul 2', 2),
(19, 'Intrebarea 9 de la Modulul 2', 2),
(20, 'Intrebarea 10 de la Modulul 2', 2),
(21, 'Intrebarea 1 de la Modulul 3', 3),
(22, 'Intrebarea 2 de la Modulul 3', 3),
(23, 'Intrebarea 3 de la Modulul 3', 3),
(24, 'Intrebarea 4 de la Modulul 3', 3),
(25, 'Intrebarea 5 de la Modulul 3', 3),
(26, 'Intrebarea 6 de la Modulul 3', 3),
(27, 'Intrebarea 7 de la Modulul 3', 3),
(28, 'Intrebarea 8 de la Modulul 3', 3),
(29, 'Intrebarea 9 de la Modulul 3', 3),
(30, 'Intrebarea 10 de la Modulul 3', 3),
(31, 'Intrebarea 1 de la Modulul 4', 4),
(32, 'Intrebarea 2 de la Modulul 4', 4),
(33, 'Intrebarea 3 de la Modulul 4', 4),
(34, 'Intrebarea 4 de la Modulul 4', 4),
(35, 'Intrebarea 5 de la Modulul 4', 4),
(36, 'Intrebarea 6 de la Modulul 4', 4),
(37, 'Intrebarea 7 de la Modulul 4', 4),
(38, 'Intrebarea 8 de la Modulul 4', 4),
(39, 'Intrebarea 9 de la Modulul 4', 4),
(40, 'Intrebarea 10 de la Modulul 4', 4),
(41, 'Intrebarea 1 de la Modulul 5', 5),
(42, 'Intrebarea 2 de la Modulul 5', 5),
(43, 'Intrebarea 3 de la Modulul 5', 5),
(44, 'Intrebarea 4 de la Modulul 5', 5),
(45, 'Intrebarea 5 de la Modulul 5', 5),
(46, 'Intrebarea 6 de la Modulul 5', 5),
(47, 'Intrebarea 7 de la Modulul 5', 5),
(48, 'Intrebarea 8 de la Modulul 5', 5),
(49, 'Intrebarea 9 de la Modulul 5', 5),
(50, 'Intrebarea 10 de la Modulul 5', 5);

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `results`
--

CREATE TABLE `results` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `wrong_aswears` varchar(250) DEFAULT NULL,
  `correct_aswears` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `users`
--

INSERT INTO `users` (`id`, `user_name`) VALUES
(1, 'user1'),
(2, 'user2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `displayed`
--
ALTER TABLE `displayed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `display_module_id` (`display_module_id`),
  ADD KEY `question_id` (`question_id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `module_id` (`module_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `displayed`
--
ALTER TABLE `displayed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
