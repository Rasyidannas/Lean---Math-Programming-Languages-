def joinStringWith (s1 : String) (s2 : String) (s3 : String) : String :=
  String.append s2 (String.append s1 s3)

#eval joinStringWith ", " "One " "and Another"
#check joinStringWith ", " "One " "and Another"

def volRectanglePrism (height : Nat) (weight : Nat) (depth : Nat) : Nat :=
  height * weight * depth

#eval volRectanglePrism 4 2 3
