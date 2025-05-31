# Lambda Calculus

O cálculo lambda foi inventado por Alonzo Church na década de 1930 como uma forma de formalizar a noção de computação. Ele é um modelo equivalente ao proposto por [[../AppendixA_AsDuasCulturas/Turing|Turing]]. Isso significa que qualquer modelo computável em uma máquina de Turing pode ser expressa em cálculo-λ e vice-versa.

## Termos λ

O cálculo λ é composto por três termos fundamentais:

>  
> 1. **Variáveis**: x, y, z.
> 2. **Abstração**: λx.M, onde M é um termo λ.
> 3. **Aplicação**: M N onde M e N são termos λ, dizemos que N é aplicado em M. 

## Variáveis 

As variáveis em cálculo λ são representadas por letras minúsculas. Elas podem estar em dois estados: livres e atadas (bound). A abstração λx.M ata a variável x ao termo M. 

> Em: λx.xy, x é atado enquanto y é livre. 

## Abstração

A abstração é o mecanismo pelo qual funções são definidas em cálculo λ. A expressão λx.M representa uma função que toma um argumento x e retorna o termo M.

Funções com múltiplos parâmetros são representadas por encadeamento de abstrações. Por exemplo, λxy.M pode ser representado como λx.(λy.M). Isso é possível pela técnica de **currying**, que transforma uma função de múltiplos parâmetros em uma sequência de funções de um único parâmetro. Por isso, todas as funções do cálculo λ são __unárias__. 

Essa abordagem não é meramente uma convenção sintática; ela tem implicações profundas. A representação currificada demonstra como as funções podem ser tratadas como "cidadãos de primeira classe" e como a aplicação parcial de argumentos se torna uma consequência natural do sistema.

## Aplicação

A aplicação é o processo de passar um argumento para uma função. Em cálculo λ, a aplicação é representada pela concatenação de termos. Por exemplo, na expressão (λx.M) N, o termo N é aplicado à função λx.M.

A aplicação é associativa à esquerda, o que significa que M N P é interpretado como ((M N) P). Isso é importante para evitar ambiguidades na avaliação de expressões.

## Substituição

A substituição pode ser definida pelas cinco regras a seguir:

> 1. x[x:=N] = N
> 2. y[x:=N] = y
> 3. (M N)[x:=N] = (M[x:=N] N[x:=N])
> 4. (λy.M)[x:=N] = M[x:=N] -> x não é atado em M.
> 5. (λx.M)[x:=N] = λx.M -> x é atado em M, por isso é restrito.

## Axiomas de Redução

### Alfa-Conversão 

A conversão-α é o processo de substituição em variáveis ligadas dentro de uma expressão λ. De forma que o significado da expressão original não é alterada. Isso é útil para evitar conflitos de nomes e garantir que as variáveis ligadas não interfiram nas variáveis livres.

> $\lambda x. (x y)[x:=z] \equiv_\alpha \lambda z. (z y)$

### Beta-Redução

A redução β é o processo de aplicar uma função a um argumento. Isso envolve substituir a variável ligada na função pelo argumento fornecido. A beta-redução é o coração do cálculo λ, pois permite a execução de funções.

> $(\lambda x. M) N \equiv_\beta M[x:=N]$

O cálculo λ emprega a Avaliação Não-Estrita (ou **lazy evaluation**), o que significa que os argumentos não são avaliados até que sejam realmente necessários. 

### Eta-Redução

A redução η é uma forma de simplificação que se aplica a funções. Ela afirma que uma função que simplesmente aplica outra função a um argumento pode ser reduzida à própria função.

> $\lambda x. (M x) \equiv_\eta M$

# Lógica Booleana

Sendo um sistema lógico, o cálculo λ possui apenas dois termos primitivos: o lambda (λ) e o ponto (.). Os [[Lambda Calculus#Termos λ|axiomas de construção]] permitem a definição de termos mais complexos a partir destes dois termos primitivos.  

>[!analysis]+
>
> #### Verdadeiro e Falso
> 
> Os valores lógicos booleanos podem ser representados pelos seguintes termos λ:
> 
> T = λxy.x
> F = λxy.y


> Obs: Veja que o combinador T é igual ao combinador [[../03_Combinadores/Combinadores#Combinadores de Schönfinkel|K]] e o combinador F é igual ao combinador [[../03_Combinadores/Combinadores#Combinadores de Schönfinkel|K*]].

## if-then-else

A construção condicional if-then-else pode ser expressa em cálculo λ usando os valores booleanos T e F. A expressão if-then-else pode ser definida como:

> If = λpab.pab
> 
> (If)Tab = a
> (If)Fab = b

## Operadores lógicos

1. Conjunção (AND):  λxy.xyx 
2. Disjunção (OR):   λxy.xxy
3. Negação (NOT):    λx.xFT


