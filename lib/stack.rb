class Stack
  def initialize
    @data = []
  end

  def push(item)
    @data << item
  end

  def pop
    @data.pop
  end

  def size
    @data.size
  end

end
