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

Requisitos funcionales
======================

-   **RF1.1:** Dar de alta a un usuario.

    -   Descripción: Se crea un nuevo perfil en el sistemas para poder
        utilizar los servicios.
    -   Datos de entrada: RD1.1
    -   Almacenamiento o manejo: RD1.2
    -   Datos de salida: RD1.3
-   **RF1.2:** Dar de baja a un usuario.

    -   Descripción: Se elimina el perfil y toda su información en
        el sistema.
    -   Datos de entrada: RD1.4
    -   Almacenamiento o manejo: RD1.5
    -   Datos de salida: RD1.6
-   **RF1.3:** Acceso de los usuarios al sistema.

    -   Datos de entrada: RD1.7
    -   Almacenamiento y manejo: RD1.8
    -   Datos de salida: RD1.9
-   **RF1.4:** Cambiar tarifa de usuario.

    -   Datos de entrada: RD1.10
    -   Almacenamiento y manejo: RD1.11
    -   Datos de salida: RD1.12
-   **RF1.5:** Poner queja/reclamación/sugerencia.

    -   Datos de entrada: RD1.13
    -   Almacenamiento y manejo: RD1.14
    -   Datos de salida: RD1.15

Requisitos Funcionales
======================

-   **RF2.1:** Traslado de bicicletas al taller:

    -   Descripción: El sistema es notificado de que hay una bicicleta
        averiada en una estación concreta. Tras esto se deberá retirar
        la bicicleta de la circulación para llevar al taller
        libre correspondiente. Se informa del taller al que se ha
        mandado la bicicleta. Cuando esta es reparada se manda a la
        estación más conveniente.\
    -   Entrada: RD2.1\
    -   Salida: RD2.2\
    -   Cambios producidos en la base de datos: RD2.3\
-   **RF2.2:** Revisión de las bicicletas:

    -   Descripción: El sistema debe mandar a revisión las bicicletas
        durante la última semana del mes. Se debe hacer de
        forma gradual. La revisión incluye la revisión de la presión de
        las ruedas, engrasado de la bicicleta y limpieza general.\
    -   Cambios producidos en la base de datos: RD2.4\
-   **RF2.3** Reparación de una estación de préstamo:

    -   Descripción: Cuando una estación se encuentre averiada el
        sistema central avisará de que se necesita reparar
        dicha estación. Cuando la estación sea reparada se notificará de
        que ya se puede volver a usar.\
    -   Entrada: RD2.5\
    -   Salida: RD2.6\
    -   Cambios producidos en la base de datos: RD2.7\
-   **RF2.4** Traslado de bicicletas entre estaciones:

    -   Descripción: Cuando una estación tenga pocas bicicletas el
        sistema será notificado para proceder al traslado de bicicletas
        desde las estaciones que más tienen a las que menos.\
    -   Entrada: RD2.8\
    -   Cambios producidos en la base de datos: RD2.9\
-   **RF2.5** Incidencia:

    -   Descripción: Cuando se produzca una incidencia de cualquier tipo
        (camión averiado, rotura imposible de arreglar o una incidencia
        no especificada) se notificará al sistema central del fallo.\
    -   Entrada: RD2.10\
    -   Salida: RD2.11\
    -   Cambios producidos en la base de datos: RD2.12

Requisitos funcionales
======================

- **RF3.1:** Proporcionar la pasarela de pago
      - Descripcion : La pasarela de pago conectara al usuario con su banco para realizar el pago.
      - Datos de entrada: **RD3.1.1**
      - Almacenamiento y manejo: **RD3.1.2**
      - Datos de salida: **RD3.1.4**

- **RF3.2:** Controlar el tiempo de uso y trayecto de una bicicleta
      - Descripcion: Este requisito funcional se encargara del control temporal y espacial de las bicicletas.
      - Datos de entrada: **RD3.2.1**
      - Almacenamiento y manejo: **RD3.2.2**
      - Datos de salida: **RD3.2.3**

