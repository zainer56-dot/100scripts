#!/bin/sh
clear
echo "Informe o salario anual do colaborador:"
read salario
if [ "$salario" -ge 5000 ]; then
bonus=`expr $salario \* 5 / 100`
else
bonus=250
fi
echo "Bonus de R\$ $bonus"
