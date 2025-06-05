domino :: Int -> Int
domino n = div ((n + 1) * (n + 2)) 2
main = do 
    n <- readLn
    print $ domino n