#  Distribuidora Alimentos del Valle S.A. - ERPNext
**Proyecto Final**  
**Implementación de Sistema ERP*
![Status](https://img.shields.io/badge/Status-Fase%201%20Completada-success?style=flat)
![ERPNext](https://img.shields.io/badge/ERP-ERPNext-00A651)
![Superset](https://img.shields.io/badge/BI-Apache%20Superset-FF4F4F)
![UMG](https://img.shields.io/badge/Universidad-Mariano%20Gálvez-blue)

*

---

## Descripción del Proyecto

Implementación de un Sistema ERP basado en **ERPNext (Frappe Framework)** + **Apache Superset** para la Distribuidora Alimentos del Valle S.A. 

El sistema centraliza la gestión de inventarios multi-bodega, ventas, compras, facturación, logística y proporciona dashboards ejecutivos para la toma de decisiones en tiempo real.

---

## Tecnologías Utilizadas

- **ERP Principal**: ERPNext 15 + Frappe Framework 15
- **Business Intelligence**: Apache Superset
- **Base de Datos**: MariaDB 11.8.6
- **Caché y Colas**: Redis 8.0.5
- **Backend**: Python 3.14 + Celery
- **Frontend**: Node.js 18 + Yarn
- **Contenedores**: Docker / Docker Compose (para Superset)
- **Entorno**: WSL2 + Ubuntu 22.04/24.04

---

## Equipo de Trabajo

| Nombre                          | Rol                                 |
|--------------------------------|-------------------------------------|
| Cécily Karina Guinea Mejía     | Desarrollador / Configuradora ERP   |
| Alfredo Joselito Vicente García| Analista de Business Intelligence   |
| Hugo Emmanuel Rivera Guzmán    | Arquitecto Técnico                  |
| Kevin Roberto Lacán            | Project Manager                     |
| Beatríz Vicente Jiménez        | Especialista en Seguridad           |

---

## Instrucciones de Instalación

Consulta el **[Manual Técnico Completo](docs/manual-tecnico.md)** para la instalación detallada.

**Pasos principales:**

1. Instalar WSL2 y Ubuntu
2. Instalar dependencias (MariaDB, Redis, Node.js, Yarn)
3. Crear entorno virtual e inicializar Bench
4. Crear sitio y instalar ERPNext
5. Configurar Redis y Superset
6. Iniciar el sistema con `bench start`

---

## Credenciales de Acceso Demo

| Sistema         | Usuario         | Contraseña     | URL                              |
|-----------------|-----------------|----------------|----------------------------------|
| ERPNext         | Administrator   | admin123       | http://miel.localhost:8000      |
| MariaDB         | root            | ddii20_@       | Puerto 3306                      |
| Apache Superset | admin           | admin          | http://localhost:8088           |

**Nota:** Estas credenciales son para el entorno de desarrollo local.

---

## Endpoints API Disponibles

La API REST de ERPNext está disponible en:  
`http://miel.localhost:8000/api/resource/`

**Endpoints principales:**

- `GET /api/resource/Customer` → Lista de clientes
- `GET /api/resource/Item` → Lista de productos
- `POST /api/resource/Sales Order` → Crear orden de venta
- `GET /api/resource/Sales Order/{name}` → Consultar orden
- `POST /api/resource/Delivery Note` → Crear despacho
- `POST /api/resource/Sales Invoice` → Crear factura
- `POST /api/method/erpnext.stock.utils.get_latest_stock_qty` → Stock en tiempo real

**Documentación completa de APIs** → Ver **[Manual Técnico](docs/manual-tecnico.md)** (Sección 4)

---

## Documentación del Proyecto

- **[Manual Técnico Completo](docs/manual-tecnico.md)** (Arquitectura, instalación, modelo de datos, APIs y seguridad)
- **[Arquitectura Técnica](docs/arquitectura-tecnica.md)**
- **[Business Case](docs/business-case.md)**

---

## Enlaces Importantes

- **Jira del Proyecto**: [Timeline DADVS](https://miumg-team-fantasticos.atlassian.net/jira/software/projects/DADVS/boards/37)
- **Repositorio**: [GitHub](https://github.com/cguineam-svg/proyecto-Distribuidora-Alimentos-del-Valle-S.A.)

---

**Universidad Mariano Gálvez de Guatemala**  
**Campus Quetzaltenango – Facultad de Ingeniería en Sistemas**  
**Junio 2026**
