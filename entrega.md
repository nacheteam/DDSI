---
header-includes:
 - \usepackage{graphicx}
 - \usepackage{float}
---

Sistema de información para la gestión de bicicletas públicas en París.
=======================================================================

Ignacio Aguilera, Luis Balderas, Diego Asterio de Zaballa
---------------------------------------------------------

\par
\noindent\rule{\textwidth}{0.8pt}

Introducción
------------

\par
\noindent\rule{\textwidth}{0.4pt}

Las ciudades occidentales, sobre todo las europeas, han vivido en los
últimos años una gran revolución. Millones de personas se agolpan en las
grandes urbes en busca de trabajo y mejores condiciones de vida, lo que
genera un extraordinario desarrollo, especialmente tecnológico e
industrial. Desgraciadamente, este auge también supone un gran desgaste
en el medio ambiente. Miles y miles de vehículos y medios de transporte
atoran las calles y avenidas, provocando una gran contaminación
ambiental y acústica. Por eso, desde nuestra posición presentamos un
proyecto revolucionario que ponga solución a medio y largo plazo a estos
problemas: el uso regulado y efectivo de bicicletas públicas por toda la
ciudad con un coste accesible para todos los bolsillos. En particular,
nos centramos en una de las mayores capitales europeas: París.
Pretendemos desarrollar un sistema de información robusto, capaz de
gestionar todas las necesidades a nivel usuario e institucional que
supone una ordenación de esta envergadura.

Descripción del funcionamiento
------------------------------

\par
\noindent\rule{\textwidth}{0.4pt}

En primer lugar, es necesario controlar quién accede a las bicicletas,
por lo que cada usuario tendrá que darse de alta en alguna de las muchas
estaciones que existirán, concretamente en los dispositivos instalados
en cada una, y recibirá un documento en forma de carné personal e
intransferible. Será necesario que especifique su información personal,
a saber, nombre, edad, DNI, dirección, número de cuenta, número de
teléfono, dirección de correo electrónico y contraseña para el perfil.
Una vez dado de alta en el sistema, ya será apto para disfrutar de las
bicicletas. Dicho uso estará sujeto a una serie de normas. Se exponen a
continuación:

Los usuarios tienen un tiempo de uso asignado en función de la tarifa
que escojan. El pago se realiza de forma anual con el precio estipulado
según su elección. Si el contador de tiempo llegase a cero, éste deberá
dejar la bicicleta en la estación más cercana y pagar una sanción
proporcional al tiempo excedido. Para volver a utilizar el servicio se
deberá abonar previamente la multa.

En un uso normal del sistema el usuario cogerá una bicicleta de
cualquier estación identificándose con su tarjeta para posteriormente
dejarla en la estación que convenga. Podrá hacer uso de bicicletas todas
las veces que quiera, siempre y cuando respete el tiempo máximo. Una vez
que devuelve la bicicleta a una estación, su tiempo se restablece, por
lo que podría coger otra inmediatamente. Los cargos se harán
automáticamente a través de la cuenta bancaria. En caso de accidente, el
conductor de la bicicleta será responsable de los perjuicios causados.

El mantenimiento de las bicicletas correrá por cuenta del ayuntamiento
de la ciudad, que será avisado con la suficiente antelación a través de
nuestro subsistema de notificaciones para cambiar ruedas, cadenas o
cualquier desperfecto debido al paso del tiempo.

En los dispositivos nombrados anteriormente se podrá consultar la
cantidad de bicicletas disponibles en toda la ciudad, dándose la
posibilidad de reservar una bicicleta. Así mismo, podrán hacer cambios
en su configuración de usuario y controlar el número de horas y
kilómetros que acumulan en su cuenta.

Subsistemas
-----------

\par
\noindent\rule{\textwidth}{0.4pt}

Dividiremos el sistema en tres subsistemas independientes: gestión de
usuarios y notificaciones, mantenimiento y control de bicicletas y
dispositivo (producto software en tiempo real) de las estaciones. A
continuación, se describe la funcionalidad de cada uno de ellos:

### Gestión de usuarios

