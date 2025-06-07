cinema :: (Ord a1, Num a1, Num a2) => a1 -> a2
cinema i
    | i <= 17 = 15
    | i <= 59 = 30
    | otherwise = 20

main :: IO ()
main = do
     idade1 <- readLn 
     idade2 <- readLn
     print $ cinema idade1 + cinema idade2 