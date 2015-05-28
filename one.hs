data Argument = Constant String
              | Variable String

data Proposition = Proposition { name :: String, arg :: Argument }

data Clause = Clause Proposition [Proposition]

type Query = Proposition
type Program = [Clause]