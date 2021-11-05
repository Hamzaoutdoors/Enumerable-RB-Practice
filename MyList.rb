require_relative 'enumerable'

class MyList
  include Enumerable
  def initialize(int1, int2, int3, int4)
    @list = [int1, int2, int3, int4]
  end
end

list = MyList.new(1, 2, 3, 4)

puts 'Test #all?'
puts(list.my_all? { |n| n < 5 })
puts '|n| n < 5 Should return true'
puts(list.my_all? { |n| n > 5 })
puts '|n| n > 5 Should return false'

puts 'Test #any?'
puts '|e| e == 2 Should return true'
puts(list.my_any? { |e| e == 2 })
puts '|e| |e| e == 5 Should return false'
puts(list.my_any? { |e| e == 5 })

puts 'Test #filter'
puts '|e| e.even? Should return [2,4]'
puts(list.my_filter?(&:even?))