- **RF3.3:** Establecer la sanción proporcional al tiempo extra
      - Descripcion: Cuando un usuario es sancionado el tiempo extra empleado se le notificara al
requisito funcional.
      - Datos de entrada: **RD3.3.1**
      - Almacenamiento y manejo: **RD3.3.2**

- **RF3.4:** Análisis estadístico de la distribución de bicicletas
      - Descripcion: Se tratara de analizar descriptivamente la localización de las bicicletas para encontrar la distribución que las modela.
      - Datos de entrada: **RD3.4.1**
      - Almacenamiento y manejo: **RD3.4.2**


- **RF3.5:** Notificación de reubicación
     - Descripcion: La finalidad de este modulo es notificar la reubicación de bicicletas.
     - Datos de entrada: **RD3.5.1**
     - Datos de salida **RD3.5.2**


Requisitos de datos
===================

-   **RD1.1:** Datos básicos de un cliente:

    -   Nombre y apellidos.
    -   DNI.
    -   Edad.
    -   Número de cuenta.
    -   Email.
    -   Tarifa (Elegir entre varias posibles)
    -   Número de teléfono.
    -   Contraseña
-   **RD1.2:** Misma información que en el RD1.1.

-   **RD1.3:** Cadena de caracteres dentro de la interfaz para informar
    de que se inscribió satisfactoriamente el nuevo usuario. Tarjeta
    impresa con los datos del usuario.

-   **RD1.4** Primer apellido y DNI del usuario.

-   **RD1.5:** Toda la información comentada en RD1.1 asociada al
    usuario con primer apellido y DNI percibido en RD1.4.

-   **RD1.5:** Cadena de caracteres dentro de la interfaz para informar
    de que se dio de baja satisfactoriamente al usuario. Invalidación de
    la tarjeta en el sistema.

-   **RD1.6:** DNI sin letra y contraseña del usuario.

-   **RD1.7:** Toda la información de RD1.1 sin la contraseña unida a
    los datos de uso de bicicletas del usuario (kms recorridos, tiempo
    acumulado, tarifa en vigor e historial de pagos).

-   **RD1.8:** Datos de RD1.7 en una interfaz amigable para el usuario.

-   **RD1.9:** Nueva tarifa que quiere el usuario.

-   **RD1.10:** Modificación en tablas de la tarifa correspondiente a
    un cliente.

-   **RD1.11:** Mensaje que verifica el cambio de tarifa satisfactorio.

-   **RD1.12:** Tipo de escrito junto con la descripción en lenguaje
    natural del mismo.

-   **RD1.13:** Almacenamiento de la información del RD1.12 en la
    tabla adecuada.

-   **RD1.14:** Mensaje para el usuario que verifica la
    correcta finalización.

Requisitos de Datos
===================

-   **RD2.1:** Los datos de una bicicleta averiada:

    -   Posición: Coordenadas de posición de la bicicleta.\
-   **RD2.2:** Taller al que se envía una bicicleta averiada:

    -   Número de taller al que se envía la bicicleta.\
-   **RD2.3:** Datos modificados por trasladar una bicicleta al taller:

    -   Se marca esa bicicleta como inactiva en el sistema.\
    -   El estado de la bicicleta pasa a ser: en reparación.\
    -   Cuando se repara se cambia el estado a activa.\
-   **RD2.4:** Datos modificados por la revisión de las bicicletas:

    -   Las bicicletas trasladadas a revisión son marcadas como no
        disponibles.\
    -   Tras la revisión se actualiza la posición y el estado de las
        bicicletas.\
-   **RD2.5:** Datos de entrada para reparar una estación:

    -   Coordenadas con la posición de la estación a reparar.\
-   **RD2.6:** Datos de salida tras reparar una estación averiada.

    -   Mensaje con información de la reparación. Cadena alfanumérica de
        240 caracteres.\
    -   Coordenadas de la estación reparada.\
