# First let's define a random matrix
A = rand(1:4, 3, 3)
@show A

# Define a vector of ones
x = fill(1.0, (3,))
@show x

# Multiplication
b = A*x
@show b

# Transposition
A'
@show A'
@show transpose(A)

# Transposition
@show A'A

# Solving linear systems
## The problem Ax = b for square A i solved by the \ function.
x = A\b
@show x

# A\b gives us the least squares solution if we have an overdetermined linear system (a "tall" matrix)
Atall = rand(3, 2)
@show Atall
@show Atall\b

v = rand(3)
rankdef = hcat(v, v)
@show rankdef \ b

bshort = rand(2)
Ashort = rand(2, 3)
@show Ashort \ bshort

# Exercices
# Take the inner product(or "dot" product) of a vector v with itself and assign it to variable dot_v
v = [1, 2, 3]
dot_v = v[1]*v[1] + v[2]*v[2] + v[3]*v[3]

@assert dot_v == 14

using LinearAlgebra
dot_v2 = dot(v, v)

@assert dot_v2 == 14

@assert outer_v == [1 2 3
                    2 4 6
                    3 6 9]
