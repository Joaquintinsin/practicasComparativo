#include <stdio.h>
#include <stdlib.h>

void fill_matrix(int p, int q, int m[p][q]);
void mostrar_matriz(int p, int q, int m[p][q]);
void fill_array(int p, int q, int m[p][q], int A[p]);
void mostrar_array(int p, int a[p]);

int main(int argc, char **argv)
{
    int p, q;
    printf("p valor: ");
    scanf("%d", &p);
    printf("q valor: ");
    scanf("%d", &q);

    int matrix[p][q];
    fill_matrix(p, q, matrix);
    mostrar_matriz(p, q, matrix);
    
    int arrayA[p];
    fill_array(p, q, matrix, arrayA);
    mostrar_array(p, arrayA);

    return 0;
}

void fill_matrix(int p, int q, int m[p][q]){
    int min_num_random = 0;
    int max_num_random = 50;
    for (int i = 0; i < p; i++) {
        for (int j = 0; j < q; j++) {
            m[i][j] = rand() % (max_num_random - min_num_random + 1) + min_num_random;
        }
    }
}

void mostrar_matriz(int p, int q, int m[p][q]){
    for (int i = 0; i < p; i++) {
        for (int j = 0; j < q; j++) {
            printf("Matriz[%d][%d]: %d \n", i, j, m[i][j]);
        }
    }
}

void fill_array(int p, int q, int m[p][q], int A[p]){
    for (int i = 0; i < p; i++) {
        int res_suma = 0;
        for (int j = 0; j < q; j++) {
            res_suma += *(*(m + i) + j); // m[i][j];
        }
        *(A + i) = res_suma; // A[i] = res_suma;
    }
}

void mostrar_array(int p, int a[p]){
    for (int i = 0; i < p; i++) {
        printf("Array[%d]: %d \n", i, a[i]);
    }
}
