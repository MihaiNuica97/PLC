{ 
module SPLGrammar where 
import SPLTokens 
}

%name parseCalc 
%tokentype { Token } 
%error { parseError }
%token 
    nl      { TokenNewLine _}
    int     { TokenInt _ $$ }
    true   { TokenBool _ $$}
    false  { TokenBool _ $$}
    string {TokenString _ $$}
    var     { TokenVar _ }
    varName { TokenName _ $$ }
    '='     { TokenEq _ } 
    '+'     { TokenPlus _ } 
    '-'     { TokenMinus _ } 
    '*'     { TokenTimes _ } 
    '/'     { TokenDiv _ } 
    '('     { TokenLParen _ } 
    ')'     { TokenRParen _ } 
    print  { TokenPrint _}

    %left '+' '-' 
    %left '*' '/' 
    %left '^'
    %left NEG 
    %left nl
    %right var
    %nonassoc int string true false var '(' ')'
    %nonassoc print
%% 



Exps : Exps nl Exp      { $3 : $1 }
      | Exps nl         { $1 }
      | Exp            { [$1] }
      | {- empty -}		{ [] }

Exp :: {Exp}
Exp : Exp '+' Exp           { Plus $1 $3 } 
    | Exp '-' Exp            { Minus $1 $3 } 
    | Exp '*' Exp            { Times $1 $3 } 
    | Exp '/' Exp            { Div $1 $3 } 
    | '(' Exp ')'            { $2 } 
    | '-' Exp %prec NEG      { Negate $2 }
    | int                    { Int $1 } 
    | true                   { Bool $1}
    | false                  { Bool $1} 
    | string                 { String $1}
    | print '('Exp')'        { Print $3 }
    | varName                { Lookup $1 }
    | var varName            { Declare $2}
    | varName '=' Exp        { Assign $1 $3}
    | var varName '=' Exp    { DeclareWithVal $2 $4}



{ 

parseError :: [Token] -> a
parseError [] = error "Unknown Parse Error" 
parseError (t:ts) = error ("Parse error at line:column " ++ (tokenPosn t))

data Type = TyBool Bool  | TyInt Int | TyString String | Empty


data Exp = Let String Exp Exp 
        | Plus Exp Exp 
        | Minus Exp Exp 
        | Times Exp Exp 
        | Div Exp Exp 
        | Expo Exp Exp
        | Negate Exp
        | Int Int 
        | Bool Bool
        | String String
        | Declare String 
        | DeclareWithVal String Exp
        | Assign String Exp
        | Print Exp
        | Type
        | Lookup String
         deriving Show 
}