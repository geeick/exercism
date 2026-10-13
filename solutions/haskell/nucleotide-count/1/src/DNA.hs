module DNA (nucleotideCounts, Nucleotide(..)) where

import Data.Map (Map)
import qualified Data.Map as Map

data Nucleotide = A | C | G | T deriving (Eq, Ord, Show)

nucleotideCounts :: String -> Either String (Map Nucleotide Int)
nucleotideCounts xs 
  | any (`notElem` "ACGT") xs = Left "Invalid nucleotide"
  | otherwise = Right (Map.fromList [(A, (countVal 'A')), (C, (countVal 'C')), (G, (countVal 'G')), (T, (countVal 'T'))])
  where
    countVal :: Char -> Int
    countVal letter = length (filter (== letter) xs)