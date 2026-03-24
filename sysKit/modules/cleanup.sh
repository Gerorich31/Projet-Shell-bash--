#!/bin/bash

path=$1

if [ ! -d "$path" ]; then
  echo "Dossier invalide"
  exit 1
fi

echo "Nettoyage des fichiers .tmp..."

for file in $(find "$path" -name "*.tmp"); do
  rm "$file"
done

echo "Suppression des anciens fichiers .log..."

count=0

for file in $(find "$path" -name "*.log" -mmin +2); do
  rm "$file"
  ((count++))
done

echo "$count fichiers .log supprimés" > logs/cleanup.log
echo "$count fichiers .log supprimés"

echo "Nettoyage terminé !"
