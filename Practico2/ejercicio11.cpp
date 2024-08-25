#include <iostream>

using namespace std;

void ThrowingExceptionFunction()
{
    throw invalid_argument("Thowing an exception here!");
    // throw "Thowing an exception here!";
}

void DivZero(int a, int b)
{
    a / b;
}

int main()
{
    try {
        ThrowingExceptionFunction();
        DivZero(1, 0);
    } catch (invalid_argument& e) {
        printf("An exception was captured! \n");
    }
    return 0;
}