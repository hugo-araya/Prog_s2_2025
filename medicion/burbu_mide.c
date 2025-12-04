#include <stdio.h>
#include<stdlib.h>
#include<time.h>
#define LIMITE 200000

void muestra(int []);
void lee_datos(int *array, int n);

int main(){
    int i, j, temp, k, v, cont = 0, cont1 = 0;
    int vector[LIMITE];
    //int vector[LIMITE] = {9, 8, 7, 6, 5, 4, 3, 2, 1, 0};
    //int vector[LIMITE] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
    //int vector[LIMITE] = {5, 6, 0, 3, 8, 2, 9, 1, 4, 7};
    //muestra(vector);
    lee_datos(vector, LIMITE);

    time_t t_1,t_2;
    //Ordenamiento
    t_1=time(NULL);

    for(i = 0; i < LIMITE; i++) {
        for(j = 0; j < i; j++) {
            cont++;
            if(vector[i] < vector[j]) {
                cont1++;
                temp = vector[j];
                vector[j] = vector[i];
                vector[i] = temp;
            }
        }
    }
    //Fin ordenamiento

    t_2=time(NULL);

    printf("\n\nEstadistica del programa: Ordenamiento .... ");   
    printf("\n\nTiempo 1 = %ld",t_1);
    printf("\n\nTiempo 2 = %ld",t_2);
    printf("\n\nTiempo Total = %lf\n",difftime(t_2, t_1));
    //muestra(vector);

    return 0;
}

void muestra(int vector[]){
    printf("\nVector \n");
    for (int i = 0; i < LIMITE; i++){
        printf("%d\n", vector[i]);
    }
    printf("\n");
}

void lee_datos(int *array, int n){
    int i;
    int dato;
    for (i = 0; i < n; i++){
        scanf("%d", &dato);
        array[i] = dato;
    }
}