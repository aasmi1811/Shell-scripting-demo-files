#!/bin/bash
#
myArray=( 1 2 3 5 you me Hello Hi )

Length=${#myArray[*]}

for (( i=0;i<$Length;i++ ))
do 
	echo "My Array values are ${myArray[$i]}"
done

