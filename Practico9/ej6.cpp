#include <iostream>
#include <string>

using namespace std;

class D
{
public:
    virtual void m() { cout << "m de D" << endl; }
};

class A : public virtual D
{
public:
    void m() override { cout << "m de A" << endl; }
};

class B : public virtual D
{
public:
    void m() override { cout << "m de B" << endl; }
};

class C : public A, public B
{
public:
    void m() override { A::m(); }   // Ponemos que llame al m() de A pq sino no compila directamente
};

int main()
{
    C ob;
    ob.m();
    return 0;
}
