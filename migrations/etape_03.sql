CREATE TABLE commandes (
    id_commande SERIAL PRIMARY KEY,
    date DATE
);

CREATE TABLE plats_commandes (
    id_plat_commande SERIAL PRIMARY KEY,
    id_commande INT,
    id_plat INT,
    quantite INT,
    FOREIGN KEY (id_commande) REFERENCES commandes(id_commande),
    FOREIGN KEY (id_plat) REFERENCES plats(id_plat)
);

INSERT INTO commandes(date) VALUES
('2026-05-05'),
('2026-05-06'),
('2026-05-07');

INSERT INTO plats_commandes(id_commande,id_plat,quantite) VALUES
(1,1,2),
(1,4,2),
(2,2,1);