class Generic:
    def __init__(self):
        self.items = []

    def register(self, item):
        self.items.append(item)

    def handle_error(self, item):
        if item not in self.items:
            raise Exception("Exception: Item not in class")

    def use(self, item):
        try:
            self.handle_error(item)
            for e in self.items:
                if e is item:
                    return f"Returning item asked: {item}"
        except Exception as msg:
            return f"{msg}"


microkernel = Generic()
microkernel.register("suma")
microkernel.register("resta")
microkernel.register("multiplicacion")
print(microkernel.use("suma"))
print(microkernel.use("resta"))
print(microkernel.use("multiplicacion"))
print(microkernel.use("division"))
