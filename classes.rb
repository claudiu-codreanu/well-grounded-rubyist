class Animal
    @@total_count = 0

    def self.total_count
        @@total_count
    end

    def self.species_count
        @species_count || 0
    end

    def self.species_count=(val)
        @species_count = val
    end

end

class Dog < Animal
    def initialize
        @@total_count += 1
        self.class.species_count += 1
    end
end

class Cat < Animal
    def initialize
        @@total_count += 1
        self.class.species_count += 1
    end
end

pluto = Dog.new
rocky = Dog.new

freya = Cat.new

puts "Total animals: #{Animal.total_count}"
puts "Total dogs: #{Dog.species_count}"
puts "Total cats: #{Cat.species_count}"