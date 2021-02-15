module Main

greet : IO ()
greet = do putStr "What is your name? "
           name <- getLine
           putStrLn ("Hello, dear " ++ name)
