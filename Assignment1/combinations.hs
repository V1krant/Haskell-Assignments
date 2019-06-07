import Data.List (tails)

combinations :: Int -> [a] -> [[a]]
combinations 0 _  = [ [] ]
-- combinations 3 xs = [ [x1,x2,x3] | x1 <- xs, x2 <- xs, x3 <- xs, x1 < x2 , x2<x3 ]
combinations n xs = [y : ys | y : xs <- tails xs,  ys <- combinations (n-1) xs]