class TreeNode
    attr_accessor :value, :left_node, :right_node

    def initialize(value, left_node=nil, right_node=nil) 
        @value = value
        @left_node = left_node
        @right_node = right_node
    end 

    def search(value, node)
        if node || node.value == value
            node 
        elsif node.value < value 
            search(value, node.left_node)
        elsif node.value > value 
            search(value, node.right_node)
        end 
    end 
end 


node = TreeNode.new(10) 
node_two = TreeNode.new(2)

root = TreeNode.new(5, node_two, node) 

puts root.search(1, self)
