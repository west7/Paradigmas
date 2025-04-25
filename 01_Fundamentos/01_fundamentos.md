# Fundamentos

## Lógica Proposicional Booleana

> **Termos Primitivos**
> 1. proposições
> 2. verdadeiro
> 3. falso

> **Axiomas**
> - Princípio do Terceiro-Excluído: uma proposição é verdadeira ou é falsa
> - Princípio da Não-Contradição: uma proposição não pode ser, ao mesmo tempo, verdadeira e falsa

### Operadores lógicos

1. Conjunção: *p & q* (AND)
2. Disjunção: p V q (OR)
3. Disjunção Exclusiva: p ⊻ q (XOR)
4. Condicional: p -> q
5. Bicondicional: p <-> q
6. Negação: ¬q (NOT)

## Teoria dos Conjuntos

> **Termos primitivos**
> 1. elemento
> 2. conjunto

> **Axioma**
> Se *a* é um elemento e *A* é um conjunto, então *a* ∈ *A* é uma proposição

> **Subconjuntos**
> Se *A* é um conjunto, *B* é subconjunto de *A*, somente se, para qualquer *b* ∈ *B*, b ∈ A. *B ⊂ A*.

## Funções

> **Produto Cartesiano**
> Sejam A e B dois conjuntos. O produto cartesiano A X B é conjunto de todos os pares (a, b). 
> 
> Ex: A = {1, 2, 3} e B = {a, b} 
> 	A X B = {(1, a), (1, b), (2, a), (2, b), (3, a), (3, b)}

> **Relações**
> Uma relação R de A em B é um subconjunto de A X B. R ⊂ A X B.

> **Função**
> Uma função f de A em B é uma relação, tal que, para qualquer a ∈ A existe um único b ∈ B que completa o par (a, b) ∈ f.
> f: A -> B

### Domínio, Contradomínio e Imagem

Seja f: A -> B. O conjunto A é o **domínio** o conjunto B é o **contradomínio** e a **imagem** são os elementos B que estão mapeados em f por a, da forma f(a) = b. Logo, a imagem de f pode ser representada por f(A).

$$
Img(f) = \{b \in B | \exists a \in A \space\text{tal que} f(a) = b \}
$$
O gráfico de uma função é conjunto de pares ordenados (a, f(a)):

$$
Gr(f) = \{(x, f(x)) \space|\space x \in A\}
$$

### Funções injetoras, sobrejetoras e bijetoras

f: A -> B
1. f é ==injetora== se f(x) = f(y) implica x = y, $\forall$ x,y ∈ A. Ou seja, para um elemento de f(A), existe apenas um a ∈ A que mapeia para um elemento em f(A).
2. f é ==sobrejetora== se Imagem = f(A) = B. Ou seja, todos os elementos do contradomínio pertencem a imagem.
3. f é ==bijetora== se é injetora e sobrejetora.
