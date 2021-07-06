-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mar. 06 juil. 2021 à 09:36
-- Version du serveur :  5.7.24
-- Version de PHP : 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `db_portfolio`
--

-- --------------------------------------------------------

--
-- Structure de la table `table_articles`
--

CREATE TABLE `table_articles` (
  `article_id` int(11) NOT NULL,
  `article_title` varchar(255) NOT NULL,
  `article_date` date NOT NULL,
  `article_message` text NOT NULL,
  `article_author` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `table_projects`
--

CREATE TABLE `table_projects` (
  `project_id` int(11) NOT NULL,
  `project_title` varchar(255) NOT NULL,
  `project_thumbnail` varchar(255) NOT NULL,
  `project_context` text NOT NULL,
  `project_author` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `table_users`
--

CREATE TABLE `table_users` (
  `user_id` int(11) NOT NULL,
  `user_username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `table_users`
--

INSERT INTO `table_users` (`user_id`, `user_username`, `user_password`, `user_email`) VALUES
(1, 'nathan', '$2y$10$EL3gm57JXOcUucKx9iVKEuHuJS6WmdE9zXtuvTcKjeqG2cvmOiv2a', 'nathbout2@gmail.com');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `table_articles`
--
ALTER TABLE `table_articles`
  ADD PRIMARY KEY (`article_id`);

--
-- Index pour la table `table_projects`
--
ALTER TABLE `table_projects`
  ADD PRIMARY KEY (`project_id`);

--
-- Index pour la table `table_users`
--
ALTER TABLE `table_users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `table_articles`
--
ALTER TABLE `table_articles`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `table_projects`
--
ALTER TABLE `table_projects`
  MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `table_users`
--
ALTER TABLE `table_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
