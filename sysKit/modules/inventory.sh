#!/bin/bash
echo""
echo "===== Informations système ====="

echo""
#Systeme d'exploitation
echo "Système d'exploitation :"
uname -o

#Version du noyau

echo "Version du noyau :"
uname -r

#Infomation sur le Processeur 
echo "Processeur :"
lscpu | grep "Model name"


#Information sur la Ram
echo "Mémoire RAM :"
free -h


#Information sur le disque
echo "Espace disque :"
df -h


#Information sur le disque
echo "Adresse IP :"
hostname -I
echo ""
echo ""
echo "Description des caracteristiques d'un ordinateur"
