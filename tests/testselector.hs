-- tests that satisfies the certain conditions in selector of grillsprimes.hs
x_selector :: Int
x_selector = n10
  where
    n1 = x_unit(selector ([1 ,5 ,7] ,[2 ,8 ,3] ,[4 ,0 ,9]) ) 0
    n2 = x_unit(selector ([4 ,0 ,9] ,[2 ,8 ,3] ,[1 ,5 ,7]) ) n1
    n3 = x_unit(not(selector ([1 ,0 ,9] ,[2 ,8 ,3] ,[4 ,5 ,7]) ) ) n2
    n4 = x_unit(not(selector ([5 ,4 ,7] ,[2 ,8 ,3] ,[0 ,1 ,9]) ) ) n3
    n5 = x_unit(not(selector ([8 ,6 ,4] ,[3 ,5 ,2] ,[0 ,7 ,1]) ) ) n4
    n6 = x_unit(not(selector ([1 ,5 ,7] ,[0 ,2 ,9] ,[8 ,6 ,3]) ) ) n5
    n7 = x_unit(not(selector ([0 ,8 ,9] ,[2 ,6 ,3] ,[5 ,7 ,1]) ) ) n6
    n8 = x_unit(not(selector ([7 ,5 ,1] ,[6 ,8 ,3] ,[0 ,2 ,9]) ) ) n7
    n9 = x_unit(not(selector ([1 ,9 ,7] ,[5 ,2 ,0] ,[8 ,4 ,3]) ) ) n8
    n10 = x_unit(not(selector ([0 ,8 ,9] ,[4 ,1 ,2] ,[7 ,3 ,5]) ) ) n9

x_unit x n = if x then n +1 else n
