readInts = map read . words <$> getLine

tamanhos :: [Int] -> Int -> Int -> String
tamanhos [] 0 0 = "S"
tamanhos [] p m
  | p /= 0 && m /= 0 = "N"
tamanhos (x : xs) p m
  | x == 1 = tamanhos xs (p - 1) m
  | x == 2 = tamanhos xs p (m - 1)

main = do
  _ <- getLine
  ns <- readInts
  p <- readLn
  m <- readLn
  putStrLn $ tamanhos ns p m