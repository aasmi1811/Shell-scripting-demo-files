#!/bin/bash

#cond 1 && cond 2 || cond 3 (condition 2 will only execute if cond 1 is true, else cond 3 will execute)
#
#
read -p "what's your age?" age

[[ $age -ge 18 ]] && echo "adult" || echo "minor"

