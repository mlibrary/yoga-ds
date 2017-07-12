class Stack
  def initialize
    @storage = []
  end

  def size
    @storage.length
  end

  def push item
    @storage << item
  end

  def pop
    @storage.pop
  end
end

# or, better yet:
# Stack = Array
