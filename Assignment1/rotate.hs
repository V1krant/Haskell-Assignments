rotate :: String -> Int -> String
rotate [] n = []
rotate [a] n = [a]
rotate (x:xs) 1 = xs ++ [x]
rotate xs n = rotate (tail xs ++ [head xs]) (n-1)