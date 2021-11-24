class Rainbow
    include Enumerable

    def each
        yield "red"
        yield "orange"
        yield "yellow"
        yield "green"
        yield "blue"
        yield "indigo"
        yield "violet"
    end
end


r = Rainbow.new
r.each {|color| puts "next color: #{color}"}

y = r.find {|color| color.start_with?("y")}
puts "Found: #{y}"