#!/bin/bash
#
#example of break in a loop
#We just need to confirm if a given  no. is present or not
#

no=6

for i in {1..9}
do
	#Break the loop if number is found
	if [[ $no -eq $i ]]
	then
		echo "$no is found"
		break
	fi
	 echo "number is $i"
done

