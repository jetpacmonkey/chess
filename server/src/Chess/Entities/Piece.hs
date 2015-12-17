module Chess.Entities.Piece ( Piece
                            , Move
                            ) where

data Piece = Piece { pieceID :: Int
                   , name :: String
                   , cost :: Int
                   , moves :: [ Move ]
                   , royal :: Bool
                   , promotes :: Bool
                   , promoteTo :: Bool
                   } deriving (Show, Eq)

data Move = Move { conditions :: [ MoveCondition ]
                 , moveType :: MoveType
                 , distance :: MoveDistance
                 , direction :: MoveDirection
                 , repeats :: Bool
                 , nextMove :: Maybe Move
                 } deriving (Show, Eq)

data MoveCondition = InitialMove | CaptureMove | NonCaptureMove deriving (Show, Eq)

data MoveType = DefaultMove | Leaper | Locust | Catapult deriving (Show, Eq)

data MoveDistance = MoveDistance Int
                  | MoveRange Int Int
                  | Hippogonal [ Int ]
                  | UnlimitedMove
                  deriving (Show, Eq)

data MoveDirection = MoveDirection { forwardMove :: Bool
                                   , forwardDiagMove :: Bool
                                   , sideMove :: Bool
                                   , backwardMove :: Bool
                                   , backwardDiagMove :: Bool
                                   } deriving (Show, Eq)
