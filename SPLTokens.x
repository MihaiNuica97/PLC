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
  [\;]+                        { tok (\p s -> TokenNewLine p)}
  [\-]?$digit+                    { tok (\p s -> TokenInt p (read s)) }
  $quote .* $quote                { tok (\p s -> TokenString p (tail (init s))) }
  var                             { tok (\p s -> TokenVar p)}
  (t|T)rue                        { tok (\p s -> TokenBool p True)  }
  (f|F)alse                       { tok (\p s -> TokenBool p False) }
  \=                              { tok (\p s -> TokenEq p)}
  \==                             { tok (\p s -> TokenIsEq p)}
  \&&                             { tok (\p s -> TokenAND p)}
  \|\|                            { tok (\p s -> TokenOR p)}
  \<                              { tok (\p s -> TokenLess p)}
  \>                              { tok (\p s -> TokenMore p)}
  \<\=                             { tok (\p s -> TokenLessEq p)}
  \>\=                             { tok (\p s -> TokenMoreEq p)}
  \!                              { tok (\p s -> TokenNOT p)}
  \+                              { tok (\p s -> TokenPlus p) }
  \-                              { tok (\p s -> TokenMinus p) }
  \*                              { tok (\p s -> TokenTimes p) }
  \/                              { tok (\p s -> TokenDiv p) }
  \(                              { tok (\p s -> TokenLParen p) }
  \)                              { tok (\p s -> TokenRParen p) }
  \{                              { tok (\p s -> TokenLCurly p) }
  \}                              { tok (\p s -> TokenRCurly p) }
  \[                              { tok (\p s -> TokenLStraight p) }
  \]                              { tok (\p s -> TokenRStraight p) }
  \,                              { tok (\p s -> TokenComma p) }
  \.                              { tok (\p s -> TokenDot p) }
  length                          { tok (\p s -> TokenLength p) }
  print                           { tok (\p s -> TokenPrint p)} 
  readLine                        { tok (\p s -> TokenReadLine p)}
  if                              { tok (\p s -> TokenIf p) }
  else                            { tok (\p s -> TokenElse p) }  
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
  TokenBool AlexPosn Bool      |
  TokenVar  AlexPosn           |
  TokenName AlexPosn String    |
  TokenEq  AlexPosn            |
  TokenIsEq AlexPosn           |
  TokenAND AlexPosn            |
  TokenOR AlexPosn             |
  TokenLess AlexPosn           |
  TokenMore AlexPosn           |
  TokenLessEq AlexPosn         |
  TokenMoreEq AlexPosn         |
  TokenNOT AlexPosn            |
  TokenPlus AlexPosn           |
  TokenMinus AlexPosn          |
  TokenTimes AlexPosn          |
  TokenDiv AlexPosn            |
  TokenLParen AlexPosn         |
  TokenRParen AlexPosn         |
  TokenLCurly AlexPosn         |
  TokenRCurly AlexPosn         |
  TokenLStraight AlexPosn      |
  TokenRStraight AlexPosn      |
  TokenComma AlexPosn          |
  TokenDot AlexPosn            |
  TokenNewLine AlexPosn        |
  TokenLength AlexPosn         |
  TokenPrint AlexPosn          |
  TokenReadLine AlexPosn       |
  TokenIf AlexPosn             |
  TokenElse AlexPosn           
    deriving (Eq, Show)


tokenPosn :: Token -> String
tokenPosn (TokenLet (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenIn  (AlexPn a l c)) = show(l) ++ ":" ++ show(c) 

tokenPosn (TokenInt  (AlexPn a l c) _) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenString  (AlexPn a l c) _) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenBool  (AlexPn a l c) b) = show(l) ++ ":" ++ show(c)

tokenPosn (TokenVar (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenName  (AlexPn a l c) _) = show(l) ++ ":" ++ show(c)

tokenPosn (TokenEq  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenIsEq  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenAND  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenOR  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLess  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenMore  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLessEq  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenMoreEq  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenNOT  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenPlus  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenMinus  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTimes  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenDiv (AlexPn a l c)) = show(l) ++ ":" ++ show(c)

tokenPosn (TokenLParen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRParen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLCurly (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRCurly (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLStraight (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRStraight (AlexPn a l c)) = show(l) ++ ":" ++ show(c)

tokenPosn (TokenComma (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenDot (AlexPn a l c)) = show(l) ++ ":" ++ show(c)

tokenPosn (TokenLength (AlexPn a l c)) = show(l) ++ ":" ++ show(c)

tokenPosn (TokenPrint (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenNewLine (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenReadLine (AlexPn a l c)) = show(l) ++ ":" ++ show(c)

tokenPosn (TokenIf (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenElse (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
}
