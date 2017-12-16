# Dependencias

## Tabla Personal
Pos eso.  

## Tabla Incidencia
F = {CodigoIncidencia->Tipo, CodigoIncidencia->Descripción}  

## Tabla Bicicleta
Si la bicicleta está rota entonces la posición es el taller y si está disponible la posición es una estación.  
F = {CodigoBicicleta->Posicion, CodigoBicicleta->Estado}  

## Tabla Estación
Solo hay una estación en una posición.  
F = {Posición->Estado}  

## Tabla Banco
Pos eso.  

## Tabla Reclamación
F = {CodigoReclamacion->NombreArchivo, CodigoReclamacion->Fecha}  

## Tabla Usuario
F = {DNI->Nombre, DNI->Edad, DNI->NumeroCuenta, DNI-> Email, DNI->Tarifa, DNI->Telefono, DNI->Contraseña, DNI->TiempoAsignado, DNI->Sancionado, Tarifa->TiempoAsignado, DNI->KmsRecorridos}  

## Tabla Comunica
F = {CodigoIncidencia->CodigoPersonal}  

## Tabla ReparaBicicleta
F = {CodReparacionBicicletaCodigoBicicletaCodigoPersonal->NumeroTaller}  

## Tabla traslada
F = {CodigoTrasladoCodigoBicicleta->EstacionMuchasBicicletas,CodigoTrasladoCodigoBicicleta->EstacionPocasBicicletas,CodigoTrasladoCodigoBicicleta->CodigoPersonal,CodigoTrasladoCodigoBicicleta->NumBicicletas}  

## Tabla Revisa
Pos eso.   

## Tabla ReparaEstacion   
F = {CodigoEstacion CodigoPersonal CodReparacionEstacion->MensajeReparacion}  

## Tabla Sanciona  
Pos eso.  

## Tabla Utiliza  
F = {DNI,CódigoBicicleta -> TiempoEmpleado}  

## Tabla RecibePago  
F = {DNI->Entidad}  

## Tabla Pone   
F = {CodigoReclamacion->DNI}
