class Array
    def my_each
        i = 0

        until i == self.size
            yield self[i]
            i += 1
        end

        self
    end
end

a = ["one", "two", "three", "four", "five"]
ret = a.my_each {|el| puts "Current element: #{el}"}

p ret