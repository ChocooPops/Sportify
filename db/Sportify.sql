-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql_db
-- Generation Time: Jan 02, 2024 at 11:24 AM
-- Server version: 8.2.0
-- PHP Version: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Sportify`
--

-- --------------------------------------------------------

--
-- Table structure for table `EVENEMENT`
--

CREATE TABLE `EVENEMENT` (
  `EVENEMENT_ID` int NOT NULL,
  `NOM_EVENEMENT` varchar(25) NOT NULL,
  `DATE_EVENEMENT` date NOT NULL,
  `EQUIPE_DOMICILE` varchar(25) NOT NULL,
  `EQUIPE_EXTERIEUR` varchar(25) NOT NULL,
  `COTE_DOMICILE` float NOT NULL,
  `COTE_EXTERIEUR` float NOT NULL,
  `CAT_SPORT` varchar(25) NOT NULL,
  `ACTIVE` int DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `EVENEMENT`
--

INSERT INTO `EVENEMENT` (`EVENEMENT_ID`, `NOM_EVENEMENT`, `DATE_EVENEMENT`, `EQUIPE_DOMICILE`, `EQUIPE_EXTERIEUR`, `COTE_DOMICILE`, `COTE_EXTERIEUR`, `CAT_SPORT`, `ACTIVE`) VALUES
(2, 'LIGUE 1', '2023-10-23', 'OL', 'ASSE', 1.8, 2.2, 'Football', 1),
(3, 'LIGA', '2023-12-21', 'BARCELONA', 'REAL MADRID', 1.8, 2, 'Football', 1),
(4, 'LIGA', '2023-12-21', 'ATLETICO MADRID', 'SEVILLE', 1.5, 2.5, 'Football', 1),
(5, 'PREMIER LEAGUE', '2023-11-21', 'MAN U', 'MAN C', 1.5, 2.5, 'Football', 1);

-- --------------------------------------------------------

--
-- Table structure for table `INVENTAIRE`
--

CREATE TABLE `INVENTAIRE` (
  `INVENTAIRE_ID` int NOT NULL,
  `UTILISATEUR_ID` int NOT NULL,
  `ITEM_ID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `INVENTAIRE`
--

