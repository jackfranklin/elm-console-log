module ConsoleLog (log) where

{-| This module provides a log function that converts what it's given to a string first, but returns the initial thing.

# Definition
@docs log
-}

import Debug

{-| Logs the given item to the console after converting it to string. Useful for
quickly wrapping something with this function so you can log it and debug your program. Takes a string that will be placed at the start of the log

  (log "myList" [1, 2, 3])

  Logs "[1, 2, 3]" to the console and returns [1, 2, 3].
-}
log : String -> a -> a
log taggedString x =
  let
    stringX = toString x
  in
    case (Debug.log taggedString stringX) of
      _ -> x

