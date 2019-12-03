#!/bin/bash -x

read -p "Enter the Single Digit " n

case $n in

	1)
        	word="Unit";;
	10)
        	word="ten";;
	100)
        	word="Hundred";;
	1000)
        	word="Thousand";;
esac
