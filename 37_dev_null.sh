#!/bin/bash
#
#To check connectivity and redirect ping output to /dev/null i.e, void

read -p "which site do you want to check?" site
ping -c 1 $site > /dev/null

if [[ $? -eq 0 ]]
then
	echo "Connection successful to $site"
else
	echo "Connection failed to $site"
fi

