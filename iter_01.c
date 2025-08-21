#include<stdio.h>
#include<stdlib.h>

#define MAXI 100000

void inicializar(int *, int);

int proceso(int *, int, int);
void mostrar(int *, int);

int main(int argc, char *argv[]){
    int v[MAXI], pos, ini, fin;
    ini = atoi(argv[1]);
    fin = atoi(argv[2]);
    inicializar(v, MAXI);
    pos = proceso(v, ini, fin);
    mostrar(v, pos);
    return 0;
}

void inicializar(int *n, int max){
    int i;
    for (i = 0; i < max; i++){
        n[i] = 0;
    }
}

void mostrar(int *n, int max){
    int i;
    for (i = 0; i < max; i++){
        printf("%d : %d\n",i, *n);
        n++;
    }
}

int proceso(int *n, int ini, int fin){
    int pos = 0, candidato, divi, estado;
    for (candidato = 2; candidato < fin; candidato++){
        estado = 0;
        for (divi = 2; divi < candidato; divi++){
            if (candidato % divi == 0){
                estado = 1;
            }
        }
        if (estado == 0){
            n[pos] = candidato;
            pos++;
        }
    }
    return pos;
}