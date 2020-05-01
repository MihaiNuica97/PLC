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
    evalExpr(DeclareWithVal name (getValExp (getVar varName stack))) stack

evalExpr (DeclareWithVal name val) stack = do
    let stack' = declareVar name stack
    let stack'' = assignVar name val stack'
    return stack''

-- Assigns new value to already declared variable
-- Does not check if variable is already declared
evalExpr (Assign name (Lookup varName)) stack = 
    evalExpr (Assign name (getValExp (getVar varName stack))) stack

evalExpr (Assign name value) stack = do 
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
evalOp (Int x) = x


--operations on expresses
declareVar :: String -> Stack -> Stack
declareVar name stack = (name, Empty):stack

-- finds variable inside the stack and changes its value. Works with expressions
assignVar :: String -> Exp -> Stack -> Stack
assignVar name (Int value) stack = replaceVar (name,(TyInt value)) stack
assignVar name (String value) stack = replaceVar (name,(TyString value)) stack
assignVar name (Bool value) stack = replaceVar (name,(TyBool value)) stack

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


-- returns the value of a variable as an Exp to feed it back into the main loop
getValExp :: Map -> Exp
getValExp (name, TyInt val) = Int val
getValExp (name, TyBool val) = Bool val
getValExp (name, TyString val) = String val 


-- returns value stored in a variable as a String 
printVar :: Map -> String
printVar (name, TyInt val) = show val
printVar (name, TyBool val) = show val
printVar (name, TyString val) = val

-- returns free value as a String
printVal :: Exp -> String
printVal (Bool b) = show b
printVal (Int i) = show i
printVal (String s) = s