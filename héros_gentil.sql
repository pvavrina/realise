CREATE TABLE Heros (
`ID` tinyint(1) NOT NULL,
`Nom` varchar(50) NOT NULL,
`PV` tinyint(2) NOT NULL,
`Bonus` tinyint(2) NOT NULL,
`Defense` tinyint(2) NOT NULL,
`ArmeEnMain` tinyint(2) DEFAULT NULL,
`Statut` varchar(100) NOT NULL,
`Immunite` varchar(20) NOT NULL,
PRIMARY KEY (ID)
);

CREATE TABLE Armes (
`ID` tinyint(1) NOT NULL,
`HerosID` tinyint(1) NOT NULL,
`Nom` varchar(50) NOT NULL,
`Type` varchar(20) NOT NULL,
`Degat` tinyint(2) NOT NULL
);

CREATE TABLE Competences (
`ID` tinyint(1) NOT NULL,
`Type` ENUM('Statut', 'PV', 'Defense',
'Bonus', 'ArmeEnMain', 'Immunite'),
`Effet` varchar(50),
PRIMARY KEY (ID)
);

INSERT INTO Heros (ID, Nom, PV, Bonus, Defense, ArmeEnMain, Statut, Immunite)
VALUES
(1, 'Comar', 40, 2, 15, 1, 'joyeux', 'aucun'),
(2, 'Kirderf', 35, 14, 5, 1, 'combatif', 'aucun'),
(3, 'Liujen', 45, 5, 8, 1, 'flegmatique', 'déstabilisant');

INSERT INTO Armes (ID, HerosID, Nom, Type, Degat)
VALUES 
(1, 0, 'Batte en mousse', 'aucun', 0),
(2, 0, 'Vanne de Liujen', 'déstabilisant', 10),
(3, 0, 'Microsoft', 'effrayant', 20),
(4, 0, 'Feuille', 'tranchant', 5),
(5, 0, 'Caillou', 'contondant', 5),
(6, 0, 'Ciseau', 'perçant', 5);


INSERT INTO Competences (ID, Type, Effet)
VALUES
(1, 'Bonus', 10),
(2, 'Defense', 50),
(3, 'PV', 30);

