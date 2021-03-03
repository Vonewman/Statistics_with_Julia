# A short-circuit evaluation
b = 10; c = 20;
println("SCE: b < c: ", b < c ? "less than" : "not less than")

# A short-circuit evaluation with nesting
d = 10; f = 10;
println("SCE: chained d vs e: ",
  d < f ? "less than " :
  d > f ? "greater than" : "equal")
