-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  lun. 14 jan. 2019 à 15:59
-- Version du serveur :  5.7.21
-- Version de PHP :  5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `billet`
--

DROP TABLE IF EXISTS `billet`;
CREATE TABLE IF NOT EXISTS `billet` (
  `idBillet` int(11) NOT NULL AUTO_INCREMENT,
  `dateBillet` datetime NOT NULL,
  `titreBillet` varchar(50) NOT NULL,
  `ContenuBillet` varchar(50) NOT NULL,
  PRIMARY KEY (`idBillet`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `billet`
--

INSERT INTO `billet` (`idBillet`, `dateBillet`, `titreBillet`, `ContenuBillet`) VALUES
(1, '2019-01-14 15:15:31', 'Premier billet', 'Ceci est le premier billet sur notre blog'),
(2, '2019-01-14 15:17:15', 'En Formation', 'formation continue POO');

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

DROP TABLE IF EXISTS `commentaire`;
CREATE TABLE IF NOT EXISTS `commentaire` (
  `idCommentaire` int(11) NOT NULL AUTO_INCREMENT,
  `dateCommentaire` datetime NOT NULL,
  `auteurCommentaire` varchar(50) NOT NULL,
  `contenuCommentaire` text NOT NULL,
  `idBillet` int(11) NOT NULL,
  PRIMARY KEY (`idCommentaire`),
  KEY `idBillet` (`idBillet`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `commentaire`
--

INSERT INTO `commentaire` (`idCommentaire`, `dateCommentaire`, `auteurCommentaire`, `contenuCommentaire`, `idBillet`) VALUES
(1, '2019-01-14 15:32:27', 'Francis', 'Il faut aller plus vite SVP', 2),
(3, '2019-01-14 15:35:27', 'Simpson', 'Il faut enrichir ce blog très vite SVP', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
