#include <stdio.h>

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

    return 0;
}
