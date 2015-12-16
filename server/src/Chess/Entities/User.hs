module Chess.Entities.User ( User
                           ) where

data User = { userID :: Int
            , username :: String
            } deriving (Show, Eq)
