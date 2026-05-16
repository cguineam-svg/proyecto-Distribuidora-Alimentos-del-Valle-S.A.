# Plan de Recuperación ante Desastres (Disaster Recovery)

## 1. Objetivos

- **RTO (Recovery Time Objective)**: Menos de 4 horas
- **RPO (Recovery Point Objective)**: Menos de 24 horas
- Garantizar la continuidad del negocio ante fallos del servidor, corrupción de datos o desastres.

---

## 2. Estrategia de Backups

### Backup Diario Automático

**Script:** `seguridad/backup-script.sh`

```bash
#!/bin/bash
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
BACKUP_DIR="/home/hgo32/backups"

mkdir -p $BACKUP_DIR
cd ~/frappe-bench
source ~/frappe-env/bin/activate

# Backup completo con archivos
bench --site miel.localhost backup --with-files

# Copiar backups al directorio seguro
cp ~/frappe-bench/sites/miel.localhost/private/backups/* $BACKUP_DIR/

# Mantener solo los últimos 7 días
find $BACKUP_DIR -type f -mtime +7 -delete

echo "Backup completado: $TIMESTAMP" >> $BACKUP_DIR/backup.log
```
---
## Programación (crontab):
```bash
# Backup diario a la 1:00 AM
0 1 * * * /ruta/completa/seguridad/backup-script.sh
```
---
## 3. Tipos de Backup Generados

* Base de datos comprimida (*.sql.gz)
* Archivos públicos y privados (*.tar)
* Configuración del sitio
---
## 4. Procedimiento de Restauración (Recovery)
 ### Paso a paso:

### 1. Detener servicios
```bash
cd ~/frappe-bench
bench stop
```
---
### 2. Restaurar Base de DatosBash
```bash
gunzip -c /ruta/del/backup/XXXXXX-miel_localhost-database.sql.gz | mysql -u root -p -h 127.0.0.1 _822cffdc2abb6038
```
---
### 3. Restaurar ArchivosBash
```bash
tar -xf /ruta/del/backup/XXXXXX-miel_localhost-files.tar -C ~/frappe-bench/sites/miel.localhost/
tar -xf /ruta/del/backup/XXXXXX-miel_localhost-private-files.tar -C ~/frappe-bench/sites/miel.localhost/private/
```
---
### 4. Iniciar el sistemaBash
```bash
bench start
```
---
### 5. Pruebas de Recuperación

* Realizar prueba completa de restauración cada 3 meses.
* Documentar tiempo de recuperación real.
---
### 6. Medidas Adicionales de Seguridad

* Backups externos (recomendado: Backblaze B2 o Google Drive)
* Cifrado de backups
* Monitoreo de logs con Fail2Ban
* 2FA activado en todos los usuarios críticos
---
Responsable: Beatríz Vicente Jiménez (Especialista en Seguridad)
Fecha: Mayo 2026
