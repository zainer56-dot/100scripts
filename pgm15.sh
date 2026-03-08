#!/bin/sh
clear
i=1
fat=1
printf "Digite o numero: "
read num
while [ $i -le $num ]
do
	fat=`expr $fat \* $i`
        i=`expr $i + 1`
done
echo "Fatorial de $num: $fat"
