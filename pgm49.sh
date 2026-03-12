#!/bin/sh

echo "Quantos numeros deseja digitar?"
read n

i=0

# Ler os números
while [ $i -lt $n ]
do
    echo "Digite o numero:"
    read num
    array[$i]=$num
    i=`expr $i + 1`
done

# Ordenação (Bubble Sort simples)
i=0
while [ $i -lt $n ]
do
    j=`expr $i + 1`
    while [ $j -lt $n ]
    do
        if [ ${array[$i]} -gt ${array[$j]} ]
        then
            temp=${array[$i]}
            array[$i]=${array[$j]}
            array[$j]=$temp
        fi
        j=`expr $j + 1`
    done
    i=`expr $i + 1`
done

echo "Array em ordem crescente:"
i=0
while [ $i -lt $n ]
do
    echo ${array[$i]}
    i=`expr $i + 1`
done