Un usuario se da de alta en las máquinas de las estaciones. Accederá a
la pantalla de "Nueva alta de usuario" y tendrá que rellenar toda su
información. Por último, tendrá que tomarse una foto desde las cámaras
integradas en dichas máquinas. Una vez confirmada la configuración
personal, se imprimirá la tarjeta con la que el usuario opera en las
estaciones. Por otra parte, en la interfaz principal, un usuario también
podrá darse de baja. Sólo necesitará escribir su primer apellido y el
DNI para efectuar la operación. La estación invalidará automáticamente
la tarjeta.

La última opción de la interfaz principal es el acceso a usuarios. Ahí,
cualquier usuario accederá para ver su información personal, número de
kms hechos y tiempo acumulado pedaleando, así como su tarifa en vigor y
su historial de pagos. Si se retrasa un pago o se multa a un usuario por
un mal uso, se le notificará automáticamente en esta sección y también a
través de SMS y email. Si se persiste en el impago, la cuenta se
bloqueará. y el usuario no podrá sacar bicicletas. De igual forma, se da
la posibilidad de cambiar a una tarifa con otro coste y condiciones. Por
último, será interesante la opinión de los usuarios y la posibilidad de
que informen rápidamente de alguna incidencia, avería o desperfecto de
las bicicletas. Para ello, podrán acceder a la pantalla de
Cuestiones/Sugerencias y dentro, Averías/Opiniones. Cada una de esas
opciones tendrá un formulario estándar dónde se podrá expresar
cómodamente las incidencias para ser estudiadas por el sistema lo más
rápido posible.

La última opción de la interfaz principal es el acceso a usuarios. Ahí,
cualquier usuario accederá para ver su información personal, número de
kms hechos y tiempo acumulado pedaleando, así como su tarifa en vigor y
su historial de pagos. Si se retrasa un pago o se multa a un usuario por
un mal uso, se le notificará automáticamente en esta sección y también a
través de SMS y email. Si se persiste en el impago, la cuenta se
bloqueará y el usuario no podrá sacar bicicletas. De igual forma, se da
la posibilidad de cambiar a una tarifa con otro coste y condiciones.

Cada vez que se saca o se estaciona una bicicleta con una tarjeta de
cliente quedaran grabados todos los datos del momento y lugar.

### Mantenimiento y control de bicicletas

El módulo de mantenimiento se encargará de orientar al personal de
mantenimiento en su trabajo. El personal tiene como funciones el arreglo
y revisión de bicicletas, mantenimiento de las estaciones de préstamo y
distribución de bicicletas de una estación a otra. Cuando el sistema es
notificado con la avería de alguna de las bicicletas éste debe avisar al
personal de mantenimiento con la posición de la bicicleta para que
puedan ir a recogerla para repararla. Este proceso incluye la gestión de
la ocupación del taller. Si el taller está ocupado se deben llevar las
bicicletas a un almacén para su posterior traslado. En cuanto a la
revisión de las bicicletas se deberá efectuar una revisión mensual que
incluye revisar la presión de las ruedas, engrasado de la bicicleta y
una limpieza general. La revisión se hará de forma gradual durante la
última semana del mes.\
Si una estación de préstamo resulta dañada de algún modo los operarios
serán notificados también para poder ir a repararla, para esto será
necesario adjuntarles la posición de la estación. Cuando la incidencia
se haya reparado se informará al sistema de ello.\
Si hay alguna estación con un número demasiado elevado de bicicletas
mientras que otras estaciones están escasas de las mismas los operarios
deberán cargar algunas de las bicicletas entre estaciones. Esto se les
notificará dando la estación que tiene demasiadas bicicletas, el número
de bicicletas a retirar y la estación donde deben llevarse las
sobrantes.\
Así mismo si el personal tiene alguna incidencia (camión averiado,
rotura imposible de arreglar en bicicletas o alguna incidencia no
especificada) se notificará al sistema para que quede constancia del
problema y se tenga en cuenta, si es necesario, para la gestión de las
bicicletas.

### Dispositivo central

Este subsistema se encargará de la gestión del correcto funcionamiento
del resto de módulos. Se trata de un sistema que dará soporte a los dos
primeros y gestionará aspectos del sistema que les son desconocidos.

Los servicios que ofrecerá al subsistema de usuario serán: proporcionar
la pasarela de pago a los usuarios, establecer la sanción proporcional
al tiempo extra que haya sido empleado y alterar el estado de un cliente
a sancionado. La información recabada y el uso de los vehículos puede
ser utilizado para establecer un análisis descriptivo del comportamiento
de la población.

