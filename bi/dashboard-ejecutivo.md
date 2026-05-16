```bash
Gráfico 1: Ventas por Mes
Configuración	Valor
Dataset	tabSales Order
Tipo de gráfico	Time-series Bar Chart
Time Column	transaction_date
Time Grain	Month
Metric	COUNT(*) (o SUM(grand_total))
Filtros	Ninguno

Gráfico 2: Top 5 Clientes
Configuración	Valor
Dataset	tabSales Order
Tipo de gráfico	Bar Chart
Series	customer
Metric	COUNT(*)
Sort by	COUNT(*) descending
Limit	5

Gráfico 3: Ordenes por Estado
Configuración	Valor
Dataset	tabSales Order
Tipo de gráfico	Pie Chart
Pie Chart	status
Metric	COUNT(*)

Gráfico 4: Productos Más Vendidos
Configuración	Valor
Dataset	tabSales Order Item
Tipo de gráfico	Bar Chart
Series	item_code
Metric	SUM(qty)
Limit	10
```
---
<img width="1898" height="917" alt="Captura de pantalla 2026-05-15 231952 (1)" src="https://github.com/user-attachments/assets/5a1505de-cb05-4e75-8de5-90b4e5a52b6a" />

