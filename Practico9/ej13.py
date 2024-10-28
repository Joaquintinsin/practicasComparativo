def algoritmo_generico(args):
    def enteros():
        return 1
    def cadenas():
        return "uno"
    def listas():
        return ['u', 'n', 'o']
    def tuplas():
        return ('u', 'n', 'o')
    print(type(args))
    if isinstance(args, int):
        return enteros()
    if isinstance(args, str):
        return cadenas()
    if isinstance(args, list):
        return listas()
    if isinstance(args, tuple):
        return tuplas()
    return None



var = (1, 2)
x = algoritmo_generico(var)
print(x)

# python ademas de tipado dinamico,
# tiene herencia multiple y dispatching dinamico