-   **RD2.7:** Cambios producidos en la base de datos al reparar
    una estación.

    -   La estación se marca como deshabilitada durante la reparación.\
    -   Se vuelve a marcar como habilitada tras la reparación.\
-   **RD2.8:** Datos necesarios para el traslado de bicicletas.

    -   Estación con pocas bicicletas.\
    -   Posibles estaciones con muchas bicicletas.\
    -   Número de bicicletas a trasladar.\
-   **RD2.9:** Cambios producidos por el traslado de bicicletas.

    -   Se cambian las bicicletas de estación en la base de datos tras
        el traslado.\
-   **RD2.10:** Datos de entrada para una incidencia.

    -   Tipo de incidencia.\
    -   Descripción.\
-   **RD2.11:** Salida tras una incidencia.

    -   Tipo de incidencia.\
    -   Descripción.\
-   **RD2.12:** Cambios producidos por una incidencia.

    -   Cambios oportunos.

Requisitos de datos
===================

- **RD3.1.1** Datos de entrada
      * Numero de usuario
      * Identificador de una tarjeta de crédito
      * Nombre y Apellidos (Cadena alfanumérica)
      * Caducidad (cadena alfanumérica MM:AAAA posterior a la fecha actual)
      * Numero de tarjeta (16 digitos respetando estandar VISA, MC ...)
      * Numero de comprobación (3 digitos)

- **RD3.1.2** Se almacena una copia de los datos de la tarjeta
      * Nombre y Apellidos (Cadena alfanumérica)
      * Caducidad (cadena alfanumérica MM:AAAA posterior a la fecha actual)
      * Numero de tarjeta (16 digitos respetando estandar VISA, MC ...)
      * Numero de comprobación (3 digitos)

- **RD3.1.3** Datos de salida
      * Exito o fracaso de la transaccion y su numero de error

- **RD3.2.1** Identificador de usuario dado de alta en el sistema
      * Numero de usuario

- **RD3.2.2** Se almacena el tiempo y trayecto de uso de la bicicleta
      * Hora de salida
      * Hora de llegada
      * Estación de salida
      * Estación de llegada

- **RD3.2.3** Datos de salida
      * Se muestra en pantalla si un usuario esta o no sancionado.

- **RD3.3.1** Tiempo empleado
      * Numero de usuario
      * Tiempo empleado por el usuario (numero flotante)
      * Tiempo asignado al usuario

- **RD3.3.2** Actualización estado usuario
      * Estado usuario (SANCIONADO o NO SANCIONADO)

- **RD3.4.1** Uso de las estaciones
      * Informe de posiciones (tabla en formato universal)

- **RD3.4.2** Almacenamiento fecha y hora
      * Fecha (cadena alfanumérica DD:MM:AAAA)
      * Hora (cadena alfanumérica hh:mm:ss)
      * Informe de posiciones (tabla en formato universal)

- **RD3.5.1** Identificador de bicicleta
      * Numero del chasis (Cadena alfanumérica)
      * Posicion
      * Fecha (cadena alfanumérica DD:MM:AAAA)
      * Hora (cadena alfanumérica hh:mm:ss)

- **RD3.5.2** Estado de la bicicleta
      * Numero del chasis (Cadena alfanumérica)
      * Posicion
      * Fecha (cadena alfanumérica DD:MM:AAAA)
      * Hora (cadena alfanumérica hh:mm:ss)      
      * Estado de la bicicleta(AVERIADO o NO AVERIADO)

Restricciones semánticas
========================

-   **RS1.1:** En el RD1.1 asociado al RF1.1, la edad del nuevo usuario
    tendrá que ser mayor o igual que 14.

-   **RS1.2:** En el RD1.1 asociado al RF1.1, el titular del número de
    cuenta no tiene por qué ser igual que el nuevo usuario.

Restricciones Semánticas
========================

Restricciones semánticas
========================

-   **RS3.1** tener tarjeta de credito
