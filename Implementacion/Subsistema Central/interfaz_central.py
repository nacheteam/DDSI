import cmd, sys
from modulo_central import *

class interfazCentral(cmd.Cmd):
    intro= 'Bienvenido al modulo central. Escribe help o ? para listar los comandos.\n'
    prompt='(central): '

    def __init__(self):
        cmd.Cmd.__init__(self)
        self.miSistema = SistemaCentral('root','DDSI')

    # ----- Comandos basicos del modulo central -----
    def do_llegar(self,arg):
        'Controla la llegada de un usuario. USO: llega <DNI> <CodigoBicicleta> <CodigoEstacion> <TiempoEmpleado>'
        self.miSistema.CiclistaLlega(*parse(arg))

    def do_utilizacion_bicicleta(self, arg):
        'Permite utilizar una bicicleta. USO: utilizacion_bicicleta <DNI> <CodigoBicicleta> <TiempoEmpleado>'
        self.miSistema.UtilizarBicicleta(*parse(arg))

    def do_recibir_pago(self,arg):
        'Recibir el pago en una entidad bancaria. USO: recibir_pago <DNI> <Entidad>'
        self.miSistema.RecibirPago(*parse(arg))

    def do_analizar_estadisticamente(self,arg):
        'Hacer un analisis de las bicicletas y de su necesidad de reubicacion. USO: analizar_estadisticamente'
        self.miSistema.AnalizarEstadisticamente()

    def do_adios(self,arg):
        'Cerrar el modulo central y salir. USO: adios'
        print('Gracias por usar el modulo central')
        return True

def parse(arg):
    'Convert a series of zero or more strings to an argument tuple'
    return tuple(arg.split())
