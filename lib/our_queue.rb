class OurQueue
  def initialize
    @data = []
  end

  def enqueue(item)
    @data << item
  end

  def dequeue
    @data.shift
  end

  def size
    @data.size
  end

end
