myReverse :: [a] -> [a]
myReverse []=[]
myReverse xs = myReverse (tail xs) ++ [head xs]