
-- last but one in array
myButLast :: [a] -> a
myButLast a = head (tail ( reverse a ) )
