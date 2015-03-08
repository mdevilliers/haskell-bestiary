--Eliminate consecutive duplicates of list elements.

--If a list contains repeated elements they should be replaced with a single copy of the element. 
--The order of the elements should not be changed.
import Data.List (group)

compress list = map (\i -> head i) (group list)
