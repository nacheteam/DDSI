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

    def checkSancion(self,DNI, TiempoEmpleado):
        self.connection('SELECT TiempoAsignado FROM USUARIO WHERE DNI=%s',DNI)
        if self.connection > TiempoEmpleado:
            return true
        else:
            return false

    def CiclistaLlega(self, DNI, CodigoBicicleta, CodigoEstacion, TiempoEmpleado):
        try:
            cursor.execute('INSERT INTO Sanciona (DNI,CodigoBicicleta,CodigoEstacion) VALUES (%s,%s,%s)',(DNI,CodigoBicicleta,CodigoEstacion))
        except mariadb.Error as error:
            print( "Error: {}".format(error) )

        if self.checkSancion(DNI, TiempoEmpleado):
            self.SancionarUsuario(DNI)

    def SancionarUsuario(self, DNI):
        try:
            cursor.execute('UPDATE Usuario SET Sancionado = TRUE WHERE DNI=%s',DNI)
        except mariadb.Error as error:
            print( "Error: {}".format(error) )


    def UtilizarBicicleta(self, DNI, CodigoBicicleta, TiempoEmpleado):
        try:
            cursor.execute('INSERT INTO Utiliza (DNI,CodigoBicicleta,TiempoEmpleado) VALUES (%s,%s,%s)',(DNI, CodigoBicicleta, TiempoEmpleado))
        except mariadb.Error as error:
            print( "Error: {}".format(error) )

    def SetReubicacion(self,CodigoBicicleta):
        try:
            self.cursor.execute("UPDATE Bicicleta SET Estado='Reubicacion' WHERE CodigoBicicleta=%s",CodigoBicicleta)
        except mariadb.Error as error:
            print( "Error: {}".format(error) )
            
    def AnalizarEstadisticamente(self):
        try:
            cursor.execute("SELECT CodigoBicicleta FROM Bicicleta WHERE Estado=TRUE")
        except mariadb.Error as error:
            print( "Error: {}".format(error) )
        for CodigoBicicletas in cursor:
            if ReubicacionNecesaria(self,CodigoBicicleta):
                SetReubicacion(self,CodigoBicicleta)

    def ReubicacionNecesaria(self,CodigoBicicleta):
        return bool(random.getrandbits(1))

    def RecibirPago(self,DNI,Entidad):
        try:
            self.cursor.execute('INSERT INTO RecibePago (DNI,Entidad) VALUES (%s,%s)',(DNI,Entidad))
        except mariadb.Error as error:
            print( "Error: {}".format(error) )
            