myfunc(firstvar) = 20 * firstvar

println(myfunc(333.2222))

addxtoy(x, y) = x + y

println(addxtoy(33, -22.2))

# Multi-line function definition
function nextfunc(a, b, c)
    a*b + c
end

println(nextfunc(7, 5, 3))

function showdebugprintln(testvar)
    println("inside the showdebugprint() now")   #this line announces where the report is coming from
    println("""
    The type of testvar is $(typeof(testvar)) and the value of testvar is $testvar
    """)
    # and this line reports what value, and hence what type, testvar actually has here
end

arr = ['1', 2]
println(showdebugprinln(a))

# Function with multiple method
mycos(x) = cos(x)
println(mycos(.7))

mycos(adj, hyp) = adj / hyp
println(mycos(12, 13))
println()
println(methods(mycos))

mycos(thet::Float64) = cos(thet)
print(mycos(1.0))
