import inspect
import numpy as np


class Uno:
    def __init__(self):
        self.att1 = 1

    def uno(self):
        return self.att1


def f(args):
    if inspect.ismodule(args):
        print("Es un módulo")
    elif inspect.isclass(args):
        print("Es una clase")
        print("Jerarquía de clases:", inspect.getmro(args))
    elif isinstance(args, object):
        print("Es una instancia de la clase:", args.__class__.__name__)
        print("Jerarquía de clases:", inspect.getmro(args.__class__))
    elif inspect.ismethod(args):
        print("Es un método")
    elif inspect.isfunction(args):
        print("Es una función")
        print("Firma de la función:", inspect.signature(args))
    else:
        print("Tipo no identificado")


# Ejemplos de uso
class_uno = Uno()  # Instancia de la clase Uno
method_uno = Uno.uno  # Referencia al método de la clase Uno
f(class_uno)  # Debería identificarlo como una instancia de la clase
f(Uno)  # Debería identificarlo como una clase y mostrar la jerarquía
f(method_uno)  # Debería identificarlo como un método
f(np.array)  # Debería identificarlo como una función y mostrar su firma
f(np)  # Debería identificarlo como un módulo
