#!/bin/bash
#
#To check if file exists or not
#
FILEPATH=/home/ec2-user/scripts/demo.csv

if [[ -f $FILEPATH ]]
then
	echo "File exists."
else
	touch $FILEPATH
	echo "File created"
fi

