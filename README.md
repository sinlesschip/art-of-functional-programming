# Art of functional programming challenges

This repo will document me solving the challenges in the book "Art of functional programming" by Minh Quang Tran. I aim to solve the challenges in both OCaml and Haskell

## Expressions

### Challenge 1 
Convert the following imperative Java code that calculates the max of 3 variables by updating max_number 
into a functional style:


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


#### OCaml: 


    let x = 10 in 
    let y = 2 in 
    let z = 5 in
    if x > y && x > z then x 
        else if y > z then y else z 
