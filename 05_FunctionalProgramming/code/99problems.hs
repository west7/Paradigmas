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

