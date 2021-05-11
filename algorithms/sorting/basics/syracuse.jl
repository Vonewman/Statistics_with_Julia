using Test

function syracuse(n)
    if n == 1
        return 1
    elseif n % 2 == 0
        return syracuse(n // 2)
    else
        return syracuse(3 * n + 1)
    end
end

@test syracuse(7) == 1
@test syracuse(10) == 1
@test syracuse(100) == 1

@show syracuse(100)
@show syracuse(10)
@show syracuse(7)
