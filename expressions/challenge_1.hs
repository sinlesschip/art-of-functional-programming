findMax = 
  let x = 10
      y = 2
      z = 5
  in if x > y && x > z then x
     else if y > z then y
     else z

main = print findMax