-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 29 sep. 2023 à 10:05
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
-- Base de données : `mycoach`
--

-- --------------------------------------------------------

--
-- Structure de la table `activites`
--

DROP TABLE IF EXISTS `activites`;
CREATE TABLE IF NOT EXISTS `activites` (
  `num_act` int NOT NULL,
  `nom_act` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`num_act`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
  `Nom_lieu` varchar(50) NOT NULL,
  `Adresse` varchar(100) DEFAULT NULL,
  `Cp` int DEFAULT NULL,
  `Ville` varchar(50) DEFAULT NULL,
  `Salle` int DEFAULT NULL,
  PRIMARY KEY (`id_lieu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `lieu`
--

INSERT INTO `lieu` (`id_lieu`, `Nom_lieu`, `Adresse`, `Cp`, `Ville`, `Salle`) VALUES
(1, 'Basic fit', '14 rue du Faubourg Bonnefoy', 31000, 'Toulouse', 1),
(2, 'La Pyramide', '46 bd Matabiau', 31000, 'Toulouse', 2);

-- --------------------------------------------------------

--
-- Structure de la table `seances`
--

DROP TABLE IF EXISTS `seances`;
CREATE TABLE IF NOT EXISTS `seances` (
  `Num_seance` int NOT NULL,
  `Nom_l` int DEFAULT NULL,
  `Num_act` int DEFAULT NULL,
  `Jour` varchar(50) DEFAULT NULL,
  `Horaire_deb` time(6) DEFAULT NULL,
  `Horaire_fin` time(6) DEFAULT NULL,
  `niveau` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Num_seance`),
  KEY `Num_act` (`Num_act`),
  KEY `Nom_l` (`Nom_l`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `seances`
--

INSERT INTO `seances` (`Num_seance`, `Nom_l`, `Num_act`, `Jour`, `Horaire_deb`, `Horaire_fin`, `niveau`) VALUES
(1, 1, 1, 'Lundi', '09:00:00.000000', '11:00:00.000000', 'Debutant'),
(2, 2, 2, 'Mardi', '14:00:00.000000', '16:00:00.000000', 'Intermediaire'),
(3, 1, 3, 'Jeudi', '15:00:00.000000', '17:00:00.000000', 'Debutant');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
