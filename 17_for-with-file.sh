#!/bin/bash
#
#Getting values from a file using for loop
#
FILE=/home/ec2-user/scripts/names.txt

for name in $(cat $FILE)
do
	echo "Name is $name"
done

