#include <stdio.h>
#define MAXIMO 10

int busqueda_binaria(int [], int, int);

int main() {
    int buscado, n;
    n = MAXIMO;
    int arr[MAXIMO] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};

    printf("Ingrese el numero a buscar: ");
    scanf("%d", &buscado);

    int resultado = busqueda_binaria(arr, n, buscado);

    if (resultado != -1)
        printf("Elemento encontrado en la posicion %d\n", resultado);
    else
        printf("Elemento NO encontrado en el vector\n");

    return 0;
}

int busqueda_binaria(int arr[], int n, int  buscado) {
    int izquierda = 0;
    int derecha = n - 1;

    while (izquierda <= derecha) {
        //int medio = izquierda + (derecha - izquierda) / 2;
        int medio = (derecha + izquierda) / 2;

        if (arr[medio] == buscado) {
            return medio;  // Encontrado
        }
        else 
            if (arr[medio] < buscado) {
                izquierda = medio + 1; // Buscar en parte derecha
            }
            else {
                derecha = medio - 1; // Buscar en parte izquierda
            }
    }
    return -1; // No encontrado
}
