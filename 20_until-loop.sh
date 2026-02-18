#!/bin/bash
#
#UNTIL Loop demo
#
a=10

until [[ $a -eq 1 ]]
do
	echo "value of a is $a"
	a=`expr $a - 1`   #we can also write it as a-- ,also use ` not '
done

