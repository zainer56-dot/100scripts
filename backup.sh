#!/bin/sh

# Verifica número de argumentos
if [ $# -lt 2 ]; then
    echo "Uso: $0 DESTINO ARQUIVO/DIR..."
    exit 1
fi

# Primeiro argumento é destino
DEST="$1"
shift

# Verifica se destino existe
if [ ! -d "$DEST" ]; then
    echo "Erro: diretório destino não existe"
    exit 2
fi

# Timestamp
DATA=`date +%Y%m%d_%H%M%S`

# Nome do arquivo backup
ARQ="$DEST/backup_$DATA.tar.gz"

echo "Criando backup em:"
echo "$ARQ"

# Cria arquivo compactado
tar -czf "$ARQ" "$@"

# Checa resultado
if [ $? -eq 0 ]; then
    echo "Backup concluído com sucesso"
else
    echo "Falha no backup"
    exit 3
fi
