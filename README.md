# 📦 Optimización Logística y Control de Inventario

Proyecto de análisis operativo enfocado en auditar los tiempos de entrega de última milla, la rotación de inventario y la identificación de demoras en la cadena de suministro.

---

## 🎯 1. Planteamiento del Problema
Una empresa de distribución presenta quejas frecuentes por retrasos en las entregas y costos elevados de almacenamiento por stock retenido. Este proyecto analiza un dataset operativo para detectar en qué puntos de la ruta o centros logísticos se generan las mayores demoras y optimizar los niveles de inventario.

---

## 🛠️ 2. Tecnologías y Herramientas Utilizadas
* **SQL:** Consultas de filtrado por rangos de fechas, cálculo de tiempos promedio de tránsito y clasificación de estados de envío.
* **Google Spreadsheets / Excel:** Tablas dinámicas iniciales y limpieza masiva de registros de inventario.
* **Looker Studio:** Dashboard ejecutivo para monitorear KPIs logísticos en tiempo real.

---

## 📈 3. Enfoque del Análisis (Consultas / Métricas Clave)
1. **Tiempo Promedio de Tránsito por Zona:** Cruzar la fecha de despacho y la fecha de entrega real para identificar las rutas más lentas.
2. **Tasa de Envíos Demorados:** Cuantificar el porcentaje de pedidos que superaron la ventana de entrega estimada frente a los despachados a tiempo.
3. **Análisis de Rotación de Stock:** Identificar productos con baja rotación que generan costos innecesarios en el almacén.
