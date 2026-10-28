-- =====================================================================
-- PROYECTO: Optimización Logística y Tiempos de Entrega
-- OBJETIVO: Auditar demoras en última milla y eficiencia de rutas
-- =====================================================================

-- 1. Calcular el tiempo real de entrega (en días) y compararlo con el estimado
SELECT 
    id_envio,
    zona_destino,
    fecha_despacho,
    fecha_entrega_real,
    plazo_estimado_dias,
    -- Días reales transcurridos entre despacho y entrega
    Julianday(fecha_entrega_real) - Julianday(fecha_despacho) AS dias_reales_transcurridos,
    CASE 
        WHEN Julianday(fecha_entrega_real) - Julianday(fecha_despacho) > plazo_estimado_dias THEN 'ATRASADO'
        ELSE 'A TIEMPO'
    END AS estado_entrega
FROM 
    envios_logistica
ORDER BY 
    dias_reales_transcurridos DESC;

-- 2. Resumen por zona: Identificar cuáles son las zonas geográficas con mayor retraso operativo
SELECT 
    zona_destino,
    COUNT(id_envio) AS total_envios,
    SUM(CASE WHEN estado_entrega = 'ATRASADO' THEN 1 ELSE 0 END) AS envios_con_demora,
    ROUND(
        (SUM(CASE WHEN estado_entrega = 'ATRASADO' THEN 1 ELSE 0 END) * 100.0) / COUNT(id_envio), 2
    ) AS porcentaje_demora_zona
FROM 
    envios_logistica
GROUP BY 
    zona_destino
ORDER BY 
    porcentaje_demora_zona DESC;
