#!/bin/sh
clear
printf "Entre com valor: "
read num
i=0
while [ $i -le $num ]
do
  printf "$i "
  i=`expr $i + 2`
done
echo

