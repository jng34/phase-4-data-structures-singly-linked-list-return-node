require_relative './node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  
  def nth_from_end(n)
    list_length = 0
    node = head
    while node
      list_length += 1
      node = node.next_node
    end 

    # opposite of while loop
    # until node.nil?
    #   node = node.next_node
    #   list_length += 1
    # end
    
    # edge cases where n = 0 or n > length of list
    return nil if n < 1 || n > list_length

    # example [4,3,2,1] -> list_length = 4
    # if n = 1, then list_length - n + 1 = 3
    node = head
    i = 1
    while i < list_length - n + 1
      # traverses through linked list
      node = node.next_node
      i += 1
    end

    node.value
   
  end



end
