module SPLEval where
import SPLGrammar
import Data.Char (digitToInt)

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
evalExpr (Print (Type exp)) stack = do 
    putStrLn (printVal exp)
    return stack

evalExpr (Print exp) stack = do
    putStrLn (printVal (evalTerminalExpr (exp,stack)))
    return stack

    
-- Declare empty variable
-- If variable is declared without an initial value, it is marked with "Empty"
-- Does NOT check if variable is already declared
evalExpr (Declare var) stack = do
    putStrLn ("Variable " ++ var ++ " declared")
    return stack

-- Declare with value of an already existing variable
evalExpr (DeclareWithVal name (Lookup varName)) stack = 
    evalExpr(DeclareWithVal name (Type (snd (getVar varName stack)))) stack
    
-- Declare with an absolute value
evalExpr (DeclareWithVal name (Type val)) stack = do
    let stack' = declareVar name stack
    let stack'' = assignVar name val stack'
    return stack''

-- Declare with the result from reading a line from stdin    
evalExpr (DeclareWithVal name ReadLine) stack = do
    line <- getLine
    let headVal = head (map digitToInt line) 
    -- this line is just a temp solution to parse an Int (the first character of the line) to assignVar below
    let stack' = declareVar name stack
    let stack'' = assignVar name (Int headVal) stack'
    return stack''

-- Declare with result of an operation
evalExpr (DeclareWithVal name exp) stack = 
    evalExpr(DeclareWithVal name (Type (evalTerminalExpr (exp,stack)))) stack


-- Assigns new value to already declared variable
-- Does NOT check if variable is already declared
evalExpr (Assign name (Lookup varName)) stack = 
    evalExpr (Assign name (Type (snd (getVar varName stack)))) stack

-- Assign with absolute value
evalExpr (Assign name (Type value)) stack = do 
    return (assignVar name value stack)

-- Assign with result of an operation
evalExpr (Assign name exp) stack = 
    evalExpr (Assign name (Type (evalTerminalExpr (exp,stack)))) stack

--Read and print out a single line e.g. readLine;
evalExpr (readLine) stack = do
    line <- getLine
    putStrLn("line read" ++ line)
    return stack

-- General Operations
evalTerminalExpr:: (Exp,Stack) -> Type
evalTerminalExpr((NOT x),stack) = (evalBool ((NOT x),stack))
evalTerminalExpr ((AND x1 x2),stack) = (evalBool ((AND x1 x2),stack))
evalTerminalExpr ((OR x1 x2),stack) = (evalBool ((OR x1 x2),stack))
evalTerminalExpr ((IsEq x1 x2),stack) = (evalBool ((IsEq x1 x2),stack))
evalTerminalExpr ((IsLess x1 x2),stack) = (evalBool ((IsLess x1 x2),stack))
evalTerminalExpr ((IsMore x1 x2),stack) = (evalBool ((IsMore x1 x2),stack))
evalTerminalExpr (exp,stack) = (Int (evalOp (exp,stack)))

    
-- Arithmetic Operators, now with variables!
evalOp :: (Exp,Stack) -> Int
evalOp ((Plus x1 x2),stack) = (evalOp (x1,stack)) + (evalOp (x2,stack))
evalOp ((Minus x1 x2),stack) = (evalOp (x1,stack)) - (evalOp (x2,stack))
evalOp ((Times x1 x2),stack) = (evalOp (x1,stack)) * (evalOp (x2,stack))
evalOp ((Div x1 x2),stack) = div (evalOp (x1,stack)) (evalOp (x2,stack))
evalOp ((Type (Int x)),stack) = x
evalOp ((Lookup name),stack) = evalOp ((Type (snd (getVar name stack))),stack)

-- Boolean operations
evalBool :: (Exp,Stack) -> Type
evalBool (Type (Bool b),stack) = (Bool b)
evalBool (Type (String s),stack) = (String s)
evalBool (Type (Int x),stack) = (Int x)
evalBool ((AND x1 x2),stack) = (andType ((evalBool(x1,stack)),(evalBool(x2,stack))))
evalBool ((OR x1 x2),stack) = (orType ((evalBool(x1,stack)),(evalBool(x2,stack))))
evalBool ((NOT exp),stack) =  negateType(evalBool(exp,stack))
evalBool ((Lookup name),stack) = evalBool((Type (snd (getVar name stack))),stack)
evalBool ((IsEq x1 x2),stack) = (Bool ((evalBool (x1,stack)) == (evalBool(x2,stack))))
evalBool ((IsLess x1 x2),stack) = (lessType ((evalBool(x1,stack)),(evalBool(x2,stack))))
evalBool ((IsMore x1 x2),stack) = (moreType ((evalBool(x1,stack)),(evalBool(x2,stack))))
evalBool ((Plus x1 x2),stack) = (Int (evalOp ((Plus x1 x2),stack)))
evalBool ((Minus x1 x2),stack) = (Int (evalOp ((Minus x1 x2),stack)))
evalBool ((Times x1 x2),stack) = (Int (evalOp ((Times x1 x2),stack)))
evalBool ((Div x1 x2),stack) = (Int (evalOp ((Div x1 x2),stack)))


negateType :: Type -> Type
negateType (Bool b) = Bool (not b)

andType :: (Type,Type) -> Type
andType ((Bool b1),(Bool b2)) = (Bool (b1 && b2))

orType :: (Type,Type) -> Type
orType ((Bool b1),(Bool b2)) = (Bool (b1 || b2))

lessType :: (Type,Type) -> Type
lessType ((Int x),(Int y)) = (Bool (x < y))

moreType :: (Type,Type) -> Type
moreType ((Int x),(Int y)) = (Bool (x > y))


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