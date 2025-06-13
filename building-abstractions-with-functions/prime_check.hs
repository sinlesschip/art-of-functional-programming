is_prime :: Integral a => a -> Bool
is_prime x = is_prime' 3 x
    where 
        is_prime' current prime
            | prime `elem` [0, 1] = False
            | prime `elem` [2, 3] = True
            | prime `mod` 2 == 0 = False
            | prime `mod` current == 0 = False
            | fromIntegral current >= sqrt (fromIntegral prime) = True
            | otherwise = is_prime' (current + 1) prime