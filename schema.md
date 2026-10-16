## Etape 01
#### tables:
PLAT(**id_plat**,nom_plat,categorie,prix)

**Questions**: je choisi le type entier parce que le perix est entier en Ariary.Pour l'identifiant c'es id_plat.

## Etape 02
#### tables:
PLAT(**id_plat**,nom_plat,prix,#id_categorie)

CATEGORIES(**id_categories**,nom_categories)

**Questions**: si on ajoute une simplement une colonne categorie VARCHAR(50), suite a une erreur de saisie ou une faute d'orthographe on aura du mal a recuperer cette categoris.exemple: l'utilasateur saisi plat malagas, ou plat Malagasy ou bien Plat mlagasy, on ne poura pas recuperer la categorie plats malagasy sinon on devrait faire descentaines de Like dans la requette.\
