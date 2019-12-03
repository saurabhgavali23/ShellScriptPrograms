#!/bin/bash -x

read -p "1.Feet to Inch 2.Inch to Feet 3.Feet to Meter 4.Meter to Feet " ch

case $ch in

	1)
		read -p "Enter Feet " f
		feetToInch=$(( $f * 12 ));;
	2)
		read -p "Enter Inch " i
		InchtoFeet=$(( $i / 12 ));;
	3)
		read -p "Enter feet " f
		feetToMeter=`expr "$f * 0.3048" | bc`;;
	4)
		read -p "Enter meter " m
		MeterTofeet=`expr "$m * 3.28" | bc`;;
	*)
		default=0;;
esac
