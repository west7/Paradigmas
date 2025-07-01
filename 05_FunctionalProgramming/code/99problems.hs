--      99 Problems Haskell        --
--      First 10th problems        --

-- 1. Find the last element in a list --
myLast [] = Nothing
myLast list = Just (head $ reverse list)

-- 2. Find the last but one element in a list --
myButLast [] = Nothing
myButLast [_] = Nothing
myButLast list = Just (head (tail $ reverse list))

-- 3. Find element of a list at a given position --
elementAt :: [a] -> Int -> Maybe a
elementAt [] _ = Nothing
elementAt list i
  | length list < i = Nothing
  | otherwise = Just (head $ drop (i - 1) list)

{--  
    Alternatively use the !! operator:  
    elementAt2 list i = list !! (i - 1) 
--}

-- 4. Length of a list --
myLenght :: [a] -> Int
myLenght [] = 0
myLenght (x : xs) = 1 + myLenght xs

-- 5. Reverse a list --
myReverse :: [a] -> [a]
myReverse = foldl (\x y -> y : x) []

-- [1,2,3]
-- 1 : [] = [1]
-- 2 : [1] = [2, 1]
-- 3 : [2, 1] = [3, 2, 1]

-- 6. Find out whether a list is a palindrome. A palindrome can be read forward or backward; e.g. "xamax". --
isPalindrome :: Eq a => [a] -> Bool
isPalindrome [] = False
isPalindrome list
  | list == myReverse list = True
  | otherwise = False

-- 7. Flatten a nested list structure --
data NestedList a = Elem a | List [NestedList a]

flatten :: NestedList a -> [a]
flatten (List []) = []
flatten (Elem x) = [x]
flatten (List (x:xs)) = flatten x ++ flatten (List xs)   

-- 8. Eliminate Duplicate elements in a list --
compress :: Eq a => [a] -> [a]
compress [] = []
compress [x] = [x]
compress (x:xs) 
  | x == head xs = compress xs
  | otherwise = x : compress xs

-- 9. Pack Duplicates in a list --
pack :: Eq a => [a] -> [[a]]
pack [] = []
pack (x:xs) = 
  let (firstGroup, rest) = span (== x) xs
  in (x:firstGroup) : pack rest

-- 10. Run-length encoding of a list -- 
encode :: Eq a => [a] -> [(Int, a)]
encode [] = []
encode xs = map (\ys -> (length ys, head ys)) (pack xs) 

-- 11. Modified run-length encoding --
data Encoding a = Single a | Multiple Int a deriving Show
encodeModified :: Eq a => [a] -> [Encoding a]
encodeModified [] = []
encodeModified xs = map (\ys -> if length ys == 1 then Single (head ys) else Multiple (length ys) (head ys)) (pack xs)

-- 12. Decode a run-length encoded list --
decodeModified :: [Encoding a] -> [a]
decodeModified [] = []
decodeModified (Single a : xs) = a : decodeModified xs
decodeModified (Multiple n a : xs) = replicate n a ++ decodeModified xs
  
-- 13. Run-length encoding of a list (direct solution) --
encodeDirect :: Eq a => [a] -> [Encoding a]
encodeDirect [] = []
encodeDirect (x:xs) 
  | count == 1 = Single x : encodeDirect xs 
  | otherwise  = Multiple count x : encodeDirect rest 
  where 
    (matched, rest) = span (==x) xs
    count = 1 + length matched

-- 14. Duplicate elements in a list --
dupli :: [a] -> [a]
dupli [] = []
dupli (x:xs) = replicate 2 x ++ dupli xs

-- 15. Replicate the elements of a list a given number of times. --
repli :: [a] -> Int -> [a]
repli xs n = foldr ((++) . replicate n) [] xs 

-- 16. Drop every nth element of a list --
dropEvery :: [a] -> Int -> [a]
dropEvery xs n = map snd $ filter (\(i, _) -> i `mod` n /= 0) $ zip [1..] xs

{-- 
dropEvery xs n = [x | (i, x) <- zip [1 ..] xs, i `mod` n /= 0]

Sintaxe de List Comprehension em Haskell: [expressão | geradores e filtros ]
Construa uma nova lista usando x, onde x satisfaz: o par (i, x) em que i é o nth elemento de [1..] e x é o nth elemento de xs, e i não pode ser múltiplo de n
--}

-- 17. Split a list into two parts; the length of the first part is given. --
split :: [a] -> Int -> ([a], [a])
split xs n = (take n xs, drop n xs)

-- 18. Extract a slice from a list. --
slice :: [a] -> Int -> Int -> [a]
slice xs i k = drop (i - 1) $ take k xs 