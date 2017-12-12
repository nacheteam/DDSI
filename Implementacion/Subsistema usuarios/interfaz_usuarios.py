#!/usr/bin/env python
# -*- coding: utf-8 -*-



import MySQLdb as mariadb
import time
import random
tiempo_asignado = [45,60,90]

# Función del menú principal
def main():
    print("Bienvenido a la Estación de Usuarios de Bicicletas en París. \n")
    mariadb_connection = mariadb.connect(user='root', passwd='DDSI',db='BicicletasParis')
    cursor = mariadb_connection.cursor()
    while(True):
        print("Escoja una opción de las siguientes:\n")
        print("0: Darse de alta como nuevo usuario.\n")
        print("1: Acceso a su perfil")
        opcion = int(input("Opción: "))
        if opcion==0:
            nuevoUsuario(cursor,mariadb_connection)
        else:
            accesoPerfil(cursor,mariadb_connection)

# Función para dar de alta un nuevo usuario
def nuevoUsuario(cursor,db_connection):
    print("Preparado para crear nuevo usuario.\n")
    dni = input("Escriba su DNI (será su user para entrar)\n")
    nombre = input("Escriba su nombre completo.\n")
    edad = int(input("Escriba su edad.\n"))
    num_cuenta = int(input("Escriba su número de cuenta.\n"))
    email = input("Escriba su email.\n")
    tarifa = int(input("Elija su tarifa. Tenemos: 0. Barata, 1. Cara, 2. Atraco.\n"))
    telefono = int(input("Escriba su telefono.\n"))
    passw = input("Elija una nueva contraseña para su perfil.\n")
    sancionado = 0
    km_recorridos=0
    cursor.execute("INSERT INTO Usuario VALUES('" + str(dni) + "','" + str(nombre) + "','" + str(edad) + "','" + str(num_cuenta) + "','" + str(email) + "','" + str(tarifa) + "','" + str(telefono) + "','" + str(passw) + "','" + str(tiempo_asignado[tarifa]) + "','" + str(sancionado) + "','" + str(km_recorridos) + "');")
    db_connection.commit()
    print("Se dio de alta al nuevo usuario correctamente.\n")



## Intento de indentación adecuada
def accesoPerfil(cursor,db_connection):
    dni=input("Introduzca user (DNI).\n")
    passw=input("Introduzca contraseña.\n")
    while(True):
        cursor.execute("SELECT * FROM Usuario WHERE DNI=%s HAVING Contrasena=%s",(dni,passw))
        if cursor.rowcount==0:
            print("Error: No existe ningún usuario con ese user o contraseña.\n")
            return None
        opcion=input("Opciones (Introduzca): 0: Cambiar dato / 1: Borrar perfil / 2: Salir del sistema / 3: Poner queja, reclamación, sugerencia / 4: Ver información del perfil\n")
        if opcion=="0":
            cambio_dato=input("¿Qué quiere cambiar? (Introduzca): 0: Número de cuenta asociado / 1: Email / 2: Tarifa actual / 3: Número de teléfono\n")
            if cambio_dato=="0":
                nuevo_num_cuenta=input("Introduzca su nuevo número de cuenta.\n")
                cursor.execute("UPDATE Usuario SET NumeroCuenta='" + str(nuevo_num_cuenta) + "'WHERE DNI='" + str(dni) + "';")
                print("Nuevo número de cuenta asignado.\n")
            elif cambio_dato=="1":
                nuevo_email=input("Introduzca su nuevo email.\n")
                cursor.execute("UPDATE Usuario SET Email='" + str(nuevo_email) + "'WHERE DNI='" + str(dni) + "';")
                print("Nuevo email asignado.\n")
            elif cambio_dato=="2":
                nueva_tarifa=int(input("Elija su tarifa. Tenemos: 1. Barata, 2. Cara, 3. Atraco.\n"))
                cursor.execute("UPDATE Usuario SET Tarifa='" + str(nueva_tarifa) + "'WHERE DNI='" + str(dni) + "';")
                cursor.execute("UPDATE Usuario SET TiempoAsignado='" + str(tiempo_asignado[nueva_tarifa]) + "'WHERE DNI='" + str(dni) + "';")
                print("Nueva tarifa asignada.\n")
            elif cambio_dato=="3":
                nuevo_tlf=input("Escriba su teléfono.\n")
                cursor.execute("UPDATE Usuario SET Telefono='" + str(nuevo_tlf) + "'WHERE DNI='" + str(dni) + "';")
                print("Nuevo número de teléfono asignado.\n")
        elif opcion=="1":
            print("Gracias por utilizar nuestro sistema. Confiamos que vuelva a nuestra compañía pronto\n")
            cursor.execute("DELETE FROM Usuario where DNI=%s",(dni))
            exit()
        elif opcion=="2":
            print("¡Hasta pronto!")
            exit()
        elif opcion=="3":
            reclamacion=input("Escriba su reclamación. Esperamos arreglar cualquier problema lo antes posible:\n")
            cursor.execute("SELECT COUNT(*) FROM Reclamacion;")
            for aux in cursor:
                cursor.execute("INSERT INTO Reclamacion VALUES('" + str(aux[0]) + "','Reclamacion" + str(aux[0]) + "','" + time.strftime("%d/%m/%Y") + "');")
                print("La queja se puso satisfactoriamente con código " + str(aux[0]) + " y se almacenó en el archivo Reclamacion" + str(aux[0]) + ".\n")
        elif opcion=="4":
            for it in cursor:
                print("PERFIL DE USUARIO EN LA COMPAÑÍA BicicletasParis\n")
                print("Nombre: " + str(it[1]))
                print("User: " + str(it[0]))
                print("Edad del usuario: " + str(it[2]))
                print("Número de cuenta asociado: " + str(it[3]))
                print("Email del usuario: " + str(it[4]))
                print("Tarifa actual: " + str(it[5]))
                print("Número de teléfono asociado: " + str(it[6]))
                print("Tiempo asignado: " + str(it[8]))
                print("¿Sancionado? (0==No, 1==Si) " + str(it[9]))
                print("Kms recorridos: " + str(random.randrange(1,100)))
        db_connection.commit()

main()
