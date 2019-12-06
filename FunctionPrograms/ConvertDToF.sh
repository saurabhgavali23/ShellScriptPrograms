#!/bin/bash -x

read -p  "1. Celsius to fahrenheit 2. Fahrenheit to Celsius" l


function getFahrenheitFromCelsius()
{
	read -p "Enter the Celsius " c
	echo $((($c*9/5)+32))
}

function getCelsisFromFehrenheit()
{
	read -p "Enter the Fahrenheit " f
	echo $((($f-32)*5/9))
}

if [ $l -eq 1 ]
then
  	getFahrenheitFromCelsius
else
	getCelsisFromFehrenheit
fi
