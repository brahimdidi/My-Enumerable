module my_enumerable

  def all?
    each do |i|
      return false unless yield i
    end
    true
  end

  def any?
    each do |i|
      return true if yield i
    end
    true
  end

  def filter
    result = []
    each do |item|
      result << item if yield item
    end
    result
  end

end