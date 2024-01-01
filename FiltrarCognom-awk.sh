#!/bin/bash

echo -e "\n"

if [[ -e "esportistes-AM" ]]; then
	rm esportistes-AM
fi

if [[ -e "esportistes-NZ" ]]; then
	rm esportistes-NZ
fi

awk '$1 ~ /^[A-Ma-m]/ {print $1" "$2" "$3 > "esportistes-AM"}
	$1 ~ /^[N-Zn-z]/ {print $1" "$2" "$3 > "esportistes-NZ"}' esportistes

read -s -p "Premi enter per continuar "
echo -e "\n"
