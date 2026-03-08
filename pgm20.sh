#!/bin/sh
clear
printf "Digite o valor de N: "
read n
i=2
while [ $i -le $n ]
do
echo $i
i=`expr $i + 2`
done

