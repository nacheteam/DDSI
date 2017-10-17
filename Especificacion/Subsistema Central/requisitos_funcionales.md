# Requisitos funcionales

- **RF3.1:** Proporcionar la pasarela de pago
La pasarela de pago conectara al usuario con su banco para realizar el pago.

      - **RD3.1.1:**Requiere los datos identificadores de una tarjeta de credito.
      - **RD3.1.2:**El interior del sistema guardara una copia de la misma si se acepta el pago.
      - **RD3.1.3:**El identificador del usuario que hace el pago

La salida de este requisito funcional notificara el éxito o fracaso de la transacción.

- **RF3.2:** Controlar el tiempo de uso y trayecto de una bicicleta
Este requisito funcional se encargara del control temporal y espacial de las
bicicletas.

      - **RD3.2.1**El identificador del usuario que ha usado la bicicleta
      - **RD3.2.2**El tiempo de uso de una bicicleta se almacena en la base de datos.
      - **RD3.2.3**El trayecto se almacena en la base datos.

Si el tiempo de uso es superior al contratado la salida del sistema reflejara
que el usuario debe ser sancionado.

- **RF3.3:** Establecer la sanción proporcional al tiempo extra
Cuando un usuario es sancionado el tiempo extra empleado se le notificara al
requisito funcional.

      - **RD3.3.1**Identificador de usuario.
      - **RD3.3.2**Tiempo asignado al usuario.
      - **RD3.3.3**Tiempo empleado.
      - **RD3.3.4**El usuario en la base de datos sera actualizado a sancionado.


- **RF3.4:** Análisis estadístico de la distribución de bicicletas
Se tratara de analizar descriptivamente la localización de las bicicletas para
encontrar la distribución que las modela.

      - **RD3.4.1** Uso de las estaciones
      - **RD3.4.2** Fecha y hora


- **RF3.5:** Notificación de reubicación
La finalidad de este modulo es notificar la reubicación de bicicletas.

     - **RD3.5.1** Identificador de bicicleta
     - **RD3.5.2** Estado de la bicicleta
