# Normalización de Tablas

## Tabla Incidencia
Atributos: CodigoIncidencia, Tipo, Descripción.  
Clave: CodigoIncidencia.  
F = {CodigoIncidencia->Tipo, CodigoIncidencia->Descripción}  

- 2FN: está claro que la tabla está en 2FN ya que el único atributo primo es CodigoIncidencia y este determina de forma completa a Tipo y Descripción.  

- 3FN: está en tercera forma normal porque no tiene ninguna dependencia transistiva.  

- FNBC: todas las relaciones tienen a la izquierda una clave candidata y además todos los atributos que aparecen a la derecha no están contenidos en la clave, por lo que está en FNBC.  


## Tabla Comunica  
Atributos: CodigoIncidencia, CodigoPersonal.  
Clave: CodigoIncidencia.  
F = {CodigoIncidencia->CodigoPersonal}  

- 2FN: el único atibuto primo que hay es CodigoIncidencia y éste determina de forma completa a CodigoPersonal, luego está en 2FN.  

- 3FN: no hay dependencias transitivas, por lo que está en 3FN.  

- FNBC: sólo aparecen claves candidatas a la izquierda y además en CodigoPersonal no está incluida ninguna clave candidata, por lo que está en FNBC.


## Tabla ReparaEstacion
Atributos: CodigoEstacion, CodigoPersonal, CodReparacionBicicleta, MensajeReparacion.  
Clave: CodigoEstacion, CodigoPersonal, CodReparacionBicicleta.  
F = {CodigoEstacion CodigoPersonal CodReparacionEstacion->MensajeReparacion}  

- 2FN: los atributos que forman la clave (los únicos primos) determinan de forma completa a MensajeReparacion, por lo que está en segunda forma normal.  

- 3FN: no hay dependencias transitivas, luego está en 3FN.  

- FNBC: sólo aparecen claves candidatas a la izquierda y además no hay ninguna clave candidata incluida en la parte derecha de la única dependencia que hay, por lo tanto está en FNBC.


## Tabla Estacion
Atributos: Posición, Estado.  
Clave: Posición.  
F = {Posición->Estado}  

- 2FN: Posición determina de forma completa a Estado, luego está en 2FN.  

- 3FN: no hay dependencias transitivas, luego está en 3FN.  

- FNBC: sólo aparecen claves candidatas a la izquierda y además no hay ninguna clave candidata incluida en la parte derecha de la única dependencia que hay, por lo tanto está en FNBC.