INSERT INTO `INVENTAIRE` (`INVENTAIRE_ID`, `UTILISATEUR_ID`, `ITEM_ID`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ITEMS`
--

CREATE TABLE `ITEMS` (
  `ITEM_ID` int NOT NULL,
  `NOM_ITEM` varchar(25) NOT NULL,
  `TYPE` varchar(25) NOT NULL,
  `DESCRIPTION` varchar(256) NOT NULL,
  `PRIX` int NOT NULL,
  `COULEUR` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ITEMS`
--

INSERT INTO `ITEMS` (`ITEM_ID`, `NOM_ITEM`, `TYPE`, `DESCRIPTION`, `PRIX`, `COULEUR`) VALUES
(1, 'Kimono', 'Icone', 'Kimono de Karaté', 400, 'Blanc'),
(2, 'Baseball couronné', 'Icone', 'Balle de Baseball couronné', 250, 'Blanc'),
(3, 'Crampons', 'Icone', 'Crampons de Foot', 250, 'Bleu'),
(4, 'Casque', 'Icone', 'Casque de Rallye', 300, 'Vert'),
(5, 'Rugby', 'Icone', 'Balle de Rugby', 300, 'Bleu'),
(6, 'Pelé', 'Icone', 'Maillot floqué Pelé', 1000, 'Bleu'),
(7, 'Vitesse', 'Icone', 'Balle de Baseball en feu', 250, 'Rouge'),
(8, 'Foot', 'Icone', 'Ballon de Foot', 250, 'Blanc'),
(9, 'Ballons', 'Icone', 'Ballons de sports', 300, 'Orange'),
(10, 'Baseball', 'Icone', 'Balle de Baseball', 250, 'Blanc'),
(11, 'Archer', 'Icone', 'Archer profesionnel', 250, 'Vert'),
(12, 'JudoKa', 'Icone', 'Kimono de Judo', 350, 'Blanc'),
(13, 'Hokey', 'Icone', 'Palet de Hokey', 250, 'Noir'),
(14, 'Foot rétro', 'Icone', 'Ballon de Foot rétro', 500, 'Marron'),
(15, 'Champion', 'Badge', 'Badge de champion', 200, 'Violet'),
(16, 'Sergent', 'Badge', 'Badge de sergent', 200, 'Jaune'),
(17, 'Buteur', 'Badge', 'Meilleur buteur', 200, 'Jaune'),
(18, 'Home Run', 'Badge', 'Record Home Run', 250, 'Gris'),
(19, 'Batte Baseball', 'Badge', 'Batte de Baseball stylé', 200, 'Rouge'),
(20, 'Police', 'Badge', 'Shérif de police', 250, 'Jaune'),
(21, 'JO', 'Badge', 'Logo des Jeux Olympiques', 300, 'Noir'),
(22, 'Médaille', 'Badge', 'Médaille de première place', 350, 'Jaune'),
(23, 'Terrain Basket', 'Badge', 'Terrain de Basketball', 400, 'Marron'),
(24, 'Terrain Foot', 'Badge', 'Terrain de Fottball', 400, 'Vert'),
(25, 'Coupe', 'Badge', 'Coupe vainqueur', 350, 'Jaune');

-- --------------------------------------------------------

--
-- Table structure for table `POST`
--

CREATE TABLE `POST` (
  `POST_ID` int NOT NULL,
  `AUTEUR_ID` int NOT NULL,
  `AUTEUR_NOM` varchar(50) NOT NULL,
  `NOM_TOPIC` varchar(25) NOT NULL,
  `DESCRIPTION_POST` varchar(255) DEFAULT ' ',
  `NB_LIKE` int DEFAULT '0',
  `PARENT_POST` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `POST`
--

INSERT INTO `POST` (`POST_ID`, `AUTEUR_ID`, `AUTEUR_NOM`, `NOM_TOPIC`, `DESCRIPTION_POST`, `NB_LIKE`, `PARENT_POST`) VALUES
(1, 1, 'admin', 'Topic 1', 'Le jeune joueur du FC Barcelone Ansu Fati actuellement preter a Brighton est sur le point d\'etre transfere definitivement ezffezfdzefezfzefzefzefzef z feezf zef zef zef zef zef zefze fzef zefze fzefze', 0, 0),
(2, 1, 'admin', 'Topic 2', 'Le jeune joueur du Real Madrid Arda Guler actuellement preter a Besiktas est sur le point d\'etre transfere definitivement ezffezfdzefezfzefzefzefzef z feezf zef zef zef zef zef zefze fzef zefze fzefze', 0, 0),
(3, 1, 'admin', 'Topic 3', 'Le jeune joueur de L\'atletico Madrid Joao Felix actuellement preter a Barcelone est sur le point d\'etre transfere definitivement ezffezfdzefezfzefzefzefzef z feezf zef zef zef zef zef zefze fzef zefze fzefze', 0, 0),
(4, 1, 'admin', 'Topic 4', 'Le jeune joueur du PSG Xavi Simons actuellement preter au PSV est sur le point d\'etre transfere definitivement ezffezfdzefezfzefzefzefzef z feezf zef zef zef zef zef zefze fzef zefze fzefze', 0, 0),
(5, 1, 'admin', 'Suiii', 'Salut tout le monde', 0, 0),
(6, 1, 'admin', 'HEHEHE', 'KKDZKDZO DZDKAKDZ KAJDOKA', 0, 0),
(12, 1, 'admin', 'Super transfert', 'Cool comme transfert', 0, 1),
(13, 1, 'admin', 'LVOA', 'FHEJZH', 0, 0),
(14, 1, 'admin', 'fAIT ', 'REVE', 0, 1),
(15, 1, 'admin', 'HAHAHAHA', 'Beni aziz', 0, 0),
(16, 1, 'admin', 'Vile', '', 0, 15),
(17, 1, 'admin', 'J\'adore', 'Meilleur ville de la wilaya de setif', 0, 15),
(18, 1, 'admin', 'Incroyable', 'J\'aimerai qu\'il reussise', 0, 1),
(19, 1, 'admin', 'Bienvenue', 'Salut mon gars', 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `PRONOSTIC`
--

CREATE TABLE `PRONOSTIC` (
  `PRONOSTIC_ID` int NOT NULL,
  `PRONOSTIQUEUR_ID` int NOT NULL,
  `MATCH_PRONO` int NOT NULL,
  `COTE_PRONO` decimal(10,1) NOT NULL,
  `DATE_PRONO` date NOT NULL,
  `MISE` int DEFAULT '0',
  `STATUS` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `PRONOSTIC`
--

INSERT INTO `PRONOSTIC` (`PRONOSTIC_ID`, `PRONOSTIQUEUR_ID`, `MATCH_PRONO`, `COTE_PRONO`, `DATE_PRONO`, `MISE`, `STATUS`) VALUES
(1, 1, 4, 1.5, '2023-11-24', 200, 0),
(2, 1, 2, 1.8, '2023-11-24', 9000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `UTILISATEUR`
--

CREATE TABLE `UTILISATEUR` (
  `UTILISATEUR_ID` int NOT NULL,
  `PSEUDO` varchar(50) NOT NULL,
  `EMAIL` varchar(100) NOT NULL,
  `MOT_DE_PASSE` varchar(150) NOT NULL,
  `POINT_ACTUEL` decimal(10,2) DEFAULT '0.00',
  `POINT_CLASSEMENT` int DEFAULT '0',
  `STATUS` int DEFAULT '0',
  `SCORE_JEU` int DEFAULT '0',
  `LAST_CONNECTION` date DEFAULT NULL,
  `PDP_SRC` varchar(100) DEFAULT 'http://localhost/public/images/logo2.png',
  `BADGE_SRC` varchar(100) DEFAULT 'http://localhost/public/images/logo2.png',
  `ECUSSON_SRC` varchar(100) DEFAULT 'http://localhost/public/images/logo2.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `UTILISATEUR`
--

INSERT INTO `UTILISATEUR` (`UTILISATEUR_ID`, `PSEUDO`, `EMAIL`, `MOT_DE_PASSE`, `POINT_ACTUEL`, `POINT_CLASSEMENT`, `STATUS`, `SCORE_JEU`, `LAST_CONNECTION`) VALUES
(1, 'admin', 'admin@admin.fr', '$2y$10$Oz1T4KvH6JaDhLg/iKWu5eVt/eEgH17srKnvYPhsJ9vU3z6AjpoFi', 780.00, 10000, 0, 0, '2024-01-02'),
(2, 'RamazanLaChienneDu69', 'RamazanLaChienneDu69@example.com', '$2y$10$Oz1T4KvH6JaDhLg/iKWu5eVt/eEgH17srKnvYPhsJ9vU3z6AjpoFi', 100.00, 0, 1, 0, NULL),
(3, 'Keap', 'Keap@example.com', '$2y$10$Oz1T4KvH6JaDhLg/iKWu5eVt/eEgH17srKnvYPhsJ9vU3z6AjpoFi', 100.00, 0, 1, 0, NULL),
(4, 'RafikLaTrikDu69', 'RafikLaTrikDu69@example.com', '$2y$10$Oz1T4KvH6JaDhLg/iKWu5eVt/eEgH17srKnvYPhsJ9vU3z6AjpoFi', 100.00, 0, 1, 0, NULL);

--
-- Table structure for table `LIKES`
--

CREATE TABLE `LIKES` (
  `POST_ID` int NOT NULL,
  `UTILISATEUR_ID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


--
-- Dumping data for table `LIKES`
--
INSERT INTO `LIKES` (`POST_ID`, `UTILISATEUR_ID`) VALUES
(1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `EVENEMENT`
--
ALTER TABLE `EVENEMENT`
  ADD PRIMARY KEY (`EVENEMENT_ID`);

--
-- Indexes for table `INVENTAIRE`
--
ALTER TABLE `INVENTAIRE`
  ADD PRIMARY KEY (`INVENTAIRE_ID`),
  ADD UNIQUE KEY `UTILISATEUR_ID` (`UTILISATEUR_ID`,`ITEM_ID`),
  ADD KEY `FK_ITEM_ID` (`ITEM_ID`);

--
-- Indexes for table `ITEMS`
--
ALTER TABLE `ITEMS`
  ADD PRIMARY KEY (`ITEM_ID`);

--
-- Indexes for table `POST`
--
ALTER TABLE `POST`
  ADD PRIMARY KEY (`POST_ID`),
  ADD KEY `FK_AUTEUR_ID` (`AUTEUR_ID`);

--
-- Indexes for table `PRONOSTIC`
--
ALTER TABLE `PRONOSTIC`
  ADD PRIMARY KEY (`PRONOSTIC_ID`),
  ADD KEY `FK_PRONOSTIQUEUR_ID` (`PRONOSTIQUEUR_ID`),
  ADD KEY `FK_MATCH_PRONO` (`MATCH_PRONO`);

--
-- Indexes for table `UTILISATEUR`
--
ALTER TABLE `UTILISATEUR`
  ADD PRIMARY KEY (`UTILISATEUR_ID`);

--
-- AUTO_INCREMENT for table `POST`
--
ALTER TABLE `POST`
  MODIFY `POST_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `UTILISATEUR`
--
ALTER TABLE `UTILISATEUR`
  MODIFY `UTILISATEUR_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Indexes for table `LIKES`
--
ALTER TABLE `LIKES`
  ADD PRIMARY KEY (`POST_ID`,`UTILISATEUR_ID`),
  ADD KEY `FK_POST_ID_LIKES` (`POST_ID`),
  ADD KEY `FK_UTILISATEUR_ID_LIKES` (`UTILISATEUR_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `EVENEMENT`
--
ALTER TABLE `EVENEMENT`
  MODIFY `EVENEMENT_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `INVENTAIRE`
--
ALTER TABLE `INVENTAIRE`
  MODIFY `INVENTAIRE_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ITEMS`
--
ALTER TABLE `ITEMS`
  MODIFY `ITEM_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;


--
-- AUTO_INCREMENT for table `PRONOSTIC`
--
ALTER TABLE `PRONOSTIC`
  MODIFY `PRONOSTIC_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;


--
-- Constraints for dumped tables
--

--
-- Constraints for table `INVENTAIRE`
--
ALTER TABLE `INVENTAIRE`
  ADD CONSTRAINT `FK_ITEM_ID` FOREIGN KEY (`ITEM_ID`) REFERENCES `ITEMS` (`ITEM_ID`),
  ADD CONSTRAINT `FK_USER_ID_INVENTAIRE` FOREIGN KEY (`UTILISATEUR_ID`) REFERENCES `UTILISATEUR` (`UTILISATEUR_ID`),
  ADD CONSTRAINT `FK_UTILISATEUR_ID` FOREIGN KEY (`UTILISATEUR_ID`) REFERENCES `UTILISATEUR` (`UTILISATEUR_ID`);

--
-- Constraints for table `POST`
--
ALTER TABLE `POST`
  ADD CONSTRAINT `FK_AUTEUR_ID` FOREIGN KEY (`AUTEUR_ID`) REFERENCES `UTILISATEUR` (`UTILISATEUR_ID`);

--
-- Constraints for table `PRONOSTIC`
--
ALTER TABLE `PRONOSTIC`
  ADD CONSTRAINT `FK_MATCH_PRONO` FOREIGN KEY (`MATCH_PRONO`) REFERENCES `EVENEMENT` (`EVENEMENT_ID`),
  ADD CONSTRAINT `FK_PRONOSTIQUEUR_ID` FOREIGN KEY (`PRONOSTIQUEUR_ID`) REFERENCES `UTILISATEUR` (`UTILISATEUR_ID`);



--
-- Constraints for table `LIKES
--
ALTER TABLE `LIKES`
  ADD CONSTRAINT `FK_POST_ID_LIKES` FOREIGN KEY (`POST_ID`) REFERENCES `POST` (`POST_ID`);
  -- ADD CONSTRAINT `FK_UTILISATEUR_ID_LIKES` FOREIGN KEY (`UTILISATEUR_ID`) REFERENCES `UTILISATEUR` (`UTILISATEUR_ID`);
COMMIT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
