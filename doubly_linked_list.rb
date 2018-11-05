class DoubleNode 
    attr_accessor :previous_node, :data, :next_node

    def initialize(data) 
        @data = data 
    end     
end 


class DoublyLinkedList 

    attr_accessor :first_node, :last_node

    def initialize(first_node=nil, last_node=nil) 
        @first_node = first_node
        @last_node = last_node
    end 

    def insert_at_end(value) 
        new_node = DoubleNode.new(value) 

        if !first_node
            @first_node = new_node
            @last_node = new_node
        else 
            new_node.previous_node = @last_node
            @last_node.next_node = new_node
            @last_node = new_node
        end 
    end 

    def remove_from_front()
        removed_node = @first_node 
        @first_node = removed_node.next_node
        return removed_node
    end 
end

class Queue 

    attr_accessor :queue 

    def initialize
        @queue = DoublyLinkedList.new()
    end 

    def enque(value) 
        @queue.insert_at_end(value)
    end 

    def deque
        removed_node = @queue.remove_from_front
        return removed_node.data
    end 

    def tail
        @queue.last_node.data
    end 

    def print_queue
        current_node = @queue.first_node

        while(current_node) 
            puts current_node.data
            current_node = current_node.next_node 
        end 
    end 

end 




double_node_one = DoubleNode.new("First") 
double_node_two = DoubleNode.new("Second") 

double_node_one.next_node = double_node_two
double_node_two.previous_node = double_node_one

double_linked_list = DoublyLinkedList.new(double_node_one)

# puts double_linked_list.remove_from_front


queue = Queue.new()

queue.enque("First")
queue.enque("Second")
queue.enque("Third")

puts queue. print_queue
