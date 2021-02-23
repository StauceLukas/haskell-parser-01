module Task1Message
where

-- ┌       ┐
-- │ X O X │
-- │ X X O │
-- │ O O X │
-- └       ┘
-- seed: 7791821788544283527
-- encoding: BenArr
-- from: ARR
-- to: COO

size :: Int
size = 3

message :: String
message = "l2:vsl1:X1:O1:X1:X1:X1:O1:O1:O1:Xe2:ysl1:01:01:01:11:11:11:21:21:2e2:xsl1:01:11:21:01:11:21:01:11:2ee"

type From = ([Int], [Int], [Char])
type To = [(Int, Int, Char)]

expectedFrom :: From
expectedFrom = ([0, 1, 2, 0, 1, 2, 0, 1, 2], [0, 0, 0, 1, 1, 1, 2, 2, 2], ['X', 'O', 'X', 'X', 'X', 'O', 'O', 'O', 'X'])

expectedTo :: To
expectedTo = [(0, 0, 'X'), (1, 0, 'O'), (2, 0, 'X'), (0, 1, 'X'), (1, 1, 'X'), (2, 1, 'O'), (0, 2, 'O'), (1, 2, 'O'), (2, 2, 'X')]

