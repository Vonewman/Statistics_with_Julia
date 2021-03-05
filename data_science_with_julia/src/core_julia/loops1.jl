str = "Julia"

## A for loop for a string, iterating by index
for i = 1:length(str)
    print(str[i])
end

println()

## A for loop for a string. iterating by container element
for s in str
    print(s)
end

println()

## A nested for loop
for i in str, j = 1:length(str)
    println((i, j))
end

## Another nested for loop
odd = [1, 3, 5]
even = [2, 4, 6]
for i in odd, j in even
    println("i*j: $(i*j)")
end
