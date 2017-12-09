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
    contraseña = raw_input("Elija una nueva contraseña para su perfil.")

#Acceso a la base de datos y vista de la información del usuario
def accesoPerfil():

# Borrado de las tuplas dadas por un usuario
def bajaUsuario(dni):
