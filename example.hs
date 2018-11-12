-- Experiment

import Ntp.Types
import Ntp.Functions
import Ntp.Modules

-- Goal atom
ci = TermConstant $ Constant "i"
cj = TermConstant $ Constant "j"
ps = TermPredicate $ Predicate "s"
goal = [ps,ci,cj]

-- Knowledge Base
knowledgeBase :: KnowledgeBase
knowledgeBase = [
                    [[TermPredicate $ Predicate "fatherOf",TermConstant $ Constant "ABE", TermConstant $ Constant "HOMER"]]
                ,   [[TermPredicate $ Predicate "parentOf",TermConstant $ Constant "HOMER", TermConstant $ Constant "BART"]]
                ,   [
                        [TermPredicate $ Predicate "grandfatherOf",TermVariable $ Variable "X", TermVariable $ Variable "Y"]
                    ,   [TermPredicate $ Predicate "fatherOf",TermVariable $ Variable "X", TermVariable $ Variable "Z"]
                    ,   [TermPredicate $ Predicate "parentOf",TermVariable $ Variable "Z", TermVariable $ Variable "Y"]
                    ]
                ]

-- following code will return the same result of figure 2
--moduleOr knowledgeBase goal 2 (State ([],1))