module Chess.Entities.Board ( Board
                            ) where

data Board = Board { boardID :: Int
                   , dimensions :: (Int, Int) -- (width, height)
                   } deriving (Show, Eq)
