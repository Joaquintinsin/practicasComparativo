// 1. Leer un carácter y dos números enteros. Si el carácter leído es un operador
// aritmético calcular la operación correspondiente, si es cualquier otro mostrar
// error. Hacer el programa utilizando la instrucción switch().

#include <stdio.h>

int main(int argc, char **argv)
{
    char c;
    printf("Ingresar caracter: ");
    scanf("%c", &c);
    int n1, n2;
    printf("Ingresar numero 1: ");
    scanf("%d", &n1);
    printf("Ingresar numero 2: ");
    scanf("%d", &n2);

    float res;
    switch(c){
    case '+':
        res = n1 + n2;
        printf("Resultado: %f \n", res);
        break;
    case '-':
        res = n1 - n2;
        printf("Resultado: %f \n", res);
        break;
    case '*':
        res = n1 * n2;
        printf("Resultado: %f \n", res);
        break;
    case '/':
        if (n2 == 0) {
            printf("Infinito \n");
        } else {
            res = n1 / n2;
            printf("Resultado: %f \n", res);
        }
        break;
    default:
        printf("Error: caracter invalido \n");
        break;
    }

    return 0;
}
