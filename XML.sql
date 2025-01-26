Select Top 3
	P.idPersona id
	,P.Nombre nombre
	,P.Apellido1 apellido1
	,P.Apellido2 apellido2
	,F.idFactura idfactura
	,F.Fecha_emision fecha_emision
	,F.Fecha_vencimiento fecha_vencimiento
	,F.idTipo_pago tipo_pago
	,F.Promociones_descuentos_Producto_idProducto promociones_descuentos
	,F.idEstado estado
	,DE.otras_señas otras_señas
	,DE.Distrito_idDistrito distrito
	,DE.Distrito_Canton_idCanton canton
	,DE.Distrito_Canton_Provincia_idProvincia provincia
	,FD.Precio precio
	,FD.Cantidad cantidad
	,FD.Subtotal subtotal
	,FD.Impuesto_adicional impuesto_adicional
	,FD.Monto_neto monto_neto
	,FD.idProducto producto
	,FD.idFactura factura
From persona P
Join factura F on P.idPersona = F.idPersona
Join direccion_empresa DE on F.idFactura = DE.idFactura
Join factura_detalle FD on F.idFactura = FD.idFactura
Group By P.idPersona
	,P.Nombre
	,P.Apellido1
	,P.Apellido2
	,F.idFactura
	,F.Fecha_emision
	,F.Fecha_vencimiento
	,F.idTipo_pago
	,F.Promociones_descuentos_Producto_idProducto
	,F.idEstado
	,DE.otras_señas
	,DE.Distrito_idDistrito
	,DE.Distrito_Canton_idCanton
	,DE.Distrito_Canton_Provincia_idProvincia
	,FD.Precio
	,FD.Cantidad
	,FD.Subtotal
	,FD.Impuesto_adicional
	,FD.Monto_neto
	,FD.idProducto
	,FD.idFactura
Order By FD.Monto_neto DESC
FOR XML Path('cliente'), Root ('clientes');