En la gestión de bicicletas el dispositivo central añade en la base de
datos información acerca del uso de las bicicletas y su localización.
Estos últimos datos son estudiados con el interés de proporcionar una
distribución adecuada al uso de los vehículos. La finalidad de esto
ultimo es ofrecer un servicio funcional sin tener que aumentar el
presupuesto destinado a los vehículos. El tiempo de uso de las distintas
bicicletas lo controlan cada una de las estaciones.

Estas dos funciones además incluyen un sistema de notificaciones a los
usuarios para ser notificados de sanciones u otras incidencias y
notificaciones para los de mantenimiento con la intención de avisarles
de averías o reubicación de bicicletas.

### Subsistemas  
- Luis Balderas Ruiz: Subsistema 1 Gestión de Usuarios.  
- Ignacio Aguilera Martos: Subsistema 2 Gestión de Mantenimiento.
- Diego Asterio de Zaballa: Subsistema 3 Central.  

#### Requisitos funcionales

- **RF1.1:** Dar de alta a un usuario.

    * Descripción: Se crea un nuevo perfil en el sistemas para poder utilizar los servicios almacenando los datos del cliente.
    * Datos de entrada: RD1.1
    * Almacenamiento o manejo: RD1.2
    * Datos de salida: RD1.3


- **RF1.2:** Dar de baja a un usuario.

    * Descripción: Se elimina el perfil y toda su información en el sistema.
    * Datos de entrada: RD1.4
    * Almacenamiento o manejo: RD1.5
    * Datos de salida: RD1.6

- **RF1.3:** Acceso de los usuarios al sistema.

    * Datos de entrada: RD1.7
    * Almacenamiento y manejo: RD1.8
    * Datos de salida: RD1.9


- **RF1.4:** Cambiar tarifa de usuario.

    * Datos de entrada: RD1.10
    * Almacenamiento y manejo: RD1.11
    * Datos de salida: RD1.12

- **RF1.5:** Poner queja/reclamación/sugerencia.

    * Datos de entrada: RD1.13
    * Almacenamiento y manejo: RD1.14
    * Datos de salida: RD1.15


#### Requisitos Funcionales

- **RF2.1:** Reparación bicicletas:    

    * Descripción: El sistema es notificado de que hay una bicicleta averiada en una estación concreta. Tras esto se deberá retirar la bicicleta de la circulación para llevar al taller libre correspondiente. Se informa del taller al que se ha mandado la bicicleta. Cuando esta es reparada se manda a la estación más conveniente.  
    * Entrada: RD2.1  
    * Salida: RD2.2  
    * Cambios producidos en la base de datos: RD2.3    
- **RF2.2:** Revisión de las bicicletas:    

    * Descripción: El sistema debe mandar a revisión las bicicletas durante la última semana del mes. Se debe hacer de forma gradual. La revisión incluye la revisión de la presión de las ruedas, engrasado de la bicicleta y limpieza general.  
    * Cambios producidos en la base de datos: RD2.4    
- **RF2.3** Reparación de una estación de préstamo:   

    * Descripción: Cuando una estación se encuentre averiada el sistema central avisará de que se necesita reparar dicha estación. Cuando la estación sea reparada se notificará de que ya se puede volver a usar.  
    * Entrada: RD2.5  
    * Salida: RD2.6  
    * Cambios producidos en la base de datos: RD2.7    
- **RF2.4** Traslado de bicicletas entre estaciones:  

    * Descripción: Cuando una estación tenga pocas bicicletas el sistema será notificado para proceder al traslado de bicicletas desde las estaciones que más tienen a las que menos.  
    * Entrada: RD2.8  
    * Cambios producidos en la base de datos: RD2.9    
- **RF2.5** Incidencia:    

    * Descripción: Cuando se produzca una incidencia de cualquier tipo (camión averiado, rotura imposible de arreglar o una incidencia no especificada) se notificará al sistema central del fallo.  
    * Entrada: RD2.10  
    * Salida: RD2.11  
    * Cambios producidos en la base de datos: RD2.12  

#### Requisitos funcionales

