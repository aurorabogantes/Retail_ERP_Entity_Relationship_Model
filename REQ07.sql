INSERT INTO `proyectofinal`.`catalogo_genero`
(`idCatalogo_genero`,
`Descripcion`,
`Activo`)
VALUES
(1, 'Hombre', 1), (2, 'Mujer', 1), (3, 'Otro', 1);

select * from catalogo_genero;

INSERT INTO `proyectofinal`.`catalogo_estado_civil`
(`idCatalogo_estado_civil`,
`Descripcion`,
`Activo`)
VALUES
(1, 'Soltero', 1), (2, 'Casado', 1), (3, 'Divorciado', 1);

select * from catalogo_estado_civil;

INSERT INTO `proyectofinal`.`catalogo_tipo_direccion`
(`idCatalogo_tipo_direccion`,
`Descripcion`,
`Activo`)
VALUES
(1, 'CASA DE HABITACION', 1), (2, 'TRABAJO', 1), (3, 'DIRECCION TEMPORAL', 1);

select * from catalogo_tipo_direccion;

INSERT INTO `proyectofinal`.`catalogo_telefono`
(`idCatalogo_telefono`,
`Descripcion`,
`Activo`)
VALUES
(1, 'PERSONAL', 1), (2, 'LABORAL', 1), (3, 'CORPORATIVO', 1);

select * from catalogo_telefono;

INSERT INTO `proyectofinal`.`catalogo_tipo_correo`
(`idCatalogo_tipo_correo`,
`Descripcion`,
`Activo`)
VALUES
(1, 'PERSONAL', 1), (2, 'LABORAL', 1), (3, 'CORPORATIVO', 1);

select * from catalogo_tipo_correo;

INSERT INTO `proyectofinal`.`catalogo_tipo_cliente`
(`idCatalogo_tipo_cliente`,
`Descripcion`,
`Activo`)
VALUES
(1, 'INDIVIDUAL', 1), (2, 'CORPORATIVO', 1), (3, 'OCASIONAL', 1);

select * from catalogo_tipo_cliente;

INSERT INTO `proyectofinal`.`catalogo_tipo_pago`
(`idCatalogo_tipo_pago`,
`Descripción`,
`Activo`)
VALUES
(1, 'CONTADO', 1), (2, 'CREDITO', 1), (3, 'PAGO EN ESPECIE', 1);

select * from catalogo_tipo_pago;

INSERT INTO `proyectofinal`.`catalogo_credito`
(`idCatalogo_credito`,
`Plazo_dias`,
`Activo`,
`Catalogo_tipo_pago_idCatalogo_tipo_pago`)
VALUES
(1, 30, 1, 2), (2, 182, 1, 2), (3, 365, 1, 2);

select * from catalogo_credito;

INSERT INTO `proyectofinal`.`persona`
(`idPersona`,
`Nombre`,
`Apellido1`,
`Apellido2`,
`Fecha de nacimiento`,
`Fallecido`,
`idGenero`,
`idEstadoCivil`)
VALUES
(123, 'PABLO', 'RODRIGUEZ', 'PANIAGUA', '1980-05-15', 0, 1, 2), (456, 'MARCELA', 'RUIZ', 'DELGADO', '2000-11-30', 0, 2, 1), (789, 'ALEJANDRO', 'CISNEROS', 'CASTRO', '2004-05-23', 0, 1, 1);

select * from persona;

INSERT INTO `proyectofinal`.`catalogo_ocupacion`
(`Persona_idPersona`,
`idCatalogo_ocupacion`,
`Descripcion`,
`Activo`)
VALUES
(123, 1, 'MEDICO', 1), (456, 2, 'PROFESOR', 1), (789, 3, 'INGENIERO', 1);

select * from catalogo_ocupacion;

INSERT INTO `proyectofinal`.`provincia`
(`idProvincia`,
`Descripcion`,
`Activa`)
VALUES
(1, 'SAN JOSE', 1), (2, 'ALAJUELA', 1), (3, 'CARTAGO', 1);

select * from provincia;

INSERT INTO `proyectofinal`.`canton`
(`idCanton`,
`Descripcion`,
`Activo`,
`Provincia_idProvincia`)
VALUES
(1, 'CURRIDABAT', 1, 1), (2, 'GRECIA', 1, 2), (3, 'LA UNION', 1, 3);

