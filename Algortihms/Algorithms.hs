module Main where


bubbleSort :: Ord a => [a] -> [a]
bubbleSort lis = iB lis (length lis)

iB :: Ord a => [a] -> Int -> [a]
iB ls 0 = ls
iB ls n = iB (bubble ls) (n-1)

bubble :: Ord a => [a] -> [a]
bubble [] = []
bubble [x] = [x]
bubble(x:y:rest)
  | x > y = y : bubble (x:rest)
  | x <= y = x : bubble(y:rest)

main :: IO ()
main = do
  putStr "Choose your Algorithm: 1) Bubble Sort"
  alg <- getLine
  let algo = read alg :: Int
  let ls = [234, 5, 2, 5, 243]
  if algo == 1 then print (bubbleSort ls)
  else putStr "Counting Sort is coming"
