
-- Reverse a list.
myReverse list = myReverse_acc list []
	where
		myReverse_acc [] acc = acc 
		myReverse_acc (x:xs) acc = myReverse_acc xs (x:acc) 