# Manual de Instalación - Distribuidora Alimentos del Valle S.A.

## Requisitos Previos

- Windows 11 con WSL2 habilitado
- Ubuntu 22.04 o 24.04 dentro de WSL2
- Al menos 8 GB de RAM recomendados
- Espacio en disco: 10 GB libres

---

## Pasos de Instalación

### 1. Preparación del Entorno (WSL2)

```bash
# Actualizar paquetes
sudo apt update && sudo apt upgrade -y

# Instalar dependencias básicas
sudo apt install -y python3-dev python3-pip python3-venv git curl wget mariadb-server redis-server
```
---
### 2. Configuración de MariaDB
```bash
sudo mysql -u root
```
---
Dentro de MariaDB ejecutar:
```bash
ALTER USER 'root'@'localhost' IDENTIFIED BY 'ddii20_@';
FLUSH PRIVILEGES;
EXIT;
```
---
Editar configuración:
```bash
sudo nano /etc/mysql/mariadb.conf.d/50-server.cnf
```
Cambiar
```bash
bind-address = 127.0.0.1 por bind-address = 0.0.0.0
```
---
```bash
sudo service mariadb restart
```
---
### 3. Instalar Node.js y Yarn
```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
source ~/.bashrc
nvm install 18
nvm use 18
npm install --global yarn
```
---
### 4. Instalar ERPNext (Bench)
```bash
# Crear entorno virtual
python3 -m venv ~/frappe-env
source ~/frappe-env/bin/activate
pip install frappe-bench

# Inicializar Bench
bench init frappe-bench --frappe-branch version-15
cd frappe-bench

# Crear sitio
bench new-site miel.localhost --db-root-password 'ddii20_@'

# Instalar ERPNext
bench get-app erpnext --branch version-15
bench --site miel.localhost install-app erpnext
```
---
### 5. Configurar Redis y Iniciar
```bash
bench start
URL de acceso: http://miel.localhost:8000
Usuario: Administrator
Contraseña: admin123
```
---
Instalación de Apache Superset (BI)
 ```bash
git clone https://github.com/apache/superset.git
cd superset
docker compose -f docker-compose-image-tag.yml up -d
```
Acceso a Superset: http://localhost:8088
---
Credenciales de Acceso Demo

<img width="592" height="189" alt="image" src="https://github.com/user-attachments/assets/a0c4dbec-755a-49cf-9ede-0e618e437e48" />

Troubleshooting Común

#Puerto en uso → sudo killall redis-server
#Error de conexión Superset → Usar host.docker.internal:3306
#Comando bench no encontrado → source ~/frappe-env/bin/activate
