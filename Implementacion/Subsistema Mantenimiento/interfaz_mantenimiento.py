#!/usr/bin/env python
# -*- coding: utf-8 -*-

################################################################################
##                        Módulos importados                                  ##
################################################################################

import MySQLdb as mariadb
import time
import random

################################################################################
##                        Variables globales                                  ##
################################################################################

NUM_PERSONAL = 50
NUM_TALLERES = 10
NUM_BICICLETAS = 200
MENSAJES_REPARACION_ESTACIONES = ["Hemos reparado la estación con éxito.", "La vida es dura, no siempre se tiene lo que se quiere.",
                                    "Quizás se rompa otro día pero no será mi culpa.", "Vaya follón hemos liado Manolo."]

################################################################################
##                       Funciones auxiliares                                 ##
################################################################################

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


# Devuelve un mensaje de reparación aleatorio.
def mensajeReparacion():
    return MENSAJES_REPARACION_ESTACIONES[random.randint(0,len(MENSAJES_REPARACION_ESTACIONES)-1)]


# Función de menú.
def menu():
    print("Bienvenido a la interfaz del módulo de Mantenimiento.\n")
    print("Escoja una opción de las siguientes:\n")
    print("0: Notificación al sistema de que hay una bicicleta averiada.\n")
    print("1: Notificación al sistema de que ya es la época de mantenimiento.\n")
    print("2: Notificación de rotura de una estación de préstamo.\n")
    print("3: Notificación de traslado de bicicletas entre estaciones.\n")
    print("4: Notificación de una incidencia.\n")
    opcion = int(input("Opción: "))
    return opcion

# Función de bicicleta averiada.
def bicicletaAveriada(cursor,db_connection):
    cod_bicicleta = int(input("Introduzca el código de la bicicleta averiada: "))
    print("En reparación...\n")
    cursor.execute("SELECT Posicion FROM Bicicleta WHERE CodigoBicicleta=" + str(cod_bicicleta) +";")
    db_connection.commit()
    for Posicion in cursor:
        cursor.execute("UPDATE Bicicleta SET Estado='Reparacion',Posicion='Taller' WHERE CodigoBicicleta=" + str(cod_bicicleta) + ";")
        db_connection.commit()
        time.sleep(5)
        cursor.execute("UPDATE Bicicleta SET Estado='Disponible',Posicion='" + str(Posicion[0]) + "' WHERE CodigoBicicleta=" + str(cod_bicicleta) + ";")
        db_connection.commit()
    num_mecanicos = random.randint(1,5)
    codigos_mecanicos = mecanicosAleatorios(num_mecanicos)
    taller = random.randint(1,NUM_TALLERES)
    print("Los mecánicos que han reparado la bicicleta tienen los códigos: " + str(codigos_mecanicos) + "\n")
    for mecanico in codigos_mecanicos:
        cursor.execute("INSERT INTO ReparaBicicleta (CodigoBicicleta,CodigoPersonal,NumeroTaller) VALUES ('" + str(cod_bicicleta) + "','" + str(mecanico) + "','" + str(taller) + "');")
    db_connection.commit()
    print("¡Reparada!\n")

# Función de mantenimiento.
def mantenimientoBicicletas(cursor,db_connection):
    tam_parte = int(NUM_BICICLETAS/5)
    print("Comienza el mantenimiento de las bicicletas.\n")
    posiciones=[]
    for i in range(5):
        print("Mantenimiento.... " + str(int((i/4)*100)) + "%\n")
        for j in range(tam_parte*i,tam_parte*(i+1)):
            cursor.execute("SELECT Posicion FROM Bicicleta WHERE CodigoBicicleta=" + str(j) +";")
            db_connection.commit()
            for posicion in cursor:
                posiciones.append(posicion[0])
            cursor.execute("UPDATE Bicicleta SET Estado='Mantenimiento', Posicion='Taller' WHERE CodigoBicicleta=" + str(j) + ";")
            db_connection.commit()
        time.sleep(5)
        for j in range(tam_parte*i,tam_parte*(i+1)):
            cursor.execute("UPDATE Bicicleta SET Estado='Mantenimiento', Posicion='" + str(posiciones[j]) + "' WHERE CodigoBicicleta=" + str(j) + ";")
            db_connection.commit()
    print("Fin del mantenimiento de las bicicletas.\n")

