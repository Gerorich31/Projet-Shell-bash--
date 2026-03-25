#i!/bin/bash

# Vérifier qu'une commande est donnée
if [ -z "$1" ]; then
  echo "Chemin correct : ./syskit.sh {inventory|backup|cleanup|report}"
  exit 1
fi

# Gestion des commandes
if [ "$1" = "inventory" ]; then

   ./modules/inventory.sh

elif [ "$1" = "backup" ]; then

  # Vérifier le chemin
  if [ -z "$2" ]; then
    echo "Erreur : chemin manquant"
    echo "Usage : ./syskit.sh backup /chemin/dossier"
    exit 1
  fi

  if [ ! -d "$2" ]; then
    echo "Erreur : dossier invalide"
    exit 1
  fi

    ./modules/backup.sh "$2"

elif [ "$1" = "cleanup" ]; then

  # Vérifier le chemin
  if [ -z "$2" ]; then
    echo "Erreur : chemin manquant"
    echo "Usage : ./syskit.sh cleanup /chemin"
    exit 1
  fi

  if [ ! -d "$2" ]; then
    echo "Erreur : dossier invalide"
    exit 1
  fi

       ./modules/cleanup.sh "$2"

elif [ "$1" = "report" ]; then

     ./modules/report.sh

else
  echo "Commande inconnue ❌"
  echo "Commandes disponibles :"
  echo "  inventory  → afficher les infos système"
  echo "  backup     → sauvegarder un dossier"
  echo "  cleanup    → nettoyer des fichiers"
  echo "  report     → générer un rapport"
  exit 1
fi
