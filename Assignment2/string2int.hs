string2int :: String -> Int
string2int [] = error "Empty List"
string2int x = read x :: Int