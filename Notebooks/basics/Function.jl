myfunc(firstvar) = 20*firstvar
println(myfunc(333.2222))
addxtoy(x,y) = x + y
println(addxtoy(33, -22.2))

## Multi-line function
function nextfunc(a, b, c)  # this line names your function and specifies the inputs
    a*b + c                # here go your (usually quite a few) lines

    #  ... just illustrating the possiblity of using white space and additional comments
end
println(nextfunc(7,5,3))
function showdebugprintln(testvar)
    println("inside the showdebugprint() now")   #this line announces where the report is coming from
    println("The type of testvar is $(typeof(testvar)) and the value of testvar is $testvar")
    #                  and this line reports what value, and hence what type, testvar actually has here
end

a = ['1',2.]
println(showdebugprintln(a))
