import Data.Char

second :: [a] -> Maybe a
second [x] = Nothing
second (x : xs) = Just $ head xs

body :: [a] -> Maybe [a]
body xs
  | null xs || length xs == 2 = Nothing
body (x : xs) = Just $ take (length xs - 1) xs

median :: [a] -> Maybe a
median [] = Nothing
median xs
  | even len = Just $ head $ drop (len `div` 2 - 1) xs
  | otherwise = Just $ head $ drop (len `div` 2) xs
  where
    len = length xs

parity :: Int -> Int
parity n
  | n == 0 = 0
  | n == 1 = 1
  | otherwise = parity $ n - 2

remainder :: Int -> Int -> Int
remainder a b
  | a < b = a
  | otherwise = remainder (a - b) b

quotient :: Int -> Int -> Int
quotient a b
  | a < b = 0
  | otherwise = 1 + quotient (a - b) b

mygcd :: Int -> Int -> Int
mygcd a 0 = a
mygcd a b = mygcd b (mod a b)

semifactorial :: Int -> Int
semifactorial n
  | n <= 1    = 1
  | otherwise = n * semifactorial (n - 2)

-- lista 07:

count :: String -> Int
count = length . filter isLower . map last . words 

inverses :: [Int] -> [Double]
inverses = map (\x -> 1 / fromIntegral x) . filter (/= 0)

odds :: Int -> Int
odds = length . filter odd . map digitToInt . show 

palindromes :: String -> Int
palindromes = length . filter (\x -> reverse x == x ) . words

isOctNumber :: Int -> Bool
isOctNumber = all ((< 8) . digitToInt) . show

eval :: [Int] -> Int -> Int
eval as x = foldl (\acc a -> a + x * acc) 0 as 

kFactorial :: Int -> Int -> Int
kFactorial n k = foldl (*) 1 [n, n - k..1] 

mean :: [Int] -> Double
mean (x : xs) = fromIntegral (foldl (+) x xs) / fromIntegral (length (x : xs))

a xs = (length . words) xs  
