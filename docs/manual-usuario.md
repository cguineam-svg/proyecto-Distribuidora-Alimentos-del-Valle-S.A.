# Manual de Usuario - Distribuidora Alimentos del Valle S.A.

## Introducción

Este manual está dirigido a los usuarios finales del sistema ERP (Gerentes, Bodegueros, Vendedores, Contadores y Dirección General) implementado con **ERPNext**.

---

## 1. Acceso al Sistema

**URL de acceso:** `http://miel.localhost:8000`

**Credenciales demo:**
- **Usuario:** `Administrator`
- **Contraseña:** `admin123`

**Recomendación:** Cambiar la contraseña al primer inicio de sesión.

---

## 2. Roles y Permisos según Perfil

| Rol                    | Acceso Principal                              |
|------------------------|-----------------------------------------------|
| Administrador TI       | Acceso total al sistema                       |
| Gerente de Área        | Módulos de su área + aprobaciones             |
| Bodeguero / Operario   | Inventario, WMS, Recepciones y Despachos      |
| Vendedor               | Órdenes de Venta y consulta de stock          |
| Contador / Finanzas    | Contabilidad, Facturación y Pagos             |
| Dirección General      | Dashboards y reportes gerenciales             |

---

## 3. Operaciones Más Comunes

### 3.1 Gestión de Productos
1. Ir a **Inventario > Artículos**
2. Crear nuevo producto (importante activar "Tiene Lote" y "Tiene Fecha de Vencimiento")
3. Asignar precio y grupo de producto

### 3.2 Crear Orden de Venta
1. Ir a **Ventas > Orden de Venta**
2. Click en **Nuevo**
3. Seleccionar Cliente → Agregar productos → Guardar
4. Validar stock antes de enviar

### 3.3 Despacho de Mercadería (Bodega)
1. Ir a **Inventario > Nota de Entrega**
2. Crear desde Orden de Venta existente
3. Registrar productos despachados

### 3.4 Facturación
1. Desde la Orden de Venta → Crear **Factura de Venta**
2. Registrar pago en **Contabilidad > Entrada de Pago**

### 3.5 Consulta de Stock en Tiempo Real
- Ir a **Inventario > Existencias por Bodega**
- Filtrar por bodega (Xela, Mixco, Escuintla)

---

## 4. Dashboards Ejecutivos (Superset)

**URL:** `http://localhost:8088`

Dashboards disponibles:
- Ventas por período y cliente
- Rotación de inventario
- Productos próximos a vencer
- Rentabilidad por ruta
- Cuentas por cobrar

---

## 5. Recomendaciones de Uso

- Siempre verificar **stock disponible** antes de confirmar una orden
- Registrar **lotes y fechas de vencimiento** en productos perecederos
- Utilizar **Notas de Entrega** antes de facturar
- Revisar diariamente el dashboard de productos por vencer
- No eliminar registros (mejor cancelar documentos)

---

## 6. Contacto Soporte Técnico

- **Encargado:** Hugo Rivera / Cécily Guinea 
- **Equipo completo:** Ver sección de Contribuidores en el README

---

**Fecha de creación:** Mayo 2026  
**Versión:** 1.0

---
