# Aritmética

A notável simplicidade do [[Lambda Calculus#Lambda Calculus|cálculo λ]], fundamentado em apenas três termos - variáveis, abstração e aplicação - confere-lhe uma elegância teórica singular. No entanto, isto impõe uma consequência direta: a ausência de tipos de dados primitivos, como números, [[Lambda Calculus#Lógica Booleana|booleanos]] e estrutura de dados. Neste sistema, tudo é uma função. Portanto, qualquer dado ou operador deve ser codificado como uma função de alta ordem. Esta necessidade é o cerne da codificação de Church. 

## Números Naturais

A codificação de Church é uma maneira de representar números naturais usando funções. No cálculo λ, os números naturais são representados como funções que operam sobre outras funções.

### Zero

O número natural **Zero** representa a não aplicação de uma função `s` a um argumento `z`. Em notação λ, isso é expresso como:

> 0 = λsz.z

### Função Sucessor

A função de **Sucessor** define o sucessor de um número natural. Para entender `SN`, observe que (nsz) resulta na aplicaçãoo de `s` em `z`, `n` vezes. Com ainda uma aplicação adicional de `s`, ou seja `s(nsz)` resulta na aplicação de `s` `n+1` vezes em `z`. que é precisamente a definição do numeral `n+1`. Em notação λ, o sucessor é definido como:

> S = λnsz.s(nsz)
 
A partir dessas duas funções é possível definir todos os números naturais. 1 $\equiv$ S0, 2 $\equiv$ S1, 3 $\equiv$ S2, e assim por diante.

> [!analysis]- Desenvolvimento
> 
> 
> $$
> \Huge
> \begin{aligned}
> 1 &\equiv S0 \\
>   &\equiv (\lambda wyx.y(wyx))(\lambda sz.z) \\
>   &\equiv \lambda yx.y(wyx) [w := \lambda sz.z] \\
>   &\equiv \lambda yx.y((\lambda sz.z)(yx)) \\
>   &\equiv \lambda yx.y(x) \\
>   &\equiv_\alpha \lambda sz.s(z)
> \end{aligned}
> $$

### Função Z
O termo-λ Z, ou **função Z**, retorna verdadeiro quando aplicada ao número zero e falso para todos os outros números naturais. Essa função é definida como: 

> Z = λx.xF¬F

### Função Antecessor

Para definir a função de **Antecessor** será necessário usar as definições das funções: [[Lambda Programming#Pair|Par]] e [[Lambda Programming#Next|Next]]. A função antecessor é definida como:

> P = λn.nNEXT(λz.z00)F

> [!analysis]+ 
> P0 = λn.nNEXT(λz.z00)F0
>    = 0NEXT(λz.z00)F 
>    = (λz.z00)F
>    = F00
>    = 0
>
>    
> PN = λn.nNEXT(λz.z00)FN
>    = NNEXT(λz.z00)F         
>    = λz.z(N, N - 1)F
>    = F(N, N - 1)
>    = N - 1
>
> **Interpretação**:
> A função NEXT aplicada N vezes ao par (0, 0) resulta no par (N, N - 1). A função P aplica a função NEXT ao número N, retornando
 >primeiro elemento do par, que é o antecessor de N.)


```tabs

tab: Greater or Equal
### Greater or Equal Then

O termo λ que define a relação "x é maior ou igual a y" retorna verdadeiro se x é maior ou igual a y, e falso caso contrário. A definição é:

> GE = λxy.Z(xPy)
tab: Less or Equal
### Less or Equal Then
O termo λ que define a relação "x é menor ou igual a y" retorna verdadeiro se x é menor ou igual a y, e falso caso contrário. A definição é:

> LE = λxy.Z(yPx)
tab: Equal
### Equal
O termo λ que define a relação "x é igual a y" retorna verdadeiro se x é igual a y, e falso caso contrário. A definição é:

> E = λxy.AND(Z(xPy))(Z(yPx))
>   = λxy.AND(GExy)(LExy)

Isto é, x é igual a y se e somente se x é maior ou igual a y e x é menor ou igual a y.
```

```tabs

tab: Adição
## Adição

A adição de dois números naturais, pode ser representada pelo seguinte termo λ:

> add  = λxy.xSy

Onde **S** corresponde a função de [[Aritmetica#Sucessor|sucessor]].
tab: Multiplicação
## Multiplicação

A multiplicação de dois números naturais pode ser representada pelo seguinte termo λ:

> mul = λxyz.x(yz)

Aqui, a função `y` é aplicada `x` vezes ao argumento `z`, o que resulta na multiplicação de `x` por `y`.

> [!analysis]-
> 
> mul23 = λxyz.x(yz)23
>       = λz.2(3z)
>       = λz.(λsy.s(sy))(3z)
>       = λz.(λy.(3z(3zy)))
>       = λz.(λy.z(z(z(3zy))))
>       = λzy.z(z(z(z(z(z(z(y)))))))
>       = 6
tab: Subtração
## Subtração

A subtração pode ser definida como a aplicação repetida da função de predecessor:

> sub: λxy.yPx

Onde **P** é a função de [[Aritmetica#Antecessor|antecessor]]. Subtrai 1 de `x`, `y` vezes.
tab: Divisão
## Divisão

A definição da divisão usa o conceito de recursão, através do [[Programacao_Lambda#Y Combinator|Y combinator]], além da função LE (Less or Equal Then):

> div = Y(λfmn.(LE n m)(S(f(sub m n)n))0)

> [!analysis]-
> div 6 2 = (λfmn.(LE n m)(S(f(sub m n)n))0)6 2
>         = (LE 2 6)(S(div(sub 6 2)2))0
>         = T(S(div(4)2))0
>         = S(div 4 2)
>         = S((LE 2 4)(S(div(sub 4 2)2))0)
>         = S(S((LE 2 4)(S(div 2 2))0))
>         = S(S(S(LE 2 0)(S(div(sub 2 2)2))0)))
>         = S(S(S(0)))
>         = 3
```
