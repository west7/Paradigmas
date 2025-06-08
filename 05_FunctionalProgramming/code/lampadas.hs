readInts :: IO [Int]
readInts = map read . words <$> getLine

lampadas :: Int -> Int -> [Int] -> (Int, Int)
lampadas a b [] = (a, b) 
lampadas a b (n : ns)
  | n == 1 = lampadas (1 - a) b ns
  | n == 2 = lampadas (1 - a) (1 - b) ns

main :: IO ()
main = do
  _ <- getLine
  ns <- readInts
  let r = lampadas 0 0 ns 
  print $ fst r
  print $ snd r