- **RF3.1:** Proporcionar la pasarela de pago
    - Descripción : La pasarela de pago conectara al usuario con su banco para realizar el pago.
    - Datos de entrada: **RD3.1.1**
    - Almacenamiento y manejo: **RD3.1.2**
    - Datos de salida: **RD3.1.3**

- **RF3.2:** Controlar el tiempo de uso y trayecto de una bicicleta
    - Descripción: Este requisito funcional se encargara del control temporal y espacial de las bicicletas.
    - Datos de entrada: **RD3.2.1**
    - Almacenamiento y manejo: **RD3.2.2**

- **RF3.3:** Establecer la sanción proporcional al tiempo extra
    - Descripción: Cuando un usuario es sancionado el tiempo extra empleado se le notificara al requisito funcional.
    - Datos de entrada: **RD3.3.1**
    - Almacenamiento y manejo: **RD3.3.2**

- **RF3.4:** Análisis estadístico de la distribución de bicicletas
    - Descripción: Se tratara de analizar descriptivamente la localización de las bicicletas para encontrar la distribución que las modela.
    - Datos de entrada: **RD3.4.1**
    - Almacenamiento y manejo: **RD3.4.2**

- **RF3.5:** Notificación de reubicación
    - Descripción: La finalidad de este modulo es notificar la reubicación de bicicletas.
    - Datos de entrada: **RD3.5.1**
    - Datos de salida **RD3.5.2**


#### Requisitos de datos

- **RD1.1:** Datos básicos de un cliente:

    * Nombre y apellidos.
    * DNI.
    * Edad.
    * Número de cuenta.
    * Email.
    * Tarifa (Elegir entre varias posibles)
    * Número de teléfono.
    * Contraseña

- **RD1.2:** Misma información que en el RD1.1.

- **RD1.3:** Cadena de caracteres dentro de la interfaz para informar de que se inscribió satisfactoriamente el nuevo usuario. Tarjeta impresa con los datos del usuario.

- **RD1.4** Primer apellido y DNI del usuario.

- **RD1.5:** Toda la información comentada en RD1.1 asociada al usuario con primer apellido y DNI percibido en RD1.4.

- **RD1.6:** Cadena de caracteres dentro de la interfaz para informar de que se dio de baja satisfactoriamente al usuario. Invalidación de la tarjeta en el sistema.

- **RD1.7:** DNI sin letra y contraseña del usuario.

- **RD1.8:** Toda la información de RD1.1 sin la contraseña unida a los datos de uso de bicicletas del usuario (kms recorridos, tiempo acumulado, tarifa en vigor e historial de pagos).

- **RD1.9:** Datos de RD1.8 en una interfaz amigable para el usuario.

- **RD1.10:** Nueva tarifa que quiere el usuario.

- **RD1.11:** Modificación en tablas de la tarifa correspondiente a un cliente.

- **RD1.12:** Mensaje que verifica el cambio de tarifa satisfactorio.

- **RD1.13:** Tipo de escrito junto con la descripción en lenguaje natural del mismo.

- **RD1.14:** Almacenamiento de la información del RD1.12 en la tabla adecuada.

- **RD1.15:** Mensaje para el usuario que verifica la correcta finalización.


#### Requisitos de Datos

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

    * Código estación con pocas bicicletas.  
    * Códigos bicicletas.
    * Código personal.
    * Posibles estaciones con muchas bicicletas.  
    * Número de bicicletas a trasladar.  
- **RD2.9:** Cambios producidos por el traslado de bicicletas.  

    * Se cambian las bicicletas de estación en la base de datos tras el traslado.  
- **RD2.10:** Datos de entrada para una incidencia.  

    * Tipo de incidencia.  
    * Descripción.  
    * Código incidencia.
    * Código operario.
- **RD2.11:** Salida tras una incidencia.  

    * Tipo de incidencia.  
    * Descripción.  
- **RD2.12:** Cambios producidos por una incidencia.  

    * Cambios oportunos.

#### Requisitos de datos

- **RD3.1.1** Datos de entrada
    - Numero de usuario
    - Identificador de una tarjeta de crédito
    - Nombre y Apellidos (Cadena alfanumérica)
    - Caducidad (cadena alfanumérica MM:AAAA posterior a la fecha actual)
    - Numero de tarjeta (16 dígitos respetando estándar VISA, MC ...)
    - Numero de comprobación (3 dígitos)

