-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 13 nov. 2018 à 23:14
-- Version du serveur :  5.7.23
-- Version de PHP :  7.2.10

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
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_23A0E6612469DE2` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `title`, `content`, `category_id`) VALUES
(3, 'APERÇU DES MODIFICATIONS AU CHAMAN AMÉLIORATION AU PATCH 8.1', 'Après la présentation des modifications apportées au prêtre ombre et au chaman élémentaire dans la mise à jour 8.1, le chaman amélioration a été oublié des radars depuis l\'annonce de sa refonte à la spécialisation avant la sortie de Battle for Azeroth lors d\'une séance de questions et réponses. Blizzard apporte une vague d\'équilibrage aux talents du chaman amélioration dans le prochain client appliqué sur les serveurs de tests. Bien qu\'il ne s\'agit que d\'un équilibrage numérique, au lieu d\'une refonte prévue, ces changements ont pour l\'objectif de varier les talents utilisés sur chaque palier.', 1),
(4, 'LA DÉMONSTRATION DE WOW CLASSIC ACCESSIBLE PAR L’ACHAT DU BILLET VIRTUEL DE LA BLIZZCON 2018', 'La nouvelle est tombée par surprise depuis plusieurs minutes puisque les récompenses du billet virtuel pour World of Warcraft sont désormais connues. Depuis chez vous après la cérémonie d\'ouverture qui se déroule le vendredi 2 novembre vers 21h00, heure de Paris, les joueurs pourront profiter de la démonstration de WoW Classic jusqu\'au 12 novembre avec les deux premières zones de quêtes. En plus de l\'accès anticipée à cette démo, les joueurs obtiendront en jeu une cape ornementale et une bannière de guerre pour représenter sa propre faction dans Battle for Azeroth.', 1),
(5, 'PATCH 8.1 : APERÇU DE LA DEUXIÈME PARTIE DE LA CAMPAGNE MILITAIRE DE LA HORDE', 'La campagne militaire de la Horde se poursuit dans la mise à jour 8.1 de Battle for Azeroth : les flots de la vengeance. Après avoir étendu son influence en Kul Tiras dans la première partie de la campagne militaire, la Horde passe à la vitesse supérieure pour trouver de nouvelles méthodes avec des alliés et armes imprégnées d\'azerite pour affaiblir la faction ennemie. Avec six nouveaux chapitres d\'histoire, la Horde devra organiser ses défenses pour protéger le roi Rastakhan contre l\'assaut de l\'Alliance sur l\'empire zandalari lors du prochain raid de la bataille de Dazar\'alor.', 1),
(6, 'BLIZZCON 2018 : NOUVEAU HÉROS ASHE ET COURT-MÉTRAGE « RETROUVAILLES » SUR OVERWATCH', 'La cérémonie d\'ouverture de la BlizzCon 2018 a présenté un nouveau court-métrage sur McCree qui règle ses comptes sur Route 66 avec ses anciens associés. Cette nouvelle cinématique permet également de découvrir le 29ème héros de la licence avec Ashe, une cheffe du gang Deadlock, rebelle lourdement armée et toujours prête à se salir les mains. Ashe fait feu rapidement en tenant sa carabine à hauteur de hanche ou bien utilise son viseur pour infliger un tir dévastateur. Retrouvez toutes les informations révélées à la BlizzCon 2018 concernant les nouveautés sur Overwatch', 2),
(7, 'LE MODÈLE ANGE ROSE PAR UN ÉVÉNEMENT CARITATIF POUR LA RECHERCHE CONTRE LE CANCER DU SEIN', 'Jusqu\'au 21 mai inclus, un événement caritatif pour soutenir la recherche contre le cancer du sein est disponible sur Overwatch. Pendant cet événement, le modèle légendaire « Ange rose » à durée limitée est disponible à l\'achat en jeu pour 14,99 € sur la boutique officielle. Mais vous pouvez également soutenir la cause avec le T-shirt Ange rose ou en soutenant les streamers d\'Overwatch du monde entier pour obtenir plusieurs récompenses comme des tags ou des icônes de joueur en regarder des heures cumulées sur Twitch. Les dons et les modèles achetés sont 100% reversés à l\'association.', 2),
(8, 'DES QUÊTES QUOTIDIENNES ET HEBDOMADAIRES SUR OVERWATCH POUR RELEVER DES DÉFIS UNIQUES', 'La prochaine mise à jour de contenu majeure dès le 10 avril sur Overwatch avec l’événement « Insurrection », un nouveau système de quêtes journalières et hebdomadaires sera mis en place pour proposer des défis uniques. Les quêtes, scindés en trois catégories principales (héroïque, héros et hebdomadaire) vont permettre notamment de récupérer des récompenses comme des crédits, des coffres de butin et des tags uniques liés aux nouveaux hauts-faits proposés. Blizzard nous propose un aperçu détaillé de ces défis quotidiens pour ajouter un peu plus de piment dans vos parties.', 2),
(9, 'BLIZZCON 2018 : LE NOUVEAU JEU MOBILE DIABLO IMMORTAL', 'La cérémonie d\'ouverture de la BlizzCon 2018 s\'est clos sur l\'annonce d\'un nouveau jeu Blizzard avec Diablo Immortal sur iPhone, iPad et Android. Ce jeu de rôle-action massivement multijoueur en ligne permet de découvrir un nouveau chapitre de l\'histoire sur l\'univers de Sanctuaire avec six classes similaires à l\'univers de Diablo III. Avec une histoire qui se déroule 5 années après la destruction de la pierre monde par l\'ange Tyrael entre Diablo 2 et Diablo 3, ce nouveau jeu en ligne sur mobile permet de jouer n\'importe où avec vos amis. Vous pouvez retrouver toutes les informations connues sur Diablo Immortal pour mobile.', 3),
(10, 'LA SAISON 6 DE DIABLO A DÉBUTÉ', 'De nombreux joueurs étaient dans les starting block pour le lancement de la saison 6 de Diablo III qui a commencé aujourd\'hui à partir du vendredi 29 avril à 17h. C\'est parti pour la création d\'un nouveau héros saisonnier ou de profiter de la renaissance depuis la saison dernière, dont il faudra à nouveau choisir sa classe, son nom, définir nos objectifs. En solo ou entre amis, dans le mode normal ou extrême, une nouvelle aventure débutera pour vous depuis le niveau 1. Alors Néphalem, jusqu\'où irez-vous cette saison, quelles récompensent convoitez-vous pour la fin de saison ?', 3),
(11, 'APERÇU OFFICIEL DE LA SAISON 5 ET MISE À JOUR 2.4 DE DIABLO', 'La quatrième saison de Diablo 3 vient de se terminer ce mercredi 30 décembre et vous disposez d\'un peu plus d\'une semaine afin de transférer ou ranger votre banque avec l\'équipement obtenu au cours de votre périple, attribuer les points de parangon acquis au cours de la saison, et autres...  La mise à jour 2.4 est disponible sur le PTR depuis quelques jours maintenant, avec de nouvelles fonctionnalité dont le contenu de la mise à jour 2.4 est révélé avec des failles renforcées, une nouvelle zone, des donjons d\'ensemble et ses modifications. La cinquième saison de Diablo arrive à partir du 15 janvier à 17h en Europe.', 3),
(14, 'LE DOS DE CARTE SUR HEARTHSTONE PAR LA PRÉCOMMANDE DE « BATTLE FOR AZEROTH »', 'A l\'occasion de la sortie de la nouvelle extension Kobolds et Catacombes sur Hearthstone dès le 8 décembre, un nouveau dos de carte vient d\'être révélé suite au déploiement de la mise à jour 10.0 sur Hearthstone. Ce dos de carte semble être destiné à la précommande de l\'extension « Battle for Azeroth » dans la version deluxe ou collector. Nous pouvons ainsi supposer que les préparatifs de la précommande de l\'extension semble être proches suite à la découverte des races alliées sur les serveurs de tests et de ce premier bonus en jeu sur la licence de Hearthstone.', 4),
(15, 'PARRAINEZ UN AMI POUR OBTENIR LE HÉROS CHAMAN ALTERNATIF : MORGL', 'Une nouvelle mise à jour importante est déployée sur Hearthstone afin d\'intégrer un nouveau héros alternatif au Chaman, suivant les traces d\'Alleria, Medivh, Magni et Liadrin. Morgl l\'Oracle est le prochain héros alternatif du Chaman à condition de parrainer un ami qui aura cumulé jusqu\'à 20 niveaux de héros au total sur son compte. Une fois que votre ami (ou un compte secondaire) est parrainé grâce à un lien généré par le site officiel ou l\'interface du jeu pour qu\'il reçoive gratuitement le nouveau portrait pour celui qui parraine ainsi qu\'un paquet de cartes chacun.', 4);

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Warcraft'),
(2, 'Overwatch'),
(3, 'Diablo III'),
(4, 'Heartstone');

-- --------------------------------------------------------

--
-- Structure de la table `migration_versions`
--

DROP TABLE IF EXISTS `migration_versions`;
CREATE TABLE IF NOT EXISTS `migration_versions` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `migration_versions`
--

INSERT INTO `migration_versions` (`version`) VALUES
('20181112140846'),
('20181112144950');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `FK_23A0E6612469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
