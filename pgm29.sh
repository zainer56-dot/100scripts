#!/bin/sh

echo "Quantos numeros voce deseja digitar?"
read n

i=1
numeros=""

while [ $i -le $n ]
do
  echo "Digite o numero $i:"
  read num
  numeros="$numeros $num"
  i=`expr $i + 1`
done

echo "Escolha a ordem:"
echo "1 - Crescente"
echo "2 - Decrescente"
read ordem

if [ $ordem -eq 1 ]
then
  echo "Numeros em ordem crescente:"
  echo $numeros | tr " " "\n" | sort -n
else
  echo "Numeros em ordem decrescente:"
  echo $numeros | tr " " "\n" | sort -nr
fi
