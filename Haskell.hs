import System.Random (randomRIO)

check :: Int -> Int -> Int -> IO ()
check ans guess count
  | guess < ans = do 
      putStrLn "Too low!"
      loop ans (count + 1)

  | guess > ans = do 
      putStrLn "Too high!"
      loop ans (count + 1)

  | otherwise = do
    putStrLn $ "Correct! You took " ++ show count ++ " guesses."

loop :: Int -> Int -> IO ()
loop ans count = do
  putStrLn "Guess the number from 0 to 100: "
  guesstring <- getLine
  let guess = read guesstring :: Int
  check ans guess count

main :: IO ()
main = do
  ans <- randomRIO (0, 100) :: IO Int
  loop ans 1
  -- print ans