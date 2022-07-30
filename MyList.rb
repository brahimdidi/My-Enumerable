require_relative 'MyEnumerable'

class MyList 
include my_enumerable

  def initialize(list)
    @list = list
  end

  def each(block)
    yield 
    @list.each(block)
    yield
  end
end

# Create our list
irb> list = MyList.new(1, 2, 3, 4)
=> #<MyList: @list=[1, 2, 3, 4]>
=begin
# Test #all?
irb> list.all? {|e| e < 5}
=> true
irb> list.all? {|e| e > 5}
=> false

# Test #any?
irb> list.any? {|e| e == 2}
=> true
irb> list.any? {|e| e == 5}
=> false

# Test #filter
irb> list.filter {|e| e.even?}
=> [2, 4]

=end