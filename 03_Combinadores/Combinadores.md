---
videos:
  - https://www.youtube.com/watch?v=gnrSedVucXs
---
# Lógica Combinatória

A lógica combinatória foi introduzida por [Moses Schönfinkel](https://pt.wikipedia.org/wiki/Moses_Sch%C3%B6nfinkel) em 1920. Com o intuito de eliminar a necessidade de variáveis na lógica matemática. 

## Conectivo fundamental de Schönfinkel

O conectivo fundamental de Schönfinkel é uma evolução do conectivo de Scheffer. O conectivo de Scheffer (↑ ou |), conhecido como negação disjunta (NAND), reduziu toda a lógica proposicional booleana a apenas um conectivo. 

> [!analysis] 
> P & Q ≡ (P | Q) | (P | Q)
> P V Q ≡ (P | P) | (Q | Q)
> ~P ≡ P | P

O conectivo de Schönfinkel expandiu ainda mais esse conceito, adicionando um quantificador. Representado por `f(x) |ˣ g(x)`, que pode ser lido da seguinte forma "para todo x, não f(x) e g(x)".

$$
f(x) \space |ˣ \space g(x) \equiv \forall x [\neg f(x) \lor \neg g(x) ] \equiv \neg \forall x [f(x)\space \& \space g(x)] 
$$

> ~A = A |ˣ A 
> A V B = (x)(A V B) = ~A  |ˣ ~B = (A |ˣ A) |ˣ (B |ˣ B)


> [!note] 
> O conectivo fundamental f(x) |ˣ g(x) depende de duas funções f e g, logo pode ser representado na notação de combinadores como: *U*fg


## Cálculo Funcional

Uma função unária, de um argumento, pode ser representada pela justaposição dos símbolos, em notação matemática:
$$
f(x) \equiv f x
$$
Uma função de dois argumentos F(x, y) pode ser reduzida a duas funções de unárias, tal que: Gx(y) = F(x, y).
$$
F(x, y) \equiv Gx (y) \equiv (Gx) y \equiv fxy
$$

## Combinadores de Schönfinkel

```tabs

tab: *I*
> Função Identidade: *I* (Identitätsfunktion)

O combinador *I* é a identidade, uma função que retorna o próprio argumento.

> **I** x = x
tab: *K*
> Função Constância: *K* (Konstanzfunktion)

O combinador K é uma função que retorna o primeiro argumento, ignorando o segundo.

> **K** xy = x
tab: *S*
> Função de Fusão: *S* (Verschmelzungsfunktion)

O combinador S é uma função que recebe três argumentos e aplica o primeiro argumento ao terceiro e o segundo argumento ao terceiro.

> **S** xyz = xz(yz)

tab: *C*
> Função de Intercâmbio: *T* ou *C* (Vertaushungsfunktion)

O combinador T é uma função que inverte a ordem usual de aplicação dos dois últimos argumentos.

> **T** fxy  = fyx
tab: *B*
> Função de Composição: *Z* ou *B* (Zusammeensetzungsfunktion)

O combinador Z é uma função que recebe duas funções e aplica a primeira ao resultado da segunda, exatamente como a função de composição (f ∘ g)(x)

> **Z** fgx = f(gx)
tab: *M*
> Função de Duplicação: *M* (Duplizierungsfunktion)

O combinador M é uma função que duplica o argumento.

> **M** x = xx
tab: *U*
> Conectivo Fundamental de Schönfinkel: *U*

O combinador U é o conectivo fundamental de Schönfinkel, que reduz a lógica proposicional booleana a apenas um conectivo.

> **U** fg = (x)(f(x) |ˣ g(x))
```
### Termos

Um termo combinatório possui uma das seguintes formas:

1. `x`: variável
2. `P`: uma função primitiva (combinador)
3. (`E1 E2`): aplicação de um termo `E1` a um termo `E2` 

A aplicação de um combinador segue o **lazy evaluation**. Isso significa que a avaliação de uma expressão só ocorre quando necessário, portanto aplica-se o primeiro termo e ignora-se o restante, isso até que o resultado seja necessário. 

$$
KIxy = Iy = y
$$
## Base SK 

A completude da base SK determina que os combinadores *S* e *K* podem ser compostos para produzir qualquer outro combinador.

