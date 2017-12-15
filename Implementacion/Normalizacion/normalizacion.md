# Normalización de Tablas

## Tabla Incidencia
Atributos: CodigoIncidencia, Tipo, Descripción.  
Clave: CodigoIncidencia.  
F = {CodigoIncidencia->Tipo, CodigoIncidencia->Descripción}  

- 2FN: está claro que la tabla está en 2FN ya que el único atributo primo es CodigoIncidencia y este determina de forma completa a Tipo y Descripción.  

- 3FN: está en tercera forma normal porque no tiene ninguna dependencia transistiva.  

- FNBC: todas las relaciones tienen a la izquierda una clave candidata y además todos los atributos que aparecen a la derecha no están contenidos en la clave, por lo que está en FNBC.
