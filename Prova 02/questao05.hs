maiores::Int->[Int]->[Int] -- função que recebe um inteiro e uma lista e retorna uma lista
maiores k [] = []
maiores k (x:xs) = if x > k then x : maiores k xs else maiores k xs -- verificação dos termos, se os 
                                                                    -- elementos da lista forem maiores que o elemento comprado 
                                                                    -- a 2 lista vai receber esses valores
-- Input: chamar a função maiores:
-- numero a ser verificado e a lista EX: 10[4,6,30,3,15,3,10,7]