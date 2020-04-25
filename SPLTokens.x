{ 
module SPLTokens where 
}

%wrapper "posn" 
$digit = 0-9
-- digits      
$alpha = [a-zA-Z]    
-- alphabetic characters

tokens :-
$white+       ; 
  "--".*      ;
  $digit+        { tok (\p s -> TokenInt p (read s)) } 
  let           { tok (\p s -> TokenLet p)} 
  in            { tok (\p s -> TokenIn p) }
  \=             { tok (\p s -> TokenEq p) }
  \+             { tok (\p s -> TokenPlus p) }
  \-             { tok (\p s -> TokenMinus p) }
  \*             { tok (\p s -> TokenTimes p) }
  \/             { tok (\p s -> TokenDiv p) }
  \(             { tok (\p s -> TokenLParen p) }
  \)             { tok (\p s -> TokenRParen p) }
  
  $alpha [$alpha $digit \_ \’]*   { tok (\p s -> TokenVar p s) }

{
-- need to add tokens to control stream processing

-- Helper function
tok f p s = f p s

data Token =  
  TokenLet AlexPosn        | 
  TokenIn  AlexPosn        | 
  TokenInt AlexPosn Int        |
  TokenVar AlexPosn String     |
  TokenEq  AlexPosn            |
  TokenPlus AlexPosn           |
  TokenMinus AlexPosn          |
  TokenTimes AlexPosn          |
  TokenDiv AlexPosn            |
  TokenLParen AlexPosn         |
  TokenRParen AlexPosn         
    deriving (Eq, Show)


tokenPosn :: Token -> String
tokenPosn (TokenLet (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenIn  (AlexPn a l c)) = show(l) ++ ":" ++ show(c) 
tokenPosn (TokenInt  (AlexPn a l c) _) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenVar (AlexPn a l c) _) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenEq  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenPlus  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenMinus  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTimes  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenDiv (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLParen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRParen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
}
