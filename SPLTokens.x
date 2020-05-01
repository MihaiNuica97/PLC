{ 
module SPLTokens where 
}

%wrapper "posn" 
$digit = 0-9
-- digits      
$alpha = [a-zA-Z]    
-- alphabetic characters

$quote = \"

tokens :-
  $white+       ; 
  "--".*      ;
  [\n \;]+                        { tok (\p s -> TokenNewLine p)}
  [\-]?$digit+                    { tok (\p s -> TokenInt p (read s)) }
  $quote .* $quote                { tok (\p s -> TokenString p (tail (init s))) }
  var                             { tok (\p s -> TokenVar p)}
  (t|T)rue                        { tok (\p s -> TokenBool p True)  }
  (f|F)alse                       { tok (\p s -> TokenBool p False) }
  if                              { tok (\p s -> TokenIf p) }
  else                            { tok (\p s -> TokenElse p) }
  while                           { tok (\p s -> TokenWhile p) }
  \=                              { tok (\p s -> TokenEq p) }
  \+                              { tok (\p s -> TokenPlus p) }
  \-                              { tok (\p s -> TokenMinus p) }
  \*                              { tok (\p s -> TokenTimes p) }
  \/                              { tok (\p s -> TokenDiv p) }
  \(                              { tok (\p s -> TokenLParen p) }
  \)                              { tok (\p s -> TokenRParen p) }
  print                           { tok (\p s -> TokenPrint p)}  
  $alpha [$alpha $digit \_ \’]*   { tok (\p s -> TokenName p s) }

{
-- need to add tokens to control stream processing

-- Helper function
tok f p s = f p s

data Token =  
  TokenLet AlexPosn            | 
  TokenIn  AlexPosn            | 
  TokenInt AlexPosn Int        |
  TokenString AlexPosn String  |
  TokenIf AlexPosn             |
  TokenElse AlexPosn           |
  TokenWhile AlexPosn          |
  TokenBool AlexPosn Bool      |
  TokenVar  AlexPosn           |
  TokenName AlexPosn String    |
  TokenEq  AlexPosn            |
  TokenPlus AlexPosn           |
  TokenMinus AlexPosn          |
  TokenTimes AlexPosn          |
  TokenDiv AlexPosn            |
  TokenLParen AlexPosn         |
  TokenRParen AlexPosn         |
  TokenNewLine AlexPosn        |
  TokenPrint AlexPosn
    deriving (Eq, Show)


tokenPosn :: Token -> String
tokenPosn (TokenLet (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenIn  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)

tokenPosn (TokenIf (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenElse (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenWhile (AlexPn a l c)) = show(l) ++ ":" ++ show(c)

tokenPosn (TokenInt  (AlexPn a l c) _) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenString  (AlexPn a l c) _) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenBool  (AlexPn a l c) b) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenVar (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenName  (AlexPn a l c) _) = show(l) ++ ":" ++ show(c)

tokenPosn (TokenEq  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenPlus  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenMinus  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTimes  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenDiv (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLParen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRParen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenPrint (AlexPn a l c)) = show(l) ++ ":" ++ show(c)

tokenPosn (TokenNewLine (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
}
