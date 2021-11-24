puts "Reading Celsius temperature values from file data/c.dat ..."
data = File.read("data/c.dat")

puts "Saving results to output file out/f.out"
fh = File.new("out/f.out", "w")

data.each_line do |celsius|
    fahrenheit = (celsius.to_i * 9 / 5) + 32
    fh.puts fahrenheit
end

fh.close