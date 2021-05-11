my_dict = Dict("abc" => "123", "def" => "456", "xyz" => "789")
@show my_dict

@show typeof(my_dict)
@show my_dict["abc"]
@show keys(my_dict)
@show values(my_dict)


for (key, values) in my_dict
    println("$key", "$values")
end

@show haskey(my_dict, "abc")
@show haskey(my_dict, "abc1")
