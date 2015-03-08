--Pack consecutive duplicates of list elements into sublists. 
--If a list contains repeated elements they should be placed in separate sublists.
--pack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e']
--["aaaa","b","cc","aa","d","eeee"]

import Data.List (group)

pack list = group list --cheating!