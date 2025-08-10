#BTS #SIO #2A 

## Ansible 🤖

### Présentation

Ansible est un outil open-source de gestion de configuration et d'automatisation des tâches. Il permet aux administrateurs système de déployer, configurer et gérer des serveurs de manière efficace et reproductible.

#### Comment ça marche ?

Ansible fonctionne en utilisant des "playbooks", qui sont des fichiers YAML contenant des tâches à exécuter sur des serveurs distants. Voici les grandes lignes de son fonctionnement :

1. **Inventaire :** Tout commence par la création d'un inventaire, qui est un fichier contenant la liste des serveurs à gérer. L'inventaire peut être statique (fichier texte) ou dynamique (généré par un script).
2. **Playbooks :** Les playbooks sont des fichiers YAML qui définissent les tâches à exécuter sur les serveurs distants. Chaque playbook contient une ou plusieurs "plays", qui regroupent des tâches liées à un ensemble de serveurs.
3. **Tâches :** Les tâches sont des actions à effectuer sur les serveurs distants, comme installer des logiciels, configurer des services, copier des fichiers, etc. Chaque tâche est décrite dans le playbook avec des modules Ansible.
4. **Modules :** Les modules Ansible sont des scripts Python qui effectuent des actions spécifiques sur les serveurs distants. Ils sont utilisés pour exécuter des tâches comme la gestion des packages, la configuration des services, la gestion des fichiers, etc.
5. **Exécution :** Une fois le playbook créé, vous pouvez l'exécuter en utilisant la commande `ansible-playbook`. Ansible se connecte aux serveurs distants, transfère les modules nécessaires, exécute les tâches et rapporte les résultats.
6. **Résultats :** À la fin de l'exécution, Ansible affiche un rapport détaillé des tâches effectuées, des erreurs éventuelles et des changements apportés aux serveurs. Cela permet de vérifier que les opérations se sont déroulées comme prévu.
7. **Reproductibilité :** Les playbooks Ansible sont reproductibles, ce qui signifie que vous pouvez les exécuter plusieurs fois sans risque de modifier l'état des serveurs. Cela garantit la cohérence et la fiabilité des opérations de gestion.
8. **Automatisation :** Ansible permet d'automatiser de nombreuses tâches de gestion système, ce qui réduit le temps et les efforts nécessaires pour déployer et configurer des serveurs. Il offre également des fonctionnalités avancées comme la gestion des variables, des conditions, des boucles, etc.

#### Concurrents

Ansible est l'un des outils les plus populaires de gestion de configuration et d'automatisation des tâches, mais il existe d'autres solutions similaires sur le marché, comme Puppet, Chef, SaltStack, etc. Chaque outil a ses propres avantages et inconvénients, et le choix dépend des besoins spécifiques de l'organisation.

#### Pourquoi Ansible est-il important ?

Ansible est devenu un outil incontournable pour les administrateurs système et les équipes DevOps pour plusieurs raisons clés, reflétant son importance croissante dans la gestion des infrastructures informatiques :

1. **Simplicité :** Ansible est facile à apprendre et à utiliser, grâce à sa syntaxe simple et lisible basée sur YAML. Cela permet aux administrateurs système de créer rapidement des playbooks pour automatiser des tâches complexes.
2. **Agentless :** Ansible est un outil "agentless", ce qui signifie qu'il n'a pas besoin d'installer d'agent sur les serveurs distants pour fonctionner. Cela simplifie le déploiement et la gestion des serveurs, réduisant ainsi la complexité et les risques.

### TP Construisons un (presque) Ansible

Vous vous souvenez du chapitre 06 sur SSH ? Nous avions dans notre TP créé un conteneur Ubuntu avec un serveur SSH. Nous allons maintenant automatiser la configuration de ce serveur SSH en utilisant un script Bash.

#### Instructions

Nous voulons créer et piloter deux serveurs via notre ordinateur, uniquement via SSH mais en automatisant la configuration des serveurs.

Nous voulons donc :
- Deux conteneurs Ubuntu avec un serveur SSH installé.
- Notre clé SSH publique doit être ajoutée à chaque conteneur pour nous permettre de nous connecter sans mot de passe.
- Un script Bash qui automatise la configuration des serveurs.
- Nous exécuterons ce script de la manière suivante :
  ```bash
  bash script.sh 'ma commande à exécuter sur les serveurs'
  ```
- Nous créerons grâce à ce script, un nouvel utilisateur sur le système.

Ainsi nous pourrons imiter le comportement d'Ansible via un simple script Bash. Bien sûr, ce script sera très basique et ne couvrira pas toutes les fonctionnalités d'Ansible, mais il nous permettra de comprendre les principes de base de la gestion de configuration et de l'automatisation des tâches.

À vous de jouer ! 🚀

#### Correction 

Je vous invite à vous reporter à la correction du TP 06 pour créer vos deux conteneurs Ubuntu avec un serveur SSH et votre clé d'accès configurée.

Une fois cela fait, nous allons pouvoir créer notre script Bash pour automatiser la configuration des serveurs.

Dans un premier temps, récupèrons les deux IPs de nos serveurs :
```bash
CONTAINER ID   IMAGE     COMMAND       CREATED        STATUS       PORTS     NAMES
e471d2b885f0   ubuntu    "/bin/bash"   23 hours ago   Up 8 hours             ecstatic_shirley
05f4eaedc2be   ubuntu    "/bin/bash"   26 hours ago   Up 6 hours             beautiful_bartik
```

Pour chaque ID, nous allons inspecter le conteneur pour récupérer l'IP :
```bash
docker inspect e471d2b885f0 | grep IPAddress
docker inspect 05f4eaedc2be | grep IPAddress
```

Dans mon cas, j'utiliserai les IPs suivantes :`172.17.0.2` et `172.17.0.3`.

Éditons un nouveau fichier que nous nommerons `script.sh` :
```bash
nano script.sh
```

Dans ce fichier nous allons ajouter le script suivant :
```bash
#!/bin/bash

echo '[INFO] Initialisation du script…'

command=$1

echo '[INFO] Je travaille sur le premier containeur'
ssh root@172.17.0.2 -p7522 $command

echo '[INFO] Je travaille sur le deuxième containeur'
ssh root@172.17.0.3 -p7522 $command

echo "[SUCCESS] J'ai terminé :)"
```

Sauvegardons et quittons le fichier.

Lançons maintenant notre script avec une commande de création d'utilisateur :
```bash
bash script.sh 'useradd -m titouan && echo "titouan:test" | chpasswd'
```

Voici le retour de cette commande dans mon cas :
```bash
[INFO] Initialisation du script…
[INFO] Je travaille sur le premier containeur
[INFO] Je travaille sur le deuxième containeur
[SUCCESS] J'ai terminé :)
```

Mais… Comment vérifier que l'utilisateur a bien été créé ?

Certes, nous pourrions nous connecter à chaque serveur pour vérifier, mais nous sommes des fainéants, n'est-ce pas ?

Nous pouvons, dès la suite de notre commande précédente, demander à bash de nous communiquer le code de retour de la commande :
```bash
echo $?
```

Si la commande s'est bien déroulée, le code de retour sera `0`. Sinon, il sera différent de `0`.

Dans notre cas, nous avons bien un code de retour `0`, donc tout s'est bien passé !

Et si nous voulions vérifier que l'utilisateur a bien été créé ? Nous pourrions utiliser la commande suivante :
```bash
ssh root@172.17.0.2 'ls /home'
```


Et voilà, nous avons automatisé la création d'un utilisateur sur nos deux serveurs Ubuntu via un simple script Bash.