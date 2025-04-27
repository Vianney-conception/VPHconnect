-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 15, 2025 at 04:31 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `connexion`
--

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int NOT NULL,
  `Titre` varchar(100) NOT NULL,
  `Nom_de_Fichier` varchar(100) NOT NULL,
  `Serie/film` varchar(100) NOT NULL,
  `Nombre(de_saison_ou_numéro_du_film)` varchar(100) NOT NULL,
  `disque` varchar(100) NOT NULL,
  `Théme` varchar(100) NOT NULL,
  `Réalisateur` varchar(100) NOT NULL,
  `Favoris` varchar(1000) NOT NULL,
  `acteurs_et_mot_clée` varchar(1000) NOT NULL,
  `recomendation` varchar(1000) NOT NULL,
  `autre` varchar(1000) NOT NULL,
  `date_de_sortie` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `Titre`, `Nom_de_Fichier`, `Serie/film`, `Nombre(de_saison_ou_numéro_du_film)`, `disque`, `Théme`, `Réalisateur`, `Favoris`, `acteurs_et_mot_clée`, `recomendation`, `autre`, `date_de_sortie`) VALUES
(1, 'Downton Abbey', 'downton.abbey', 'Serie', '6', '/diskE/', 'Romance', 'Julian Fellowes', 'AUCUN', 'ABSENT', 'ABSENT', 'ABSENT', 2014),
(2, 'Gladiator', 'Gladiator', 'Film', '1', '/diskE/', 'Drame', 'Ridley Scott', 'AUCUN', 'ABSENT', 'ABSENT', 'ABSENT', 2000),
(3, 'The Avengers', 'The.Avengers', 'Film', '1', '/diskE/', 'Aventure; Science-fiction', 'Joss Whedon', 'AUCUN', 'Marvel', 'ABSENT', 'ABSENT', 2012),
(4, 'Le Bureau des légendes', 'Le.Bureau.Des.Legendes', 'Serie', '2', '/diskE/', 'Thriller', 'Jacques Audiard', 'AUCUN', 'ABSENT', 'ABSENT', 'ABSENT', 2015),
(5, 'Wolverine : Le Combat de l\'immortel', 'The.Wolverine', 'Film', '1', '/diskE/', 'Aventure', 'James Mangold', 'AUCUN', 'ABSENT', 'ABSENT', 'ABSENT', 2013),
(6, 'Troupe D\'elite Dans L\'enfer Des Favelas', 'Troupe.D\'elite.Dans.L\'enfer.Des.Favelas', 'Film', '1', '/diskE/', 'Action', 'José Padilha', 'Aucun', 'Aucun', 'Aucun', 'Aucun', 2007),
(7, 'Le souper', 'Le.souper', 'Film', '1', '/diskE/', 'Historique', 'Édouard Molinaro', 'Aucun', 'Aucun', 'Aucun', 'Aucun', 1992),
(8, 'Raiponce', 'Raiponce', 'film', '1', '/diskE/', 'Animation', 'Nathan Greno & Byron Howard', 'Aucun', 'Walt Disney', 'Aucune', 'vide', 2010),
(9, 'Hibernatus', 'Hibernatus', 'film', '1', '/diskE/', 'Comedie', 'Édouard Molinaro', 'aucun', 'absent', 'aucun', 'a', 1969),
(10, 'Le grand restaurant', 'Le.Grand.Restorand', 'film', '1', '/diskE/', 'Comédie', 'Jacques Besnard', 'Aucun', 'Louis de Funès', 'Aucune', 'Aucune', 1967),
(11, 'Daltons', 'Daltons', 'dalton', 'ABSENT', '/diskF/', 'Comédie', 'ABSENT', 'AUCUN', 'AUCUN', 'AUCUN', 'AUCUN', 0),
(12, 'Iron Man', 'IronMan', 'film', '1', '/diskE/', 'Aventure', 'Jon Favreau', 'Aucun', 'aucun', 'aucun', 'aucun', 2008),
(13, 'Mission Impossible: Dead Reckoning', 'Mission.Impossible', 'film', '1', '/diskE/', 'Aventure', 'Christopher McQuarrie', 'Aucun', 'aucun', 'aucun', 'aucun', 2023),
(14, 'Cyrano de Bergerac avec Depardieu', 'Cyrano.de.Bergerac.Depardieu', 'film', '1', '/diskE/', 'Comédie', 'Jean-Paul Rappeneau', 'Aucun', 'aucun', 'aucun', 'aucun', 1990),
(15, 'Wonka', 'Wonka', 'film', '1', '/diskE/', 'Comédie', 'Paul King', 'Aucun', 'Aucun', 'Aucun', 'Aucun', 2023),
(16, 'Yannick', 'Yannick', 'film', '1', '/diskE/', 'Comédie', 'Quentin Dupieux', 'Aucun', 'aucun', 'aucun', 'aucun', 2024),
(17, 'L\'Armée des ombres', 'L.armée.des.ombres.1969', 'film', '1', '/diskE/', 'Roman', 'Jean-Pierre Melville', 'Aucun', 'Joseph Kessel', 'Aucune', 'Aucun', 1969),
(18, 'Le Dîner de cons', 'Le.Dîner.de.cons', 'film', '1', '/diskE/', 'Comédie', 'Francis Veber', 'Aucun', 'Aucun', 'Aucun', 'Aucun', 1998),
(19, 'Le Cerveau', 'Le.Cerveau', 'film', '1', '/diskE/', 'Comédie', 'Gérard Oury', 'Aucun', 'Bourvil', 'Aucun', 'Aucun', 1969),
(20, 'Bambi', 'Banbi', 'film', '2', '/diskE/', 'Animation', 'Clyde Geronimi', 'Aucun', 'Walt Disney', 'Aucun', 'Aucun', 1947),
(21, 'Joyeuse Pâque', 'joyeuse.paque', 'film', '1', '/diskE/', 'Comédie', 'Georges Lautner', 'Aucun', 'Belmondo', 'Aucune', 'aucune', 1984),
(22, 'Fantomas', 'Fantomas', 'serie', '5', '/diskE/', 'Comédie', 'André Hunebelle', 'A', 'Louis de Funes', 'A', 'A', 1964);