- **RD3.1.2** Se almacena una copia de los datos de la tarjeta
    - Nombre y Apellidos (Cadena alfanumérica)
    - Caducidad (cadena alfanumérica MM:AAAA posterior a la fecha actual)
    - Numero de tarjeta (16 dígitos respetando estándar VISA, MC ...)
    - Numero de comprobación (3 dígitos)

- **RD3.1.3** Datos de salida
    - Éxito o fracaso de la transacción y su numero de error

- **RD3.2.1** Identificador de usuario dado de alta en el sistema
    - Numero de usuario

- **RD3.2.2** Se almacena el tiempo y trayecto de uso de la bicicleta
    - Identificador de bicicleta
    - Tiempo empleado
    - Estación de llexgada

- **RD3.3.1** Tiempo empleado
    - Numero de usuario
    - Tiempo empleado por el usuario (numero flotante)
    - Tiempo asignado al usuario

- **RD3.3.2** Actualización estado usuario
    - Estado usuario (SANCIONADO o NO SANCIONADO)

- **RD3.4.1** Uso de las estaciones
    - Informe de posiciones (tabla en formato universal)

- **RD3.4.2** Almacenamiento fecha y hora
    - Fecha (cadena alfanumérica DD:MM:AAAA)
    - Hora (cadena alfanumérica hh:mm:ss)
    - Informe de posiciones (tabla en formato universal)

- **RD3.5.1** Identificador de bicicleta
    - Numero del chasis (Cadena alfanumérica)
    - Posición
    - Fecha (cadena alfanumérica DD:MM:AAAA)
    - Hora (cadena alfanumérica hh:mm:ss)

- **RD3.5.2** Estado de la bicicleta
    - Numero del chasis (Cadena alfanumérica)
    - Posicion
    - Fecha (cadena alfanumérica DD:MM:AAAA)
    - Hora (cadena alfanumérica hh:mm:ss)      
    - Estado de la bicicleta(AVERIADO o NO AVERIADO)

#### Restricciones semánticas

-   **RS1.1:** En el RD1.1 asociado al RF1.1, la edad del nuevo usuario
    tendrá que ser mayor o igual que 14.

-   **RS1.2:** En el RD1.1 asociado al RF1.1, el titular del número de
    cuenta no tiene por qué ser igual que el nuevo usuario.

## Análisis


\begin{figure}[H]
    \includegraphics[scale=0.45]{./Imagenes/Esquema_caja_negra.jpeg}
    \caption{Esquema caja negra}
\end{figure}


\begin{figure}[H]
    \includegraphics[scale=0.42]{./Imagenes/Esquema_F_armazon.jpg}
    \caption{Esquema F armazón}
\end{figure}

\begin{figure}[H]
    \includegraphics[scale=0.43]{./Imagenes/esquema_conceptual.png}
    \caption{Esquema conceptual completo}
\end{figure}

\begin{figure}[H]
    \includegraphics[scale=0.5]{./Imagenes/DFD_Usuarios.jpg}
    \caption{Diagrama de flujo de datos Usuarios}
\end{figure}

\begin{figure}[H]
    \includegraphics[scale=0.35]{./Imagenes/esquemas_externos_usuario.png}
    \caption{Esquemas externos de Usuario}
\end{figure}

\begin{figure}[H]
    \includegraphics[scale=0.43]{./Imagenes/esquema_conceptual_usuario.png}
    \caption{Esquema conceptual Usuario}
\end{figure}

\begin{figure}[H]
    \includegraphics[scale=0.45]{./Imagenes/Diagrama_flujo_datos_mantenimiento.jpg}
    \caption{Diagrama de flujo de datos Mantenimiento}
\end{figure}

\begin{figure}[H]
    \includegraphics[scale=0.23]{./Imagenes/esquema_externo_mantenimiento.png}
    \caption{Esquemas externos Mantenimiento}
\end{figure}

\begin{figure}[H]
    \includegraphics[scale=0.43]{./Imagenes/esquema_conceptual_mantenimiento.png}
    \caption{Esquema conceptual Mantenimiento}
\end{figure}

