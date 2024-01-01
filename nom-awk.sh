#!/bin/bash

echo -e "\n"
echo "FILTRAR ESPORTISTA PER NOM"
echo ""

awk -F":" 'BEGIN {print "NOMS\n================"}
	{print $1}
	END {print "================"}' esportistes

echo ""
read -p "Introdueix nom a filtrar: " nom
echo ""

#awk -F":" -v nom="$nom" '/nom/ {print "Nom: "$1" "$2" "$3"\nEdat: "$4"\nClub: "$5"\nPoblació: "$6}' esportistes
awk -F":" -v nom="$nom" '$1 ~ nom {print "Nom: "$1" "$2" "$3"\nEdat: "$4"\nClub: "$5"\nPoblació: "$6}' esportistes

echo ""
read -s -p "Premi enter per continuar "
echo -e "\n"
