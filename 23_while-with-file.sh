#!/bin/bash
#
#Read contents of a file using WHILE loop
#
while read myVar
do 
	echo "Contents of the file is $myVar"
done < names.txt


