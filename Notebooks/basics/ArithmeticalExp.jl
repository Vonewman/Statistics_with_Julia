println(1 - 2 + 3 - 4)
println(1 / 2 + 3 / 4)
println(1 / (2 + 3) / 4)
println((1 / 2 + 3) / 4)
println(1/2/3)
println(2-3+4)
println(2/3^2)
println(3-2/4)
println(3+2*9-6)
# Let's do some exercises in this. Predict the output of,
# then run these expressions
# BAD CODE! It mixes types: some Int64, some Float64!!
println(0.2 + 0.1 - 3 * 6.7 / 4 - 1 - 2 * 3)
println( 3^2^3 )        # exponentiation right-to-left is the Julia convention
println( (3^2)^3 )      # forcing left-to-right using parentheses
