
# Programando em Cálculo λ

## Pair

Um par é a estrutura de dados mais simples que pode agrupar dois valores distintos. No cálculo λ, um par é representado como uma função que aceita dois argumentos e retorna uma função que pode acessar esses argumentos. A definição de um par é:

> p = λf.fxy
## First

A função `fst` (first) retorna o primeiro elemento de um par. Ela é definida como:

> FST $\equiv$ (λxyf.fxy)abT $\equiv$ Tab $\equiv$ a 

## Second

Analógicamente, a função `snd` (second) retorna o segundo elemento de um par. Ela é definida como:

> SND $\equiv$ (λxyf.fxy)abF $\equiv$ Tab $\equiv$ b

## Next

A ideia da função `next` é usar o conceito de par em movimento. De tal forma que o par (n, m) se torna (n + 1, n) após a aplicação da função. A definição de `next` é:

> NEXT = λpz.z(S(FST p))(FST p)

# Recursão

A recursão, por definição, é a construção de uma função em termos de si própria. O cálculo λ não permite a recursão de forma direta, visto que todas as funções são anônimas. No entanto, há uma forma de contornar essa situação.

## Y Combinator

O **Y combinator** é uma construção que permite a definição de funções recursivas no cálculo λ. De forma que Y(G) = G(Y(G)). A definição do Y combinator é:

> Y = λf.(λx.f (x x))(λx.f (x x)))

>[!analysis] Fatorial

