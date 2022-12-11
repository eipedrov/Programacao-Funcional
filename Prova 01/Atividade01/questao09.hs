-- fucao que verifica se o numero e nulo, impar ou par
odd_even :: Int -> IO ()
odd_even n = do
    if n < 4 then do
        num <- readLn :: IO Int
        if (num/=0) then do
            if ((num `mod` 2) == 0 && (num/=0))
                then putStr "EVEN "
                else putStr "ODD "
        else return ()
        
        if num > 0
            then putStr "POSITIVE \n"
        else if num < 0 
            then putStr "NEGATIVE \n"
        else putStr "NULL \n"
        odd_even (n+1)
    else return ()
-- execucao
main = do odd_even 0