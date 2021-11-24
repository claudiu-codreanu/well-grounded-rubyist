
class Integer
    def my_times
        i = 0

        while i < self
            yield i
            i += 1
        end

        self
    end
end

5.my_times {|i| puts "Iteration #{i}"}