module Main where

fizzbuzz :: Integer -> String
fizzbuzz i
  | mod i 15 == 0 = "Fizzbuzz"
  | mod i 3 == 0 = "Fizz"
  | mod i 5 == 0 = "Buzz"
  | otherwise = show i 
  
fbList :: [Integer] -> [String]
fbList [] = []
fbList (x:xs) = [fizzbuzz x] ++ fbList xs

main = do
  putStrLn "Hello, World!"
  -- call fizzbuzz for 1 to 100
  mapM_ putStrLn (fbList [1..100])