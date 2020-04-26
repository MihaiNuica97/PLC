import SPLTokens
import SPLGrammar 
import SPLEval
import System.Environment
import Control.Exception
import System.IO
import Data.List
import Data.Char(digitToInt)

--main method code adapted from Julians provided tutorials

main :: IO ([Map])

main = catch main' noParse

main' = do (fileName : _ ) <- getArgs 
            {-- used for CMD input
           content <- getContents 
           let ints = intList content
           -} 

           -- reads a file, converts a single vertical stream to a list of ints
        --    sourceText <- readFile fileName
        --    putStrLn ("Parsing from file : " ++ fileName ++ "\n" ++ sourceText)
        --    let ints = convertToList (lines sourceText)
        --    putStrLn ("Showing vertical stream as int list" ++ (show ints))
           
           sourceText <- readFile fileName
           putStrLn ("Parsing : " ++ sourceText)
           let tokens = alexScanTokens sourceText
           putStrLn ("Tokens : " ++ (show tokens))
           let parsedProg = parseCalc tokens
           putStrLn ("Parsed as " ++ (show parsedProg) ++ "\n")
           eval parsedProg []
           --IGNORE THIS FOR NOW
           --let parsedProg = parseCalc (alexScanTokens sourceText)
           --putStrLn ("Parsed as " ++ (show parsedProg) ++ "\n")
           --let result = evalLoop (parsedProg)
           --putStrLn ("Evaluates to " ++ (unparse result) ++ "\n")
        
noParse :: ErrorCall -> IO ([Map])
noParse e = do let err =  show e
               hPutStr stderr err
               return ([])
 
-- convertToList :: [String] -> [Int]
-- convertToList [] = []
-- convertToList (x:xs) = map digitToInt x ++ intList xs 


