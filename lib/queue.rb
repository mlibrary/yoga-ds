class Queue
  def initialize
    @queue = []
  end

  def size
    @queue.length
  end

  def enqueue(item)
    @queue.push(item)
  end

  def dequeue
    @queue.shift
  end
end
