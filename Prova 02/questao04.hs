unicaOcorrencia:: Int -> [Int] -> Bool -- recebe um valor inteiro, uma lista e retorna um booleano
unicaOcorrencia k [] = False 
unicaOcorrencia k (x:xs) 
    | x == k = if (pertence k xs) then False else True -- se x for igual a k, se k pertencer a xs, retorno Falso, caso não verdadeiro
    | otherwise = unicaOcorrencia k xs

pertence :: Int -> [Int] -> Bool -- função que recebe um inteiro e uma lista e retorna um booleano
pertence a [] = False 
pertence a (j:i) -- variavel a ser verificada
    | (j == a) = True -- verificação da variavel 
    | otherwise = pertence a i

-- Input: chamar a função unicaOcorrencia:
-- numero a ser verificado e a lista EX: 2 [1,2,3,2] -> False; 2[2]