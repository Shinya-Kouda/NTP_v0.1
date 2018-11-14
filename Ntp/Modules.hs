-- NTP modules

module Ntp.Modules
(
    moduleAnd
    ,moduleOr
    ,moduleSubstitute
    ,moduleUnify
) where

import Ntp.Types
import Ntp.Functions

-- OR module
moduleOr :: KnowledgeBase -> [Atom] -> Int -> [State] -> [[State]]
--moduleOr knowledgeBase goal degree state =
--    [state' | knowledge <- knowledgeBase
--                , state' <- moduleAnd knowledgeBase (tail knowledge) degree (moduleUnify (head knowledge) goal state)]

-- AND module
moduleAnd :: KnowledgeBase -> [Atom] -> Int -> [State] -> [[State]]
--moduleAnd _ _ _ FAIL = [FAIL]
--moduleAnd _ _ 0 _ = [FAIL]
--moduleAnd _ [] _ s = [s]
--moduleAnd knowledgeBase (g:subGoal) degree state =
--    [state'' | state' <- moduleOr knowledgeBase (moduleSubstitute g (substituteSet state)) (degree - 1) state
--                , state'' <- moduleAnd knowledgeBase subGoal degree state']

-- UNIFICATION module
moduleUnify :: [Term] -> [Term] -> [State] -> [State]
--moduleUnify [] [] s = s
--moduleUnify [] _ _ = FAIL
--moduleUnify _ [] _ = FAIL
--moduleUnify (h:hs) (g:gs) state = moduleUnify hs gs state'
--    where state' =  (
--                        if isVariable h
--                            then State ((h,g):(substituteSet state), min 1 (score state))
--                        else if not(isVariable h) && (isVariable g)
--                            then State ((g,h):(substituteSet state), min 1 (score state))
--                        else if (isVariable h) && not(isVariable g)
--                            then State (substituteSet state, min 1 (score state))
--                        else
--                            State (substituteSet state, min 1 (score state))--this 1 will be updated to RBFK.
--                    )

-- SUBSTITUTE module
moduleSubstitute :: [Term] -> [SubstituteSet] -> [[Term]]
--moduleSubstitute [] s = []
--moduleSubstitute (g:gs) s
--    | g `elem` (substitutedVarSet s)
--        = ((substitutedPartner s g) : (moduleSubstitute gs s))
--    | otherwise
--        = (g : (moduleSubstitute gs s))


