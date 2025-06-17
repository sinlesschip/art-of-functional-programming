findMax 
    | x > y && x > z = x
    | y > z = y
    | otherwise = z
    where
      x = 10
      y = 2
      z = 5