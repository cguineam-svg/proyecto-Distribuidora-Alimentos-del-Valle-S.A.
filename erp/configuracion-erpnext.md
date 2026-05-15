# Configuración de ERPNext - Distribuidora Alimentos del Valle S.A.

## 1. Configuración Inicial del Sistema

### 1.1 Configuración de la Empresa

- **Nombre de la Compañía:** Distribuidora Alimentos del Valle S.A.
- **Nombre Corto:** DAV S.A.
- **Dirección:** Quetzaltenango, Guatemala
- **Moneda Principal:** Quetzal (GTQ)
- **Idioma:** Español

### 1.2 Bodegas (Warehouses)

Se configuraron las siguientes bodegas:

| Bodega                  | Ubicación      | Tipo          |
|-------------------------|----------------|---------------|
| Xela - Bodega Central   | Quetzaltenango | Principal     |
| Mixco - Bodega          | Mixco          | Satélite      |
| Escuintla - Bodega      | Escuintla      | Satélite      |

---

## 2. Módulos Configurados

### 2.1 Módulos Activos

- **Ventas** (Órdenes de Venta, Facturación)
- **Compras** (Órdenes de Compra, Proveedores)
- **Inventario** (WMS, Stock multi-bodega, Lotes y Series)
- **Contabilidad** (Facturas, Pagos, Reportes Financieros)
- **CRM** (Gestión de Clientes)
- **Recursos Humanos** (Empleados y Nómina)

### 2.2 Configuraciones Importantes de Inventario

- Habilitado **control de lotes** y **fechas de vencimiento**
- Activada **gestión multi-bodega**
- Configurada **trazabilidad** de productos perecederos (lácteos, bebidas, granos)
- Alertas automáticas de productos próximos a vencer (30, 15 y 7 días)

---

## 3. Grupos de Productos (Item Groups)

- Lácteos
- Bebidas
- Granos Básicos
- Alimentos Empaquetados
- Frutas y Verduras
- Otros

---

## 4. Configuración de Usuarios y Roles

Se crearon roles personalizados según la estructura organizacional de la empresa (ver Manual Técnico - Sección Seguridad).

---

## 5. Configuración de Impuestos y Series

- Impuestos configurados según normativa de Guatemala (IVA)
- Series de numeración para:
  - Órdenes de Venta (ORD-VEN-)
  - Facturas de Venta (FAC-)
  - Notas de Entrega (DESP-)

---

## 6. Ajustes Recomendados

1. Activar **Audit Trail** para trazabilidad de cambios
2. Configurar **notificaciones automáticas** de stock bajo y vencimientos
3. Habilitar **2FA** (Autenticación de dos factores) para usuarios clave
4. Configurar **backups automáticos** diarios

---

**Nota:** Toda la configuración detallada (incluyendo comandos y capturas) se encuentra en el **Manual Técnico** ubicado en `docs/manual-tecnico.md`.

---
