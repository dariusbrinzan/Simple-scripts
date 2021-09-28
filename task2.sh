#!/bin/bash

sort /home/student/tema2-scripts/cows.txt > /home/student/tema2-scripts/vaci.txt -t',' -k2,2

while IFS= read -r line;
do
	tip_op=$(echo $line | cut -d',' -f1)
	text=$(echo $line | cut -d',' -f2)
	echo "$text" | cowsay -f "$tip_op" 2> /dev/null >> /home/student/tema2-scripts-output/cows-restults.txt
done < /home/student/tema2-scripts/vaci.txt
