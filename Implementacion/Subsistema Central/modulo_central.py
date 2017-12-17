import MySQLdb as mariadb
import random

class SistemaCentral:
    def __init__(self,user,passwd):
        self.user = user
        self.password = passwd
        self.connection = mariadb.connect(host='localhost',
                                          user = self.user,
                                          passwd = self.password,
                                          database = 'BicicletasParis')
        self.cursor = self.connection.cursor()

    def checkSancion(self,DNI, TiempoEmpleado):
        try:
            self.cursor.execute("SELECT Tarifa FROM Usuario WHERE DNI='{}'".format(DNI))
            tarifa = self.cursor.fetchone()[0]
            self.cursor.execute("SELECT TiempoAsignado FROM TarifasTiempo WHERE Tarifa='{}'".format(tarifa))
            tiempo = self.cursor.fetchone()[0]
        except mariadb.Error as error:
            print( "Error: {}".format(error) )
            
        if tiempo > TiempoEmpleado:
            return True
        else:
            return False

    def CiclistaLlega(self, DNI, CodigoBicicleta, CodigoEstacion, TiempoEmpleado):
        try:
            self.cursor.execute("INSERT INTO Llega (DNI,CodigoBicicleta,CodigoEstacion) VALUES ('{0}','{1}','{2}')".format(DNI,CodigoBicicleta,CodigoEstacion))
        except mariadb.Error as error:
            print( "Error: {}".format(error) )
        self.connection.commit()

        if self.checkSancion(DNI, TiempoEmpleado):
            self.SancionarUsuario(DNI)

    def SancionarUsuario(self, DNI):
        try:
            self.cursor.execute("UPDATE Usuario SET Sancionado = TRUE WHERE DNI='{}'".format(DNI))
            self.connection.commit()
        except mariadb.Error as error:
            print( "Error: {}".format(error) )


    def UtilizarBicicleta(self, DNI, CodigoBicicleta, TiempoEmpleado):
        try:
            self.cursor.execute("INSERT INTO Utiliza (DNI,CodigoBicicleta,TiempoEmpleado) VALUES ('{0}','{1}','{2}')".format(DNI, CodigoBicicleta, TiempoEmpleado))
        except mariadb.Error as error:
            print( "Error: {}".format(error) )
        self.connection.commit()

    def SetReubicacion(self,CodigoBicicleta):
        try:
            self.cursor.execute("UPDATE Bicicleta SET Estado='Reubicacion' WHERE CodigoBicicleta='{}'".format(CodigoBicicleta))
        except mariadb.Error as error:
            print( "Error: {}".format(error) )
        self.connection.commit()
    
    def AnalizarEstadisticamente(self):
        try:
            self.cursor.execute("SELECT CodigoBicicleta FROM Bicicleta WHERE Estado='Activa'")
            self.connection.commit()
        except mariadb.Error as error:
            print( "Error: {}".format(error) )
        for CodigoBicicleta in self.cursor:
            if self.ReubicacionNecesaria(CodigoBicicleta[0]):
                self.SetReubicacion(CodigoBicicleta[0])

    def ReubicacionNecesaria(self,CodigoBicicleta):
        return bool(random.getrandbits(1))

    def RecibirPago(self,DNI,Entidad):
        try:
            self.cursor.execute("INSERT INTO RecibePago (DNI,Entidad) VALUES ('{0}','{1}')".format(DNI,Entidad ))
            self.connection.commit()
        except mariadb.Error as error:
            print( "Error: {}".format(error) )

    
