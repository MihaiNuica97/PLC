module SPLEval where
import SPLGrammar

type Map = (String, Type)
type Stack = [Map]


eval :: [Exp] -> Stack -> IO Stack
eval [x] stack = evalExpr x stack
eval (x:xs)  stack = do
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

evalExpr (DeclareWithVal name (Lookup varName)) stack = 
    evalExpr(DeclareWithVal name (Type (snd (getVar varName stack)))) stack

evalExpr (DeclareWithVal name (Type val)) stack = do
    let stack' = declareVar name stack
    let stack'' = assignVar name val stack'
    return stack''

-- Assigns new value to already declared variable
-- Does not check if variable is already declared
evalExpr (Assign name (Lookup varName)) stack = 
    evalExpr (Assign name (Type (snd (getVar varName stack)))) stack

evalExpr (Assign name (Type value)) stack = do 
    return (assignVar name value stack)


-- Arithmetic Operators
evalExpr (Plus x1 x2) stack = do
    let result = evalOp(Plus x1 x2)
    putStrLn (show result)
    return stack

evalExpr (Minus x1 x2) stack = do
    let result = evalOp(Minus x1 x2)
    putStrLn (show result)
    return stack    

evalExpr (Times x1 x2) stack = do
    let result = evalOp(Times x1 x2)
    putStrLn (show result)
    return stack
    
evalExpr (Div x1 x2) stack = do
    let result = evalOp(Div x1 x2)
    putStrLn (show result)
    return stack  

    

evalOp :: Exp -> Int
evalOp (Plus x1 x2) = (evalOp x1) + (evalOp x2)
evalOp (Minus x1 x2) = (evalOp x1) - (evalOp x2)
evalOp (Times x1 x2) = (evalOp x1) * (evalOp x2)
evalOp (Div x1 x2) = div (evalOp x1) (evalOp x2)
evalOp (Type (Int x)) = x



--operations on expresses
declareVar :: String -> Stack -> Stack
declareVar name stack = (name, Empty):stack

-- finds variable inside the stack and changes its value. Works with expressions
assignVar :: String -> Type -> Stack -> Stack
assignVar name (Int value) stack = replaceVar (name,(Int value)) stack
assignVar name (String value) stack = replaceVar (name,(String value)) stack
assignVar name (Bool value) stack = replaceVar (name,(Bool value)) stack

-- takes a variable, replaces the value in the stack and returns changed stack.
-- utility function for assignVar
replaceVar :: Map -> Stack -> Stack
replaceVar (name,value) ((mapName,mapValue):maps)
    | name == mapName = ((mapName,value):(replaceVar (name,value) maps))
    | otherwise = ((mapName,mapValue):(replaceVar (name,value) maps))
replaceVar map [] = []

-- Finds variable inside the stack by given name
getVar :: String -> Stack -> Map
getVar name stack = head(filter ((==name).fst) stack) 




-- returns value stored in a variable as a String 
printVar :: Map -> String
printVar (name, String val) = val
printVar (name, Int val) = show val
printVar (name, Bool val) = show val
printVar (name, Empty) = "Null Value"

-- returns free value as a String
printVal :: Exp -> String
printVal (Type (Bool b)) = show b
printVal (Type (Int i)) = show i
printVal (Type (String s)) = s
