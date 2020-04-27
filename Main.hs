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
           sourceText <- readFile fileName
           putStrLn ("Parsing from file : " ++ fileName ++ "\n" ++ sourceText)
           let ints = convertToMatrix (lines sourceText)
           putStrLn ("Showing vertical stream as int list" ++ (show ints))
           
           --tranposes matrix e.g [[row1], [row2]...] -> [[col1], [col2]...]
           let streams = transpose (ints)
           putStrLn ("Tranposing matrix to represent streams " ++ (show streams))

           
           sourceText <- readFile fileName
           putStrLn ("Parsing : " ++ sourceText)
           let tokens = alexScanTokens sourceText
           putStrLn ("Tokens : " ++ (show tokens))
           let parsedProg = parseCalc tokens
           putStrLn ("Parsed as " ++ (show parsedProg) ++ "\n")
           eval parsedProg []
        
noParse :: ErrorCall -> IO ([Map])
noParse e = do let err =  show e
               hPutStr stderr err
               return ([])
 
--Creates a matrix of [[row1], [row2], [row3]...]
convertToMatrix :: [String] -> [[Int]]
convertToMatrix [] = []
convertToMatrix (x:xs) = (convertRow $ words x) : (convertToMatrix xs)

--converts a single line/row to a list of ints 
convertRow :: [String] -> [Int]
convertRow [] = []
convertRow (x:xs) = [(read x :: Int)] ++ convertRow xs


