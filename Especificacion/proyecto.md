# Sistema de información para la gestión de bicicletas públicas en París.
## Ignacio Aguilera, Luis Balderas, Diego Asterio de Zaballa
\par\noindent\rule{\textwidth}{0.8pt}  

## Introducción
\par\noindent\rule{\textwidth}{0.4pt}  

Las ciudades occidentales, sobre todo las europeas, han vivido en los últimos años una gran revolución. Millones de personas se agolpan en las grandes urbes en busca de trabajo y mejores condiciones de vida, lo que genera un extraordinario desarrollo, especialmente tecnológico e industrial. Desgraciadamente, este auge también supone un gran desgaste en el medio ambiente. Miles y miles de vehículos y medios de transporte atoran las calles y avenidas, provocando una gran contaminación ambiental y acústica. Por eso, desde nuestra posición presentamos un proyecto revolucionario que ponga solución a medio y largo plazo a estos problemas: el uso regulado y efectivo de bicicletas públicas por toda la ciudad con un coste accesible para todos los bolsillos. En particular, nos centramos en una de las mayores capitales europeas: París. Pretendemos desarrollar un sistema de información robusto, capaz de gestionar todas las necesidades a nivel usuario e institucional que supone una ordenación de esta envergadura.  


## Descripción del funcionamiento
\par\noindent\rule{\textwidth}{0.4pt}

En primer lugar, es necesario controlar quién accede a las bicicletas, por lo que cada usuario tendrá que darse de alta en alguna de las muchas estaciones que existirán, concretamente en los dispositivos instalados en cada una, y recibirá un documento en forma de carné personal e intransferible. Será necesario que especifique su información personal, a saber, nombre, edad, DNI, dirección, número de cuenta, número de teléfono, dirección de correo electrónico y contraseña para el perfil. Una vez dado de alta en el sistema, ya será apto para disfrutar de las bicicletas. Dicho uso estará sujeto a una serie de normas. Se exponen a continuación:

Los usuarios tienen un tiempo de uso asignado en función de la tarifa que escojan. El pago se realiza de forma anual con el precio estipulado según su elección. Si el contador de tiempo llegase a cero, éste deberá dejar la bicicleta en la estación más cercana y pagar una sanción proporcional al tiempo excedido. Para volver a utilizar el servicio se deberá abonar previamente la multa.  

En un uso normal del sistema el usuario cogerá una bicicleta de cualquier estación identificándose con su tarjeta para posteriormente dejarla en la estación que convenga. Podrá hacer uso de bicicletas todas las veces que quiera, siempre y cuando respete el tiempo máximo. Una vez que devuelve la bicicleta a una estación, su tiempo se restablece, por lo que podría coger otra inmediatamente. Los cargos se harán automáticamente a través de la cuenta bancaria. En caso de accidente, el conductor de la bicicleta será responsable de los perjuicios causados.

El mantenimiento de las bicicletas correrá por cuenta del ayuntamiento de la ciudad, que será avisado con la suficiente antelación a través de nuestro subsistema de notificaciones para cambiar ruedas, cadenas o cualquier desperfecto debido al paso del tiempo.

En los dispositivos nombrados anteriormente se podrá consultar la cantidad de bicicletas disponibles en toda la ciudad, dándose la posibilidad de reservar una bicicleta. Así mismo, podrán hacer cambios en su configuración de usuario y controlar el número de horas y kilómetros que acumulan en su cuenta.

## Subsistemas
\par\noindent\rule{\textwidth}{0.4pt}

Dividiremos el sistema en tres subsistemas independientes: gestión de usuarios y notificaciones, mantenimiento y control de bicicletas y dispositivo (producto software en tiempo real) de las estaciones. A continuación, se describe la funcionalidad de cada uno de ellos:

### Gestión de usuarios

Un usuario se da de alta en las máquinas de las estaciones. Accederá a la pantalla de "Nueva alta de usuario" y tendrá que rellenar toda su información. Por último, tendrá que tomarse una foto desde las cámaras integradas en dichas máquinas. Una vez confirmada la configuración personal, se imprimirá la tarjeta con la que el usuario opera en las estaciones. Por otra parte, en la interfaz principal, un usuario también podrá darse de baja. Sólo necesitará escribir su primer apellido y el DNI para efectuar la operación. La estación invalidará automáticamente la tarjeta.