\begin{figure}[H]
    \includegraphics[scale=0.43]{./Imagenes/Subsistema_central_flujo_datos.png}
    \caption{Diagrama de flujo de datos Central}
\end{figure}

\begin{figure}[H]
    \includegraphics[scale=0.37]{./Imagenes/Esquema_externo_central.png}
    \caption{Esquemas externos Central}
\end{figure}

\begin{figure}[H]
    \includegraphics[scale=0.5]{./Imagenes/Esquema_conceptual_central.png}
    \caption{Esquema conceptual Central}
\end{figure}


## Esquemas de navegación

### Subsistema de Usuarios

* Alta de usuario:  
	- Escritura en la base de datos de los datos de un nuevo usuario: DNI, nombre, edad, nº de cuenta, email, tarifa, teléfono y contraseña.  

* Baja de usuario:  
	- Borrado de la base de datos de todos los datos el usuario identificado por su DNI.  

* Cambiar tarifa:  
	- Modificar en la base de datos el atributo tarifa de un usuario identificado por su DNI.  

* Poner queja/reclamación/sugerencia:  
	- El sistema escribe en la base de datos una nueva reclamación con el DNI del usuario, el código, el nombre de fichero dónde el usuario escribe y la fecha.  

\begin{figure}[H]
    \includegraphics[scale=0.48]{./Imagenes/esquemas_navegacion_usuario.png}
    \caption{Esquemas navegación Usuario}
\end{figure}

\newpage
### Subsistema de Mantenimiento

* Incidencia:  
    - Escritura en la base de datos de una incidencia.  

* Reparación de bicicletas:
    - Escritura de la nueva posición (taller) en la que está la bicicleta y de su estado en reparación.
    - Escritura de la posición de la bicicleta una vez se ha terminado de reparar (nueva estación en la que está) y de su estado disponible.

* Traslado de bicicletas:
    - Escritura de las nuevas posiciones de las bicicletas.

* Revisión de bicicletas:
    - Escritura de la nueva posición (taller) en la que está la bicicleta y de su estado en revisión.
    - Escritura de la posición de la bicicleta una vez se ha terminado de revisar (nueva estación en la que está) y de su estado disponible.

* Reparación de una estación de préstamo:
    - Escritura del estado en reparación de la estación.
    - Escritura del estado disponible de la estación una vez se ha reparado.


\begin{figure}[H]
    \includegraphics[scale=0.4]{./Imagenes/esquemas_navegacion_mantenimiento.png}
    \caption{Esquemas navegación Mantenimiento}
\end{figure}

### Subsistema Central

* Usuario
    - Establecer sancion actualizando la base de datos usuario

* Banco recibe pago
    - Insertar en la tabla de pagos

* Bicicleta llega a estacion
    - Insertar llegada en la tabla

* Analisis estadistico
    - Leer datos de bicicletas

* Reubicacion necesaria
    - Actualizar la opcion de reubicacion de Bicicletas

\begin{figure}[H]
    \includegraphics[scale=0.425]{./Imagenes/esquemas_navegacion_central.png}
    \caption{Esquemas navegación Central}
\end{figure}

## Paso a Tablas

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

## Normalización

### Luis Balderas Ruiz

#### Tabla Usuario
Atributos: DNI, Nombre, Edad, NúmeroCuenta, Email, Tarifa, Teléfono, Contraseña, TiempoAsignado, Sancionado, KmRecorridos.  
Clave: DNI.  
F = {DNI->Nombre, DNI->Edad, DNI->NumeroCuenta, DNI-> Email, DNI->Tarifa, DNI->Telefono, DNI->Contraseña, DNI->TiempoAsignado, DNI->Sancionado, Tarifa->TiempoAsignado, DNI->KmsRecorridos}  

- No está en FNBC porque Det={DNI, Tarifa}. Por tanto, genero dos tablas nuevas:  

	* Usuario(DNI, Nombre, Edad, NúmeroCuenta, Email, Tarifa, Teléfono, Contraseña, Sancionado, KmRecorridos)  
	* TarifasTiempo(Tarifa,TiempoAsignado)  

Ambas tablas ya están en FNBC.  

