#include <stdio.h>

int main(){
    int n[ 10 ]; 
    int i; 

    for ( i = 0; i < 10; i++ ) {
        *(n + i) = 0; 
    }

    printf( "Elemento Valor\n" );
    /* muestra el contenido del arreglo n en forma tabular */
    for ( i = 0; i < 10; i++ ) {
        printf( "%5d%13d\n", i, *(n + i) );
    }
    return 0;
}