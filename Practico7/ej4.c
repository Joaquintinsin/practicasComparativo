#include <stdio.h>
#include <math.h>

#define TOLERANCE 0.00001  // Tolerancia para el valor de la raíz
#define MAX_ITER 1000      // Número máximo de iteraciones

// Definición de la función para la cual queremos encontrar la raíz
double f(double x) {
    return x * x * x - x - 2;  // Ejemplo: f(x) = x^3 - x - 2
}

// Función para realizar el método de la bisección
void biseccion(double a, double b) {
    if (f(a) * f(b) >= 0) {
        printf("La función no cambia de signo en el intervalo [%lf, %lf]\n", a, b);
        return;
    }

    double c;
    int iter = 0;

    // Repetir hasta que la tolerancia se cumpla o hasta alcanzar el máximo de iteraciones
    while ((b - a) >= TOLERANCE && iter < MAX_ITER) {
        // Encontrar el punto medio
        c = (a + b) / 2;

        // Verificar si el valor en el punto medio es cercano a cero (es decir, si es la raíz)
        if (fabs(f(c)) <= TOLERANCE) {
            break;
        }

        // Decidir qué lado del intervalo continuar
        if (f(c) * f(a) < 0) {
            b = c;  // La raíz está en el intervalo [a, c]
        } else {
            a = c;  // La raíz está en el intervalo [c, b]
        }

        iter++;
    }

    printf("La raíz aproximada es: %lf\n", c);
    printf("Número de iteraciones: %d\n", iter);
}

int main() {
    double a, b;

    // Leer el intervalo inicial
    printf("Ingrese el valor de a: ");
    scanf("%lf", &a);
    printf("Ingrese el valor de b: ");
    scanf("%lf", &b);

    // Llamar al método de la bisección
    biseccion(a, b);

    return 0;
}
