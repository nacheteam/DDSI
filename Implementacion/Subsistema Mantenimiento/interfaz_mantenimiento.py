import mysql.connector as mariadb
import time
import random

codigoSiguienteIncidencia = 0
NUM_PERSONAL = 50
NUM_TALLERES = 10

# Devuelve un array con los mecánicos aleatorios.
def mecanicosAleatorios(num_mecanicos):
    candidatos = list(range(NUM_PERSONAL))
    limite = NUM_PERSONAL-1
    mecanicos = []
    for i in range(num_mecanicos):
        num = random.randint(0,limite)
        mecanicos.append(candidatos[num])
        limite-=1
    return mecanicos


# Función de menú.
def menu():
    print("Bienvenido a la interfaz del módulo de Mantenimiento.\n")
    print("Escoja una opción de las siguientes:\n")
    print("0: Notificación al sistema de que hay una bicicleta averiada.\n")
    print("1: Notificación al sistema de que ya es la época de mantenimiento.\n")
    print("2: Notificación de rotura de una estación de préstamo.\n")
    print("3: Notificación de traslado de bicicletas entre estaciones.\n")
    print("4: Notificación de una incidencia.\n")
    opcion = int(raw_input("Opción: "))
    return opcion

# Función de bicicleta averiada.
def bicicletaAveriada(cursor):
    cod_bicicleta = int(raw_input("Introduzca el código de la bicicleta averiada:"))
    print("En reparación...\n")
    cursor.execute("SELECT Posicion FROM Bicicleta WHERE CodigoBicicleta=='" + str(cod_bicicleta) +"';")
    for Posicion from cursor:
        cursor.execute("UPDATE Bicicleta SET Estado='Reparacion', Posicion='Taller';")
        time.sleep(3)
        cursor.execute("UPDATE Bicicleta SET Estado='Disponible', Posicion='" + str(Posicion) + "';")
    num_mecanicos = random.randint(1,5)
    codigos_mecanicos = mecanicosAleatorios(num_mecanicos)
    taller = random.randint(1,NUM_TALLERES)
    print("Los mecánicos que han reparado la bicicleta tienen los códigos: " + str(codigos_mecanicos) + "\n")
    for mecanico in codigos_mecanicos:
        cursor.execute("INSERT INTO ReparaBicicleta (CodigoBicicleta,CodigoPersonal,NumeroTaller) VALUES ('" + str(cod_bicicleta) + "','" + str(mecanico) + "','" + str(taller) + "');")
    print("¡Reparada!\n")

# Función de mantenimiento.
def mantenimientoBicicletas(cursor):


# Función de notificación de rotura de una estación de préstamo.
def roturaEstacion(cursor):


# Función de traslado de bicicletas entre estaciones.
def trasladoBicicletas(cursor):


# Función de notificación de una incidencia.
def notificacionIncidencia(cursor):
    tipo = raw_input("Introduzca el tipo de incidencia: ")
    descripcion = raw_input("Introduzca una descripción: ")
    cursor.execute("INSERT INTO Incidencias (CodigoIncidencia,Tipo,Descripcion) VALUES ('" + str(codigoSiguienteIncidencia) + "','" + str(tipo) + "','" + str(descripcion) + "');")
    mecanico = random.randint(1,NUM_PERSONAL)
    cursor.execute("INSERT INTO Pone (CodigoPersonal,CodigoReclamacion) VALUES ('" + str(mecanico) + "','" + str(codigoSiguienteIncidencia) + "');")
    print("Notificación de la incidencia realizada.\n")
    codigoSiguienteIncidencia+=1
