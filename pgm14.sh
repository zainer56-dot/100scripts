#!/bin/sh
clear
printf "entre com o valor: "
read n
printf "entre com a potencia: "
read y
i=1
j=$n
while [ $i -lt $y ]
do
  j=`expr $j \* $n`
  i=`expr $i + 1`
done
echo $j
