module TypeSystem where

data BasicType = ERROR | INT | FLOAT | BOOL | CHAR | STRING
  deriving (Eq, Show, Read)

data Type = Base BasicType | ARRAY Int Type
  deriving (Eq, Show, Read)

-- Given two Types, returns the superior one, ERROR if not compatible
sup :: Type -> Type -> Type
sup (Base INT)(Base INT)          = Base INT
sup (Base FLOAT) (Base INT)       = Base FLOAT
sup (Base INT) (Base FLOAT)       = Base FLOAT
sup (Base INT) (Base BOOL)        = Base INT
sup (Base BOOL)  (Base INT)       = Base INT
sup (Base STRING) (Base CHAR)     = Base STRING
sup (Base CHAR) (Base STRING)     = Base STRING
sup (Base INT) (Base CHAR)        = Base INT
sup (Base CHAR) (Base INT)        = Base INT



sup _ _                           = Base ERROR

typeToString :: Type -> String
typeToString (Base ERROR)  = "Error"
typeToString (Base INT)    = "Integer"
typeToString (Base FLOAT)  = "Double"
typeToString (Base BOOL)   = "Boolean"
typeToString (Base CHAR)   = "Character"
typeToString (Base STRING) = "String"

-- Given a BasicType, returns the mathematical BasicType equivalent
mathtype :: BasicType -> BasicType
mathtype FLOAT      = FLOAT
mathtype INT        = INT
mathtype BOOL       = INT
mathtype CHAR       = INT
mathtype _          = ERROR

-- Type of relational operators
rel :: BasicType -> BasicType -> BasicType
rel x y = case sup (Base x) (Base y) of
  Base ERROR              -> ERROR
  _                         -> BOOL

-- Given an array type and index type, returns the type of the array element if t2 is an appropriate index (INT)
mkArrElemTy :: Type -> Type -> Type
mkArrElemTy (ARRAY _ t1) t2 = case sup t2 (Base INT) of
  Base INT -> t1
  _   -> Base ERROR
mkArrElemTy _ _ = Base ERROR