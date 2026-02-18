#!/bin/bash

declare -A myArray
myArray=( [name]=Asmita [age]=30 [city]=Paris )

echo "My name is ${myArray[name]}"
echo "My city is ${myArray[city]}"

