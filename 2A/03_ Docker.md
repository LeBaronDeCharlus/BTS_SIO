#BTS #SIO #2A 

## Docker 🐳

Docker est une plateforme open-source qui permet de développer, déployer et exécuter des applications dans des conteneurs. Un conteneur est une unité logicielle légère qui contient tout ce dont une application a besoin pour fonctionner, y compris le code, les dépendances, les bibliothèques, etc.

Docker repose sur la technologie des conteneurs Linux, qui permet d'isoler les applications du reste du système. Chaque conteneur est isolé et sécurisé, ce qui garantit la portabilité et la sécurité des applications.

Docker permet de déployer des applications de manière rapide et efficace, en garantissant la portabilité et la sécurité des conteneurs. Il est largement utilisé dans le développement et le déploiement d'applications, notamment dans les environnements cloud.

Docker est composé de plusieurs éléments, dont les plus importants sont :

- le **moteur Docker**, qui permet de créer, exécuter et gérer des conteneurs.
- le **registre Docker**, qui permet de stocker et partager des images de conteneurs.
- les **images Docker**, qui contiennent les applications et leurs dépendances.
- les **conteneurs Docker**, qui sont des instances d'images Docker en cours d'exécution.
- les **services Docker**, qui permettent de déployer des applications distribuées.

Docker est distribué sous forme de packages pour les principaux systèmes d'exploitation, dont Linux, Windows et macOS. Il est également disponible en tant que service cloud, avec Docker Hub et Docker Cloud.

Docker est largement utilisé dans le développement et le déploiement d'applications, notamment dans les environnements cloud. Il permet de simplifier le processus de développement, de tester et de déployer des applications, en garantissant la portabilité et la sécurité des conteneurs.

Docker est une technologie incontournable pour les développeurs et les administrateurs système, qui cherchent à optimiser le processus de développement et de déploiement des applications.

## CLI Docker 🖥

La CLI Docker (Command Line Interface) est un outil en ligne de commande qui permet de gérer les conteneurs Docker. Elle permet d'exécuter des commandes pour créer, exécuter, gérer et supprimer des conteneurs, des images, des réseaux, des volumes, etc.

La CLI Docker est composée de plusieurs commandes, dont les plus courantes sont :

- **docker run** : exécute une image Docker dans un conteneur.
- **docker build** : construit une image Docker à partir d'un Dockerfile.
- **docker pull** : télécharge une image Docker depuis un registre.
- **docker push** : pousse une image Docker vers un registre.
- **docker ps** : affiche les conteneurs en cours d'exécution.
- **docker images** : affiche les images Docker disponibles.
- **docker network** : gère les réseaux Docker.
- **docker volume** : gère les volumes Docker.
- **docker-compose** : gère les applications multi-conteneurs avec Docker Compose.

La CLI Docker permet de gérer les conteneurs Docker de manière efficace et sécurisée. Elle permet d'automatiser les tâches courantes, de surveiller les conteneurs en cours d'exécution, de gérer les images et les réseaux, etc.

---

## Dockerfile 📦

Un Dockerfile est un fichier texte qui contient les instructions nécessaires pour créer une image Docker. Il permet de définir l'environnement de l'application, les dépendances, les commandes d'installation, etc.

Un Dockerfile est composé de plusieurs instructions, dont les plus courantes sont :

- **FROM** : spécifie l'image de base à utiliser.
- **RUN** : exécute une commande lors de la construction de l'image.
- **COPY** : copie des fichiers depuis l'hôte vers l'image.
- **ADD** : copie des fichiers depuis l'hôte vers l'image, avec prise en charge des URL et des archives.
- **CMD** : spécifie la commande par défaut à exécuter lorsque le conteneur démarre.
- **ENTRYPOINT** : spécifie la commande à exécuter lorsque le conteneur démarre.
- **ENV** : définit des variables d'environnement.
- **EXPOSE** : expose des ports du conteneur.
- **VOLUME** : monte des volumes depuis l'hôte vers le conteneur.

Un Dockerfile permet de définir l'environnement de l'application de manière reproductible et portable. Il simplifie le processus de création, de gestion et de déploiement des images Docker, en garantissant la cohérence et la fiabilité des conteneurs.

---

## Docker Compose 🚢

Docker Compose est un outil qui permet de définir et de gérer des applications multi-conteneurs avec Docker. Il permet de spécifier les services, les réseaux, les volumes, etc. nécessaires au déploiement de l'application.

Docker Compose repose sur un fichier YAML, appelé `docker-compose.yml`, qui contient la configuration de l'application. Ce fichier permet de définir les services, les réseaux, les volumes, etc. nécessaires au déploiement de l'application.

Docker Compose permet de simplifier le processus de déploiement des applications multi-conteneurs, en garantissant la cohérence et la fiabilité des conteneurs. Il permet de définir l'architecture de l'application de manière reproductible et portable.

Docker Compose est largement utilisé dans le développement et le déploiement d'applications, notamment dans les environnements cloud. Il permet de simplifier le processus de création, de gestion et de déploiement des applications multi-conteneurs, en garantissant la portabilité et la sécurité des conteneurs.