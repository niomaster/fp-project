data Clause = Clause { lhs :: Proposition, rhs :: [Proposition] }
    deriving (Eq, Show)

type Query = Proposition
type Proposition = String
type Program = [Clause]

prove :: Program -> Query -> Bool
prove p q = or $ map (and . map (prove p)) clauses 
    where clauses = map rhs $ filter ((==q) . lhs) p

evalProp :: Program -> Query -> Bool
evalProp = prove