select * from canton;

INSERT INTO `proyectofinal`.`distrito`
(`idDistrito`,
`Descripcion`,
`Activo`,
`Canton_idCanton`,
`Canton_Provincia_idProvincia`)
VALUES
(1, 'CURRIDABAT', 1, 1, 1), (2, 'GRECIA', 1, 2, 2), (3, 'SAN DIEGO', 1, 3, 3);

select * from distrito;

INSERT INTO `proyectofinal`.`direccion`
(`idDireccion`,
`Otras señas`,
`Activa`,
`Distrito`,
`Canton`,
`Provincia`,
`idTipoDireccion`,
`Persona_idPersona`)
VALUES
(321, 'CASA NUMERO 3, CONDOMINIO LOS ROBLES', 1, 2, 2, 2, 1, 123), (654, '200 METROS OESTE DE LA PULPERIA DON JOSE, CASA FRENTE AL PALO DE MANGO', 1, 1, 1, 1, 2, 456), (578, 'CIUDADELA MIRAVALLES, FRENTE AL ULTIMO TANQUE DE AYA', 1, 3, 3, 3, 3, 789);

select * from direccion;

INSERT INTO `proyectofinal`.`telefono`
(`numeroTelefono`,
`Activo`,
`Catalogo_telefono_idCatalogo_telefono`,
`Persona_idPersona`)
VALUES
(12345678, 1, 1, 123), (87654321, 1, 2, 456), (88961942, 1, 1, 789);

select * from telefono;

INSERT INTO `proyectofinal`.`correo_electronico`
(`idCorreo electronico`,
`Catalogo_tipo_correo_idCatalogo_tipo_correo`,
`Persona_idPersona`)
VALUES
('pabloprodr@gmail.com', 1, 123), ('marcedelgado@gmail.com', 2, 456), ('alecica.metrocoop@gmail.com', 3, 789);

select * from correo_electronico;

INSERT INTO `proyectofinal`.`catalogo_tipo_servicio`
(`idCatalogo_tipo_servicio`,
`Descripcion`,
`Activo`)
VALUES
(1,'BIEN',1),(2,'SERVICIO',1);

select * from catalogo_tipo_servicio;

INSERT INTO `proyectofinal`.`bodega`
(`idBodega`,
`Descripcion`,
`Activo`,
`idTipo_servicio`)
VALUES
(12345, 'BODEGA VIRTUAL', 1, 1), (12344, 'BODEGA TECNOLOGIA', 1, 1), (63846, 'BODEGA FÍSICA', 1, 1);

select * from bodega;

INSERT INTO `proyectofinal`.`direccion_bodega`
(`otras_señas`,
`Activo`,
`Distrito_idDistrito`,
`Distrito_Canton_idCanton`,
`Distrito_Canton_Provincia_idProvincia`,
`Bodega_idBodega`)
VALUES
('AMAZON WEB SERVICES', 1, 1, 1, 1, 12344),('LA VALENCIA, HEREDIA',1,2,2,2,12345),('CARTAGO, COSTA RICA',1,3,3,3,63846);

select * from direccion_bodega;

INSERT INTO `proyectofinal`.`catalogo_tipo_producto`
(`idCatalogo_tipo_producto`,
`Descripcion`,
`Activo`)
VALUES
(1, 'SERVICIO DE STREAMING', 1), (2, 'PROCESADOR', 1),(3, 'SMARTWATCH', 1);

select * from catalogo_tipo_producto;

INSERT INTO `proyectofinal`.`catalogo_peso`
(`idCatalogo_peso`,
`Descripcion`,
`Activo`)
VALUES
(1,'Kilos',1), (2,'Gramos',1), (3,'MB',1);

select * from catalogo_peso;

INSERT INTO `proyectofinal`.`producto`
(`idProducto`,
`Nombre_producto`,
`idBodega`,
`idTipo_producto`,
`Punto_reorden`,
`Porcentaje`,
`Costo`,
`idPeso`)
VALUES
(1002, 'SUSCRIPCION BASICA DE NETFLIX', 12345, 1, 5000, 100.0, 3000,3), (1000, 'AMD RYZEN 5 5500', 12344, 2, 50, 50.0, 50000,2), (3002, 'Smartwatch Xiaomi 2" Matte Silver Redmi Watch 5 Active', 63846, 3, 20, 50.0, 120000,1);

