#!/usr/bin/env python
# -*- coding: utf-8 -*-



import MySQLdb as mariadb
tarifas = [45,60,90]

# Función del menú principal
def main():
    print("Bienvenido a la Estación de Usuarios de Bicicletas en París. \n")
    print("Escoja una opción de las siguientes:\n")
    print("0: Darse de alta como nuevo usuario.\n")
    print("1: Acceso a su perfil")
    opcion = int(input("Opción: "))
    if opcion==0:
        nuevoUsuario()
    else:
        accesoPerfil()

# Función para dar de alta un nuevo usuario
def nuevoUsuario():
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
    mariadb_connection = mariadb.connect(user='root', passwd='DDSI',db='BicicletasParis')
    cursor = mariadb_connection.cursor()
    cursor.execute("INSERT INTO Usuario VALUES('" + str(dni) + "','" + str(nombre) + "','" + str(edad) + "','" + str(num_cuenta) + "','" + str(email) + "','" + str(tarifas[tarifa])+"','" + str(tarifa) + "','" + str(telefono) + "','" + str(passw) + "','" +  + str(sancionado) + "');")
    mariadb_connection.commit()



## Intento de indentación adecuada
def accesoPerfil():
    dni=input("Introduzca user (DNI).\n")
    passw=input("Introduzca contraseña.\n")
    mariadb_connection = mariadb.connect(user='root',passwd='DDSI',db='BicicletasParis')
    cursor = mariadb_connection.cursor()
    cursor.execute("SELECT * FROM Usuario WHERE DNI=%s HAVING Contrasena=%s",(dni,passw))
    for dni,nombre,edad,num_cuenta,email,tarifa,telefono,sancionado in cursor:
        print("PERFIL DE USUARIO EN LA COMPAÑÍA BicicletasParis\n")
        print("Nombre: " + nombre)
        print("User: " + dni)
        print("Edad del usuario: " + edad)
        print("Número de cuenta asociado: " + num_cuenta)
        print("Email del usuario: " + email)
        print("Tarifa actual: " + tarifa)
        print("Número de teléfono asociado: " + telefono)
        print("¿Sancionado? (0==No, 1==Si) " + sancionado)

    opcion=input("Opciones (Introduzca): 0: Cambiar dato / 1: Borrar perfil / 2: Salir del sistema / 3: Poner queja, reclamación, sugerencia\n")
    if opcion=="0":
        cambio_dato=input("¿Qué quiere cambiar? (Introduzca): 0: Número de cuenta asociado / 1: Email / 2: Tarifa actual / 3: Número de teléfono\n")
        if cambio_dato=="0":
            nuevo_num_cuenta=input("Introduzca su nuevo número de cuenta.\n")
            cursor.execute("UPDATE Usuario SET NumeroCuenta='" + str(nuevo_num_cuenta) + "'WHERE DNI='" + str(dni) + "';")
        elif cambio_dato=="1":
            nuevo_email=input("Introduzca su nuevo email.\n")
            cursor.execute("UPDATE Usuario SET Email='" + str(nuevo_email) + "'WHERE DNI='" + str(dni) + "';")
        elif cambio_dato=="2":
            nueva_tarifa=input("Elija su tarifa. Tenemos: 1. Barata, 2. Cara, 3. Atraco.\n")
            cursor.execute("UPDATE Usuario SET Tarifa='" + str(nueva_tarifa) + "'WHERE DNI='" + str(dni) + "';")
        elif cambio_dato=="3":
            nuevo_tlf=input("Escriba su teléfono\.n")
            cursor.execute("UPDATE Usuario SET Telefono='" + str(nuevo_tlf) + "'WHERE DNI='" + str(dni) + "';")
    elif opcion=="1":
        print("Gracias por utilizar nuestro sistema. Confiamos que vuelva a nuestra compañía pronto\n")
        cursor.execute("DELETE FROM Usuario where DNI=%s",(dni))
    elif opcion=="2":
        print("¡Hasta pronto!")
        exit()
    elif opcion=="3":
        reclamacion=input("Escriba su reclamación. Esperamos arreglar cualquier problema lo antes posible:\n")
        num=cursor.execute("SELECT COUNT * FROM Reclamacion;")
        cursor.execute("INSERT INTO Reclamacion VALUES('" + str(num) + "', 'Reclamacion" + str(num) + "','" + str(reclamacion) + "';")

main()
