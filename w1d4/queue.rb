# Implementation of a queue with an array
class Queue
  def initialize
    @array = []
  end

  def enqueue(el)
    @array << el
  end

  def dequeue
    @array.unshift
  end

  def show
    @array.dup
  end
end
