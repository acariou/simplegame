# simplegame
Un petit jeu

## But du jeu

Rechercher une combinaison à X chiffres proposé aléatoirement. 
Pour ce faire vous faites une proposition, le programme répond pour chaques chiffre de la combinaison proposée, si le chiffre est plus grand (+) ou plus petit (-) ou si c'est le bon (=).
Vous devez deviner la combinaison en un nombre limité d'éssais, ex :
Pour la combinaison 1234
Proposition 1 : 4278 Réponse : -=--
Proposition 2 : 2214 Réponse -=+=

## Déroulement du jeu 

- Au démarrage du script on affiche la règle du jeu.
- L'utilisateur joue. Si il pert on lui affiche les indices.
A la fin l'utilisateur peut choisir :
1. de rejouer
2. de quitter l'application

## Suite

1. Dans un deusième temps il faut prévoir un mode débug en passant un paramètre au script, dans ce mode on affiche la combinaison affin de pouvoir tester le comportement du jeu et vérifier que les réponses sont corrects.
2. Rendre configurable le script :
    - Le nombre de chiffres présent dans la combinaison 
    - Le nombre d'éssaiespossibles.