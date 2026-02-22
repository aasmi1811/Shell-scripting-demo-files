#!/bin/bash
#
Addition () {
	local num1=$1
	local num2=$2
	let sum=$num1+$num2
	echo "Addition of $num1 and $num2 is $sum"
}
Addition 2 4

