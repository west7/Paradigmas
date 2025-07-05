tiraTeima :: (Int, Int) -> String
tiraTeima c 
    | x < 0 || x > 432 = "fora"
    | y < 0 || y > 468 = "fora"
    | otherwise        = "dentro" 
    where 
        x = fst c
        y = snd c 

main = do
    input <- getLine
    let [x, y] = map read (words input) :: [Int]
    putStrLn $ tiraTeima (x, y)