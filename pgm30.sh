#!/bin/sh

echo "Digite uma string:"
read str

# Descobrir tamanho da string
len=`expr length "$str"`

rev=""

# Percorrer do fim para o começo
while [ $len -gt 0 ]
do
    ch=`echo "$str" | cut -c $len`
    rev="$rev$ch"
    len=`expr $len - 1`
done

echo "String reversa:"
echo "$rev"
