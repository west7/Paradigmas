# Máquinas de Lambek (Ábacos)

Dada a natureza limitante das Máquinas de Turing — que operam apenas com inteiros positivos (excluindo o zero), não possuem acesso aleatório à memória e utilizam o sistema monádico em vez do predominante sistema binário — os ábacos se mostram uma alternativa bem mais viável, por incluírem essas características

>[!box] Definição
>Uma máquina de Lambek ou máquina de ábaco é uma versão idealizada de computador, e podem ser descritos pelas seguintes características:
> 1. Acesso a um número ilimitado de registradores R0, R1, ..., Rn
> 2. Cada registrador armazena um número natural de tamanho arbitrário
> 3. Cada registrador possui um endereço de forma que é possível se mover de Ri para Rj diretamente, sem a necessidade de passar por registradores intermediários

A notação [m] indica o valor que está armazenado em Rm. A instrução "Coloque a soma dos valores armazenados em Rm e Rn em Rp" pode ser escrita como: 

 [m] + [n] -> p

## Programas em ML

Um programa em Máquina de Lambek pode ser representado por uma lista de instruções numeradas, as quais certamente são de uma das duas formas:

> [!list] Lista
>(q) adicione '1' ao registrador *m* e vá para a instrução *r*
> 
>  ou
>
>(q) se o registrador *m* não está vazio; subtraia '1' de *m* e vá para *s*
>    se o registrador *m* está vazio;     então vá para *s*

