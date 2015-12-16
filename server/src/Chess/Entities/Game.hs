module Chess.Entities.Game ( Game
                           , GameUser
                           , GamePiece
                           , GameBoard
                           ) where

import Chess.Entities.Piece
import Chess.Entities.User
import Chess.Entities.Board

data Game = { gameID :: Int
            , name :: String
            } deriving (Show, Eq)

data GameUser = { game :: Game
                , user :: User
                } deriving (Show, Eq)

data GamePiece = { game :: Game
                 , piece :: Piece
                 , position :: (Int, Int) -- (file, rank), aka (x, y)
                 } deriving (Show, Eq)

data GameBoard = { game :: Game
                 , board :: Board
                 } deriving (Show, Eq)
