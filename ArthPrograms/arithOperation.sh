#!/bin/bash -x


read -p 'Enter the a value ' a
read -p 'Enter the b value ' b
read -p 'Enter the c value ' c


x=$(( $a + $b * $c ))

echo $x

y=$(( $c + $a / $b ))

echo $y

z=$(( $a % $b + $c ))

echo $z

p=$(( $a * $b + $c ))

echo $p


