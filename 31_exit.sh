#!/bin/bash
#
#To access the arguments
#
if [[ $# -eq 0 ]]
then
	echo "Please provide atleast 1 argument"
	exit 1
fi 

echo "First argument is $1"
echo " Second argument is $2"

echo "All arguments are $@"
echo "Total number of arguments are $#"

#For loop to access the values from arguments

for filename in $@
do 
	echo "Copying filename-- $filename"
done

