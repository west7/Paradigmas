import Control.Monad (replicateM)

verify :: Int -> Int -> Int -> Int -> String
verify a b c d
  | remain < a || remain > b = "N"
  | otherwise = "S"
  where
    remain = c - d

main :: IO ()
main = do
  input :: [Int] <- replicateM 4 readLn
  let [a, b, c, d] = input
  putStrLn $ verify a b c d
