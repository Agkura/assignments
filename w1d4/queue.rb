# Implementation of a queue with an array
class Queue
  def initialize
    @array = []
  end

  def enqueue(el)
    @array << el
  end

  def dequeue
    @array.shift
  end

  def show
    @array.dup
  end
end
