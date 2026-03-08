#!/bin/sh
#
printf "Entre com o Valor: "
read valor
if [ $valor -lt 1000 ]
 then
 taxa=`echo $pa \* 2 /100 | bc`
 desc=`echo $pa \* 10 /100 | bc`
 else
 taxa=`echo $valor \*5 /100 | bc`
 desc=`echo $valor \*20 /100 | bc`
fi
media=`expr $valor + $taxa - $desc`
echo "Pagamento em dinheiro: $media"
