class LinkedList


  def initialize
    @head = nil # when the last node in the list has nothing to point to it points to nil or nothing
  end
  def append(value)
    if @head
      find_tail.next_node = Node.new(value)
    else
      @head = Node.new(value)
    end
  end
  def find_tail
    node = @head
    return node if !node.next_node
    return node if !node.next_node while (node = node.next_node)
  end
  def prepend(value)
    @head = Node.new(value, @head)
  end
  def size
    count = 0
    node = @head
    while node
      count += 1
      node = node.next_node
    end
    count
  end
  def at(index)
    node = @head
    index.times do
      node = node.next_node
    end
    node
  end
  def pop
    if size > 1
      node = @head
      (size - 2).times do
        node = node.next_node
      end
      node.next_node = nil
    else
      @head = nil
    end
  end
  
end
