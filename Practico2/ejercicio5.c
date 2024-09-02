#include <stdio.h>

typedef int A;
typedef A B;
typedef int C;

struct D
{
    int dx;
};

struct E
{
    int ex;
};

int main(int argc, char **argv)
{
    // Reviso equivalencia de tipos para tipos basicos
    int resBool;
    int x = 0;
    int y = 0;
    A a = 0;
    B b = 0;
    C c = 0;

    resBool = x == y;
    printf("x == y = %d \n", resBool);
    resBool = a == c;
    printf("a == c = %d \n", resBool);
    resBool = b == x;
    printf("b == x = %d \n", resBool);
    // Tiene equivalencia estructural para tipos basicos

    // Reviso equivalencia de tipos para tipos estructurales
    struct D varTypeD = { 20 };
    struct E varTypeE = { 20 };
    x = varTypeD.dx + varTypeE.ex;  // No pasa de este punto de ejecucion
    printf("Valor de varTypeD.ex + varTypeE.ex = %d \n", x);
    varTypeD = varTypeE;
    printf("varTypeD.dx = %d \n", varTypeD.dx);
    // Tiene equivalencia por nombre para tipos estructurales

    return 0;
}
