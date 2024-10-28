class D:
    def m(self):
        print("m de D")


class A(D):
    def m(self):
        print("m de A")


class B(D):
    def m(self):
        print("m de B")


class C(A, B):
    pass


ob = C()
ob.m()
