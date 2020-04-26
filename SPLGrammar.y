{ 
module SPLGrammar where 
import SPLTokens 
}

%name parseCalc 
%tokentype { Token } 
%error { parseError }
%token 
    nl      { TokenNewLine _}
    let     { TokenLet _ } 
    in      { TokenIn _ } 
    int     { TokenInt _ $$ } 
    true   { TokenBool _ $$}
    false  { TokenBool _ $$}
    var     { TokenVar _ $$ }
    '='     { TokenEq _ } 
    '+'     { TokenPlus _ } 
    '-'     { TokenMinus _ } 
    '*'     { TokenTimes _ } 
    '/'     { TokenDiv _ } 
    '('     { TokenLParen _ } 
    ')'     { TokenRParen _ } 
    print  { TokenPrint _}

    %right in
    %left '+' '-' 
    %left '*' '/' 
    %left '^'
    %left NEG 
    %left nl
    %nonassoc int true false var '(' ')'
    %nonassoc print
%% 



Exps : Exps nl Exp      { $3 : $1 }
      | Exps nl         { $1 }
      | Exp            { [$1] }
      | {- empty -}		{ [] }

Exp :: {Exp}
Exp :  let var '=' Exp in Exp { Let $2 $4 $6 } 
    |  Exp '+' Exp           { Plus $1 $3 } 
    | Exp '-' Exp            { Minus $1 $3 } 
    | Exp '*' Exp            { Times $1 $3 } 
    | Exp '/' Exp            { Div $1 $3 } 
    | '(' Exp ')'            { $2 } 
    | '-' Exp %prec NEG      { Negate $2 }
    | int                    { Int $1 } 
    | true                   { Bool $1}
    | false                  { Bool $1} 
    | var                    { Var $1 }
    | print Exp              { Print $2 }



{ 

parseError :: [Token] -> a
parseError [] = error "Unknown Parse Error" 
parseError (t:ts) = error ("Parse error at line:column " ++ (tokenPosn t))

data Type = TyBool

data Exp = Let String Exp Exp 
        | Plus Exp Exp 
        | Minus Exp Exp 
        | Times Exp Exp 
        | Div Exp Exp 
        | Expo Exp Exp
        | Negate Exp
        | Int Int 
        | Bool Bool
        | Var String 
        |Print Exp
        |Exp Exp
         deriving Show 
}