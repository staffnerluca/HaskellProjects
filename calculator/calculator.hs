import System.Exit (exitSuccess)
main :: IO ()
main = do
    putStrLn "First number: "
    input <- getLine
    let firstNumber = read input :: Double

    putStrLn "Type of calculation (+, -, *, /, %): "
    ty <- getLine

    putStrLn "Second number: "
    inp <- getLine
    let secondNumber = read inp :: Double

    if ty == "+"
        then putStrLn $ "Result: " ++ show (firstNumber + secondNumber)
    else if ty == "-"
        then putStrLn $ "Result: " ++ show (firstNumber - secondNumber)
    else if ty == "*"
        then putStrLn $ "Result: " ++ show (firstNumber * secondNumber)
    else if ty == "/"
        then putStrLn $ "Result: " ++ show (firstNumber / secondNumber)
    else if ty == "%"
        then do
            let fInt = round firstNumber :: Integer
                sInt = round secondNumber :: Integer
            putStrLn $ "Result: " ++ show (fInt `mod` sInt)
    else putStrLn "Something went wrong"

    putStrLn "Press e to exit"
    exit <- getLine
    if exit == "e" then exitSuccess
    else main
