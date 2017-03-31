# Implementation of stack using arrays
class Stack
  def initialize
    @array = []
  end

  def add(el)
    @array << el
  end

  def remove
    @array.pop
  end

  def show
    @array.dup
  end
end
