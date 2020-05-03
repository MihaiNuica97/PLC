{ 
module SPLGrammar where 
import SPLTokens 
}

%name parseCalc 
%tokentype { Token } 
%error { parseError }
%token 
    nl          { TokenNewLine _}
    ','         { TokenComma _ }
    '.'         { TokenDot _ }
    int         { TokenInt _ $$ }
    bool        { TokenBool _ $$}
    string      { TokenString _ $$}
    var         { TokenVar _ }
    varName     { TokenName _ $$ }
    '='         { TokenEq _ }
    '=='        { TokenIsEq _} 
    and         { TokenAND _}
    or          { TokenOR _}
    '<'         { TokenLess _}
    '>'         { TokenMore _}
    '<='        { TokenLessEq _}
    '>='        { TokenMoreEq _}
    not         { TokenNOT _}
    '+'         { TokenPlus _ } 
    '-'         { TokenMinus _ } 
    '*'         { TokenTimes _ } 
    '/'         { TokenDiv _ } 
    '('         { TokenLParen _ } 
    ')'         { TokenRParen _ } 
    '{'         { TokenLCurly _ }
    '}'         { TokenRCurly _ }
    '['         { TokenLStraight _}
    ']'         { TokenRStraight _}

    length      { TokenLength _ }

    print       { TokenPrint _}
    readLine    { TokenReadLine _}
    if          { TokenIf _ }
    else        { TokenElse _ }

    while       {TokenWhile _ }

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
    %nonassoc while
%% 


Exps : Exp nl Exps      { $1 : $3 }
    | nl Exps           { $2 }
    | Exp Exps          {$1 : $2}
    | Exp               { [$1] }
    | {- empty -}		{ [] }

ValList: int ',' ValList        {(Int $1) : $3}
        | string ',' ValList    {(String $1) : $3}
        | bool ',' ValList      {(Bool $1) : $3}
        | int                   {[Int $1]}
        | string                {[String $1]}
        | bool                  {[Bool $1]}
        |                       {[]}


Exp :: {Exp}
Exp : Exp '+' Exp                                   { Plus $1 $3 } 
    | Exp '-' Exp                                   { Minus $1 $3 } 
    | Exp '*' Exp                                   { Times $1 $3 } 
    | Exp '/' Exp                                   { Div $1 $3 }

    | Exp '==' Exp                                  { IsEq $1 $3}
    | Exp not '=' Exp                               { NOT (IsEq $1 $4)}
    | Exp '<' Exp                                   { IsLess $1 $3}
    | Exp '>' Exp                                   { IsMore $1 $3}
    | Exp '<=' Exp                                  { OR (IsLess $1 $3) (IsEq $1 $3)}
    | Exp '>=' Exp                                  { OR (IsMore $1 $3) (IsEq $1 $3)}
    | Exp and Exp                                   { AND $1 $3}
    | Exp or Exp                                    { OR $1 $3}
    | not Exp                                       { NOT $2}                 

    | '(' Exp ')'                                   { $2 } 
    | '{' Exp '}'                                   { $2 }

    | int                                           { Type (Int $1) }
    | int int                                       { Plus (Type (Int $1)) (Type (Int $2))}
    | bool                                          { Type (Bool $1)}
    | string                                        { Type (String $1)}

    | print '('Exp')'  nl                           { Print $3 }
    | print '(' '[' ValList ']' ')' nl              { Print (Type (Arr $4))}

    | varName                                       { Lookup $1 }
    | varName '[' int ']'                           { GetIndex $3 (Lookup $1)}
    | var varName nl                                { Declare $2}
    | var varName '['']' nl                         { Declare $2}
    | var varName '=' '[' ValList ']' nl            { DeclareWithVal $2 (Type (Arr $5))}
    | varName '=' Exp nl                            { Assign $1 $3}
    | varName '=' '[' ValList ']' nl                { Assign $1 (Type (Arr $4))}
    | var varName '=' Exp nl                        { DeclareWithVal $2 $4}

    | varName '.' length '('')'                     {Length (Lookup $1)}

    | readLine                                      { ReadLine }
    
    | if '(' Exp ')' '{' Exps '}' else '{' Exps '}' { IfElse $3 $6 $10} 
    | if '(' Exp ')' '{' Exps '}'                   { IfElse $3 $6 []}
    
    | while '(' Exp ')' '{' Exps '}'                { While $3 $6}
{ 

parseError :: [Token] -> a
parseError [] = error "Unknown Parse Error" 
parseError (t:ts) = error ("Parse error at line:column " ++ (tokenPosn t))

data Type = Bool Bool  | Int Int | String String | Arr [Type] | NULL
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
        | Lookup String

        |GetIndex Int Exp
        |Length Exp
        
        | Print Exp
        | ReadLine
        | IfElse Exp [Exp] [Exp]

        |While Exp [Exp]
         deriving Show 
}