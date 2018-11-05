def quick_sort(array) 
    return array if array.length < 2

    pivot = array[0]
    less = array.select { |number| number < pivot } 
    more = array.select { |number| number > pivot }
    return quick_sort(less) + [pivot] + quick_sort(more)
end 


puts quick_sort([1, 3, 2, 5, 4, 6])
