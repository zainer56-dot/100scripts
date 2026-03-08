#!/bin/sh
# Verifica se ao menos um arquivo foi passado
if [ "$#" -eq 0 ]; then
echo "Uso: $0 arquivo1 [arquivo2 ...]"
exit 1
fi
# Concatena todos os arquivos passados como parâmetro
cat "$@"