# Función de notificación de rotura de una estación de préstamo.
def roturaEstacion(cursor,db_connection):
    num_estacion = input("Introduzca el número de la estación rota: ")
    cursor.execute("SELECT Posicion FROM Estacion WHERE CodigoEstacion=" + str(num_estacion))
    db_connection.commit()
    for Posicion in cursor:
        cursor.execute("UPDATE Estacion SET Estado='Reparación', Posicion='" + str(Posicion[0]) + "' WHERE CodigoEstacion='" + str(num_estacion) + "';")
        db_connection.commit()
        time.sleep(5)
        cursor.execute("UPDATE Estacion SET Estado='Disponible', Posicion='" + str(Posicion[0]) + "' WHERE CodigoEstacion='" + str(num_estacion) + "';")
        db_connection.commit()
    mecanicos = mecanicosAleatorios(random.randint(1,5))
    for mecanico in mecanicos:
        cursor.execute("INSERT INTO ReparaEstacion (CodigoEstacion,CodigoPersonal,MensajeReparacion) VALUES ('" + str(num_estacion) + "','" + str(mecanico) + "','" + str(mensajeReparacion()) + "');")
    db_connection.commit()
    print("Estación reparada.\n")
    print("Los mecánicos que la han reparado tienen códigos: " + str(mecanicos))


# Función de traslado de bicicletas entre estaciones.
def trasladoBicicletas(cursor,db_connection):
    estacion_pocas = input("Introduzca el número de la estación con pocas bicicletas: ")
    estacion_muchas = input("Introduzca el número de la estación con muchas bicicletas: ")
    numero_bicicletas = input("Introduzca el número de bicicletas a trasladar: ")
    cursor.execute("SELECT CodigoBicicleta FROM Bicicleta WHERE Posicion='" + str(estacion_muchas) + "';")
    db_connection.commit()
    rango = numero_bicicletas if len(cursor)>numero_bicicletas else len(cursor)
    mecanicos = mecanicosAleatorios(random.randint(1,10))
    for i in range(rango):
        cursor.execute("UPDATE Bicicleta SET Estado='Disponible', Posicion='" + str(estacion_pocas) + "' WHERE CodigoBicicleta='" + str(cursor[i]) + "';")
        for mecanico in mecanicos:
            cursor.execute("INSERT INTO Traslada (CodigoBicicleta,CodigoPersonal,EstacionPocasBicicletas,EstacionMuchasBicicletas,NumeroBicicletas) VALUES ('" + str(cursor[i]) + "','" + str(mecanico) + "','" + str(estacion_pocas) + "','" + str(estacion_muchas) + "','" + str(numero_bicicletas) + "');")
    db_connection.commit()


# Función de notificación de una incidencia.
def notificacionIncidencia(cursor,db_connection):
    codigoSiguienteIncidencia = input("Introduzca el código de la incidencia: ")
    tipo = input("Introduzca el tipo de incidencia: ")
    descripcion = input("Introduzca una descripción: ")
    cursor.execute("INSERT INTO Incidencias (CodigoIncidencia,Tipo,Descripcion) VALUES ('" + str(codigoSiguienteIncidencia) + "','" + str(tipo) + "','" + str(descripcion) + "');")
    mecanico = random.randint(1,NUM_PERSONAL)
    print("El mecánico que ha notificado la incidencia es: " + str(mecanico) + "\n")
    cursor.execute("INSERT INTO Pone (CodigoPersonal,CodigoReclamacion) VALUES ('" + str(mecanico) + "','" + str(codigoSiguienteIncidencia) + "');")
    db_connection.commit()
    print("Notificación de la incidencia realizada.\n")


################################################################################
##                                Main                                        ##
################################################################################

def main():
    mariadb_connection = mariadb.connect(user='root', passwd='DDSI', db='BicicletasParis')
    cursor = mariadb_connection.cursor()
    while True:
        opcion = menu()
        if opcion==0:
            bicicletaAveriada(cursor,mariadb_connection)
        elif opcion==1:
            mantenimientoBicicletas(cursor,mariadb_connection)
        elif opcion==2:
            roturaEstacion(cursor,mariadb_connection)
        elif opcion==3:
            trasladoBicicletas(cursor,mariadb_connection)
        else:
            notificacionIncidencia(cursor,mariadb_connection)

main()
