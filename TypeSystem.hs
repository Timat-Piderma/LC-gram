module TypeSystem where

data BasicType = ERROR String | INT | FLOAT | BOOL | CHAR | STRING
  deriving (Eq, Show, Read)

data Type = Base BasicType | ARRAY Type Type
  deriving (Eq, Show, Read)

-- Given two Types, returns the superior one, ERROR if not compatible
sup :: Type -> Type -> Type
sup (Base INT)(Base INT)          = Base INT
sup (Base FLOAT)(Base FLOAT)      = Base FLOAT
sup (Base BOOL)(Base BOOL)        = Base BOOL
sup (Base CHAR)(Base CHAR)        = Base CHAR
sup (Base STRING)(Base STRING)    = Base STRING

sup (Base FLOAT) (Base INT)       = Base FLOAT
sup (Base INT) (Base FLOAT)       = Base FLOAT
sup (Base INT) (Base BOOL)        = Base INT
sup (Base BOOL)  (Base INT)       = Base INT
sup (Base STRING) (Base CHAR)     = Base STRING
sup (Base CHAR) (Base STRING)     = Base STRING
sup (Base INT) (Base CHAR)        = Base INT
sup (Base CHAR) (Base INT)        = Base INT

sup (ARRAY _ t1) (ARRAY _ t2) = 
  if t1 == t2 
    then ARRAY (Base INT) t1 
  else Base (ERROR ("Array types "++ typeToString t1 ++ " and " ++ typeToString t2 ++ " do not match"))

sup (Base (ERROR s)) _            = Base (ERROR s)
sup _ (Base (ERROR s))            = Base (ERROR s)

sup t1 t2                         = Base (ERROR ("Type mismatch: " ++ typeToString t1 ++ " and " ++ typeToString t2 ++ " are not compatible"))

typeToString :: Type -> String
typeToString (Base (ERROR s))  = s
typeToString (Base INT)    = "Integer"
typeToString (Base FLOAT)  = "Double"
typeToString (Base BOOL)   = "Boolean"
typeToString (Base CHAR)   = "Character"
typeToString (Base STRING) = "String"

typeToString (ARRAY t1 t2) = "Array of " ++ typeToString t2;
-- Given a BasicType, returns the mathematical BasicType equivalent
mathtype :: BasicType -> BasicType
mathtype FLOAT      = FLOAT
mathtype INT        = INT
mathtype BOOL       = INT
mathtype CHAR       = INT
mathtype _          = ERROR "Cannot perform arithmetic operations on this type"

-- Type of relational operators
rel :: Type -> Type -> Type
rel x y = case sup x y of
  Base (ERROR d)            -> Base (ERROR d)
  _                         -> Base BOOL

-- Checks if a value is boolean
isBoolean :: Type -> Type
isBoolean (Base BOOL) = Base BOOL
isBoolean _ = Base (ERROR "Error: not a boolean")

isERROR :: Type -> Bool
isERROR (Base (ERROR _)) = True
isERROR _ = False