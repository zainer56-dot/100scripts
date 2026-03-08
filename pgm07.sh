#!/bin/sh
clear
echo "Informe o ano:"
read ano
if [ `expr $ano % 400` -eq 0 ]; then
    echo "Ano bissexto"
elif [ `expr $ano % 100` -eq 0 ]; then
    echo "Não é bissexto"
elif [ `expr $ano % 4` -eq 0 ]; then
    echo "Ano bissexto"
else
    echo "Não é bissexto"
fi
