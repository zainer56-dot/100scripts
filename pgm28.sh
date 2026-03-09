#!/bin/sh

echo "Quantos números deseja informar?"
read N

i=1
nums=""

# Ler os números
while [ $i -le $N ]
do
    echo "Digite o número $i:"
    read num
    nums="$nums$num\n"
    i=`expr $i + 1`
done

# Escolha da ordem
echo "Escolha a ordem:"
echo "1 - Crescente"
echo "2 - Decrescente"
read ordem

echo "Resultado ordenado:"

if [ "$ordem" -eq 1 ]; then
    printf "$nums" | sort -n
elif [ "$ordem" -eq 2 ]; then
    printf "$nums" | sort -nr
else
    echo "Opção inválida"
fi
