# Requisitos funcionales

\begin{itemize}

\item{\textbf{RF1:} Proporcionar la pasarela de pago}
La pasarela de pago conectara al usuario con su banco para realizar el pago.
\begin{itemize}
\item{\textbf{RD1.1:}Requiere los datos identificadores de una tarjeta de credito.}
\item{\textbf{RD1.2:}El interior del sistema guardara una copia de la misma si se acepta el pago.}
\item{\textbf{RD1.3:}El identificador del usuario que hace el pago}
\end{itemize}
La salida de este requisito funcional notificara el éxito o fracaso de la transacción.

\item{\textbf{RF2:} Controlar el tiempo de uso y trayecto de una bicicleta}
Este requisito funcional se encargara del control temporal y espacial de las
bicicletas.
\begin{itemize}
\item{\textbf{RD2.1}El identificador del usuario que ha usado la bicicleta}
\item{\textbf{RD2.2}El tiempo de uso de una bicicleta se almacena en la base
de datos.}
\item{\textbf{RD2.3}El trayecto se almacena en la base datos.}
\end{itemize}
Si el tiempo de uso es superior al contratado la salida del sistema reflejara
que el usuario debe ser sancionado.

\item{\textbf{RF3:} Establecer la sanción proporcional al tiempo extra}
Cuando un usuario es sancionado el tiempo extra empleado se le notificara al
requisito funcional.
\begin{itemize}
\item{\textbf{RD3.1}Identificador de usuario.}
\item{\textbf{RD3.2}Tiempo asignado al usuario.}
\item{\textbf{RD3.3}Tiempo empleado.}
\item{\textbf{RD3.4}El usuario en la base de datos sera actualizado a sancionado.}
\end{itemize}

\item{\textbf{RF4:} Análisis estadístico de la distribución de bicicletas}
Se tratara de analizar descriptivamente la localización de las bicicletas para
encontrar la distribución que las modela.
\begin{itemize}
\item{\textbf{RD4.1} Uso de las estaciones}
\item{\textbf{RD4.2} Fecha y hora}
\end{itemize}

\item{\textbf{RF5:} Notificación de reubicación}
La finalidad de este modulo es notificar la reubicación de bicicletas.
\begin{itemize}
\item{\textbf{RD5.1} Identificador de bicicleta}
\item{\textbf{RD5.2} Estado de la bicicleta }
\end{itemize}