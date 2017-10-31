# Requisitos de Datos

  - **RD2.1:** Los datos de una bicicleta averiada:  

      * Posición: Estación de la bicicleta.
      * Código de identifiación de la bicicleta.
  - **RD2.2:** Taller al que se envía una bicicleta averiada:

      * Número de taller al que se envía la bicicleta.  
      * Personal asignado a la reparación.
  - **RD2.3:** Datos modificados por trasladar una bicicleta al taller:  

      * Se marca esa bicicleta como inactiva en el sistema.  
      * El estado de la bicicleta pasa a ser: en reparación.  
      * Cuando se repara se cambia el estado a activa.  
  - **RD2.4:** Datos modificados por la revisión de las bicicletas:  

      * Las bicicletas trasladadas a revisión son marcadas como no disponibles.  
      * Tras la revisión se actualiza la posición y el estado de las bicicletas.
      * Código de operario.
      * Código de bicicleta.
  - **RD2.5:** Datos de entrada para reparar una estación:  

      * Coordenadas con la posición de la estación a reparar.  
      * Código de la estación.
      * Código del personal.
  - **RD2.6:** Datos de salida tras reparar una estación averiada.  

      * Mensaje con información de la reparación. Cadena alfanumérica de 240 caracteres.  
      * Coordenadas de la estación reparada.  
  - **RD2.7:** Cambios producidos en la base de datos al reparar una estación.  

      * La estación se marca como deshabilitada durante la reparación.  
      * Se vuelve a marcar como habilitada tras la reparación.  
  - **RD2.8:** Datos necesarios para el traslado de bicicletas.  

      * Estación con pocas bicicletas.  
      * Posibles estaciones con muchas bicicletas.  
      * Número de bicicletas a trasladar.  
  - **RD2.9:** Cambios producidos por el traslado de bicicletas.  

      * Se cambian las bicicletas de estación en la base de datos tras el traslado.  
  - **RD2.10:** Datos de entrada para una incidencia.  

      * Tipo de incidencia.  
      * Descripción.  
  - **RD2.11:** Salida tras una incidencia.  

      * Tipo de incidencia.  
      * Descripción.  
  - **RD2.12:** Cambios producidos por una incidencia.  

      * Cambios oportunos.  
