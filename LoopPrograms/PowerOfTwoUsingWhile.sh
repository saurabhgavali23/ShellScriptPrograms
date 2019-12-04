#!/bin/bash -x

read -p "Enter the number" power

	while [ $power -lt 256 ]
	do
		power=$((2*$power)) 
	done

