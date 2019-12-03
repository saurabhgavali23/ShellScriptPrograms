#!/bin/bash -x

read -p 'Entr one the value ' x
read -p 'Enter second the value ' y

z=$(( $x + $y ))

echo $z
