def add1 (n : Nat) : Nat := n + 1
#eval add1 7
#eval add1 10

#eval 2 + 100 * 2 / 10

-- This will print a string
#eval String.append "Hello, " "Lean!"
#eval String.append "great " (String.append "oak " "tree") 

-- Conditional
#eval String.append "it is " (if 1 > 2 then "yes" else "no")

-- Exercise
#eval 42 + 19
#eval String.append "A" (String.append "B" "C")
#eval String.append (String.append "A" "B") "C"
#eval if 3 == 3 then 5 else 7
#eval if 3 == 4 then "equal" else "not equal"

#eval (1 - 2 : Nat)
#eval (1 - 2 : Int)
#check (1 - 2)

-- Funtions
-- Definition a function
def hello := "Hello"
def lean : String := "Lean"

-- Calling a function
#eval String.append hello (String.append " " lean)

def substract2 (n : Nat) : Int := n - 2
#eval substract2 1 

-- Multiple Arguments
def maximum (n : Nat) (k : Nat) : Nat :=
  if n < k then
    k
  else
    n

#eval maximum 8 10

-- Defining a Structures 
structure Point where
  x : Float
  y : Float
deriving Repr

-- Call / use the structures in function
def origin : Point := { x := 0.0, y := 0.0 }

-- Call tha function origin
#eval origin

-- Create a 2 points aas arguments
def addPoints (p1 : Point) (p2 : Point) : Point := { x := p1.x + p2.x, y := p1.y + p2.y }	

-- Cal addPoints structures
#eval addPoints { x := 1.5, y := 32 } { x := -8, y := 0.2 }

