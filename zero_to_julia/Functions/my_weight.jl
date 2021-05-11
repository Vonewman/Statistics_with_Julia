"""
Optional positional arguments
"""
function myWeight(weightOnEarth, g=9.81)
    return weightOnEarth * g / 9.81
end

@show myWeight(65)
println("My Weight on Mars.")
@show myWeight(65, 3.72)
