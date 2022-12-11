verifica :: [Int] -> Int -> Bool -- funcao recebe uma lista, um inteiro e retorna um booleano, para verificar se o valor existe na lista
verifica [] k = False -- verificacao se a lista esta vasia 
verifica (x:xs) k 
    | x == k = True -- verificacao do termo repetido
    | otherwise = verifica xs k 

removeHelper :: [Int] -> [Int] -> [Int] -- funcao que ira retirar os valores repetidos da lista 
removeHelper [] ys = reverse ys
removeHelper (x : xs) ys = do
    if not (verifica ys x) 
        then do
            removeHelper xs (x:ys)
    else 
        removeHelper xs ys

removeRepetidos :: [Int] -> [Int]
removeRepetidos xs = removeHelper xs []


-- Input: chamar a função removerRepetidos:
-- inputar a lista : [7,4,3,5,7,4,4,6,4,1,2] ==> [7,4,3,5,6,1,2]
