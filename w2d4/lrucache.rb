# basic LRU Cache
class LRUCache
  attr_reader :cache
  def initialize(size = 3)
    @cache = []
    @cache_max = size
  end

  def self.from_file(file)
    input = File.readlines(file).map(&:split)

    input.each_with_index do |line, index|
      print_cache = LRUCache.new(line.first.to_i)
      puts "Simulation #{index + 1}" unless line.length < 2

      line.last.chars.each do |char|
        print_cache.add(char) unless char == '!'
        print_cache.show if char == '!'
        print "\n" if char == "\n"
      end
    end
  end

  def count
    @cache.length
  end

  def add(el)
    index = cache.index(el)
    if index
      @cache += [@cache.slice!(index)]
    else
      @cache.push(el)
    end

    @cache.shift if count > cache_max
  end

  def show
    puts cache.join
    nil
  end

  private

  attr_accessor :cache_max
end

a = LRUCache.from_file('example.txt') if __FILE__ == $PROGRAM_NAME
