module SPLEval where
import SPLGrammar

type Map = (String, Type)
type Stack = [Map]


eval :: [Exp] -> [String] -> Stack -> IO Stack
eval [] file stack = error "no instructions provided in spl file"
eval expr [] stack = error "no contents in text file to work with"
eval [x] file stack = evalExpr x stack
eval (x:xs) file stack = do
    newStack <- evalExpr x stack
    eval xs file newStack

evalExpr :: Exp -> Stack -> IO Stack
evalExpr (Print (Lookup exp)) stack = do 
    let foundVar = getVar exp stack
    putStrLn (printVar foundVar)  
    return stack


-- output to console
evalExpr (Print (Type exp)) stack = do 
    putStrLn (printVal exp)
    return stack

evalExpr (Print exp) stack = do
    putStrLn (printVal (evalTerminalExpr (exp,stack)))
    return stack

-- Declare empty variable
-- If variable is declared without an initial value, it is marked with "Empty"
-- Does not check if variable is already declared
evalExpr (Declare var) stack = do
    putStrLn ("Variable " ++ var ++ " declared")
    return (declareVar var stack)

-- Declare with value of an already existing variable
evalExpr (DeclareWithVal name (Lookup varName)) stack = 
    evalExpr(DeclareWithVal name (Type (snd (getVar varName stack)))) stack

-- Declare with an absolute value
evalExpr (DeclareWithVal name (Type val)) stack = do
    let stack' = declareVar name stack
    let stack'' = assignVar name val stack'
    return stack''

-- Declare with result of an operation
evalExpr (DeclareWithVal name exp) stack = 
    evalExpr(DeclareWithVal name (Type (evalTerminalExpr (exp,stack)))) stack


-- Assigns new value to already declared variable
-- Does not check if variable is already declared
evalExpr (Assign name (Lookup varName)) stack = 
    evalExpr (Assign name (Type (snd (getVar varName stack)))) stack

-- Assign with absolute value
evalExpr (Assign name (Type value)) stack = do 
    return (assignVar name value stack)

{- If Else statements
evalExpr (IfElse e1 e2) stack = do
    if e1 == True 
        then (evalExpr e1 stack) 
        else (evalExpr e2 stack)
    return stack

evalExpr (while e) stack = do
    if e == True 
        then (evalExpr e nextLine)
        else (evalExpr e nextBlock)
    return stack
    -}


-- Assign with result of an operation
evalExpr (Assign name exp) stack = 
    evalExpr (Assign name (Type (evalTerminalExpr (exp,stack)))) stack




-- General Operations
evalTerminalExpr:: (Exp,Stack) -> Type
evalTerminalExpr (exp,stack) = (Int (evalOp (exp,stack)))

    
-- Arithmetic Operators, now with variables!
evalOp :: (Exp,Stack) -> Int
evalOp ((Plus x1 x2),stack) = (evalOp (x1,stack)) + (evalOp (x2,stack))
evalOp ((Minus x1 x2),stack) = (evalOp (x1,stack)) - (evalOp (x2,stack))
evalOp ((Times x1 x2),stack) = (evalOp (x1,stack)) * (evalOp (x2,stack))
evalOp ((Div x1 x2),stack) = div (evalOp (x1,stack)) (evalOp (x2,stack))
evalOp ((Type (Int x)),stack) = x
evalOp ((Lookup name),stack) = evalOp ((Type (snd (getVar name stack))),stack)

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
printVal :: Type -> String
printVal (Bool b) = show b
printVal (Int i) = show i
printVal (String s) = s
