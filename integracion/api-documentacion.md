# Documentación de API - Distribuidora Alimentos del Valle S.A.

## Información General

**Base URL:** `http://miel.localhost:8000/api/resource/`

**Versión ERPNext:** 15  
**Framework:** Frappe Framework

---

## Autenticación

### 1. Basic Authentication (Recomendado para pruebas)

- **Usuario:** `Administrator`
- **Contraseña:** `admin123`
- Header: `Authorization: Basic YWRtaW5pc3RyYXRvcjphZG1pbjEyMw==`

### 2. Token Authentication (Recomendado para producción)

- Generar API Key y API Secret desde: Usuario → API Access
- Header: `Authorization: token API_KEY:API_SECRET`

---

## Endpoints Principales

### Clientes
- `GET /api/resource/Customer` → Lista todos los clientes
- `GET /api/resource/Customer/{name}` → Detalle de un cliente
- `POST /api/resource/Customer` → Crear nuevo cliente

### Productos (Items)
- `GET /api/resource/Item` → Lista de productos
- `GET /api/resource/Item/{name}` → Detalle de producto (incluye stock y lotes)
- `POST /api/resource/Item` → Crear producto

### Órdenes de Venta
- `POST /api/resource/Sales Order` → Crear orden de venta
- `GET /api/resource/Sales Order/{name}` → Consultar orden
- `PUT /api/resource/Sales Order/{name}` → Actualizar orden

### Despachos (Delivery Note)
- `POST /api/resource/Delivery Note` → Crear nota de despacho
- `GET /api/resource/Delivery Note/{name}` → Consultar despacho

### Facturación
- `POST /api/resource/Sales Invoice` → Crear factura
- `POST /api/resource/Payment Entry` → Registrar pago

### Stock en Tiempo Real
- `POST /api/method/erpnext.stock.utils.get_latest_stock_qty` → Consultar stock actual por bodega

### Bodegas
- `GET /api/resource/Warehouse` → Lista de bodegas

---

## Ejemplos de Uso

### Crear Orden de Venta (Ejemplo)

```http
POST http://miel.localhost:8000/api/resource/Sales Order
Content-Type: application/json
Authorization: Basic YWRtaW5pc3RyYXRvcjphZG1pbjEyMw==

{
  "customer": "CLI-001",
  "transaction_date": "2026-05-15",
  "delivery_date": "2026-05-20",
  "items": [
    {
      "item_code": "LECHE-001",
      "qty": 50,
      "rate": 12.50
    }
  ]
}
```
---
## Consultar Stock
```http
POST http://miel.localhost:8000/api/method/erpnext.stock.utils.get_latest_stock_qty
Content-Type: application/json

{
  "item_code": "LECHE-001",
  "warehouse": "Xela - Bodega Central"
}
```
---
## Colección Postman
Disponible en: [Colección Postman](integracion/postman-collection.json)

## Notas importantes:

* Todos los endpoints respetan los permisos del usuario autenticado.
* Se recomienda usar Token Authentication para integraciones externas.
* Para más ejemplos y respuestas completas, revisar el Manual Técnico.
