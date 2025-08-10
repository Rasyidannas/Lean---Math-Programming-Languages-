def joinStringWith (s1 : String) (s2 : String) (s3 : String) : String :=
  String.append s2 (String.append s1 s3)

#eval joinStringWith ", " "One " "and Another"
#check joinStringWith ", " "One " "and Another"

def volRectanglePrism (height : Nat) (weight : Nat) (depth : Nat) : Nat :=
  height * weight * depth

#eval volRectanglePrism 4 2 3

structure RectangularPrism where
  height : Float
  width : Float
  depth : Float
deriving Repr

def volume (p : RectangularPrism) : Float :=
  p.height * p.width * p.depth

#eval volume { height := 2.0, width := 3.0, depth := 3.0 }

structure Segment where
  p1 : (Float × Float)  -- This is tuples, first endpoint (x₁, y₁)
  p2 : (Float × Float)  -- THis is tuples, second endpoint (x₂, y₂)
deriving Repr

def seg : Segment := {p1 := (0.0, 0.0), p2 := (3.0, 4.0)}
#eval seg.p1

def length (s : Segment) : Float :=
  let (x1, y1) := s.p1
  let (x2, y2) := s.p2
  Float.sqrt ((x2 - x1) ^ 2 + (y2 - y1) ^ 2)

#eval length { p1 := (0.0, 0.0), p2 := (3.0, 4.0) }

