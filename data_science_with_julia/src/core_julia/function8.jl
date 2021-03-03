## A function with an optional argument. This is a recursive function,
## i.e., a function that cells itself, for computing the sum of the first n
## elements of the Fibonacci sequence: 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, ...

function fibonacci(n=20)
    if (n <= 1)
        return 1
    else
        return fibonacci(n-1) + fibonacci(n-2)
    end
end

println(fibonacci(12))
println(fibonacci())
println(fibonacci(20))

@assert fibonacci() == fibonacci(20)
