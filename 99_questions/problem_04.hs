
--Find the number of elements of a list.
myLength :: Num a => [t] -> a
myLength [] = 0
myLength (_:xs) = 1 + myLength xs
