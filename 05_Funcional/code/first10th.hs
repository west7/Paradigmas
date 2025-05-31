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

--  Alternatively use the !! operator:
--      elementAt2 list i = list !! (i - 1)

-- 4. Length of a list --
myLenght :: [a] -> Int
myLenght [] = 0
myLenght (x : xs) = 1 + myLenght xs

-- 5. Reverse a list --
myReverse :: [a] -> [a]
myReverse list = foldl (\x y -> y : x) [] list

-- [1,2,3]
-- 1 : [] = [1]
-- 2 : [1] = [2, 1]
-- 3 : [2, 1] = [3, 2, 1]

-- 6. Find out whether a list is a palindrome. A palindrome can be read forward or backward; e.g. "xamax". --
isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome [] = False
isPalindrome list
  | list == myReverse list = True
  | otherwise = False

