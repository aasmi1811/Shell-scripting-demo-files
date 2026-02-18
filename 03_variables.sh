#!/bin/bash

#script to show how to use variables

name="Asmita"
age=30

echo "My name is $name and age is $age"

#variable to store output of a command
HOSTNAME=$(hostname)

echo "The hostame of this machine is $HOSTNAME"
