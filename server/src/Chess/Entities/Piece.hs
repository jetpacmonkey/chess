module Chess.Entities.Piece ( Piece
                            , Move
                            ) where

data Piece = { name :: String
             , cost :: Int
             , moves :: [ Move ]
             , royal :: Bool
             , promotes :: Bool
             , promoteTo :: Bool
             } deriving (Show)

data Move = { conditions :: [ MoveCondition ]
            , moveType :: MoveType
            , distance :: MoveDistance
            , direction :: MoveDirection
            , repeats :: Bool
            , nextMove :: Maybe Move
            } deriving (Show)

data MoveCondition = InitialMove | CaptureMove | NonCaptureMove deriving (Show)

data MoveType = DefaultMove | Leaper | Locust | Catapult deriving (Show)

data MoveDistance = MoveDistance Int | MoveRange Int Int | Hippogonal [ Int ] | UnlimitedMove deriving (Show)

data MoveDirection = { forwardMove :: Bool
                     , forwardDiagMove :: Bool
                     , sideMove :: Bool
                     , backwardMove :: Bool
                     , backwardDiagMove :: Bool
                     } deriving (Show)
