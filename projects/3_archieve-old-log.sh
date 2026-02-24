#!/bin/bash
#
#MOve old logs to archieve folder
#
BASE=/home/ec2-user/scripts/projects/varbkp
ARCHIEVE=/home/ec2-user/scripts/projects/varbkp/archieve

#Check if BASE folder is present
if [[ ! -d $BASE ]]
then
	echo "Base Folder is missing- $BASE"
	exit 1
fi

#Check if Archieve folder is present or not and create if not present
if [[ ! -d $ARCHIEVE ]]
then
	#echo "Archieve folder is missing, creating archieve folder:"
	mkdir -p /home/ec2-user/scripts/projects/varbkp/archieve
fi

#Chcek logs older than 30 days and move to archieve folder
for i in $(find $BASE -maxdepth 1 -type f -mtime +30 )
do
	echo "[$(date "+%Y-%m-%d %H:%M:%S")] archiving $i ===> $ARCHIEVE"
	gzip $i | exit 1
	mv $i.gz $ARCHIEVE | exit 1
done

