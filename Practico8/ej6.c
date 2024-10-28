#include <stdio.h>
#include <stdlib.h>

typedef struct Tnodo {
    int info;
    struct Tnodo *next;
} Tnodo;

int main(int argc, char **argv) {
    Tnodo *x = malloc(sizeof(Tnodo));
    Tnodo *y = x;
    free(x);
    printf("Valor de y: %d \n", y);

    return 0;
}
