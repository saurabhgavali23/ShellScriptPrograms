#!/bin/bash -x


#echo to print EmpName and TotalPay that greter than BasePay
cat data.csv | awk '$4 > 10000 {print $2" "$7}'

#echo to print captain data and TotalPay avg
cat data.csv | grep -i captain | awk '{sum+=$7} END {print sum/NR}'

#echo print data between 70000-10000
cat data.csv | awk '70000 < $5 && $5 < 100000 {print $3" "$5}'


#echo print avg BasePay

cat data.csv | awk '{sum+=$4} END {print sum/NR}'
