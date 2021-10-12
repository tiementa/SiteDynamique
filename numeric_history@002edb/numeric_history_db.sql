-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 12 oct. 2021 à 13:09
-- Version du serveur : 10.4.20-MariaDB
-- Version de PHP : 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `numeric_history.db`
--

-- --------------------------------------------------------

--
-- Structure de la table `personnages`
--

CREATE TABLE `personnages` (
  `id` int(11) NOT NULL,
  `nom_complet` varchar(125) NOT NULL,
  `nom_image` varchar(125) NOT NULL,
  `historique` varchar(1000) NOT NULL,
  `titre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `personnages`
--

INSERT INTO `personnages` (`id`, `nom_complet`, `nom_image`, `historique`, `titre`) VALUES
(4, 'Bill Gates', '61645eb5b3be36.08349826.jpg', 'Rappelez-vous l’histoire de l’Intel 4004 qui était devenu le favori des hobbyistes (pièce du circuit intégré). Un de ses descendants était le processeur Intel 8088. Au même moment, vers 1980, IBM spécialiste des gros ordinateurs d’entreprise avait un PDG visionnaire qui voulait entrer sur le marché de l’ordinateur personnel, le personal computer ou PC. Comprenant que la culture de son entreprise ne l’aiderait pas il créa une unité quasiment autonome chargée de développer le PC d’IBM, l’IBM PC. D’habitude, IBM concevait ses ordinateurs de A à Z, du processeur aux logiciels, mais là, pour aller plus vite, et peut-être aussi pour éviter de retomber dans une action anti-trust dont il sortait à peine, IBM fit le choix de sous-traiter le processeur et le logiciel, et de ne spécifier que la façon de les faire fonctionner ensemble. Le processeur échut à Intel, et le logiciel à Microsoft, une toute petite start-up dirigée par un inconnu, BillGates. On peut dire que IBM leur avait offert un futu', 'PDG Microsoft windows'),
(5, 'Marck Zuckerberg', '6164655ed9c742.59067403.jpg', 'Mark Zuckerberg, informaticien américain, est connu pour avoir fondé le réseau social Facebook en 2004, avec ses camarades Eduardo Saverin, Dustin Moskovitz et Chris Hughes, alors qu\'il était étudiant à Harvard. En 2014, sa fortune était estimée à 30 milliards de dollars. En 2003, il rencontre sa compagne Priscilla Chan, une pédiatre qu\'il épouse en 2012. Le couple accueille son premier enfant, une petit Max, en décembre 2015.', 'CEO Facebook'),
(6, 'Jeffrey Bezos', '616466321adec3.80261530.jpg', 'Jorgensen le 12 janvier 1964 à Albuquerque (Nouveau-Mexique), est un entrepreneur, industriel, propriétaire de médias et milliardaire américain. Il est notamment connu pour être le fondateur, principal actionnaire et ancien président-directeur général (PDG) d\'Amazon et le fondateur de l\'entreprise spatiale Blue Origin, proposant notamment un accès à l\'espace pour le tourisme spatial.', 'CEO Amazon'),
(7, 'Cheick Modibo Diarra', '6164675ea62225.21394203.jpg', 'Cheick Modibo Diarra, né en 1952 à Nioro-du-Sahel, au Mali, est un astrophysicien et homme d\'État malien, Premier ministre du 17 avril au 11 décembre 2012. Il est également citoyen américain. Il est président de Microsoft Afrique depuis février 2006.', 'PDG Microsoft Afrique'),
(8, 'Steve Jobs et Stephen Wozniak ', '616467dfdb9762.78934439.jpg', 'Steve Jobs et Stephen Wozniak étaient justement de ces amateurs qui cherchaient un modèle économique pour les ordinateurs personnels. En 1976, ils fondent la société Apple Computer pour distribuer l’Apple I qu’avait conçu Wozniak et qu’il assemblait dans le garage de Jobs (ah les garages !). L’Apple I fut suivi de l’Apple II, mais l’étape suivante la plus importante fut la création du Macintosh qui reprenait des idées développées par Xerox (les photocopieurs) et que que Jobs avait pu voir lors d’une visite. Les chercheurs de Xerox avaient du talent pour inventer un tas de choses, mais leurs patrons avaient du mal à vendre quelque chose qui ne ressemblait pas à un photocopieur ! Au contraire, Jobs ne s’arrêtait pas à ses détails, et il comprit vite qu’un Macintosh plus une imprimante faisaient un excellent poste de travail, d’où la création de l’imprimante laser LaserWriter. C’était le début d’une histoire assez mouvementée, où Jobs est proprement viré de chez Apple en 1985, y revient 1', 'CEO Apple'),
(9, 'Mitchell Elegbe ', '616468ac3b4fc9.04396014.jpg', 'L’aventure commence en 2002, quand une petite start-up fondée par Mitchell Elegbe voit le jour à Lagos, au Nigéria. Petit à petit, le groupe commence à bâtir sa réussite sur le paiement électronique et les transactions financières. Comptant aujourd’hui plus de trente millions de consommateurs, et enregistrant plus de deux milliards de dollars de transaction, Interswitch est devenue une plateforme de référence pour les transactions bancaires en tout genre.', 'PDG d\'Interswitch'),
(10, 'Alan Turing', '6164693f5ff9c4.59109234.jpg', 'Alan Turing est un personnage que l’on reconnaît comme un des pères de l’informatique moderne. Il a proposé en 1936, avant l’apparition des premiers ordinateurs, une formalisation de la notion de calcul et de ses limites intrinsèques, toujours pertinente 80 ans après ! Cette formalisation s’est faite au travers d’une machine abstraite, capable de réaliser n’importe quel calcul. Une machine à instructions programmable, dont tous les ordinateurs d’aujourd’hui ont hérité. Mais il fut aussi un homme de son siècle, gravement troublé par la Seconde Guerre Mondiale. Les communications des sous-marins allemands étaient codées par une machine : la machine Enigma, réputée incraquable. Or Alan Turing parvint à en percer la clef, et inventa une autre machine qui permit de décoder jusqu’à 120 messages par heure. On considère aujourd’hui que cet exploit, longtemps resté secret défense, place Alan Turing comme un acteur essentiel de la débâcle des nazis. Enfin, Alan Turing a été le témoin et l’acteur', 'Un des pères de l\'informatique'),
(11, 'Frances Allen ', '6164699546ccc6.95456012.jpg', 'L’informaticienne américaine Frances Allen est en 2008 la première femme à obtenir le Prix Turing, l’équivalent pour les informaticiens du Prix Nobel, notamment pour ses travaux sur la compilation. L’opération de compilation d’une suite de 0 et de 1 représentant les instructions écrites par un programmeur en une autre suite de 0 et de 1 représentant des instructions correspondantes en langage machine est une opération complexe. C’est d’autant plus vrai lorsque le programme est long. Frances Allen a travaillé dès le début des années 70 sur l’optimisation de la compilation. Son but était de faire en sorte que le résultat d’une compilation donne des instructions en langage machine que l’ordinateur puisse exécuter le plus rapidement possible. Cela permet de soulager les humains qui peuvent ainsi écrire des programmes plus facilement compréhensibles en sachant que le compilateur se chargera de certaines opérations complexes permettant de gagner du temps lorsque le programme est lancé. Ces d', 'Informaticienne'),
(12, 'Tim Berners Lee', '61646a18e455d0.21014157.jpg', 'Si vous surfez sur le web avec votre ordinateur, c’est grâce à Tim Berners Lee ! Tout commence au Conseil Européen pour la Recherche Nucléaire : le CERN. Le chercheur propose de travailler sur l’amélioration du partage de toutes les informations sur un seul réseau, le but étant de faciliter la communication instantanée autour des travaux des physiciens et leur permettre d’être en permanence en contact entre eux, depuis leurs pays respectifs ou au sein du CERN à Genève. Avec ses recherches, Tim Berners Lee tente de réaliser ce vieux rêve de créer un réseau dynamique, constitué par un ensemble de documents informatiques liés entre eux. C’est ce que Ted Nelson aura appelé en 1965 l’Hypertexte, un texte avec des liens permettant facilement d’aller d’une partie à une autre, d’un mot à sa définition, d’un paragraphe à une note, d’une section à une autre. Le Web de Tim Berners Lee c’est tout ça en très simplifié, mais à l’échelle planétaire. C’est en mai 1990 qu’il baptise son réseau, World W', 'Informaticien et Chercheur'),
(13, 'Lacina Koné', '61646a72ee1716.57918318.png', 'Lacina Koné est le Directeur Général de Smart Africa depuis Février 2019. Avant ça, il a été le Conseiller du Premier Ministre chargé de l’économie numérique et la réforme informatique entre 2017-2018. Lacina Koné est un professionnel de l’industrie des TICs avec plus de 25 ans d’expérience dans les secteurs des télécommunications, satellite et de système de transport intelligent. Il possède un MBA de l’Université de George Washington.', 'Directeur Général de Smart Africa '),
(14, 'Alioune N\'diaye', '61646adaf3dc01.60139387.jpg', 'Alioune a intégré la Sonatel, en 1988, sur des fonctions d’audit et de contrôle de gestion avant d’en devenir le Directeur financier. En 2002, nommé Directeur d’Ikatel au Mali, il participera à la création d’Orange Mali. Dix ans plus tard, de retour à la Sonatel, il devient Directeur général ainsi que Président du conseil d’administration de Sonatel Mobiles. En 2018, il est nommé Directeur général d’Orange MEA, devenant ainsi le premier africain à occuper ce poste clé au sein de la société.', 'Directeur général d’Orange MEA'),
(15, 'frederic bardeau', '61646e057e2f07.59331179.jpg', 'Depuis 25 ans, je travaille à mettre le pouvoir d\'agir permis par le numérique au service des acteurs de l’économie sociale et solidaire, des personnes défavorisées et des territoires fragiles. Entrepreneur social récidiviste, fellow Ashoka, EPIC entrepreneur social de l\'année 2017 du Boston Consulting Group, j\'ai cofondé en 2008 l\'Agence LIMITE, entièrement dédiée à la communication responsable des ONG et des fondations, puis en 2013, Simplon.co, entreprise sociale qui forme gratuitement aux compétences et aux métiers techniques du numérique les demandeurs d\'emploi et accompagne les transitions/reconversions professionnelles des salariés au travers d\'un réseau de 100 écoles dans 18 pays. Simplon accompagne également la digitalisation du secteur de l\'ESS via ses filiales SimplonProd et NUMERIKea qui professionnalisent des Simplonien.nes et des personnes en situation de handicap au travers de prestations digitales (sites web, applications mobiles, services numériques) accessibles et éco', 'co-fondateur du projet Simplon.co');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `personnages`
--
ALTER TABLE `personnages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `personnages`
--
ALTER TABLE `personnages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
