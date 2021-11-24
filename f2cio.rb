puts "Reading Fahrenheit temperature values from file data/f.dat ..."
data = File.read("data/f.dat")

puts "Saving results to output file out/c.out"
fh = File.new("out/c.out", "w")

data.each_line do |fahrenheit|
    celsius = (fahrenheit.to_i - 32) / 9 * 5
    fh.puts celsius
end

fh.close