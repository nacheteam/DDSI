# Requisitos Funcionales
\par\noindent\rule{\textwidth}{0.8pt}  
\begin{itemize}
  \item{\bf{RF2.1:}} Traslado de bicicletas al taller:  
    \begin{itemize}
      \item Descripción: El sistema es notificado de que hay una bicicleta averiada en una estación concreta. Tras esto se deberá retirar la bicicleta de la circulación para llevar al taller libre correspondiente. Se informa del taller al que se ha mandado la bicicleta. Cuando esta es reparada se manda a la estación más conveniente.
      \item Entrada: RD2.1
      \item Salida: RD2.2
      \item Cambios producidos en la base de datos: RD2.3
    \end{itemize}
  \item{\bf{RF2.2:}} Revisión de las bicicletas.
    \begin{itemize}
      \item Descripción: El sistema debe mandar a revisión las bicicletas durante la última semana del mes. Se debe hacer de forma gradual. La revisión incluye la revisión de la presión de las ruedas, engrasado de la bicicleta y limpieza general.
      \item Cambios producidos en la base de datos: RD2.4
    \end{itemize}
  \item{\bf{RF2.3}} Reparación de una estación de préstamo:
    \begin{itemize}
      \item Descripción: Cuando una estación se encuentre averiada el sistema central avisará de que se necesita reparar dicha estación. Cuando la estación sea reparada se notificará de que ya se puede volver a usar.
      \item Entrada: RD2.5
      \item Salida: RD2.6
      \item Cambios producidos en la base de datos: RD2.7
    \end{itemize}
  \item{\bf{RF2.4}} Traslado de bicicletas entre estaciones:
    \begin{itemize}
      \item Descripción: Cuando una estación tenga pocas bicicletas el sistema será notificado para proceder al traslado de bicicletas desde las estaciones que más tienen a las que menos.
      \item Entrada: RD2.8
      \item Cambios producidos en la base de datos: RD2.9
    \end{itemize}
  \item{\bf{RF2.5}} Incidencia:
    \begin{itemize}
      \item Descripción: Cuando se produzca una incidencia de cualquier tipo (camión averiado, rotura imposible de arreglar o una incidencia no especificada) se notificará al sistema central del fallo.
      \item Entrada: RD2.10
      \item Salida: RD2.11
      \item Cambios producidos en la base de datos: RD2.12
    \end{itemize}
\end{itemize}
