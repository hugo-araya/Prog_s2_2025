#include <stdio.h>
#include <string.h>

int main() {
  char buffer[] = "Hola, mundo!";
  char *ptr;
  int caracter_a_buscar = 'm';
  size_t num_bytes = strlen(buffer);

  ptr = (char *)memchr(buffer, caracter_a_buscar, num_bytes);

  if (ptr != NULL) {
    printf("Se encontró '%c' en la posición: %ld\n", caracter_a_buscar, ptr - buffer);
    printf("Direccion: %p\n", ptr);
    *ptr = 'M';
  } else {
    printf("No se encontró '%c'\n", caracter_a_buscar);
  }
  printf("Texto: %s\n", buffer);
  return 0;
}
