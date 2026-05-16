```bash
Gráfico 1: Stock por Categoría
Primero, crea un dataset SQL personalizado:

SQL Lab → New Query:

sql
SELECT 
  i.item_group,
  SUM(b.actual_qty) as total_stock
FROM tabItem i
JOIN tabBin b ON i.name = b.item_code
GROUP BY i.item_group
Configuración del gráfico:

Configuración	Valor
Dataset	(el creado con la consulta SQL)
Tipo de gráfico	Bar Chart
Series	item_group
Metric	total_stock

Gráfico 2: Despachos por Día
Configuración	Valor
Dataset	tabDelivery Note
Tipo de gráfico	Line Chart
Time Column	posting_date
Metric	COUNT(*)

Gráfico 3: Productos con Stock Bajo
SQL Lab → New Query:

sql
SELECT 
  i.item_code,
  i.item_name,
  b.actual_qty,
  b.warehouse
FROM tabItem i
JOIN tabBin b ON i.name = b.item_code
WHERE b.actual_qty < 10 AND b.actual_qty > 0
ORDER BY b.actual_qty ASC
LIMIT 10
Tipo de gráfico: Table

Gráfico 4: Órdenes Pendientes
Configuración	Valor
Dataset	tabSales Order
Tipo de gráfico	Pie Chart
Pie Chart	status
Metric	COUNT(*)
Filtro	status NOT IN ('Closed', 'Cancelled')
```
---
<img width="1889" height="847" alt="Captura de pantalla 2026-05-15 235952 (1)" src="https://github.com/user-attachments/assets/00e9f180-2816-4091-bce4-3103bbd087f6" />


