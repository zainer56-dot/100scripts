#!/bin/sh
clear
printf "Digite o numero inicial: "
read inicio
printf "Digite o numero final: "
read fim

num=$inicio

while [ $num -le $fim ]
do
    if [ $num -gt 1 ]; then
        i=2
        primo=1
        while [ `expr $i \* $i` -le $num ]
        do
            if [ `expr $num % $i` -eq 0 ]; then
                primo=0
                break
            fi
            i=`expr $i + 1`
        done
        if [ $primo -eq 1 ]; then
            echo $num
        fi
     fi
    num=`expr $num + 1`
done
