#!/bin/sh
clear

echo "Informe a quantidade de numeros:"
read n
i=1
echo "Informe o numero $i:"
read maior
while [ $i -lt $n ]
do
 i=`expr $i + 1`
 echo "Informe o numero $i:"
 read num
  if [ $num -gt $maior ]; then
  maior=$num
  fi
done
echo " Numero Maior: $maior"
