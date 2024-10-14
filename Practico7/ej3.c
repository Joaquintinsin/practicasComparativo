// 3. Leer por teclado un número entero largo e indicar si el número leído es o no
// capicúa. Para ello debe utilizarse un array unidimensional para almacenar cada
// una de las cifras del número leído. Se deben implementar dos funciones, una
// para descomponer el número en cifras y cargar el array, y otra para comparar
// las posiciones del array y determinar si el número es capicúa.


#include <stdio.h>

void descomponer(long x, int res[], int *sizeArr);
int checking(int arr[], int sizeArr);

int main(int argc, char **argv)
{
    long n;
    printf("Ingresar un numero long: ");
    scanf("%ld", &n);
    n = (n < 0) ? -n : n;
    int individuals[250];
    int sizeArr = 0;    // Para saber hasta que posicion del arreglo esta cargada (no tengo que usar los 250 lugares)
    descomponer(n, individuals, &sizeArr);
    if (checking(individuals, sizeArr)) {
        printf("Es capicua \n");
    } else {
        printf("No es capicua \n");
    }

    return 0;
}

void descomponer(long x, int res[], int *sizeArr) {
    int i = 0;
    while (x > 0) {
        res[i] = x % 10;
        x = x / 10;
        i++;
    }
    *sizeArr = i;
}

int checking(int arr[], int sizeArr) {
    for (int i = 0; i < sizeArr / 2; i++) {
        if (arr[i] != arr[sizeArr - i - 1]) {
            printf("arr[i] != arr[sizeArr - i - 1] \n");
            printf("arr[%d]: %d \n", i, arr[i]);
            printf("arr[%d]: %d \n", sizeArr - i - 1, arr[sizeArr - i - 1]);
            return 0;
        }
    }
    return 1;
}
