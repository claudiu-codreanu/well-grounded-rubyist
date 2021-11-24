require_relative "my-comparable"

class Bid
    include MyComparable

    attr_accessor :estimate

    def initialize(estimate)
        self.estimate = estimate
    end

    def <=>(other)
        self.estimate <=> other.estimate
    end
end

bid1 = Bid.new(100)
bid2 = Bid.new(200)

bid3 = Bid.new(100)
bid4 = Bid.new(200)

puts bid1 < bid2
puts bid2 > bid2

puts "================="
puts

puts bid2 > bid1

puts "================="
puts

puts bid1 >= bid3
puts bid2 >= bid4

puts "================="
puts

puts bid2 >= bid1
puts bid3 <= bid2

puts "================="
puts

puts bid1 == bid3
puts bid2 == bid4

puts "================="
puts

puts bid1 == bid4
puts bid2 == bid3
