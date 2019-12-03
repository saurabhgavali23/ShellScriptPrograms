#!/bin/bash -x

read -p "Enter the Single Digit " n

if [ $n == 1 ]
then
        echo "Unit"
elif [ $n == 10 ]
then
        echo "ten"
elif [ $n == 100 ]
then
        echo "Hundred"
elif [ $n == 1000 ]
then
        echo "Thousand"
fi
