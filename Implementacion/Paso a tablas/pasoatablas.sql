CREATE DATABASE BicicletasParis ;

CREATE TABLE Personal(
CodigoPersonal INT,
PRIMARY KEY(CodigoPersonal)
);

CREATE TABLE Incidencias(
CodigoIncidencia INT,
Tipo VARCHAR(140),
Descripcion VARCHAR(140),
PRIMARY KEY CodigoIncidencia
);

CREATE TABLE Bicicleta(
CodigoBicicleta INT,
Estado VARCHAR(140),
Posicion VARCHAR(140),
PRIMARY KEY CodigoBicicleta
);

CREATE TABLE Estacion(
CodigoEstacion INT,
Estado VARCHAR(140),
Posicion VARCHAR(140),
PRIMARY KEY CodigoEstacion
);

CREATE TABLE Banco(
Entidad INT,
PRIMARY KEY Entidad
);

CREATE TABLE Reclamacion(
CodigoReclamacion INT,
NombreArchivo VARCHAR(140),
Fecha VARCHAR(140)
PRIMARY KEY CodigoReclamacion
);

CREATE TABLE Usuario(
DNI CHAR(9),
Nombre VARCHAR(20),
Edad VARCHAR(3),
NumeroCuenta CHAR(24),
Email VARCHAR(20),
Tarifa INT,
Telefono VARCHAR(13),
Contrasena VARCHAR(20),
TiempoAsignado INT,
Sancionado BOOLEAN,
PRIMARY KEY DNI
);

CREATE TABLE Comunica(
CodigoIncidencia INT,
CodigoPersonal INT NOT NULL,
PRIMARY KEY CodigoIncidencia,
FOREIGN KEY CodigoIncidencia, CodigoPersonal
);

CREATE TABLE ReparaBicicleta(
CodigoBicicleta INT NOT NULL,
CodigoPersonal INT NOT NULL,
NumeroTaller INT,
PRIMARY KEY CodigoBicicleta, CodigoPersonal,
FOREIGN KEY CodigoBicicleta, CodigoPersonal
);

CREATE TABLE Traslada(
CodigoBicicleta INT,
CodigoPersonal INT NOT NULL,
EstacionPocasBicicletas INT,
EstacionMuchasBicicletas INT,
NumeroBicicletas INT,
PRIMARY KEY CodigoBicicleta, CodigoPersonal,
FOREIGN KEY CodigoBicicleta, CodigoPersonal,
);

CREATE TABLE Revisa(
CodigoBicicleta INT,
CodigoPersonal INT,
NumeroTaller INT,
PRIMARY KEY CodigoBicicleta, CodigoPersonal,
FOREIGN KEY CodigoBicicleta, CodigoPersonal
);

CREATE TABLE ReparaEstacion(
CodigoEstacion INT,
CodigoBicicleta INT,
MensajeReparacion VARCHAR(140),
PRIMARY KEY CodigoEstacion, CodigoBicicleta,
FOREIGN KEY CodigoEstacion, CodigoBicicleta
);

CREATE TABLE Sanciona(
DNI CHAR(9),
CodigoEstacion INT,
CodigoBicicleta INT,
PRIMARY KEY DNI, CodigoEstacion, CodigoBicicleta,
FOREIGN KEY DNI, CodigoEstacion, CodigoBicicleta
);

CREATE TABLE Utiliza(
DNI CHAR(9),
CodigoBicicleta INT,
TiempoEmpleado INT,
PRIMARY KEY DNI, CodigoBicicleta,
FOREIGN KEY DNI, CodigoBicicleta
);

CREATE TABLE RecibePago(
DNI CHAR(9),
Entidad INT NOT NULL,
PRIMARY KEY DNI,
FOREIGN KEY DNI, Entidad
);

CREATE TABLE Pone(
DNI CHAR(9) NOT NULL,
CodigoReclamacion INT,
PRIMARY KEY CodigoReclamacion,
FOREIGN KEY CodigoReclamacion, DNI,
);
