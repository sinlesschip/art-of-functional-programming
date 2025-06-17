# Art of functional programming challenges

This repo will document me solving the challenges in the book "Art of functional programming" by Minh Quang Tran. I aim to solve the challenges in both OCaml and Haskell.

# 1. Expressions

### Challenge 1: 
The following imperative Java code calculates the maximum of three given variables by repeatedly updating max_number 

    int x = 10;
    int y = 2;
    int z = 5;

    int max_number = x;
    if (max_number < y) {
        max_number = y;
    }
    if (max_number < z) {
        max_number = z;
    }

Convert this code in the functional style in OCaml.

### Challenge 1 Solutions:
#### OCaml: 

    let x = 10 in 
    let y = 2 in 
    let z = 5 in
    if x > y && x > z then x 
        else if y > z then y else z

#### Haskell:
    findMax = 
        let x = 10
            y = 2
            z = 5
        in if x > y && x > z then x
           else if y > z then y
           else z

    main = print findMax 

### Challenge 2:
The following imperative code calculates the absolute of a given variable using the variable assignment.

    int x = -10;

    int a = x;
    if (x < 0) {
        a = -x 
    }

Write this code in the functional style in OCaml.

### Challenge 2 Solutions:

#### OCaml

    let x = 10 in if x <= 0 then -x else x

#### Haskell

    absolute = let x = 10 in if x <= 0 then -x else x
    main = print absolute

# 2. Building abstractions with functions 

### Challenge 1: Prime number

Write an OCaml (or Haskell) function `is_prime: integer -> bool` that returns 
true if the input number is a prime number and false otherwise.

### Challenge 1 Solutions:
#### Haskell:
    
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

### Challenge 2: Niave Fibonacci
The Fibonacci series looks like this: 1 1 2 3 5 8 13 ... Formally:
    Fibanocci 0 = 0
    Fibanocci 1 = 1
    Fibonacci 2 = 1
    Fibonacci n = Fibonacci (n-1) + Fibanocci (n-2) for n > 2

Write a function `fib: int -> int` that returns the n-th Fibonacci number where 
n >= 0.

### Challenge 2 Solutions:
#### Haskell:

    niave_fib n 
        | n <= 1 = n
        | otherwise = f1 + f2
        where
            f1 = niave_fib (n - 1)
            f2 = niave_fib (n - 2)

### Challenge 3: Quick Fibonacci
This is a follow up to Challenge 2. Try to call fib 60 with your solution.
If it returns the results right away, skip this challenge. However, if fib 60 
seems to run forever, it is likely because your recursive function solution performs
too many redundant calculations.

Write an improved version of the previous function, `super_fib: int -> int`, 
capable of quickly computing a large Fibonacci number like the 60-th one. 

    # using Binet's formula
    super_fib :: Integral a => a -> a
    super_fib n
        | n <= 1 = n
        | otherwise = round (((gr^n) - (conj^n)) / sqrt 5)
            where 
                gr = (1 + sqrt 5) / 2
                conj = (1 - sqrt 5) / 2