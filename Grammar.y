{ 
module Grammar where 
import Tokens 
}

%name parseCalc 
%tokentype { Token } 
%error { parseError }
%token 
    Bool   { TokenTypeBool _ } 
    true   {TokenTrue _ }
    false  {TokenFalse _ }

    read   { TokenRead _ }
    write  { TokenWrite _ }

    if     { TokenIf _ }
    else   { TokenElse _ }
    while  { TokenWhile _ }

    array  { TokenArray _ }
    add    { TokenAdd _ }
    length { TokenLength _ }
    push   { TokenPush _ }
    pop    { TokenPop _ }

    int { TokenInt _ $$ } 
    var { TokenVar _ $$ } 

    '=' { TokenEq _ } 
    '+' { TokenPlus _ } 
    '-' { TokenMinus _ } 
    '*' { TokenTimes _ } 
    '/' { TokenDiv _ } 
    '(' { TokenLParen _ } 
    ')' { TokenRParen _ } 


%nonassoc read write
%nonassoc '(' ')'
%nonassoc if
%nonassoc else
%nonassoc while
%nonasssoc '='
%nonassoc '.' length
%nonassoc array
%nonassoc true false 
%left '+' '-' 
%left '*' '/' 
%% 


Exp :: {Expr}
Exp : 
    | Exp '+' Exp            { Plus $1 $3 } 
    | Exp '-' Exp            { Minus $1 $3 } 
    | Exp '*' Exp            { Times $1 $3 } 
    | Exp '/' Exp            { Div $1 $3 } 
    | '(' Exp ')'            { $2 } 
    | '-' Exp %prec NEG      { Negate $2 }
    | true                   { True $1}
    | false                  { False $1 }
    | int                    { Int $1 } 
    | var                    { Var $1 } 

Syntax :: {Syntax}
Syntax : 
    | Bool 
    | var push
    | var pop 

{ 

parseError :: [Token] -> a
parseError [] = error "Unknown Parse Error" 
parseError (t:ts) = error ("Parse error at line:column " ++ (tokenPosn t))

data Line = 


data Exp = 
         | Plus Exp Exp 
         | Minus Exp Exp 
         | Times Exp Exp 
         | Div Exp Exp 
         | Expo Exp Exp
         | Negate Exp
         | True 
         | False 
         | Int Int 
         | Var String 
         deriving Show 
}