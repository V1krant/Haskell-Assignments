dupli :: [a] -> [a]
dupli [] = []
dupli [a] = [a,a]
dupli (x:xs) = x : (x : dupli xs)