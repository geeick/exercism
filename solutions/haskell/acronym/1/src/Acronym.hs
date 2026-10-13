module Acronym (abbreviate) where

import Data.Char (toUpper, isUpper)

abbreviate :: String -> String
abbreviate xs = (head xs) : (abbreviateHelper (tail xs))

abbreviateHelper :: String -> String
abbreviateHelper xs
  | length xs == 0 = ""
  | length xs == 1 = ""
  | isDelimeter (head xs) == True && isDelimeter (xs !! 1) == False = (toUpper (xs !! 1)) : (abbreviateHelper (tail (tail xs)))
  | (isUpper (head xs) == False) && isUpper (xs !! 1) == True = (xs !! 1) : (abbreviateHelper (tail (tail xs)))
  | otherwise = abbreviateHelper (tail xs)

isDelimeter :: Char -> Bool
isDelimeter c
  | c == '-' = True
  | c == ' ' = True
  | c == '_' = True
  | otherwise = False