import SPLTokens
import SPLGrammar 
import SPLEval
import System.Environment
import Control.Exception
import System.IO
import Data.List
--main method code adapted from Julians provided tutorials

main :: IO ([Map])

main = catch main' noParse

main' = do (fileName : _ ) <- getArgs 
           sourceText <- readFile fileName
           putStrLn ("Parsing from file : " ++ fileName ++ "\n" ++ sourceText)
           let tokens = alexScanTokens sourceText
           putStrLn ("Tokens : " ++ (show tokens))
           let parsedProg = (parseCalc tokens)
           putStrLn ("Parsed as " ++ (show parsedProg) ++ "\n")
           eval parsedProg []
        
        
noParse :: ErrorCall -> IO ([Map])
noParse e = do let err =  show e
               hPutStr stderr err
               return ([])