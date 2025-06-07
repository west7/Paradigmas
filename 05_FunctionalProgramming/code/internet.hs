readInput :: Int -> IO [Int]
readInput n = sequence $ replicate n (readLn :: IO Int)

calculate :: Int -> Int -> [Int] -> Int
calculate x ex [] = x + ex
calculate x ex (n : ns)
  | n < x = calculate x (ex + (x - n)) ns
  | otherwise = calculate x (ex - (n - x)) ns

main :: IO ()
main = do
  x :: Int <- readLn
  n :: Int <- readLn
  ns <- readInput n
  print $ calculate x 0 ns
