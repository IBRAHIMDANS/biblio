-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 06, 2017 at 01:04 PM
-- Server version: 10.1.26-MariaDB-0+deb9u1
-- PHP Version: 7.0.19-1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `biblio`
--

-- --------------------------------------------------------

--
-- Table structure for table `categorie`
--

CREATE TABLE `categorie` (
  `cat_id` int(11) NOT NULL,
  `cat_nom` varchar(255) NOT NULL,
  `cat_sup` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categorie`
--

INSERT INTO `categorie` (`cat_id`, `cat_nom`, `cat_sup`) VALUES
(1, 'Informatique', 0),
(2, 'Physique', 0),
(3, 'Math', 0),
(4, 'Psy', 0);

-- --------------------------------------------------------

--
-- Table structure for table `emprunt`
--

CREATE TABLE `emprunt` (
  `emp_id` int(11) NOT NULL,
  `emp_lvr_id` int(11) NOT NULL,
  `emp_usr_id` int(11) NOT NULL,
  `emp_date_debut` date NOT NULL,
  `emp_date_fin` date NOT NULL,
  `emp_nbr_jour` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `livre`
--

CREATE TABLE `livre` (
  `lvr_id` int(11) NOT NULL,
  `lvr_cat_id` int(11) NOT NULL,
  `lvr_titre` varchar(255) NOT NULL,
  `lvr_auteur` varchar(255) NOT NULL,
  `lvr_desc` varchar(255) NOT NULL,
  `lvr_sup` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `livre`
--

INSERT INTO `livre` (`lvr_id`, `lvr_cat_id`, `lvr_titre`, `lvr_auteur`, `lvr_desc`, `lvr_sup`) VALUES
(1, 1, 'C++', 'toto', 'Dev', 0),
(2, 1, 'Java', 'Paul', 'developpement Java', 0),
(3, 2, 'Application algébrique', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `usr_id` int(11) NOT NULL,
  `usr_nom` varchar(255) NOT NULL,
  `usr_prenom` varchar(255) NOT NULL,
  `usr_login` varchar(255) NOT NULL,
  `usr_psw` varchar(255) NOT NULL,
  `usr_type` int(11) NOT NULL DEFAULT '0',
  `usr_sup` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `utilisateur`
--

INSERT INTO `utilisateur` (`usr_id`, `usr_nom`, `usr_prenom`, `usr_login`, `usr_psw`, `usr_type`, `usr_sup`) VALUES
(1, 'halim', 'Djerroud', 'test', 'testpass', 0, 0),
(3, 'toto', 'titi', 'toto', 'toto', 0, 0),
(4, 'rr', 'rr', 'rr', 'rr', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `emprunt`
--
ALTER TABLE `emprunt`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `livre`
--
ALTER TABLE `livre`
  ADD PRIMARY KEY (`lvr_id`);

--
-- Indexes for table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`usr_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `emprunt`
--
ALTER TABLE `emprunt`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `livre`
--
ALTER TABLE `livre`
  MODIFY `lvr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `usr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
