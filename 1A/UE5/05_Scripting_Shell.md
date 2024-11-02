#BTS #1A #SISR

## Différence entre scripting et programmation

Le scripting et la programmation sont deux concepts liés mais distincts. Voici les principales différences entre les deux :

### Scripting

- **Interprété :** Les scripts sont généralement écrits dans des langages interprétés comme Bash, Python, Perl, etc. Ils sont exécutés ligne par ligne par un interpréteur.
- **Automatisation :** Les scripts sont souvent utilisés pour automatiser des tâches répétitives ou pour effectuer des opérations simples.
- **Petits projets :** Les scripts sont généralement utilisés pour des projets de petite à moyenne envergure.
- **Rapidité de développement :** Les scripts sont rapides à écrire et à exécuter, ce qui en fait un outil efficace pour des tâches ponctuelles.
- **Maintenance :** Les scripts sont généralement moins complexes que les programmes et nécessitent moins de maintenance.

### Programmation

- **Compilé || interprété:** Les programmes sont généralement écrits dans des langages compilés comme C, C++, Java, etc. Ils sont traduits en langage machine avant d'être exécutés. Attention, ceci est une généralité, il existe évidemment beaucoup d'entreprise qui ont fait le choix de l'interprété.
- **Applications complexes :** Les programmes sont utilisés pour développer des applications complexes et des logiciels.
- **Grands projets :** Les programmes sont généralement utilisés pour des projets de grande envergure.
- **Performance :** Les programmes compilés ont généralement de meilleures performances que les scripts interprétés.
- **Maintenance :** Les programmes peuvent être plus complexes à maintenir en raison de leur taille et de leur complexité.
- **Développement :** Les programmes nécessitent souvent plus de temps et de ressources pour être développés que les scripts.
- **Portabilité :** Les programmes compilés peuvent être moins portables que les scripts interprétés en raison des dépendances et des spécificités du système.
- **Sécurité :** Les programmes compilés peuvent offrir un niveau de sécurité supérieur en raison de leur compilation en langage machine.
- **Optimisation :** Les programmes peuvent être optimisés pour des performances maximales en utilisant des techniques avancées de programmation.

## Pourquoi faire du scripting ?

Vous l'avez compris, le scripting présente de nombreux avantages pour les administrateurs système et les développeurs :

- **Automatisation :** Le scripting permet d'automatiser des tâches répétitives et fastidieuses, ce qui permet de gagner du temps et d'éviter les erreurs humaines.
- **Personnalisation :** Les scripts peuvent être personnalisés pour répondre aux besoins spécifiques de l'utilisateur ou de l'entreprise.
- **Rapidité :** Les scripts sont rapides à écrire et à exécuter, ce qui en fait un outil efficace pour des tâches ponctuelles ou urgentes.
- **Flexibilité :** Les scripts peuvent être modifiés et adaptés facilement en fonction des besoins changeants.


## Le scripting en Bash/Shell

Le Bash (Bourne Again SHell) est un interpréteur de commandes Unix qui permet d'exécuter des scripts en ligne de commande. Il est largement utilisé dans les systèmes Unix et Linux pour automatiser des tâches et des opérations système. Voici quelques exemples de tâches que l'on peut automatiser en Bash :

- **Sauvegarde de fichiers :** Automatiser la sauvegarde de fichiers et de dossiers à intervalles réguliers.
- **Gestion des utilisateurs :** Créer, modifier ou supprimer des utilisateurs et des groupes.
- **Surveillance du système :** Vérifier l'utilisation des ressources système, les logs, etc.
- **Installation de logiciels :** Automatiser l'installation et la configuration de logiciels.
- **Maintenance du système :** Nettoyer les fichiers temporaires, vérifier les mises à jour, etc.
- **Gestion des services :** Démarrer, arrêter ou redémarrer des services système.
- **Gestion des fichiers :** Renommer, déplacer, copier des fichiers en masse.
- **Traitement de données :** Extraire, transformer et charger des données dans des fichiers.
- etc.

Bref, on peut presque tout faire en Bash ! C'est un langage puissant et polyvalent qui peut grandement faciliter la vie des administrateurs système et des développeurs.

## Exemple de script Bash

Voici un exemple simple de script Bash qui affiche la date et l'heure actuelles :

```bash
#!/bin/bash

# Affiche la date et l'heure actuelles
echo "Date et heure actuelles : $(date)"
```

Pour exécuter ce script, vous devez :

1. Ouvrir un éditeur de texte comme `nano` ou `vim`.
2. Copier le code ci-dessus dans le fichier.
3. Enregistrer le fichier sous le nom `date.sh`.
4. Donner les droits d'exécution au script avec la commande `chmod +x date.sh`.
5. Exécuter le script avec la commande `./date.sh`.

Le script affichera alors la date et l'heure actuelles dans le terminal. Vous pouvez bien sûr personnaliser ce script pour y ajouter d'autres fonctionnalités ou commandes Bash.

## Prenez plus de pouvoir avec le scripting !

### Les boucles

Les boucles sont des structures de contrôle qui permettent de répéter des instructions un certain nombre de fois. En Bash, on peut utiliser deux types de boucles : `for` et `while`.

#### Boucle `for`

La boucle `for` permet de parcourir une liste d'éléments et d'exécuter des instructions pour chaque élément. Voici un exemple de boucle `for` en Bash :

```bash
#!/bin/bash

# Boucle for pour afficher les nombres de 1 à 5
for i in 1 2 3 4 5
do
    echo "Nombre : $i"
done
```

Ce script affichera les nombres de 1 à 5 dans le terminal.

#### Boucle `while`

La boucle `while` permet d'exécuter des instructions tant qu'une condition est vraie. Voici un exemple de boucle `while` en Bash :

