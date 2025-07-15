# Conceitos
## Enumerabilidade

Um conjunto A é dito **enumerável**, se e somente se, ele é imagem de uma função (total ou [[../01_Fundamentos/Fundamentos#Funções total e parcial|parcial]]) de ℕ (naturais) em A. Ou seja, existe uma função f: ℕ → A que lista os elementos de A em ordem: {a1, a2, a3,...}.
De modo que todos os elementos de A serão listados, cedo ou tarde.

>[!important] Exemplo
> O conjunto dos naturais pares pode ser enumerado pela função total:
> 
> > f: ℕ → ℕ, onde f(n) = 2n.
>
> Ou pela parcial:
>
> > f: ℕ → ℕ, onde f(n) = { n, se n é par; indefinida, caso contrário}


## Teorema Fundamental da Aritmética

Todo número natural n > 1 pode ser escrito como um produto de fatores primos de forma única, exceto pela ordem dos fatores. Ou seja, existem números primos p1, p2, ..., pk tais que:

$$
\Huge n = p_1^{e_1} \cdot p_2^{e_2} \cdots p_k^{e_k}
$$
## Computabilidade

Uma função *f* é dita **efetivamente computável** se existe uma sequência de instruções (que não exijam informações externas nem engenhosidade para sua execução) que, em príncipio, permitam calcular *f(n)* para qualquer *n*.

