module my_enumerable

  def all?
    list.each do |i|
      return false unless yield i
    end
    true
  end

  def any?
    list.each do |i|
      return true if yield i
    end
    true
  end

  def filter
    result = []
    list.each do |item|
      result << item if yield item
    end
    result
  end

end