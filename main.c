#include <stdio.h>
#include "libprg/libprg.h"

int main(void) {

   char expressao[15];
   printf ("Escreva a equação em formato NPR: ");
   fgets(expressao, sizeof(expressao), stdin);

   expressao[strcspn(expressao, "\n")] = 0;
   int resultado = npr(expressao);
   printf("O resultado da equação é: %d");
   return 0;
}