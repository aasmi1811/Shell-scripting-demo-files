#!/bin/bash
#
#To access the arguments
echo "First argument is $1"
echo " Second argument is $2"

echo "All arguments are $@"
echo "Total number of arguments are $#"

#For loop to access the values from arguments

for filename in $@
do 
	echo "Copying filename-- $filename"
done

