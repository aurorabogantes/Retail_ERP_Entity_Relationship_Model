SELECT 
    P.idPersona,
    P.Nombre,
    P.Apellido1,
    F.Fecha_emision,
    F.idFactura,
    SUM(FD.Monto_neto) AS MontoTotalFacturado,
    (SELECT SUM(FD2.Monto_neto)
        FROM factura_detalle FD2
        JOIN factura F2 ON FD2.idFactura = F2.idFactura
        WHERE F2.Fecha_emision = F.Fecha_emision) AS TotalFacturadoPorFecha
FROM persona P
JOIN factura F ON P.idPersona = F.idPersona
JOIN factura_detalle FD ON F.idFactura = FD.idFactura
GROUP BY P.idPersona, F.Fecha_emision, F.idFactura, P.Nombre, P.Apellido1
ORDER BY F.Fecha_emision, P.Nombre, P.Apellido1;
