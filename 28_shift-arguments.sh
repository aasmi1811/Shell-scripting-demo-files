#!/bin/bash
#
#Provide 2 arguments on cmd and after 1st argument, shift all other arguments for description
echo "Creating User"
echo "Username is $1"

shift
echo "Description is $@"


