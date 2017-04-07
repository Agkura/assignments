class LRUCache
  attr_reader :cache_max, :cache
  def initialize(size = 3)
    @cache = []
    @cache_max = size
  end

  def count
    @cache.length
  end

  def add(el)
    index = cache.index(el)
    if index
      @cache = @cache + [@cache.slice!(index)]
    else
      @cache.push(el)
    end

    @cache.shift if count > cache_max
  end

  def show
    p cache
    nil
  end

  private
  # helper methods go here!

end
