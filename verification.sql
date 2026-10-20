SELECT * FROM plats ORDER BY prix DESC;

SELECT c.nom_categorie,COUNT(p.id_plat) AS nombre_de_plats 
FROM plats p 
LEFT JOIN categories c ON p.id_categorie = c.id_categorie 
GROUP BY c.nom_categorie;

SELECT c.id_commande,SUM(p.prix) AS total 
FROM  plats_commandes c 
LEFT JOIN plats p ON c.id_plat = p.id_plat 
GROUP BY c.id_commande
ORDER BY id_commande ASC;

SELECT COALESCE(cl.nom_client,'Client de passage') AS Clients,co.id_commande,co.date 
FROM commandes co 
LEFT JOIN clients cl ON co.id_client=cl.id_client;

