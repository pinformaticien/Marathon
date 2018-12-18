-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  ven. 05 oct. 2018 à 14:25
-- Version du serveur :  10.1.29-MariaDB
-- Version de PHP :  7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `infos`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `contenu` text NOT NULL,
  `photo` varchar(255) NOT NULL,
  `date_publication` date NOT NULL,
  `heure_publication` time NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_categorie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `titre`, `contenu`, `photo`, `date_publication`, `heure_publication`, `id_user`, `id_categorie`) VALUES
(4, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo', 'hello world', 'images/macky1.jpg', '2018-10-05', '00:31:41', 3, 3),
(5, 'Approche des elections presidentielle au Sénégal', '&lt;p&gt;Bonjour le monde&lt;/p&gt;', 'images/macky2.jpg', '2018-10-04', '20:53:04', 1, 7),
(6, 'Titre 3', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod&lt;br /&gt;\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,&lt;br /&gt;\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo&lt;br /&gt;\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse&lt;br /&gt;\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non&lt;br /&gt;\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;br /&gt;\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod&lt;br /&gt;\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,&lt;br /&gt;\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo&lt;br /&gt;\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse&lt;br /&gt;\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non&lt;br /&gt;\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;br /&gt;\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod&lt;br /&gt;\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,&lt;br /&gt;\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo&lt;br /&gt;\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse&lt;br /&gt;\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non&lt;br /&gt;\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/p&gt;', 'images/macky3.jpg', '2018-10-05', '00:17:58', 3, 6),
(7, 'Trump et les twittes', 'Strategie de communication du Pr Trump repose sur deux', 'images/twitter.png', '2018-10-05', '04:13:56', 3, 2),
(8, '60 ième anniversaire de la Guinée', 'Le Pr Alpha Conde repond aux journalistes de&nbsp; France 24 et TFM', 'images/condé.jpg', '2018-10-05', '04:27:53', 3, 2),
(9, 'Affaire Khalifa à nouveau devant le procureur', 'La Cour de justice de la Cedeao vient de provoquer un rebondissement inattendu dans l&#39;affaire Khalifa Sall', 'images/khalifa_sall.jpg', '2018-10-05', '04:32:04', 3, 2),
(10, 'Sortie de prison de Barthélémy Dias', 'L\'opposant Sénégalais Barthélémy Dias qui fait partie des exclus du Parti socialiste (mouvance présidentielle), s’en était vivement pris aux juges suite à la condamnation de son mentor, Khalifa Sall ', 'images/bathelemie.jpg', '2018-10-05', '03:02:00', 3, 2),
(11, 'LeSénégalaise est en deuil', 'Bruno Diatta est mort. L\'inamovible chef de protocole du Président Macky Sall est décédé, ce vendredi. Il a été précédemment chef de protocole des Présidents Senghor, Diouf et Wade.', 'images/diatta.jpg', '2018-10-05', '03:08:00', 2, 2),
(12, '\r\nLa Banque mondiale sonne d’alerte', 'Les économies d’Afrique subsaharienne continuent de se redresser mais à un rythme plus lent que prévu. C’est ce qu’a révélé le rapport semestriel de la Banque mondiale «Africa’s Pulse», publié ce mardi. Dans un communiqué parvenu à PressAfrik, la Banque mondiale via son rapport qui analyse la conjoncture économique africaine', 'images/banqueM.jpg', '2018-10-05', '04:24:00', 3, 1),
(13, 'La BAD débloque 121,5 milliards pour le Sénégal', 'c’est le montant signé entre le Sénégal et la Banque africaine de développement (BAD) pour quatre accords de financement.   Le ministre de l\'Economie, des Finances et du Plan a indiqué que « le projet de désenclavement des zones de production en appui au programme national de développement local', 'images/bad.jpg', '2018-10-05', '04:33:00', 3, 1),
(14, 'Hello world', 'Je suis le fameux Hello world', 'images/instagram.jpg', '2018-10-05', '13:57:19', 1, 6);

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `id_rubrique` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `nom`, `id_rubrique`) VALUES
(1, 'economie', 1),
(2, 'politique', 1),
(3, 'culture', 1),
(4, 'sports', 2),
(5, 'videos', 3),
(6, 'buzz', 1),
(7, 'forum', 2);

-- --------------------------------------------------------

--
-- Structure de la table `rubriques`
--

CREATE TABLE `rubriques` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `rubriques`
--

INSERT INTO `rubriques` (`id`, `nom`) VALUES
(1, 'senegal'),
(2, 'afrique'),
(3, 'monde');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `sexe` varchar(50) NOT NULL,
  `date_inscription` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `pseudo`, `email`, `pwd`, `sexe`, `date_inscription`) VALUES
(1, 'gasco', 'gasco@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Homme', '03/10/18 15:27:05'),
(2, 'math', 'math@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Femme', '04/10/18 19:34:16'),
(3, 'maur', 'maur@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Homme', '04/10/18 23:28:44'),
(4, 'laur', 'laur@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Femme', '04/10/18 23:30:17'),
(5, 'baur', 'baur@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Femme', '04/10/18 23:47:22');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `rubriques`
--
ALTER TABLE `rubriques`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `rubriques`
--
ALTER TABLE `rubriques`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
