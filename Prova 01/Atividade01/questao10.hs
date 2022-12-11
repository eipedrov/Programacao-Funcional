-- n = numero de recurções 
-- s = soma 
-- p = numeros positivos 

-- forma de entrada "numeros 0 0 0" 

numeros :: Int -> Float -> Int -> IO ()
numeros n s p = do 
    if n == 6 
        then do 
            putStr("Sao " ++ show(p) ++ " numeros positivos \n")
            putStr("A media dos valores e de " ++ show(s/6.0) ++ "\n")
        else do 
            a <- readLn :: IO Float
            if a > 0 
                then numeros t (s + a) (p + 1)
                else numeros t (s + a) p
    where 
        t = n + 1