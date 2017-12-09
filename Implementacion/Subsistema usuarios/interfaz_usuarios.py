import mysql.connector as mariadb
import time


# Función del menú principal
def menu():
    print("Bienvenido a la Estación de Usuarios de Bicicletas en París. \n")
    print("Escoja una opción de las siguientes:\n")
    print("0: Darse de alta como nuevo usuario.\n")
    print("1: Acceso a su perfil")
    opcion = int(raw_input("Opción: "))
    if(opcion==0)
        nuevoUsuario()
    else
        accesoPerfil()

# Función para dar de alta un nuevo usuario
def nuevoUsuario():
    print("Preparado para crear nuevo usuario.\n")
    dni = raw_input("Escriba su DNI (será su user para entrar)")
    nombre = raw_input("Escriba su nombre completo.")
    edad = int(raw_input("Escriba su edad."))
    num_cuenta = int(raw_input("Escriba su número de cuenta."))
    email = raw_input("Escriba su email.")
    tarifa = int(raw_input("Elija su tarifa. Tenemos: 1. Barata, 2. Cara, 3. Atraco."))
    telefono = int(raw_input("Escriba su telefono."))
    passw = raw_input("Elija una nueva contraseña para su perfil.")
    sancionado = FALSE  
    mariadb_connection = mariadb.connect(user='root', password='DDSI',database='BicicletasParis')
    cursor = mariadb_connection.cursor()
    cursor.execute("INSERT INTO Usuario VALUES(%s,%s,%i,%i,%s,%s,%i,%i,%i,%s,)",(dni,nombre,edad,num_cuenta,email,tarifa,telefono,passw,sancionado))
    mariadb_connection.commit()

#Acceso a la base de datos y vista de la información del usuario
def accesoPerfil():
    dni=raw_input("Introduce tu user (DNI).")
    passw=raw_input("Introduce tu contraseña")
    mariadb_connection = mariadb.connect(user='root', password='DDSI',database='BicicletasParis')
    cursor = mariadb_connection.cursor()
    cursor.execute("SELECT * FROM Usuario WHERE DNI=%s HAVING Contrasena=%s",(dni,passw))


# Borrado de las tuplas dadas por un usuario
def bajaUsuario(dni):
