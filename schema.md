## Etape 01
#### tables:
PLAT(**id_plat**,nom_plat,categorie,prix)

**Questions**: je choisi le type entier parce que le perix est entier en Ariary.Pour l'identifiant c'es id_plat.

## Etape 02
#### tables:
PLAT(**id_plat**,nom_plat,prix,#id_categorie)

CATEGORIES(**id_categories**,nom_categories)

**Questions**: si on ajoute une simplement une colonne categorie VARCHAR(50), suite a une erreur de saisie ou une faute d'orthographe on aura du mal a recuperer cette categoris.exemple: l'utilasateur saisi plat malagas, ou plat Malagasy ou bien Plat mlagasy, on ne poura pas recuperer la categorie plats malagasy sinon on devrait faire descentaines de Like dans la requette.\

## Etape 03
PLAT(**id_plat**,nom_plat,prix,#id_categorie)

CATEGORIES(**id_categories**,nom_categories)

COMMANDES(**id_commande**,date)

plats_commandes(**id_plats_commandes**,**#id_commande**,**#id_plat**,quatite)

**Question**: je place la quantite dans plats_commandes car on peut multiplier la qutite par le nombre de plats et en tirer le prix.

## Etape 4
CLIENTS(**id_client**,nom_client,numero)
COMMANDES(**id_commande**,date,#id_client?) (modifier)

**Question** non la cle etranger est nullable car on ne stoque pas les clients de passage.Pour ne perdre aucune commande il faut utiliser LEFT JOIN.
