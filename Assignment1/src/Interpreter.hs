-- Interpreter for LambdaNat5
-- numbers, conditionals, recursion, lists
{-# LANGUAGE StandaloneDeriving, DeriveDataTypeable, TypeApplications,
ExplicitForAll, ScopedTypeVariables #-}


module Interpreter where

import AbsLambdaNat
import ErrM
import PrintLambdaNat

import Data.Map ( Map )
import qualified Data.Map as M

import Data.Data
import Data.Generics.Traversable
import qualified Data.Set as S

deriving instance Data Id
deriving instance Data Exp

execCBN :: Program -> Exp
execCBN (Prog e) = evalCBN e

evalCBN :: Exp -> Exp
evalCBN (EApp e1 e2) = case (evalCBN e1) of
    (EAbs i e1') -> evalCBN (subst i e2 e1')
    e1' -> EApp e1' e2
evalCBN (EIf e1 e2 e3 e4) = if (evalCBN e1) == (evalCBN e2) then evalCBN e3 else evalCBN e4
evalCBN (ELet i e1 e2) = evalCBN (EApp (EAbs i e2) e1)
evalCBN (ERec i e1 e2) = evalCBN (EApp (EAbs i e2) (EFix (EAbs i e1)))
evalCBN (EFix e) = evalCBN (EApp e (EFix e))
evalCBN (EMinusOne e) = case (evalCBN e) of
    ENat0 -> ENat0
    (ENatS e) -> e
evalCBN (ENatS e') = ENatS (evalCBN e')

evalCBN (ECons e1 e2) = ECons (evalCBN e1) (evalCBN e2)

evalCBN (EHd e1) = case (evalCBN e1) of
    ENil -> ENil
    (ECons e1 e2) -> e1

evalCBN (ETl e1) = case (evalCBN e1) of
     ENil -> ENil
     (ECons e1 e2) -> e2

evalCBN x = x

newtype IDM m a = IDM{unIDM :: m}

efoldMap :: forall a m. (Data a, Monoid m) => (a -> m) -> a -> m
efoldMap f x = traverse f x
    where
        traverse :: (Data a, Data b, Monoid m) => (a -> m) -> b -> m
        traverse f x = unIDM $ gfoldl (k f) z x
        z :: Monoid m => g -> IDM m g
        z _ = IDM mempty
        k :: Data d => (a -> m) -> IDM m (d -> b) -> d -> IDM m b
        k f (IDM m) d = case cast d of
            Just a  -> IDM (m <> f a)
            Nothing -> IDM m

fresh_ :: Exp -> [String]
fresh_ (EVar (Id i)) = [i]
fresh_ (EAbs (Id i) e) = i:fresh_ e
fresh_ e = efoldMap fresh_ e

fresh = Id . (pickFresh $ infList) . S.fromList . fresh_
  where
    pickFresh :: [String] -> S.Set String -> String
    pickFresh (x:xs) ys | x `S.member` ys = pickFresh xs ys
                        | otherwise = x
    infList = map (:[]) ['a'..'z'] ++ infList_ 1
    infList_ n = map (\a -> a : show n) ['a'..'z'] ++ infList_ (n+1)

newtype ID a = ID{unID :: a}

emap :: (Data a) => (a -> a) -> a -> a
emap f x = traverse x
    where
        traverse :: Data a => a -> a
        traverse x = unID $ gfoldl k z x
        z = ID
        k (ID ca) b  = case castfn f of
            Just fb -> ID (ca (fb b))
            Nothing -> ID (ca b)

        castfn :: (Typeable a, Typeable b, Typeable c, Typeable d) =>
               (a -> b) -> Maybe (c -> d)
        castfn f = cast f

subst :: Id -> Exp -> Exp -> Exp
subst id s e@(EVar id') | id == id' = s
                      | otherwise = e
subst id s e@(EAbs id' e') =
    let f = fresh (EApp (EVar id) (EApp e s))
        e'' = subst id' (EVar f) e' in
        EAbs f $ subst id s e''
subst id s e = emap (subst id s) e
