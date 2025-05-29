# Aritmética
A notável simplicidade do [[Lambda Calculus#Lambda Calculus|cálculo λ]], fundamentado em apenas três termos - variáveis, abstração e aplicação - confere-lhe uma elegância teórica singular. No entanto, isto impõe uma consequência direta: a ausência de tipos de dados primitivos, como números, [[Lambda Calculus#Lógica Booleana|booleanos]] e estrutura de dados. Neste sistema, tudo é uma função. Portanto, qualquer dado ou operador deve ser codificado como uma função de alta ordem. Esta necessidade é o cerne da codificação de Church. 

## Números Naturais
A codificação de Church é uma maneira de representar números naturais usando funções. No cálculo λ, os números naturais são representados como funções que operam sobre outras funções.

### Zero
O número natural **Zero** representa a não aplicação de uma função `s` a um argumento `z`. Em notação λ, isso é expresso como:

> 0 = λsz.z

### Sucessor
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

