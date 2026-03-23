NOMS DES MEMBRES DU GROUPES:

ETOUMBI KONDO Ruben
BOKOPE NGOMBI-BADI Géraud


## Description du projet:

SysKit est un outil d’administration système développé en Bash.
Il permet d’automatiser certaines tâches courantes sur un système Linux telles que :

* l’affichage des informations système
* la sauvegarde de dossiers
* le nettoyage de fichiers inutiles
* la génération de rapports


##  Objectif du projet

Ce projet a pour but de :

* pratiquer la programmation Shell (Bash)
* apprendre à utiliser Git et GitHub
* structurer un projet informatique
* travailler en équipe


##  Fonctionnalités

1. Inventory

Affiche les informations système :

* système d’exploitation
* version du noyau
* processeur
* mémoire RAM
* espace disque
* adresse IP

Commande :
./syskit.sh inventory


 2. Backup

Permet de sauvegarder un dossier en archive `.tar`.

Commande :
./syskit.sh backup /chemin/dossier


3. Cleanup

Supprime les fichiers inutiles comme :

* fichiers `.tmp`
* anciens fichiers `.log`

Commande :
./syskit.sh cleanup /chemin

 4. Report

Génère un fichier `report.txt` contenant :

* les informations système
* les sauvegardes réalisées
* le nombre de fichiers supprimés

Commande :
./syskit.sh report


## Structure du projet:

syskit/
├── README.md
├── syskit.sh
├── modules/
│   ├── inventory.sh
│   ├── backup.sh
│   ├── cleanup.sh
│   └── report.sh
├── logs/
├── backup/
├── reports/
└── docs/


