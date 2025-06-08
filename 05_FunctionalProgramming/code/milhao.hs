readInts :: Int -> IO [Int]
readInts n = sequence $ replicate n (readLn :: IO Int) 

milhao :: (Num a, Ord a) => [a] -> [a] -> Int
milhao [] [x] = 1
milhao acc (x:xs) 
    | sum acc + x >= 1000000 = length acc + 1
    | otherwise = milhao (x : acc) xs  


main :: IO ()
main = do
    n <- readLn
    xs <- readInts n
    print $ milhao [] xs