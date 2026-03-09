#!/bin/sh
clear

echo "Informe um numero:"
read num

echo "Numero invertido:"
while [ $num -gt 0 ]
do
 digito=`expr $num % 10`
 printf "%d" "$digito"
 num=`expr $num / 10`
done
echo
