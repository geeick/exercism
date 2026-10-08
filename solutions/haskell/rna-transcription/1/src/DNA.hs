module DNA (toRNA) where

toRNA :: String -> Either Char String

toRNA [] = Right ""
toRNA (left:right)
  | left == 'G' = addto 'C' 
  | left == 'C' = addto 'G'
  | left == 'T' = addto 'A'
  | left == 'A' = addto 'U'
  | otherwise = Left left
  where 
    addto c =
      case toRNA right of
        Right result -> Right (c : result)
        Left err -> Left err

