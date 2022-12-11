lista :: Int -> [Int] -> Bool -- funcao que recebe um inteiro, uma lista e retorna um booleano
lista k (x:xs) -- variavel a ser comparada
    | x == k = True -- verificacao da variavel
    | length xs == 0 = False 
    | otherwise = lista k xs 

-- Input: lista 1[3,7,4,2] -> False; 1[3,7,4,2,1] -> True;
