import Data.List

main = do 
    n1 :: Int <- readLn
    n2 :: Int <- readLn
    n3 :: Int <- readLn
    let ns =  sort [n1, n2, n3]
    print $ ns !! 1