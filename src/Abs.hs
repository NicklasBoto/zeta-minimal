module Abs
  ( Basis(..)
  , Term(..)
  , Type(..)
  ) where

data Basis
  = Z | X
  deriving (Eq, Show)

data Term
  = Var String
  | Str
  | Cup
  | Cap
  | Unit Basis
  | Abs Basis String Term
  | App Term Term
  | Tup Term Term
  | Let String String Term Term
  | Sem Term Term
  deriving (Eq, Show)

data Type
  = I
  | Q
  | Type :-> Type
  | Type :*  Type 
  deriving (Eq, Show)
