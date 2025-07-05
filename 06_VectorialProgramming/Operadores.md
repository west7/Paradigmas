# Operadores APL

Os operadores, ou funções primitas, do APL em geral possuem duas formas: **monádica** e **diádica**. Esse é uma das principais razões que tornam o APL uma linguagem contextual, pois o significado de um operador depende do número de argumentos que ele recebe.

## Monádicos
Operadores em sua forma monádica recebem apenas um argumento, à sua direita. A função é aplicada a esse único operando, produzindo um resultado.

| Operador |                                           Descrição                                           |          Exemplo           |      Resultado      |
| :------: | :-------------------------------------------------------------------------------------------: | :------------------------: | :-----------------: |
|    +     |              Conjugado complexo (em números naturais funciona como a identidade)              |        +5J1<br>+10         |     5J¯1<br>10      |
|    -     |                                       Simétrico aditivo                                       |             -5             |         ¯5          |
|    ×     | Retorna o sinal do número se natural e faz a [[Operadores#^91b3b4\|normalização]] se complexo |        ×¯5<br>×3J4         |    ¯1<br>0.6J0.8    |
|    ÷     |          Retorna o recíproco, ou seja, o número que multiplicado por ele é igual a 1          |          ÷1<br>÷2          |      1<br>0.5       |
|    ⌈     |                            Arredonda para o maior primeiro inteiro                            |       ⌈ 0.3<br>⌈¯3.4       |       1<br>¯3       |
|    ⌊     |                             Arrendo para o menor primeiro inteiro                             |       ⌊ 0.3<br>⌊¯3.4       |       0<br>¯4       |
|    *     |                                      Exponencial natural                                      |             *2             |        7.38         |
|    !     |                                           Fatorial                                            |             !5             |         120         |
|    \|    |                             Retorna o valor absoluto de um valor                              |            \|¯5            |          5          |
|    ⍟     |                                  Calcula o logaritmo natural                                  |            ⍟ 2             |      0.693147       |
|    ⌹     |                                      Inverte uma matriz                                       |       ⌹ 1 2<br>  3 4       | ¯2    1<br>1.5 ¯0.5 |
|    ?     |                          Escolhe um número aleatório no entre 1 e ⍵                           |         ? 10 10 10         |        3 2 5        |
|    ~     |                                              NOT                                              |           ~ 1 0            |         0 1         |
|  <br>≡   |      Retorna a profundidade (caso tenham profundidades mistas retorna o valor negativo)       | ≡   1<br>≡ 1 2<br>≡(1 2) 2 |    0<br>1<br>¯2     |

## Diádicos
Operadores em sua forma diádica recebem dois argumentos, um à esquerda(⍺) e outro à direita(⍵). 

| Operador |                                            Descrição                                            |         Exemplo          | Resultado  |
| :------: | :---------------------------------------------------------------------------------------------: | :----------------------: | :--------: |
|    +     |                                         Adição escalar                                          |          2 + 5           |     7      |
|    -     |                                        Subtração escalar                                        |          2 - 5           |     ¯3     |
|    ×     |                                      Multiplicação escalar                                      |          2 × 5           |     10     |
|    ÷     |                                         Divisão escalar                                         |          2 ÷ 5           |    0.4     |
|    ⌈     |                                Retorna o máximo valor entre dois                                |        5 2 ⌈ 3 4         |    5 4     |
|    ⌊     |                                Retornar o menor valor entre dois                                |        5 2 ⌊ 3 4         |    2 3     |
|    *     |                                    Retorna a ⍵ potência de ⍺                                    |          5 * 2           |     25     |
|    !     |                         Realiza a [[Operadores#\|combinação binomial]]                          |          2 ! 5           |     10     |
|  <br>\|  | Retorna o resto da divisão entre dois números, o equivalente ao módulo `%` em outras linguagens |          2 \| 5          |     1      |
|    ⍟     |                                       Calcula o logaritmo                                       |          2 ⍟ 32          |     5      |
|  <br>⌹   |                                       <br>Divide a matriz                                       | 5 6<br> ⌹ <br>1 2<br>3 4 | <br>¯4 4.5 |
|    ⊥     |                  Interpreta os digítos em ⍵ usando as bases dada em ⍺ (decode)                  |         2 ⊥ 1 1          |     3      |
|    ⊤     |             Converte os dígitos de ⍵ em um vetor de dígitos nas bases de ⍺ (encode)             |      8 ⊤ <br>10 7 8      | <br>2 7 0  |
|    ?     |             Retorna um vetor de ⍺ elementos com valores no range de 1 até ⍵ (⍺ < ⍵)             |          3 ? 5           |   4 5 1    |
|    ~     |  Remove os elementos de ⍺ que estão em ⍵, semelhante ao `set difference` em outras linguagens   |      1 2 3 ~ 2 3 4       |     1      |
|    ^     |                                               AND                                               |         1 ^ 1 0          |    1 0     |
|    ∨     |                                               OR                                                |          1 ∨ 0           |     1      |
|    ⍲     |                                              NAND                                               |         1 ⍲ 1 0          |    0 1     |
|    ⍱     |                                               NOR                                               |         0 ⍱ 1 0          |    0 1     |
|    <     |                                            Less Than                                            |         2 < 0 4          |    0 1     |
|    >     |                                          Greater Than                                           |         2 > 0 4          |    1 0     |
|    ≤     |                                      Less Than or Equal To                                      |         2 ≤ 2 4          |    1 1     |
|    ≥     |                                    Greater Than or Equal To                                     |         2 ≥ 2 4          |    1 0     |
|    =     |                                              Equal                                              |         2 = 2 4          |    1 0     |
|    ≠     |                                            Not Equal                                            |         2 ≠ 2 4          |    0 1     |
|    ≡     |             Retorna 1 se ⍺ e ⍵ têm a mesma forma, mesma estrutura e mesmos valores              |     2 ≡ 2<br>2 ≡ 2 2     |   1<br>0   |


>[!important]
>
> ### Forma dos operadores
> 
> A grande maioria dos operadores em APL possuem as duas formas, monádica e monádica e diádica. As excessões são:
>   
>```apl
> ⊥ ⊤ ∧ ∨ ⍲ ⍱ < > ≤ ≥ = ≠
>```
>
> ### Normalização de complexos
> 
> A normalização de complexos é uma operação que retorna o número complexo com módulo igual a 1. Isso é feito dividindo o número complexo pelo seu módulo. Por exemplo, a normalização de 3J4 seria 0.6J0.8, pois o módulo de 3J4 é 5. O módulo de um complexo $Y = a + b_i$:
> 
> $$
> |Y| = \sqrt{a^2 + b^2}
> $$ 
> 
> ### Combinação binomial
> 
> A combinação binomial entre dois números ⍺ e ⍵ é o número de maneiras de escolher ⍵ elementos distintos de um conjunto de ⍺ elementos. É calculada como:
> 
> $$
> \binom{\alpha}{\omega} = \frac{\alpha!}{\omega!(\alpha - \omega)!}
> $$
> 
> ### Exponencial Natural
> 
> A exponencial natural de um número ⍺ é calculada como $e^{\alpha}$, onde $e$ é a base do logaritmo natural, aproximadamente 2.71828. 
> 
> ### Logaritmo Natural
> 
> O logaritmo natural de um número ⍺ é calculado como $\ln(\alpha)$, onde $\ln$ é a função logarítmica natural. O logaritmo natural é o inverso da exponencial natural.




