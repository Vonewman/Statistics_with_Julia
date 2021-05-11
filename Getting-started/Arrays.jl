my_arr = [1, 2, 3]
@show my_arr
@show typeof(my_arr)
@show length(my_arr)
@show maximum(my_arr)

my_arr1 = [1, "Hello", 10, 4.5]
@show my_arr1[2]
@show my_arr1[2:4]
println(my_arr1)

push!(my_arr, 5)
@show my_arr

arr = [10, -5, 7, 0]
@show arr
@show sort(arr)

a1 = arr
@show a1
