tomadas :: String -> Int
tomadas = (\xs -> sum xs - length xs + 1) . map read . words  

main :: IO ()
main = do
  n <- getLine
  print $ tomadas n 

