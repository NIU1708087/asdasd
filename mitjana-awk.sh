#!/bin/bash

awk -F":" 'BEGIN {i=0;
	total=0;
	mitjana=0}
	{i+=1;
	total+=$4}
	END {mitjana=total/i;
	print "Mitjana: "mitjana}' esportistes
