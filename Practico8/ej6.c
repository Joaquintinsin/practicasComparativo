#include <stdio.h>

typedef struct Tnodo {
    int info;
    struct Tnodo *next;
} Tnodo;

int main(int argc, char **argv) {
    Tnodo *x = malloc(sizeof(Tnodo));
    Tnodo *y = malloc(sizeof(Tnodo));
    x->next = y;
    y->next = x;
    x = NULL;
    y = NULL;

    return 0;
}
