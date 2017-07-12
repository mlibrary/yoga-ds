class Stack
  @@stack

  def initialize
    @@stack = []
  end

  def push(item)
    @@stack << item unless item.nil?
  end

  def pop
    @@stack[@stack.size-1]
    @@stack.size = size - 1
  end

  def size
    @@stack.size
  end
end