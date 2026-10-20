CREATE TABLE clients(
    id_client SERIAL PRIMARY KEY,
    nom_client VARCHAR(50),
    numero VARCHAR(50)  
);

ALTER TABLE commandes ADD COLUMN id_client INT;
ALTER TABLE commandes ADD CONSTRAINT id_client FOREIGN KEY (id_client) REFERENCES clients(id_client);

INSERT INTO clients(nom_client,numero) VALUES
('Rakoto','0330203020'),
('Rasoa','0340067590'),
('Rasolo','0202200001');

UPDATE commandes SET id_client=1 WHERE id_commande=1;
UPDATE commandes SET id_client=2 WHERE id_commande=2;