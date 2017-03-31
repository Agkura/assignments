# Implementation of a map with arrays
class Map
  def initialize
    @array = Array.new { [] }
  end

  def assign(key, value)
    found = @array.index { |entry| entry.include?(key) }
    @array[found][1] = value if found

    @array << [key, value]
  end

  def lookup(key)
    (_, value) = @array.find { |entry| entry.first == key }
    return 'not found' if value.nil?
    value
  end

  def remove(key)
    target = @array.find { |entry| entry.first == key }
    @array.delete(target) unless target.nil?
  end

  def show
    deep_dup(@array)
  end

  private

  def deep_dup(arr)
    arr.map { |el| el.is_a?(Array) ? deep_dup(el) : el }
  end
end
