-- Run-length encoding of a list. Use the result of problem P09 to implement the so-called run-length encoding data compression method. 
-- Consecutive duplicates of elements are encoded as lists (N E) where N is the number of duplicates of the element E.

import Data.List (group)

pack :: Eq a => [a] -> [[a]]
pack list = group list

encode :: Eq t => [t] -> [(Int, t)]
encode list = map (\i -> (length i, head i) ) (pack list) 