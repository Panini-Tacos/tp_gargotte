CREATE TABLE categories (
    id_categorie SERIAL PRIMARY KEY,
    nom_categorie VARCHAR(100)
);

INSERT INTO categories (nom_categorie) VALUES
('plats Malagasy'),
('plats Chinois'),
('soupes'),
('desserts'),
('boissons');

ALTER TABLE plats ADD COLUMN id_categorie INT;
ALTER TABLE plats DROP COLUMN categorie;
ALTER TABLE plats ADD CONSTRAINT id_categorie FOREIGN KEY (id_categorie) REFERENCES categories(id_categorie);

UPDATE plats SET id_categorie = 1 WHERE id_plat = 1;
UPDATE plats SET id_categorie = 1 WHERE id_plat = 2;
UPDATE plats SET id_categorie = 1 WHERE id_plat = 3;
UPDATE plats SET id_categorie = 2 WHERE id_plat = 4;
UPDATE plats SET id_categorie = 3 WHERE id_plat = 5;
UPDATE plats SET id_categorie = 4 WHERE id_plat = 6;
UPDATE plats SET id_categorie = 5 WHERE id_plat = 7;

SELECT p.nom_plat,p.prix,c.nom_categorie FROM plats p JOIN categories c ON c.id_categorie=p.id_categorie;
SELECT COUNT(*) AS nombre_de_plats FROM plats;
SELECT c.nom_categorie,COUNT(p.id_plat) AS nombre_de_plats FROM plats p LEFT JOIN categories c ON p.id_categorie = c.id_categorie GROUP BY c.nom_categorie;
