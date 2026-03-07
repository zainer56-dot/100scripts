#!/bin/sh

echo "Quantos números deseja informar?"
read n

i=1

# leitura dos valores
while [ $i -le $n ]
do
    echo "Digite o número $i:"
    read valor

    eval array$i=$valor

    i=`expr $i + 1`
done


# inicialização
eval maior=\$array1
eval menor=\$array1

i=1

# varredura do "array"
while [ $i -le $n ]
do
    eval num=\$array$i

    if [ $num -gt $maior ]
    then
        maior=$num
    fi

    if [ $num -lt $menor ]
    then
        menor=$num
    fi

    i=`expr $i + 1`
done

echo "Maior número: $maior"
echo "Menor número: $menor"
