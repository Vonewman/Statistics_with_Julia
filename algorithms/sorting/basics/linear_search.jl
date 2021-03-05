# worst case : n

function linear_search!(A, v)
    for i in 1:length(A)
        if A[i] == v
            return i
        end
    end
    return nothing
end

arr = [31, 41, 59, 26, 41, 58]
v = 26
@show arr linear_search!(arr, v)
