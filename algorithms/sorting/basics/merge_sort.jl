function merge_sort(arr)
    if length(arr) <= 1
        return arr
    end

    middle = trunc(Int, length(arr) / 2)
    L = arr[1:middle]
    R = arr[middle+1:end]

    merge_sort(L)
    merge_sort(R)

    i = j = k = 1
    while i <= length(L) && j <= length(R)
        if L[i] < R[j]
            arr[k] = L[i]
            i += 1
        else
            arr[k] = R[j]
            j += 1
        end
        k += 1
    end

    while i <= length(L)
        arr[k] = L[i]
        i += 1
        k += 1
    end

    while j <= length(R)
        arr[k] = R[j]
        j += 1
        k += 1
    end
    return arr
end

arr = [31, 41, 59, 26, 41, 58]
@show arr merge_sort(arr)
