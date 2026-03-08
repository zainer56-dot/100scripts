#!/bin/sh
clear
printf "Digite o valor de N: "
read n

i=1
soma=0

while [ $i -le $n ]
do
	soma=`expr $soma + $i`
	i=`expr $i + 1`
done
echo "Soma da série (1 + 2 + ... + $n) = $soma"
