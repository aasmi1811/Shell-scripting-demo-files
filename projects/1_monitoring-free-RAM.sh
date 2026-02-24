#!/bin/bash
#
#
#To monitor free RAM 
#

FREERAM=$(free -mt | grep Total | awk '{print $4}')
TH=400
if [[ $FREERAM -lt $TH ]]
then
	echo "WARNING : RAM is running low"
else
	echo "RAM is sufficient: $FREERAM M "
fi

