# PASO A TABLAS

- Personal(\underline{CodigoPersonal})  
- Incidencia(\underline{CodigoIncidencia},Tipo,Descripcion)  
- Bicicleta(\underline{CodigoBicicleta},Posicion,Estado)  
- Estacion(\underline{Posición}, Estado)  
- Banco(\underline{Entidad})  
- Reclamacion(\underline{CodigoReclamacion}, NombreArchivo, Fecha)  
- Usuario(\underline{DNI}, Nombre, Edad, NumeroCuenta, Email, Tarifa, Telefono, Contraseña, Sancionado,KmsRecorridos, TiempoAsignado)  
con atributo Tarifa NotNull
- Comunica(\underline{CodigoIncidencia},CodigoPersonal)  
con el atributo CodigoIncidencia llave externa de Incidencia.  
con el atributo CodigoPersonal llave externa de Personal NotNull.  
- ReparaBicicleta(\underline{CodReparacionBicicleta,CodigoBicicleta,CodigoPersonal},NumeroTaller)  
con el atributo CodigoBicicleta llave externa Bicicleta NotNull.  
con el atributo CodigoPersonal llave externa Personal NotNull.  
- Traslada(\underline{CodigoTraslado,CodigoBicicleta},CodigoPersonal, EstacionPocasBicicletas,EstacionMuchasBicicletas,NumeroBicicletas)  
con el atributo CodigoBicicleta llave externa de BIcicleta.  
con el atributo CodigoPersonal llave externa de Personal NotNull.  
- Revisa(\underline{CodigoBicicleta,CodigoPersonal})
con el atributo CodigoBicicleta llave externa Bicicleta.  
con el atributo CodigoPersonal llave externa Personal.  
- ReparaEstacion(\underline{CodigoPersonal,CodReparacionEstacion},MensajeReparacion,CodigoEstacion)  
con el atributo CodigoEstacion llave externa de Estación.  
con el atributo CodigoPersonal llave externa de Personal.  
- Llega(\underline{DNI,CodigoBicleta,CodigoEstacion})  
con el atributo DNI llave externa de Usuario.  
con el atributo CodigoBicicleta llave externa de Bicicleta.  
con el atributo CodigoEstacion llave externa de Estacion.  
- Utiliza(\underline{DNI,CodigoBicleta},TiempoEmpleado)  
con el atributo DNI llave externa de Usuario.  
con el atributo CodigoBicicleta llave externa de Bicicleta.  
- RecibePago(\underline{DNI},Entidad)  
con el atributo DNI llave externa de Usuario.  
con el atributo Entidad llave externa de Banco NotNull.  
- Pone(\underline{CodigoReclamacion},DNI)  
con el atributo CodigoReclamacion llave externa de Reclamacion.  
con el atributo de DNI llave externa de Usuario NotNull.  
