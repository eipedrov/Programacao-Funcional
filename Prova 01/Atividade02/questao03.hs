-- na função f1 iremos receber valores inteiros, onde
-- receberemos um limite de linhas, e iremos imprimir
-- em cada linha 3 numeros e o quarto termo será a string "PUM"


f1 :: Int -> Int -> Int -> Int -> IO ()
f1 l lm n o = do
    if (l /= _lMax) then do
    if (n /= _o)
        then do
            putStr (" " ++ show(n))
            f1 l lm _n o
        else do 
            putStr " PUM\n"
            f1 (l+1) lm _n (_n+2)
    else putStr ""
    where
        _o    = (o+1)
        _n    = (n+1)
        _lMax = (lm + 1)

main = do f1
