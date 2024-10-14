// 2. Leer un entero positivo y averiguar si es perfecto. Un número es perfecto cuando
// es igual a la suma de sus divisores excepto él mismo.

#include <stdio.h>

int main(int argc, char **argv)
{
    int n = -1;
    while (n <= 0) {
        printf("Ingresar numero positivo: ");
        scanf("%d", &n);
    }
    int sumaDivisores = 0;
    for (int i = 1 ; i < n ; i++) {
        if (n % i == 0) {
            sumaDivisores += i;
        }
    }
    if (n == sumaDivisores) {
        printf("Es un numero perfecto \n");
    } else {
        printf("No es un numero perfecto \n");
    }

    return 0;
}
