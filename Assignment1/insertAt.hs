insertAt :: Char -> String -> Int -> String
insertAt a [] n = [a]
insertAt a xs 1 = a : xs
insertAt a (x:xs) n = x : insertAt a xs (n-1)