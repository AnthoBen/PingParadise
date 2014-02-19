
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
  `PR_MARQUE` int(11) NOT NULL,
  `PR_CATEGORIE` int(11) NOT NULL,
  PRIMARY KEY (`PR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- Clé étrangère T_PRODUIT -> T_CATEGORIE

ALTER TABLE `T_PRODUIT`
ADD FOREIGN KEY (`PR_CATEGORIE`)
REFERENCES `T_CATEGORIE` (`CA_ID`);

-- --------------------------------------------------------

-- Clé étrangère T_PRODUIT -> T_MARQUE

ALTER TABLE `T_PRODUIT`
ADD FOREIGN KEY (`PR_MARQUE`)
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

