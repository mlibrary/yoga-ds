class Stack
  @@stack

  def initialize
    @@stack = []
  end

  def push(item)
    @@stack << item unless item.nil?
  end

  def pop

  end

  def size
    @@stack.size
  end
end