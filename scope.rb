
x = 10

begin
    x = 50
    puts x
end

puts x

begin
    x = 100

    begin
        x = 400
        puts x
    end

    puts x
end

puts x
puts "========================================"
exit

def m
    x = 5
    puts x

    def n
        x = 70
        puts x
    end

    n
    puts x
end

m

puts x