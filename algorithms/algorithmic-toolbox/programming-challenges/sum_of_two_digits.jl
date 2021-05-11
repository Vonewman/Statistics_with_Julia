using Test

function sum_of_two_digits(first_digit, second_digit)
    return first_digit + second_digit
end

a = 13
b = 7
@test sum_of_two_digits(a, b) == 20 
@show sum_of_two_digits(a, b)
