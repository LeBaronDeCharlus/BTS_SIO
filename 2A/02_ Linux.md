#BTS #SIO #2A 

Dans cette partie nous allons aborder les bases de Linux, un système d'exploitation libre et gratuit.

## Linux 🐧

Linux est un système d'exploitation libre et gratuit, créé en 1991 par Linus Torvalds. Il est basé sur Unix, un système d'exploitation créé en 1969 par Ken Thompson et Dennis Ritchie.

Linux est un système d'exploitation multi-utilisateurs et multi-tâches. Il est très utilisé dans le monde professionnel pour ses performances et sa fiabilité.

Linux est composé de plusieurs éléments, dont les plus importants sont :

- le noyau Linux, qui est le cœur du système d'exploitation.
- les utilitaires système, qui permettent d'administrer le système.
- les bibliothèques système, qui contiennent les fonctions de base du système.
- les interfaces graphiques, qui permettent d'interagir avec le système.
- les applications, qui permettent d'exécuter des tâches spécifiques.
- etc.

Linux est distribué sous forme de distributions, qui regroupent le noyau Linux, les utilitaires système, les bibliothèques système, les interfaces graphiques, les applications, etc.

Il existe de nombreuses distributions Linux, dont les plus connues sont :

- Ubuntu, une distribution grand public, basée sur Debian.
- Fedora, une distribution communautaire, soutenue par Red Hat.
- CentOS, une distribution destinée aux serveurs, basée sur Red Hat Enterprise Linux.
- Debian, une distribution stable et sécurisée, utilisée pour les serveurs.
- Arch Linux, une distribution minimaliste, destinée aux utilisateurs avancés.
- etc.

## GNU 🐃

GNU est un système d'exploitation libre et gratuit, créé en 1983 par Richard Stallman. Il est basé sur Unix, un système d'exploitation créé en 1969 par Ken Thompson et Dennis Ritchie.

La différence entre GNU et Linux est que GNU est un système d'exploitation complet, qui regroupe le noyau Linux, les utilitaires système, les bibliothèques système, les interfaces graphiques, les applications, etc. Alors que Linux est seulement le noyau du système d'exploitation.

## Kernel 🌰

Le noyau Linux est le cœur du système d'exploitation. Il est responsable de la gestion des ressources matérielles (processeur, mémoire, disque dur, etc.), de l'ordonnancement des tâches, de la gestion des fichiers, etc.

Le noyau Linux est un noyau monolithique, c'est-à-dire qu'il contient toutes les fonctionnalités du système d'exploitation dans un seul module. Il est composé de plusieurs parties, dont les plus importantes sont :

- le noyau, qui contient les fonctions de base du système d'exploitation.
- les pilotes, qui permettent de gérer les périphériques matériels.
- les systèmes de fichiers, qui permettent de gérer les fichiers et les répertoires.
- les protocoles réseau, qui permettent de gérer les communications réseau.
- etc.

Le noyau Linux est développé en langage C, et est distribué sous licence GPL (General Public License).

## Shell 🐚

Le shell est un interpréteur de commandes, qui permet d'exécuter des commandes système. Il permet d'interagir avec le système d'exploitation en tapant des commandes au clavier.

Il existe plusieurs shells sous Linux, dont les plus connus sont :

- **Bash** (Bourne Again SHell), qui est le shell par défaut sous Linux.
- **Zsh** (Z Shell), qui est un shell amélioré, compatible avec Bash.
- **Fish** (Friendly Interactive SHell), qui est un shell convivial, avec une auto-complétion avancée.
- **Dash** (Debian Almquist SHell), qui est un shell minimaliste, utilisé pour les scripts système.
- Shell, qui est un shell minimaliste, utilisé pour les scripts système.

Le shell permet d'exécuter des commandes système, de gérer les fichiers et les répertoires, de contrôler les processus, etc.

## Commandes 🛠

