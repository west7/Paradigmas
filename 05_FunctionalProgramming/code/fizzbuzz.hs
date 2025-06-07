fizzbuzz :: (Integral a, Show a) => a -> [String]
fizzbuzz n = 
    let list = [1..n] 
    in foldr (\x acc -> 
        if mod x 3 == 0 && mod x 5 == 0 then "FizzBuzz" : acc
        else if mod x 3 == 0 then "Fizz" : acc 
        else if mod x 5 == 0 then "Buzz" : acc
            else show x : acc) [] list 


fizzbuzz2 :: (Integral a, Show a) => a -> [String]
fizzbuzz2 n = map fizz [1..n]  where
    fizz x 
        | x `mod` 15 == 0 = "FizzBuzz"
        | x `mod` 3 == 0  = "Buzz"
        | x `mod` 5 == 0  = "Fizz"
        | otherwise       = show x
