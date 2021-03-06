--(**) Decode a run-length encoded list.
--Given a run-length code list generated as specified in problem 11. Construct its uncompressed version.
--decodeModified  [Multiple 4 'a',Single 'b',Multiple 2 'c',Multiple 2 'a',Single 'd',Multiple 4 'e']
-- "aaaabccaadeeee"

import Data.List (group)

data Item a = Single a | Multiple Int a
    deriving (Show)

decodeModified :: [Item a] -> [a]
decodeModified = concatMap decodeHelper
    where
      decodeHelper (Single x)     = [x]
      decodeHelper (Multiple n x) = replicate n x
