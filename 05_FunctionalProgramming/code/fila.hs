notVisible :: [Int] -> Int -> Int
notVisible [] _ = 0
notVisible (h : hs) max
  | h > max = notVisible hs h
  | otherwise = 1 + notVisible hs max

main = do
  n :: Int <- readLn
  h <- getLine
  let hs = reverse (map read (words h)) :: [Int]
  print $ notVisible hs 0 