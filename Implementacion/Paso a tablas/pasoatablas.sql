CREATE DATABASE BicicletasParis ;

USE BicicletasParis;

CREATE TABLE Personal(
CodigoPersonal INT,
PRIMARY KEY(CodigoPersonal)
);

CREATE TABLE Incidencias(
CodigoIncidencia INT,
Tipo VARCHAR(140),
Descripcion VARCHAR(140),
PRIMARY KEY(CodigoIncidencia)
);

CREATE TABLE Bicicleta(
CodigoBicicleta INT,
Estado VARCHAR(140),
Posicion VARCHAR(140),
PRIMARY KEY(CodigoBicicleta)
);

CREATE TABLE Estacion(
Posicion VARCHAR(140),
Estado VARCHAR(140),
PRIMARY KEY(Posicion)
);

CREATE TABLE Banco(
Entidad INT,
PRIMARY KEY(Entidad)
);

CREATE TABLE Reclamacion(
CodigoReclamacion INT,
NombreArchivo VARCHAR(140),
Fecha VARCHAR(140),
PRIMARY KEY(CodigoReclamacion)
);

CREATE TABLE Usuario(
DNI CHAR(9),
Nombre VARCHAR(20),
Edad VARCHAR(3),
NumeroCuenta INT,
Email VARCHAR(20),
Tarifa INT,
Telefono INT(13),
Contrasena VARCHAR(20),
Sancionado BOOLEAN,
KmRecorridos INT,
PRIMARY KEY(DNI)
);

CREATE TABLE TarifasTiempo(
Tarifa INT,
TiempoAsignado INT,
PRIMARY KEY(Tarifa)
);

CREATE TABLE Comunica(
CodigoIncidencia INT REFERENCES Incidencia(CodigoIncidencia),
CodigoPersonal INT NOT NULL REFERENCES Personal(CodigoPersonal),
PRIMARY KEY(CodigoIncidencia)
);

CREATE TABLE ReparaBicicleta(
CodigoBicicleta INT NOT NULL REFERENCES Bicicleta(CodigoBicicleta),
CodigoPersonal INT NOT NULL REFERENCES Personal(CodigoPersonal),
NumeroTaller INT,
PRIMARY KEY(CodigoBicicleta, CodigoPersonal)
);

CREATE TABLE Traslada(
CodigoBicicleta INT REFERENCES Bicicleta(CodigoBicicleta),
CodigoPersonal INT NOT NULL REFERENCES Personal(CodigoPersonal),
EstacionPocasBicicletas INT,
EstacionMuchasBicicletas INT,
NumeroBicicletas INT,
PRIMARY KEY(CodigoBicicleta, CodigoPersonal)
);

CREATE TABLE Revisa(
CodigoBicicleta INT REFERENCES Bicicleta(CodigoBicicleta),
CodigoPersonal INT REFERENCES Personal(CodigoPersonal),
NumeroTaller INT,
PRIMARY KEY(CodigoBicicleta, CodigoPersonal)
);

CREATE TABLE ReparaEstacion(
CodigoEstacion INT REFERENCES Estacion(CodigoEstacion),
CodigoPersonal INT REFERENCES Personal(CodigoPersonal),
MensajeReparacion VARCHAR(140),
CodReparacionEstacion VARCHAR(140),
PRIMARY KEY(CodigoEstacion, CodigoPersonal, CodReparacionEstacion)
);

CREATE TABLE Sanciona(
DNI CHAR(9) REFERENCES Usuario(DNI),
CodigoEstacion INT REFERENCES Estacion(CodigoEstacion),
CodigoBicicleta INT REFERENCES Bicicleta(CodigoBicicleta),
PRIMARY KEY(DNI, CodigoEstacion, CodigoBicicleta)
);

CREATE TABLE Utiliza(
DNI CHAR(9) REFERENCES Usuario(DNI),
CodigoBicicleta INT REFERENCES Bicicleta(CodigoBicicleta),
TiempoEmpleado INT,
PRIMARY KEY(DNI, CodigoBicicleta)
);

CREATE TABLE RecibePago(
DNI CHAR(9) REFERENCES Usuario(DNI),
Entidad INT NOT NULL REFERENCES Banco(Entidad),
PRIMARY KEY(DNI)
);

CREATE TABLE Pone(
CodigoPersonal INT NOT NULL REFERENCES Personal(CodigoPersonal),
CodigoReclamacion INT REFERENCES Reclamacion(CodigoReclamacion),
PRIMARY KEY(CodigoReclamacion)
);
