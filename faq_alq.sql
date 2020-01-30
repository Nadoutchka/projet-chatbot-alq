-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 30 jan. 2020 à 10:20
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `faq`
--

-- --------------------------------------------------------

--
-- Structure de la table `faq_alq`
--

DROP TABLE IF EXISTS `faq_alq`;
CREATE TABLE IF NOT EXISTS `faq_alq` (
  `id_question` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `questions` text NOT NULL,
  `reponses` text NOT NULL,
  PRIMARY KEY (`id_question`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `faq_alq`
--

INSERT INTO `faq_alq` (`id_question`, `questions`, `reponses`) VALUES
(1, 'Comment vous contacter ?', 'Contactez-nous au 07 89 45 61 23 ou par mail à l\'adresse contact@alq.fr'),
(2, 'Où êtes-vous situés ?', 'A l\'ISIMA, 1 rue de la Chebarde, 63100, Aubière'),
(3, 'Quels sont vos horaires d\'ouvertures ?', 'Nous sommes ouverts de 8h à 19h du lundi au vendredi, fermés les week-ends et jours fériés.'),
(4, 'Etes-vous situés hors de France ?', 'Non. Uniquement en France à Aubière.');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
