isPalindrome [] = False
isPalindrome [a] = True
isPalindrome [a,b] = a==b
isPalindrome (x:xs) = isPalindrome (init xs)   &&  x == last xs