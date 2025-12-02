#include <stdio.h>

void hanoi(int, int, int, int);
int cont = 0;

int main(){
    hanoi(20, 1, 2, 3);
    printf("Movimientos: %d\n", cont);
    return 0;
}

void hanoi(int n,int com, int aux, int fin){
    if(n==1){
        printf("%d -> %d\n",com,fin);
        cont++;
        //printf("%d\n", cont);
    }
    else{
        cont++;
        //printf("%d\n", cont);
        hanoi(n-1,com,fin,aux);
        printf("%d -> %d\n",com,fin);
        hanoi(n-1,aux,com,fin);
    }
}