module Main where

import Data.List (intercalate)
import qualified Data.Map.Strict as M
import Lang.Imp.Ast
import Lang.Imp.Interpreter
import Lang.Imp.Parser
import System.Environment (getArgs)

main :: IO ()
main = do
  [fileName] <- getArgs
  content <- readFile fileName
  putStrLn "Parsed file:"
  print $ parseImp content