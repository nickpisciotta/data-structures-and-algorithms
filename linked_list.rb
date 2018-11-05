class Node 
    attr_accessor :data, :next_node

    def initialize(data)
        @data = data
    end 
end 


node_one = Node.new("Once")
node_two = Node.new("upon")
node_one.next_node = node_two
node_three = Node.new("a")
node_two.next_node = node_three
node_four = Node.new("time")
node_three.next_node = node_four


class LinkedList 
    attr_accessor :first_node

    def initialize(first_node)
        @first_node = first_node
    end 

    def read(index) 
        current_node = @first_node
        current_index= 0 

        while (current_index < index) 
            current_node =current_node.next_node 
            current_index += 1 

            return nil unless current_node
        end 

        current_node.data
    end 

    def print_list() 
        current_node = first_node

        while(current_node)
            puts current_node.data
            current_node = current_node.next_node
        end 

    end 

    def index_of(value) 
        current_node = @first_node
        current_index = 0
        
        begin 
            if current_node.data == value
                return current_index
            end 
            current_node = current_node.next_node
            current_index += 1
        end while current_node

        return "Value not found"
    end 

    def insert_at_index(index, value) 
        new_node = Node.new(value)
        
        if index == 0 
            new_node.next_node = first_node
            self.first_node = new_node
        else 
            current_node = first_node
            current_index = 0

            while(current_index < (index - 1))
                current_node = current_node.next_node 
                current_index += 1
            end 

            new_node.next_node = current_node.next_node
            current_node.next_node = new_node
        end 
    end 

    def delete_at_index(index) 
        if index == 0
            self.first_node = first_node.next_node
        else 
            current_node = first_node
            current_index = 0 

            while(current_index < (index -1))
                if(current_node)
                    current_node = current_node.next_node 
                    current_index += 1 
                else 
                   return nil;
                end 
            end 

            node_to_attach = current_node.next_node.next_node
            current_node.next_node = node_to_attach
        end 
    end 
end 

linked_list = LinkedList.new(node_one)
# puts linked_list.read(3)
# puts linked_list.index_of("time")
# puts linked_list.insert_at_index(2, "there")
# linked_list.print_list

linked_list.delete_at_index(100) 
linked_list.print_list