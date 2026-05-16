#!/bin/bash

# =============================================
# BACKUP SCRIPT - DISTRIBUIDORA ALIMENTOS DEL VALLE S.A.
# ERPNext + Frappe Framework
# =============================================

# Configuración
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
BACKUP_DIR="/home/hgo32/backups"
BENCH_DIR="/home/hgo32/frappe-bench"
SITE_NAME="miel.localhost"
LOG_FILE="$BACKUP_DIR/backup.log"

# Crear directorio de backups si no existe
mkdir -p $BACKUP_DIR

echo "==================================================" >> $LOG_FILE
echo "Backup iniciado: $TIMESTAMP" >> $LOG_FILE
echo "==================================================" >> $LOG_FILE

# Ir al directorio del bench
cd $BENCH_DIR

# Activar entorno virtual
source ~/frappe-env/bin/activate

# Realizar backup completo (base de datos + archivos)
echo "Ejecutando backup completo..." >> $LOG_FILE
bench --site $SITE_NAME backup --with-files

# Copiar los backups generados a la carpeta segura
cp $BENCH_DIR/sites/$SITE_NAME/private/backups/* $BACKUP_DIR/ 2>/dev/null

# Mantener solo los últimos 7 días de backups (limpieza)
find $BACKUP_DIR -type f -mtime +7 -delete

# Registrar resultado
if [ $? -eq 0 ]; then
    echo "Backup completado exitosamente - $TIMESTAMP" >> $LOG_FILE
    echo "Ubicación: $BACKUP_DIR" >> $LOG_FILE
else
    echo " Error durante el backup - $TIMESTAMP" >> $LOG_FILE
fi

echo "Backup finalizado: $TIMESTAMP" >> $LOG_FILE
echo "" >> $LOG_FILE

# Mostrar resumen en consola
echo "Backup completado: $TIMESTAMP"
echo "Archivos guardados en: $BACKUP_DIR"
echo "Log: $LOG_FILE"
