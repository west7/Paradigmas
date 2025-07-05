import Control.Monad (replicateM)
import Data.List (sort)

distance :: [Int] -> Int -> Int
distance [a, b, c] e
  | a == e = abs (e - c) * 2
  | b == e = abs (e - a) + abs (a - c) + abs (c - e)
  | c == e = abs (e - a) * 2

main = do
  input :: [Int] <- replicateM 3 readLn
  let [e, _, _] = input
  let m = sort input
  print $ distance m e

{-
main :: IO ()
main = do
  [e, s, l] <- replicateM 3 readLn
  let menor = minimum [e, s, l]
      maior = maximum [e, s, l]
  print $ 2 * (maior - menor)
-}