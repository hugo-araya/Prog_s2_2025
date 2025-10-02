#include <stdio.h>
struct ejemplo{
    char carac;
    int entero;
};

int main(){
    struct ejemplo e1, a[10];
    a[0].carac = 'A';
    a[0].entero = 65;
    printf("a[0].carac = %c\na[0].entero = %d\n", a[0].carac, a[0].entero);
    return 0;
}