class Painting
    attr_reader :price, :year

    def initialize(price)
        @price = price
        @year = rand(1900..2021)
    end

    def to_s
        "Price: #{price}, Year: #{year}"
    end

    def <=>(other)
        self.price <=> other.price
    end
end

paintings = 10.times.map { Painting.new(rand(100..900)) }
puts paintings

puts
puts "======================================="
puts

puts paintings.sort

puts
puts "======================================="
puts

puts paintings.sort {|a, b| a.year <=> b.year}