#### Tabla Bicicleta
Atributos: CodigoBicicleta, Posicion, Estado.  
Clave: CodigoBicicleta.  
F={CodigoBicicleta -> Posicion, CodigoBicicleta ->Estado}  

- 1FN: El dominio de cada atributo solo contiene valores atómicos.  

- 2FN: CodigoBicicleta (atributo primo) determina de forma completa a Posicion y Estado.  

- 3FN: No hay dependencias transitivas.  

- FNBC: El determinante está formado únicamente por la clave primaria.  

#### Tabla Utiliza
Atributos: DNI, CodigoBicicleta, TiempoEmpleado.  
Clave: DNI, CodigoBicicleta.  
F = {DNI,CódigoBicicleta -> TiempoEmpleado}  

Está en FNBC trivialmente.  

#### Tabla Pone
Atributos: CodigoReclamacion, DNI.   
Clave: CodigoReclamacion.  
F = {CodigoReclamacion->DNI}
Está en FNBC trivialmente.


### Ignacio Aguilera Martos

#### Tabla Incidencia
Atributos: CodigoIncidencia, Tipo, Descripción.  
Clave: CodigoIncidencia.  
F = {CodigoIncidencia->Tipo, CodigoIncidencia->Descripción}  

- 1FN: El dominio de cada atributo contiene solo valores atomicos.

- 2FN: está claro que la tabla está en 2FN ya que el único atributo primo es CodigoIncidencia y este determina de forma completa a Tipo y Descripción.  

- 3FN: está en tercera forma normal porque no tiene ninguna dependencia transitiva.  

- FNBC: todas las relaciones tienen a la izquierda una clave candidata y además todos los atributos que aparecen a la derecha no están contenidos en la clave, por lo que está en FNBC.  

#### Tabla ReparaEstacion
Atributos: CodigoEstacion, CodigoPersonal, CodReparacionBicicleta, MensajeReparacion.  
Clave: CodigoEstacion, CodigoPersonal, CodReparacionBicicleta.  
F = {CodigoEstacion CodigoPersonal CodReparacionEstacion->MensajeReparacion}  

- 1FN: El dominio de cada atributo contiene solo valores atomicos.

- 2FN: los atributos que forman la clave (los únicos primos) determinan de forma completa a MensajeReparacion, por lo que está en segunda forma normal.  

- 3FN: no hay dependencias transitivas, luego está en 3FN.  

- FNBC: sólo aparecen claves candidatas a la izquierda y además no hay ninguna clave candidata incluida en la parte derecha de la única dependencia que hay, por lo tanto está en FNBC.


#### Tabla Estacion
Atributos: Posición, Estado.  
Clave: Posición.  
F = {Posición->Estado}  

- 1FN: El dominio de cada atributo contiene solo valores atomicos.

- 2FN: Posición determina de forma completa a Estado, luego está en 2FN.  

- 3FN: no hay dependencias transitivas, luego está en 3FN.  

- FNBC: sólo aparecen claves candidatas a la izquierda y además no hay ninguna clave candidata incluida en la parte derecha de la única dependencia que hay, por lo tanto está en FNBC.  

#### Tabla Comunica  
Atributos: CodigoIncidencia, CodigoPersonal.  
Clave: CodigoIncidencia.  
F = {CodigoIncidencia->CodigoPersonal}  

- 1FN: El dominio de cada atributo contiene solo valores atomicos.

- 2FN: El único atibuto primo que hay es CodigoIncidencia y éste determina de forma completa a CodigoPersonal, luego está en 2FN.  

- 3FN: No hay dependencias transitivas, por lo que está en 3FN.  

- FNBC: Sólo aparecen claves candidatas a la izquierda y además en CodigoPersonal no está incluida ninguna clave candidata, por lo que está en FNBC.

### Diego Asterio de Zaballa

#### Tabla Reclamacion  
Atributos: CodigoReclamacion, NombreArchivo, Fecha.
Clave: CodigoReclamacion.
F = {CodigoReclamacion->NombreArchivo, CodigoReclamacion->Fecha}

- 1FN: El dominio de cada atributo contiene solo valores atomicos.

- 2FN: NombreArchivo y Fecha son atributos no primos y ninguno de ellos
lo determina un subconjunto de la PK.

- 3FN: Todos los atributos dependen de claves candidatas. No hay atributos que dependan de atributos no-primos.

