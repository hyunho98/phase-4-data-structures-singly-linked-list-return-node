require_relative './node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def nth_from_end(n)
    # your code here
    length = 1
    last_node = head
    
    if n < 1 || head.nil?
      return
    end

    while last_node.next_node
      last_node = last_node.next_node
      length += 1
    end

    if n > length
      return
    end

    last_node = head

    (length - n).times do
      last_node = last_node.next_node
    end

    last_node.value
  end
end
