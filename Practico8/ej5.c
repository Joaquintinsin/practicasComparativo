#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv)
{
    int x[50];
    int y[50];

    for (int i = 0; i < 100; i++) {
        x[i] = *(y + i);
        y[i] = *(x + i);
    }
    for (int i = 0; i < 100; i++) {
        printf("x[%d] = %d \n", i, x[i]);
        printf("y[%d] = %d \n", i, y[i]);
    }

    int *p;
    int *q;
    int cien = 100;
    p = malloc(sizeof(int));
    q = malloc(sizeof(int));
    p = &cien;
    p = q;
    printf("Valor de p=%p \n", p);
    printf("Valor de q=%p \n", q);

    return 0;
}
