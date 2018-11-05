def sum_values(array) 
    total = 0
    if array.length < 1 
        return total 
    else
        total += array.shift + sum_values(array) 
    end 
end 

puts sum_values([])

def find_max(array) 
    if array.length == 2
        return array[0] > array[1] ? array[0] : array[1] 
    end 
    max = find_max(array[1..-1])
    return array[0] > max ? array[0] : max
end 

find_max([1, 2, 3, 4])

