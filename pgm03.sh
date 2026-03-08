#!/bin/sh
echo " Informe o Salario Base"
read sb
inss=`echo $sb \* 10 / 100 | bc`
sind=`expr $sb \* 2 / 100`
club=`expr $sb \* 10 / 100`
ir=`expr $sb \* 5 / 100`
prev=`expr $sb \* 10 / 100`
add=`expr $prev + $inss + $sind`
ded=`expr $ir + $prev`
sal=`expr $sb + $add - $ded`
echo
echo "Salario Liquido: $sal"
