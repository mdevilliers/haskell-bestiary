
-- Find the K'th element of a list. The first element in the list is number 1.
elementAt :: [a] -> Int -> a
elementAt (x:_) 1  = x -- match on the head when value == 1
elementAt (_:xs) i = elementAt xs (i - 1) -- recurse down decrementing
elementAt _ _      = error "Index out of bounds"