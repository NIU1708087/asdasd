#!/bin/bash

awk -F":" 'BEGIN {i=0;
	print "LÍNEA PROCESSADA - CONTINGUT\n================"}
	{i+=1;
	print i": ""Nom: "$1" "$2" "$3" - Club: "$5}
	END {print "================"}' esportistes
