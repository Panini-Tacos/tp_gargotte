CREATE DATABASE tp_gargotte;
\c tp_gargotte;

CREATE TABLE plats (
    id_plat SERIAL PRIMARY KEY,
    nom_plat VARCHAR(100),
    categorie VARCHAR(100),
    prix INT
);

INSERT INTO plats (nom_plat, categorie,prix) VALUES
('Romazava','Plat Malagasy',7000),
('Ravitoto sy henakisoa','Plat Malagasy',8000),
('Akoho sy voanio','Plat Malagasy',8500),
('Mi sao','Plat chinois',6000),
('Soupe chinoise','Soupe',5000),
('Mofo gasy (les 4)','Dessert et goûter',1000),
('Ranona ampango','Boisson',500);

