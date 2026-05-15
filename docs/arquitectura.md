# Arquitectura Técnica - Distribuidora Alimentos del Valle S.A.

## 1. Diagrama de Arquitectura General

La solución implementada utiliza una **arquitectura multicapa** desplegada en entorno local con WSL2.

### Capas de la Arquitectura:

**Capa 1: Presentación (Frontend)**
- ERPNext (Interfaz web) → `http://miel.localhost:8000`
- Apache Superset (Dashboards ejecutivos) → `http://localhost:8088`
- Acceso mediante navegadores web (Chrome, Firefox, Edge)

**Capa 2: Lógica de Negocio**
- **ERPNext v15** (Frappe Framework v15)
- Módulos principales: Ventas, Compras, Inventario (WMS), Contabilidad, CRM, RRHH
- Procesamiento asíncrono con Celery + Redis

**Capa 3: Datos**
- **MariaDB 11.8.6** (Base de datos principal)
- **Redis 8.0.5** (Caché y cola de tareas)

**Capa 4: Integración**
- API REST nativa de ERPNext
- Conexión directa de Superset a MariaDB
- Webhooks y tareas programadas

---

## 2. Tecnologías Utilizadas

| Capa                | Tecnología                  | Versión      |
|---------------------|-----------------------------|--------------|
| ERP                 | ERPNext + Frappe Framework  | 15.107.2     |
| BI                  | Apache Superset             | Latest       |
| Base de Datos       | MariaDB                     | 11.8.6       |
| Caché y Colas       | Redis                       | 8.0.5        |
| Backend             | Python                      | 3.14         |
| Entorno             | WSL2 + Ubuntu               | 22.04/24.04  |
| Contenedores        | Docker                      | 27+          |

---

## 3. Infraestructura de Despliegue

- **Tipo**: Entorno Local de Desarrollo
- **Sistema Operativo Host**: Windows 11
- **Entorno Principal**: WSL2 (Ubuntu)
- **Directorio del proyecto**: `/home/hgo32/frappe-bench`
- **Puertos principales**:
  - 8000 → ERPNext
  - 8088 → Superset
  - 3306 → MariaDB

---

## 4. Modelo de Datos Principal

Se utiliza el modelo nativo de ERPNext adaptado al negocio de distribución:

- Control de **lotes y fechas de vencimiento** en productos
- Gestión **multi-bodega** (Xela, Mixco, Escuintla)
- Trazabilidad completa de órdenes de venta → despacho → factura → pago

---
