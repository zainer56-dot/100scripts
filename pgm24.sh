#!/bin/sh
clear
echo "Informe o valor de n:"
read n
i=1
soma=0
while [ $i -le $n ]
do
quadrado=`expr $i \* $i`
soma=`expr $soma + $quadrado`
i=`expr $i + 1`
done
echo $soma
