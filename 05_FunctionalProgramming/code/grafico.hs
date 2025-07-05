transpose :: [[Int]] -> [[Int]] 
transpose ([]:_) = []
transpose mat = map head mat : transpose (map tail mat)

graph :: Int -> [Int] -> [[Int]]
graph n ns = transpose [replicate (highest - h) 0 ++ replicate h 1 | h <- ns]
  where
    highest = maximum ns    

printGraph :: [[Int]] -> IO()
printGraph mat = mapM_ putStrLn [unwords (map show row) | row <- mat]

main :: IO()
main = do
  n :: Int <- readLn
  ns :: [Int] <- fmap (map read . words) getLine
  let mat = graph n ns
  printGraph mat