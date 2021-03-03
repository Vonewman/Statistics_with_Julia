## A begin block
b1 = begin
    c = 20
    d = 5
    c * d
end
println("b1: ", b1)

b2 = (c = 20; d = 5; c * d)
println("b2: ", b2)
