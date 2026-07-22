
let rec sum_to number = 
  if number <= 0 then
    0
  else 
    number + sum_to (number-1)

let square_of_sum number = 
    let total = sum_to number in
    total * total

let rec sum_of_squares number =
    if number <= 0 then
      0
    else
      number*number + sum_of_squares (number-1)

let difference_of_squares number =
    square_of_sum number - sum_of_squares number
