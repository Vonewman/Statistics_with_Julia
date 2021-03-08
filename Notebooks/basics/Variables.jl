arr = Array{Int64}(undef, 3)
println(arr)
greeting = "Hello, world!"
println(greeting)

α = 20
β = 11.111
println([α, β])
_this_is_my_idea_of_a_long_variable_name_ = "short string"
very_important!pay_attention = "wake-up call"
println(_this_is_my_idea_of_a_long_variable_name_)
println(very_important!pay_attention)
abstypevariable = Array{Integer}(undef, 2, 3)
println(typeof(abstypevariable))
abstypevariable[1, 1] = 1
println(abstypevariable)
abstypevariable[1, 2] = 5.0
println(abstypevariable)
arbconcretevariable = Array{Int64}(undef, 2, 3)
println(arbconcretevariable)