-- --------------------------------------------------------

--
-- Table structure for table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id` int NOT NULL,
  `pseudo` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `ip` varchar(20) NOT NULL,
  `token` text NOT NULL,
  `date_inscription` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Animation` varchar(255) DEFAULT NULL,
  `Aventure` varchar(255) DEFAULT NULL,
  `Comédie` varchar(255) DEFAULT NULL,
  `Documentaire` varchar(255) DEFAULT NULL,
  `Drame` varchar(255) DEFAULT NULL,
  `Fantaisie` varchar(255) DEFAULT NULL,
  `Horreur` varchar(255) DEFAULT NULL,
  `Romance` varchar(255) DEFAULT NULL,
  `Science-fiction` varchar(255) DEFAULT NULL,
  `Thriller` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `pseudo`, `email`, `password`, `ip`, `token`, `date_inscription`, `Animation`, `Aventure`, `Comédie`, `Documentaire`, `Drame`, `Fantaisie`, `Horreur`, `Romance`, `Science-fiction`, `Thriller`) VALUES
(1, 'Vianney', 'admin.vphconect@gervo.pac', '$2y$12$BbK.CxNCPIMpgqssg.p1OeSBIiR3Kr0LQCwJJSNloG7CDkQxWYcfe', '::1', '3054a490c57432d460dca700e7ecfcfe0755b0cabefcd17efdc7326ac1b7d7eceb0035e1e695287485908612def2a565e6e6fdd8eaa187eea07e51726a2a1832', '2023-11-12 15:29:46', '2', '1', '3', '1', '1', '1', '1', '1', '1', '1'),
(16, 'Marie-Pia', 'pacaudmarie22@gmail.com', '$2y$12$RziKfACFbHH38VpzPAAmj.a/21ovK./yAoWsZRA5p9MWrvfNTbCYq', '192.168.1.183', 'cf69d13443c08945fe0e4a596cde51cb3c9573541f64ac7c83a1daa6e3cd05988376b35cafd64829705c5a583d7e58c7c6a0d10547c2360b7377c2c5e1ac2b49', '2023-11-19 22:29:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Blanche', 'blanche@gmail.com', '$2y$12$RziKfACFbHH38VpzPAAmj.a/21ovK./yAoWsZRA5p9MWrvfNTbCYq', '192.168.1.27', '02156026bb2bc8af9af73762f5526aa97aa5f625c9ba8333b3ed91bf62f798262f5a8049cb4c216e78264d89b446f017b5828a2a757a5b71141cdf32041c1df3', '2023-11-12 21:45:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Vianney ', 'vpacaud.pac@gmail.com', '$2y$12$BbK.CxNCPIMpgqssg.p1OeSBIiR3Kr0LQCwJJSNloG7CDkQxWYcfe', '192.168.1.3', '8c893c0f2824c847474bb54a94f32137dacef9c0300e59e20294d555f6ac302d5cc3f0ee3e8409ae182fbd0e5933ea5d7a1d121a80e24a9ea8236bc1886963d5', '2023-11-13 07:17:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Pierre', 'ppacaud44@gmail.com', '$2y$12$2iTz3Tz3tc0YTtzB5kyKBuZzswSVymXkDKifrE6A.HoKAdc6tAIKK', '192.168.1.7', '9e42dc78dafd386b9f8e7d205964b5ab8656ed3c83f27492c24773a5b63d70a170da05b82da7de1665d805ddd07a541900a84debee7ac5517cea3d0d7a04dcb0', '2023-11-12 21:33:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'Test', 't@t.t', '$2y$12$pXTqejdY.HW1ol5VgcuS/ejJMfONYls0K0.XNXHIZPbgbjNzJu9Qi', '::1', '987f670e9b3438f022a0cb0b11fd0d290a0b0dcf09c50503c5b691be2c57497184f47d98f345333840867a14d8612ac93835f21d414a61e7b18fed8220c3ac32', '2023-11-17 17:47:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'Philomen', 'pacaud.philomene@gmail.com', '$2y$12$EEF.il98sch6QjGf4UEbge94R6gRRWed.xC/mH9pGN4ozx3F5E0dy', '192.168.1.4', 'c6041209422c7952b71d11776c3c1a3b3af4d2c8a54d73090d586750b99a1a60352cd753335f72d5a39fe8ab9a8fcff3a3d7c5ba9178d830aedd7b122d6ae552', '2023-11-26 16:06:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'Papa', 'ppacaud@free.fr', '$2y$12$xE/tL4U0u2uajmYMEk9LIuDAeySxxWTwju4K4c.1RXMBh7cVGWUG2', '192.168.1.6', 'bf412435dcbef9399bcafcfbf1a2fb09fd11340be19f1af957cf742718c24d8fa57d1635b73e4bda4b8859d9be4f924b7e421fc65c16304f9062f64b9a729460', '2023-11-26 16:54:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'Quatres espaces', 'j@j.j', '$2y$12$RziKfACFbHH38VpzPAAmj.a/21ovK./yAoWsZRA5p9MWrvfNTbCYq', '192.168.1.35', 'c5c7936faa73f898fef2fb08ae62502284490095d7b8ac94a95332bb2b905f07ce3829c4086d0bf4b7ceb927cc653d46d95362aef30f323a690dc518263b42a7', '2023-12-31 14:30:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'Vianney', 'vianney@gervo.fr', '$2y$12$eEVKWLM39dQ650l3FqhuO.J5w.8LYLC9SEPOM3RTi0wM2NkBlI5ZC', '::1', 'f2652f8ffa5cf27af4faef4faad629a35bf75f23aee23cb5b6ea2ba2cba99a184fee93eb1f98866092ab4f45b3ca34466b675c7066337bfd8a54c6782197635e', '2025-03-23 15:04:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
