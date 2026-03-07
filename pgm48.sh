#!/bin/sh

# verifica se o usuário informou o arquivo
if [ $# -eq 0 ]
then
    echo "Uso: $0 nome_do_arquivo"
    exit 1
fi

arquivo=$1

# verifica se o arquivo possui permissão de leitura
if [ -r "$arquivo" ]
then
    echo "O arquivo '$arquivo' possui permissão de leitura."
else
    echo "O arquivo '$arquivo' NÃO possui permissão de leitura."
fi
