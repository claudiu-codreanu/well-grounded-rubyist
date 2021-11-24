puts "Reading Celsius temperature from file..."
celsius = File.read("data/temp.dat")

puts "The value is " + celsius
fahrenheit = (celsius.to_i * 9 / 5) + 32

print "In Fahrenheit, that's "
puts fahrenheit