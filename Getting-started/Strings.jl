my_str = "Hello World!"

@show my_str
println(my_str)

mult_str = """My multiline string assignment let's check it"""
println(mult_str)

newstr = """hello "user" string"""
println(newstr)

# Concatenation
s1 = "Hello"
s2 = "World"
@show string(s1, s2)
@show string(s1, "newuser", s2)
@show s1 * s2
@show s1 ^ 5
@show s1[1]
@show s1[2:4]

# Character
mychar = 'a'
@show typeof(mychar)
