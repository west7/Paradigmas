import Control.Monad (replicateM)

verify :: Int -> Int -> Int -> [Int] -> String
verify a b c (d : ds)
  | vol >= a && vol <= b = "S"
  | d + a > c            = "N"
  | otherwise            = verify a b c ds
  where
    vol = c - d

main = do
  [a, b, c, d] :: [Int] <- replicateM 4 readLn
  putStrLn $ verify a b c [d, d * 2 ..]