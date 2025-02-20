require_relative 'node'

class LinkedList
  attr_reader :head
  
  def initialize
    @head = nil
  end
  
  # Time complexity - O(1)
  # Space complexity - O(1)
  def add_first(data)
    @head = Node.new(data, @head)
  end
  
  # Time complexity - O(1)
  # Space complexity - O(1)
  def get_first
    return nil if head.nil?
    return head.data
  end
  
  # Time complexity - O(n)
  # Space complexity - O(1)
  def length
    count = 0
    current = head
    while !current.nil?
      count += 1
      current = current.next
    end
    return count
  end
  
  # Time complexity - O(1) to add the first node, O(n) for subsequent nodes
  # Space complexity - O(1)
  def add_last(data)
    # make a new last node
    new_last_node = Node.new(data, nil)
    # get the last node
    current = head
    if head.nil?
      @head = new_last_node
      last_node = head
    else
      while !current.nil?
        last_node = current
        current = current.next
      end
      # make the last node point to a new last node
      last_node.next = new_last_node
    end
    return new_last_node
  end
  
  # Time complexity - O(1) if there are no nodes, O(n) elsewise
  # Space complexity - O(1)
  def get_last
    current = head
    if head.nil?
      last_node = head
    else
      while !current.nil?
        last_node = current
        current = current.next
      end
    end
    return last_node.data
  end
  
  # Time complexity - O(1) if there are no nodes, O(n) elsewise
  # Space complexity - O(1)
  def get_at_index(index)
    count = 0
    current = head
    until count == index || current.nil?
      current = current.next
      count += 1
    end
    current_data = current.nil? ? nil : current.data
    return current_data
  end
end
