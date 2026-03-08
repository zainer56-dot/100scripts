#!/bin/sh

################ CONFIGURAÇÃO ################

DEST="/backup"
LOGFILE="/backup/backup.log"
RETENTION_DAYS=7

REMOTE_USER="user"
REMOTE_HOST="servidor.com"
REMOTE_DIR="/remote_backup"
SEND_REMOTE=1          # 1=envia via scp | 0=não envia

INCREMENTAL=1          # 1=rsync incremental | 0=tar completo

#############################################

# Verifica argumentos
if [ $# -lt 1 ]; then
    echo "Uso: $0 ARQUIVO/DIR..."
    exit 1
fi

# Timestamp
DATE=`date +%Y%m%d_%H%M%S`
ARCHIVE="$DEST/backup_$DATE.tar.gz"

log(){
    echo "`date '+%Y-%m-%d %H:%M:%S'` - $1" >> "$LOGFILE"
}

log "===== Início do backup ====="

# Incremental com rsync
if [ $INCREMENTAL -eq 1 ]; then
    SNAP="$DEST/incremental_$DATE"

    log "Executando backup incremental"

    rsync -av --delete --progress "$@" "$SNAP" >> "$LOGFILE" 2>&1

    if [ $? -ne 0 ]; then
        log "Erro no rsync"
        exit 2
    fi

else
    log "Executando backup completo"

    tar -czvf "$ARCHIVE" "$@" >> "$LOGFILE" 2>&1
fi

# Rotação — remove backups antigos
log "Removendo backups antigos"

find "$DEST" -name "backup_*.tar.gz" -mtime +$RETENTION_DAYS -exec rm {} \; >> "$LOGFILE" 2>&1
find "$DEST" -name "incremental_*" -mtime +$RETENTION_DAYS -exec rm -rf {} \; >> "$LOGFILE" 2>&1

# Envio remoto
if [ $SEND_REMOTE -eq 1 ]; then
    log "Enviando backup remoto"

    if [ $INCREMENTAL -eq 1 ]; then
        scp -r "$SNAP" ${REMOTE_USER}@${REMOTE_HOST}:${REMOTE_DIR} >> "$LOGFILE" 2>&1
    else
        scp "$ARCHIVE" ${REMOTE_USER}@${REMOTE_HOST}:${REMOTE_DIR} >> "$LOGFILE" 2>&1
    fi
fi

log "Backup finalizado"
echo "Backup concluído — verifique log em $LOGFILE"

### A Implementar
# Lockfile (evitar execução simultânea)
# Detecção de falha SCP
# Criptografia AES
# Verificação de integridade
# Snapshot estilo enterprise
# Multi-thread rsync
# Dashboard terminal