- FNBC: Para las dos relaciones funcionales la condicion CodigoReclamacion es superclave se verifica.


#### Tabla ReparaBicicleta
Atributos: CodReparacionEstacion, CodigoBicicleta, CodigoPersonal, NumeroTaller
Clave: CodigoBicicletaCodigoPersonal
F = {CodReparacionEstacionCodigoBicicletaCodigoPersonal -> NumeroTaller}

- 1FN: El dominio de cada atributo contiene solo valores atomicos.

- 2FN: El unico atributo no-primo que hay es NumeroTaller y no hay ningun subconjunto de una clave candidata que lo determine.

- 3FN: No hay dependencias transitivas y por tanto todos los atributos dependen directamente de claves candidatas.

- FNBC: CodReparacionEstacionCodigoBicicletaCodigoPersonal es una superclave.

#### Tabla Traslada
Atributos: CodigoTraslado, CodigoBicicleta, CodigoPersonal, EstacionPocasBicicletas, EstacionMuchasBicicletas, NumeroBicicletas.
Clave: CodigoTraslado, CodigoBicicleta
F = {CodigoTrasladoCodigoBicicleta->EstacionMuchasBicicletas,CodigoTrasladoCodigoBicicleta->EstacionPocasBicicletas,CodigoTrasladoCodigoBicicleta->CodigoPersonal,CodigoTrasladoCodigoBicicleta->NumBicicletas}

- 1FN: El dominio de cada atributo contiene solo valores atomicos.

- 2FN: Los atributos no-primos no dependen nunca de un subconjunto de alguna clave candidata

- 3FN: No hay dependencias transitivas por lo que no hay ningun atributo que dependa de un atributo no-primo

-FNBC: A la izquierda de cada relacion hay siempre una superclave.


#### Tabla RecibePago
Atributos: DNI, Entidad.
Clave: DNI
F = {DNI -> Entidad}

- 1FN: El dominio de cada atributo contiene solo valores atomicos.

- 2FN: El unico atributo no primo Entidad no depende de ningun subconjunto de una clave candidata.

- 3FN: Todos los atributos de la tabla estan determinados por atributos de las claves candidatas.

- FNBC: DNI es superclave de la relacion.


## Disparadores

Los disparadores realizados han sido implementados en la variante del lenguaje PL/SQL para MariaDB.  


### Disparador del Subsistema Central

El disparador comprueba que al insertar una nueva tupla el código de la bicicleta y el código de la estación están en el rango adecuado.  

``` sql
DELIMITER |

CREATE OR REPLACE TRIGGER revisaInsertaLlegada
BEFORE INSERT ON Llega
FOR EACH ROW
BEGIN
    IF (NEW.CodigoBicicleta<0 OR NEW.CodigoBicicleta>199) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT='Código de bicicleta fuera de los límites [0,199]';
    END IF;
    IF (NEW.CodigoEstacion<0 OR NEW.CodigoEstacion>29) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT='Código de estacion fuera de los límites [0,29]';
    END IF;
END |

DELIMITER ;
```

### Disparador del Subsistema de Usuarios

El disparador comprueba que la edad del nuevo usuario sea mayor que 14, en caso contrario no se permite la inserción.

``` sql
DELIMITER |

CREATE OR REPLACE TRIGGER edadMinima
BEFORE INSERT ON Usuario
FOR EACH ROW
BEGIN
  IF (NEW.Edad <= 14) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "No se puede dar de alta un usuario menor de 15 años.";
  END IF;
END |

DELIMITER ;
```

###  Disparador del Subsistema de Mantenimiento

El disparador comprueba que el codigo de la bicicleta y la estación están en el rango adecuado.

``` sql
DELIMITER |

CREATE OR REPLACE TRIGGER revisaReparaBicicletas
BEFORE INSERT ON ReparaBicicleta
FOR EACH ROW
BEGIN
    IF (NEW.CodigoBicicleta<0 OR NEW.CodigoBicicleta>199) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT='Código de bicicleta fuera de los límites [0,199]';
    END IF;
    IF (NEW.CodigoPersonal<0 OR NEW.CodigoPersonal>29) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT='Código de personal fuera de los límites [0,29]';
    END IF;
END |

DELIMITER ;
```
