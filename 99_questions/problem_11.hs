-- Modified run-length encoding.

--Modify the result of problem 10 in such a way that if an element has no duplicates it is simply copied into the result list. 
--Only elements with duplicates are transferred as (N E) lists.

import Data.List (group)

data Item a = Single a | Multiple Int a
    deriving (Show)

pack :: Eq a => [a] -> [[a]]
pack list = group list

encode :: Eq t => [t] -> [(Int, t)]
encode list = map (\i -> (length i, head i) ) (pack list) 

encodeModified :: Eq a => [a] -> [Item a]
encodeModified list = map encodeHelper (encode list) 
    where 
       encodeHelper (1,x) = Single x
       encodeHelper (n,x) = Multiple n x
