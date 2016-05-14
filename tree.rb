class Tree
  attr_reader :rings

  def initialize
    @rings = 0
  end

  def bear_fruit?
    if @rings > 7 && @rings < 15
      return true
    else
      return false
    end
  end

  def winter_season
    @rings += 1
  end
end

# Driver code - don't touch anything below this line.
puts "TESTING the Tree class..."
puts

tree = Tree.new

result = tree.rings

puts "rings returned:"
puts result
puts

if result == 0
  puts "PASS!"
else
  puts "F"
end
puts

result = tree.bear_fruit?

puts "bear_fruit? before the first winter:"
puts result
puts

if result == false
  puts "PASS!"
else
  puts "F"
end
puts

8.times do
  tree.winter_season
end

result = tree.bear_fruit?

puts "bear_fruit? after 8 winters:"
puts result
puts

if result == true
  puts "PASS!"
else
  puts "F"
end

7.times do
  tree.winter_season
end

result = tree.bear_fruit?

puts "bear_fruit? after 15 winters:"
puts result
puts

if result == false
  puts "PASS!"
else
  puts "F"
end