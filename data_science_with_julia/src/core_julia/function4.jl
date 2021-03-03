## Argument passing
function f1!(x)
    x[1] = 9999
    return (x)
end

ia = Int64[0, 1, 2]
println("Array ia: ", ia)

f1!(ia)
println("Argument passing by reference: ", ia)