```bash
#!/bin/bash

while true # Boucle infinie
do
    echo "Bonjour !"
    sleep 1 # Pause de 1 seconde
done
```

Ce script affichera "Bonjour !" dans le terminal toutes les secondes.
Attention, c'est une boucle infinie, vous devrez l'arrêter manuellement avec `Ctrl+C`.

### Les conditions

Les conditions permettent d'exécuter des instructions en fonction du résultat d'une expression booléenne. En Bash, on utilise les mots-clés `if`, `elif` (else if) et `else` pour gérer les conditions.

Voici un exemple de script Bash avec des conditions :

```bash
#!/bin/bash

# Vérifie si un fichier existe
if [ -f "fichier.txt" ]
then
    echo "Le fichier existe."
else
    echo "Le fichier n'existe pas."
fi
```

Ce script vérifie si le fichier `fichier.txt` existe et affiche un message en conséquence.

Il existe plusieurs manières de tester des conditions en Bash, comme les opérateurs de comparaison (`-eq`, `-ne`, `-lt`, `-le`, `-gt`, `-ge`), les opérateurs logiques (`&&`, `||`, `!`), les expressions régulières, etc.

Pour comparer des chiffres/nombres en Bash, on utilise les opérateurs suivants :

- eq : égal (equal)
- ne : différent (not equal)
- lt : inférieur (less than)
- le : inférieur ou égal (less or equal)
- gt : supérieur (greater than)
- ge : supérieur ou égal (greater or equal)

Pour comparer des chaînes de caractères, on utilise les opérateurs suivants :

- = : égal
- != : différent
- < : inférieur (ordre alphabétique)
- \> : supérieur (ordre alphabétique)

## Exercices

Nous souhaitons monitorer des URLs afin de nous assurer que les services sont bien en ligne. Pour cela, nous allons écrire un script Bash qui va vérifier l'état de chaque URL et afficher un message en conséquence. Si le code de retour HTTP n'est pas 200, le script affichera un message d'erreur.

Voici un exemple de script Bash pour monitorer une URL :

```bash
#!/bin/bash

# Liste des URLs à monitorer
urls=("https://www.google.com" "https://www.facebook.com" "https://www.twitter.com")

# urls <- nom de ma variable
# = <- opérateur d'affectation
mes_urls="https://www.google.com https://www.facebook.com https://www.twitter.com"

# job, pour chacune des URL, je vais faire un curl et vérifier si le code de retour HTTP est bien à 200

while true ; do
    for url in $mes_urls ;
    do 
        code_retour=$(curl -s -o /dev/null -w "%{http_code}" "$url")
        # vérifier si le contenu de ma variable code_retour est bien à 200
        if [ "$code_retour" -eq 200 ] ; then
        # -eq = égal | equal
            echo -e "$(date) [FATAL] $url est down !!! $code_retour"
        fi
    done
    sleep 2
done
```

Hum… c'est un peu compliqué, non ? Pas de panique, nous allons décortiquer ce script ensemble.

### Explications

1. **Déclaration des URLs :** Nous déclarons une liste d'URLs à monitorer dans la variable `mes_urls`. Chaque URL est séparée par un espace.
2. **Boucle `while` :** Nous utilisons une boucle `while` pour exécuter le script en continu. La boucle s'exécutera tant que la condition `true` sera vraie.
3. **Boucle `for` :** Nous utilisons une boucle `for` pour parcourir chaque URL dans la liste `mes_urls`.
4. **Récupération du code de retour HTTP :** Nous utilisons la commande `curl` pour récupérer le code de retour HTTP de chaque URL. Le code de retour est stocké dans la variable `code_retour`.
5. **Vérification du code de retour :** Nous vérifions si le code de retour est égal à 200. Si c'est le cas, nous affichons un message d'erreur indiquant que l'URL est down.
6. **Pause :** Nous ajoutons une pause de 2 secondes avant de recommencer la boucle.
7. **Fin de la boucle :** La boucle `for` se termine après avoir parcouru toutes les URLs de la liste.
8. **Fin de la boucle `while` :** La boucle `while` continue à s'exécuter en boucle tant que la condition `true` est vraie.

### Suite de l'exercice

Maintenant, imaginez que vous n'avez pas une, ni deux, ni trois URLs mais 1000 ! Comment allez-vous faire pour les monitorer toutes ? Vous allez devoir les écrire une par une dans la liste `mes_urls` ? Cela risque d'être fastidieux et peu pratique. Heureusement, avec la boucle `for`, nous pouvons itérer sur un fichier !

Créons un fichier `urls.txt` qui contiendra la liste des URLs à monitorer :

```txt
https://www.google.com
https://www.facebook.com
https://www.twitter.com
https://www.linkedin.com
https://www.github.com
https://www.youtube.com
https://www.instagram.com
https://www.reddit.com
https://www.stackoverflow.com
https://www.medium.com
```

Maintenant, modifions notre script pour lire les URLs depuis le fichier `urls.txt` :

```bash
#!/bin/bash

# Lecture des URLs depuis le fichier urls.txt
mes_urls=$(cat urls.txt)

while true ; do
    for url in $mes_urls ;
    do 
        code_retour=$(curl -s -o /dev/null -w "%{http_code}" "$url")
        if [ "$code_retour" -ne 200 ] ; then
            echo -e "$(date) [FATAL] $url est down !!! $code_retour"
        fi
    done
    sleep 2
done
```

Avec cette modification, notre script peut maintenant lire les URLs depuis le fichier `urls.txt` et les monitorer en continu. Vous pouvez ajouter ou supprimer des URLs dans le fichier sans avoir à modifier le script.

Magique non ? C'est ça la puissance du scripting en Bash !