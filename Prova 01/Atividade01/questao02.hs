-- execucao
main = do
    putStr "n1: "
    a <- readLn
    putStr "n2: "
    b <- readLn
    print("PROD = " ++ show ((*)a b) )



    