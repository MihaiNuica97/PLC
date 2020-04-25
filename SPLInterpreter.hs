--needs a lot of work, basically the interpreter file to handle functions from tokens parsed in Grammar.y
module SPLInterpreter where
    import SPLGrammar
    
{-    
--Following evalLoopand unparse adapted from Julian's tutorials
-- Function to iterate the small step reduction to termination
evalLoop :: Expr -> Expr 
evalLoop e = evalLoop' (e,[],[])
  where evalLoop' (e,env,k) = if (e' == e) && (isValue e') && (null k) then e' else evalLoop' (e',env',k')
                       where (e',env',k') = eval1 (e,env,k) 

-- Function to unparse underlying values from the AST term
unparse :: Expr -> String 
unparse (TmInt n) = show n
unparse (TmTrue) = "true"
unparse (TmFalse) = "false"
unparse (Cl _ _ _ _) = "Function Value"
unparse _ = "Unknown"
-}