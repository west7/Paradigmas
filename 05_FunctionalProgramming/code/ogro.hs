calculate :: (Ord a, Num a) => a -> a -> a
calculate e d 
    | e > d     = e + d
    | otherwise = (*2) (d - e) 

main :: IO ()
main = do
    e <- readLn
    d <- readLn
    print $ calculate e d