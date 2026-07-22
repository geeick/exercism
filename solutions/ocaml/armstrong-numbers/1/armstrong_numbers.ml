let rec power base exponent =
  if exponent = 0 then
    1
  else
    base * power base (exponent - 1)

let validate candidate =
  let digits = string_of_int candidate in
  let exponent = String.length digits in

  let sum =
    String.fold_left
      (fun current_sum character ->
        let digit = Char.code character - Char.code '0' in
        current_sum + power digit exponent)
      0
      digits
  in

  sum = candidate