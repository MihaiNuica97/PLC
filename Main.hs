import SPLTokens
import SPLGrammar 
import SPLInterpreter 
import System.Environment
import Control.Exception
import System.IO

--main method code adapted from Julians provided tutorials

main :: IO ()

main = catch main' handler

main' = do (fileName : _ ) <- getArgs 
           sourceText <- readFile fileName
           putStrLn ("Parsing : " ++ sourceText)
           let parsedProg = parseCalc (alexScanTokens sourceText)
           putStrLn ("Parsed as " ++ (show parsedProg) ++ "\n")
           --let result = evalLoop (parsedProg)
           --putStrLn ("Evaluates to " ++ (unparse result) ++ "\n")
        
handler :: ErrorCall -> IO ()
handler e  = do let err = show err
                hPutStr stderr err
                return ()
  