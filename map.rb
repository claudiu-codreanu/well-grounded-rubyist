class Array
    def my_map
        i = 0
        ret = []

        until i == self.size
            ret << (yield self[i])
            i += 1
        end

        ret
    end

    def my_each
        i = 0

        until i == self.size
            yield self[i]
            i += 1
        end

        self
    end

    def my_map2
        ret = []
        my_each {|el| ret << (yield el)}

        ret
    end
end

a = ["one", "two", "three", "four"]
b = a.my_map {|el| el.upcase}

puts b