La última opción de la interfaz principal es el acceso a usuarios. Ahí, cualquier usuario accederá para ver su información personal, número de kms hechos y tiempo acumulado pedaleando, así como su tarifa en vigor y su historial de pagos. Si se retrasa un pago o se multa a un usuario por un mal uso, se le notificará automáticamente en esta sección y también a través de SMS y email. Si se persiste en el impago, la cuenta se bloqueará. y el usuario no podrá sacar bicicletas. De igual forma, se da la posibilidad de cambiar a una tarifa con otro coste y condiciones. Por último, será interesante la opinión de los usuarios y la posibilidad de que informen rápidamente de alguna incidencia, avería o desperfecto de las bicicletas. Para ello, podrán acceder a la pantalla de Cuestiones/Sugerencias y dentro, Averías/Opiniones. Cada una de esas opciones tendrá un formulario estándar dónde se podrá expresar cómodamente las incidencias para ser estudiadas por el sistema lo más rápido posible.

La última opción de la interfaz principal es el acceso a usuarios. Ahí, cualquier usuario accederá para ver su información personal, número de kms hechos y tiempo acumulado pedaleando, así como su tarifa en vigor y su historial de pagos. Si se retrasa un pago o se multa a un usuario por un mal uso, se le notificará automáticamente en esta sección y también a través de SMS y email. Si se persiste en el impago, la cuenta se bloqueará y el usuario no podrá sacar bicicletas. De igual forma, se da la posibilidad de cambiar a una tarifa con otro coste y condiciones.

Cada vez que se saca o se estaciona una bicicleta con una tarjeta de cliente quedaran grabados todos los datos del momento y lugar.



### Mantenimiento y control de bicicletas

El módulo de mantenimiento se encargará de orientar al personal de mantenimiento en su trabajo. El personal tiene como funciones el arreglo y revisión de bicicletas, mantenimiento de las estaciones de préstamo y distribución de bicicletas de una estación a otra.
Cuando el sistema es notificado con la avería de alguna de las bicicletas éste debe avisar al personal de mantenimiento con la posición de la bicicleta para que puedan ir a recogerla para repararla. Este proceso incluye la gestión de la ocupación del taller. Si el taller está ocupado se deben llevar las bicicletas a un almacén para su posterior traslado. En cuanto a la revisión de las bicicletas se deberá efectuar una revisión mensual que incluye revisar la presión de las ruedas, engrasado de la bicicleta y una limpieza general. La revisión se hará de forma gradual durante la última semana del mes.  
Si una estación de préstamo resulta dañada de algún modo los operarios serán notificados también para poder ir a repararla, para esto será necesario adjuntarles la posición de la estación. Cuando la incidencia se haya reparado se informará al sistema de ello.  
Si hay alguna estación con un número demasiado elevado de bicicletas mientras que otras estaciones están escasas de las mismas los operarios deberán cargar algunas de las bicicletas entre estaciones. Esto se les notificará dando la estación que tiene demasiadas bicicletas, el número de bicicletas a retirar y la estación donde deben llevarse las sobrantes.  
Así mismo si el personal tiene alguna incidencia (camión averiado, rotura imposible de arreglar en bicicletas o alguna incidencia no especificada) se notificará al sistema para que quede constancia del problema y se tenga en cuenta, si es necesario, para la gestión de las bicicletas.

### Dispositivo central

Este subsistema se encargará de la gestión del correcto funcionamiento del resto de módulos. Se trata de un sistema que dará soporte a los dos primeros y gestionará aspectos del sistema que les son desconocidos.

Los servicios que ofrecerá al subsistema de usuario serán: proporcionar la pasarela de pago a los usuarios, establecer la sanción proporcional al tiempo extra que haya sido empleado y alterar el estado de un cliente a sancionado. La información recabada y el uso de los vehículos puede ser utilizado para establecer un análisis descriptivo del comportamiento de la población.

En la gestión de bicicletas el dispositivo central añade en la base de datos información acerca del uso de las bicicletas y su localización. Estos últimos datos son estudiados con el interés de proporcionar una distribución adecuada al uso de los vehículos. La finalidad de esto ultimo es ofrecer un servicio funcional sin tener que aumentar el presupuesto destinado a los vehículos. El tiempo de uso de las distintas bicicletas lo controlan cada una de las estaciones.

Estas dos funciones además incluyen un sistema de notificaciones a los usuarios para ser notificados de sanciones u otras incidencias y notificaciones para los de mantenimiento con la intención de avisarles de averías o reubicación de bicicletas.

