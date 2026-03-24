#!/bin/bash

# Création du dossier reports s'il n'existe pas
mkdir -p reports

report_file="reports/report.txt"

echo "===== RAPPORT SYSTEME =====" > "$report_file"
echo "Date : $(date)" >> "$report_file"
echo "" >> "$report_file"

# 🔹 1. Informations système
echo "=== Informations système ===" >> "$report_file"
echo "OS : $(uname -o)" >> "$report_file"
echo "Noyau : $(uname -r)" >> "$report_file"
echo "CPU : $(lscpu | grep 'Model name' | cut -d ':' -f2)" >> "$report_file"
echo "RAM :" >> "$report_file"
free -h >> "$report_file"
echo "Disque :" >> "$report_file"
df -h >> "$report_file"
echo "Adresse IP : $(hostname -I)" >> "$report_file"

echo "" >> "$report_file"

# 🔹 2. Sauvegardes réalisées
echo "=== Sauvegardes ===" >> "$report_file"

if [ -d "backup" ]; then
  ls backup >> "$report_file"
else
  echo "Aucune sauvegarde trouvée" >> "$report_file"
fi

echo "" >> "$report_file"

# 🔹 3. Nettoyage (logs)
echo "=== Nettoyage ===" >> "$report_file"

if [ -f "logs/cleanup.log" ]; then
  cat logs/cleanup.log >> "$report_file"
else
  echo "Aucune information de nettoyage" >> "$report_file"
fi

echo "" >> "$report_file"

echo "===== FIN DU RAPPORT =====" >> "$report_file"

echo "Rapport généré dans $report_file"
