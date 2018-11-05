def binary_search(array, value)
    lower_bound = 0
    upper_bound = array.length - 1

    while lower_bound <= upper_bound do 
        midpoint = (upper_bound + lower_bound)/2
        value_at_midpoint = array[midpoint]

        if value < value_at_midpoint
            upper_bound = midpoint - 1
        elsif value > value_at_midpoint
            lower_bound = midpoint + 1 
        else value == value_at_midpoint 
            return midpoint
        end 
    end 
    return nil
end 


puts binary_search([1, 2, 3, 4], 3)