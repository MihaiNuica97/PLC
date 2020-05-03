{ 
module SPLGrammar where 
import SPLTokens 
}

%name parseCalc 
%tokentype { Token } 
%error { parseError }
%token 
    nl          { TokenNewLine _}
    int         { TokenInt _ $$ }
    true        { TokenBool _ $$}
    false       { TokenBool _ $$}
    string      { TokenString _ $$}
    var         { TokenVar _ }
    varName     { TokenName _ $$ }
    '='         { TokenEq _ }
    '=='        { TokenIsEq _} 
    and     {TokenAND _}
    or      {TokenOR _}
    '<'    {TokenLess _}
    '>'    {TokenMore _}
    '<='    {TokenLessEq _}
    '>='    {TokenMoreEq _}
    not     {TokenNOT _}
    '+'         { TokenPlus _ } 
    '-'         { TokenMinus _ } 
    '*'         { TokenTimes _ } 
    '/'         { TokenDiv _ } 
    '('         { TokenLParen _ } 
    ')'         { TokenRParen _ } 
    '{'         { TokenLCurly _ }
    '}'         { TokenRCurly _ }
    print       { TokenPrint _}
    readLine    { TokenReadLine _}
    if          { TokenIf _ }
    else        { TokenElse _ }

    %left '==' and or
    %left '+' '-' 
    %left '*' '/' 
    %left '<' '>' '<=' '>='
    %left not
    %left nl
    %right var
    %nonassoc int string true false var '(' ')'
    %nonassoc print readLine
    %nonassoc if else
%% 


Exps : Exp nl Exps      { $1 : $3 }
    | nl Exps         { $2 }
    | Exp Exps          {$1 : $2}
    | Exp             { [$1] }
    | {- empty -}		{ [] }


Exp :: {Exp}
Exp : Exp '+' Exp            { Plus $1 $3 } 
    | Exp '-' Exp            { Minus $1 $3 } 
    | Exp '*' Exp            { Times $1 $3 } 
    | Exp '/' Exp            { Div $1 $3 } 
    | Exp '==' Exp           { IsEq $1 $3}
    | Exp '<' Exp            { IsLess $1 $3}
    | Exp '>' Exp            { IsMore $1 $3}
    | Exp '<=' Exp           { OR (IsLess $1 $3) (IsEq $1 $3)}
    | Exp '>=' Exp           { OR (IsMore $1 $3) (IsEq $1 $3)}
    | Exp and Exp            { AND $1 $3}
    | Exp or Exp             { OR $1 $3}
    | not Exp                { NOT $2}                           
    | '(' Exp ')'            { $2 } 
    | '{' Exp '}'            { $2 } 
    | int                    { Type (Int $1) }
    | int int                { Plus (Type (Int $1)) (Type (Int $2))}
    | true                   { Type (Bool $1)}
    | false                  { Type (Bool $1)} 
    | string                 { Type (String $1)}
    | print '('Exp')'  nl    { Print $3 }
    | varName                { Lookup $1 }
    | var varName nl         { Declare $2}
    | varName '=' Exp nl     { Assign $1 $3}
    | var varName '=' Exp nl { DeclareWithVal $2 $4}
    | readLine nl               { ReadLine }
    | if '(' Exp ')' '{' Exps '}' else '{' Exps '}'  { IfElse $3 $6 $10} 

{ 

parseError :: [Token] -> a
parseError [] = error "Unknown Parse Error" 
parseError (t:ts) = error ("Parse error at line:column " ++ (tokenPosn t))

data Type = Bool Bool  | Int Int | String String | Empty
    deriving (Eq, Show)

data Exp = Type Type
        | Plus Exp Exp 
        | Minus Exp Exp 
        | Times Exp Exp 
        | Div Exp Exp 
        | IsEq Exp Exp
        | IsLess Exp Exp
        | IsMore Exp Exp
        | MoreEq Exp Exp
        | AND Exp Exp
        | OR Exp Exp
        | NOT Exp
        | Declare String 
        | DeclareWithVal String Exp
        | Assign String Exp
        | Print Exp
        | Lookup String
        | ReadLine
        | IfElse Exp [Exp] [Exp]
         deriving Show 
}