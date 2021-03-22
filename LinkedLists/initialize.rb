require './LinkedLists/classes/LinkedList'
Dir["./*.rb"].each {|file| require_relative file }

def createLists(array)
    list = LinkedList.new
    array.each do |value|
        list.add_new_node(value)
    end
    list.add_new_node(array.last)
    list
end

def rand_array(x, max)
    x.times.map{ Random.rand(max) }
end

def not_rand_array(s, e)
    (s..e).to_a
end

array = not_rand_array(1, 5)
list_one = createLists(array)
# list_one.print
list_one.print_values







#-----------------------------------------

array = rand_array(10, 20) 
list_two = createLists(array)
# list_two.print
list_two.print_values







#-----------------------------------------

array = not_rand_array('a', 'f')
list_three = createLists(array)
# list_one.print
list_three.print_values

# deleteMiddleNode()

