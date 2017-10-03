# Sistema de información para la gestión de bicicletas públicas en París.
## Ignacio Aguilera, Luis Balderas, Diego Asterio de Zaballa
\par\noindent\rule{\textwidth}{0.8pt}  

## Introducción
\par\noindent\rule{\textwidth}{0.4pt}  

Las ciudades occidentales, sobre todo las europeas, han vivido en los últimos años una gran revolución. Millones de personas se agolpan en las grandes urbes en busca de trabajo y mejores condiciones de vida, lo que genera un extraordinario desarrollo, especialmente tecnológico e industrial. Desgraciadamente, este auge también supone un grandísimo desgaste en el medio ambiente. Miles y miles de vehículos y medios de transporte atoran las calles y avenidas, provocando una gran contaminación ambiental y acústica. Por eso, desde nuestra posición presentamos un proyecto revolucionario que ponga solución a medio y largo plazo a estos problemas: el uso regulado y efectivo de bicicletas públicas por toda la ciudad con un coste accesible para todos los bolsillos. En particular, nos centramos en una de las mayores capitales europeas: París. Pretendemos desarrollar un sistema de información robusto, capaz de gestionar todas las necesidades a nivel usuario e institucional que supone una ordenación de esta envergadura.  


## Descripción del funcionamiento
\par\noindent\rule{\textwidth}{0.4pt}

En primer lugar, es necesario controlar quién accede a las bicicletas, por lo que cada usuario tendrá que darse de alta en alguna de las muchas estaciones que existirán, concretamente en los dispositivos instalados en cada una, y recibirá un documento en forma de carné personal e intransferible. Será necesario que especifique su información personal, a saber, nombre, DNI, dirección, número de cuenta, número de teléfono y dirección de correo electrónico. Una vez dado de alta en el sistema, ya será apto para disfrutar de las bicicletas. Dicho uso estará sujeto a una serie de normas. Se exponen a continuación:

Los usuarios tienen un tiempo de uso asignado en función de la tarifa que escojan. El pago se realiza de forma anual con el precio estipulado según su elección. Si el contador de tiempo llegase a cero, éste deberá dejar la bicicleta en la estación más cercana y pagar una sanción proporcional al tiempo excedido. Para volver a utilizar el servicio se deberá abonar previamente la multa.  

En un uso normal del sistema el usuario cogerá una bicicleta de cualquier estación identificándose con su tarjeta para posteriormente dejarla en la estación que convenga. Podrá hacer uso de bicicletas todas las veces que quiera, siempre y cuando respete el tiempo máximo. Una vez que devuelve la bicicleta a una estación, su tiempo se restablece, por lo que podría coger otra inmediatamente. Los cargos se harán automáticamente a través de la cuenta bancaria. En caso de accidente, el conductor de la bicicleta será responsable de los perjuicios causados.

El mantenimiento de las bicicletas correrá por cuenta del ayuntamiento de la ciudad, que será avisado con la suficiente antelación a través de nuestro subsistema de notificaciones para cambiar ruedas, cadenas o cualquier desperfecto debido al paso del tiempo.

En los dispositivos nombrados anteriormente se podrá consultar la cantidad de bicicletas disponibles en toda la ciudad, dándose la posibilidad de reservar una bicicleta. Así mismo, podrán hacer cambios en su configuración de usuario y controlar el número de horas y kilómetros que acumulan en su cuenta.

## Subsistemas
\par\noindent\rule{\textwidth}{0.4pt}

Dividiremos el sistema en tres subsistemas independientes: gestión de usuarios y notificaciones, mantenimiento y control de bicicletas y dispositivo (producto software en tiempo real) de las estaciones. A continuación, se describe la funcionalidad de cada uno de ellos:

### Gestión de usuarios

En este modulo se realizaran las acciones sobre el sistema en las que interviene el usuario. Esto se materializa en una interfaz gráfica intuitiva para el usuario. A parte de poder recoger una bicicleta, un usuario tendrá la posibilidad de darse de alta en el servicio así como de baja. Con esta finalidad dispondrá de una pasarela de pago con la cual realizar los pagos. Por último otra funcionalidad importante incluida en este modulo será la opción de notificar una avería.

### Mantenimiento y control de bicicletas

Esta parte del servicio se encargará de todo lo relacionado al tránsito de bicicletas. Esto incluye gestionar la distribución de las mismas de acuerdo a su uso habitual. En esta gestión colabora la empresa de bicicletas que moverá las bicicletas. Así mismo este módulo se encargará de la solución de las averías de bicicletas de las que sean informados. Esto incluye su posterior reinserción en el parque móvil.

### Dispositivo central

Este subsistema se encargará de la gestión del correcto funcionamiento del resto de módulos. Esto implica tener en cuenta las posibles infracciones que los usuarios puedan cometer así como controlar las notificaciones requeridas para los usuarios y el personal de mantenimiento. Este sistema no contará de interfaz con la que interactuar como los anteriores ya que será un módulo transparente para el resto de subsistemas.
