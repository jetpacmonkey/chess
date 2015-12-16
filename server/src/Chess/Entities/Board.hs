module Chess.Entities.Board ( Board
                            ) where

data Board = { boardID :: Int
             , dimensions :: (Int, Int) -- (width, height)
             } deriving (Show, Eq)
