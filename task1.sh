#!/bin/bash

mkdir /home/student/tema2-scripts-output/backup-confs
touch /home/student/tema2-scripts-output/backup-confs/errors.txt

for file in $(find /etc -iname \*.conf)
do
	cp $file /home/student/tema2-scripts-output/backup-confs 2> /home/student/tema2-scripts-output/back
	file=$(basename $file)
	file=/home/student/tema2-scripts-output/backup-confs/$file
	size=$(wc -c $file | cut -d" " -f1)
	if [ $size -gt 1024 ]
	then
		mv $file $file\_large
	fi
done

