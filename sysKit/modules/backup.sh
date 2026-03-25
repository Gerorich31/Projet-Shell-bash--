#!/bin/bash
# Vérifier qu'un dossier a été fourni
if [ -z "$1" ]; then
    echo "Erreur : aucun dossier spécifié."
    echo "Utilisation : ./syskit.sh backup /chemin/dossier"
    exit 1
fi

DOSSIER_SOURCE="$1"

# Vérifier que le dossier existe
if [ ! -d "$DOSSIER_SOURCE" ]; then
    echo "Erreur : le dossier '$DOSSIER_SOURCE' n'existe pas."
    exit 1
fi

echo "backup effectué" >> /logs/backup.log
DOSSIER_BACKUP="./backup"
DATE_JOUR=$(date +"%Y-%m-%d")
NOM_DOSSIER=$(basename "$DOSSIER_SOURCE")
FICHIER_ARCHIVE="${DOSSIER_BACKUP}/${NOM_DOSSIER}_${DATE_JOUR}.tar"

# Créer le dossier backup s'il n'existe pas
mkdir -p "$DOSSIER_BACKUP"

echo "Sauvegarde de '$DOSSIER_SOURCE' en cours..."
echo "Archive : $FICHIER_ARCHIVE"

# Création de l'archive .tar
tar -cf "$FICHIER_ARCHIVE" "$DOSSIER_SOURCE"

if [ $? -eq 0 ]; then
    echo "Sauvegarde terminée avec succès."
else
    echo "Erreur lors de la sauvegarde."
fi 
#le script fontionne
