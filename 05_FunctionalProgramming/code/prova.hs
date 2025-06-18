{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use !!" #-}
import Data.List

-- 1. Implemente, em Haskell, uma função s :: Int -> Int que receba um natural n e que retorne a soma de todos os números ímpares no intervalo [1..n]. 

s1 :: Int -> Int
s1 n = foldl (\acc x -> if odd x then acc + x else acc) 0 [1..n]

s2 :: Int -> Int
s2 n = sum $ filter odd [1..n]

s3 :: Int -> Int 
s3 n = sum [1,3..n]

-- 2. ) Implemente, em Haskell, de forma tácita e em apenas uma única linha, a função parcial f :: [Int] -> Int que receba uma lista de inteiros e que retorne o terceiro menor positivo da lista, se existir. Dica: use a função sort do módulo Data.List 

f1 :: [Int] -> Int
f1 = head . drop 2 . filter (>0) . sort 

f2 :: [Int] -> Int
f2 = last . take 3 . filter (>0) . sort

-- 3. ) Implemente, em Haskell, usando uma única chamada de uma dobra à esquerda e em apenas uma única linha, a função parcial pgsum :: Double -> Double, que receba um número real x, com |x| < 1, e que retorne a aproximação da soma dos termos de uma progressão geométrica de razão x dada abaixo:
--
--    1 / 1 − x ≈ 1 + x + x² + x³ + . . . + x²⁰
--
--Bônus: se a solução usar uma dobra à direita, e não utilizar os operadores e funções de exponenciação, a questão valerá 5 pontos extras.

pgsum :: Double -> Double
pgsum x = foldl (\acc e -> acc + x**e) 1 [1..20]

pgsumr :: Double -> Double
pgsumr x = foldr (\_ acc -> 1 + x * acc) 0 [0..20]

{-- 4. Classifique cada função abaixo como ou de primeira ordem ou de alta ordem. Justifique cada classificação.

(a) take 2
A função `take 2` é de Primeira ordem, visto que receberá uma lista como parâmetro e retornará outra lista.

(b) filter odd
A função `filter odd` também é de Primeira ordem, já que recebe uma lista e também retorna uma lista somente com os elementos ímpares nela. 

(c) drop
A função `drop` é de Alta ordem, pois recebe um inteiro e retorna uma função que recebe uma lista e retorna uma lista.

(d) ($ 1)
A função `($ 1)` recebe uma função que transforma elementos do tipo `a` e retorna elementos do tipo `b`. Portanto é de Alta ordem, pois recebe uma função como parâmetro
--}


