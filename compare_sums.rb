require 'set'

list = [1 ,2, 3, 5, 6, 8]
desired_sum = 90 

#When list is ordered
# def has_pairs?(ordered_list, sum) 
#     left_index = 0; 
#     right_index = ordered_list.length - 1

#     while (left_index < right_index) 
#         if ordered_list[left_index]  + ordered_list[right_index] == sum 
#             return true 
#         elsif ordered_list[left_index] + ordered_list[right_index] < sum 
#             left_index += 1 
#         elsif ordered_list[left_index] + ordered_list[right_index] > sum 
#             right_index -= 1 
#         end 
#     end 
#     return false
# end 

# puts has_pairs?(list, desired_sum)


#When list is unordered 

def has_pairs_two?(ordered_list, sum) 
    complements = Set[]

    ordered_list.each do |i|
        if (complements.include?(i)) 
            return true
        else 
            complements.add(sum - i) 
        end 
    end 
    return false
end 

puts has_pairs_two?(list, desired_sum)
