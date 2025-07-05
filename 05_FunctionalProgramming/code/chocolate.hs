slices :: Int -> Int -> Int
slices l acc
  | l < 2     = acc
  | otherwise = slices (l `div` 2) (acc * 4)

main :: IO ()
main = do
    l <- readLn
    print $ slices l 1