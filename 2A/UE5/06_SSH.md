#BTS #SIO #2A 

- [SSH 🚪](#ssh-)
  - [Définition](#définition)
  - [Comment ça marche ?](#comment-ça-marche-)
- [Créer une clé SSH](#créer-une-clé-ssh)
- [Utiliser SSH](#utiliser-ssh)
- [Installation d'un server openssh](#installation-dun-server-openssh)
  - [TP Docker Ubuntu](#tp-docker-ubuntu)
    - [Instructions](#instructions)
  - [Sécurisez votre serveur SSH](#sécurisez-votre-serveur-ssh)
    - [Changez le port par défaut](#changez-le-port-par-défaut)


## SSH 🚪

### Définition 

SSH (Secure Shell) est un protocole de communication sécurisé qui permet d'accéder à distance à un serveur ou à un ordinateur, d'exécuter des commandes à distance, de transférer des fichiers de manière sécurisée, etc.

### Comment ça marche ?

SSH fonctionne en utilisant une paire de clés cryptographiques : une clé privée et une clé publique. Voici les grandes lignes de son fonctionnement :

1. **Génération des clés :** Tout commence par la génération d'une paire de clés cryptographiques : une clé privée et une clé publique. La clé privée est conservée secrète sur votre ordinateur, tandis que la clé publique est partagée avec les serveurs distants.
2. **Authentification :** Lorsque vous vous connectez à un serveur distant, votre client SSH envoie votre clé publique au serveur pour vérification. Si le serveur reconnaît votre clé publique, il vous demande de prouver que vous possédez la clé privée correspondante.
3. **Échange de clés :** Une fois l'authentification réussie, le serveur et le client SSH échangent des clés de session pour chiffrer les communications entre eux. Cela garantit que les données échangées sont sécurisées et confidentielles.
4. **Communication sécurisée :** Une fois la connexion établie, vous pouvez exécuter des commandes à distance, transférer des fichiers, etc., en toute sécurité. Toutes les données échangées entre le client et le serveur sont chiffrées pour éviter toute interception ou altération.
5. **Déconnexion sécurisée :** Lorsque vous avez terminé, vous pouvez vous déconnecter du serveur en toute sécurité, en fermant la connexion SSH. Cela garantit que votre session est propre et sécurisée.
6. **Gestion des clés :** Il est important de protéger votre clé privée, car quiconque y a accès peut se connecter à distance à vos serveurs. Vous pouvez également configurer des autorisations spécifiques pour les clés publiques sur les serveurs distants pour limiter l'accès.

## Créer une clé SSH

Pour créer une paire de clés SSH, vous pouvez utiliser la commande `ssh-keygen` sur votre terminal. Voici comment procéder :

1. Ouvrez un terminal sur votre ordinateur.
2. Tapez la commande suivante pour générer une nouvelle paire de clés SSH :

```bash
ssh-keygen -t ed25519 -C "your_email@example.com"
```

3. Suivez les instructions à l'écran pour choisir l'emplacement où enregistrer la clé et définir un mot de passe (optionnel).
4. Une fois la clé générée, vous obtiendrez deux fichiers : `id_ed25519` (clé privée) et `id_ed25519.pub` (clé publique).
5. Vous pouvez maintenant utiliser votre clé publique pour vous connecter à des serveurs distants en ajoutant son contenu au fichier `~/.ssh/authorized_keys` sur le serveur distant.

Le contenu de votre clé se trouve par défaut dans le fichier `~/.ssh/id_ed25519.pub`. Vous pouvez l'afficher en utilisant la commande `cat ~/.ssh/id_ed25519.pub`. Si vous avez modifié son nom, remplacez `id_ed25519.pub` par le nom de votre fichier.

## Utiliser SSH

Pour vous connecter à un serveur distant en utilisant SSH, vous pouvez utiliser la commande `ssh` suivie de l'adresse IP ou du nom de domaine du serveur. Voici un exemple :

```bash
ssh user@server_ip
```

Remplacez `user` par votre nom d'utilisateur sur le serveur et `server_ip` par l'adresse IP du serveur distant. Si vous utilisez un nom de domaine, remplacez `server_ip` par le nom de domaine.

Si vous avez configuré une paire de clés SSH, la connexion se fera sans mot de passe. Sinon, vous devrez saisir le mot de passe de votre compte utilisateur sur le serveur.

Une fois connecté, vous pouvez exécuter des commandes à distance, transférer des fichiers, etc., en toute sécurité. Pour fermer la connexion SSH, utilisez la commande `exit`.

## Installation d'un server openssh

Pour installer un serveur OpenSSH sur un serveur Linux, vous pouvez utiliser la commande suivante :

```bash
sudo apt update && sudo apt upgrade -y
sudo apt install openssh-server
```

Cette commande mettra à jour les paquets disponibles et installera le serveur OpenSSH sur votre serveur. Une fois l'installation terminée, le serveur SSH sera actif et vous pourrez vous y connecter à distance.

### TP Docker Ubuntu

#### Instructions

Faisons l'exercice suivant :

1. Créez un conteneur Ubuntu en utilisant l'image officielle d'Ubuntu.
2. Installez le serveur OpenSSH dans le conteneur Ubuntu.
3. Créez une paire de clés SSH sur votre ordinateur.
4. Copiez la clé publique dans le conteneur Ubuntu pour vous connecter à distance.
5. Connectez-vous au conteneur Ubuntu en utilisant SSH.

Bon travail ! 👨‍💻👩‍💻

#### Correction

Voici comment vous pouvez réaliser cet exercice :

1. Créez un conteneur Ubuntu en utilisant l'image officielle d'Ubuntu :

```bash
docker run -it --name ubuntu_ssh ubuntu
```

2. Installez le serveur OpenSSH dans le conteneur Ubuntu :

```bash
apt update && apt install -y openssh-server
```

3. Créez une paire de clés SSH sur votre ordinateur :

```bash
ssh-keygen -t ed25519 -C "votre_utilisateur"
```

4. Copiez la clé publique dans le fichier `~/.ssh/authorized_keys` du conteneur Ubuntu. Si le dossier n'existe pas, créez-le :

```bash
mkdir ~/.ssh ; nano ~/.ssh/authorized_keys
```

5. Si vous utilisez un autre éditeur de texte, remplacez `nano` par l'éditeur de votre choix ou installez le.

```bash
apt install nano -y
```

6. Autorisez l'utilisateur root à se connecter en SSH. Décommentez la ligne `PermitRootLogin` et changez sa valeur à `yes`. Enregistrez et quittez l'éditeur.

```bash
nano /etc/ssh/sshd_config
```

1. Démarrer le service SSH et appliquer les modifications :

```bash
service ssh start
```

6. Connectez-vous au conteneur Ubuntu en utilisant SSH :

```bash
ssh root@container_ip
```

Pour connaître l'IP de votre conteneur, utilisez la commande `docker inspect ID_du_conteneur | grep IPAddress`. Rempalcez `ID_du_conteneur` par l'ID de votre conteneur.

Pour trouver l'ID de votre conteneur, utilisez la commande `docker ps`.

### Sécurisez votre serveur SSH

#### Changez le port par défaut

Pour sécuriser votre serveur SSH, vous pouvez changer le port par défaut (22) pour éviter les attaques automatisées. Voici comment procéder :

1. Ouvrez le fichier de configuration SSH :

```bash
nano /etc/ssh/sshd_config
```
2. Trouvez la ligne `Port 22` et changez le port par un autre de votre choix (par exemple, 2222).
3. Enregistrez et quittez l'éditeur.
4. Redémarrez le service SSH pour appliquer les modifications :

```bash
service ssh restart
```

Désormais, vous devrez vous connecter en utilisant le nouveau port (par exemple, `ssh user@server_ip -p 2222`).