require 'set'

fish = ['fish', 'fiiish', 'fiiiiish', 'fiiiish',
        'fffish', 'ffiiiiisshh',
        'fsh', 'fiiiissshhhhhh']
tiles_array = ["up", "right-up", "right",
              "right-down", "down", "left-down",
              "left",  "left-up" ]
hashy = {}
tiles_array.each_with_index { |el, idx| hashy[el] = idx }

def sluggish(array)
  biggest_fish = ''
  array.each do |fish|
    array.each do |fishy|
      biggest_fish = fish if fish.length >= fishy.length
    end
  end
  biggest_fish
end

def dominant(array)
  merge_sort(array).last
end

def merge_sort(array)
  return array if array.length <= 1

  midpoint = array.length / 2
  left = merge_sort(array.take(midpoint))
  right = merge_sort(array.drop(midpoint))

  merge(left, right)
end

def merge(left, right)
  merged = []
  until left.empty? || right.empty?
    case left.first.length <=> right.first.length
    when -1
      merged << left.shift
    when 0
      merged << left.shift
    when 1
      merged << right.shift
    end
  end
  merged.concat(left)
  merged.concat(right)
  merged
end

def clever(array)
  long = ''
  array.each do |fish|
    long = fish if fish.length > long.length
  end
  long
end

def slow_dance(dir, array)
  leg = 0
  array.each_index { |idx| leg = idx if array[idx] == dir }
  leg
end

def fast_dance(dir, hash)
  hash.fetch(dir)
end
