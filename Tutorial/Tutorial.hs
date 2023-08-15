import Data.List
import System.IO

--comment
{-
 sdaöfj
 asödfj
 -}

always5 :: Int
always5 = 5
 
sumOfNums = sum[1..1000]

firstMod = mod 5 4
secondMod = 5 `mod` 4

num9 = 9 :: Int
--sqrt braucht flot, deshalb muss num9 mit fromIntegral umgewandelt werden
sqrtOf9 = sqrt(fromIntegral num9)

trueAndFalse = True && False
trueOrFals = True || False

primeNumbers = [3, 5, 7, 11]

moreNumbers = primeNumbers ++ [13, 17, 19, 23, 29]

--other way to create a list
favNums = 2 : 7 : 21 : 66 : []

--Funktionen für Listen: überprüfen ob die List leer ist mit null nameOfList; auf das zweite/erste Element einer Liste zugreifen mit nameOfList !! 1 (1 ist der Index); head für den ersten Wert, last letzter Wert der List; init nameOfList, alles außer den letzten Wert kriegen; nachschauen ob ein Wert in der List ist: Wert `elem` nameOfList

--Werte werden nur berechnet, wenn sie benötigt werden
ifiniteList = [1, 2..]

filterList = filter (>5) moreNumbers

pow3List = [3^n | n <- [1..100]]

ich = ("Luca", 17)

main = do
  putStrLn "What's your name"
  name <- getLine
  putStrLn ("Hello " ++ name)


--Definition einer Funktion: erste beiden sind die Parameter, dann kokmmt der Output
addTwoNumbers :: Int -> Int -> Int
addTwoNumbers x y = x+y

factorial 0 = 1
factorial n = n * factorial (n-1)

istGerade n | n `mod` 2 == 0 = True | otherwise = False

lastN n = reverse(take n (reverse moreNumbers))
