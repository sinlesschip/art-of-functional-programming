# Art of functional programming challenges

This repo will document me solving the challenges in the book "Art of functional programming" by Minh Quang Tran. I aim to solve the challenges in both OCaml and Haskell.

## Expressions

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
