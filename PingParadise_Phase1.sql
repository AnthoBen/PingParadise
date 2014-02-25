-- Suppression des anciennes tables

DROP TABLE IF EXISTS `T_PRODUIT`;
DROP TABLE IF EXISTS `T_CATEGORIE`;
DROP TABLE IF EXISTS `T_MARQUE`;

-- --------------------------------------------------------

-- Table T_CATEGORIE

CREATE TABLE IF NOT EXISTS `T_CATEGORIE` (
  `CA_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CA_NOM` varchar(40) NOT NULL,
  PRIMARY KEY (`CA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- Table T_MARQUE

CREATE TABLE IF NOT EXISTS `T_MARQUE` (
  `MA_ID` int(11) NOT NULL AUTO_INCREMENT,
  `MA_NOM` varchar(50) NOT NULL,
  `MA_DESCRIPTION` text,
  PRIMARY KEY (`MA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- Table T_PRODUIT

CREATE TABLE IF NOT EXISTS `T_PRODUIT` (
  `PR_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PR_NOM` varchar(50) NOT NULL,
  `PR_REFERENCE` varchar(30) NOT NULL,
  `PR_DESCRIPTION` text,
  `PR_PRIX` decimal(10,2) NOT NULL,
  `MA_ID` int(11) NOT NULL,
  `CA_ID` int(11) NOT NULL,
  PRIMARY KEY (`PR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- Clé étrangère T_PRODUIT -> T_CATEGORIE

ALTER TABLE `T_PRODUIT`
ADD FOREIGN KEY (`CA_ID`)
REFERENCES `T_CATEGORIE` (`CA_ID`);

-- --------------------------------------------------------

-- Clé étrangère T_PRODUIT -> T_MARQUE

ALTER TABLE `T_PRODUIT`
ADD FOREIGN KEY (`MA_ID`)
REFERENCES `T_MARQUE` (`MA_ID`);

-- --------------------------------------------------------

-- Ajout des catégories
INSERT INTO `T_CATEGORIE` (`CA_ID`, `CA_NOM`) VALUES
(NULL, 'Raquettes'),
(NULL, 'Accessoires'),
(NULL, 'Bois'),
(NULL, 'Revêtements');

-- --------------------------------------------------------

-- Ajout des marques
INSERT INTO `pingparadise`.`t_marque` (`MA_ID`, `MA_NOM`, `MA_DESCRIPTION`) VALUES
(NULL, 'Yasaka', 'Yasaka fait parti des leaders mondiaux dans le domaine du tennis de table. Son produit phare le Mark V est le produit et le plus connu et a fortement contribué à la popularité de la marque.'),
(NULL, 'Banco', 'Banco a débutée en tant que marque de distribution du site de vente en ligne Wacksport spécialisé dans le tennis de table. Elle est maintenant très répandue grâce à ses produits de qualité.'),
(NULL, 'Tibhar', 'Tibhar fut fondée à Sarrebruck (Allemagne) en 1969 par l´entraîneur de renommée mondiale et ancien joueur de niveau international, Tibor Harangozo, qui donna son nom à l´entreprise : TIBor HARangozo. La marque, synonyme aujourd´hui dans le monde entier de matériel de tennis de table d´excellente qualité, garda son nom même après la mort de son fondateur en 1978.');

-- --------------------------------------------------------

-- Ajout des produits

-- Raquette
INSERT INTO `t_produit` (`PR_ID`, `PR_NOM`, `PR_REFERENCE`, `PR_DESCRIPTION`, `PR_PRIX`, `MA_ID`, `CA_ID`) VALUES (NULL, 'Tibhar Samsonov 2000', '01-003-0001', NULL, '13.90', '3', '1');
-- Accessoire
INSERT INTO `t_produit` (`PR_ID`, `PR_NOM`, `PR_REFERENCE`, `PR_DESCRIPTION`, `PR_PRIX`, `MA_ID`, `CA_ID`) VALUES (NULL, 'Housse Tibhar Twister', '02-003-0001', 'Housse rectangulaire très robuste avec parois renforcées.', '9.90', '3', '2');
-- Bois
INSERT INTO `t_produit` (`PR_ID`, `PR_NOM`, `PR_REFERENCE`, `PR_DESCRIPTION`, `PR_PRIX`, `MA_ID`, `CA_ID`) VALUES (NULL, 'Bois Yasaka Balsa', '03-001-0001', 'Ce bois 7 plis exceptionnellement léger procure (grâce au balsa qui le compose) une incroyable sensation de maîtrise tout enrestant relativement rapide. ', '45.90', '1', '3');
INSERT INTO `t_produit` (`PR_ID`, `PR_NOM`, `PR_REFERENCE`, `PR_DESCRIPTION`, `PR_PRIX`, `MA_ID`, `CA_ID`) VALUES (NULL, 'Banco Pro', '03-002-0001', 'Ce bois balsa très rapide conviendra particulièrement bien aux joueurs qui favorisent le top spin à mi-distance et près de la table. Les sensations de toucher de balle sont excellentes et sa légèreté vous permettra d''exécuter vos coups avec une grande vitesse. Dans le jeu contre l''initiative, vous conserverez une très bonne maîtrise de la balle et vous trouverez ainsi de très bons placements vous permettant de reprendre la direction de l''échange.', '33.90', '2', '3');
-- Revêtements
INSERT INTO `t_produit` (`PR_ID`, `PR_NOM`, `PR_REFERENCE`, `PR_DESCRIPTION`, `PR_PRIX`, `MA_ID`, `CA_ID`) VALUES (NULL, 'Rev. Feeling', '04-002-0001', 'Doté d''une rapidité raisonnable et d''une bonne adhérence, ce revêtement Allround permet d''aborder et de perfectionner efficacement tous les coups de tennis de table. L''extraordinaire contrôle de balle qui le caractérise assure aux jeunes joueurs (et aux moins jeunes !) un sentiment de sécurité absolue tout en permettant de bonnes accélérations et la production d''effets variés. Le joueur polyvalent y trouvera aussi son compte ! Le rapport qualité/prix est tout simplement incroyable !', '29.90', '2', '4');
INSERT INTO `t_produit` (`PR_ID`, `PR_NOM`, `PR_REFERENCE`, `PR_DESCRIPTION`, `PR_PRIX`, `MA_ID`, `CA_ID`) VALUES (NULL, 'Rev. Allstar', '04-002-0002', 'Doté d''une rapidité raisonnable et d''une bonne adhérence, ce revêtement Allround permet d''aborder et de perfectionner efficacement tous les coups de Tennis de Table. L''extraordinaire contrôle de balle qui le caractérise assure aux jeunes joueurs (et aux moins jeunes !) un sentiment de sécurité absolue tout en permettant de bonnes accélérations et la production d''effets variés. Le joueur polyvalent y trouvera aussi son compte ! Le rapport qualité/prix est tout simplement incroyable ! ', '17.90', '2', '4');
