# Normalización de Tablas

## Luis Balderas Ruiz

### Tabla Usuario
Atributos: DNI, Nombre, Edad, NúmeroCuenta, Email, Tarifa, Teléfono, Contraseña, TiempoAsignado, Sancionado, KmRecorridos.  
Clave: DNI.  
F = {DNI->Nombre, DNI->Edad, DNI->NumeroCuenta, DNI-> Email, DNI->Tarifa, DNI->Telefono, DNI->Contraseña, DNI->TiempoAsignado, DNI->Sancionado, Tarifa->TiempoAsignado, DNI->KmsRecorridos}  

- No está en FNBC porque Det={DNI, Tarifa}. Por tanto, genero dos tablas nuevas:  

	* Usuario(DNI, Nombre, Edad, NúmeroCuenta, Email, Tarifa, Teléfono, Contraseña, Sancionado, KmRecorridos)  
	* TarifasTiempo(Tarifa,TiempoAsignado)  

Ambas tablas ya están en FNBC.  

### Tabla Bicicleta
Atributos: CodigoBicicleta, Posicion, Estado.  
Clave: CodigoBicicleta.  
F={CodigoBicicleta -> Posicion, CodigoBicicleta ->Estado}  

- 1FN: El dominio de cada atributo solo contiene valores atómicos.  

- 2FN: CodigoBicicleta (atributo primo) determina de forma completa a Posicion y Estado.  

- 3FN: No hay dependencias transitivas.  

- FNBC: El determinante está formado únicamente por la clave primaria.  

### Tabla Utiliza
Atributos: DNI, CodigoBicicleta, TiempoEmpleado.  
Clave: DNI, CodigoBicicleta.  
F = {DNI,CódigoBicicleta -> TiempoEmpleado}  

Está en FNBC trivialmente.  

### Tabla Pone
Atributos: CodigoReclamacion, DNI.   
Clave: CodigoReclamacion.  
F = {CodigoReclamacion->DNI}
Está en FNBC trivialmente.


## Ignacio Aguilera Martos

### Tabla Incidencia
Atributos: CodigoIncidencia, Tipo, Descripción.  
Clave: CodigoIncidencia.  
F = {CodigoIncidencia->Tipo, CodigoIncidencia->Descripción}  

- 1FN: El dominio de cada atributo contiene solo valores atomicos.

- 2FN: está claro que la tabla está en 2FN ya que el único atributo primo es CodigoIncidencia y este determina de forma completa a Tipo y Descripción.  

- 3FN: está en tercera forma normal porque no tiene ninguna dependencia transitiva.  

- FNBC: todas las relaciones tienen a la izquierda una clave candidata y además todos los atributos que aparecen a la derecha no están contenidos en la clave, por lo que está en FNBC.  

### Tabla ReparaEstacion
Atributos: CodigoEstacion, CodigoPersonal, CodReparacionBicicleta, MensajeReparacion.  
Clave: CodigoEstacion, CodigoPersonal, CodReparacionBicicleta.  
F = {CodigoEstacion CodigoPersonal CodReparacionEstacion->MensajeReparacion}  

- 1FN: El dominio de cada atributo contiene solo valores atomicos.

- 2FN: los atributos que forman la clave (los únicos primos) determinan de forma completa a MensajeReparacion, por lo que está en segunda forma normal.  

- 3FN: no hay dependencias transitivas, luego está en 3FN.  

- FNBC: sólo aparecen claves candidatas a la izquierda y además no hay ninguna clave candidata incluida en la parte derecha de la única dependencia que hay, por lo tanto está en FNBC.


### Tabla Estacion
Atributos: Posición, Estado.  
Clave: Posición.  
F = {Posición->Estado}  

- 1FN: El dominio de cada atributo contiene solo valores atomicos.

- 2FN: Posición determina de forma completa a Estado, luego está en 2FN.  

- 3FN: no hay dependencias transitivas, luego está en 3FN.  

- FNBC: sólo aparecen claves candidatas a la izquierda y además no hay ninguna clave candidata incluida en la parte derecha de la única dependencia que hay, por lo tanto está en FNBC.  

### Tabla Comunica  
Atributos: CodigoIncidencia, CodigoPersonal.  
Clave: CodigoIncidencia.  
F = {CodigoIncidencia->CodigoPersonal}  

- 1FN: El dominio de cada atributo contiene solo valores atomicos.

- 2FN: El único atibuto primo que hay es CodigoIncidencia y éste determina de forma completa a CodigoPersonal, luego está en 2FN.  

- 3FN: No hay dependencias transitivas, por lo que está en 3FN.  

- FNBC: Sólo aparecen claves candidatas a la izquierda y además en CodigoPersonal no está incluida ninguna clave candidata, por lo que está en FNBC.

## Diego Asterio de Zaballa

### Tabla Reclamacion  
Atributos: CodigoReclamacion, NombreArchivo, Fecha.
Clave: CodigoReclamacion.
F = {CodigoReclamacion->NombreArchivo, CodigoReclamacion->Fecha}

- 1FN: El dominio de cada atributo contiene solo valores atomicos.

- 2FN: NombreArchivo y Fecha son atributos no primos y ninguno de ellos
lo determina un subconjunto de la PK.

- 3FN: Todos los atributos dependen de claves candidatas. No hay atributos que dependan de atributos no-primos.

- FNBC: Para las dos relaciones funcionales la condicion CodigoReclamacion es superclave se verifica.


### Tabla ReparaBicicleta
Atributos: CodReparacionEstacion, CodigoBicicleta, CodigoPersonal, NumeroTaller
Clave: CodigoBicicletaCodigoPersonal
F = {CodReparacionEstacionCodigoBicicletaCodigoPersonal -> NumeroTaller}

- 1FN: El dominio de cada atributo contiene solo valores atomicos.

- 2FN: El unico atributo no-primo que hay es NumeroTaller y no hay ningun subconjunto de una clave candidata que lo determine.

- 3FN: No hay dependencias transitivas y por tanto todos los atributos dependen directamente de claves candidatas.

- FNBC: CodReparacionEstacionCodigoBicicletaCodigoPersonal es una superclave.

### Tabla Traslada
Atributos: CodigoTraslado, CodigoBicicleta, CodigoPersonal, EstacionPocasBicicletas, EstacionMuchasBicicletas, NumeroBicicletas.
Clave: CodigoTraslado, CodigoBicicleta
F = {CodigoTrasladoCodigoBicicleta->EstacionMuchasBicicletas,CodigoTrasladoCodigoBicicleta->EstacionPocasBicicletas,CodigoTrasladoCodigoBicicleta->CodigoPersonal,CodigoTrasladoCodigoBicicleta->NumBicicletas}

- 1FN: El dominio de cada atributo contiene solo valores atomicos.

- 2FN: Los atributos no-primos no dependen nunca de un subconjunto de alguna clave candidata

- 3FN: No hay dependencias transitivas por lo que no hay ningun atributo que dependa de un atributo no-primo

-FNBC: A la izquierda de cada relacion hay siempre una superclave.


### Tabla RecibePago
Atributos: DNI, Entidad.
Clave: DNI
F = {DNI -> Entidad}

- 1FN: El dominio de cada atributo contiene solo valores atomicos.

- 2FN: El unico atributo no primo Entidad no depende de ningun subconjunto de una clave candidata.

- 3FN: Todos los atributos de la tabla estan determinados por atributos de las claves candidatas.

- FNBC: DNI es superclave de la relacion.
