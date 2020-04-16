{ 
module Tokens where 
}

%wrapper "posn" 
$digit = 0-9
-- digits      
$alpha = [a-zA-Z]    
-- alphabetic characters

tokens :-
$white+       ; 
  "--".*      ;
  Bool           { tok (\p s -> TokenTypeBool p)}
  true           { tok (\p s -> TokenTrue p)}
  false          { tok (\p s -> TokenFalse p)}
  null           { tok (\p s -> TokenNull p)}
  
  read           { tok (\p s -> TokenRead p)}
  write          { tok (\p s -> TokenWrite p)}

  if             { tok (\p s -> TokenIf p) }
  else           { tok (\p s -> TokenElse p) }
  while          { tok (\p s -> TokenWhile p) }

  array          { tok (\p s -> TokenArray p) }
  \.add          { tok (\p s -> TokenAdd p)
  \.length       { tok (\p s -> TokenLength p) }
  \.push         { tok (\p s -> TokenPush p) }
  \.pop          { tok (\p s -> TokenPop p) }
  \.indexOf      { tok (\p s -> TokenIndex p) }

  $digit+        { tok (\p s -> TokenInt p (read s)) } 
  $alpha [$alpha $digit \_ \’]*   { tok (\p s -> TokenVar p s) }

  \=             { tok (\p s -> TokenEq p) }
  \+             { tok (\p s -> TokenPlus p) }
  \-             { tok (\p s -> TokenMinus p) }
  \*             { tok (\p s -> TokenTimes p) }
  \/             { tok (\p s -> TokenDiv p) }
  \(             { tok (\p s -> TokenLParen p) }
  \)             { tok (\p s -> TokenRParen p) }

{
-- need to add tokens to control stream processing

-- Helper function
tok f p s = f p s

data Token =  
  TokenTypeBool AlexPosn Bool  |
  TokenTrue AlexPosn           |
  TokenFalse AlexPosn          |
  TokenNull AlexPosn           |

  TokenRead AlexPosn           |
  TokenWrite AlexPosn           |

  TokenIf AlexPosn             |
  TokenElse AlexPosn           |
  TokenWhile AlexPosn          |
 
  TokenArray AlexPosn          |
  TokenAdd AlexPosn            |
  TokenLength AlexPosn         |
  TokenPush AlexPosn           |
  TokenPop AlexPosn            |
  TokenIndex AlexPosn          |

  TokenInt AlexPosn Int        |
  TokenVar AlexPosn String     |

  TokenEq  AlexPosn            |
  TokenPlus AlexPosn           |
  TokenMinus AlexPosn          |
  TokenTimes AlexPosn          |
  TokenDiv AlexPosn            |

  TokenLParen AlexPosn         |
  TokenRParen AlexPosn         |
 
    deriving (Eq, Show)


tokenPosn :: Token -> String ) 
tokenPosn (TokenTypeBool (AlexPn a l c) _) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTrue  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenFalse  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenNull  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)

tokenPosn (TokenRead  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenWrite  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)

tokenPosn (TokenIf (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenElse (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenWhile (AlexPn a l c)) = show(l) ++ ":" ++ show(c)

tokenPosn (TokenArray (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenAdd (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLength (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenPush (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenPop (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenIndex (AlexPn a l c)) = show(l) ++ ":" ++ show(c)

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
