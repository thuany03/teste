#include "libprg/libprg.h"

#include "calculadora.h"

int npr(char* expressao){
    pilha_t* pilha = create_stack();
    char* token = strtok(expressao, " ");

while (token != NULL){
    if (isdigit((token[0])){
    push(pilha, atoi(token));
    } else {
    int a = pop(pilha);
    int b = pop(pilha);
        switch (token[0]){

        case '+':
        push(pilha, a + b);
        break;

        case '-':
        push(pilha, a - b);
        break;

        case '*':
        push(pilha, a * b)
        break;

        case '/':
        push(pilha, a / b)
        break;

        default:
        printf("OPerador inválido: %d\n", token);
        return 1;
        }
    }
}

token = strtok(NULL, " ");

