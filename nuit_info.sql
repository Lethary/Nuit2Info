-- phpMyAdmin SQL Dump
-- version 5.2.2deb1+deb13u1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : ven. 05 déc. 2025 à 06:45
-- Version du serveur : 11.8.3-MariaDB-0+deb13u1 from Debian
-- Version de PHP : 8.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `nuit_info`
--

-- --------------------------------------------------------

--
-- Structure de la table `ni_afficher`
--

CREATE TABLE `ni_afficher` (
  `id_question` int(11) NOT NULL,
  `id_scene` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Déchargement des données de la table `ni_afficher`
--

INSERT INTO `ni_afficher` (`id_question`, `id_scene`) VALUES
(1, 5),
(2, 9),
(3, 10),
(4, 11),
(5, 12),
(6, 13),
(7, 14),
(8, 15),
(9, 34),
(10, 35),
(11, 36),
(12, 37),
(13, 38),
(14, 39),
(15, 40),
(16, 41),
(17, 42),
(18, 43),
(19, 44),
(20, 45),
(21, 47),
(22, 48),
(23, 49),
(24, 50);

-- --------------------------------------------------------

--
-- Structure de la table `ni_contenir`
--

CREATE TABLE `ni_contenir` (
  `id_question` int(11) NOT NULL,
  `id_reponse` int(11) NOT NULL,
  `est_vrai` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Déchargement des données de la table `ni_contenir`
--

INSERT INTO `ni_contenir` (`id_question`, `id_reponse`, `est_vrai`) VALUES
(1, 1, 0),
(1, 2, 1),
(1, 3, 0),
(1, 4, 0),
(2, 5, 0),
(2, 6, 0),
(2, 7, 1),
(2, 8, 0),
(3, 9, 0),
(3, 10, 0),
(3, 11, 1),
(3, 12, 0),
(4, 13, 0),
(4, 14, 1),
(4, 15, 0),
(4, 16, 0),
(5, 17, 0),
(5, 18, 0),
(5, 19, 1),
(5, 20, 0),
(6, 21, 0),
(6, 22, 1),
(6, 23, 0),
(6, 24, 0),
(7, 25, 0),
(7, 26, 1),
(7, 27, 0),
(7, 28, 0),
(8, 29, 0),
(8, 30, 1),
(8, 31, 0),
(8, 32, 0),
(9, 33, 0),
(9, 34, 1),
(9, 35, 0),
(9, 36, 0),
(10, 37, 0),
(10, 38, 1),
(10, 39, 0),
(10, 40, 0),
(11, 41, 0),
(11, 42, 1),
(11, 43, 0),
(11, 44, 0),
(12, 45, 0),
(12, 46, 1),
(12, 47, 0),
(12, 48, 0),
(13, 49, 0),
(13, 50, 1),
(13, 51, 0),
(13, 52, 0),
(14, 53, 0),
(14, 54, 1),
(14, 55, 0),
(14, 56, 0),
(15, 57, 0),
(15, 58, 1),
(15, 59, 0),
(15, 60, 0),
(16, 61, 0),
(16, 62, 1),
(16, 63, 0),
(16, 64, 0),
(17, 65, 0),
(17, 66, 1),
(17, 67, 0),
(17, 68, 0),
(18, 69, 1),
(18, 70, 0),
(18, 71, 0),
(18, 72, 0),
(19, 73, 1),
(19, 74, 0),
(19, 75, 0),
(19, 76, 0),
(20, 77, 0),
(20, 78, 1),
(20, 79, 0),
(20, 80, 0),
(21, 81, 0),
(21, 82, 1),
(21, 83, 0),
(21, 84, 0),
(22, 85, 0),
(22, 86, 1),
(22, 87, 0),
(22, 88, 0),
(23, 89, 0),
(23, 90, 1),
(23, 91, 0),
(23, 92, 0),
(24, 93, 0),
(24, 94, 1),
(24, 95, 0),
(24, 96, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ni_images`
--

CREATE TABLE `ni_images` (
  `id_image` int(11) NOT NULL,
  `lien` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Déchargement des données de la table `ni_images`
--

INSERT INTO `ni_images` (`id_image`, `lien`) VALUES
(1, 'test'),
(2, 'linux'),
(3, 'img/t1p1.png'),
(4, 'img/t1p2.png'),
(5, 'img/t1p3.png'),
(6, 'img/t1p4.png'),
(7, 'img/t2p1.png'),
(8, 'img/t2p2.png'),
(9, 'img/t2p3.png'),
(10, 'img/t2p4.png'),
(11, 'img/t3p1.png'),
(12, 'img/t3p2.png'),
(13, 'img/t3p3.png'),
(14, 'img/t3p4.png'),
(15, 'img/t4p1.png'),
(16, 'img/t4p2.png'),
(17, 'img/t4p3.png'),
(18, 'img/t4p4.png'),
(19, 'img/t5p1.png'),
(20, 'img/t5p2.png'),
(21, 'img/t5p3.png'),
(22, 'img/t5p4.png'),
(23, 'img/t6p1.png'),
(24, 'img/t6p2.png'),
(25, 'img/t6p3.png'),
(26, 'img/t6p4.png');

-- --------------------------------------------------------

--
-- Structure de la table `ni_questions`
--

CREATE TABLE `ni_questions` (
  `id_question` int(11) NOT NULL,
  `libelle` varchar(150) DEFAULT NULL,
  `explication` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Déchargement des données de la table `ni_questions`
--

INSERT INTO `ni_questions` (`id_question`, `libelle`, `explication`) VALUES
(1, 'Pourquoi les ordinateurs étaient-ils si lents à démarrer ?', '<p>Les ordinateurs n’étaient pas vraiment trop vieux ou cassés : \r\nle vrai problème, c’est qu’ils ne s’éteignaient jamais.\r\n<br>\r\nQuand un ordinateur reste en veille pendant des jours ou des semaines :\r\n<ul>\r\n    <li>la mémoire se remplit progressivement,</li>\r\n    <li>certains programmes restent ouverts en arrière-plan,</li>\r\n    <li>le système accumule des erreurs,</li>\r\n    <li>les mises à jour ne s’installent pas correctement.</li>\r\n</ul>\r\nRésultat : au bout d’un certain temps, il devient très lent à démarrer, comme s’il “fatiguait”.\r\n</p>\r\n<p>En l’éteignant régulièrement :\r\n<ul>\r\n    <li>la mémoire se vide,</li>\r\n    <li>le système se remet à zéro,</li>\r\n    <li>les performances redeviennent normales.</li>\r\n</ul>\r\n</p>'),
(2, 'Qu’est-ce qui surchargeait le serveur ?', '<p>Le serveur n’était pas surchargé à cause de jeux, de vidéos ou d’une connexion trop rapide. Le vrai problème venait de fichiers identiques copiés plusieurs centaines de fois et stockés un peu partout.\r\n<br>\r\nLorsque trop de doublons s’accumulent :\r\n<ul>\r\n    <li>ils occupent beaucoup d’espace sur le serveur,</li>\r\n    <li>ils ralentissent la recherche et l’accès aux dossiers,</li>\r\n    <li>le système doit gérer trop d’informations inutiles,</li>\r\n    <li>cela peut même bloquer certaines opérations.</li>\r\n</ul>\r\nEn clair : le serveur passait son temps à gérer des fichiers qui ne servaient à rien, ce qui provoquait un énorme ralentissement.\r\n<p><strong>👉 C’est pour cela qu’il était saturé :</strong> les doublons prenaient toute la place et surchargeaient le système.</p>'),
(3, 'Quelle action fait partie des solutions retenues ?', '<p>Dans l’histoire, la classe cherche des solutions simples, efficaces et écologiques pour réduire leur consommation numérique.\r\nL’une des plus importantes est d’éteindre les appareils quand on ne s’en sert plus.\r\n<br>\r\n<strong>Pourquoi ?</strong>\r\n<ul>\r\n    <li>Un ordinateur laissé allumé ou en veille continue de consommer de l’énergie.</li>\r\n    <li>À l’échelle d’une salle entière, cela représente un gaspillage énorme.</li>\r\n    <li>Éteindre les machines permet aussi d’éviter les lenteurs et de prolonger leur durée de vie.</li>\r\n</ul>\r\n<strong>Les autres choix ne vont pas dans le bon sens :</strong>\r\n<ul>\r\n    <li>A) augmenter la résolution consomme plus de données,</li>\r\n    <li>B) acheter de nouveaux ordinateurs n’est pas écologique,</li>\r\n    <li>D) laisser les lumières allumées… gaspille encore plus d’énergie.</li>\r\n</ul>\r\n\r\n<p><strong>👉 Éteindre les appareils est donc la solution la plus responsable, économique et durable.</strong></p>\r\n'),
(4, 'Quelle conclusion donne Mme Lenoir ?', '<p>À la fin de l’histoire, Mme Lenoir félicite les élèves et leur rappelle une idée essentielle :\r\nutiliser le numérique de manière raisonnable, c’est bon pour l’environnement… mais aussi pour le confort de travail.\r\n<br>\r\nGrâce à leurs actions :\r\n<ul>\r\n    <li>les ordinateurs démarrent plus vite,</li>\r\n    <li>le serveur n’est plus saturé,</li>\r\n    <li>la salle consomme moins d’énergie,</li>\r\n    <li>tout le monde travaille dans de meilleures conditions.</li>\r\n</ul>\r\n</p>\r\n<p><strong>Les autres propositions ne correspondent pas du tout à son message :</strong>\r\n<ul>\r\n    <li>A) changer tout le matériel serait coûteux et polluant,</li>\r\n    <li>C) interdire les vidéos n’a jamais été évoqué,</li>\r\n    <li>D) dire qu’on ne peut rien faire contredit tout ce qu’ils viennent de réussir.</li>\r\n</ul>\r\n</p>\r\n<p><strong>👉 Mme Lenoir veut montrer qu’en adoptant de bonnes pratiques, on peut à la fois améliorer le quotidien et réduire l’impact écologique.</strong></p>\r\n'),
(5, 'Quelle est la première chose à faire avec ces vieux ordinateurs ?', '<p>Quand on découvre de vieux ordinateurs, la première étape n’est pas de les jeter ni de les démonter. Il faut d’abord les allumer et vérifier leur état :\r\n<ul>\r\n    <li>certains fonctionnent peut-être très bien,</li>\r\n    <li>d’autres sont lents mais réparables,</li>\r\n    <li>quelques-uns ne s’allument plus du tout.</li>\r\n</ul>\r\nTester permet de savoir quoi réparer, quoi conserver et quoi recycler.\r\nC’est une démarche logique, responsable et écologique.</p>\r\n\r\n<p><strong>Les autres choix ne sont pas adaptés :</strong>\r\n\r\n<ul>\r\n    <li>A) les jeter directement serait du gaspillage,</li>\r\n    <li>B) démonter sans diagnostiquer fait perdre du matériel utilisable,</li>\r\n    <li>D) les peindre… ne sert absolument à rien pour savoir s’ils marchent.</li>\r\n</ul>\r\n\r\n<p><strong>👉 Tester les machines permet d’éviter le gaspillage et de décider intelligemment de leur avenir.</strong></p>\r\n'),
(6, 'Quel choix est le plus adapté pour redonner vie à des ordinateurs lents ?', '<p>Quand des ordinateurs commencent à être lents, ce n’est pas forcément parce qu’ils sont inutilisables :\r\nsouvent, leur système d’exploitation actuel est trop lourd pour leur matériel.\r\n<br>\r\nLes systèmes Linux légers (comme Xubuntu, Linux Lite, Mint XFCE…) sont conçus pour :\r\n<ul>\r\n    <li>redonner de la rapidité à de vieux PC,</li>\r\n    <li>consommer très peu de ressources,</li>\r\n    <li>démarrer plus vite,</li>\r\n    <li>prolonger la durée de vie de la machine.</li>\r\n</ul>\r\nC’est donc la solution la plus efficace, économique et écologique.</p>\r\n\r\n<p><strong>Les autres choix n’ont aucun sens :</strong>\r\n<ul>\r\n    <li>B) installer des jeux gourmands les rendrait encore plus lents,</li>\r\n    <li>C) ajouter 20 logiciels inutiles ne ferait qu’aggraver la situation,</li>\r\n    <li>D) les laisser dans un carton 10 ans… ne répare rien 😅</li>\r\n</ul>\r\n</p>\r\n<p><strong>👉 Un système Linux léger permet vraiment de redonner une seconde jeunesse à des ordinateurs anciens.</strong></p>\r\n'),
(7, 'Que doivent-ils faire pour les ordinateurs ayant un composant défaillant ?', '<p>Quand un ordinateur a un problème matériel (disque dur qui claque, RAM défectueuse, alimentation fatiguée…),\r\ncela ne signifie pas qu’il est bon à jeter.\r\n<br>\r\nAu contraire, la majorité de ces pannes sont faciles à réparer :\r\n<ul>\r\n    <li>remplacer une barrette de RAM,</li>\r\n    <li>changer un disque dur,</li>\r\n    <li>mettre une alimentation fonctionnelle,</li>\r\n    <li>nettoyer la poussière.</li>\r\n</ul>\r\nCe type de réparation est simple, peu coûteux et surtout évite un énorme gaspillage :\r\non prolonge la durée de vie de l’ordinateur au lieu d’en acheter un nouveau.</p>\r\n\r\n<p><strong>Les autres réponses ne sont ni logiques, ni responsables :</strong>\r\n\r\n<ul>\r\n    <li>A) jeter immédiatement = pollution + gaspillage de matériel encore utilisable,</li>\r\n    <li>C) casser l’ordinateur… aucun intérêt 😅,</li>\r\n    <li>D) vendre un appareil défectueux sans prévenir est irresponsable et inutile.</li>\r\n</ul>\r\n</p>\r\n<p><strong>👉 Réparer un composant, c’est bon pour la planète, le budget, et ça redonne une seconde vie à la machine.</strong></p>\r\n'),
(8, 'Quel est le meilleur usage de ces ordinateurs reconditionnés ?', '<p>Une fois reconditionnés, les ordinateurs fonctionnent de nouveau très bien.\nIls deviennent alors une ressource précieuse pour la communauté.</p>\n\n<p>Les meilleurs usages sont ceux qui :</p>\n\n<ul>\n    <li>aident des élèves qui n’ont pas d’ordinateur à la maison,</li>\n    <li>équipent des salles du collège,</li>\n    <li>servent à des ateliers ou projets pédagogiques.</li>\n</ul>\n\n<p>Cela donne une vraie utilité à des appareils qui auraient pu finir à la poubelle.</p>\n\n<p><strong>Les autres choix ne sont pas responsables :</strong></p>\n\n<ul>\n    <li>A) les laisser dans un placard = inutile, ils ne servent à personne,</li>\n    <li>C) les jeter = gaspillage et pollution,</li>\n    <li>D) les transformer en table basse… très créatif, mais pas vraiment utile 😅</li>\n</ul>\n\n<p><strong>👉 Donner, prêter ou réutiliser les ordinateurs reconditionnés permet d’aider concrètement les élèves et de soutenir l’innovation dans l’établissement.</strong></p>\n'),
(9, 'À quoi sert la Forge des communs numériques éducatifs ?', '<p>La Forge des communs numériques éducatifs n’est pas un simple site de stockage :\nc’est un espace où les établissements, professeurs et élèves peuvent mettre en commun leurs outils, projets et ressources libres.</p>\n\n<p>Elle sert à :</p>\n\n<ul>\n    <li>partager des outils déjà créés,</li>\n    <li>récupérer des ressources faites par d’autres,</li>\n    <li>améliorer les projets existants,</li>\n    <li>collaborer entre écoles sur des logiciels ou documents libres.</li>\n</ul>\n\n<p>C’est un peu comme une “boîte à outils” collective où chacun peut contribuer… et profiter du travail des autres.</p>\n\n<p><strong>Les autres propositions sont fausses :</strong></p>\n\n<ul>\n    <li>A) cacher des fichiers → Aucun rapport.</li>\n    <li>C) vendre du matériel → La Forge n’est pas un magasin.</li>\n    <li>D) stocker des films → usage interdit et sans lien avec la mission.</li>\n</ul>\n\n<p><strong>👉 La Forge existe pour construire ensemble, partager nos améliorations et créer des ressources utiles à tous.</strong></p>\n'),
(10, 'Que doivent-ils respecter en modifiant un outil trouvé dans la Forge ?', '<p>Quand on utilise un outil trouvé dans la Forge des communs numériques éducatifs, on a le droit de :</p>\n\n<ul>\n    <li>le modifier,</li>\n    <li>l’améliorer,</li>\n    <li>l’adapter à ses besoins.</li>\n</ul>\n\n<p>Mais cela n’est possible que parce que l’outil est publié sous licence libre.</p>\n\n<p>Une licence libre impose généralement deux règles importantes :</p>\n\n<ul>\n    <li>Respecter les conditions d’utilisation (ex. citer les auteurs).</li>\n    <li>Partager les améliorations pour que tout le monde en profite (principe des communs).</li>\n</ul>\n\n<p><strong>Les autres réponses n’ont aucun sens :</strong></p>\n\n<ul>\n    <li>A) “Rien du tout” → faux : une licence doit toujours être respectée.</li>\n    <li>C) “Le secret absolu” → totalement contraire à l’esprit du libre.</li>\n    <li>D) “Rendre le code payant” → impossible et interdit pour un code sous licence libre.</li>\n</ul>\n\n<p><strong>👉 Respecter la licence libre garantit que l’outil reste ouvert, partagé et utile à toute la communauté éducative.</strong></p>\n'),
(11, 'Que doivent faire les élèves après avoir amélioré l’outil ?', '<p>Quand les élèves améliorent un outil libre trouvé dans la Forge, ils ne travaillent pas seulement pour leur classe :\nils contribuent à un bien commun numérique.</p>\n\n<p>La règle du logiciel libre et de la Forge est simple :</p>\n\n<ul>\n    <li>Tu reçois quelque chose gratuitement.</li>\n    <li>Tu peux l’améliorer.</li>\n    <li>Tu dois rendre ces améliorations accessibles à tous.</li>\n</ul>\n\n<p>En re-déposant leur version améliorée :</p>\n\n<ul>\n    <li>d’autres collèges peuvent en profiter,</li>\n    <li>les améliorations pourront être encore améliorées par d’autres,</li>\n    <li>l’outil devient plus utile pour toute la communauté éducative.</li>\n</ul>\n\n<p><strong>Les autres options n’ont aucun sens :</strong></p>\n\n<ul>\n    <li>A) le garder pour eux → contraire au principe des communs,</li>\n    <li>C) le supprimer → gâchis inutile,</li>\n    <li>D) le rendre payant → interdit par la licence libre.</li>\n</ul>\n\n<p><strong>👉 Partager leur amélioration sur la Forge, c’est participer à une chaîne de collaboration qui profite à tout le monde.</strong></p>\n'),
(12, 'Pourquoi le projet se développe si vite grâce à la Forge ?', '<p>La force de la Forge, c’est la collaboration.\nAu lieu que chaque établissement crée ses outils dans son coin, la Forge permet :</p>\n\n<ul>\n    <li>de partager facilement ce qu’on a produit,</li>\n    <li>de récupérer des outils déjà existants,</li>\n    <li>de les modifier et les améliorer,</li>\n    <li>et de bénéficier du travail des autres.</li>\n</ul>\n\n<p><strong>Résultat :</strong><br>\nle projet avance beaucoup plus vite, car chacun construit sur les contributions des autres, au lieu de repartir de zéro à chaque fois.</p>\n\n<p><strong>Les autres choix ne fonctionnent pas :</strong></p>\n\n<ul>\n    <li>A) travailler tout seul = lenteur, isolement, travail dupliqué</li>\n    <li>C) les fichiers disparaissent automatiquement… ça n’aide personne 😅</li>\n    <li>D) si personne n’avait accès aux outils, il n’y aurait aucune collaboration</li>\n</ul>\n\n<p><strong>👉 La Forge accélère les projets grâce au partage, à la coopération et à l’amélioration collective : c’est le pouvoir des communs numériques.</strong></p>\n'),
(13, 'Quelle est la première étape logique dans une transition numérique écoresponsable ?', '<p>Avant de changer quoi que ce soit, il faut d’abord comprendre d’où vient le problème.\nC’est la base de toute démarche écoresponsable.</p>\n\n<p>Identifier les sources de surconsommation permet de repérer :</p>\n\n<ul>\n    <li>les appareils qui restent allumés inutilement,</li>\n    <li>les équipements trop gourmands,</li>\n    <li>les usages qui gaspillent de l’énergie ou du stockage,</li>\n    <li>les mauvaises habitudes (veille prolongée, fichiers doublons, streaming excessif…).</li>\n</ul>\n\n<p>Une fois ces éléments identifiés, on peut agir efficacement.\nSans diagnostic, on risque de faire de mauvais choix ou de dépenser pour rien.</p>\n\n<p><strong>Les autres réponses ne sont pas logiques :</strong></p>\n\n<ul>\n    <li>A) acheter de nouveaux écrans = coûteux et pas écologique,</li>\n    <li>C) interdire tous les ordinateurs = irréaliste et inutile,</li>\n    <li>D) laisser tout comme avant = ne résout rien.</li>\n</ul>\n\n<p><strong>👉 La première étape, c’est d’observer, analyser et comprendre pour pouvoir réduire intelligemment la consommation numérique.</strong></p>\n'),
(14, 'Quelle action fait partie d’une démarche numérique écoresponsable ?', '<p>Une démarche numérique écoresponsable cherche à réduire l’impact environnemental sans sacrifier l’efficacité.\nParmi les actions essentielles : éviter les gaspillages d’énergie.</p>\n\n<p>Optimiser la consommation, c’est par exemple :</p>\n\n<ul>\n    <li>éteindre les appareils après usage,</li>\n    <li>désactiver la veille prolongée inutile,</li>\n    <li>baisser la luminosité,</li>\n    <li>limiter le streaming ou les téléchargements excessifs,</li>\n    <li>utiliser des outils plus légers.</li>\n</ul>\n\n<p>Ces gestes simples permettent de consommer moins, de prolonger la durée de vie du matériel et de réduire les coûts.</p>\n\n<p><strong>Les autres options sont contraires à l’écoresponsabilité :</strong></p>\n\n<ul>\n    <li>A) remplacer du matériel encore fonctionnel → gaspillage + pollution,</li>\n    <li>C) acheter chaque année → surconsommation totale,</li>\n    <li>D) télécharger toutes les vidéos en 4K → énorme consommation de données et d’énergie.</li>\n</ul>\n\n<p><strong>👉 Réduire les veilles inutiles et optimiser les usages, c’est le cœur d’une démarche numérique durable.</strong></p>\n'),
(15, 'Quelle idée appartient à une transition numérique écoresponsable ?', '<p>Une transition numérique écoresponsable vise à utiliser le numérique de manière plus durable, plus intelligente et moins polluante.\nCela passe principalement par deux objectifs :</p>\n\n<p><strong>Réduire l’énergie consommée</strong><br>\n– éviter les appareils allumés inutilement,<br>\n– limiter la consommation des réseaux,<br>\n– optimiser les usages (streaming, stockage, veille…).</p>\n\n<p><strong>Allonger la durée de vie du matériel</strong><br>\n– réparer avant de remplacer,<br>\n– reconditionner ce qui peut l’être,<br>\n– installer des logiciels plus légers,<br>\n– éviter le renouvellement inutile.</p>\n\n<p>C’est exactement ce que fait une démarche écoresponsable.</p>\n\n<p><strong>Les autres réponses vont à l’encontre de ces principes :</strong></p>\n\n<ul>\n    <li>A) renouvellement rapide du matériel = pollution + gaspillage,</li>\n    <li>C) consommer un maximum de stockage en ligne = plus d’énergie utilisée dans les data centers,</li>\n    <li>D) laisser les équipements allumés = surconsommation inutile.</li>\n</ul>\n\n<p><strong>👉 Une approche durable cherche à consommer moins, réparer plus, et faire durer le matériel autant que possible.</strong></p>\n'),
(16, 'Quel bénéfice le collège retire-t-il de cette transition ?', '<p>Grâce à la transition numérique écoresponsable :</p>\n\n<ul>\n    <li>les appareils sont mieux utilisés,</li>\n    <li>ils durent plus longtemps,</li>\n    <li>la consommation d’énergie baisse,</li>\n    <li>il y a moins de gaspillage,</li>\n    <li>le budget du collège est mieux maîtrisé.</li>\n</ul>\n\n<p>En clair, le collège devient plus efficace, plus autonome et plus respectueux de l’environnement.</p>\n\n<p><strong>Les autres propositions ne correspondent pas du tout à la réalité :</strong></p>\n\n<ul>\n    <li>A) des dépenses plus élevées → au contraire, on réduit les coûts,</li>\n    <li>C) plus d’appareils à jeter → on en jette moins grâce au reconditionnement,</li>\n    <li>D) des outils moins utilisés → ils sont mieux utilisés, pas abandonnés.</li>\n</ul>\n\n<p><strong>👉 La transition apporte donc un double bénéfice : un numérique plus durable et une consommation réduite.</strong></p>\n'),
(17, 'Par où ont-ils décidé de commencer', '<p>Lorsqu’on veut créer un outil numérique collaboratif (comme dans l’histoire du Portail du Quartier),\nla première étape n’est pas d’acheter, ni de tout déléguer, ni d’investir dans une grosse machine.</p>\n\n<p>La vraie démarche intelligente consiste à :</p>\n\n<ul>\n    <li>rassembler tous les acteurs (élèves, professeurs, mairie, médiathèque…),</li>\n    <li>discuter de leurs usages,</li>\n    <li>comprendre leurs besoins communs,</li>\n    <li>identifier ce qu’ils veulent réellement faire avec l’outil.</li>\n</ul>\n\n<p>Cette étape permet :</p>\n\n<ul>\n    <li>d’éviter les fonctionnalités inutiles,</li>\n    <li>de concevoir un outil simple et adapté,</li>\n    <li>de mutualiser les efforts,</li>\n    <li>de réduire les coûts et la complexité.</li>\n</ul>\n\n<p><strong>Les autres choix n’ont aucun intérêt :</strong></p>\n\n<ul>\n    <li>A) acheter une plateforme payante → cher, non collaboratif, pas adapté aux besoins,</li>\n    <li>C) demander à une entreprise → pas de co-construction et budget élevé,</li>\n    <li>D) installer un énorme serveur → inutile sans connaître les besoins.</li>\n</ul>\n\n<p><strong>👉 Co-construire en partant des besoins réels, c’est la base d’un projet collaboratif efficace et durable.</strong></p>\n'),
(18, 'Quel choix technologique ont-ils privilégié ?', '<p>Dans l’histoire, le groupe choisit un outil open source et adaptable, car cela correspond parfaitement à leur projet de quartier :</p>\n\n<ul>\n    <li><strong>Libre</strong> → on peut le modifier selon les besoins.</li>\n    <li><strong>Local</strong> → il appartient à la communauté, pas à une entreprise extérieure.</li>\n    <li><strong>Collaboratif</strong> → chacun peut contribuer (élèves, profs, médiathèque, mairie…).</li>\n    <li><strong>Évolutif</strong> → l’outil peut grandir au fil du temps, grâce aux apports de tous.</li>\n</ul>\n\n<p>C’est exactement l’esprit des communs numériques : créer ensemble, améliorer ensemble, partager ensemble.</p>\n\n<p><strong>Les autres choix ne conviennent pas du tout :</strong></p>\n\n<ul>\n    <li>B) une app complexe mais “à la mode” = difficile à comprendre, pas adaptée.</li>\n    <li>C) un réseau social fermé = pas libre, pas local, pas modifiable.</li>\n    <li>D) un système limité aux élèves = exclut les autres partenaires du quartier.</li>\n</ul>\n\n<p><strong>👉 Une solution libre et collaborative est la plus adaptée, car elle appartient à la communauté et peut évoluer avec elle.</strong></p>\n'),
(19, 'Comment les élèves ont-ils participé ?', '<p>Dans l’histoire, les élèves ne sont pas de simples spectateurs :\nils participent activativement à la création du Portail du Quartier.</p>\n\n<p>Ils ont :</p>\n\n<ul>\n    <li>imaginé et dessiné l’interface,</li>\n    <li>créé des modules utiles (agenda partagé, réservation, communication…),</li>\n    <li>adapté les outils libres à leurs besoins,</li>\n    <li>testé et amélioré l’ensemble avec les adultes.</li>\n</ul>\n\n<p>Ce travail leur permet d’apprendre la logique du développement tout en créant un outil réellement utile.</p>\n\n<p><strong>Les autres propositions ne correspondent pas à ce qui se passe :</strong></p>\n\n<ul>\n    <li>B) ils n’ont pas juste observé → ils ont construit !</li>\n    <li>C) ils n’ont pas décoré la salle → ce n’était pas un atelier d’art plastique 😄</li>\n    <li>D) ils n’ont pas écrit un roman → ils ont créé un outil numérique collaboratif.</li>\n</ul>\n\n<p><strong>👉 Les élèves ont joué un rôle concret : créer, coder, améliorer. C’est ça, apprendre en construisant.</strong></p>\n'),
(20, 'Quel a été le résultat du projet ?', '<p>Dans l’histoire, le Portail du Quartier n’est pas un projet isolé.\nIl a été construit collectivement par :</p>\n\n<ul>\n    <li>des élèves,</li>\n    <li>des enseignants,</li>\n    <li>la médiathèque,</li>\n    <li>la mairie,</li>\n    <li>des parents.</li>\n</ul>\n\n<p>Grâce à sa nature libre, locale et adaptable, il est rapidement devenu un outil :</p>\n\n<ul>\n    <li>utilisé par plusieurs structures du quartier,</li>\n    <li>enrichi par chacun,</li>\n    <li>évolutif au fil des besoins,</li>\n    <li>véritablement au service de la communauté.</li>\n</ul>\n\n<p><strong>Les autres réponses sont incohérentes :</strong></p>\n\n<ul>\n    <li>A) abandonner → faux, le projet a prospéré.</li>\n    <li>C) vendu à une multinationale → impossible pour un outil libre et local.</li>\n    <li>D) réservé au collège → contradictoire : son but était justement de relier tout le quartier.</li>\n</ul>\n\n<p><strong>👉 Le portail a vécu : il est devenu un outil commun, partagé et amélioré par toute la communauté locale.</strong></p>\n'),
(21, 'Comment les élèves ont-ils décidé de mettre en œuvre l’inclusion dans la salle numérique ?', '<p>Dans l’histoire, l’objectif était de rendre la salle numérique vraiment inclusive, c’est-à-dire accessible à tous les élèves, quels que soient leurs besoins ou leurs capacités.\nInstaller des outils d’accessibilité permet :</p>\n\n<ul>\n    <li>aux élèves malvoyants d’utiliser un lecteur d’écran ou un mode contraste élevé,</li>\n    <li>aux élèves ayant des difficultés motrices d’utiliser un clavier simplifié,</li>\n    <li>aux élèves débutants d’avoir une interface plus claire,</li>\n    <li>à chacun de progresser à son rythme.</li>\n</ul>\n\n<p>Cette démarche favorise l’égalité d’accès, la solidarité et le respect.</p>\n\n<p><strong>Les autres propositions vont complètement à l’opposé de l’inclusion :</strong></p>\n\n<ul>\n    <li>A) réserver les meilleurs ordinateurs aux meilleurs élèves → discrimination,</li>\n    <li>C) fermer la salle aux élèves en difficulté → contraire au but du projet,</li>\n    <li>D) imposer un seul outil → ne respecte pas la diversité des besoins.</li>\n</ul>\n\n<p><strong>👉 L’inclusion, c’est adapter la salle au public, pas adapter le public à la salle.</strong></p>\n'),
(22, 'Que signifie pour eux être responsable dans l’usage du numérique ?', '<p>“Vérifier les sources, protéger les données et utiliser l’ordinateur seulement quand c’est nécessaire”\nCette réponse regroupe toutes les bonnes pratiques de la responsabilité numérique :</p>\n\n<ul>\n    <li><strong>Vérifier les sources</strong> → pour éviter les fake news et les informations trompeuses.</li>\n    <li><strong>Protéger les données</strong> → pour garantir la sécurité, le respect de la vie privée et les droits de chacun.</li>\n    <li><strong>Utiliser l’ordinateur seulement quand c’est nécessaire</strong> → pour réduire la consommation d’énergie et éviter le gaspillage.</li>\n</ul>\n\n<p>Ces gestes sont simples mais essentiels pour un usage responsable et éthique du numérique.</p>\n\n<p><strong>Les autres propositions sont dangereuses ou contraires à la responsabilité :</strong></p>\n\n<ul>\n    <li>A) télécharger sans vérifier → risque de virus, fausses infos, contenus illégaux.</li>\n    <li>C) laisser les appareils allumés → gaspillage d’énergie, pollution numérique.</li>\n    <li>D) partager ses mots de passe → très risqué, interdit, source de piratage.</li>\n</ul>\n\n<p><strong>👉 La responsabilité numérique, c’est faire attention à ce qu’on consomme, à ce qu’on partage et à ce qu’on protège.</strong></p>\n'),
(23, 'Quelle action ont-ils imaginée pour renforcer la durabilité ?', '<p>“Reconditionner l’ancien matériel et privilégier des outils libres et pérennes” ?\nCette réponse correspond parfaitement au pilier de la durabilité numérique.</p>\n\n<p><strong>Durabilité = faire durer ce qu’on a, réduire les déchets, éviter la surconsommation.</strong></p>\n\n<p>Reconditionner l’ancien matériel permet :</p>\n\n<ul>\n    <li>de donner une seconde vie aux ordinateurs,</li>\n    <li>d’éviter d’en acheter de nouveaux inutilement,</li>\n    <li>de réduire l’empreinte carbone liée à la fabrication,</li>\n    <li>d’économiser de l’argent pour le collège.</li>\n</ul>\n\n<p>Utiliser des logiciels libres et pérennes (Linux, applications open source…) apporte :</p>\n\n<ul>\n    <li>moins d’obsolescence,</li>\n    <li>de meilleures performances sur du matériel ancien,</li>\n    <li>plus de contrôle et de longévité,</li>\n    <li>une compatibilité durable dans le temps.</li>\n</ul>\n\n<p><strong>Les autres propositions vont à l’encontre de la durabilité :</strong></p>\n\n<ul>\n    <li>A) remplacer par du neuf → pollution + gaspillage.</li>\n    <li>C) faire tourner 24h/24 → énorme consommation inutile.</li>\n    <li>D) imprimer tout → gaspillage de papier et d’énergie.</li>\n</ul>\n\n<p><strong>👉 La durabilité, ce n’est pas consommer plus : c’est faire mieux avec ce qu’on a déjà.</strong></p>\n'),
(24, 'Quel impact ont eu ces trois piliers sur le collège ?', '<p>“La salle numérique est devenue un modèle pour d’autres établissements” ?\nEn appliquant les trois piliers NIRD :</p>\n\n<ul>\n    <li><strong>Inclusion</strong> → une salle où tous les élèves peuvent apprendre, même ceux en difficulté.</li>\n    <li><strong>Responsabilité</strong> → des usages plus sûrs, plus maîtrisés et plus respectueux.</li>\n    <li><strong>Durabilité</strong> → du matériel reconditionné, des outils libres, moins de gaspillage.</li>\n</ul>\n\n<p><strong>Résultat :</strong><br>\nla salle numérique est devenue plus efficace, plus écologique et mieux adaptée aux besoins des élèves.\nCela attire l’attention d’autres collèges qui cherchent eux aussi à moderniser leurs pratiques de façon responsable.\nLa salle Horizon devient alors un exemple inspirant.</p>\n\n<p><strong>Les autres réponses ne correspondent pas du tout à l’histoire :</strong></p>\n\n<ul>\n    <li>A) “plus personne ne voulait utiliser la salle” → faux, elle est devenue plus accueillante.</li>\n    <li>C) “les élèves n’ont rien appris” → au contraire, ils ont appris énormément.</li>\n    <li>D) “tout a été jeté” → inverse du pilier Durabilité.</li>\n</ul>\n\n<p><strong>👉 Une salle pensée autour de l’inclusion, de la responsabilité et de la durabilité devient un vrai modèle pédagogique et écologique.</strong></p>\n');

-- --------------------------------------------------------

--
-- Structure de la table `ni_reponses`
--

CREATE TABLE `ni_reponses` (
  `id_reponse` int(11) NOT NULL,
  `contenu` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Déchargement des données de la table `ni_reponses`
--

INSERT INTO `ni_reponses` (`id_reponse`, `contenu`) VALUES
(1, 'Ils étaient trop vieux'),
(2, 'Ils restaient en veille jour et nuit'),
(3, 'Les élèves jouaient dessus'),
(4, 'Il n’y avait pas assez de chaises'),
(5, 'Des jeux installés en secret'),
(6, 'Des vidéos trop longues'),
(7, 'Des centaines de fichiers doublons'),
(8, 'Une connexion trop rapide'),
(9, 'Augmenter la résolution des vidéos'),
(10, 'Acheter de nouveaux ordinateurs'),
(11, 'Éteindre les appareils après usage'),
(12, 'Laisser les lumières allumées'),
(13, 'Il faut changer tout le matériel'),
(14, 'La sobriété numérique permet de mieux travailler et protéger la planète'),
(15, 'Il faut interdire les vidéos'),
(16, 'On ne peut rien faire pour réduire la consommation'),
(17, 'Les jeter directement'),
(18, 'Les démonter pour récupérer les vis'),
(19, 'Les tester pour voir ce qui fonctionne encore'),
(20, 'Les peindre en bleu'),
(21, 'Installer un système léger sous Linux'),
(22, 'Mettre des jeux gourmands en ressources'),
(23, 'Ajouter 20 logiciels inutiles'),
(24, 'Les laisser dans le carton encore 10 ans'),
(25, 'Les jeter immédiatement'),
(26, 'Remplacer ou réparer le composant'),
(27, 'Casser l’ordinateur pour s’amuser'),
(28, 'Le vendre en l’état'),
(29, 'Les laisser dans un placard'),
(30, 'Les donner ou prêter pour soutenir les élèves et le collège'),
(31, 'Les jeter pour gagner de la place'),
(32, 'Les transformer en table basse'),
(33, 'À cacher des fichiers'),
(34, 'À mutualiser, partager et améliorer des ressources libres'),
(35, 'À vendre du matériel numérique'),
(36, 'À stocker des films'),
(37, 'Rien du tout'),
(38, 'La licence libre associée'),
(39, 'Le secret absolu'),
(40, 'L’obligation de rendre le code payant'),
(41, 'Le garder pour eux'),
(42, 'Le partager à nouveau sur la Forge'),
(43, 'Le supprimer'),
(44, 'Le rendre payant'),
(45, 'Parce que chacun travaille tout seul'),
(46, 'Parce que tout le monde partage et améliore les ressources'),
(47, 'Parce que les fichiers disparaissent automatiquement'),
(48, 'Parce que personne n’a accès aux outils'),
(49, 'Acheter de nouveaux écrans'),
(50, 'Identifier les sources de consommation excessive'),
(51, 'Interdire tous les ordinateurs'),
(52, 'Laisser tout fonctionner comme avant'),
(53, 'Remplacer le matériel encore fonctionnel'),
(54, 'Optimiser la consommation et réduire les veilles inutiles\n'),
(55, 'Acheter des appareils plus puissants chaque année'),
(56, 'Télécharger toutes les vidéos en 4K'),
(57, 'Encourager le renouvellement rapide du matériel'),
(58, 'Réduire l’impact énergétique et allonger la durée de vie des appareils'),
(59, 'Utiliser un maximum de stockage en ligne'),
(60, 'Laisser les équipements allumés'),
(61, 'Des dépenses plus élevées'),
(62, 'Une consommation réduite et un numérique plus durable'),
(63, 'Plus d’appareils à jeter'),
(64, 'Des outils moins utilisés'),
(65, 'Acheter une plateforme payante déjà toute faite'),
(66, 'Lister ensemble les besoins réels de chaque partenaire'),
(67, 'Demander à une entreprise de tout développer'),
(68, 'Installer le plus gros serveur possible'),
(69, 'Une solution libre et locale, que tout le monde peut améliorer'),
(70, 'Une application très complexe mais à la mode'),
(71, 'Un réseau social fermé appartenant à une grande entreprise'),
(72, 'Un système limité uniquement aux élèves'),
(73, 'Ils ont dessiné l’interface et développé des modules simples'),
(74, 'Ils ont juste observé'),
(75, 'Ils ont surtout décoré la salle'),
(76, 'Ils ont écrit un roman sur le numérique'),
(77, 'Le portail a été abandonné'),
(78, 'Le portail est devenu un outil local partagé par tout le quartier'),
(79, 'Le portail a été vendu à une multinationale'),
(80, 'Seul le collège l’a utilisé'),
(81, 'En réservant les meilleurs ordinateurs uniquement aux meilleurs élèves'),
(82, 'En installant des outils d’accessibilité pour tous (lecteur d’écran, contrastes, clavier simplifié…)'),
(83, 'En fermant la salle aux élèves en difficulté'),
(84, 'En imposant le même outil à tout le monde'),
(85, 'Télécharger tout ce qui leur plaît sans vérifier'),
(86, 'Vérifier les sources, protéger les données et utiliser l’ordinateur seulement quand c’est nécessaire'),
(87, 'Laisser les appareils allumés pour gagner du temps'),
(88, 'Partager leurs mots de passe pour aider les autres'),
(89, 'Remplacer tous les ordinateurs par des modèles neufs'),
(90, 'Reconditionner l’ancien matériel et privilégier des outils libres et pérennes'),
(91, 'Faire tourner les ordinateurs 24h/24 pour les “chauffer”'),
(92, 'Imprimer systématiquement leurs documents'),
(93, 'Plus personne ne voulait utiliser la salle'),
(94, 'La salle numérique est devenue un modèle pour d’autres établissements'),
(95, 'Les élèves n’ont rien appris'),
(96, 'Tout le matériel a fini jeté');

-- --------------------------------------------------------

--
-- Structure de la table `ni_scenes`
--

CREATE TABLE `ni_scenes` (
  `id_scene` int(11) NOT NULL,
  `titre` varchar(50) DEFAULT NULL,
  `ordre` int(11) DEFAULT NULL,
  `id_image` int(11) DEFAULT NULL,
  `id_theme` int(11) NOT NULL,
  `contenu` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Déchargement des données de la table `ni_scenes`
--

INSERT INTO `ni_scenes` (`id_scene`, `titre`, `ordre`, `id_image`, `id_theme`, `contenu`) VALUES
(5, 'Épisode 1 : L’enquête commence', 1, 3, 1, 'Au collège Clairval, les ordinateurs de la salle de technologie étaient de plus en plus lents.\n Un matin, Mme Lenoir annonça :\n« Aujourd’hui, nous allons découvrir pourquoi notre salle consomme autant d’énergie ! »\nLes élèves se mettent alors à observer les machines…'),
(9, 'Épisode 2 : Une découverte inquiétante', 2, 4, 1, 'En explorant les dossiers du serveur, les élèves tombèrent sur quelque chose d’étrange :\n des centaines de fichiers identiques, stockés un peu partout.\n— “Mais qui les a créés ?!”\n— “Personne… ce sont juste des copies inutiles !” répondit Mme Lenoir.\nLe serveur était saturé à cause de ce désordre numérique.\n'),
(10, 'Épisode 3 : Les solutions', 3, 5, 1, 'La classe se réunit pour choisir des actions simples et efficaces.\n Ils listent plusieurs idées sur le tableau. Finalement, trois solutions s’imposent :\n ➡️ Éteindre les appareils après usage\n ➡️ Baisser la qualité des vidéos\n ➡️ Nettoyer les fichiers et dossiers'),
(11, 'Épisode 4 : Les résultats', 4, 6, 1, 'Un mois plus tard, la salle fonctionne mieux que jamais.\r\n Les ordinateurs démarrent vite, le serveur respire enfin,\r\n et la classe a réussi à réduire d’un tiers sa consommation.\r\nMme Lenoir sourit :\r\n« Vous avez compris :\r\n la sobriété numérique, c’est consommer juste ce qu’il faut pour préserver la planète. »\r\nLes élèves applaudissent : ils ont gagné leur enquête…\r\n et adopté de nouvelles habitudes pour longtemps.'),
(12, 'Épisode 1 : Le carton oublié dans le grenier', 1, 7, 2, 'Un matin, le concierge du lycée trouve un énorme carton poussiéreux dans le grenier du bâtiment B.\r\n Il l’apporte en salle informatique.\r\nQuand les élèves l’ouvrent, ils découvrent :\r\n  10 anciens ordinateurs, débranchés depuis des années.\r\n— “On pourrait les jeter, non ?” propose Lucas.\r\n — “Surtout pas ! On peut peut-être leur donner une seconde vie.” répond Naïma.\r\nMme Doria, la prof, confirme :\r\n« Ces machines sont peut-être vieilles, mais elles peuvent encore servir… si on les reconditionne ! »\r\n'),
(13, 'Épisode 2 : Le diagnostic des machines', 2, 8, 2, 'Les élèves allument les ordinateurs un par un.\r\n Résultat :\r\n  6 démarrent encore\r\n  2 sont très lents\r\n  2 ne s’allument plus du tout\r\n— “On dirait qu’ils ont besoin d’une petite mise à jour…” dit Hugo.\r\n — “Ou d’un système plus léger.” ajoute Naïma.\r\nMme Doria leur propose alors une solution :\r\n« On peut installer un système libre, rapide et adapté aux vieux matériels… Linux ! »\r\n'),
(14, 'Épisode 3 : La réparation', 3, 9, 2, 'Pendant l’installation, ils découvrent aussi quelques problèmes techniques :\r\n  un disque dur qui claque,\r\n  une barrette de RAM défectueuse,\r\n  une alimentation un peu fatiguée.\r\nAu lieu d’abandonner, les élèves se forment avec Mme Doria à la réparation.\r\n— “On change juste le composant, et hop, c’est reparti !” dit-elle en montrant comment remplacer le disque dur.\r\nIls apprennent qu’une petite réparation évite souvent un grand gâchis.\r\n'),
(15, 'Épisode 4 : Une seconde vie… pour de vrai', 4, 10, 2, 'Une fois reconditionnés et sous Linux, les ordinateurs fonctionnent parfaitement.\r\nLes élèves se demandent quoi en faire.\r\n Mme Doria sourit :\r\n« Et si on les offrait à ceux qui en ont vraiment besoin ? »\r\nLes élèves décident :\r\n  4 ordinateurs iront à la salle de permanence\r\n  3 seront prêtés à des familles en difficulté\r\n  3 seront utilisés pour un atelier de programmation\r\n'),
(34, 'Épisode 1 : Un projet en panne', 1, 11, 3, 'Au collège Montbrillant, la classe de 4eC doit créer une ressource numérique pour les élèves de 6e :\r\n un guide interactif sur les bonnes pratiques du numérique.\r\nProblème :\r\n Personne ne sait par où commencer.\r\n— “On n’a pas d’outils pour faire ça…” soupire Jade.\r\n — “Et on n’a pas le temps de tout coder nous-mêmes !” ajoute Yassine.\r\nLe professeur, M. Aubry, leur montre alors un site qu’ils ne connaissent pas encore :\r\n« Voici la Forge des communs numériques éducatifs.\r\n Vous y trouverez des outils libres, créés et partagés par d’autres établissements. »'),
(35, 'Épisode 2 : Un outil trouvé… mais pas parfait', 2, 12, 3, 'En fouillant la Forge, les élèves découvrent un outil génial :\r\n une interface simple permettant de créer des guides interactifs.\r\nMais il manque plusieurs fonctions pour leur projet :\r\n – ajouter des quiz\r\n – personnaliser les couleurs\r\n – insérer des images\r\n— “On pourrait le modifier ! C’est libre, non ?” propose Jade.\r\nM. Aubry confirme :\r\n« Oui ! Vous pouvez l’améliorer…\r\n …à condition de respecter la licence libre et de partager vos améliorations. »'),
(36, 'Épisode 3 : Améliorer pour mieux partager', 3, 13, 3, 'Les élèves se mettent au travail :\r\n  Yassine ajoute des thèmes de couleur\r\n  Jade crée un module de quiz\r\n  Les autres élèves intègrent une galerie d’images\r\nL’outil devient beaucoup plus complet que l’original !\r\nQuand ils le remettent sur la Forge, un message apparaît :\r\n« Merci pour votre contribution ! Votre outil est maintenant disponible pour tous. »\r\n— “C’est génial ! On a aidé d’autres classes !” dit Naïma, fière d’eux.\r\n'),
(37, 'Épisode 4 : Une histoire qui continue partout', 4, 14, 3, 'Quelques jours plus tard, les élèves reçoivent un mail d’un collège de Bretagne :\r\n« Merci ! Grâce à vos améliorations, nous réalisons enfin notre guide numérique. »\r\nIls comprennent alors ce que veut dire “communs numériques” :\r\n Ce que l’on crée ensemble, tout le monde peut l’utiliser, améliorer et transmettre.\r\nLeur projet n’est plus seulement celui d’une classe…\r\n Il fait maintenant partie d’un vaste écosystème collaboratif.'),
(38, 'Épisode 1 : Un constat alarmant', 1, 15, 4, 'Au collège Horizon, un document interne tombe comme un choc :\r\n la consommation énergétique liée au numérique a doublé en deux ans.\r\nDans la salle des profs, M. Ribeiro secoue la tête :\r\n — “On ne peut pas continuer comme ça, c’est mauvais pour la planète… et pour le budget du collège !”\r\nLa direction propose alors un grand projet :\r\n« Le Collège Horizon va entamer une transition numérique écoresponsable. »\r\nLes élèves du club NumériVert sont chargés d’aider à trouver les premières actions.'),
(39, 'Épisode 2 : Une chasse au gaspillage', 2, 16, 4, 'Les élèves inspectent les locaux :\r\n  des vidéoprojecteurs allumés à l’heure du déjeuner\r\n  des PC qui restent en veille toute la nuit\r\n  des bornes Wi-Fi anciennes très énergivores\r\n  des milliers de données inutiles stockées sur le cloud\r\n— “Si on optimise tout ça, on peut réduire énormément !” dit Lila.\r\nM. Ribeiro leur suggère une idée :\r\n« Et si vous proposiez un plan d’actions durable à présenter au conseil d’établissement ? »\r\n'),
(40, 'Épisode 3 : Le plan d’action du club NumériVert', 3, 17, 4, 'Les élèves rédigent leur plan :\r\n  remplacer les bornes Wi-Fi anciennes par un modèle basse consommation\r\n  programmer l’extinction automatique des PC\r\n  créer un cloud local plus sobre pour éviter les transferts inutiles\r\n  sensibiliser les classes à l’impact environnemental du streaming\r\nIls proposent aussi un atelier :\r\n“Comment utiliser le numérique de manière intelligente et durable ?”\r\nLa direction est impressionnée.'),
(41, 'Épisode 4 : Le collège montre l’exemple', 4, 18, 4, 'Trois mois plus tard, les résultats tombent :\r\n  la consommation énergétique a baissé de 27 %\r\n  les salles surchauffent moins\r\n  le matériel dure plus longtemps\r\n  les élèves ont adopté des pratiques plus sobres\r\nLe collège Horizon est même cité dans un article sur les établissements exemplaires.\r\nM. Ribeiro félicite les élèves :\r\n« Vous venez de prouver qu’une transition numérique responsable,\r\n c’est bon pour la planète et pour la qualité de travail. »'),
(42, 'Le Portail du Quartier', 1, 19, 5, 'Dans la petite ville de Saint-Valérien, le collège, la médiathèque et la mairie utilisaient chacun leurs propres outils numériques. Résultat : informations dispersées, duplications de tâches et beaucoup d’énergie perdue.\r\n Un jour, M. Ribeiro, professeur de technologie, proposa une idée audacieuse :\r\n“Et si nous construisions ensemble un outil numérique local, simple, ouvert et adapté à nos besoins ?”\r\nLes élèves, les enseignants, les bibliothécaires et même quelques parents se réunirent. Une seule règle : tout le monde peut proposer, tout le monde peut contribuer.'),
(43, 'Le Portail du Quartier', 2, 20, 5, 'Le groupe a donc dressé une liste :\r\npartage d’agendas,\r\n\r\n\r\nréservation de matériel,\r\n\r\n\r\ncommunication d’événements,\r\n\r\n\r\nespace collaboratif pour projets scolaires.\r\n Ils découvrent qu’en fait, leurs besoins se rejoignent largement.\r\n'),
(44, 'Le Portail du Quartier', 3, 21, 5, 'Ils choisissent une solution libre existante qu’ils peuvent adapter : un petit portail collaboratif basé sur des outils open source. Cela permet :\r\nde modifier les modules,\r\n\r\n\r\nde comprendre le fonctionnement,\r\n\r\n\r\net surtout d’impliquer les élèves dans le développement.'),
(45, 'Le Portail du Quartier', 4, 22, 5, 'Guidés par M. Ribeiro, les élèves apprennent à coder des fonctionnalités simples.\r\n D’autres gèrent les tests, d’autres l’ergonomie, d’autres la documentation.\r\n Chacun trouve sa place.\r\n Le slogan du projet devient :\r\n“Construire ensemble, c’est apprendre ensemble.”'),
(46, 'Le Portail du Quartier', 5, NULL, 5, 'Le Portail du Quartier est inauguré :\r\n messages, réservation de salles, agenda commun, ressources éducatives…\r\n Tout le monde participe, tout le monde bénéficie.\r\n La mairie le félicite :\r\n“Vous avez montré qu’une solution locale, ouverte et co-construite peut renforcer toute une communauté.”\r\n'),
(47, 'La Salle Numérique des Trois Piliers', 1, 23, 6, 'Au collège Horizon, une salle informatique venait d’être rénovée. Pourtant, la principale, Mme Aït Benali, ne voulait pas seulement une salle moderne : elle voulait un espace qui respecte les trois piliers fondamentaux de la démarche NIRD :\r\n 👉 Inclusion,\r\n 👉 Responsabilité,\r\n 👉 Durabilité.\r\nElle convoqua alors un petit groupe d’élèves volontaires pour réfléchir à ce que ces valeurs signifiaient concrètement dans leur quotidien numérique.'),
(48, 'La Salle Numérique des Trois Piliers', 2, 24, 6, 'Les élèves installent des outils d’accessibilité et organisent des ateliers pour aider leurs camarades moins à l’aise avec l’informatique.\r\n Peu à peu, chacun trouve sa place dans la salle numérique.\r\n La devise affichée au mur devient :\r\n“Le numérique est pour tous, pas pour quelques-uns.”\r\n'),
(49, 'La Salle Numérique des Trois Piliers', 3, 25, 6, 'Ils mettent en place une charte :\r\nappareils éteints après usage,\r\n\r\n\r\ntri des fichiers,\r\n\r\n\r\nvigilance sur les fake news,\r\n\r\n\r\nsensibilisation au respect des données et des autres.\r\n Ils comprennent que la responsabilité se joue dans chaque geste numérique.'),
(50, 'La Salle Numérique des Trois Piliers', 4, 26, 6, 'Avec l’aide du professeur de technologie, ils nettoient, réparent et mettent à jour d’anciens ordinateurs.\r\n Ils découvrent que les logiciels libres les rendent plus rapides et plus durables.\r\n Résultat : moins de déchets, moins de dépenses, plus d’autonomie.'),
(51, 'La Salle Numérique des Trois Piliers', 5, NULL, 6, 'La salle numérique des trois piliers attire la curiosité d’autres collèges et même de la mairie.\r\n Elle devient un exemple vivant de ce que peut être un numérique :\r\nouvert,\r\n\r\n\r\néthique,\r\n\r\n\r\nrespectueux de l’environnement,\r\n\r\n\r\net utile à toute la communauté.\r\n\r\n\r\nMme Aït Benali conclut :\r\n“Quand l’inclusion, la responsabilité et la durabilité guident nos choix, le numérique devient un outil qui nous élève.”\r\n');

-- --------------------------------------------------------

--
-- Structure de la table `ni_themes`
--

CREATE TABLE `ni_themes` (
  `id_theme` int(11) NOT NULL,
  `libelle` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Déchargement des données de la table `ni_themes`
--

INSERT INTO `ni_themes` (`id_theme`, `libelle`) VALUES
(1, 'Sobriété numérique'),
(2, 'Réemploi et reconditionnement'),
(3, 'Forge des communs numériques éducatifs'),
(4, 'Transition numérique écoresponsable'),
(5, 'Co-construction'),
(6, 'Inclusion, Responsabilité, Durabilité');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `ni_afficher`
--
ALTER TABLE `ni_afficher`
  ADD PRIMARY KEY (`id_question`,`id_scene`),
  ADD KEY `id_scene` (`id_scene`);

--
-- Index pour la table `ni_contenir`
--
ALTER TABLE `ni_contenir`
  ADD PRIMARY KEY (`id_question`,`id_reponse`),
  ADD KEY `id_reponse` (`id_reponse`);

--
-- Index pour la table `ni_images`
--
ALTER TABLE `ni_images`
  ADD PRIMARY KEY (`id_image`);

--
-- Index pour la table `ni_questions`
--
ALTER TABLE `ni_questions`
  ADD PRIMARY KEY (`id_question`);

--
-- Index pour la table `ni_reponses`
--
ALTER TABLE `ni_reponses`
  ADD PRIMARY KEY (`id_reponse`);

--
-- Index pour la table `ni_scenes`
--
ALTER TABLE `ni_scenes`
  ADD PRIMARY KEY (`id_scene`),
  ADD KEY `id_image` (`id_image`),
  ADD KEY `id_theme` (`id_theme`);

--
-- Index pour la table `ni_themes`
--
ALTER TABLE `ni_themes`
  ADD PRIMARY KEY (`id_theme`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `ni_afficher`
--
ALTER TABLE `ni_afficher`
  MODIFY `id_question` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `ni_images`
--
ALTER TABLE `ni_images`
  MODIFY `id_image` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `ni_questions`
--
ALTER TABLE `ni_questions`
  MODIFY `id_question` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `ni_reponses`
--
ALTER TABLE `ni_reponses`
  MODIFY `id_reponse` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT pour la table `ni_scenes`
--
ALTER TABLE `ni_scenes`
  MODIFY `id_scene` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT pour la table `ni_themes`
--
ALTER TABLE `ni_themes`
  MODIFY `id_theme` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `ni_afficher`
--
ALTER TABLE `ni_afficher`
  ADD CONSTRAINT `ni_afficher_ibfk_1` FOREIGN KEY (`id_question`) REFERENCES `ni_questions` (`id_question`),
  ADD CONSTRAINT `ni_afficher_ibfk_2` FOREIGN KEY (`id_scene`) REFERENCES `ni_scenes` (`id_scene`);

--
-- Contraintes pour la table `ni_contenir`
--
ALTER TABLE `ni_contenir`
  ADD CONSTRAINT `ni_contenir_ibfk_1` FOREIGN KEY (`id_question`) REFERENCES `ni_questions` (`id_question`),
  ADD CONSTRAINT `ni_contenir_ibfk_2` FOREIGN KEY (`id_reponse`) REFERENCES `ni_reponses` (`id_reponse`);

--
-- Contraintes pour la table `ni_scenes`
--
ALTER TABLE `ni_scenes`
  ADD CONSTRAINT `ni_scenes_ibfk_1` FOREIGN KEY (`id_image`) REFERENCES `ni_images` (`id_image`),
  ADD CONSTRAINT `ni_scenes_ibfk_2` FOREIGN KEY (`id_theme`) REFERENCES `ni_themes` (`id_theme`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
