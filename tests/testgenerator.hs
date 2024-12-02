-- tests for generator if presumably produces a list of 3-tuples of 3-element lists of integers
x_generator :: Int
x_generator = n10
  where
    n1 = x_unit(elem ([2 ,4 ,1] ,[3 ,6 ,5] ,[0 ,7 ,8]) generator ) 0
    n2 = x_unit(elem ([4 ,1 ,6] ,[3 ,0 ,2] ,[5 ,7 ,8]) generator ) n1
    n3 = x_unit(elem ([1 ,0 ,5] ,[3 ,6 ,4] ,[2 ,7 ,8]) generator ) n2
    n4 = x_unit(elem ([1 ,6 ,2] ,[7 ,3 ,5] ,[0 ,4 ,8]) generator ) n3
    n5 = x_unit(elem ([8 ,6 ,4] ,[3 ,5 ,2] ,[0 ,7 ,1]) generator ) n4
    n6 = x_unit(notElem ([0 ,2 ,4] ,[3 ,5 ,2] ,[9 ,7 ,1]) generator ) n5
    n7 = x_unit(notElem ([9 ,8 ,7] ,[0 ,1 ,2] ,[3 ,4 ,8]) generator ) n6
    n8 = x_unit(notElem ([0 ,1 ,2] ,[0 ,3 ,4] ,[4 ,7 ,6]) generator ) n7
    n9 = x_unit(notElem ([9 ,8 ,7] ,[6 ,5 ,4] ,[9 ,2 ,1]) generator ) n8
    n10 = x_unit(notElem ([0 ,8 ,7] ,[0 ,1 ,2] ,[0 ,4 ,6]) generator ) n9

x_unit x n = if x then n +1 else n
