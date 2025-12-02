#include <stdio.h>

int busqueda_binaria(int arr[], int n, int objetivo) {
    int izquierda = 0;
    int derecha = n - 1;

    while (izquierda <= derecha) {
        int medio = izquierda + (derecha - izquierda) / 2;

        if (arr[medio] == objetivo) {
            return medio;  // Encontrado
        }
        else if (arr[medio] < objetivo) {
            izquierda = medio + 1; // Buscar en parte derecha
        }
        else {
            derecha = medio - 1; // Buscar en parte izquierda
        }
    }

    return -1; // No encontrado
}

int main() {
    int n, objetivo;

    printf("Ingrese el tamaño del vector: ");
    scanf("%d", &n);

    int arr[n];

    printf("Ingrese los elementos del vector (ordenados):\n");
    for (int i = 0; i < n; i++) {
        scanf("%d", &arr[i]);
    }

    printf("Ingrese el numero a buscar: ");
    scanf("%d", &objetivo);

    int resultado = busqueda_binaria(arr, n, objetivo);

    if (resultado != -1)
        printf("Elemento encontrado en la posicion %d\n", resultado);
    else
        printf("Elemento NO encontrado en el vector\n");

    return 0;
}
