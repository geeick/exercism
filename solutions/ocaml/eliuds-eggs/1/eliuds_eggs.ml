let rec egg_count number =
  if number <= 0 then
    0
  else
    (number mod 2) + egg_count (number / 2)
