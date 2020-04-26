import SPLTokens
import SPLGrammar 
import SPLInterpreter 
import System.Environment
import Control.Exception
import System.IO
import Data.List
import Data.Char(digitToInt)

--main method code adapted from Julians provided tutorials

main :: IO ()

main = catch main' handler

main' = do (fileName : _ ) <- getArgs 
            {-- used for CMD input
           content <- getContents 
           let ints = intList content
           -} 

           -- reads a file, converts a single vertical stream to a list of ints
           sourceText <- readFile fileName
           putStrLn ("Parsing from file : " ++ fileName ++ "\n" ++ sourceText)
           let ints = convertToMatrix (lines sourceText)
           putStrLn ("Showing vertical stream as int list" ++ (show ints))
           
           --IGNORE THIS FOR NOW
           --let parsedProg = parseCalc (alexScanTokens sourceText)
           --putStrLn ("Parsed as " ++ (show parsedProg) ++ "\n")
           --let result = evalLoop (parsedProg)
           --putStrLn ("Evaluates to " ++ (unparse result) ++ "\n")
        
handler :: ErrorCall -> IO ()
handler e  = do let err = show err
                hPutStr stderr err
                return ()
 

convertToMatrix :: [String] -> [[Int]]
convertToMatrix [] = []
convertToMatrix (x:xs) = (convertRow $ words x) : (convertToMatrix xs)

convertRow :: [String] -> [Int]
convertRow [] = []
convertRow (x:xs) = [(read x :: Int)] ++ convertRow xs






--OLD CODE NOT NEEDED ATM
convertToList :: [String] -> [Int]
convertToList [] = []
convertToList (x:xs) =(map digitToInt x) ++ (convertToList xs) 

