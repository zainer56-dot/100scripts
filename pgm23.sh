#!/bin/sh
clear
printf "Informe o valor de n: "
read n
echo
b=1
c=2
i=1
n=`expr $n - 1`
while [ $i -lt $n ]
do
printf "$b/$c+"
b=`expr $b + 1`
c=`expr $c + 1`
i=`expr $i + 1`
done
printf "$b/$c"
echo
