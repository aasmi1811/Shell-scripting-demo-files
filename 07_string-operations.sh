#!/bin/bash

myVar="Hello Friends! How are you?"

#to print number of characters in string
echo "Length of myVar is ${#myVar}"

#To convert string in capital letters
echo "Upper case is ${myVar^^}"

#To convert string in lower case
echo " Lower case is ${myVar,,}"

#To replace any word from a sentence
newVar=${myVar/Friends/World}

echo "my newVar is ${newVar}"

#Slicing String
echo "After Slicing ---- ${myVar:7:13}"
echo "After Slice -----${myVar:6:7}"


