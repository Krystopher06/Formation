-- --------------------------------------------------------
-- Hôte :                        localhost
-- Version du serveur:           5.7.24 - MySQL Community Server (GPL)
-- SE du serveur:                Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Listage de la structure de la base pour exercice_1
CREATE DATABASE IF NOT EXISTS `exercice_1` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `exercice_1`;

-- Listage de la structure de la table exercice_1. fournisseurs
CREATE TABLE IF NOT EXISTS `fournisseurs` (
  `num_F` int(8) NOT NULL AUTO_INCREMENT,
  `nom` varchar(40) DEFAULT '0',
  `ville` varchar(40) DEFAULT '0',
  PRIMARY KEY (`num_F`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Listage des données de la table exercice_1.fournisseurs : ~3 rows (environ)
/*!40000 ALTER TABLE `fournisseurs` DISABLE KEYS */;
INSERT INTO `fournisseurs` (`num_F`, `nom`, `ville`) VALUES
	(1, 'LDLC', 'Grasse'),
	(2, 'Fnac', 'Cannes'),
	(3, 'Boulanger', 'Mandelieu');
/*!40000 ALTER TABLE `fournisseurs` ENABLE KEYS */;

-- Listage de la structure de la table exercice_1. fournitures
CREATE TABLE IF NOT EXISTS `fournitures` (
  `num_F` int(8) NOT NULL AUTO_INCREMENT,
  `code_P` int(8) NOT NULL,
  `quantite` int(8) unsigned DEFAULT NULL,
  PRIMARY KEY (`num_F`,`code_P`),
  KEY `FK_fournitures_produits` (`code_P`),
  CONSTRAINT `FK_fournitures_fournisseurs` FOREIGN KEY (`num_F`) REFERENCES `fournisseurs` (`num_F`),
  CONSTRAINT `FK_fournitures_produits` FOREIGN KEY (`code_P`) REFERENCES `produits` (`code_P`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Listage des données de la table exercice_1.fournitures : ~6 rows (environ)
/*!40000 ALTER TABLE `fournitures` DISABLE KEYS */;
INSERT INTO `fournitures` (`num_F`, `code_P`, `quantite`) VALUES
	(1, 1, 20),
	(1, 3, 28),
	(2, 1, 28),
	(2, 2, 25),
	(3, 2, 28),
	(3, 3, 15);
/*!40000 ALTER TABLE `fournitures` ENABLE KEYS */;

-- Listage de la structure de la table exercice_1. produits
CREATE TABLE IF NOT EXISTS `produits` (
  `code_P` int(8) NOT NULL,
  `libelle` varchar(40) DEFAULT NULL,
  `origine` varchar(40) DEFAULT NULL,
  `couleur` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`code_P`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Listage des données de la table exercice_1.produits : ~4 rows (environ)
/*!40000 ALTER TABLE `produits` DISABLE KEYS */;
INSERT INTO `produits` (`code_P`, `libelle`, `origine`, `couleur`) VALUES
	(1, 'Lenovo Legion', 'chine', 'standard'),
	(2, 'HP', 'USA', 'Bleu'),
	(3, 'Souris Logitech', 'USA', 'Bleu'),
	(4, 'Clavier Corsaire', 'China', 'Vert');
/*!40000 ALTER TABLE `produits` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
