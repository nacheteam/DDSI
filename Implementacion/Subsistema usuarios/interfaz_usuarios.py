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
    print("Escriba su DNI (será su user para entrar).\n")
    dni = char(raw_input("Mi DNI es "))
    print("Escriba su nombre completo.\n")
    nombre = raw_input("Me llamo ")
    print("Escriba su edad.\n")
    edad = int(raw_input("Mi"))
    print("Escriba su número de cuenta.\n")
    num_cuenta = int(raw_input())
    print("Escriba su email.\n")
    email = raw_input()
    print("Elija su tarifa. Tenemos: 1. Barata, 2. Cara, 3. Atraco.\n")
    tarifa = int(raw_input())
    print("Escriba su telefono.\n")
    telefono = int(raw_input())
    print("Elija una nueva contraseña para su perfil.\n")
    contraseña = raw_input()

#Acceso a la base de datos y vista de la información del usuario
def accesoPerfil():

# Borrado de las tuplas dadas por un usuario
def bajaUsuario(dni):
