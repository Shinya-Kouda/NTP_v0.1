-- Functions

module Ntp.Functions
(
    isVariable
    ,substituteSet
    ,substitutedVarSet
    ,substitutedPartner
    ,score
) where

import Ntp.Types

isVariable :: Term -> Bool
isVariable (TermVariable v) = True
isVariable _ = False
substituteSet :: State -> SubstituteSet
substituteSet (State (su,_)) = su
substitutedVarSet :: SubstituteSet -> [Term]
substitutedVarSet su = map fst su
substitutedPartner :: SubstituteSet -> Term -> Term
substitutedPartner su t = (head [p | (t,p) <- su])
score :: State -> Score
score (State (_,sc)) = sc