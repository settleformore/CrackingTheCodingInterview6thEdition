require_relative 'Node'

class LinkedList
    def initialize
      @head = nil
      @tail = nil
    end

    def add_new_node(value)
      new_node = Node.new(value)
      if @head.nil?
        @head = new_node
      else
        current_node = @head
        while current_node.next_n
          current_node = current_node.next_n
        end
        current_node.next_n = new_node
      end
    end

    def print_values
      elements = []
      current_node = @head
      while current_node.next_n != nil
        elements << current_node.value
        current_node = current_node.next_n
      end
      p elements
    end

    def print
      current_node = @head
      puts current_node
      while current_node.next_n != nil
        puts current_node
      end
    end

end