-- This Happy file was machine-generated by the BNF converter
{
{-# OPTIONS_GHC -fno-warn-incomplete-patterns -fno-warn-overlapping-patterns #-}
module ParLambdaNat where
import AbsLambdaNat
import LexLambdaNat
import ErrM

}

%name pProgram Program
%name pExp1 Exp1
%name pExp2 Exp2
%name pExp3 Exp3
%name pExp4 Exp4
%name pNat Nat
%name pExp Exp
-- no lexer declaration
%monad { Err } { thenM } { returnM }
%tokentype {Token}
%token
  '(' { PT _ (TS _ 1) }
  ')' { PT _ (TS _ 2) }
  '.' { PT _ (TS _ 3) }
  '0' { PT _ (TS _ 4) }
  'S' { PT _ (TS _ 5) }
  '\\' { PT _ (TS _ 6) }
  L_Id { PT _ (T_Id $$) }

%%

Id :: { Id}
Id  : L_Id { Id ($1)}

Program :: { Program }
Program : Exp { AbsLambdaNat.Prog $1 }
Exp1 :: { Exp }
Exp1 : '\\' Id '.' Exp { AbsLambdaNat.EAbs $2 $4 } | Exp2 { $1 }
Exp2 :: { Exp }
Exp2 : Exp2 Exp3 { AbsLambdaNat.EApp $1 $2 } | Exp3 { $1 }
Exp3 :: { Exp }
Exp3 : Id { AbsLambdaNat.EVar $1 } | Exp4 { $1 }
Exp4 :: { Exp }
Exp4 : Nat { AbsLambdaNat.ENat $1 } | '(' Exp ')' { $2 }
Nat :: { Nat }
Nat : '0' { AbsLambdaNat.Nat0 } | 'S' { AbsLambdaNat.NatS }
Exp :: { Exp }
Exp : Exp1 { $1 }
{

returnM :: a -> Err a
returnM = return

thenM :: Err a -> (a -> Err b) -> Err b
thenM = (>>=)

happyError :: [Token] -> Err a
happyError ts =
  Bad $ "syntax error at " ++ tokenPos ts ++
  case ts of
    []      -> []
    [Err _] -> " due to lexer error"
    t:_     -> " before `" ++ id(prToken t) ++ "'"

myLexer = tokens
}

