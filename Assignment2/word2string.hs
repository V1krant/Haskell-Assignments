word2string n = 
    if n < 1000
      then num2word3 n
        else if n < 1000000
           then num2word3 (n `div` 1000) ++ "thousand " ++ num2word3 (n `mod` 1000)
              else num2word3 (n `div` 1000000) ++ "million " ++ word2string (n `mod` 1000000)
--233 112 234

num2word3 0 = ""
num2word3 1 = "one "
num2word3 2 = "two "
num2word3 3 = "three "
num2word3 4 = "four "
num2word3 5 = "five "
num2word3 6 = "six "
num2word3 7 = "seven "
num2word3 8 = "eight "
num2word3 9 = "nine "
num2word3 10= "ten "
num2word3 11 = "eleven "
num2word3 12 ="twelve "
num2word3 13 ="thirteen "
num2word3 14 ="fourteen "
num2word3 15 ="fifteen "
num2word3 16 ="sixteen "
num2word3 17 ="seventeen "
num2word3 18 ="eighteen "
num2word3 19 ="nineteen "
num2word3 n = 
      if n < 30 
       then "twenty " ++ num2word3 (n-20)
        else if n < 40
         then  "thirty " ++ num2word3 (n-30)
           else if n < 50
            then  "forty " ++ num2word3 (n - 40)
               else if n < 60
                 then  "fifty " ++ num2word3 (n-50)
                   else if n < 70
                     then  "sixty " ++ num2word3 (n-60)
                       else if n < 80
                         then  "seventy " ++ num2word3 (n-70)
                           else if n < 90
                             then  "eighty " ++ num2word3 (n-80)
                                 else if n < 100
                                    then "ninety " ++ num2word3 (n-90)
                                       else if n `mod` 100 == 0
                                         then num2word3 (n `div` 100) ++ "hundred " ++ num2word3 (n - 100*(n `div` 100))
                                             else num2word3 (n `div` 100) ++ "hundred and " ++ num2word3 (n - 100*(n `div` 100))