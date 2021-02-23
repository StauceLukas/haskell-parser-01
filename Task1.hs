
import Task1Message
import Data.List as L
import Data.Char as C ()

convert :: ([a], [b], [c]) -> [(a, b, c)]
convert (x1 , x2, x3)=  zip3 x1 x2 x3


-- Parser for X -------------------------------------------------------------------------
parseXY :: String -> (Int, String)
parseXY t =
    let
        prefix = L.take 1 t
        postfix = drop 2 t
    in
        case postfix of
            (':': r) -> (read prefix, r)
            ('e':r) -> (read prefix , r)
            ('2':r) -> (read prefix, r)

parserXY r = parser' r []
parser' (':':r) acc = (L.reverse acc ,r)
parser' s acc =
    let 
        (i, r) = parseXY s 
    in
        parser' r (i : acc)
----------------------------------------------------------------------------------------------------

-- Parser for Y and V
parseV :: String -> ([Char], String)
parseV t =
    let
        prefix = take 1 t
        postfix = drop 2 t
    in
        case postfix of
            (':': r) -> (prefix, r)
            ('2':r) -> (prefix, r)
            


parserV r = vparse' r []
vparse' (':':r) acc = (L.reverse acc ,r)
vparse' s acc =
    let 
        (i, r) = parseV s
    in
        vparse' r (i ++ acc)


parse :: String ->  From
parse s =
    let
        (l1, r1) = parserV (drop 8 s)
        (l2, r2) = parserXY (drop 5 r1 )
        (l3, r3) = parserXY ((drop 5 r2 )++ ":")

    in
        (l3, l2, l1)

