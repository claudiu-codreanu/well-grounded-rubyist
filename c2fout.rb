print "Please enter a temperature in Celsius: "
celsius = gets

fahrenheit = (celsius.to_i * 9 / 5) + 32
puts "Saving result into file out/temp.out"

fh = File.new("out/temp.out", "w")
fh.puts(fahrenheit)
fh.close
