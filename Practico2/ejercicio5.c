#include <stdio.h>

typedef int A;
typedef A B;
typedef int C;

int main(int argc, char **argv)
{
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

    return 0;
}
