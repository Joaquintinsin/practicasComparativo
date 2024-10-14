#include <stdio.h>
#include <stdlib.h>
#include <limits.h>

void fill_matrix(int p, int q, int m[p][q]);
void mostrar_matriz(int p, int q, int m[p][q]);
void pos_max(int p, int q, int m[p][q], int *row, int *col);

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
    
    int row_max_elem;
    int col_max_elem;
    pos_max(p, q, matrix, &row_max_elem, &col_max_elem);
    
    printf("Fila del mayor numero: %d \n", row_max_elem);
    printf("Columna del mayor numero: %d \n", col_max_elem);
    printf("El mayor elemento de la matriz: %d \n", matrix[row_max_elem][col_max_elem]);

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

void pos_max(int p, int q, int m[p][q], int *row, int *col){
    int max_elem = INT_MIN;
    *row = 0;
    *col = 0;
    for(int i = 0; i < p; i++) {
        for(int j = 0; j < q; j++) {
            if (m[i][j] > max_elem) {
                *row = i;
                *col = j;
                max_elem = m[i][j];
            }
        }
    }
}
