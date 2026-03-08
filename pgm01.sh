#!/bin/sh
#
#Objetivo: Identificar numeros pares e impares
#
clear
echo "Informe o numero"
read x
y=`expr $x % 2`
if test $y = 0
 then
 echo "Par"
 else
 echo "Impar"
fi
