array = [2, 4, 2, 1, 5, 6]
def insertion_sort(array) 
    range = (1..(array.length-1)).to_a
    range.each do |index| 
        position = index 
        temp_value = array[position]

        while(position > 0 and array[position -1] > temp_value) 
            array[position] = array[position -1]
            position -= 1
        end 
        array[position] = temp_value
    end
end 

insertion_sort(array)
puts array.inspect 