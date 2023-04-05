-- OM 2021.02.17
-- FICHIER MYSQL POUR FAIRE FONCTIONNER LES EXEMPLES
-- DE REQUETES MYSQL
-- Database: rama_adrian_info1a_module_164

-- Destruction de la BD si elle existe.
-- Pour être certain d'avoir la dernière version des données

DROP DATABASE IF EXISTS rama_adrian_info1a_module_164;

-- Création d'un nouvelle base de donnée

CREATE DATABASE IF NOT EXISTS rama_adrian_info1a_module_164;

-- Utilisation de cette base de donnée

USE rama_adrian_info1a_module_164;
-- --------------------------------------------------------

-- --------------------------------------------------------
-- Hôte :                        127.0.0.1
-- Version du serveur:           5.1.72-community - MySQL Community Server (GPL)
-- SE du serveur:                Win32
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Listage de la structure de la base pour rama_adrian_info1a_module_164
DROP DATABASE IF EXISTS `rama_adrian_info1a_module_164`;
CREATE DATABASE IF NOT EXISTS `rama_adrian_info1a_module_164` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `rama_adrian_info1a_module_164`;

-- Listage de la structure de la table rama_adrian_info1a_module_164. t_adresse
DROP TABLE IF EXISTS `t_adresse`;
CREATE TABLE IF NOT EXISTS `t_adresse` (
  `id_adresse` int(11) NOT NULL AUTO_INCREMENT,
  `nom_rue` varchar(50) DEFAULT NULL,
  `npa` varchar(10) DEFAULT NULL,
  `ville` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_adresse`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Listage des données de la table rama_adrian_info1a_module_164.t_adresse : 1 rows
/*!40000 ALTER TABLE `t_adresse` DISABLE KEYS */;
INSERT INTO `t_adresse` (`id_adresse`, `nom_rue`, `npa`, `ville`) VALUES
	(1, 'Chemin des Lieugex 35', '1860', 'Aigle');
/*!40000 ALTER TABLE `t_adresse` ENABLE KEYS */;

-- Listage de la structure de la table rama_adrian_info1a_module_164. t_cours
DROP TABLE IF EXISTS `t_cours`;
CREATE TABLE IF NOT EXISTS `t_cours` (
  `id_cours` int(11) NOT NULL AUTO_INCREMENT,
  `nom_cours` varchar(50) DEFAULT NULL,
  `document` blob,
  PRIMARY KEY (`id_cours`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Listage des données de la table rama_adrian_info1a_module_164.t_cours : 1 rows
/*!40000 ALTER TABLE `t_cours` DISABLE KEYS */;
INSERT INTO `t_cours` (`id_cours`, `nom_cours`, `document`) VALUES
	(1, 'Informatique', _binary 0x696E666F726D617469717565);
/*!40000 ALTER TABLE `t_cours` ENABLE KEYS */;

-- Listage de la structure de la table rama_adrian_info1a_module_164. t_eleve
DROP TABLE IF EXISTS `t_eleve`;
CREATE TABLE IF NOT EXISTS `t_eleve` (
  `id_eleve` int(11) NOT NULL AUTO_INCREMENT,
  `nom_pers` varchar(50) DEFAULT NULL,
  `prenom_pers` varchar(50) DEFAULT NULL,
  `date_naiss` date DEFAULT NULL,
  `cours` int(11) DEFAULT NULL,
  `adresse` int(11) DEFAULT NULL,
  `mail` int(11) DEFAULT NULL,
  `pays` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_eleve`),
  KEY `cours` (`cours`),
  KEY `adresse` (`adresse`),
  KEY `mail` (`mail`),
  KEY `pays` (`pays`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Listage des données de la table rama_adrian_info1a_module_164.t_eleve : 1 rows
/*!40000 ALTER TABLE `t_eleve` DISABLE KEYS */;
INSERT INTO `t_eleve` (`id_eleve`, `nom_pers`, `prenom_pers`, `date_naiss`, `cours`, `adresse`, `mail`, `pays`) VALUES
	(1, 'Rama', 'Adrian', '2006-11-15', 1, 1, 1, 1);
/*!40000 ALTER TABLE `t_eleve` ENABLE KEYS */;

-- Listage de la structure de la table rama_adrian_info1a_module_164. t_mail
DROP TABLE IF EXISTS `t_mail`;
CREATE TABLE IF NOT EXISTS `t_mail` (
  `id_mail` int(11) NOT NULL AUTO_INCREMENT,
  `mail` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_mail`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Listage des données de la table rama_adrian_info1a_module_164.t_mail : 0 rows
/*!40000 ALTER TABLE `t_mail` DISABLE KEYS */;
INSERT INTO `t_mail` (`id_mail`, `mail`) VALUES
	(1, 'adrianrama611@gmail.com');
/*!40000 ALTER TABLE `t_mail` ENABLE KEYS */;

-- Listage de la structure de la table rama_adrian_info1a_module_164. t_pays
DROP TABLE IF EXISTS `t_pays`;
CREATE TABLE IF NOT EXISTS `t_pays` (
  `id_pays` int(11) NOT NULL AUTO_INCREMENT,
  `pays` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_pays`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Listage des données de la table rama_adrian_info1a_module_164.t_pays : 1 rows
/*!40000 ALTER TABLE `t_pays` DISABLE KEYS */;
INSERT INTO `t_pays` (`id_pays`, `pays`) VALUES
	(1, 'Suisse');
/*!40000 ALTER TABLE `t_pays` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
