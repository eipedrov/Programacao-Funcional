verifica :: [Int] -> Int -> Bool -- ela vai verificar se existe um numero especifico inputado na lista em questao
verifica [] k = False
verifica (x:xs) k 
    | x == k = True
    | otherwise = verifica xs k 

inHelper :: [Int] -> [Int] -> [Int] -> [Int] -- funcao que vai criar uma lista que retorna os termos em comum das listas, de forma recursiva
inHelper [] [] zs = reverse zs 
inHelper xs ys zs = do
    let h = head xs
    if verifica ys (head xs) then do
        inHelper (tail xs) (tail ys) (h:zs)
    else inHelper (tail xs) (tail ys) zs

intersection :: [Int] -> [Int] -> [Int] -- funcao de input
intersection xs ys = inHelper xs ys []

-- Input: chamar a função intersection
-- inputar as duas lista : intersection [3,6,5,7] [9,7,5,1,3] ==> [3,5,7]