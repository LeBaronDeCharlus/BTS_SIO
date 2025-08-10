#BTS #SIO #2A 

## Installation de Wordpress

### En suivant la documentation officielle

On peut décomposer l'installation de Wordpress en plusieurs étapes en se référant à la [documentation officielle du CMS](https://fr.wordpress.org/support/article/how-to-install-wordpress/).

1. Télécharger Wordpress sur le site officiel
2. Décompresser le fichier
3. Renommer le fichier `wp-config-sample.php` en `wp-config.php`
4. Créer une base de données
5. Ouvrir le fichier `wp-config.php` et renseigner les informations de connexion à la base de données
6. Copier les fichiers de Wordpress sur le serveur
7. Lancer l'installation en accédant à l'URL du site
8. Renseigner les informations demandées
9. Se connecter à l'interface d'administration

Étapes détaillées :

1. Télécharger Wordpress sur le site officiel
   - Rendez-vous sur [wordpress.org](https://fr.wordpress.org/download/)
   - Cliquez sur le bouton "Télécharger Wordpress"
   - Enregistrez le fichier sur votre ordinateur
  
2. Décompresser le fichier

    - Ouvrez le fichier téléchargé
    - Décompressez-le dans un dossier de votre choix
    - Vous obtenez un dossier `wordpress` contenant les fichiers du CMS
    - Vous pouvez renommer ce dossier si vous le souhaitez

3. Renommer le fichier `wp-config-sample.php` en `wp-config.php`

    - Ouvrez le dossier `wordpress`
    - Repérez le fichier `wp-config-sample.php`
    - Renommez-le en `wp-config.php`
    - Ce fichier contient les paramètres de configuration de Wordpress
    - Vous devrez renseigner les informations de connexion à la base de données
    - Vous pouvez le faire à l'aide d'un éditeur de texte comme Notepad++ ou Visual Studio Code

4. Créer une base de données

    - Connectez-vous à votre serveur de base de données (phpMyAdmin, MySQL Workbench, etc.)
    - Créez une nouvelle base de données
    - Créez un nouvel utilisateur et accordez-lui les droits sur la base de données
    - Notez les informations de connexion (nom de la base, nom d'utilisateur, mot de passe, hôte)

5. Ouvrir le fichier `wp-config.php` et renseigner les informations de connexion à la base de données

    - Ouvrez le fichier `wp-config.php` avec un éditeur de texte
    - Recherchez les lignes suivantes :
      ```php
      // ** MySQL settings - You can get this info from your web host ** //
      /** The name of the database for WordPress */
      define( 'DB_NAME', 'database_name_here' );

      /** MySQL database username */
      define( 'DB_USER', 'username_here' );

      /** MySQL database password */
      define( 'DB_PASSWORD', 'password_here' );

      /** MySQL hostname */
      define( 'DB_HOST', 'localhost' );
      ```
    - Remplacez les valeurs par celles de votre base de données
    - Enregistrez les modifications
    - Fermez le fichier

6. Copier les fichiers de Wordpress sur le serveur
7. Lancer l'installation en accédant à l'URL du site


### Via Docker

On peut également installer Wordpress via Docker en utilisant un fichier `docker-compose.yml` qui contient les services nécessaires à l'installation de Wordpress. Nous sommes chanceux car Wordpress propose un fichier `docker-compose.yml` prêt à l'emploi. Regardez par [ici](https://hub.docker.com/_/wordpress).

La première étape consiste à télécharger l'image Docker de Wordpress :

```bash
docker pull wordpress
```

Ensuite, on peut créer un fichier `docker-compose.yml` pour définir les services nécessaires :

```yaml
version: '3.1'

services:

  wordpress:
    image: wordpress
    restart: always
    ports:
      - 8080:80
    environment:
      WORDPRESS_DB_HOST: db
      WORDPRESS_DB_USER: exampleuser
      WORDPRESS_DB_PASSWORD: examplepass
      WORDPRESS_DB_NAME: exampledb
    volumes:
      - wordpress:/var/www/html

  db:
    image: mysql:8.0
    restart: always
    environment:
      MYSQL_DATABASE: exampledb
      MYSQL_USER: exampleuser
      MYSQL_PASSWORD: examplepass
      MYSQL_RANDOM_ROOT_PASSWORD: '1'
    volumes:
      - db:/var/lib/mysql

volumes:
  wordpress:
  db:
```

Prenons le temps d'expliquer ce fichier :

- On définit deux services : `wordpress` et `db`
- Le service `wordpress` utilise l'image `wordpress` et expose le port 80
- On définit les variables d'environnement pour la base de données (hôte, utilisateur, mot de passe, nom de la base)
- On monte un volume pour le dossier `/var/www/html` de Wordpress
- Le service `db` utilise l'image `mysql:8.0` et expose le port par défaut
- On définit les variables d'environnement pour la base de données (nom de la base, utilisateur, mot de passe, génération aléatoire du mot de passe root)
- On monte un volume pour le dossier `/var/lib/mysql` de la base de données
- On crée deux volumes Docker pour Wordpress et la base de données
- Ces volumes permettent de stocker les données de manière persistante

Une fois que nous sommes satisfait, on lance les services en utilisant la commande `docker-compose up -d`. Wordpress sera accessible à l'adresse `http://localhost:8080`. On peut alors suivre les étapes d'installation classiques.

Vous remarquez qu'en lançant la commande `docker-compose up`, Docker va télécharger les images nécessaires, créer les conteneurs et les lancer en arrière-plan. C'est une manière simple et rapide d'installer Wordpress en utilisant Docker. Toutefois docker ne vous rend pas la main sur votre terminal, en effet vous visualisez les logs de vos conteneurs en direct. Si vous souhaitez lancer votre wordpress en arrière plan sans voir ce qui se passe, vous pouvez utiliser la commande `docker-compose up -d` (-d pour detached).

Une fois les étapes d'installation terminées, vous pouvez accéder à l'interface d'administration de Wordpress en vous rendant à l'URL de votre site et en ajoutant `/wp-admin` à la fin de l'URL. Vous pourrez alors vous connecter avec les identifiants que vous avez définis lors de l'installation.