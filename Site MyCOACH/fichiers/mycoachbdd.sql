-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 06 oct. 2023 à 12:35
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mycoachbdd`
--

-- --------------------------------------------------------

--
-- Structure de la table `activites`
--

DROP TABLE IF EXISTS `activites`;
CREATE TABLE IF NOT EXISTS `activites` (
  `num_act` int NOT NULL,
  `nom_act` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`num_act`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `activites`
--

INSERT INTO `activites` (`num_act`, `nom_act`) VALUES
(1, 'musculation et force'),
(2, 'cardiovasculaire'),
(3, 'Perte de poids et gestion de la composition corporelle'),
(4, 'Amélioration de la flexibilité et de la mobilité'),
(5, 'Développement de la confiance en soi et de la moti');

-- --------------------------------------------------------

--
-- Structure de la table `lieu`
--

DROP TABLE IF EXISTS `lieu`;
CREATE TABLE IF NOT EXISTS `lieu` (
  `id_lieu` int NOT NULL,
  `nom_lieu` varchar(50) DEFAULT NULL,
  `adresse` varchar(100) DEFAULT NULL,
  `cp` int DEFAULT NULL,
  `ville` varchar(50) DEFAULT NULL,
  `salle` int DEFAULT NULL,
  PRIMARY KEY (`id_lieu`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `lieu`
--

INSERT INTO `lieu` (`id_lieu`, `nom_lieu`, `adresse`, `cp`, `ville`, `salle`) VALUES
(1, 'Basic fit', '14 rue du Faubourg Bonnefoy', 31000, 'Toulouse', 1),
(2, 'La Pyramide', '46 bd Matabiau', 31000, 'Toulouse', 2);

-- --------------------------------------------------------

--
-- Structure de la table `seances`
--

DROP TABLE IF EXISTS `seances`;
CREATE TABLE IF NOT EXISTS `seances` (
  `id_seance` int NOT NULL,
  `jour` varchar(50) DEFAULT NULL,
  `horaire_deb` time DEFAULT NULL,
  `horaire_fin` time DEFAULT NULL,
  `niveau` varchar(50) DEFAULT NULL,
  `id_lieu` int NOT NULL,
  `num_act` int NOT NULL,
  PRIMARY KEY (`id_seance`),
  KEY `id_lieu` (`id_lieu`),
  KEY `num_act` (`num_act`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `seances`
--

INSERT INTO `seances` (`id_seance`, `jour`, `horaire_deb`, `horaire_fin`, `niveau`, `id_lieu`, `num_act`) VALUES
(1, 'Lundi', '09:00:00', '11:00:00', 'Debutant', 1, 1),
(2, 'Mardi', '14:00:00', '16:00:00', 'Intermediaire', 2, 2);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
