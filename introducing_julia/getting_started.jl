println("I'm excited to learn Julia!")

my_answer = 42
@show typeof(my_answer)

my_pi = 3.14159
@show typeof(my_pi)

😸 = "smiley cat!"
@show typeof(😸)

😸 = 1
@show typeof(😸)

😄 = 0
😠 = -1

😸 + 😠 == 😄

# Syntax for basic math
sum = 3 + 7

difference = 10 - 3

product = 20 * 5

quotient = 100 / 10

power = 10 ^ 2

modulus = 101 % 2

days = 365
days_float = convert(Float32, days)

@assert days == 365
@assert days_float == 365.0
