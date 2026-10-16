SELECT * FROM plats ORDER BY prix DESC;

SELECT c.nom_categorie,COUNT(p.id_plat) AS nombre_de_plats 
FROM plats p 
LEFT JOIN categories c ON p.id_categorie = c.id_categorie 
GROUP BY c.nom_categorie;