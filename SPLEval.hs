module SPLEval where
import SPLGrammar

type Map = (String, Type)

type Stack = [Map]


eval :: [Exp] -> Stack -> IO Stack
eval [x] stack = evalExpr x stack
eval (x:xs) stack = do
    newStack <- evalExpr x stack
    eval xs newStack



evalExpr :: Exp -> Stack -> IO Stack
-- output to console
evalExpr (Print exp) stack = do 
    print (printVal exp)
    return stack


printVal :: Exp -> String
printVal (Bool b) = show b
printVal (Int i) = show i