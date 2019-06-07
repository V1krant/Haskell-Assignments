isPrime 1 = True
isPrime 2 = True
isPrime k = null [ x | x <- [2..k - 1], k `mod` x == 0]