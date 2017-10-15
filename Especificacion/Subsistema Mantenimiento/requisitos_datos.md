# Requisitos de Datos
\par\noindent\rule{\textwidth}{0.8pt}  
\begin{itemize}
  \item{\bf{RD2.1:}} Los datos de una bicicleta averiada:  
    \begin{itemize}
      \item Posición: Coordenadas de posición de la bicicleta.
    \end{itemize}
  \item{\bf{RD2.2:}} Taller al que se envía una bicicleta averiada:
    \begin{itemize}
      \item Número de taller al que se envía la bicicleta.
    \end{itemize}
  \item{\bf{RD2.3}} Datos modificados por trasladar una bicicleta al taller:
    \begin{itemize}
      \item Se marca esa bicicleta como inactiva en el sistema.
      \item El estado de la bicicleta pasa a ser: en reparación.
    \end{itemize}
  \item{\bf{RD2.4}} Datos modificados por la revisión de las bicicletas:  
    \begin{itemize}
      \item Las bicicletas trasladadas a revisión son marcadas como no disponibles.
    \end{itemize}
  \item{\bf{RD2.5}} Datos de entrada para reparar una estación:
    \begin{itemize}
      \item Coordenadas con la posición de la estación a reparar.
    \end{itemize}
  \item{\bf{RD2.6}} Datos de salida tras reparar una estación averiada.
    \begin{itemize}
      \item Mensaje con información de la reparación. Cadena alfanumérica de 240 caracteres.
      \item Coordenadas de la estación reparada.
    \end{itemize}
  \item{\bf{RD2.7}} Cambios producidos en la base de datos al reparar una estación.
    \begin{itemize}
      \item La estación se marca como deshabilitada durante la reparación.
      \item Se vuelve a marcar como habilitada tras la reparación.
    \end{itemize}
  \item{\bf{RD2.8}} Datos necesarios para el traslado de bicicletas.
    \begin{itemize}
      \item Estación con pocas bicicletas.
      \item Posibles estaciones con muchas bicicletas.
      \item Número de bicicletas a trasladar.
    \end{itemize}
  \item{\bf{RD2.9}} Cambios producidos por el traslado de bicicletas.
    \begin{itemize}
      \item Se cambian las bicicletas de estación en la base de datos tras el traslado.
    \end{itemize}
  \item{\bf{RD2.10}} Datos de entrada para una incidencia.
    \begin{itemize}
      \item Tipo de incidencia.
      \item Descripción.
    \end{itemize}
  \item{\bf{RD2.11}} Salida tras una incidencia.
    \begin{itemize}
      \item Tipo de incidencia.
      \item Descripción.
    \end{itemize}
  \item{\bf{RD2.12}} Cambios producidos por una incidencia.
    \begin{itemize}
      \item Cambios oportunos.
    \end{itemize}
\end{itemize}
