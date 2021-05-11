using Test

function f91(n)
    if n <= 100
        return f91(f91(n + 11))
    else
        return n - 10
    end
end

println("Input an Integer: ")
n = parse(UInt8, readline())

@test  f91(10) == 91
@test f91(100) == 91

@show n f91(n)
@show n f91(n)
