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
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for rama_adrian_info1a_module_164
DROP DATABASE IF EXISTS `rama_adrian_info1a_module_164`;
CREATE DATABASE IF NOT EXISTS `rama_adrian_info1a_module_164` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `rama_adrian_info1a_module_164`;

-- Dumping structure for table rama_adrian_info1a_module_164.t_adresse
DROP TABLE IF EXISTS `t_adresse`;
CREATE TABLE IF NOT EXISTS `t_adresse` (
  `id_adresse` int NOT NULL AUTO_INCREMENT,
  `nom_rue` varchar(50) DEFAULT NULL,
  `npa` varchar(10) DEFAULT NULL,
  `ville` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_adresse`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table rama_adrian_info1a_module_164.t_adresse: ~0 rows (approximately)
INSERT INTO `t_adresse` (`id_adresse`, `nom_rue`, `npa`, `ville`) VALUES
	(1, 'Chemin des Lieugex 35', '1860', 'Aigle');

-- Dumping structure for table rama_adrian_info1a_module_164.t_cours
DROP TABLE IF EXISTS `t_cours`;
CREATE TABLE IF NOT EXISTS `t_cours` (
  `id_cours` int NOT NULL AUTO_INCREMENT,
  `nom_cours` varchar(50) DEFAULT NULL,
  `document` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_cours`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table rama_adrian_info1a_module_164.t_cours: ~0 rows (approximately)
INSERT INTO `t_cours` (`id_cours`, `nom_cours`, `document`) VALUES
	(1, 'Informatique', 'Ici se trouve les informations pour l\'informatique'),
	(2, 'tfgdydfgbydfxcb', 'fsdevdscxxdcys v'),
	(3, 'math', 'Documents pour les maths'),
	(4, 'français', 'Documents pour français'),
	(5, 'test', 'Test'),
	(6, 'fghfgh', 'fghfgh');

-- Dumping structure for table rama_adrian_info1a_module_164.t_eleve
DROP TABLE IF EXISTS `t_eleve`;
CREATE TABLE IF NOT EXISTS `t_eleve` (
  `id_eleve` int NOT NULL AUTO_INCREMENT,
  `nom_pers` varchar(50) DEFAULT NULL,
  `prenom_pers` varchar(50) DEFAULT NULL,
  `date_naiss` date DEFAULT NULL,
  `cours` int NOT NULL,
  `adresse` int NOT NULL,
  `mail` int NOT NULL,
  `pays` int NOT NULL,
  PRIMARY KEY (`id_eleve`),
  KEY `cours` (`cours`),
  KEY `adresse` (`adresse`),
  KEY `mail` (`mail`),
  KEY `pays` (`pays`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table rama_adrian_info1a_module_164.t_eleve: ~0 rows (approximately)
INSERT INTO `t_eleve` (`id_eleve`, `nom_pers`, `prenom_pers`, `date_naiss`, `cours`, `adresse`, `mail`, `pays`) VALUES
	(1, 'Rama', 'Adrian', '2006-11-15', 1, 1, 1, 1);

-- Dumping structure for table rama_adrian_info1a_module_164.t_eleve_avoir_adresse
DROP TABLE IF EXISTS `t_eleve_avoir_adresse`;
CREATE TABLE IF NOT EXISTS `t_eleve_avoir_adresse` (
  `id_eleve_avoir_adresse` int NOT NULL AUTO_INCREMENT,
  `fk_adresse` int NOT NULL,
  `fk_eleve` int NOT NULL,
  PRIMARY KEY (`id_eleve_avoir_adresse`),
  KEY `fk_adresse` (`fk_adresse`),
  KEY `fk_eleve` (`fk_eleve`),
  CONSTRAINT `FK_el_avoir_Adresse` FOREIGN KEY (`fk_adresse`) REFERENCES `t_adresse` (`id_adresse`),
  CONSTRAINT `FK_Eleve_avoir_addr` FOREIGN KEY (`fk_eleve`) REFERENCES `t_eleve` (`id_eleve`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table rama_adrian_info1a_module_164.t_eleve_avoir_adresse: ~0 rows (approximately)

-- Dumping structure for table rama_adrian_info1a_module_164.t_eleve_avoir_cours
DROP TABLE IF EXISTS `t_eleve_avoir_cours`;
CREATE TABLE IF NOT EXISTS `t_eleve_avoir_cours` (
  `id_eleve_avoir_cours` int NOT NULL AUTO_INCREMENT,
  `fk_cours` int NOT NULL,
  `fk_eleve` int NOT NULL,
  PRIMARY KEY (`id_eleve_avoir_cours`),
  KEY `fk_cours` (`fk_cours`),
  KEY `fk_eleve` (`fk_eleve`),
  CONSTRAINT `FK_el_avoir_Cours` FOREIGN KEY (`fk_cours`) REFERENCES `t_cours` (`id_cours`),
  CONSTRAINT `FK_Eleve_avoir_cour` FOREIGN KEY (`fk_eleve`) REFERENCES `t_eleve` (`id_eleve`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table rama_adrian_info1a_module_164.t_eleve_avoir_cours: ~0 rows (approximately)

-- Dumping structure for table rama_adrian_info1a_module_164.t_eleve_avoir_mail
DROP TABLE IF EXISTS `t_eleve_avoir_mail`;
CREATE TABLE IF NOT EXISTS `t_eleve_avoir_mail` (
  `id_eleve_avoir_mail` int NOT NULL AUTO_INCREMENT,
  `fk_mail` int NOT NULL,
  `fk_eleve` int NOT NULL,
  PRIMARY KEY (`id_eleve_avoir_mail`),
  KEY `fk_mail` (`fk_mail`),
  KEY `fk_eleve` (`fk_eleve`),
  CONSTRAINT `FK_el_avoir_Mail` FOREIGN KEY (`fk_mail`) REFERENCES `t_mail` (`id_mail`),
  CONSTRAINT `FK_Eleve_avoir_email` FOREIGN KEY (`fk_eleve`) REFERENCES `t_eleve` (`id_eleve`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table rama_adrian_info1a_module_164.t_eleve_avoir_mail: ~0 rows (approximately)

-- Dumping structure for table rama_adrian_info1a_module_164.t_eleve_avoir_pays
DROP TABLE IF EXISTS `t_eleve_avoir_pays`;
CREATE TABLE IF NOT EXISTS `t_eleve_avoir_pays` (
  `id_eleve_avoir_pays` int NOT NULL AUTO_INCREMENT,
  `fk_pays` int NOT NULL,
  `fk_eleve` int NOT NULL,
  PRIMARY KEY (`id_eleve_avoir_pays`),
  KEY `fk_pays` (`fk_pays`),
  KEY `fk_eleve` (`fk_eleve`),
  CONSTRAINT `FK_el_avoir_Pays` FOREIGN KEY (`fk_pays`) REFERENCES `t_pays` (`id_pays`),
  CONSTRAINT `FK_Eleve_avoir_pay` FOREIGN KEY (`fk_eleve`) REFERENCES `t_eleve` (`id_eleve`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table rama_adrian_info1a_module_164.t_eleve_avoir_pays: ~0 rows (approximately)

-- Dumping structure for table rama_adrian_info1a_module_164.t_mail
DROP TABLE IF EXISTS `t_mail`;
CREATE TABLE IF NOT EXISTS `t_mail` (
  `id_mail` int NOT NULL AUTO_INCREMENT,
  `mail` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_mail`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table rama_adrian_info1a_module_164.t_mail: ~0 rows (approximately)
INSERT INTO `t_mail` (`id_mail`, `mail`) VALUES
	(1, 'adrianrama611@gmail.com');

-- Dumping structure for table rama_adrian_info1a_module_164.t_pays
DROP TABLE IF EXISTS `t_pays`;
CREATE TABLE IF NOT EXISTS `t_pays` (
  `id_pays` int NOT NULL AUTO_INCREMENT,
  `pays` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_pays`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table rama_adrian_info1a_module_164.t_pays: ~0 rows (approximately)
INSERT INTO `t_pays` (`id_pays`, `pays`) VALUES
	(1, 'Suisse');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
