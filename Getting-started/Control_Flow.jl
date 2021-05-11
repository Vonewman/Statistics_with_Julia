num = 1
if num > 3
    println("Greater")
elseif num < 1
    println("lesser")
else
    println("Equals")
end

# Loops
for i = 1:5
    println(i)
end

function while_loop(k)
    while k < 5
        println(k)
        k += 1
    end
end

@show while_loop(1)

# Nested loop
for i = 1:5
    for j = 1:5
        println(i, j)
    end
end
