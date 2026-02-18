#!/bin/bash

#arrays
myArray=( 9 20 40.7 hello "Asmita Kumari" India )

echo "Fourth value is ${myArray[3]}"
echo "Second value is ${myArray[1]}"
echo "all the values of array are ${myArray[*]}"

#length of array, to find number of variables in an array

echo "Total number of values in array is ${#myArray[*]}"

#specific values(even if there is no value at place 6,7, it is not showing error, showing output till 0-5)

echo "values of array at second, third, forth and fifth place are ${myArray[*]:2:7}"

#Updating Array
myArray+=( 89 Arraydemo 77.8 )

echo "all values of new array are ${myArray[*]}"

