niave_fib n 
    | n <= 1 = n
    | otherwise = f1 + f2
    where
        f1 = fib (n - 1)
        f2 = fib (n - 2)

# using Binet's formula
super_fib :: Integral a => a -> a
super_fib n
    | n <= 1 = n
    | otherwise = round (((gr^n) - (conj^n)) / sqrt 5)
    where 
        gr = (1 + sqrt 5) / 2
        conj = (1 - sqrt 5) / 2