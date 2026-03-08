#!/bin/sh
clear
echo -e " Valor 1 \c"
read v1
printf "Valor 2 "
read v2
printf "Informe a operação: "
read op
case $op in
	+) c=`expr $v1 + $v2`;;
	-) c=`expr $v1 - $v2`;;
	/) if [ "$v2" -eq 0 ]; then
	   echo "Erro: divisão por zero"
           exit 1 
           else
	   c=`expr $v1 / $v2`
           fi
           ;;
	\*)c=`expr $v1 \* $v2`;;
  	*)echo "Opcao Invalida";
          exit 1;
esac
echo -e "\n Resultado:  $c"

