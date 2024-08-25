#include <stdio.h>

int f(int x);
long g(long x);
float h(float x);

int main(int argc, char **argv)
{
    int x = 10;
    long y = 5;
    float z = 2.5;

    printf("x = %d \n", x);
    printf("y = %ld \n", y);
    printf("z = %f \n", z);
    
    printf("f(x) = %d \n", f(x));
    printf("g(y) = %ld \n", g(y));
    printf("h(z) = %f \n", h(z));

    return 0;
}

int f(int x)
{
    return x + x;
}

long g(long x)
{
    return x + x;
}

float h(float x)
{
    return x + x;
}