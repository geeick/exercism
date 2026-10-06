module CollatzConjecture (collatz) where

collatz :: Integer -> Maybe Integer

collatz n = 
  if n < 1 then Nothing
  else
    Just (collatzHelper(n))

collatzHelper :: Integer -> Integer

collatzHelper n =
  if (n == 1) then 0
  else 
    if ((n `mod` 2) == 0) then (collatzHelper(n `div`  2) + 1)
    else (collatzHelper(n*3 + 1) + 1)
  