select * from producto;

INSERT INTO `proyectofinal`.`cliente`
(`idCliente`,
`idTipoCliente`,
`Activo`,
`Limite credito`,
`Fecha de alta`,
`Persona_idPersona`)
VALUES
(1234, 1, 1, 200000, current_timestamp(), 123), (4567, 2, 1, 200000, current_timestamp(), 456), (8910, 3, 1, 500000, current_timestamp(), 789);

select * from cliente;

INSERT INTO `proyectofinal`.`catalogo_tipo_movimiento`
(`Descripcion`,
`Activo`,
`idTipo_movimiento`)
VALUES
('ALTA', 1, 1), ('BAJA', 1, 2), ('REACTIVACION', 1, 3);

select * from catalogo_tipo_movimiento;

INSERT INTO `proyectofinal`.`catalogo_movimientos`
(`Fecha`,
`Cliente_Persona_idPersona`,
`Catalogo_tipo_movimiento_idTipo_movimiento`)
VALUES
(current_timestamp(), 123, 1), (current_timestamp(), 456, 2), (current_timestamp(), 789, 3);

select * from catalogo_movimientos;

INSERT INTO `proyectofinal`.`promociones_descuentos`
(`Porcentaje_Deduccion`,
`Descripcion`,
`Activo`,
`Producto_idProducto`)
VALUES
(5.0, 'DESCUENTO NAVIDAD', 1, 1002), (15.0, 'DESCUENTO PROCESADORES', 1, 1000), (30.0, 'DESCUENTO SMARTWATCH', 1, 3002);

select * from promociones_descuentos;

INSERT INTO `proyectofinal`.`catalogo_estado`
(`idCatalogo_estado`,
`Descripción`,
`Activo`)
VALUES
(1, 'CANCELADA',1),(2, 'PENDIENTE',1);

select * from catalogo_estado;

INSERT INTO `proyectofinal`.`factura`
(`idFactura`,
`Fecha_emision`,
`Fecha_vencimiento`,
`idTipo_pago`,
`idPersona`,
`Promociones_descuentos_Producto_idProducto`,
`idEstado`)
VALUES
(1112, current_date(), date_add(now(), interval 1 month), 1, 123, 1002, 1), (8534, current_date(), date_add(now(), INTERVAL 1 MONTH), 2, 456, 1000, 2), (2036, current_date(), date_add(now(), INTERVAL 2 MONTH), 1, 789, 3002, 2),
(1304, '2024-10-10', date_add('2024-10-10', interval 1 month), 1, 123, 1000, 1);

select * from factura;

INSERT INTO `proyectofinal`.`direccion_empresa`
(`otras_señas`,
`Activo`,
`Distrito_idDistrito`,
`Distrito_Canton_idCanton`,
`Distrito_Canton_Provincia_idProvincia`,
`idFactura`)
VALUES
('AVENIDA CENTRAL, CALLE 5', 1, 1, 1, 1, 1112), ('AVENIDA CENTRAL, CALLE 5', 1, 1, 1, 1, 8534), ('AVENIDA CENTRAL, CALLE 5', 1, 1, 1, 1, 2036), ('AVENIDA CENTRAL, CALLE 5', 1, 1, 1, 1, 1304);

select * from direccion_empresa;

INSERT INTO `proyectofinal`.`factura_detalle`
(`Precio`,
`Cantidad`,
`Subtotal`,
`Impuesto_adicional`,
`Monto_neto`,
`idProducto`,
`idFactura`)
VALUES
(6000, 2, 10000, 2000, 12000, 1002, 1112), (75000, 1, 65000, 10000, 75000, 1000, 8534), (18900, 2, 36800, 1000, 37800, 3002, 2036), (7500, 2, 130000, 20000, 150000, 1000, 1304);

select * from factura_detalle;

INSERT INTO `proyectofinal`.`cuentas_x_cobrar`
(`Cliente_Persona_idPersona`,
`Monto_pendiente`,
`Fecha_limite`,
`Catalogo_credito_idCatalogo_credito`)
VALUES
(123, 10000, date_add(now(), INTERVAL 182 DAY), 2), (456, 50000, date_add(now(), INTERVAL 30 DAY), 1), (789, 10000, date_add(now(), INTERVAL 365 DAY), 1);

select * from cuentas_x_cobrar;