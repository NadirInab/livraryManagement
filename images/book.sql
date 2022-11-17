-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 17 nov. 2022 à 20:55
-- Version du serveur : 10.4.25-MariaDB
-- Version de PHP : 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `youcodelibrary`
--

-- --------------------------------------------------------

--
-- Structure de la table `book`
--

CREATE TABLE `book` (
  `isbn` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `add_at` datetime DEFAULT current_timestamp(),
  `admin_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`isbn`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;