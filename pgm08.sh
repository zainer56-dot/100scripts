#!/bin/sh
clear
echo "nome do arquivo original: $1"
echo "Novo Arquivo: $2"
if test $# -lt 2 -o $# -gt 2
   then
   echo "invalido"
   else
   cp $1 $2
   echo " Sucesso!"
fi