Sous Linux, les commandes système sont des programmes exécutables, qui permettent d'effectuer des tâches spécifiques. Elles sont généralement regroupées dans des répertoires spécifiques, qui sont inclus dans le chemin d'exécution du shell.

Les commandes système sont généralement de la forme :

```bash
commande [options] [arguments]
```

Où :

- **commande** est le nom de la commande à exécuter.
- **options** sont des paramètres qui modifient le comportement de la commande.
- **arguments** sont des paramètres qui spécifient les données sur lesquelles la commande doit agir.

Il existe des milliers de commandes système sous Linux, dont les plus connues sont :

- **ls** (List), qui permet d'afficher la liste des fichiers et des répertoires.
- **cd** (Change Directory), qui permet de changer de répertoire de travail.
- **pwd** (Print Working Directory), qui permet d'afficher le répertoire de travail.
- **mkdir** (Make Directory), qui permet de créer un répertoire.
- **rm** (Remove), qui permet de supprimer des fichiers ou des répertoires.
- **cp** (Copy), qui permet de copier des fichiers ou des répertoires.
- **mv** (Move), qui permet de déplacer des fichiers ou des répertoires.
- **cat** (Concatenate), qui permet d'afficher le contenu d'un fichier.
- **more** (More), qui permet d'afficher le contenu d'un fichier page par page.
- **less** (Less), qui permet d'afficher le contenu d'un fichier page par page, avec une navigation avancée.
- **head** (Head), qui permet d'afficher les premières lignes d'un fichier.
- **tail** (Tail), qui permet d'afficher les dernières lignes d'un fichier.
- **grep** (Global Regular Expression Print), qui permet de rechercher du texte dans un fichier.
- **find** (Find), qui permet de rechercher des fichiers dans un répertoire.
- **ps** (Process Status), qui permet d'afficher les processus en cours d'exécution.
- **kill** (Kill), qui permet de terminer un processus.
- **chmod** (Change Mode), qui permet de modifier les permissions d'un fichier ou d'un répertoire.
- **chown** (Change Owner), qui permet de modifier le propriétaire d'un fichier ou d'un répertoire.
- **chgrp** (Change Group), qui permet de modifier le groupe d'un fichier ou d'un répertoire.
- **tar** (Tape ARchiver), qui permet de créer des archives.
- **gzip** (GNU ZIP), qui permet de compresser des fichiers.
- **gunzip** (GNU UnZIP), qui permet de décompresser des fichiers.
- **tar** (Tape ARchiver), qui permet de créer des archives.
- etc.

## Permissions 🔒

Sous Linux, les fichiers et les répertoires sont protégés par des permissions, qui définissent les actions autorisées pour les utilisateurs, les groupes et les autres.

Il existe trois types de permissions :

- **r** (Read), qui permet de lire le contenu d'un fichier ou d'un répertoire.
- **w** (Write), qui permet de modifier le contenu d'un fichier ou d'un répertoire.
- **x** (eXecute), qui permet d'exécuter un fichier ou d'accéder à un répertoire.

Les permissions sont définies pour trois catégories d'utilisateurs :

- **u** (User), qui correspond à l'utilisateur propriétaire du fichier ou du répertoire.
- **g** (Group), qui correspond au groupe propriétaire du fichier ou du répertoire.
- **o** (Other), qui correspond aux autres utilisateurs.

Les permissions sont affichées sous forme de chaîne de neuf caractères, qui sont regroupés par trois :

- les trois premiers caractères correspondent aux permissions de l'utilisateur.
- les trois caractères suivants correspondent aux permissions du groupe.
- les trois derniers caractères correspondent aux permissions des autres.

Par exemple, la chaîne de neuf caractères `rwxr-xr--` signifie que l'utilisateur a les permissions de lecture, d'écriture et d'exécution, le groupe a les permissions de lecture et d'exécution, et les autres ont la permission de lecture.

Les permissions peuvent être modifiées avec la commande `chmod`, qui permet de modifier les permissions de manière symbolique ou numérique.