-- Types

module Ntp.Types where
    
data Variable = Variable String deriving(Show,Eq)
data Constant = Constant String deriving(Show,Eq)
data Predicate = Predicate String deriving(Show,Eq)
data Term = TermPredicate Predicate | TermVariable Variable | TermConstant Constant deriving(Show,Eq)
type Atom = [Term]
type Rule = [Atom]
type KnowledgeBase = [Rule]
type SubstituteSet = [(Term, Term)]
type Score = Float
data State = State (SubstituteSet,Score) | FAIL deriving(Show,Eq)
