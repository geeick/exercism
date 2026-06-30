module Bob (responseFor) where
import Data.Char (isLetter, isSpace)

capsLetters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

allCaps :: String -> Bool
allCaps text = 
  all (`elem` capsLetters) text

isEmpty :: String -> Bool
isEmpty text = all isSpace text

isQuestion :: String -> Bool
isQuestion text = noSpace /= "" && last noSpace == '?'
  where
    noSpace = filter (not . isSpace) text

responseFor :: String -> String
responseFor xs
  | isQuestion xs && allCaps justLetters && justLetters /= "" = "Calm down, I know what I'm doing!"

  --Question
  | isQuestion xs = "Sure."

  --All caps
  | allCaps justLetters && justLetters /= "" = "Whoa, chill out!"

  --Empty string
  | isEmpty xs = "Fine. Be that way!"

  | otherwise = "Whatever."
  where justLetters = filter isLetter xs