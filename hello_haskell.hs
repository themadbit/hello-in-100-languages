{-
language: haskell
author: *haskell was developed by a committee and not a single person
history and fun fact: Haskell, that first appeared in 1990, is purely functional, statically type, and lazy. Coming from imperative programming, Haskell will leave you questioning a lot of things, including how functions are declared, and called.
The language is named after the logician Haskell Curry.
-}

-- execution instructions: ghc --make hello_haskell.hs
--                         ./hello_haskell.hs
-- ghci
--     :l hello_haskell
--     main
main = do
  putStrLn "Hello, World :)"
