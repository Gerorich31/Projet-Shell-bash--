#!/bin/bash
echo""
echo "===== Informations système ====="

echo""

echo "Système d'exploitation :"
uname -o



echo "Version du noyau :"
uname -r


echo "Processeur :"
lscpu | grep "Model name"



echo "Mémoire RAM :"
free -h



echo "Espace disque :"
df -h



echo "Adresse IP :"
hostname -I
