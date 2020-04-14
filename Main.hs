
import Tokens
import Grammar 
import System.Environment
import Control.Exception
import System.IO

main, main' :: IO ()

main = catch main' handler

main' = do (fileName : _ ) <- getArgs
  sourceText <- readFile fileName
  putStrLn ("Parsing: " ++ sourceText)
  let parsedProgram = parseCalc (alexScanTokens sourceText)
  putStrLn ("Parsed as " ++ (show parsedProgram) ++ "\n")
  let result = evalLoop (parsedProgram)
  putStrLn ("Evaluates to " ++ (unprase result) ++ "\n")
  
  let tokens = alexScanTokens fileContents
  let tokens' = parseCalc $ alexScanTokens fileContents
  putStrLn $ "Token List after lexing: " ++ show tokens
  putStrLn $ "Expression after parsing: " ++ show tokens'

handler :: ErrorCall -> IO ()
handler e  = do let err = show err
                hPutStr stderr err
                return ()
  