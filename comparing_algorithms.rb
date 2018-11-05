#Even if two algorithms are assesed to be at the same time complexity, it is possible
#that one is more performant than the other

#This algorithm performs N/2 inserts and N comparisons
def every_other(array) 
    new_array = []
    array.each_with_index do |element, index|
        new_array << element if index.even?
    end 
    return new_array
end 

puts every_other([1, 2, 3, 4]).inspect
# This alorigthm performs N/2 comparisons and N/2 inserts
def every_other_faster(array) 
    new_array = []
    index = 0
    while index < array.length do 
        new_array << array[index]
        index += 2 
    end 
    return new_array
end 

puts every_other_faster([1, 2, 3, 4]).inspect

