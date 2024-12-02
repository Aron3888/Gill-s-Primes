import Data.List (permutations)

-- filters the tuples generated by generator using selector and prints the resulting list
main :: IO ()
main = print (filter selector generator)

-- generates all possible 3-tuples of lists using permutations of the digits from 0 to 9
generator :: [([Int], [Int], [Int])]
generator = [([x1, x2, x3], [y1, y2, y3], [z1, z2, z3]) 
            | [_, x1, x2, x3, y1, y2, y3, z1, z2, z3] <- permutations [0..9]]

-- ensures that all three lists satisfies the all conditions
selector :: ([Int], [Int], [Int]) -> Bool
selector (as, bs, cs) =
    let abc = number as
        def = number bs
        ghi = number cs
        primes = filter prime [abc, def, ghi]
    in length primes == 3 
    && sum primes `mod` 2 == 1
    && sum as == sum bs && sum as == sum cs
    && def - abc == ghi - def

-- converts a list of digits into an integer 
number :: [Int] -> Int
number xs = mun (reverse xs)
  where
    mun [] = 0
    mun (x:xs) = x + 10 * mun xs

-- checks if a number is prime
prime :: Int -> Bool 
prime n 
    | n < 2 = False 
    | otherwise = not ( factorisable n 2) 
        where 
        factorisable n f 
            | n < f * f = False 
            | otherwise = mod n f == 0 
                               || factorisable n ( f +1)