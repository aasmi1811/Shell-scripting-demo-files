#!/bin/bash

echo "Enter your choice:"
echo "a> To check today's date"
echo "b> To list all files in current directory"
echo "c> To know current working directory"

read choice

case $choice in
	a)echo "Today's date is:" $(date)
	  echo " Ending .."
	  ;;
	b)ls;;
	c)pwd;;
	*)echo "Please enter a valid value";;
esac
