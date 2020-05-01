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
           let parsedProg = reverse (parseCalc tokens)
           putStrLn ("Parsed as " ++ (show parsedProg) ++ "\n")
        
           --this is to accept file contents from stdin although use of read is non lazy!
           {- contents <- getContents 
           let ints = convertToMatrix (lines contents) --converts to a matrix
           putStrLn ("Loaded contents of text file as a matrix: " ++ (show ints))
           
           --tranposes matrix e.g [[row1], [row2]...] -> [[col1], [col2]...]
           let streams = transpose (ints)
           putStrLn ("Tranposing matrix to represent vertical streams " ++ (show streams))
           -}

           contents <- getContents
           --delivers a list of lines into CEK machine
           eval parsedProg (lines contents) []
        
           --do something to spit out result

        
noParse :: ErrorCall -> IO ([Map])
noParse e = do let err =  show e
               hPutStr stderr err
               return ([])
 
--Creates a matrix of [[row1], [row2], [row3]...]
convertToMatrix :: [String] -> [[Int]]
convertToMatrix [] = []
convertToMatrix (x:xs) = (convertRow $ words x) : (convertToMatrix xs)

--converts a single line/row to a list of ints USE OF READ IS NON LAZY
convertRow :: [String] -> [Int]
convertRow [] = []
convertRow (x:xs) = [(read x :: Int)] ++ convertRow xs