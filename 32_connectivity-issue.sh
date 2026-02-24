#!/bin/bash
#
#To check connectivity

read -p "which site do you want to check?" site
ping -c 1 $site

if [[ $? -eq 0 ]]
then
	echo "Connection successful to $site"
else
	echo "Connection failed to $site"
fi

