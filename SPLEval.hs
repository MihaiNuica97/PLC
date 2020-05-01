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
evalExpr (Print (Lookup exp)) stack = do 
    let foundVar = getVar exp stack
    putStrLn (printVar foundVar)  
    return stack

-- output to console
evalExpr (Print exp) stack = do 
    putStrLn (printVal exp)
    return stack

-- Declare empty variable
-- If variable is declared without an initial value, it is marked with "Empty"
-- Does not check if variable is already declared
evalExpr (Declare var) stack = do
    putStrLn ("Variable " ++ var ++ " declared")
    return (declareVar var stack)

evalExpr (DeclareWithVal name val) stack = do
    let stack' = declareVar name stack
    let stack'' = assignVar name val stack'
    return stack''
-- Assigns new value to already declared variable
-- Does not check if variable is already declared
evalExpr (Assign name value) stack = do 
    return (assignVar name value stack)



declareVar :: String -> Stack -> Stack
declareVar name stack = (name, Empty):stack

assignVar :: String -> Exp -> Stack -> Stack
assignVar name (Int value) stack = replaceVar (name,(TyInt value)) stack
assignVar name (String value) stack = replaceVar (name,(TyString value)) stack
assignVar name (Bool value) stack = replaceVar (name,(TyBool value)) stack


replaceVar :: Map -> Stack -> Stack
replaceVar (name,value) ((mapName,mapValue):maps)
    | name == mapName = ((mapName,value):(replaceVar (name,value) maps))
    | otherwise = ((mapName,mapValue):(replaceVar (name,value) maps))
replaceVar map [] = []

getVar :: String -> Stack -> Map
getVar name stack = head(filter ((==name).fst) stack) 


printVal :: Exp -> String
printVal (Bool b) = show b
printVal (Int i) = show i
printVal (String s) = s

printVar :: Map -> String
printVar (name, TyInt val) = show val
printVar (name, TyBool val) = show val
printVar (name, TyString val) = val