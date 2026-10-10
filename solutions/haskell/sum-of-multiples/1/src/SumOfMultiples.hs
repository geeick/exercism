module SumOfMultiples (sumOfMultiples) where

import Data.List (nub)

sumOfMultiples :: [Integer] -> Integer -> Integer

sumOfMultiples factors limit = sum (nub (allMultiples (filter (\x -> x /= 0) factors) (limit-1)))
  
allMultiples :: [Integer] -> Integer -> [Integer]

allMultiples factors limit 
  | limit <= 0 = [0]
  | otherwise = [limit | x <- factors, mod limit x == 0] ++ allMultiples factors (limit - 1)
