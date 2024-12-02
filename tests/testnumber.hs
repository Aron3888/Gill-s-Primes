-- a test harness for the number function of grillsprimes.hs
-- it will print 5 if the number function is correct
tester :: Int
tester = n5
  where
    n1 = x_unit(number [] == 0) 0
    n2 = x_unit(number [5] == 5) n1
    n3 = x_unit(number [4 ,7] == 47) n2
    n4 = x_unit(number [6 ,2 ,0] == 620) n3
    n5 = x_unit(number [0 ,2 ,7 ,4] == 274) n4

x_unit x n = if x then n +1 else n
