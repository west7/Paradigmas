import Control.Monad (replicateM)

remaining' :: (Num c) => [c] -> [c]
remaining' = zipWith (*) cals
  where
    cals = [4, 9, 4]

remaining :: Int -> [[Int]] -> Int
remaining m = (m -) . sum . map (sum . remaining') 

main = do
  input <- getLine
  let [n, m] = map read (words input) :: [Int]
  macros <- replicateM n getLine
  let parsedMacros = map (map read . words) macros :: [[Int]]
  print $ remaining m parsedMacros
