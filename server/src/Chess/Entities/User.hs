module Chess.Entities.User ( User
                           ) where

data User = User { userID :: Int
                 , username :: String
                 } deriving (Show, Eq)
