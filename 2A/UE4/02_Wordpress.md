#BTS #2A #UE5 #Support_et_mise_à_disposition_de_services_informatiques

- [Wordpress](#wordpress)
  - [Installation](#installation)
    - [En suivant la documentation officielle](#en-suivant-la-documentation-officielle)
    - [Via Docker](#via-docker)
  - [Qu'est-ce que Wordpress ?](#quest-ce-que-wordpress-)
  - [Pourquoi utiliser Wordpress ?](#pourquoi-utiliser-wordpress-)
  - [Informations techniques](#informations-techniques)
    - [PHP](#php)
    - [MySQL/MariaDB/PostgreSQL](#mysqlmariadbpostgresql)
    - [Apache ou Nginx](#apache-ou-nginx)
    - [GNU GPL v2](#gnu-gpl-v2)

## Wordpress

### Installation

#### En suivant la documentation officielle

On peut décomposer l'installation de Wordpress en plusieurs étapes en se référant à la [documentation officielle du CMS](https://fr.wordpress.org/support/article/how-to-install-wordpress/).

#### Via Docker

On peut également installer Wordpress via Docker en utilisant un fichier `docker-compose.yml` qui contient les services nécessaires à l'installation de Wordpress. Nous sommes chanceux car Wordpress propose un fichier `docker-compose.yml` prêt à l'emploi. Regardez par [ici](https://hub.docker.com/_/wordpress)

Pour l'installation du CMS, je vous invite à consulter le cours sur Docker ainsi que celui dédié à l'installation de Wordpress dans l'UE5.

### Qu'est-ce que Wordpress ?

Wordpress est un système de gestion de contenu (CMS) qui permet de créer et de gérer facilement un site web. Il est open source et gratuit, ce qui en fait l'un des CMS les plus populaires au monde.

### Pourquoi utiliser Wordpress ?

Wordpress est un outil puissant et polyvalent qui convient à de nombreux types de sites web, des blogs personnels aux sites d'entreprise en passant par les boutiques en ligne. Voici quelques raisons d'utiliser Wordpress :

- Facilité d'utilisation : Wordpress est convivial et intuitif, ce qui le rend accessible même aux débutants.
- Flexibilité : Wordpress offre de nombreuses fonctionnalités et options de personnalisation pour répondre aux besoins de chaque site.
- Communauté active : Wordpress bénéficie d'une large communauté d'utilisateurs et de développeurs qui partagent des ressources et des conseils.
- Sécurité : Wordpress est régulièrement mis à jour pour corriger les failles de sécurité et protéger les sites contre les attaques.
- SEO-friendly : Wordpress est conçu pour être optimisé pour les moteurs de recherche, ce qui facilite le référencement de votre site.
- Extensions : Wordpress propose une vaste bibliothèque d'extensions (plugins) pour ajouter des fonctionnalités supplémentaires à votre site.
- Thèmes : Wordpress propose une grande variété de thèmes gratuits et payants pour personnaliser l'apparence de votre site.
- E-commerce : Wordpress est compatible avec de nombreuses solutions e-commerce pour créer des boutiques en ligne.
- Multilingue : Wordpress est disponible en plusieurs langues et prend en charge les sites multilingues.
- Mobile-friendly : Wordpress est responsive et s'adapte aux différents appareils (ordinateurs, tablettes, smartphones).

C'est en outre un outil très utilisé dans le monde professionnel, ce qui en fait un atout pour votre carrière. La maîtrise de Wordpress peut vous ouvrir de nombreuses opportunités dans le domaine du web et du digital. La plupart des entreprises et des agences web utilisent Wordpress pour créer et gérer leurs sites, ce qui en fait une compétence très recherchée sur le marché du travail.

### Informations techniques

Voici quelques informations techniques sur Wordpress :

- Langage : PHP
- Base de données : MySQL/MariaDB/PostgreSQL
- Serveur web : Apache ou Nginx
- Système d'exploitation : Linux, Windows, macOS
- Prérequis : PHP 7.4 ou supérieur, MySQL 5.6 ou supérieur, Apache 2.4 ou Nginx 1.14 ou supérieur
- Licence : GNU GPL v2
- Site officiel : [wordpress.org](https://fr.wordpress.org/)
- Documentation : [wordpress.org/support](https://fr.wordpress.org/support/)

#### PHP

PHP est un langage de programmation côté serveur qui est utilisé pour développer des applications web dynamiques. Wordpress est écrit en PHP et repose sur ce langage pour fonctionner. Il est donc important de maîtriser quelques notions de base de PHP pour personnaliser et étendre les fonctionnalités de Wordpress.

#### MySQL/MariaDB/PostgreSQL

MySQL, MariaDB et PostgreSQL sont des systèmes de gestion de base de données relationnelles qui sont compatibles avec Wordpress. Wordpress utilise une base de données pour stocker les contenus du site (articles, pages, commentaires, etc.) ainsi que les paramètres de configuration. Il est donc essentiel de disposer d'une base de données pour installer et utiliser Wordpress.

#### Apache ou Nginx

Apache et Nginx sont des serveurs web qui peuvent être utilisés pour héberger des sites web Wordpress. Ils sont responsables de la gestion des requêtes HTTP et de la distribution des fichiers du site aux visiteurs. Il est recommandé d'utiliser l'un de ces serveurs pour garantir la compatibilité et les performances de Wordpress.

#### GNU GPL v2

Wordpress est distribué sous licence GNU GPL v2, ce qui signifie qu'il est open source et que vous pouvez l'utiliser, le modifier et le distribuer librement. Cette licence garantit la liberté d'utilisation et de partage du logiciel, ce qui en fait un outil accessible à tous.