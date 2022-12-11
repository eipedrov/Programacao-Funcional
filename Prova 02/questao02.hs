maior :: Int -> [Int] -> Int -- funcao que recebe um inteiro uma lista e retorna um inteiro
maior k (x:xs) -- variavel a ser comparada
    | length xs == 0 = if k > x then k else x -- verificacao do maior termo
    | k > x = maior k xs 
    | k < x = maior x xs

lista :: [Int] -> Int
lista (x:xs) = maior x xs

-- Input: chamar a função maior:
-- numero a ser verificado e a lista EX: [3,7,4,2] -> 7;
