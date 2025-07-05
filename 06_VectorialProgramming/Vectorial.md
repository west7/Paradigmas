# Paradigma Vetorial

A evolução das linguagens de programação é, em grande parte, uma busca por abstrações mais poderosas, i.e. maneiras mais eficientes de expressar ideias complexas. A ideia central do paradigma orientado a arrays é que as operações se aplicam de uma vez só em um conjunto inteiro de dados. Este modelo, possibilita ao programador a pensar em alto nível, sem ter que recorrer a laços explícitos e operações escalares tradicionais.

## Escalares

Um escalar, no conceito da programação vetorial, é um único valor ou elemento - como um inteiro, booleano ou caractere. Como os membros de primeira classe desse paradigma são os arrays, estes, obviamente, possui tratamento especial. Em APL, um escalar é simplesmente um array de profundidade 0. 

O conceito de **scalar spread** (expansão escalar), ou também conhecido como **broadcasting**, é um dos pilares da conveniência do APL. Quando uma função diádica é aplicada a um escalar e a um array de qualquer rank, o escalar é implicitamente "espalhado" para criar um array temporário e realizar a operação.

```apl
        A ← 5 
        B ← 1 2 3
        ⎕ ← A + B     ⍝ 6 7 8
```


## Arrays

No paradigma vetorial, os arrays são estruturas de dados fundamentais. Um array é uma coleção retangular de elementos que podem ou não ser do mesmo tipo. Em APL arrays são declarados separando seus elementos por espaços. Os parêntesis podem ser usados para agrupar elementos em sub-arrays. Por exemplo:

```apl
        A ← 1 2 3 4 5
        B ← (1 2 3) (4 5 6)
        C ← (1 2 3) 4 5
```

## Propriedades dos Arrays

### Profundidade (Depth)

A profundidade de um array é o número de níveis de aninhamento que ele possui. Por exemplo, o array `A` acima tem profundidade 1, enquanto o array `B` tem profundidade 2. A profundidade é importante para entender a estrutura dos dados e como acessá-los.

O APL atribuí profundidade negativa para vetores que misturam elementos de diferentes profundidades. Por exemplo, a profundidade de `C` é -2.

### Rank 

