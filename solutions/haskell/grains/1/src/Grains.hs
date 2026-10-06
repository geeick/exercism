module Grains (square, total) where

square :: Integer -> Maybe Integer
square n
  | n < 1 =
    Nothing
  | n == 1 =
    Just 1
  | n > 64 =
    Nothing
  | otherwise =
     (* 2) <$> square (n - 1)

total :: Integer
total = totalHelper 64

totalHelper :: Integer -> Integer
totalHelper n 
  | n < 1 =
    0
  | n == 1 =
    1
  | otherwise =
      case square n of
        Just x  -> x + totalHelper (n - 1)
        Nothing -> 0

