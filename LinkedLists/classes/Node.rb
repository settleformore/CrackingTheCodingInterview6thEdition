class Node
    attr_accessor :next_n
    attr_reader :value

    def initialize(value)
      @value = value
      @next_n = nil
    end

    def print_node
        "Node value: #{@value}"
    end
end