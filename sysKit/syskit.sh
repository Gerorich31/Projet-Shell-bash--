#!/bin/bash

case $1 in
  inventory)
    bash modules/inventory.sh
    ;;
  backup)
    bash modules/backup.sh $2
    ;;
  cleanup)
    bash modules/cleanup.sh $2
    ;;
  report)
    bash modules/report.sh
    ;;
  *)
    echo "Commande inconnue"
    ;;
esac
