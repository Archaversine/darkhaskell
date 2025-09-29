module DarkHaskell.Ciphers.Rot13 where

import Data.Char (isLetter)

-- | Shift a character, respecting case
--
-- Keeps non-letter characters the same
shiftChar :: Char -> Char
shiftChar 'z' = 'a'
shiftChar 'Z' = 'A'
shiftChar c 
    | isLetter c = succ c
    | otherwise  = c

-- | Same as @shiftChar@, but can repeat @n@ times.
shiftCharBy :: Int -> Char -> Char
shiftCharBy n c = iterate shiftChar c !! n

-- | ROT13 cipher
--
-- Shifts all letters forward by 13
-- @rot13@ composed with itself is identity
rot13 :: String -> String
rot13 = map (shiftCharBy 13)

